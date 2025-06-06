import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstNumTEController = TextEditingController();
  final TextEditingController _secondNumTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _firstNumTEController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Firfdffst Number',
                labelText: 'First Number',
              ),
            ),
            TextField(
              controller: _secondNumTEController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Second Number',
                labelText: 'Second Numyuber',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
