import 'package:flutter/material.dart';
import 'components/number_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hit & Blow'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(border: Border.all()),
              child: const Align(
                child: Text(
                  '***',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print('aa');
                  },
                  child: const Text('Delete'),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('aa');
                  },
                  child: const Text('Enter'),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NumberButton(
                      press: () {},
                      text: const Text('1'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('2'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('3'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('4'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('5'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    NumberButton(
                      press: () {},
                      text: const Text('6'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('7'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('8'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('9'),
                    ),
                    NumberButton(
                      press: () {},
                      text: const Text('0'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
