import 'package:auto_route/auto_route.dart';
import 'package:sonarwave/features/home/home.dart';
import 'package:sonarwave/features/room/room.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    CustomRoute(page: RoomPage, transitionsBuilder: TransitionsBuilders.zoomIn),
  ],
)
class AppRouter extends _$AppRouter {}
