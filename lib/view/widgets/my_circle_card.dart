import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wagwan_ui/core/constants/extensions.dart';
import 'package:wagwan_ui/models/my_circle_model.dart';

class MyCircleCard extends StatelessWidget {
  final MyCircleModel myCircleModel;
  const MyCircleCard({super.key, required this.myCircleModel});

  @override
  Widget build(BuildContext context) {
    return ClipRect( // Ensure BackdropFilter works properly
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
        ),
        child: Row(
          children: [
            // Left-side image (fixed width)
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(17),
                bottomLeft: Radius.circular(17),
              ),
              child: Image.asset(
                myCircleModel.leadingImage,
                width: 131,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),

            // Right-side expanded content with BackdropFilter
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(17),
                  bottomRight: Radius.circular(17),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Blurred background image
                    Image.asset(
                      myCircleModel.leadingImage,
                      fit: BoxFit.cover,
                    ),

                    // BackdropFilter for blur effect
                    ClipRect( // This fixes the issue
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
                        child: Container(
                          color: Colors.black.withOpacity(0.3), // Dark overlay for better text visibility
                        ),
                      ),
                    ),

                    // Text Content (Example)
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  myCircleModel.title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.person_2, color: Colors.grey, size: 16,),
                                    3.WSpace(),
                                    myCircleModel.member.ppMoriFont(
                                        color: Colors.grey,
                                        fontSize: 12
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          4.HSpace(),
                          Text(
                            myCircleModel.subTitle,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ).marginOnly(bottom: 10, left: 10, right: 10),
    );
  }
}
