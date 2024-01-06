import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:redux/redux.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'app.dart';

void setNavbarTransparency() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: true,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top]);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setNavbarTransparency();
  final persistor = Persistor<AppState>(
    storage: FlutterStorage(),
    serializer: JsonSerializer<AppState>((json) {
      if (json == null) {
        return null;
      }
      return AppState.fromJson(json);
    }),
  );

  // Load initial state
  final initialState = await persistor.load();
  final store = Store(reducer,
      initialState: initialState?.copyWith(taskCount: 0) ?? AppState.initialState(),
      middleware: middlewares + [persistor.createMiddleware()]);

  void mainIsolateUpdateTask([Timer? timer]) {
    if (store.state.loggedIn) {
      print("Automatic refresh triggered by timer");
      store.dispatch(StartAutomaticApiHydrationAction());
    }
  }

  mainIsolateUpdateTask();
  Timer.periodic(const Duration(minutes: 5), mainIsolateUpdateTask);

  return runApp(MyGameInfoApp(store: store));
}

// vim: set ts=2 sw=2 ai:
