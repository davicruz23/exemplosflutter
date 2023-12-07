import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeBottonNav(),
    );
  }
}

class HomeBottonNav extends StatefulWidget {
  const HomeBottonNav({super.key});

  @override
  State<HomeBottonNav> createState() => _HomeBottonNavState();
}

class _HomeBottonNavState extends State<HomeBottonNav> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'Carrinho',
    ),
    Text(
      'Usuários',
    ),
    Text(
      'Brasil'
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(199, 68, 164, 164),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(199, 68, 164, 164),
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(199, 68, 164, 164),
            icon: Icon(Icons.person),
            label: 'Usuários',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(199, 68, 164, 164),
            icon: Icon(Icons.person),
            label: 'Brasil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}