import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/counter_decreament_provider.dart';
import 'providers/counter_provider.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
 /* var count=0;
  _increament(){
    count++;
    setState(() {

    });
  }*/
  @override
  Widget build(BuildContext context) {
    final counter=Provider.of<CounterProvider>(context);
    final counter1=Provider.of<CounterDecreamentApp>(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text('CounterApp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,

      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${counter.count.toString()}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            Text('${counter1.count.toString()}',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
      floatingActionButton: Row(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){

            counter.increament();

          },
            child:  Icon(Icons.add),

          ),
          FloatingActionButton(onPressed: (){
            counter1.decreament();

            ;

          },
            child:  Icon(Icons.minimize),

          ),
        ],
      ),
    );
  }
}
