//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_list_view/tabBar.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Buttons Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => TabBarDemo()));
                  },
                  child: Text('Elevated Button')),
              const SizedBox(
                height: 12,
              ),
              OutlinedButton(onPressed: () {}, child: Text('Outlined')),
              TextButton(onPressed: () {}, child: Text('Text Buttom'))
            ],
          ),
        ));
  }
}
