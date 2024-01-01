import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
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
    return PlatformScaffold(
        appBar: PlatformAppBar(
          title: const Text('Login'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: PlatformTextField(
                controller: emailController,
                hintText: "Email address",
                autocorrect: false,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
              child: PlatformTextField(
                controller: passwordController,
                hintText: "Password",
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
                          PlatformCircularProgressIndicator(
                            cupertino: (ctx, platform) =>
                                CupertinoProgressIndicatorData(radius: 10),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: PlatformTextButton(
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
                        ),
                      ]);
                }),
          ]),
        ));
  }
}

// vim: set ts=2 sw=2 ai:
