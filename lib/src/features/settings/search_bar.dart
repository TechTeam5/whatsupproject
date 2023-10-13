import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final String hintText;
  final VoidCallback onSearch;

  const SearchBar({
    Key? key,
    required this.hintText,
    required this.onSearch,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 8.0),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: widget.hintText,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(width: 8.0),
          ElevatedButton(
            onPressed: widget.onSearch,
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}
