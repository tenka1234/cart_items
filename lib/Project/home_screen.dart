import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
      // leadingWidth: 70,
      title: Row(
          children: [ CircleAvatar(
          radius: 25,
          // foregroundImage: AssetImage("assets/images/eswar.jpg",),
          // backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/previews/059/070/007/non_2x/portrait-of-a-cute-boy-with-his-hands-on-his-head-on-a-yellow-background-photo.jpeg")
        backgroundImage: AssetImage('assets/images/eswar.jpg'),
        ),
           SizedBox(width: 10,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Text("Hello Eswar",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
               Text("Let's see your heart's streak today",style: TextStyle(fontSize: 10,color: Colors.grey),)
             ],
           )
      ]
      ),
        actions:[ IconButton(
            padding: EdgeInsets.only(right: 30),
            iconSize: 40,
            onPressed: () {}, icon:Icon(Icons.notifications_none,)),],
      ),
          // backgroundColor: Colors.white,
      body: Padding(
       padding: EdgeInsets.all(16),
        child: Card(
          elevation: 3,
          // color: Colors.black,
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)
           
        )
        ),
          child: Padding(padding: EdgeInsets.all(20),
          child: Column(
              children: [
                Text("Emergency help needed?", style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
                ),
                 SizedBox(height: 5),
                 Text(
                  "Just hold the button to call",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 20),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
