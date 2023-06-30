import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_management_client/routing/app_router.gr.dart';
import 'package:store_management_client/utils/constants/padding.dart';

@RoutePage()
class WaitingApproveScreen extends ConsumerWidget {
  const WaitingApproveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waiting for approval'),
        actions: [
          IconButton(
              onPressed: () {
                context.router.pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: PaddingConstants.paddingLayout,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.hourglass_top_rounded,
              size: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Your request is being considered'),
            const SizedBox(
              height: 20,
            ),
            FilledButton(
              onPressed: () {
                context.router.pushAndPopUntil(const NoStoreRoute(), predicate: (_) => false);
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 18, fontWeight: FontWeight.w600))),
              child: const Text('Cancel request'),
            )
          ],
        ),
      ),
    );
  }
}
