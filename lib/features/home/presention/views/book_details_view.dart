import 'package:bookly/features/home/data/models/models.dart';
import 'package:bookly/features/home/presention/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presention/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).featchSimilarBooks(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: BookDetailsViewBody(),
      ),
    );
  }
}
