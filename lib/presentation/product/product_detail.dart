import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_management_client/infrastructure/models/product_model.dart';
import 'package:store_management_client/infrastructure/repositories/product_repo.dart';

import '../../application/product_action.dart';
import '../../utils/colors/colors.dart';
import '../../utils/constants/padding.dart';
import '../../utils/styles/text_styles.dart';

class CommonProductForm extends HookConsumerWidget {
  const CommonProductForm({super.key, required this.productAction});
  final ProductAction productAction;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numForm = useState(1);
    final memoProducts = useMemoized(() => <ProductModel>[ProductModel()]);
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
                  '${productAction.name.toUpperCase()} PRODUCT',
                  style: AppTextStyle(context).heading,
                ),
                Row(
                  children: [
                    Visibility(
                      visible: numForm.value > 1,
                      child: IconButton(
                          onPressed: () {
                            memoProducts.removeLast();
                            numForm.value -= 1;
                          },
                          icon: const Icon(
                            Icons.remove_circle_rounded,
                            size: 30,
                          )),
                    ),
                    IconButton(
                        onPressed: () {
                          memoProducts.add(ProductModel());
                          numForm.value += 1;
                        },
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
                  action: productAction,
                  productModel: memoProducts[index],
                );
              },
              itemCount: numForm.value,
            )),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
                onPressed: () {
                  print(memoProducts);
                },
                child: Text(productAction.name.toUpperCase())),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductForm extends HookConsumerWidget {
  const ProductForm({super.key, required this.action, required this.productModel});

  final ProductAction action;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return HookBuilder(builder: (_) {
      final TextEditingController idController = useTextEditingController();

      final asyncProduct = ref.watch(searchProductProvider(keyword: useValueListenable(idController).text));

      final nameController = useTextEditingController(text: asyncProduct.value?.productName, keys: [asyncProduct]);
      final priceInController =
          useTextEditingController(text: asyncProduct.value?.priceIn.toString(), keys: [asyncProduct]);
      final priceOutController =
          useTextEditingController(text: asyncProduct.value?.priceOut.toString(), keys: [asyncProduct]);
      final stockController =
          useTextEditingController(text: asyncProduct.value?.stock.toString(), keys: [asyncProduct]);

      return GestureDetector(
        onTap: FocusManager.instance.primaryFocus?.unfocus,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Stack(
            children: [
              TextField(
                controller: idController,
                onChanged: (value) {
                  productModel.ID = int.tryParse(value) ?? 0;
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
              productModel.productName = value;
            },
            decoration: const InputDecoration(
              hintText: 'Product Name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (action != ProductAction.sell)
            TextField(
              controller: priceInController,
              onChanged: (value) {
                productModel.priceIn = double.tryParse(value) ?? 0;
              },
              decoration: const InputDecoration(
                hintText: 'Price In',
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
            ),
          if (action != ProductAction.sell)
            const SizedBox(
              height: 10,
            ),
          TextField(
            controller: priceOutController,
            onChanged: (value) {
              productModel.priceOut = double.tryParse(value) ?? 0;
            },
            decoration: const InputDecoration(
              hintText: 'Price Out',
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (value) {
              productModel.stock = int.tryParse(value) ?? 0;
            },
            controller: stockController,
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
