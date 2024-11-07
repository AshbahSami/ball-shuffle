import 'package:flutter/material.dart';
import 'dart:math';
class BallShuffling extends StatefulWidget {
  const BallShuffling({super.key});

  @override
  State<BallShuffling> createState() => _BallShufflingState();
}

class _BallShufflingState extends State<BallShuffling> {
   String ballImage = "asset/ball1.png";
   void shuffle(){
    int randomball = Random().nextInt(5)+1;

    setState(() {
          ballImage = "asset/ball$randomball.png";
        });
   }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
      title: Text("Ball Shuffling Game"),
      backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Ask me Anything!",style: TextStyle(fontSize: 50),),
            Image.asset(
              ballImage,
              height: 200,
            ),
            MaterialButton(
              onPressed:shuffle ,
              child: Text("ASK"),
             color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
