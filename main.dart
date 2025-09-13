import 'package:flutter/material.dart';

void main() {
  runApp(StudentAIApp());
}

class StudentAIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Helper',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: QuestionScreen(),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final TextEditingController _controller = TextEditingController();
  String _answer = "";

  void _getAnswer() {
    setState(() {
      _answer = "Yeh ek demo answer hai. Tumne poocha: ${_controller.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Helper (Demo)"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Apna sawaal likho...",
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: _getAnswer,
              child: Text("Jawab Lao"),
            ),
            SizedBox(height: 20),
            Text(
              _answer,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}