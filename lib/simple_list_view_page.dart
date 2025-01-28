import 'package:flutter/material.dart';
import 'package:simple_list_view/buttons_page.dart';
import 'package:simple_list_view/custom_list_tile.dart';
import 'package:simple_list_view/stories_page_controller.dart';
import 'package:simple_list_view/story_full_page_view.dart';

class SimpleListViewPage extends StatelessWidget {
  const SimpleListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List View'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => StoriesPageController()));
              },
              icon: Icon(Icons.more)),
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => ButtonsPage()));
              },
              icon: Icon(Icons.more)),
          Icon(
            Icons.more_vert,
          )
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Farida'),
            subtitle: Text('Hello World'),
          ),
          ListTile(
            onTap: () {
              //function here
            },
            onLongPress: () {},
            leading: Icon(
              Icons.person,
              color: Colors.blueAccent,
            ),
            title: Text(
              'learning flutter',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('learning on building flutter'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Farida'),
            subtitle: Text('Hello World'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Farida'),
            subtitle: Text('Hello World'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Farida'),
            subtitle: Text('Hello World'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Farida'),
            subtitle: Text('Hello World'),
          ),
          CustomListTile(
            leading: Icons.flaky,
            title: 'John Doie custom tile',
            subtitle: 'Hello there  custom tile John ',
            badgeLable: Text('messages'),
            badgeChild: Text('7'),
          ),
          CustomListTile(
              leading: Icons.flaky,
              title: 'John Doie custom tile',
              subtitle: 'Hello there  custom tile John ',
              badgeLable: Text('messages'),
              badgeChild: Text('7'),
              onTap: () {
                print("Tapped");
              }),
          CustomListTile(
              leading: Icons.flaky,
              title: 'John Doie custom tile',
              subtitle: 'Hello there  custom tile John ',
              badgeLable: Text('messages'),
              badgeChild: Text('7'),
              onTap: () {
                print("Tapped");
              }),
          CustomListTile(
              leading: Icons.flaky,
              title: 'John Doie custom tile',
              subtitle: 'Hello there  custom tile John ',
              badgeLable: Text('messages'),
              badgeChild: Text('7'),
              onTap: () {
                print("Tapped");
              }),
        ],
      ),
    );
  }
}
