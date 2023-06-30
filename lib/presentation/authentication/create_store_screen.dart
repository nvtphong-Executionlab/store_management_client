import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_management_client/routing/app_router.gr.dart';

import '../../utils/constants/padding.dart';

@RoutePage()
class CreateStoreScreen extends ConsumerWidget {
  const CreateStoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create store'),
      ),
      body: ListView(
        padding: PaddingConstants.paddingLayout,
        children: [
          Text(
            'Create store',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Store Name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(hintText: 'Address'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          FilledButton(
              onPressed: () {
                context.router.pushAndPopUntil(const HomeRoute(), predicate: (_) => false);
              },
              child: const Text('CREATE'))
        ],
      ),
    );
  }
}
