import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Colors.dart';
import 'package:app01/TSExpress/Homepage/Homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // static final String title = 'IMSI';

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turbo sim express',
      theme: ThemeData(
        // backgroundColor: kPrimaryColor2,

        textTheme: Theme.of(context).textTheme.apply(bodyColor: Cappbar),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: const MyStatefulWidget(),
    );
  }
}
