import 'package:flutter/material.dart';

class LighterScreen extends StatefulWidget {
  const LighterScreen({super.key});

  @override
  State<LighterScreen> createState() => _LighterScreenState();
}

class _LighterScreenState extends State<LighterScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('lighter app',style: TextStyle(fontSize: 25),),),

      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lightbulb,
                  size: 100, color: isSwitched ? Colors.amber : Colors.grey),
                  const SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isSwitched = !isSwitched;
                    });
                  },
                  child: Text(isSwitched?'on':'of',style: TextStyle(fontSize: 20,color: isSwitched ? Colors.green : Colors.red,),
                  ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
