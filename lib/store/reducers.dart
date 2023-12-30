import 'dart:convert';

import 'package:redux/redux.dart';
import './store.dart';
import '../api/api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reducers.freezed.dart';

class StartAutomaticApiHydrationAction {}

@freezed
class StartApiHydrationAction with _$StartApiHydrationAction {
  const factory StartApiHydrationAction(
      {required String email,
      required String password}) = _StartApiHydrationAction;
}

@freezed
class RaiseExceptionAction with _$RaiseExceptionAction {
  const factory RaiseExceptionAction(
      {required Object? exception,
      required String message}) = _RaiseExceptionAction;
}

@freezed
class SaveApiLoginInfoAction with _$SaveApiLoginInfoAction {
  const factory SaveApiLoginInfoAction({required ApiLoginInfo loginInfo}) =
      _SaveApiLoginInfoAction;
}

@freezed
class TagStatsAction with _$TagStatsAction {
  const factory TagStatsAction({required AccuracyRatioInfo tagStats}) =
      _TagStatsAction;
}

@freezed
class LevelInfoAction with _$LevelInfoAction {
  const factory LevelInfoAction({required UserLevelInfo levelInfo}) =
      _LevelInfoAction;
}

@freezed
class AchievementsAction with _$AchievementsAction {
  const factory AchievementsAction({required Achievements achievements}) =
      _AchievementsAction;
}

enum LoginResultAction { success, failure }

@freezed
class ShortReportsAction with _$ShortReportsAction {
  const factory ShortReportsAction(
      {required List<ShortGameReport> shortReports}) = _ShortReportsAction;
}

@freezed
class PerformLoginAction with _$PerformLoginAction {
  const factory PerformLoginAction(
      {required String email, required String password}) = _PerformLoginAction;
}

@freezed
class RegisterCDNInfoAction with _$RegisterCDNInfoAction {
  const factory RegisterCDNInfoAction({required CDNInfo cdnInfo}) =
      _RegisterCDNInfoAction;
}

void _loginOnlyMiddleware(Store<AppState> store, action, NextDispatcher next) {
  if (action is PerformLoginAction) {
    getCDNInfo()
        .then((cdnInfo) =>
            store.dispatch(RegisterCDNInfoAction(cdnInfo: cdnInfo)))
        .onError((error, stackTrace) => store.dispatch(RaiseExceptionAction(
            exception: error, message: "Could not get CDN info!")));
    emailToUserId(action.email).then((uid) {
      login(uid, action.password).then((loginInfo) {
        store.dispatch(SaveApiLoginInfoAction(loginInfo: loginInfo));
        store.dispatch(LoginResultAction.success);
        print("successful login!");
      }).onError((error, stacktrace) {
        store.dispatch(RaiseExceptionAction(
            exception: error, message: "Login failed. Wrong password?"));
        store.dispatch(LoginResultAction.failure);
      });
    }).onError((error, stacktrace) {
      store.dispatch(RaiseExceptionAction(
          exception: error, message: "Email verification failed."));
      store.dispatch(LoginResultAction.failure);
    });
  }
  next(action);
}

AppState _loginActionCredentialSave(AppState state, PerformLoginAction action) {
  return state.copyWith(email: action.email, password: action.password);
}

void _getInfosWithToken(Store<AppState> store, token, uid) {
  tagStatInfos(token, uid).then((tagStats) {
    store.dispatch(TagStatsAction(tagStats: tagStats));
  }).onError((error, stacktrace) {
    store.dispatch(RaiseExceptionAction(
        exception: error, message: "Couldn't grab tag stats"));
  });
  levelInfos(token, uid).then((levelInfo) {
    store.dispatch(LevelInfoAction(levelInfo: levelInfo));
  }).onError((error, stacktrace) {
    store.dispatch(RaiseExceptionAction(
        exception: error, message: "Couldn't grab level info"));
  });
  achievementsInfo(token, uid).then((achievements) {
    store.dispatch(AchievementsAction(achievements: achievements));
  }).onError((error, stacktrace) {
    store.dispatch(RaiseExceptionAction(
        exception: error, message: "Couldn't grab achievements info"));
  });
  shortGameReports(token, uid).then((shortReports) {
    store.dispatch(ShortReportsAction(shortReports: shortReports));
  }).onError((error, stacktrace) {
    store.dispatch(RaiseExceptionAction(
        exception: error, message: "Couldn't grab short game reports"));
  });
}

