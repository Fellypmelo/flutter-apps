import 'package:flutter/material.dart';

void main() => runApp(const MainScreen());

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController real = TextEditingController();

  double? convert ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () { }, icon: const Icon(Icons.settings))],
          leading: IconButton(onPressed: () { },icon: const Icon(Icons.arrow_back),),
          centerTitle: true,
          title: const Text("Converso de Moedas"),
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
              Center(
                child: Image.asset("images/dinheiro-icone.png",scale: 12,filterQuality: FilterQuality.high )
              ),
              Container(
                margin: const EdgeInsets.only(right: 230),
                child: const Center(
                  child : Text("Dolar em Real :",style: TextStyle(fontSize: 18),)
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  controller: real,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Digite o valor"
                  ),
                  //decoration: ,
                ),
              ),
              ElevatedButton(onPressed: () {

                setState(() {
                  convert = (double.parse(real.text) * 5);
                });
              }, child: const Text("Converter")
              ),
              Row(
                children: [
                  Expanded(child:Card(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(" Dolar :  ${convert ?? ""}",style: const TextStyle(color: Colors.black,fontSize: 30))
                      ],
                    ),
                  )
                  ),
                ],
              ),
              Center(
                  child: Image.asset("images/transferir.jpg",scale: 7 ,)
              ),Center(
                  child: Image.asset("images/baixados.jpg")
              )
            ],
          ),
        ),
      ),
    );
  }
}

