import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presention/manger/newset_books_cubit/newset_books_state.dart';
import 'package:bookly/features/home/presention/manger/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>
{

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;


  Future<void> featchSimilarBooks({required String category}) async{
    emit(SimilarBooksLoading());
    //ToDo look here
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}