import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Indice da bottomBar
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    //Lista de Widgets
    List<Widget> telas = [
      Text("Home"),
      Text("Lastest"),
      Text("Subscribe"),
      Text("Library"),
    ];
    return Scaffold(
      appBar: AppBar(
        //Define cor padrao para os icones
        iconTheme: IconThemeData(
          color: Colors.grey,
          //0.2 / 1 / 0*
          //opacity: 1,
        ),
        title: Image.asset(
          "images/youtube.png",
          width: 95,
          height: 30,
        ),
        backgroundColor: Colors.white,
        //Acoes/Podem ser widgets
        actions: [
          //Icones com funcao de botao
          IconButton(
            onPressed: () {
              print("VideoCam");
            },
            icon: Icon(
              Icons.videocam,
            ),
          ),
          IconButton(
            onPressed: () {
              print("search");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("account");
            },
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      //Configurar para tela mudar com 
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        //Mudanca
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        //Precisamos definir uma lista de widgets
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        //Deixar um cor fixa ate 3, mas ate 4 muda para shifting
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Colors.orange,
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.red,
            label: "Lastest",
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.blue,
            label: "Subscribe",
            icon: Icon(Icons.subscriptions),
          ),
          BottomNavigationBarItem(
            //backgroundColor: Colors.green,
            label: "Library",
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
