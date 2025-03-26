import '../gen/assets.gen.dart';

class MyCircleModel {
  final String leadingImage;
  final String title;
  final String subTitle;
  final String member;

  MyCircleModel({
    required this.leadingImage,
    required this.title,
    required this.subTitle,
    required this.member,
  });
}

List<MyCircleModel> dummyMyCircleList = [
  MyCircleModel(
    leadingImage: Assets.images.imgCircle1.path,
    title: "Designers Den",
    subTitle: "Please send a mail with the all......",
    member: "0",
  ),
  MyCircleModel(
    leadingImage: Assets.images.imgCircle2.path,
    title: "Designers Den",
    subTitle: "Please send a mail with the all......",
    member: "0",
  ),
  MyCircleModel(
    leadingImage: Assets.images.imgCircle3.path,
    title: "Designers Den",
    subTitle: "Please send a mail with the all......",
    member: "0",
  ),
  MyCircleModel(
    leadingImage: Assets.images.imgCircle4.path,
    title: "Designers Den",
    subTitle: "Please send a mail with the all......",
    member: "0",
  ),
  MyCircleModel(
    leadingImage: Assets.images.imgCircle5.path,
    title: "Designers Den",
    subTitle: "Please send a mail with the all......",
    member: "0",
  ),
  MyCircleModel(
    leadingImage: Assets.images.imgCircle6.path,
    title: "Designers Den",
    subTitle: "Please send a mail with the all......",
    member: "0",
  ),
];
