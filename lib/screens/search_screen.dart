import 'package:flutter/material.dart';
import '../bloc/search_bloc.dart';
import '../widgets/search_box.dart';
import '../widgets/result.dart';
import 'map_screen.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo bloc'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.map),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MapScreen()));
              }),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            SearchBox(),
            SizedBox(height: 20),
            Result(),
          ],
        ),
      ),
    );
  }
}
