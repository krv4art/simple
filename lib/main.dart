import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Базовое Приложение'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(labelText: 'Введите текст'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ваш код для обработки нажатия кнопки
                String enteredText = _textEditingController.text;
                print('Введенный текст: $enteredText');
              },
              child: Text('Нажмите меня'),
            ),
          ],
        ),
      ),
    );
  }
}
