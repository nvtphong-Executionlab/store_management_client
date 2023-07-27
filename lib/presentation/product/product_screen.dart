// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:store_management_client/application/product_notifier.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/presentation/product/product_detail.dart';

import 'package:store_management_client/utils/colors/colors.dart';
import 'package:store_management_client/utils/constants/padding.dart';

import '../../application/product_action.dart';

@RoutePage()
class ProductScreen extends StatefulHookConsumerWidget {
  const ProductScreen({super.key});

  @override
  ConsumerState<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends ConsumerState<ProductScreen> {
  final fabkey = GlobalKey<ExpandableFabState>();
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    final asyncListProduct = ref.watch(productNotifierProvider);

    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        floatingActionButtonLocation: ExpandableFab.location,
        floatingActionButton: ExpandableFab(key: fabkey, children: [
          FloatingActionButton.small(
            heroTag: 'edit',
            onPressed: () {},
            child: const Icon(Icons.edit),
          ),
          FloatingActionButton.small(
            heroTag: 'add',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const CommonProductForm(
                  productAction: ProductAction.add,
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton.small(
            heroTag: 'remove',
            onPressed: () {},
            child: const Icon(Icons.remove),
          ),
        ]),
        body: Padding(
          padding: PaddingConstants.paddingLayout,
          child: Column(
            children: [
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
                        onChanged: (value) {
                          if (value.isEmpty) {
                            ref.read(productNotifierProvider.notifier).getProducts();
                          } else {
                            ref.read(productNotifierProvider.notifier).searchProduct(keyword: value);
                          }
                        },
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
                child: Column(
                  children: [
                    DefaultTextStyle(
                      style: Theme.of(context).textTheme.headlineSmall!,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryVeryLight,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                        ),
                        child: const Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 3,
                              child: Center(child: Text('Product Name')),
                            ),
                            Flexible(
                              flex: 1,
                              child: Center(child: Text('Stock')),
                            ),
                            Flexible(
                              flex: 2,
                              child: Center(child: Text('Price')),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: DefaultTextStyle(
                        style: Theme.of(context).textTheme.labelMedium!,
                        child: asyncListProduct.maybeWhen(
                          orElse: () => const Center(child: CircularProgressIndicator()),
                          data: (response) => SmartRefresher(
                            controller: _refreshController,
                            enablePullUp: response.totalPages > response.currentPage,
                            enablePullDown: false,
                            onLoading: () async {
                              await ref.read(productNotifierProvider.notifier).getProducts();
                              _refreshController.loadComplete();
                            },
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return _buildProductItem(response.data[index]);
                              },
                              itemCount: response.data.length,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(ProductModel product) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.greyLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCell(flex: 3, content: product.productName),
          _buildCell(flex: 1, content: product.stock.toString()),
          _buildCell(flex: 2, content: product.priceOut.toString()),
        ],
      ),
    );
  }

  Widget _buildCell({required int flex, required String content}) {
    return Flexible(
      flex: flex,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(content),
        ),
      ),
    );
  }
}
