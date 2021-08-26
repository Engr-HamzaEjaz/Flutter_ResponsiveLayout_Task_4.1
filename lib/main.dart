import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get body => null;

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double w = screensize.width;
    double h = screensize.height;
    return MaterialApp(
      home: MyHomePage(),
      // Container(
      //   child: Column(
      //     children: [
      //     if (w == h) {
      //    Container_Symmetric();
      // }
      // else {
      //   return Container_UnSymmetric
      // }
      //     ],
      //   )

      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    double w = screensize.width;
    double h = screensize.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: 
          if (w == h) {
            return Container_UnSymmetric()
          } else {
            return Container_UnSymmetric()
          }
        ),
    );
  }
}

class Container_UnSymmetric extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
    var screensize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: screensize.width,
                height: screensize.height / 2.5,
                color: Colors.white,
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width,
                height: screensize.height / 5,
                color: Colors.brown,
                child: Center(child: Text('Row 01')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width / 2,
                height: screensize.height / 5,
                color: Colors.red,
                child: Center(child: Text('Row 02, Column 01')),
              ),
              Container(
                width: screensize.width / 2,
                height: screensize.height / 5,
                color: Colors.orange,
                child: Center(child: Text('Row 02, Column 02')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width / 2,
                height: screensize.height / 5,
                color: Colors.green,
                child: Center(child: Text('Row 03, Column 01')),
              ),
              Container(
                width: screensize.width / 2,
                height: screensize.height / 5,
                color: Colors.blue,
                child: Center(child: Text('Row 03, Column 02')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width,
                height: screensize.height / 5,
                color: Colors.pink,
                child: Center(child: Text('Row 04')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width,
                height: screensize.height / 2.5,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Container_Symmetric extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
    var screensize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: screensize.width,
                height: screensize.height / 4,
                color: Colors.brown,
                child: Center(child: Text('Row 01')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width / 2,
                height: screensize.height / 4,
                color: Colors.red,
                child: Center(child: Text('Row 02, Column 01')),
              ),
              Container(
                width: screensize.width / 2,
                height: screensize.height / 4,
                color: Colors.orange,
                child: Center(child: Text('Row 02, Column 02')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width / 2,
                height: screensize.height / 4,
                color: Colors.green,
                child: Center(child: Text('Row 03, Column 01')),
              ),
              Container(
                width: screensize.width / 2,
                height: screensize.height / 4,
                color: Colors.blue,
                child: Center(child: Text('Row 03, Column 02')),
              )
            ],
          ),
          Row(
            children: [
              Container(
                width: screensize.width,
                height: screensize.height / 4,
                color: Colors.pink,
                child: Center(child: Text('Row 04')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
