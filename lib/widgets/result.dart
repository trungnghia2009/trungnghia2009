import '../bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  List<String> _item = [];

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<SearchBloc>(context, listen: false);

    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: StreamBuilder<List<String>>(
          stream: bloc.searchController.stream,
          builder: (context, snapshot) {
            final itemLength = snapshot.data == null ? 0 : snapshot.data.length;
            return Container(
              child: ListView.builder(
                itemCount: itemLength,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '${snapshot.data[index]}',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
