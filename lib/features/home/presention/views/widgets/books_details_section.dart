import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/models.dart';
import 'package:bookly/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presention/views/widgets/books_action.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: width * 0.19
          ),
          child:  CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43.0,
        ),
         Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
           textAlign: TextAlign.center,
        ),

        const SizedBox(
          height: 6.0,
        ),
         Opacity(
           opacity: 0.7,
           child: Text(
            bookModel.volumeInfo.authors![0],
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
        ),
         ),
        const SizedBox(
          height: 16.0,
        ),
         BookRating(
           rating: bookModel.volumeInfo.averageRating ?? 0,
           count: bookModel.volumeInfo.ratingsCount ?? 0,
         ),
      ],
    );
  }
}
