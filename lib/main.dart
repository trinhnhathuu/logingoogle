import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:logintest/page/home_page.dart';
import 'package:provider/provider.dart';
import 'provider/google_sign_in.dart';
import 'widgets/sign_up_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "MainPage";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(accentColor: Colors.indigo),
        home: HomePage(),
        title: title,
      ),
    );
  }
  }

