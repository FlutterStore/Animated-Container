import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Animated Container',style: TextStyle(fontSize: 15),)
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: 
        AnimatedContainer(
          // clipBehavior: Clip.hardEdge,
          // constraints: BoxConstraints.tightFor(),
          // foregroundDecoration: BoxDecoration(),
          margin: EdgeInsets.all(10),
          // onEnd: () {},
          // transform: Matrix4.skewX(0.0),
          transformAlignment: Alignment.topCenter,
          // color: Colors.green,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selected ? Colors.blue : Colors.green,
          ),
          padding: EdgeInsets.all(20),
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Icon(Icons.favorite,size: 50,),
        ),
      ),
    );
  }
}




      