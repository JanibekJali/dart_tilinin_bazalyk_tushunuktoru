import 'dart:developer';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Adam janibek = Adam(name: 'Janibek', age: 23);
Adam kubat = Adam();
String studentNamer = 'Kubat';

class _MyHomePageState extends State<MyHomePage> {
  String studentName = 'Kubat';
  int studentGrade = 5; // bizdin systemada
  double studentGrades = 100; // europa systemada
  double studentGradess = 85.60; // europa systemada

  int _counter = 0;
  double _ondukSan = 12.5;
  num _enChonSan = 1.5;

  List<String> okuuchular = [
    'Jon',
    'Jack',
    'Joni',
    studentNamer,
  ];
  //Dynamic bolboi tak tak bolush kerek-Ui bulo- tirkeme tes ishteit
  List baalars = [3, 4, 5];
  List<int> baalar = [3, 4, 5];

  // bool like = false;

  // List<bool> likes = <bool>[];

  void _incrementCounter() {
    var koshuldu = _counter + _ondukSan;
    // double koshuldu = _counter + _ondukSan;

    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    List<String> okuuchular1 = [
      'Jon',
      'Jack',
      'Joni',
      studentName,
    ];
    okuuchular1.removeAt(1);
    studentName = 'Manas';
    okuuchular1.add('Mansur');
    List<String> okuuchular2 = [
      'Jon', // 0
      'Jack', //1
      'Joni', //2
      studentName, //3
      'Seytek',
      'Semetey',
    ];
    List<int> baalar = [
      3,
      4,
      5,
      studentGrade,
    ];
    log('okuuchular1 ===> $okuuchular1');
    log('okuuchular ===> ${okuuchular1.length}');
    // log('kiinkiOkuuchular ===> ${okuuchular2[3]}'); - tizmede jok nomerdi berse kata beret
    log('kiinkiOkuuchular ===> ${okuuchular2[3]}');

    log('Baalar ===> $baalar');
    log('Suusunduk alip kel =====> ${suusundukAlipKel()}');

    log('Janibek ===>${janibek.name}');
    log('Adamdardyn ichinde janibektin aty ====> ${adamdar[0].age}');
  }

  /// If else
  List<int> magazindegiSuular = [
    // 1,
    // 1,
  ]; //magazine bosh, suu jok
  String suusundukAlipKel() {
    if (magazindegiSuular.length == 0) {
      //Alip kel-Kaitar-return
      return 'Cola';
    } else {
      return ' Suu';
    }
  }

  bool like = false;

  List<bool> likes = <bool>[];

  // Adam janibek = Adam(name: 'Janibek', age: 23);
  // Adam kubat = Adam();
  List<Adam> adamdar = <Adam>[
    janibek,
    // Adam(name: 'Alibek', age: 35 ),
    // Adam(name: 'Alibek', age: 35 ),
    // Adam(name: 'Alibek', age: 35 ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                like = true;

                likes.add(like);
                setState(() {});
              },
              // child: const FaIcon(FontAwesomeIcons.heart, size: 100.0),
              child: likeKur(),
            ),
            Text(
              '${likes.length}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.favorite),
      ),
    );
  }

  Widget likeKur() {
    if (like == false) {
      return const FaIcon(
        FontAwesomeIcons.heart,
        size: 100.0,
      );
    } else {
      return const FaIcon(
        FontAwesomeIcons.solidHeart,
        size: 100.0,
        color: Colors.red,
      );
    }
  }

  // void loveClaculator() {
  //   int loveScore = Random().nextInt(100) + 1;
  //   print(loveScore);
  //   if (loveScore > 70) {
  //     print('Katuu suiuu');
  //   } else if (loveScore > 50 && loveScore < 70) {
  //     print('ortocho');
  //   } else if (loveScore < 50) {
  //     print('Kumonduu');
  //   }

  // }
}

//Object/class-  Danniydin turloru int bool ... - a egerde sen ozun tur koshkun kelyp atsa
// Adam degen turdu bashka jaktarda koldongubuz kelip atsa - biz Constructor tuzup alishibiz kerek
class Adam {
  String name; //adamdyn aty
  int age; // jashy
  Adam({this.name, this.age});
}
