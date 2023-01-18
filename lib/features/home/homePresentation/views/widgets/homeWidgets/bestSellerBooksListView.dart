// ignore_for_file: file_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bookstore/core/widgets/errorMessageFailure.dart';
import 'package:bookstore/features/home/homePresentation/bloc%20manager/newestBooksCubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utilities/fontStyles.dart';
import '../../../../../../core/widgets/newestBooksLoadingBox.dart';
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
          return ErrorMessageFailure(errorMsg: state.errorMsg);
        } else {
          return const NewestBooksLoadingBox();
        }
      },
    );
  }
}
