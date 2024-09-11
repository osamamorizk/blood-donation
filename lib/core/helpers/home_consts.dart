import 'package:blood_donation/feature/home/presentation/views/home_view_body.dart';
import 'package:blood_donation/core/widgets/bottom_nav_bar.dart';
import 'package:blood_donation/feature/notification/presentation/views/notification_view.dart.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

List<Widget> buildScreens() {
  return [
    const HomeViewBody(),
    const Screen3(),
    const NotificationView(),
    const Screen4(),
  ];
}

List<PersistentBottomNavBarItem> navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      iconSize: 30,
      icon: const Icon(Icons.home),
      // title: ("Home"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      iconSize: 30,
      icon: const Icon(Icons.person_rounded),
      // title: ("Favorite"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      iconSize: 30,
      inactiveIcon: const Icon(
        Icons.notifications_none,
      ),
      icon: const Icon(
        Icons.notifications,
        color: Colors.white,
      ),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      iconSize: 40,
      icon: const Icon(Icons.more_horiz),
      // title: ("Setting"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}
