import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_management_client/application/auth/auth_notifier.dart';

import '../../utils/constants/padding.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoginNotifier = useState(true);
    final isLogin = isLoginNotifier.value;

    final txtUsername = useTextEditingController();
    final txtPassword = useTextEditingController();
    final txtConfirmPassword = useTextEditingController();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Padding(
          padding: PaddingConstants.paddingLayout,
          child: SingleChildScrollView(
            child: Column(
              // itemExtent: 0,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  isLogin ? 'Login' : 'Register',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Image.asset('assets/banner.png'),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: txtUsername,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtPassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (!isLogin)
                  TextField(
                    controller: txtConfirmPassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Confirm Password',
                    ),
                  ),
                const SizedBox(
                  height: 20,
                ),
                FilledButton(
                  onPressed: () async {
                    if (isLogin) {
                      ref
                          .read(authNotifierProvider.notifier)
                          .login(txtUsername.text, txtPassword.text);
                    } else {
                      ref
                          .read(authNotifierProvider.notifier)
                          .signUp(txtUsername.text, txtPassword.text);
                    }
                  },
                  child: Text(isLogin ? 'Login' : 'Register'),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isLogin ? 'New user?' : 'Already have account?',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    TextButton(
                        onPressed: () {
                          isLoginNotifier.value = !isLogin;
                        },
                        child: Text(
                          isLogin ? 'Register' : 'Login',
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
