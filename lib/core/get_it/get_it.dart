import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task_porject/Features/home/data/repo/home_repo.dart';
import 'package:task_porject/Features/home/data/repo/home_repo_impl.dart';
import 'package:task_porject/core/services/api_service.dart';

final getIt = GetIt.instance;
setupGetIt() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(getIt<Dio>()));
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(apiService: getIt<ApiService>()),
  );
}
