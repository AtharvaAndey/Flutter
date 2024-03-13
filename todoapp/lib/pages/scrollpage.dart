import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    List colorList = [
      Colors.red,
      Colors.yellow,
      (Colors.blue),
      (Colors.green),
      (Colors.red),
      (Colors.yellow),
      (Colors.blue),
      (Colors.green),
      (Colors.red),
      (Colors.yellow),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Page'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext buildContext, int index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
              color: colorList[index],
              child: Center(child: Text('$index')),
            );
          },
        ),
      ),
    );
  }
}
