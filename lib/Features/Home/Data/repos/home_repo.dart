import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/Home/Data/models/books_model/books_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
