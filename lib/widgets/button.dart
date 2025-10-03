import 'package:flutter/material.dart';

class Buttonwidget extends StatelessWidget {
  const Buttonwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Button")),
      ),
      body: Center(
        child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(40),
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                ),
                onPressed: () {}, child: Text("Press Me",style: TextStyle(fontSize: 20,color: Colors.black),
            ),
            ),
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)))
                  ),
                  onPressed: () {
                  print("Like me ");
                    }, child: Text("Press Me",style: TextStyle(fontSize: 20,color: Colors.black),),),
              ),
          ],
        ),
      ),
    );
  }
}
