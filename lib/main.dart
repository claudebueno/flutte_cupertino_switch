import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Bouton Switch iOS",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showGreenBox = false;
  bool _showBlueBox = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Bouton Switch iOS"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Afficher la boite verte'),
              CupertinoSwitch(
                value: _showGreenBox,
                onChanged: (value) {
                  setState(() {
                    _showGreenBox = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Afficher la boite bleue'),
              CupertinoSwitch(
                activeColor: CupertinoColors.activeBlue,
                trackColor: CupertinoColors.inactiveGray,
                thumbColor: CupertinoColors.white,
                value: _showBlueBox,
                onChanged: (value) {
                  setState(() {
                    _showBlueBox = value;
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          if (_showGreenBox)
            Container(
              width: double.infinity,
              height: 200,
              color: CupertinoColors.activeGreen,
            ),
          if (_showBlueBox)
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 200,
              color: CupertinoColors.activeBlue,
            ),
        ]),
      ),
    );
  }
}
