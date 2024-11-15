import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: bloodTestPage(),
    );
  }
}


class bloodTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF7FF),

      appBar: AppBar(
        backgroundColor: Color(0xffF44336),
        title: Text(
          'Need Blood',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(

              child: Icon(Icons.bloodtype_outlined,size: 140,color: Color(0xffFF5252),),
              backgroundColor: Color(0xff757175),
              radius: 100,
            ),
          ),
          SizedBox(height: 10,),
          Text('Donate Blood',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
        ],
      ),
    );
  }
}
