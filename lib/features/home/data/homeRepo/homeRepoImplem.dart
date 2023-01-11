import 'package:bookstore/core/errors/failure.dart';
import 'package:bookstore/features/home/data/homeRepo/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:bookstore/features/home/data/models/book_model/book_model.dart';

class HomeRepoImplem implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerdBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
