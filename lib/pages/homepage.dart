import 'package:flutter/material.dart';
import 'package:portfolio/main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<String> titles = <String>[
  'News',
  'About me',
  'Gallery',
];

class HomePage extends StatefulWidget {
  static const routeName = "/home";

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();
  bool isLastPage = false;

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
                  icon: Icon(Icons.newspaper),
                ),
                Tab(
                  icon: Icon(Icons.face_4),
                ),
                Tab(
                  icon: Icon(Icons.feed),
                ),
              ],
            ),
            title: const Center(
              child: Text('WELCOME TO MY PORTFOLIO'),
            ),
          ),
        ),
      ),
    );
  }
}
