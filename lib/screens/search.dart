import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    // final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffC6AB59),
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          title: Text("Search Here..."),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },

              icon: Icon(Icons.search),
              // child: TextFormField(
              //   controller: _searchController,
              //   decoration: InputDecoration(
              //     hintText: 'Search...',
              //     border: InputBorder.none,
              //   ),
              // ),
            ),
          ]),
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {
  List<String> SearchItems = [
    'fruits',
    'apple',
    'mango',
    'banana',
    'jam',
    'peach',
    'cherry',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.blue.shade300,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    var matchquery = [];
    for (var f in SearchItems) {
      if (f.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(f);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var matchquery = [];
    for (var f in SearchItems) {
      if (f.toLowerCase().contains(query.toLowerCase())) {
        matchquery.add(f);
      }
    }
    return ListView.builder(
        itemCount: matchquery.length,
        itemBuilder: (context, index) {
          var result = matchquery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
