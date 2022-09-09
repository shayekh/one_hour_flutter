import 'package:flutter/material.dart';

class LearnFlutterPAge extends StatefulWidget {
  const LearnFlutterPAge({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPAge> createState() => _LearnFlutterPAgeState();
}

class _LearnFlutterPAgeState extends State<LearnFlutterPAge> {
  bool isSwitch = false;
  bool? isCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Actions');
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/tt.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Text Widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: isSwitch ? Colors.green : Colors.blue),
                onPressed: () {
                  debugPrint('Elevated Button');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Out Button');
                },
                child: const Text('Out Button')),
            TextButton(
                onPressed: () {
                  debugPrint('Text Button');
                },
                child: const Text('Text Button')),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is the row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.local_fire_department, color: Colors.blue),
                  Text("Row Widget"),
                  Icon(Icons.local_fire_department, color: Colors.blue),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckBox = newBool;
                  });
                }),
            Image.network(
                'https://i.ytimg.com/vi/Q9MrKqs_uv8/maxresdefault.jpg')
          ],
        ),
      ),
    );
  }
}
