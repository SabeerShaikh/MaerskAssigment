import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:maersk_assignment/features/showFeed/data/datasources/feed_data_sources.dart';
import 'package:maersk_assignment/features/showFeed/data/repository/feed_data_repository_impl.dart';
import 'package:maersk_assignment/features/showFeed/domain/repository/feed_data_repository.dart';
import 'package:maersk_assignment/features/showFeed/domain/usecase/feed_data_usecase.dart';
import 'package:maersk_assignment/features/showFeed/presentation/feed_bloc/feed_data_bloc.dart';

final sl = GetIt.instance;

void init() async {
  //!---- Feature----Signup user
  authenticateUser();

  //!----Core
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //!----External
  // sl.registerLazySingleton(() => http.Client());
  // sl.registerLazySingleton(() => InternetConnectionChecker());
  // sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));
}

authenticateUser() {
  //bloc
  sl.registerFactory(() => FeedDataBloc(feedDataUseCase: sl()));

  //usecase
  sl.registerLazySingleton(() => FeedDataUseCase(sl()));

  //Repositories
  sl.registerLazySingleton<FeedDataRepository>(
      () => FeedDataRepositoryImpl(dataSource: sl()));

  //DataSources
  sl.registerLazySingleton<FeedDataSource>(() => FeedDataSourceImpl());
}
