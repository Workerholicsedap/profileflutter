/* 
NAME : MUHAMMAD AFIQ BIN ALUSRIZAN
NO MATRIC : S57978
DESCRIPTION : PROFILE CARD BY USING MOBILE APP . I USED CONTAINER , COLUMN ,ROW ,CARD AND FLEXIBLE TO MAKE THE INTERFACE MORE VARIABLE .
              I CHANGE THE PICTURE BACKGROUND AND PUT LARGE IMAGE AS A PROFILE PICTURE . 
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY PROFILE',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MY PROFILE'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY PROFILE'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/afiq02.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Image.asset(
            'assets/images/afiq01.jpg',
            height: 300,
            width: 300,
          ),
          Text(
            'A person who is eager to learn new things ',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            'and takes responsibility for his actions.',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            'Having the ability to analyse server flaws,',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            'draw conclusions based on observations,',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Text(
            'and work well in IT projects.',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 210, 60, 60)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Your Potential is Endless",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text('Name             :'),
                        Text('Date of Birth :'),
                        Text('Address        :'),
                        Text('Email             :'),
                        Text('Phone #        :'),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Muhammad Afiq Bin Alusrizan',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.visible,
                        ),
                        Text(
                          '25 July 2000',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                        ),
                        Text(
                          'No 1659,KHTP,Kulim,09000,Kedah Darul Aman',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.visible,
                        ),
                        Text(
                          'aifiq016016@gmail.com',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                        ),
                        Text(
                          '+16-8563340',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
