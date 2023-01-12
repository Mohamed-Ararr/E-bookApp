// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/homeRepo/homeRepo.dart';
import '../../../data/models/book_model/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
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
