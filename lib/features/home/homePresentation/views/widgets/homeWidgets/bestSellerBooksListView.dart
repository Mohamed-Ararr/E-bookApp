// ignore_for_file: file_names

import 'package:bookstore/core/widgets/customCircularIndicator.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/newestBooksCubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bestSellerBookCard.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.booksList.length,
            itemBuilder: (context, index) => BestSellerBookCard(
              bookModel: state.booksList[index],
            ),
          );
        } else if (state is NewestBooksFailure) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error),
              const SizedBox(width: 8),
              Text(state.errorMsg),
            ],
          );
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
