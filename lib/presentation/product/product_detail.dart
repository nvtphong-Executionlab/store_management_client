import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_management_client/application/product_notifier.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/repositories/product_repo.dart';

import '../../application/product_action.dart';
import '../../application/sale_notifier.dart';
import '../../utils/colors/colors.dart';
import '../../utils/constants/padding.dart';
import '../../utils/styles/text_styles.dart';

class CommonProductForm extends StatefulHookConsumerWidget {
  const CommonProductForm({super.key, required this.productAction});
  final ProductAction productAction;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CommonProductFormState();
}

class _CommonProductFormState extends ConsumerState<CommonProductForm> {
  @override
  Widget build(BuildContext context) {
    final memoProducts = useMemoized(() => <ProductModel>[]);

    void addForm() {
      setState(() {
        memoProducts.add(ProductModel());
      });
    }

    void removeForm() {
      setState(() {
        memoProducts.removeLast();
      });
    }

    void reset() {
      setState(() {
        memoProducts.clear();

        // Future(() {
        //   memoProducts.add(ProductModel());
        // });
      });
    }

    double calculateTotal() {
      double sum = 0;
      for (var p in memoProducts) {
        sum += p.priceOut * p.stock;
      }
      return sum;
    }

    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Padding(
        padding: PaddingConstants.paddingLayout,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${widget.productAction.name.toUpperCase()} PRODUCT',
                  style: AppTextStyle(context).heading,
                ),
                Row(
                  children: [
                    Visibility(
                      visible: memoProducts.length > 1,
                      child: IconButton(
                          onPressed: removeForm,
                          icon: const Icon(
                            Icons.remove_circle_rounded,
                            size: 30,
                          )),
                    ),
                    IconButton(
                        onPressed: addForm,
                        icon: const Icon(
                          Icons.add_circle_rounded,
                          size: 30,
                        ))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Expanded(
                child: ListView.separated(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              itemBuilder: (context, index) {
                return ProductForm(
                  action: widget.productAction,
                  onUpdate: (product) {
                    setState(() {
                      memoProducts[index] = product;
                    });
                  },
                );
              },
              itemCount: memoProducts.length,
            )),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            if (widget.productAction == ProductAction.sell)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text('TOTAL:'), Text('${calculateTotal()}')],
              ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () async {
                  switch (widget.productAction) {
                    case ProductAction.add:
                      ref.read(productNotifierProvider.notifier).addProducts(memoProducts);
                      context.router.root.pop();
                      break;
                    case ProductAction.edit:
                      ref.read(productNotifierProvider.notifier).updateProducts(memoProducts);
                      context.router.root.pop();
                      break;
                    case ProductAction.delete:
                      ref.read(productNotifierProvider.notifier).removeProducts(memoProducts);
                      break;
                    case ProductAction.sell:
                      await ref.read(saleNotifierProvider.notifier).sellProducts(memoProducts);
                      reset();
                      break;
                    default:
                      break;
                  }
                  // reset();
                },
                child: Text(widget.productAction.name.toUpperCase())),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductForm extends StatefulHookConsumerWidget {
  const ProductForm({super.key, required this.action, required this.onUpdate});

  final ProductAction action;
  final Function(ProductModel) onUpdate;

  @override
  ConsumerState<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends ConsumerState<ProductForm> {
  ProductModel initProduct = ProductModel();

  void updateProductInfo(String productID) {
    ref.read(searchProductProvider(keyword: productID).future).then((value) {
      // setState(() {
      initProduct = value ?? ProductModel(ID: int.tryParse(productID) ?? 0);
      widget.onUpdate(initProduct);
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return HookBuilder(builder: (_) {
      final TextEditingController idController = useTextEditingController(text: initProduct.ID.toString());

      final nameController = useTextEditingController(text: initProduct.productName, keys: [idController.text]);
      final priceInController =
          useTextEditingController(text: initProduct.priceIn.toString(), keys: [idController.text]);
      final priceOutController =
          useTextEditingController(text: initProduct.priceOut.toString(), keys: [idController.text]);
      final stockController = useTextEditingController(text: initProduct.stock.toString(), keys: [idController.text]);

      return GestureDetector(
        onTap: FocusManager.instance.primaryFocus?.unfocus,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Stack(
            children: [
              TextField(
                controller: idController,
                onChanged: (value) {
                  updateProductInfo(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Product ID',
                  contentPadding: EdgeInsets.only(right: 50, left: 10),
                ),
                keyboardType: TextInputType.number,
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.greyDark),
                    ),
                    child: const Icon(
                      Icons.qr_code_2,
                      size: 30,
                    ),
                  ),
                  // child: const Icon(Icons.qr_code_2),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController,
            onChanged: (value) {
              initProduct = initProduct.copyWith(productName: value);
              widget.onUpdate(initProduct);
            },
            decoration: const InputDecoration(
              hintText: 'Product Name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (widget.action != ProductAction.sell)
            TextField(
              controller: priceInController,
              decoration: const InputDecoration(
                hintText: 'Price In',
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
          if (widget.action != ProductAction.sell)
            const SizedBox(
              height: 10,
            ),
          TextField(
            controller: priceOutController,
            decoration: const InputDecoration(
              hintText: 'Price Out',
            ),
            onChanged: (value) {
              initProduct = initProduct.copyWith(priceOut: double.tryParse(value) ?? 0);
              widget.onUpdate(initProduct);
            },
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: stockController,
            onChanged: (value) {
              initProduct = initProduct.copyWith(stock: int.tryParse(value) ?? 0);
              widget.onUpdate(initProduct);
            },
            decoration: const InputDecoration(
              hintText: 'Stock',
            ),
            keyboardType: TextInputType.number,
          ),
        ]),
      );
    });
  }
}
