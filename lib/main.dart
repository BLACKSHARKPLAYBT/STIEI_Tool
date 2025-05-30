import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main(){
  runApp(APP());
}

class APP extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: FirstAPP(),
    );
  }
}


class FirstAPP extends StatefulWidget{
  const FirstAPP({super.key});

  @override
  State<FirstAPP> createState()=>_start();
}

class _start extends State<FirstAPP> {
  String msg = '是的我就是结果。';
  Future <void> _click() async {
    Future <http.Response> fetchAlbum() async {
      var a;
      a = await http.get(Uri.parse('https://img.textline.top/random'));
      return a;
    }
    var response = await fetchAlbum();
    setState((){
      msg = response.body;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('测试API')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('是的API调用结果在这！'),
            Text(msg)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _click,child: Icon(Icons.abc_rounded),),
    );
  }
}
