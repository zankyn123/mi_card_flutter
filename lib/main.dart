import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage('images/Avatar.jpg'),
                  radius: 50,
                ),
                Text(
                  'Mạnh Hùng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'Flutter developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.teal.shade100,
                    fontSize: 20,
                    fontFamily: 'SourceCodePro',
                  ),
                ),
                Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Flexible(
                      child: Divider(
                        color: Colors.teal.shade900,
                      ),
                      flex: 2,
                    ),
                    Spacer(
                      flex: 1,
                    )
                  ],
                ),
                buildInformationField_2(
                  icon: Icons.phone,
                  value: '0383378008',
                ),
                buildInformationField_2(
                  icon: Icons.mail,
                  value: 'Manhhungmob@gmail.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildInformationField_2({IconData? icon, required String value}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Colors.white,
        margin: EdgeInsets.all(0),
        child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          leading: Icon(
            icon,
            color: Colors.teal[900],
          ),
          title: Text(
            value,
            style: TextStyle(
              fontFamily: 'SourceCodePro',
              fontSize: 15,
              color: Colors.teal.shade900,
            ),
          ),
        ),
      ),
    );
  }

  Container buildInformationField_1(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.teal.shade900,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'SourceCodePro',
            ),
          )
        ],
      ),
    );
  }

  Container buildContainerItem(Color color) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }

  // Generate list
  List<Widget> buildListChildren() {
    return List<Container>.generate(2, (index) {
      if (index == 0) {
        return buildContainerItem(Colors.yellow);
      } else {
        return buildContainerItem(Colors.green);
      }
    });
  }
}
