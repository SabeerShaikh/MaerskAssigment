import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:http/http.dart' as http;

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


}
