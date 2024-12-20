import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  // Remove `super.key` from the constructor, as it's not necessary here
  const TabBarDemo();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.contacts,
                  ),
                ),
              ],
            ),
            //title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.home),
              Icon(Icons.settings),
              Icon(Icons.contacts),
            ],
          ),
        ),
      ),
    );
  }
}
