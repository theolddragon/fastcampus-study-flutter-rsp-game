import 'package:flutter/material.dart';
import 'package:study_rsp_game/game/game_body.dart';

void main() {
  runApp(
      const MaterialApp(
          home: RSPApp()
      )
  );
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('가위 바위 보'),
      ),
      body: const GameBody(),
    );
  }
}
