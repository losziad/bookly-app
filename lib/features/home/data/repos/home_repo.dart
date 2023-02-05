import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/models.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  //Either I can Identify two data type, the value in the left side is error, the value in the right is correct or success
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}