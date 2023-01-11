// ignore_for_file: file_names

import 'package:bookstore/core/utilities/apiService.dart';
import 'package:bookstore/features/home/data/homeRepo/homeRepoImplem.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  locator.registerSingleton<HomeRepoImplem>(
    HomeRepoImplem(
      locator.get<ApiService>(),
    ),
  );
}
