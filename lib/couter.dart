import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Couter()));
}

class Couter extends StatefulWidget {
  const Couter({super.key});

  @override
  State<Couter> createState() => _CouterState();
}

class _CouterState extends State<Couter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("state")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("$count", style: TextStyle(fontSize: 50)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text("+"),
              ),
              FilledButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Text("-"),
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text("+"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    count--;
                  });
                },
                child: Text("-"),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
       children: [
         FloatingActionButton(
             onPressed: (){
         setState(() {
           count++;
         });
         },
         child: Icon(Icons.add_alarm),
         ),
         SizedBox(height: 10),
         FloatingActionButton(onPressed: (){
          setState(() {
            count--;
          });
         },
         child: Icon(Icons.add_home),
         )
       ],
      ),
    );
  }
}