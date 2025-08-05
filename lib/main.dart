import 'package:flutter/material.dart';

void main() {
  runApp(Radiobox());
}

class Radiobox extends StatelessWidget {
  const Radiobox({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioboxPage(),
      title: 'Radiobox',
      debugShowCheckedModeBanner: false,
    );
  }
}

class RadioboxPage extends StatefulWidget {
  const RadioboxPage({super.key});

  @override
  State<RadioboxPage> createState() => _RadioboxPageState();
}

class _RadioboxPageState extends State<RadioboxPage> {
  var result = 'Male';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RadioBox'), backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Enter Your Gender',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 252, 209, 78),
              child: RadioListTile(
                value: 'Male',
                title: Text('Male'),
                groupValue: result,
                selected: true,
                onChanged: (value) => {
                  setState(() {
                    result = 'Male';
                  }),
                },
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 252, 209, 78),

              child: RadioListTile(
                value: 'Female',
                title: Text('Female'),
                groupValue: result,
                onChanged: (value) => {
                  setState(() {
                    result = 'Female';
                  }),
                },
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 252, 209, 78),

              child: RadioListTile(
                value: 'Other',
                title: Text('Other'),
                groupValue: result,
                onChanged: (value) => {
                  setState(() {
                    result = 'Other';
                  }),
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                result,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
