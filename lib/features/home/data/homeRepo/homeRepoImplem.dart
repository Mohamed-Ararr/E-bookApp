// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:bookstore/core/errors/failure.dart';
import 'package:bookstore/core/utilities/apiService.dart';
import 'package:bookstore/features/home/data/homeRepo/homeRepo.dart';
import 'package:bookstore/features/home/data/models/book_model/book_model.dart';

class HomeRepoImplem implements HomeRepo {
  ApiService apiService;

  HomeRepoImplem(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?q=mobiledevelopment&Sorting=newest");
      List<BookModel> newestBooks = [];
      for (var item in data["items"]) {
        newestBooks.add(BookModel.fromJson(item));
      }
      return right(newestBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: "volumes?q=webdevelopment");
      List<BookModel> newestBooks = [];
      for (var item in data["items"]) {
        newestBooks.add(BookModel.fromJson(item));
      }
      return right(newestBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchMoreBooks() async {
    try {
      var data = await apiService.get(endPoint: "volumes?q=datascience");
      // var data = await apiService.get(endPoint: "volumes?q=computer science");
      List<BookModel> moreBooks = [];
      for (var item in data["items"]) {
        try {
          moreBooks.add(BookModel.fromJson(item));
        } catch (e) {
          print(item);
        }
      }
      return right(moreBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
