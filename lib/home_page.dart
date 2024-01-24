import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Shuffler'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(flex: 1),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(flex: 1),
            TextButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Shuffle"),
              ),
            ),
            const Spacer(flex: 4),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  )),
            ),
            const Spacer(flex: 1),
            TextButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Shuffle"),
              ),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
