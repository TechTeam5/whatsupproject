import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchQuery = '';

  void search() {
    // Perform a search for the entered text.
  }

  @override
  Widget build(BuildContext context) {
    List<Chip> chips = [
      Chip(
        label: Text('Recent'),
      ),
      Chip(
        label: Text('Contacts'),
      ),
      Chip(
        label: Text('Groups'),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade700,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search...',
          ),
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: search,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: chips,

              ),
            ),Text(searchQuery)
          ],
        ),


      ),
    );
  }
}
