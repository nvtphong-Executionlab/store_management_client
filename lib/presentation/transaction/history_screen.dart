import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:store_management_client/application/sale/sale_notifier.dart';
import 'package:store_management_client/routing/app_router.gr.dart';

class HistoryScreen extends ConsumerStatefulWidget {
  const HistoryScreen({super.key});

  @override
  ConsumerState<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends ConsumerState<HistoryScreen> {
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    final asyncSales = ref.watch(saleNotifierProvider);

    return SmartRefresher(
        controller: _refreshController,
        enablePullDown: false,
        enablePullUp: (asyncSales.value?.currentPage ?? 0) <
            (asyncSales.value?.totalPages ?? 0),
        onLoading: () {
          ref.read(saleNotifierProvider.notifier).getSales();
          _refreshController.loadComplete();
        },
        child: asyncSales.maybeWhen(
          orElse: () {
            return const SizedBox.shrink();
          },
          data: (page) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    context.router
                        .push(HistoryDetailRoute(saleID: page.data[index].ID));
                  },
                  title: Text(
                    'ID: ${page.data[index].ID}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  subtitle: Text(
                    DateFormat('hh:mm, d/M/y')
                        .format(page.data[index].createdAt ?? DateTime.now()),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  trailing: Text(
                    '${page.data[index].totalPrice}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                );
              },
              itemCount: page.data.length,
            );
          },
        ));
  }
}
