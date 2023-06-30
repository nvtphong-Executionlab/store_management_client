import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_management_client/infrastructure/repositories/product_repo.dart';

import '../../application/product_action.dart';
import '../../utils/colors/colors.dart';
import '../../utils/constants/padding.dart';
import '../../utils/styles/text_styles.dart';

class ProductDetail extends HookConsumerWidget {
  const ProductDetail({
    super.key,
    required this.productAction,
    this.editable = true,
  });
  final ProductAction productAction;
  final bool editable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idController = useTextEditingController();
    final asyncProduct = ref.watch(searchProductProvider(keyword: useValueListenable(idController).text));
    var action = !editable && asyncProduct.value == null ? ProductAction.add : productAction;

    return ListView(
      padding: PaddingConstants.paddingLayout,
      children: [
        Text(
          '${action.name.toUpperCase()} PRODUCT',
          style: AppTextStyle(context).heading,
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        Stack(
          children: [
            TextField(
              controller: idController,
              decoration: const InputDecoration(
                hintText: 'Product ID',
                contentPadding: EdgeInsets.only(right: 50, left: 10),
              ),
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
        HookBuilder(builder: (context) {
          if ((asyncProduct.isLoading || idController.text.isEmpty) && !editable) {
            return const SizedBox.shrink();
          }
          final nameController = useTextEditingController(text: asyncProduct.value?.productName, keys: [asyncProduct]);
          final priceInController =
              useTextEditingController(text: asyncProduct.value?.priceIn.toString(), keys: [asyncProduct]);
          final priceOutController =
              useTextEditingController(text: asyncProduct.value?.priceOut.toString(), keys: [asyncProduct]);
          final stockController =
              useTextEditingController(text: asyncProduct.value?.stock.toString(), keys: [asyncProduct]);
          return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Product Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: priceInController,
              decoration: const InputDecoration(
                hintText: 'Price In',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: priceOutController,
              decoration: const InputDecoration(
                hintText: 'Price Out',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: stockController,
              decoration: const InputDecoration(
                hintText: 'Stock',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            FilledButton(onPressed: () {}, child: Text(action.name.toUpperCase())),
            const SizedBox(
              height: 10,
            ),
            if (action == ProductAction.edit) OutlinedButton(onPressed: () {}, child: const Text('REMOVE'))
          ]);
        })
      ],
    );
  }
}
