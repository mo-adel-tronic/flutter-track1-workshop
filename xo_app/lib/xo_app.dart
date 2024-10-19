import 'package:flutter/material.dart';

class XoApp extends StatefulWidget {
  const XoApp({super.key});

  @override
  State<XoApp> createState() => _XoAppState();
}

class _XoAppState extends State<XoApp> {
  bool isX = true;
  List<String> boxes = List.filled(9, '');
  String winner = '';

  void checkWinner() {
    List<List<int>> winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (var combo in winningCombinations) {
      if (boxes[combo[0]] != '' &&
          boxes[combo[0]] == boxes[combo[1]] &&
          boxes[combo[1]] == boxes[combo[2]]) {
        setState(() {
          winner = boxes[combo[0]];
        });
      }
    }
  }

  void update(int index) {
    if (boxes[index] == '' && winner == '') {
      setState(() {
        boxes[index] = isX ? 'X' : 'O';
        isX = !isX;
      });
      checkWinner();
    }
  }

  void resetGame() {
    setState(() {
      boxes = List.filled(9, '');
      isX = true;
      winner = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5D9E9F),
          centerTitle: true,
          title: const Text(
            'XO App',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: const Color(0xff5D9E9F),
        body: Stack(
          children: [
            Column(
              children: [
                const Divider(height: 10),
                const SizedBox(height: 40),
                const Text(
                  'TIC TAC TOE',
                  style:
                      TextStyle(fontSize: 50, color: Colors.white, height: 1),
                ),
                const Text(
                  '........................',
                  style: TextStyle(
                      fontSize: 50, height: .001, color: Color(0xffE3B885)),
                ),
                const SizedBox(height: 25),
                Text(
                  winner == '' ? (isX ? '' : '') : '$winner Wins!',
                  style: const TextStyle(fontSize: 50, color: Colors.white),
                ),
                const SizedBox(height: 20),
                for (int row = 0; row < 3; row++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int col = 0; col < 3; col++)
                        InkWell(
                          onTap: () => update(row * 3 + col),
                          child: Container(
                            alignment: Alignment.center,
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: const Color(0xffE3B885),
                                  width: row < 2 ? 4 : 0,
                                ),
                                right: BorderSide(
                                  color: const Color(0xffE3B885),
                                  width: col < 2 ? 4 : 0,
                                ),
                              ),
                            ),
                            child: Text(
                              boxes[row * 3 + col],
                              style: const TextStyle(
                                  fontSize: 80, color: Colors.white),
                            ),
                          ),
                        ),
                    ],
                  ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: resetGame,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffE3B885),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                  ),
                  child: const Text(
                    'New Game',
                    style: TextStyle(fontSize: 30, color: Color(0xff0b565a)),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffE3B885),
                ),
                child: const Icon(Icons.home),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: const XoApp(),
    routes: {
      '/': (context) => const XoApp(),
    },
  ));
}
