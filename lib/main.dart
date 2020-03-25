import 'package:flutter/material.dart';
import 'screens/search_screen.dart';
import 'package:provider/provider.dart';
import 'bloc/search_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ChangeNotifierProvider(
        create: (ctx) => SearchBloc(),
        child: SearchView(),
      ),
    );
  }
}
