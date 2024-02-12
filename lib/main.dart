import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildPhones({required int nums, required Color colorr}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: colorr,
        ),
        onPressed: () => playSound(nums),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.blue[200],
            title: const Text("Music"),
            centerTitle: true,
            shadowColor: Colors.blueAccent[600],
          ),
          body: SafeArea(
            child: Column(
              children: [
                buildPhones(nums: 1, colorr: Colors.yellow),
                buildPhones(nums: 2, colorr: Colors.red),
                buildPhones(nums: 3, colorr: Colors.blue),
                buildPhones(nums: 4, colorr: Colors.green),
                buildPhones(nums: 5, colorr: Colors.pink),
                buildPhones(nums: 6, colorr: Colors.grey),
                buildPhones(nums: 7, colorr: Colors.orange),
              ],
            ),
          )),
    );
  }
}
