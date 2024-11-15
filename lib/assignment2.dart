import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Color(0xffffc107),
        actions: [
          IconButton(onPressed: (){},
          icon: Icon(Icons.add),
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.settings),
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.call),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          CustomItem(icon: Icons.icecream_outlined, text: "Ice cream is very delicious right?"),
          SizedBox(height: 20,),
          CustomItem(icon: Icons.code_outlined, text: 'Programming is not boring if you love it'),
          SizedBox(height: 20,),
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
    Key? key,
    required this.icon,
    required this.text,
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Column(
       children: [
         Center(
           child: CircleAvatar(
             radius: 80,
             backgroundColor: Color(0xffeaddff),
             child: Icon(
               icon,
               color: Color(0xff21005d),
               size: 90,

             ),
           ),
         ),
         SizedBox(height: 10,),
         Text(
           text,
           style: TextStyle(
             color: Colors.black,
             fontSize: 16,
             fontWeight: FontWeight.bold,
           ),
         ),
       ],
     );
  }
}