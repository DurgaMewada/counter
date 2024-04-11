import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Counter App ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Text(
          '$num',
          style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width:2,),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: (){
              setState((){
                num++;
                print(num);
              });
            },
            child: Icon(Icons.add,color: Colors.white,size: 30,),
          ),
          SizedBox(width:10,),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: (){
              setState((){
                num--;
                print(num);
              });
            },
            child: Icon(Icons.remove,color: Colors.white,size: 30,),
          ),
        ],
      ),
    );
  }
}

int num = 0;