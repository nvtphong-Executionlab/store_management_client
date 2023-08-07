import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:store_management_client/application/auth/auth_notifier.dart';
import 'package:store_management_client/routing/app_router.gr.dart';
import 'package:store_management_client/utils/constants/padding.dart';

@RoutePage()
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = useMemoized(() => GlobalKey<ScaffoldState>());
    return AutoTabsScaffold(
      key: scaffoldKey,
      routes: const [StatisticRoute(), ProductRoute(), TransactionRoute()],
      homeIndex: 0,
      drawer: const AppDrawer(),
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          title: const Text('Home'),
        );
      },
    );
  }
}

final _drawerList = List.generate(4, (index) {
  return switch (index) {
    0 => (index, Icons.stacked_bar_chart_sharp, 'Statistic'),
    1 => (index, Icons.list, 'Product'),
    2 => (index, Icons.monetization_on_sharp, 'Transaction'),
    3 => (index, Icons.logout, 'Logout'),
    _ => throw UnimplementedError()
  };
});

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: SafeArea(
        child: ListView(
            padding: PaddingConstants.paddingLayout,
            children: _drawerList
                .map((e) => ListTile(
                      leading: Icon(e.$2),
                      title: Text(e.$3),
                      onTap: () {
                        if (e.$1 < 3) {
                          context.tabsRouter.setActiveIndex(e.$1);
                        } else {
                          ref.read(authNotifierProvider.notifier).logout();
                        }
                        Scaffold.of(context).closeDrawer();
                      },
                    ))
                .toList()),
      ),
    );
  }
}
