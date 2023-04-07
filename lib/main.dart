import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var teamA = 0;
  var teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Football Manager'),
        backgroundColor: const Color(0xFF43A047),
        actions: const [
          Icon(Icons.sports_soccer),
          Icon(Icons.search),
        ],
      ),
      floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
        onPressed: (){
          //code to execute on button press
        },backgroundColor: Colors.black87,
        child: const Icon(Icons.add, color: Colors.white), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Colors.black87,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notch margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home, color: Colors.white,), onPressed: () {},),
            IconButton(icon: const Icon(Icons.sports_soccer, color: Colors.white,), onPressed: () {},),
            IconButton(icon: const Icon(Icons.bar_chart, color: Colors.white,), onPressed: () {},),
            IconButton(icon: const Icon(Icons.settings, color: Colors.white,), onPressed: () {},),
          ],
        ),
      ),




      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Football Manager'),
            ),
            ListTile(
              leading: const Icon(
                Icons.sports_soccer,
              ),
              title: const Text('Match 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.sports_soccer,
              ),
              title: const Text('Match 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/blurr.jpg'), fit: BoxFit.cover),
        ),

      child: Column(
        children: [
          Image.asset('assets/images/football_court.jpg', width: 320,height: 200,),
          const SizedBox(height: 50),
          Center(
            child: SizedBox(
              width: 230,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          teamA.toString(),
                          style: const TextStyle(fontSize: 40),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              teamA++;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.zero,
                            ),
                            height: 38,
                            width: 70,
                            child: const Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.lightGreenAccent),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              teamA--;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.zero,
                            ),
                            height: 38,
                            width: 70,
                            child: const Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.redAccent),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          teamB.toString(),
                          style: const TextStyle(fontSize: 40),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              teamB++;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.zero,
                            ),
                            height: 38,
                            width: 70,
                            child: const Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.lightGreenAccent),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              teamB--;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.zero,
                            ),
                            height: 38,
                            width: 70,
                            child: const Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.redAccent),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            width: 90,
            height: 45,
            color: teamB > teamA ? Colors.yellow : Colors.red,
            child: const Center(
              child: Text(
                'Team B',
                style: TextStyle(fontSize: 25, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    )
    );
  }
}
