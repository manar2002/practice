import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<String> tasks = [
    "Communication System Quiz",
    "Buy some stuff",
    "Go to the GYM",
    "Flutter Task",
    "Flutter Task بردو"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4368ff),
      appBar: AppBar(
        title: const Text("Todo List",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 40)),
        backgroundColor: const Color(0xff4368ff),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: ListView(children: [
          ListTile(
            title: const Text(
              "Communication System Quiz",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            subtitle:
                const Text("11:00 AM", style: TextStyle(color: Colors.white)),
            trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {}),
          ),
          ListTile(
            title: const Text(
              "Buy some stuff",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            subtitle: const Text("1:00 PM", style: TextStyle(color: Colors.white)),
            trailing:  IconButton(
                icon: const Icon(Icons.delete),
                onPressed: (){}),),

           ListTile(
            title: const Text(
              "Go to the GYM",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            subtitle: const Text("2:00 PM", style: TextStyle(color: Colors.white)),
            trailing:  IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {}),
          ),
          ListTile(
            title: const Text(
              "Flutter Task",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            subtitle: const Text("4:00 PM", style: TextStyle(color: Colors.white)),
            trailing:  IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {}),
    leading: RaisedButton(onPressed: (){
    showDialog(context: context, builder: (BuildContext context){return AlertDialog(
    title: const Text("Delete"),content: const Text("Are you want to delete this item?"),
    actions: [RaisedButton(
    child: const Text("Yes",style: TextStyle(color: Colors.red),),
    onPressed: (){Navigator.of(context).pop();},
    ),RaisedButton(
    child: const Text("No"),
    onPressed: (){Navigator.of(context).pop();},
    ),]);});
    },)),
          ListTile(
            title: const Text(
              "Flutter Task بردو",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
            subtitle: const Text("6:00 PM", style: TextStyle(color: Colors.white)),
            trailing:  IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {}),
          ),
        ]),
      ),
    );
  }
}
