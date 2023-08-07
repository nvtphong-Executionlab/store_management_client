import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_management_client/presentation/widgets.dart';
import 'package:store_management_client/routing/app_router.dart';
import 'package:store_management_client/utils/themes/themes.dart';

import 'application/auth/auth_notifier.dart';
import 'routing/app_router.gr.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authNotifierProvider, (prev, next) {
      final currenContext = _appRouter.navigatorKey.currentContext ?? context;

      next.when(authenticated: () async {
        // await _appRouter.root.pop();
        if (context.mounted) {
          currenContext.router.pushAndPopUntil(const HomeRoute(), predicate: (_) => false);
        }
      }, authenticating: () {
        showLoadingDialog(currenContext);
      }, unAuthenticated: () {
        currenContext.router.pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
      }, error: (message) async {
        await currenContext.router.root.pop();
        if (context.mounted) {
          showDialog(
              context: currenContext,
              builder: (_) {
                return Dialog(
                  child: Column(
                    children: [
                      const Icon(Icons.error),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(message)
                    ],
                  ),
                );
              });
        }
      });
    });
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: lightTheme,
    );
  }
}
