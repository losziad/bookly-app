import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/models.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presention/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presention/views/book_details_view.dart';
import 'package:bookly/features/home/presention/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presention/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView = '/homeview';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        // '/' Point of Start
        path: '/',
        builder: (context, state) => const SplashView(),
      ),

      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),

      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
            create: (context) =>
              SimilarBooksCubit(
                getIt.get<HomeRepoImpl>()
              ),
        child:  BookDetailsView(
          //extra is data I send it
          bookModel: state.extra as BookModel,
        ),),
      ),

      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}