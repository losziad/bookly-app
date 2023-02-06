import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/models.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  //Request
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{
   try{
     var data =  await apiService.getData(
       endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science',
     );
     List<BookModel> books = [];
     for(var item in data['items'])
       {
          books.add(BookModel.fromJson(item));
       }
     //right because I use Either so I need to identify right or left
     return right(books);
   } catch(e)
    {
      if(e is DioError)
        {
          return left(ServerFailure.fromDioError(e));
        }
      return left(ServerFailure(e.toString()));
    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      var data =  await apiService.getData(
        endPoint: 'volumes?q=programming languages&Filtering=free-ebooks',
      );
      List<BookModel> books = [];
      for(var item in data['items'])
      {
        books.add(BookModel.fromJson(item));
      }
      //right because I use Either so I need to identify right or left
      return right(books);
    } catch(e)
    {
      if(e is DioError)
      {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}