part of 'featured_books_cubit.dart';

abstract class FeaturedBooksStates extends Equatable {
  const FeaturedBooksStates();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errorMsg;
  const FeaturedBooksFailure(this.errorMsg);
}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> booksList;

  const FeaturedBooksSuccess(this.booksList);
}
