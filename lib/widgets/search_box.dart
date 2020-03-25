import 'package:flutter/material.dart';
import '../bloc/search_bloc.dart';
import 'package:provider/provider.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _searchController.addListener(() {
      var query = _searchController.text;
      Provider.of<SearchBloc>(context, listen: false).search(query);
    });
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
    _searchController.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Enter your search',
          suffixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onChanged: (value) {
          setState(() {});
        },
      ),
    );
  }
}
