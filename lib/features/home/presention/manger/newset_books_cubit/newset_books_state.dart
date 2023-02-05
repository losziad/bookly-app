import 'package:bookly/features/home/data/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBooksState extends Equatable{
  const NewsetBooksState();
  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState{}

class NewsetBooksLoading extends NewsetBooksState{}

class NewsetBooksSuccess extends NewsetBooksState{
  final List<BookModel> books;

  const NewsetBooksSuccess(this.books);
}

class NewsetBooksFailure extends NewsetBooksState{
  final String errorMessage;

  const NewsetBooksFailure(this.errorMessage);
}

