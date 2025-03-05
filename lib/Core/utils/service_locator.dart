import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/Home/Data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  {
    getIt.registerSingleton<ApiService>(
      ApiService(
        dio: Dio(),
      ),
    );
    getIt.registerSingleton<HomeRepoImpl>(
      HomeRepoImpl(
        getIt<ApiService>(),
      ),
    );
  }
}
