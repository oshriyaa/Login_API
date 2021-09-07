import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: Text('New app'),
      ),
      // body: SingleChildScrollView(
      //   child: Column(children: [
      //     Center(
      //       child: FutureBuilder<>(builder: method, builder: (BuildContext context, snapshot) {
      //         if (!snapshot.hasData){
      //           return Center(
      //             child: CircularProgressIndicator(),
      //           );       
      //         }
      //         if (snapshot.hasData){
      //           return Container(
      //             child: Column(children: [
      //               Text('HAS DATA')
      //             ],),
      //           );
      //         }
      //       }),
      //     )
      //   ],),
      // ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                width: 150,
                color: Colors.white,
              ),
            ),
            Text(
              'Full name',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade900,
              ),
            ),
            Text(
              'Email',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
