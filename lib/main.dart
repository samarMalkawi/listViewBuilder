import 'package:flutter/material.dart';

void main() {
  runApp(listViewBuilder());
}

class listViewBuilder extends StatelessWidget {
  const listViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List ImagesList = [
    "sportImages/football.jpg",
    "sportImages/Basketball.jpg",
    "sportImages/hockey.jpg",
    "sportImages/jumpase.jpg",
    "sportImages/rugby.jpg",
    "sportImages/run.jpg",
    "sportImages/swime.jpg",
    "sportImages/Tennis.jpg",
  ];
  List sportNames = [
    "Football",
    "Basketball",
    "Hockey",
    "Jumpase",
    "Rugby",
    "Run",
    "Swime",
    "Tennis",
  ];
  List subtitleName = [
    "كرة القدم",
    "كرة السلة",
    "هوكي الجليد",
    "جمباز",
    "كرة القدم البريطانية",
    "الجري",
    "السباحة",
    "كرة المضرب",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(children: [
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: ImagesList.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.blue[200],
                  child: ListTile(
                    trailing: Icon(Icons.person),
                    title: Text("${sportNames[i]}",
                        style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 12, 64, 14))),
                    subtitle: Text(
                      "${subtitleName[i]}",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown),
                    ),
                    leading: Image(
                        width: 200,
                        height: 200,
                        image: AssetImage("${ImagesList[i]}")),
                  ),
                );
              })
        ]),
      ),
    );
  }
}
