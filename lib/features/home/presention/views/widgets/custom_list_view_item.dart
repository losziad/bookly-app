import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0,),
          color: Colors.red,
          image: const DecorationImage(
            image: AssetImage(
                AssetsData.testImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
