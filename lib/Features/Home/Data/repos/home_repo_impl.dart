import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/Home/Data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/Data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.forDioExpection(e));
      }
      return left(ServerFailure('An error occurred'));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=subject:programming');

      List<BookModel> books = [];
      books.add(BookModel.fromJson(data));

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.forDioExpection(e));
      }
      return left(ServerFailure('An error occurred'));
    }
  }
}
