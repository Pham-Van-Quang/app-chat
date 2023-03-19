import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<UserHorizontal> listHorizontal = [
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 1"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 2"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 3"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 4"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 5"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 6"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 7"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 8"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 9"),
    UserHorizontal(avatar: "assets/images/picture_avatar.jpg", fullname: "Baby 10"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Messenger",
         style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
            child: TextField(
              scrollPadding: const EdgeInsets.all(18),
              decoration: InputDecoration(
                prefixIconColor: Colors.deepPurple,
                enabledBorder: OutlineInputBorder( 
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Colors.deepPurple,
                    width: 1.00
                  )
                 ),
                prefixIcon: const Icon(Icons.search, size: 38),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 18),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listHorizontal.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black
                              ),
                            borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(listHorizontal[index].avatar), 
                            ),
                        ),
                        const SizedBox(height: 6),
                        Text(listHorizontal[index].fullname,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  );
                }
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(left: 18),
              child: ListView.builder(
                itemCount: listHorizontal.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black
                              ),
                            borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(listHorizontal[index].avatar), 
                            ),
                        ),
                        const SizedBox(width: 16),
                        Text(listHorizontal[index].fullname, 
                         style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  );
                }
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(Icons.chat),
                    SizedBox(height: 6),
                    Text("Chat", style: TextStyle(fontSize: 12),)
                  ],
                ),
                 Column(
                  children: const [
                    Icon(Icons.person),
                    SizedBox(height: 6),
                    Text("Account", style: TextStyle(fontSize: 12),)
                  ],
                )
              ],
            ),
          )
        ],
      ),   
    );
  }
}

class UserHorizontal {
  final String avatar;
  final String fullname;
  UserHorizontal({required this.avatar, required this.fullname});
}