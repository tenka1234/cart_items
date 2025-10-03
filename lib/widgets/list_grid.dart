import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {

  List<String> fruits = ['Orange','Apple','Banana','Graps'];
  Map fruits_person = {
    'fruits' : ['Orange','Apple','Banana','Graps'],
     'names' : ['Raju','Ramesh','Ram','Ramu']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and Grid"),
        backgroundColor: Colors.red,
        elevation: 10,
      ),
      
      // body: Container(
      //   child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 3,
      //     crossAxisSpacing: 20,
      //      mainAxisSpacing: 20,
      //     childAspectRatio: 2/3
      //   ),
      //   children: [
      //     Card(
      //       child: Center(child: Text("Orange")),
      //     ),
      //     Card(
      //       child: Center(child: Text("Orange")),
      //     ),
      //     Card(
      //       child: Center(child: Text("Orange")),
      //     ),
      //     Card(
      //       child: Center(child: Text("Orange")),
      //     ),
      //     Card(
      //       child: Center(child: Text("Orange")),
      //     ),
      //     Card(
      //       child: Center(child: Text("Orange")),
      //     ),
      //   ],
      //   ),
      // ),
      
     body: Container(
       child: GridView.builder(
         itemCount: fruits.length,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 4),
         itemBuilder: (context, index) {
             return Card(
               child: Center(child: Text(fruits[index])),
             );
           },
       ),
     ),
      
      // body:ListView.builder(
      //     itemCount: fruits.length,
      //     itemBuilder:(context, index) {
      //       return Card(  
      //         child: ListTile(
      //           onTap: () {
      //             print(fruits_person['fruits'][index]);
      //           },
      //           leading: Icon(Icons.person),
      //           // title: Text(fruits[index]),
      //            title: Text(fruits_person['fruits'][index]),
      //           subtitle: Text(fruits_person['names'][index]),
      //         ),
      //       );
      //     },
      // ),

      // body: ListView(
        // children: [
          // Card(
          //   child: ListTile(
          //     title: Text("Orange"),
          //     subtitle: Text("Raju"),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text("Orange"),
          //     subtitle: Text("Raju"),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text("Orange"),
          //     subtitle: Text("Raju"),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text("Orange"),
          //     subtitle: Text("Raju"),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text("Orange"),
          //     subtitle: Text("Raju"),
          //   ),
          // ),
          // Card(
          //   child: ListTile(
          //     title: Text("Orange"),
          //     subtitle: Text("Raju"),
          //   ),
          // )
        // ],

    );
  }
}
