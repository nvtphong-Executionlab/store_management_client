import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_management_client/infrastructure/repositories/auth_repo.dart';
import 'package:store_management_client/routing/app_router.gr.dart';

import '../../utils/constants/padding.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PaddingConstants.paddingLayout,
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
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email ID',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (!isLogin)
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
              ),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () async {
                if (isLogin) {
                  final res = await ref.read(authRepoProvider).login();
                  res.fold((l) => null, (r) {
                    context.router.replace(const NoStoreRoute());
                  });
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
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Text(
                      isLogin ? 'Register' : 'Login',
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
