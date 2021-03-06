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
            backgroundColor: Colors.black,
            actions: [IconButton(onPressed: () { }, icon: const Icon(Icons.settings))],
            leading: IconButton(onPressed: () { },icon: const Icon(Icons.arrow_back),),
            centerTitle: true,
            title: const Text("Game")
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon:
                Icon(Icons.home,color: Colors.white,),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.white,),
                label: "Profile"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart,color: Colors.white,),
                label: "Buy"
            )
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
        body:  
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(
               children: [
                 Center(
                   child: Image.asset("images/image2.jpg"),
                 ),
                 Positioned(
                   bottom: 10,
                   left: 1,
                   child: Column(
                     children: const [
                       Text ("God of war",style: TextStyle(
                         color: Colors.white,
                         fontSize: 28,
                         fontWeight: FontWeight.bold,
                         fontStyle: FontStyle.italic,
                       ),
                       ),
                     ],
                   ),
                 ),
<<<<<<< HEAD
               ),
             ],
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.verified,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text("Instalado",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("images/16.jpg",scale: 32,),
                      const Text("\nAction/Adventure\n",style: TextStyle(color: Colors.white,fontSize: 13),),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                          Icon(Icons.star,color: Colors.yellow,),
                        ],
                      ),
                      const Text("Avalia????o 4.9",style: TextStyle(color: Colors.white,fontSize: 15),)
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 15, 5, 30),
                    child: Container(
                      color: Colors.blue,
=======
                 Positioned(
                   bottom:16,
                   left: 140,
                   child: Column(
                     children: const [
                       Text (": Jogo eletr??nico de 2018",style: TextStyle(
                         color: Colors.white,
                         fontSize: 18,
                         fontWeight: FontWeight.bold,
                         fontStyle: FontStyle.italic,
                       ),
                       ),
                     ],
                   ),
                 ),
               ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.verified,
                          color: Colors.white,
                          size: 24,
                        ),
                        Text("Instalado",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("images/16.jpg",scale: 32,),
                        const Text("\nAction/Adventure\n",style: TextStyle(color: Colors.white,fontSize: 13),),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                          ],
                        ),
                        const Text("Avalia????o 4.9",style: TextStyle(color: Colors.white,fontSize: 15),)
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 30),
>>>>>>> 911a145b0721639e9cad337db1cd6c69f158da7c
                      child: Expanded(
                          child:
                      ElevatedButton(
                          onPressed: () { } ,
                          child: const Text(
                            "Start Game",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                          ),
                          )
                      )
                      ),
                    ),
                  ),
<<<<<<< HEAD
                ),
                Column(
                  children: [
                    TextButton(onPressed: () { }, child: const Icon(Icons.share,color: Colors.white)),
                    const Text("Share\n",style: TextStyle(color: Colors.white),)
                  ],
                )
              ],
            ),
            Center(
              child: Image.asset("images/req3.jpg",filterQuality: FilterQuality.high,),
            ),
            Row(
              children:  [
                Text(longString,style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10.8,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold
                ),
                )
              ],
            )
          ],
=======
                  SizedBox(
                    height: 110,
                    child: Column(
                      children: [
                        TextButton(onPressed: () { }, child: const Icon(Icons.share,color: Colors.white)),
                        const Text("Share\n",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Image.asset("images/req.jpg",),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(4, 10, 4, 0),
                child: Row(
                  children:  [
                    Text(longString,style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold
                    ),
                    )
                  ],
                ),
              )
            ],
          ),
>>>>>>> 911a145b0721639e9cad337db1cd6c69f158da7c
        ),
      ),
    );
  }
  final longString = '''
  God of War ?? um jogo eletr??nico de a????o-aventura 
  desenvolvido pela Santa Monica Studio
  e publicado pela Sony Interactive Entertainment. Foi lan??ado em 20 de abril de 
  2018 para PlayStation  4 e em 14 de janeiro de 2022 para Microsoft Windows ''';
}
