import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRated extends StatelessWidget {
  const BookRated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.0,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          '(2395)',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
