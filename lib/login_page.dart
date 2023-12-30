import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/store/module.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loading = false;
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Login'),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: CupertinoTextField(
                controller: emailController,
                placeholder: "Email address",
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              child: CupertinoTextField(
                controller: passwordController,
                placeholder: "Password",
                obscureText: true,
                autocorrect: false,
              ),
            ),
            StoreConnector<AppState, (bool, int)>(
                converter: (store) =>
                    (store.state.loggedIn, store.state.lastLoginAttempt),
                onWillChange: (o, n) {
                  if (o?.$1 != true && n.$1 == true) {
                    Navigator.pop(context);
                  } else if (o?.$2 != n.$2) {
                    loading = false;
                  }
                },
                onDidChange: (o, n) {
                  if (o?.$1 != true && n.$1 == true) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(StartAutomaticApiHydrationAction());
                  }
                },
                builder: (ctx, loginStatus) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (loading)
                          const CupertinoActivityIndicator(radius: 10),
                        CupertinoButton(
                          onPressed: loading
                              ? null
                              : () {
                                  setState(() {
                                    loading = true;
                                  });
                                  StoreProvider.of<AppState>(ctx).dispatch(
                                      PerformLoginAction(
                                          email: emailController.text,
                                          password: passwordController.text));
                                },
                          child: const Text("Login"),
                        ),
                      ]);
                }),
          ]),
        ));
  }
}

// vim: set ts=2 sw=2 ai:
