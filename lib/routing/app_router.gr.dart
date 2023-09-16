// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:store_management_client/presentation/authentication/create_store_screen.dart'
    as _i1;
import 'package:store_management_client/presentation/authentication/join_store_screen.dart'
    as _i4;
import 'package:store_management_client/presentation/authentication/login_screen.dart'
    as _i5;
import 'package:store_management_client/presentation/authentication/no_store_screen.dart'
    as _i6;
import 'package:store_management_client/presentation/authentication/waiting_approve_screen.dart'
    as _i10;
import 'package:store_management_client/presentation/home/home_screen.dart'
    as _i3;
import 'package:store_management_client/presentation/home/statistic_screen.dart'
    as _i8;
import 'package:store_management_client/presentation/product/product_screen.dart'
    as _i7;
import 'package:store_management_client/presentation/product/transaction_screen.dart'
    as _i9;
import 'package:store_management_client/presentation/transaction/history_detail_screen.dart'
    as _i2;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CreateStoreRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateStoreScreen(),
      );
    },
    HistoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HistoryDetailRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HistoryDetailScreen(
          key: args.key,
          saleID: args.saleID,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    JoinStoreRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.JoinStoreScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    NoStoreRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NoStoreScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProductScreen(),
      );
    },
    StatisticRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.StatisticScreen(),
      );
    },
    TransactionRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TransactionScreen(),
      );
    },
    WaitingApproveRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WaitingApproveScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateStoreScreen]
class CreateStoreRoute extends _i11.PageRouteInfo<void> {
  const CreateStoreRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CreateStoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateStoreRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HistoryDetailScreen]
class HistoryDetailRoute extends _i11.PageRouteInfo<HistoryDetailRouteArgs> {
  HistoryDetailRoute({
    _i12.Key? key,
    required int saleID,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          HistoryDetailRoute.name,
          args: HistoryDetailRouteArgs(
            key: key,
            saleID: saleID,
          ),
          initialChildren: children,
        );

  static const String name = 'HistoryDetailRoute';

  static const _i11.PageInfo<HistoryDetailRouteArgs> page =
      _i11.PageInfo<HistoryDetailRouteArgs>(name);
}

class HistoryDetailRouteArgs {
  const HistoryDetailRouteArgs({
    this.key,
    required this.saleID,
  });

  final _i12.Key? key;

  final int saleID;

  @override
  String toString() {
    return 'HistoryDetailRouteArgs{key: $key, saleID: $saleID}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.JoinStoreScreen]
class JoinStoreRoute extends _i11.PageRouteInfo<void> {
  const JoinStoreRoute({List<_i11.PageRouteInfo>? children})
      : super(
          JoinStoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinStoreRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NoStoreScreen]
class NoStoreRoute extends _i11.PageRouteInfo<void> {
  const NoStoreRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NoStoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoStoreRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProductScreen]
class ProductRoute extends _i11.PageRouteInfo<void> {
  const ProductRoute({List<_i11.PageRouteInfo>? children})
      : super(
          ProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.StatisticScreen]
class StatisticRoute extends _i11.PageRouteInfo<void> {
  const StatisticRoute({List<_i11.PageRouteInfo>? children})
      : super(
          StatisticRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.TransactionScreen]
class TransactionRoute extends _i11.PageRouteInfo<void> {
  const TransactionRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TransactionRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WaitingApproveScreen]
class WaitingApproveRoute extends _i11.PageRouteInfo<void> {
  const WaitingApproveRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WaitingApproveRoute.name,
          initialChildren: children,
        );

  static const String name = 'WaitingApproveRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
