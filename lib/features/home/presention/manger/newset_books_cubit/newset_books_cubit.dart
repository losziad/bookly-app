import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presention/manger/newset_books_cubit/newset_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState>
{

  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;


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