import 'package:bloc/bloc.dart';
import 'package:bookstore/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/homeRepo/homeRepo.dart';

part 'more_books_state.dart';

class MoreBooksCubit extends Cubit<MoreBooksState> {
  MoreBooksCubit(this.homeRepo) : super(MoreBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchMoreBooks() async {
    emit(MoreBooksLoading());
    var result = await homeRepo.fetchMoreBooks();
    result.fold(
      (failure) => emit(MoreBooksFailure(failure.errorMsg)),
      (books) => emit(MoreBooksSuccess(books)),
    );
  }
}
