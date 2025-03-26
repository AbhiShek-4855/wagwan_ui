import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';
import '../../../gen/assets.gen.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void goBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = context.getScreenSize;
    return Scaffold(
      extendBody: true,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: navigationShell,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: goBranch,
        currentIndex: navigationShell.currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: _bottomBarIconWidget(
              icon: Assets.images.imgWagwanBottom.image(),
              backGroundColor: Colors.transparent,
              radius: 28,  // Increased radius only for this item
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _bottomBarIconWidget(icon: Assets.icons.icHome.svg()),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _bottomBarIconWidget(icon: Assets.icons.icAdd.svg()),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _bottomBarIconWidget(icon: Assets.icons.icChat.svg()),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _bottomBarIconWidget(imagePath: Assets.images.imgUser.path),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _bottomBarIconWidget({Widget? icon, String? imagePath, Color? backGroundColor, double? radius}) {
    if (imagePath != null && imagePath.isNotEmpty) {
      return Container(
        height: 30,
        width: 30,
        child: Image.asset(imagePath, fit: BoxFit.fill),
      );
    }

    return CircleAvatar(
      radius: radius ?? 20,
      backgroundColor: backGroundColor ?? const Color(0xffD9D9D9).withValues(alpha: 0.1),
      child: icon ?? Assets.icons.icHome.svg(),
    );
  }
}