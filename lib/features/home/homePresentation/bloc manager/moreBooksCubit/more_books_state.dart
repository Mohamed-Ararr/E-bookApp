part of 'more_books_cubit.dart';

abstract class MoreBooksState extends Equatable {
  const MoreBooksState();

  @override
  List<Object> get props => [];
}

class MoreBooksInitial extends MoreBooksState {}

class MoreBooksLoading extends MoreBooksState {}

class MoreBooksFailure extends MoreBooksState {
  final String errorMsg;

  const MoreBooksFailure(this.errorMsg);
}

class MoreBooksSuccess extends MoreBooksState {
  final List<BookModel> booksList;

  const MoreBooksSuccess(this.booksList);
}
