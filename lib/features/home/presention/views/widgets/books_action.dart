import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16),),
              text: 'Free',
            ),
          ),

          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16),),
              text: 'Preview',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
