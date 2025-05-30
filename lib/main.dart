import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    sch(){
      var a = 1;
    }

    return MaterialApp(
      home: Scaffold(
    body: Stack(
      children: [
        Container(
          height: 200,
          width: 500,
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [Color(0xFF9C89B8), Color(0xFFFFFFFF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: SearchBar(
                  hintText: '搜索',
                  onChanged: (value) => print(value),
                )
              ),
          Padding(
            padding: EdgeInsets.all(10.0),
          )
          ,CircleAvatar(
                radius: 30,
              )
            ]
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xff9C89B8),
                  radius: 30,
                  child: IconButton(
                    onPressed: sch(),
                    icon: const Icon(Icons.message, color: Color(0xFFF0A6CA)),
                    iconSize: 40,
                  ),
                ),
                const SizedBox(width: 16.0),
                CircleAvatar(
                  backgroundColor: const Color(0xff9C89B8),
                  radius: 30,
                  child: IconButton(
                    onPressed: sch(),
                    icon: const Icon(Icons.directions_run,color: Color(0xFFF0A6CA)),
                    iconSize: 40,
                  ),
                ),
                const SizedBox(width: 16.0),
                CircleAvatar(
                  backgroundColor: const Color(0xff9C89B8),
                  radius: 30,
                  child: IconButton(
                    onPressed: sch(),
                    icon: const Icon(Icons.local_atm,color: Color(0xFFF0A6CA)),
                    iconSize: 40,
                  ),
                ),
                const SizedBox(width: 16.0),
                CircleAvatar(
                  backgroundColor: const Color(0xff9C89B8),
                  radius: 30,
                  child: IconButton(
                    onPressed: sch(),
                    icon: const Icon(Icons.workspaces,color: Color(0xFFF0A6CA)),
                    iconSize: 40,
                  ),
                ),
              ],
            )
          ),

      ]
    ),
    bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home,color: Color(0xFFB8BEDD),), label: '主页'),
        NavigationDestination(icon: Icon(Icons.message,color: Color(0xFFB8BEDD),), label: '信息'),
        NavigationDestination(icon: Icon(Icons.account_circle,color: Color(0xFFB8BEDD),), label: '账号'),
          ],
        backgroundColor: Color(0x30B8BEDD),
        indicatorColor: Color(0xFFc6cbe4),
    )
    )
    );
  }
}
