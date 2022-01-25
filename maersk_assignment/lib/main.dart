import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:maersk_assignment/app_entry_widget.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // dependenccy inejection
  di.init();

  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(376, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Assignment",
        //themeMode: ThemeMode.system,
        // To pick the dark/ligt from the phone settings

        //darkTheme: AppThemes.darkTheme,
        // List all the app supported locales here
        supportedLocales: [
          Locale('en', ''),
        ],
        // These delegates make sure that the localization for the proper language is loaded
        localizationsDelegates: [
          // Class that loads the transalations from JSON file
          //AppLocalizations.delegate,
          // Built in localizations of basic text for Material widgets
          GlobalMaterialLocalizations.delegate,
          // Built in localizations for text direction - LTR/RTL
          GlobalWidgetsLocalizations.delegate
        ],
        // Returns a locale which will be used by the app
        localeListResolutionCallback: (locale, supportedLocales) {
          // Check if the current device locale is supported - NEED TO CHECK
          /*for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }*/

          // If the locale of the device is not supported, use the first one
          return supportedLocales.first;
        },
        builder: (context, widget) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        home: AppEntryWidget(),
      ),
    );
  }
}
