import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: width * 0.19
          ),
          child: CustomBookImage(),
        ),
        const SizedBox(
          height: 43.0,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6.0,
        ),
        const Text(
          'Rudyard Kipling',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const BookRated(),
      ],
    );
  }
}
