// ignore_for_file: file_names

import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

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
