import 'package:flutter/material.dart';
import 'package:test_tab_navigation2/basicView.dart';
import 'package:test_tab_navigation2/horizontalView.dart';

import 'verticalView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ListView Deep Dive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          BasicView(),
          VerticalView(),
          HorizontalView()
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            child: Column(
              children:[
                Icon(Icons.menu_rounded),
                Text("Basic")
              ]
            ),
          ),
          Tab(
            child: Column(
              children:[
                Icon(Icons.vertical_shades_closed_outlined),
                Text("Vertical")
              ]
            ),
          ),
          Tab(
            child: Column(
              children:[
                Icon(Icons.horizontal_split_rounded),
                Text("Horizontal")
              ]
            ),
          ),
        ],
      ),
    );
  }
}
