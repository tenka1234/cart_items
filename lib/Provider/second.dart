import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_myapp/Provider/home.dart';
import 'package:test_myapp/Provider/list_provider.dart';

class Second extends StatefulWidget {
  // final List<int> numbers;
   Second({super.key, });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, value, child) => Scaffold(
      floatingActionButton: FloatingActionButton
        (
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
          backgroundColor: Colors.green, onPressed: () {

            value.add();

        // int last = widget.numbers.last;
        // setState(() {
        //   widget.numbers.add(last+1);
        // });
      },
          child: Icon(Icons.add)
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body:  Container(
          child: Column(
            children: [
              Text(value.numbers.last.toString(), style: TextStyle(fontSize: 40),),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:value.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(value.numbers[index].toString(),
                      style: TextStyle(fontSize: 40),);
                  },),
              ),
            ],

          ),

        ),
      ),

    );
  }
}
