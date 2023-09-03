import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        home: const HomePage(),
        theme: ThemeData(
            fontFamily: 'Lato',
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            )),
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                prefixIconColor: Color.fromARGB(119, 119, 119, 1)),
            textTheme: const TextTheme(
                titleLarge:
                    TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                titleMedium:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                bodySmall:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromRGBO(254, 206, 1, 1),
              primary: const Color.fromRGBO(254, 206, 1, 1),
            ),
            useMaterial3: true),
        title: 'Shopping App',
      ),
    );
  }
}
