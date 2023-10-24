import 'package:flutter/material.dart';

import 'features/random_qoutes/presentation/views/quotes_view.dart';
class MyQuotesApp extends StatelessWidget {
  const MyQuotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     home: QuotesView(),
    );
  }
}