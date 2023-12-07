import 'package:flutter/material.dart';
import 'package:testesapp/widgets/bodytab2.dart';
import 'package:testesapp/widgets/bodytab3.dart';
import 'package:testesapp/widgets/bodytabone.dart';

void main() {
  runApp(const MaterialAppHome());
}

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Aplicativo de Abas"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Tab 1",
                  icon: Icon(Icons.home, color: Colors.red),
                ),
                Tab(
                  text: "Tab 2",
                  icon: Icon(Icons.home, color: Colors.red),
                ),
                Tab(
                  text: "Tab 3",
                  icon: Icon(Icons.home, color: Colors.red),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: BodyTabOne()),
              Center(child:BodyTab2()),
              Center(child:BodyTab3()),
            ],
          ),
        ),
      ),
    );
  }
}





