import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacklearn/app/app.locator.dart';
import 'package:stacklearn/app_router.dart';
import 'package:stacklearn/view/counter.dart';
import 'package:stacklearn/view/poechat.dart';
import 'app/app.router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
   await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   // final appRouter = AppRouter(authService: AuthenticationService()); // Example service injection

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     //navigatorKey: StackedService.navigatorKey,
    //  onGenerateRoute: StackedRouter().onGenerateRoute,
    home: ChatScreen(),
    );
  }
}
