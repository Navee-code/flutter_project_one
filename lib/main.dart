import 'package:flutter/material.dart';

void main() => runApp( MaterialApp(
  home: WidgetTest()));


class WidgetTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('My First Flutter APP' ),
        backgroundColor: Colors.green,
      ),
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {  },
        child: const Text('CLICK'),
      ) ,

      body:  Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:<Widget> [
            const Text(
             "Login",
             style: TextStyle(
                 fontSize: 20.0,
                 color: Colors.green,
                 fontWeight: FontWeight.w800

             ),
           ),
           ElevatedButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetTestTwo()));
             },
             child: const Text('clicke me'),
           )
         ],
       ),


      ),


    );
  }
  
}

class WidgetTestTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {  },
        child: const Text('CLICK'),
      ) ,

      body: Container(
        color: Colors.green,
        child: const Text("MaxUp"),
      )


    );
  }

}






