import 'package:flutter/material.dart';

void main() => runApp(const ScreenApp());
class ScreenApp extends StatelessWidget {
  const ScreenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () { }, icon: const Icon(Icons.settings))],
          leading: IconButton(onPressed: () { },icon: const Icon(Icons.arrow_back),),
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
              "Viagens"
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon:
              Icon(
                  Icons.person,
                  color: Colors.blue,
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon:
              Icon(
                  Icons.home,
                  color: Colors.blue,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon:
              Icon(
                  Icons.favorite,
                  color: Colors.blue,
              ),
              label: "Favorite",
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
        body: Column(
          children: [
            //Criando uma stack para colocar widges em cima do outro
            Stack(
              children: [
                Center(
                    child: Image.asset("images/coliseum2.jpg")
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Roma',style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 34,
                      )
                  ),
                      Text('Coliseum',style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontSize: 24,
                      )
                      ),
                    ],
                  ),
                )
              ],
            ),

            Container(
              color: Colors.black,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(
                          Icons.location_on_outlined,
                          color: Colors.blue,
                          size: 24,
                      ),
                      Text("Quero ir",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.verified_outlined,
                        color: Colors.blue,
                        size: 24
                      ),
                      Text("Já fui",style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.share_outlined,
                        color: Colors.blue,
                          size: 24,
                      ),
                      Text("Compartilhar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.star,color: Colors.yellow),
                          Icon(Icons.star,color: Colors.yellow),
                          Icon(Icons.star,color: Colors.yellow),
                        ],
                      ),
                      const Text("Avaliar",style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      )
                      )
                    ],
                  ),
                ],
              ),
            ),

            Column(
              children:
              [
                Text(longString,style: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,
                  fontSize: 14,
                  fontStyle: FontStyle.normal

                )
                )
              ],
            ),
            Center(
              child: Row(
                children: [
                  Expanded(
                    child:Container(
                    color: Colors.blue,
                    child: Center(
                        child : TextButton(
                          style: const ButtonStyle(
                          ),
                          onPressed: () { },
                          child: const
                          Text(
                              "          Veja as melhores ofertas !",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                              ),
                          ),
                        ),
                    ),
                  ),
                  ),
                 Container(
                   color: Colors.blue,
                   height: 48,
                   width: 32,
                   child: const Icon(
                       Icons.add_shopping_cart,
                       color: Colors.white,
                   )
                   ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  final longString  = '''Coliseu (em italiano: Colosseo),
também conhecido como Anfiteatro Flaviano (em latim: Amphitheatrum Flavium;
em italiano: Anfiteatro Flavio), é um anfiteatro oval localizado no centro da cidade de Roma, 
capital da Itália. Construído com tijolos revestidos de argamassa e areia,
e originalmente cobertos com travertino[1] é o maior anfiteatro já construído e está situado a leste do Fórum Romano.
A construção começou sob o governo do imperador Vespasiano[2] em 72 d.C. e foi concluída em 80, 
sob o regime do seu sucessor e herdeiro, Tito.[3] Outras modificações foram feitas durante o reinado de Domiciano (81-96).
[4] Estes três imperadores são conhecidos como a dinastia flaviana e o anfiteatro foi nomeado em latim desta maneira por sua associação com o nome da família (Flavius). 
                        ''';
}
