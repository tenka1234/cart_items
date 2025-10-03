import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Container and SizedBox")),
      ),
      // body: SizedBox(
      //   height: 50,
      //   width: 50,
      //   child: Text("Hello"),
      // ),
      body: Center(
        child: Container(
          // margin: EdgeInsets.all(30),
          padding: EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(60),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                blurRadius: 50,color: Colors.white,
                spreadRadius: 10
              )
            ],
            // shape: BoxShape.circle,
            color: Colors.blue,),
          child: Center(
              // child: Text("Hello",style: TextStyle(fontSize: 20),
            child: Container(
              // margin: EdgeInsets.all(30),
              color: Colors.red,),
          )),

        ),
      );

  }
}
