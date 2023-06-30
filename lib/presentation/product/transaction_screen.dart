import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:store_management_client/presentation/product/product_detail.dart';
import 'package:store_management_client/utils/colors/colors.dart';

import '../../application/product_action.dart';

// final _tabs = List.generate(2, (index) {
//   return switch (index) {
//     0 => ('Sell product', 'Sell'),
//     1 => ('Buy product', 'Buy'),
//     _ => throw UnimplementedError(),
//   };
// });

@RoutePage()
class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});
  static const _tabs = [ProductAction.sell, ProductAction.buy];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ColoredBox(
                  color: AppColors.primary,
                  child: TabBar(
                      tabs: _tabs
                          .map((e) => Tab(
                                text: e.name.toUpperCase(),
                              ))
                          .toList()),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
                children: _tabs
                    .map((e) => ProductDetail(
                          productAction: e,
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
