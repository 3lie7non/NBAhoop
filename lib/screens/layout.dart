import 'package:flutter/material.dart';
import 'package:hoop/screens/views/results.dart';
import 'package:hoop/screens/views/standings.dart';
import 'package:hoop/screens/views/players.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedScreen = 0;
  List<Widget> views = [
    Standings(),
    Results(),
    Players(),
  ];

  void onTapChangeView(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views.elementAt(_selectedScreen),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_outlined),
            label: "Standings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield),
            label: "Results",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Players",
          ),
        ],
        currentIndex: _selectedScreen,
        onTap: onTapChangeView,
        selectedItemColor: Color(0XFF1F6BA3),
      ),
    );
  }
}