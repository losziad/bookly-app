import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presention/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/features/home/presention/manger/newset_books_cubit/newset_books_state.dart';
import 'package:bookly/features/home/presention/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        }
        else if(state is NewsetBooksFailure)
          {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }
        else
          {
            return const Center(child: CustomLoadingIndicator());
          }
      },
    );
  }
}
