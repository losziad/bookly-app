import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presention/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presention/manger/featured_books_cubit/featured_books_state.dart';
import 'package:bookly/features/home/presention/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0,),
                  child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
                    ),
                  ),
                );
              },
            ),
          );
        }
        else if(state is FeaturedBooksFailure)
          {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          }
        else
          {
            return const CustomLoadingIndicator();
          }
      },
    );
  }
}
