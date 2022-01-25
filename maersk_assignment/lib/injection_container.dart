import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void init() async {
  //!---- Feature----Signup user
  authenticateUser();

  //!----Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //!----External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton<ApiClient>(() => ApiClient(sl()));
}

authenticateUser() {

}
