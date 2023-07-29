import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: NoStoreRoute.page),
        AutoRoute(page: CreateStoreRoute.page),
        AutoRoute(page: JoinStoreRoute.page),
        AutoRoute(page: WaitingApproveRoute.page),
        AutoRoute(page: HomeRoute.page, children: [
          AutoRoute(page: StatisticRoute.page),
          AutoRoute(page: ProductRoute.page),
          AutoRoute(page: TransactionRoute.page),
        ]),
        AutoRoute(page: HistoryDetailRoute.page)
      ];
}
