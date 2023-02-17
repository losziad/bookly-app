import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/data/models/models.dart';
import 'package:bookly/features/home/presention/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presention/views/widgets/books_action.dart';
import 'package:bookly/features/home/presention/views/widgets/books_details_section.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_list_view_item.dart';
import 'package:bookly/features/home/presention/views/widgets/featured_list_view.dart';
import 'package:bookly/features/home/presention/views/widgets/similar_books_section.dart';
import 'package:bookly/features/home/presention/views/widgets/similer_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 30.0
            ),
            child: Column(
              children:  [
                const CustomBookDetailsAppBar(),
                 BookDetailsSection(
                   bookModel: bookModel,
                 ),
                const SizedBox(
                  height: 37.0,
                ),
                const BooksAction(),
                const Expanded(
                  child:  SizedBox(
                    height: 50.0,
                  ),
                ),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


