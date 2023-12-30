import 'package:flutter/cupertino.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:redux/redux.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
      initialState: initialState ?? AppState.initialState(),
      middleware: middlewares + [persistor.createMiddleware()]);
  return runApp(MyGameInfoApp(store: store));
}
