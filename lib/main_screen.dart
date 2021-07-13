import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Furniture',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Location
                    Row(
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.blueAccent,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                SearchBar(),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey[200],
            padding: EdgeInsets.all(8),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10,
              left: 15,
              bottom: 10,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.all_inbox,
                        color: Colors.blueAccent,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'All',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.chair,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Sofa',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.bed,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Bed',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.chair_alt,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Chair',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.lightbulb,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                    Text(
                      'Lamp',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.blueGrey[200],
            padding: EdgeInsets.all(0.5),
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Text(
              'Top Offers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _textController = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(color: Colors.black),
        maxLines: 1,
        controller: _textController,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey[600]),
          errorText: _validate ? null : null,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          icon: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          hintText: "Search Product",
        ),
        onSubmitted: (value) {},
      ),
    );
  }
}
