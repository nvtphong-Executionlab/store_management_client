import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_management_client/routing/app_router.gr.dart';
import 'package:store_management_client/utils/constants/padding.dart';

@RoutePage()
class NoStoreScreen extends StatelessWidget {
  const NoStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: PaddingConstants.paddingLayout,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(child: Text('You are not in a store')),
              const SizedBox(
                height: 20,
              ),
              FilledButton(
                  onPressed: () {
                    context.router.push(const CreateStoreRoute());
                  },
                  child: const Text('Create a store')),
              const SizedBox(
                height: 10,
              ),
              FilledButton(
                  onPressed: () {
                    context.router.push(const JoinStoreRoute());
                  },
                  child: const Text('Join a store'))
            ],
          ),
        ),
      ),
    );
  }
}
