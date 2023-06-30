import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_management_client/routing/app_router.gr.dart';
import 'package:store_management_client/utils/constants/padding.dart';

import '../../utils/colors/colors.dart';

@RoutePage()
class JoinStoreScreen extends StatefulHookConsumerWidget {
  const JoinStoreScreen({super.key});

  @override
  ConsumerState<JoinStoreScreen> createState() => _JoinStoreScreenState();
}

class _JoinStoreScreenState extends ConsumerState<JoinStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join store'),
      ),
      body: Padding(
        padding: PaddingConstants.paddingLayout,
        child: Column(
          children: [
            Text(
              'Create store',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            HookBuilder(builder: (context) {
              final searchFocusNode = useFocusNode();
              final animationController =
                  useAnimationController(duration: const Duration(milliseconds: 300), upperBound: 24);
              useEffect(() {
                onFocus() {
                  if (searchFocusNode.hasFocus) {
                    animationController.forward();
                  } else {
                    animationController.reset();
                  }
                  setState(() {});
                }

                searchFocusNode.addListener(onFocus);

                return () {
                  searchFocusNode.removeListener(onFocus);
                };
              }, [searchFocusNode, animationController]);
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      focusNode: searchFocusNode,
                      decoration: InputDecoration(
                          hintText: 'Search products',
                          prefixIcon: searchFocusNode.hasFocus
                              ? null
                              : Icon(
                                  Icons.search,
                                  size: 24 - animationController.value,
                                )),
                    ),
                  ),
                  AnimatedBuilder(
                    animation: animationController,
                    // duration: const Duration(seconds: 1),
                    // width: searchFocusNode.hasFocus ? 30 : 0,
                    builder: (context, child) {
                      return SizedBox(
                        width: animationController.value > 0 ? animationController.value + 20 : 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: animationController.value,
                            color: AppColors.primary,
                          ),
                        ),
                      );
                    },
                  )
                ],
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyDark),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText(label: 'ID', content: '1'),
                            _buildText(label: 'Store name', content: 'Phong store'),
                            _buildText(label: 'Address', content: '123 Trung My Tay'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          style: const ButtonStyle(
                              textStyle: MaterialStatePropertyAll(
                                  TextStyle(fontStyle: FontStyle.normal, color: AppColors.primary))),
                          onPressed: () {
                            context.router.pushAndPopUntil(const WaitingApproveRoute(), predicate: (route) => false);
                          },
                          child: const Text(
                            'Join',
                            style: TextStyle(fontSize: 18, color: AppColors.primary, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildText({required String label, required String content}) {
    return Builder(builder: (context) {
      return Text.rich(TextSpan(children: [
        TextSpan(text: content, style: Theme.of(context).textTheme.labelLarge),
      ], text: '$label: ', style: Theme.of(context).textTheme.labelSmall));
    });
  }
}
