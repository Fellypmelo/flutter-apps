import 'package:flutter/material.dart';

void main() => runApp(const MainScreen());

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Game")
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
                icon:
                Icon(Icons.home,color: Colors.white,),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.white,),
                label: "Profile"
            )
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
        body: Column(
          children: [
            Stack(
             children: [
               Center(
                 child: Image.asset("images/image1.jpg"),
               ),
               Positioned(
                 bottom: 10,
                 left: 100,
                 child: Column(
                   children: const [
                     Text ("God of war",style: TextStyle(
                       color: Colors.white,
                       fontSize: 35,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic
                     ),
                     )
                   ],
                 ),
               )
             ],
            ),
            Row(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 30, 30, 30),
                    child: Container(
                      color: Colors.blue,
                      child: Expanded(
                          child:
                      TextButton(
                          onPressed: () { } ,
                          child: const Text(
                            "Start Game",style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                          ),
                          )
                      )
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),

      ),
    );
  }
}
