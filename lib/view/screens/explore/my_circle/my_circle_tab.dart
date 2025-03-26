import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';
import 'package:wagwan_ui/models/my_circle_model.dart';
import 'package:wagwan_ui/view/widgets/my_circle_card.dart';

class MyCircleTab extends StatelessWidget {
  const MyCircleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: Public and Private
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "My Circle".ppMoriFont(
                fontSize: 24,
              ),
              const SizedBox(width: 16), // Optional spacing
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  // Allows tabs to scroll if needed
                  indicator: const BoxDecoration(),
                  // No default indicator
                  labelColor: Colors.white,
                  // Selected tab color
                  unselectedLabelColor: Colors.grey[300],
                  // Light grey for unselected
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 16,
                  ),
                  dividerColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  tabs: const [
                    Tab(text: 'Public'),
                    Tab(text: 'Private'),
                  ],
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 12),
          const SizedBox(height: 8), // Space between tab bar and content
          Expanded(
            child: TabBarView(
              children: [
                _publicPrivateListWidget("Public"),
                _publicPrivateListWidget("Private"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _publicPrivateListWidget(String type) {
    return ListView.builder(
      itemCount: dummyMyCircleList.length, // Example item count
      itemBuilder: (context, index) {
        MyCircleModel _myCircleModel = dummyMyCircleList[index];
        return MyCircleCard(
          myCircleModel: _myCircleModel,
        );
      },
    );
  }
}
