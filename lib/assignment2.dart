import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: profileScreen(),

    );
  }
}

class profileScreen extends StatelessWidget{
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: const Color(0xffffc107),
        actions: [
          IconButton(onPressed: (){},
          icon: const Icon(Icons.add),
          ),
          IconButton(onPressed: (){},
            icon: const Icon(Icons.settings),
          ),
          IconButton(onPressed: (){},
            icon: const Icon(Icons.call),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CustomItem(icon: Icons.icecream_outlined, text: "Ice cream is very delicious right?"),
          SizedBox(height: 40,),
          CustomItem(icon: Icons.code_outlined, text: 'Programming is not boring if you love it'),
          SizedBox(height: 40,),
          CustomItem(icon: Icons.egg_outlined, text: 'If you submit code directly copy from chatgpt then mark will 0'),

        ],
        
      ),


    );
  }

}

class CustomItem extends StatelessWidget{
  final IconData icon;
  final String text;

  const CustomItem({
    super.key,
    required this.icon,
    required this.text,
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Column(
       children: [
         Center(
           child: CircleAvatar(
             radius: 80,
             backgroundColor: const Color(0xffeaddff),
             child: Icon(
               icon,
               color: const Color(0xff21005d),
               size: 90,

             ),
           ),
         ),
         const SizedBox(height: 10,),
         Text(
           text,
           style: const TextStyle(
             color: Colors.black,
             fontSize: 16,
             fontWeight: FontWeight.bold,
           ),
         ),
       ],
     );
  }
}