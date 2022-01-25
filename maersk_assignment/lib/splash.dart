import 'package:flutter/material.dart';
import 'package:maersk_assignment/features/showFeed/presentation/pages/home_page.dart';

class SplashWidget extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashWidget> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      print('Splash for few seconds !!!');

      // We need to decide on the process of stack of navigation
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Text(
            "Welcome",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ));
  }
}
