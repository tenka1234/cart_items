import 'package:flutter/material.dart';

class Rowsclos extends StatelessWidget {
  const Rowsclos({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Rows and Columns"),
        backgroundColor: Colors.green,
      ),
      body: Container(
           height: h,
        width: w,
        color: Colors.yellow,

        child: Column(
           // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
        // child: Wrap(
        //   direction: Axis.vertical,
        //   alignment: WrapAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.end,
          // // crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(height: 50, width: 50, color: Colors.red,),
            Container(height: 50, width: 50, color: Colors.blue,),
            Container(height: 50, width: 50, color: Colors.grey,),
            Container(height: 50, width: 50, color: Colors.black,),
            Container(height: 50, width: 50, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
