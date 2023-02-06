import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({Key? key, required this.rating, required this.count}) : super(key: key);
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.0,
        ),
        Text(
         rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          '($count)',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
