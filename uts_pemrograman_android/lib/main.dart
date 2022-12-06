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
      title: 'UTS Pemrograman Android',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 500,
          height: 470,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 12, 125, 218),
            borderRadius: BorderRadius.circular(70),
            border: Border.all(
              color: const Color.fromARGB(255, 17, 73, 119),
              width: 3,
            ),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 120),
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 25, left: 25, right: 25),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 74, 167, 243),
                    ),
                    // make it center
                    child: const Text(
                      'LOGIN APLIKASI',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, left: 35),
                            child: Row(
                              children: const [
                                Text(
                                  'USER',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                // input text
                                SizedBox(
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, left: 35),
                            child: Row(
                              children: const [
                                Text(
                                  'PASSWORD',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                // input text
                                SizedBox(
                                  width: 250,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                          width: 3,
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 30),
                    child: ElevatedButton(
                      // go to SecondPage
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(230, 55),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text('LOGIN'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// second page
class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: const Color.fromARGB(255, 12, 125, 218),
        // disable back button
        automaticallyImplyLeading: false,
        // create box
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 70,
                      child: Container(
                        color: const Color.fromARGB(255, 54, 158, 243),
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                          right: 52,
                          left: 52,
                        ),
                        child: const Text(
                          'DASHBOARD ADMIN :',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 5, left: 85, right: 85, bottom: 20),
                  child: Row(
                    children: const [
                      Text(
                        'Selamat Datang Dalam Aplikasi UTS',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            top: 250,
            bottom: 250,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "NIM : 20200121021",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Nama : Mochammad Haikal Alfandi Subagyo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "UJIAN UTS PEMROGRAMAN ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "FLUTTER",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'HOME',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
