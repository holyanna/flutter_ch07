import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Colors.white
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title: const Text(
          '복잡한 UI',
          //style: TextStyle(color: Colors.black)
        ),
        centerTitle: true,
        actions: <Widget> [
          IconButton(
            icon:const Icon(
              Icons.add,
              //color: Colors.black,
            ),
            onPressed: () {}
          ),
        ]
      ),
      body: Center(
        child: Text(
          '$_index 페이지',
          style: const TextStyle(fontSize:40),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              label: '홈',
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: '이용서비스',
              icon: Icon(Icons.assessment)
          ),
          BottomNavigationBarItem(
              label: '내정보',
              icon: Icon(Icons.account_circle)
          ),
        ]
      ),
    );
  }
}
