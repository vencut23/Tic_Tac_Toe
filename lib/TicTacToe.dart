import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  final TextEditingController tx1 = TextEditingController();
  final TextEditingController tx2 = TextEditingController();
  var player1name = '';
  var player2name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tic Tac Toe",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Player 1 Name:"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: tx1,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  hintText: 'Enter the player 1 name here',
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    player1name=tx1.text;
                    show
                  },
                  child: Icon(
                    Icons.check,
                    color: Colors.white70,
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white30,
                    backgroundColor: Colors.green,
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Player 2 Name:"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: TextField(
                controller: tx2,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  hintText: 'Enter the player 2 name here',
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.check,
                    color: Colors.white70,
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white30,
                    backgroundColor: Colors.green,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
