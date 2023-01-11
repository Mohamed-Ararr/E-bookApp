// ignore_for_file: file_names

import 'package:bookstore/features/home/data/homeRepo/homeRepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'featuredbooksStates.dart';

class FeaturedBooksCubit extends Cubit {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.errorMsg));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
