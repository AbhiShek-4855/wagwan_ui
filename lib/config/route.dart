import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wagwan_ui/view/screens/add_event/add_event_screen.dart';
import 'package:wagwan_ui/view/screens/bottom_nav/bottom_nav_screen.dart';
import 'package:wagwan_ui/view/screens/chats/chat_screen.dart';
import 'package:wagwan_ui/view/screens/home/home_screen.dart';
import 'package:wagwan_ui/view/screens/profile/profile_screen.dart';

import '../view/screens/explore/explore_screen.dart';

class AppRoutes {
  // Private constructor
  AppRoutes._();

  // Singleton instance
  static final AppRoutes _instance = AppRoutes._();

  // Public accessor to the instance
  factory AppRoutes() => _instance;

  static const String explore = 'explore';
  static const String home = 'home';
  static const String addEvent = 'addEvent';
  static const String chat = 'chat';
  static const String profile = 'profile';

  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> rootMyCircleScreen =
      GlobalKey<NavigatorState>(debugLabel: 'My Circle Screen');
  static final GlobalKey<NavigatorState> rootNavigatorHomeScreen =
      GlobalKey<NavigatorState>(debugLabel: 'Home Screen');
  static final GlobalKey<NavigatorState> rootNavigatorAddEventScreen =
      GlobalKey<NavigatorState>(debugLabel: 'Add Event Screen');
  static final GlobalKey<NavigatorState> rootNavigatorChatScreen =
      GlobalKey<NavigatorState>(debugLabel: 'Chat Screen');
  static final GlobalKey<NavigatorState> rootNavigatorProfileScreen =
      GlobalKey<NavigatorState>(debugLabel: 'Profile Screen');

  static final GoRouter router = GoRouter(
      initialLocation: "/$explore",
      routes: [
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return BottomNavScreen(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: rootMyCircleScreen,
          routes: [
            GoRoute(
              name: explore,
              path: '/$explore',
              builder: (BuildContext context, GoRouterState state) {
                return const ExploreScreen();
                // return SliverAppBarTabBarExample();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: rootNavigatorHomeScreen,
          routes: [
            GoRoute(
              name: home,
              path: '/$home',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeScreen();
                // return SliverAppBarTabBarExample();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: rootNavigatorAddEventScreen,
          routes: [
            GoRoute(
              name: addEvent,
              path: '/$addEvent',
              builder: (BuildContext context, GoRouterState state) {
                return const AddEventScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: rootNavigatorChatScreen,
          routes: [
            GoRoute(
              name: chat,
              path: '/$chat',
              builder: (BuildContext context, GoRouterState state) {
                return const ChatScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: rootNavigatorProfileScreen,
          routes: [
            GoRoute(
              name: profile,
              path: '/$profile',
              builder: (BuildContext context, GoRouterState state) {
                return const ProfileScreen();
              },
            ),
          ],
        ),
      ],
    ),
  ]);
}
