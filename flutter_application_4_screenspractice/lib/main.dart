import 'package:flutter/material.dart';
import 'package:flutter_application_4_screenspractice/enterdeatils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> Details = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: ListView.builder(
        itemCount: Details.length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Icon(Icons.verified_user),
            title: (Details[index]["username"]) ,
            subtitle: (Details[index]["password"]) ,
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => EnterDetails(
                        addDeatils: (String e, String p) {
                          
                          //print("$e");
                          var D = {"username ": e, "Password": p};
                          //refresh (if we dont setstate it dnt show the list)
                          setState(() {
                            
                            Details.add(D);
                          });
                        },
                      ))));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
