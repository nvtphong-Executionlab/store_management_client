import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:store_management_client/infrastructure/models/sale/sale_item_model.dart';
import 'package:store_management_client/service/http_service.dart';

import '../../service/request_param/sale_param.dart';
part 'history_detail_screen.g.dart';

@riverpod
FutureOr<SaleDetail> saleDetail(SaleDetailRef ref, int saleID) async {
  final httpService = ref.watch(httpServiceProvider);
  final res = await httpService.getData<SaleDetail>(SellDetailParam(saleID));
  return res.fold((l) => const SaleDetail(totalPrice: 0), (r) => r);
}

@RoutePage()
class HistoryDetailScreen extends ConsumerWidget {
  const HistoryDetailScreen({super.key, required this.saleID});
  final int saleID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncSaleDetail = ref.watch(saleDetailProvider(saleID));

    return Scaffold(
        appBar: AppBar(
          title: Text('Invoice ID $saleID'),
        ),
        body: asyncSaleDetail.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          data: (data) {
            return SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            data.items[index].product.productName,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          subtitle: Text(
                            'Quantity: ${data.items[index].stock}',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          trailing: Text(
                            data.items[index].product.priceOut.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      },
                      itemCount: data.items.length,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Total price',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '${data.totalPrice}',
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
