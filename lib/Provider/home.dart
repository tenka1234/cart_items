import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_myapp/Provider/list_provider.dart';
import 'package:test_myapp/Provider/second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // final List<int> numbers = [1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, NumbersProviderModel, child) => Scaffold(
      floatingActionButton: FloatingActionButton
        (
       shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(30)),
          backgroundColor: Colors.green, onPressed: () {

         NumbersProviderModel.add();
         // int last = numbers.last;
         // setState(() {
         //   numbers.add(last+1);
         // });
      },
       child: Icon(Icons.add)
        ),
      appBar: AppBar(
         backgroundColor: Colors.green,
      ),
      body:   Container(
          child: Column(
            children: [
              Text(NumbersProviderModel.numbers.last.toString(), style: TextStyle(fontSize: 40),),
              Expanded(
                child: ListView.builder(
                  itemCount: NumbersProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                  return Text(NumbersProviderModel.numbers[index].toString(),
                    style: TextStyle(fontSize: 40),);
                },),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Second(),));
                }, child: Text("Second",),
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, foregroundColor: Colors.black
                ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