void _startHydrationMiddleware(
    Store<AppState> store, action, NextDispatcher next) {
  if (action is StartApiHydrationAction) {
    if (store.state.loginInfo?.token != null &&
        store.state.loginInfo?.userId != null &&
        store.state.loginInfo?.expiresAt != null &&
        1000 * (store.state.loginInfo?.expiresAt ?? 0) >
            DateTime.now().millisecondsSinceEpoch) {
      print("skipping auth");
      _getInfosWithToken(
          store, store.state.loginInfo?.token, store.state.loginInfo?.userId);
      next(action);
      return;
    }
    getCDNInfo()
        .then((cdnInfo) =>
            store.dispatch(RegisterCDNInfoAction(cdnInfo: cdnInfo)))
        .onError((error, stackTrace) => store.dispatch(RaiseExceptionAction(
            exception: error, message: "Could not get CDN info!")));
    emailToUserId(action.email).then((uid) {
      login(uid, action.password).then((loginInfo) {
        store.dispatch(LoginResultAction.success);
        store.dispatch(SaveApiLoginInfoAction(loginInfo: loginInfo));
        _getInfosWithToken(store, loginInfo.token, uid);
      }).onError((error, stacktrace) {
        store.dispatch(RaiseExceptionAction(
            exception: error, message: "Login failed. Wrong password?"));
        store.dispatch(LoginResultAction.failure);
      });
    }).onError((error, stacktrace) {
      store.dispatch(RaiseExceptionAction(
          exception: error, message: "Email verification failed."));
      store.dispatch(LoginResultAction.failure);
    });
  }
  next(action);
}

AppState _loginSuccess(AppState state, LoginResultAction action) {
  return state.copyWith(
      loggedIn: action == LoginResultAction.success ? true : false,
      lastLoginAttempt: DateTime.now().millisecondsSinceEpoch);
}

AppState _saveApiLoginInfo(AppState state, SaveApiLoginInfoAction action) {
  return state.copyWith(loginInfo: action.loginInfo);
}

AppState _setCredentials(AppState state, StartApiHydrationAction action) {
  return state.copyWith(email: action.email, password: action.password);
}

AppState _raiseException(AppState state, RaiseExceptionAction action) {
  print(action.exception);
  return state.copyWith(error: action.message);
}

AppState _levelInfo(AppState state, LevelInfoAction action) {
  return state.copyWith(userLevelInfo: action.levelInfo);
}

AppState _tagStatInfos(AppState state, TagStatsAction action) {
  return state.copyWith(accuracyRatioInfo: action.tagStats);
}

AppState _achievementsInfo(AppState state, AchievementsAction action) {
  return state.copyWith(achievements: action.achievements);
}

AppState _shortGameReports(AppState state, ShortReportsAction action) {
  return state.copyWith(shortGameReports: action.shortReports);
}

AppState _registerCDNInfo(AppState state, RegisterCDNInfoAction action) {
  return state.copyWith(cdnInfo: action.cdnInfo);
}

void _automaticHydrationMiddleware(
    Store<AppState> store, action, NextDispatcher next) {
  if (action is StartAutomaticApiHydrationAction && store.state.loggedIn) {
    store.dispatch(StartApiHydrationAction(
        email: store.state.email, password: store.state.password));
  }
  next(action);
}

final reducer = combineReducers([
  TypedReducer<AppState, StartApiHydrationAction>(_setCredentials),
  TypedReducer<AppState, RaiseExceptionAction>(_raiseException),
  TypedReducer<AppState, LevelInfoAction>(_levelInfo),
  TypedReducer<AppState, TagStatsAction>(_tagStatInfos),
  TypedReducer<AppState, AchievementsAction>(_achievementsInfo),
  TypedReducer<AppState, ShortReportsAction>(_shortGameReports),
  TypedReducer<AppState, SaveApiLoginInfoAction>(_saveApiLoginInfo),
  TypedReducer<AppState, LoginResultAction>(_loginSuccess),
  TypedReducer<AppState, PerformLoginAction>(_loginActionCredentialSave),
  TypedReducer<AppState, RegisterCDNInfoAction>(_registerCDNInfo),
]);

final middlewares = [
  _loginOnlyMiddleware,
  _startHydrationMiddleware,
  _automaticHydrationMiddleware,
];

// vim: set ts=2 sw=2 ai:
