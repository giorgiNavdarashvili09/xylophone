
import 'package:flutter/material.dart';
import 'package:xylophone/components/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Note(filePath: "sounds/assets_note1.wav", color: Colors.red,),
            Note(filePath: "sounds/assets_note2.wav", color: Colors.orange,),
            Note(filePath: "sounds/assets_note3.wav", color: Colors.pink,),
            Note(filePath: "sounds/assets_note4.wav", color: Colors.teal,),
            Note(filePath: "sounds/assets_note5.wav", color: Colors.amber,),
            Note(filePath: "sounds/assets_note6.wav", color: Colors.green,),
            Note(filePath: "sounds/assets_note7.wav", color: Colors.blue,),

          ],
        ),
      ),
    );
  }
}
