import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
        child: Icon(
          Icons.cloud,
          size: 64,
          color: Colors.teal,
        ),
      ),
      const Center(
        child: Icon(
          Icons.alarm,
          size: 64,
          color: Colors.cyan,
        ),
      ),
      const Center(
        child: Icon(
          Icons.forum,
          size: 64,
          color: Colors.blue,
        ),
      ),
    ];

    final _kTabs = <Tab>[
      const Tab(
        icon: Icon(Icons.cloud),
        text: 'Tab1',
      ),
      const Tab(
        icon: Icon(Icons.alarm),
        text: 'Tab2',
      ),
      const Tab(
        icon: Icon(Icons.forum),
        text: 'Tab3',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabs Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: _kTabs.length,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Appbar Title'),
              backgroundColor: Colors.cyan,
              bottom: TabBar(
                tabs: _kTabs,
              ),
            ),
            body: TabBarView(
              children: _kTabPages,
            ),
          )),
    );
  }
}
