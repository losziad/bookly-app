import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presention/manger/newset_books_cubit/newset_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<NewsetBooksState>
{
  final HomeRepo homeRepo;

  FeaturedBooksCubit(NewsetBooksState initialState, this.homeRepo) : super(initialState);

  Future<void> featchNewsetBooks() async{
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewsetBooksFailure(failure.errorMessage));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    });
  }
}