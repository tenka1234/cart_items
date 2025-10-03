import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ["banana","Orange","Apple","Grapes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dismissible Package")),
        backgroundColor: Colors.orange,
      ),
   body: ListView.builder(
       itemCount: fruits.length,
       itemBuilder:(context, index)
       {
         final fruit = fruits[index];
         return Dismissible(
             onDismissed: (direction) {
               if(direction==DismissDirection.startToEnd)
                 {
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                   backgroundColor: Colors.red,));
                 }else
                   {
                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
                     backgroundColor: Colors.green,));
                   }
             },
             key: Key(fruit),
             background: Container(color: Colors.red,),
             secondaryBackground: Container(color: Colors.green,),
             child: Center(
               child: Card(
                 child: ListTile(
                            title: Center(child: Text(fruits[index])),
                          ),
               ),
             ));
       }, ),
    );
  }
}
