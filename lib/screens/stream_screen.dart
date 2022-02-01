import 'package:flutter/material.dart';

class StreamScreen extends StatelessWidget {
  final String title;
  const StreamScreen({Key? key, required this.title}) : super(key: key);

  Stream myStream() async* {//bcoz it's a stream/
    for (var i = 0; i < 10; i++) {
      yield i;//don't use return//
      await Future.delayed(const Duration(seconds: 3));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: StreamBuilder(
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(snapshot.data.toString(),textScaleFactor: 2,),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        stream: myStream(),
      ),
    );
  }
}
