// ignore_for_file: file_names

import 'package:flutter_bloc/flutter_bloc.dart';
import 'featuredbooksStates.dart';

class FeaturedBooksCubit extends Cubit {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
