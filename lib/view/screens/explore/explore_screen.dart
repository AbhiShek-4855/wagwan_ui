import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';
import 'package:wagwan_ui/gen/app_fonts.dart';
import 'package:wagwan_ui/gen/assets.gen.dart';
import 'package:wagwan_ui/view/screens/explore/my_circle/my_circle_tab.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          elevation: 0, // Removes the shadow and divider
          shape: const Border(), // Removes the border
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(5.0),
            child: TabBar(
              unselectedLabelStyle: const TextStyle(
                fontFamily: AppFonts.PP_MORI_FONTS_REGULAR,
                color: Colors.white,
                fontSize: 16,
              ),
              indicator: const BoxDecoration(color: Colors.transparent),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(
                fontFamily: AppFonts.PP_MORI_FONTS_REGULAR,
                color: Colors.white,
                fontSize: 16,
              ),
              dividerColor: Colors.transparent,
              tabs: [
                const Tab(text: 'Explore'),
                const Tab(text: 'Friends'),
                Tab(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Assets.icons.icRing.svg(
                        height: 17,
                        width: 17,
                      ),
                      _notificationPendingWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Upcoming explore')),
            Center(child: Text('Upcoming Friends')),
            Center(child: MyCircleTab()),
          ],
        ),
      ),
    );
  }

  Widget _notificationPendingWidget() {
    return Positioned(
      right: -8, // Adjusted for better overlap
      top: -8,  // Adjusted for better overlap
      child: Container(
        height: 22,
        width: 35,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle, // Keeps the circular shape
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.black, // Dark black border color
              width: 3.0,         // Border width set to 3
            ),
          ),
        ),
        child: Center(
          child: "12".ppMoriFont(
            fontSize: 10,
            fontWeight: FontWeight.w800,
            color: Colors.white, // Ensure text is visible on red background
          ),
        ),
      ),
    );
  }
}