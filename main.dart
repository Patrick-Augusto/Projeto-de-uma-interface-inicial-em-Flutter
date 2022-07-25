import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(
    home(),
  );
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Paginas",
      //home: pagina1(),
      //home: pagina2(),
      //home: login(),
      routes: {
        "/": (context) => login(),
        "pagina1": (context) => pagina1(),
        "pagina2": (context) => pagina2(),
      },
    );
  }
}

class pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 196, 193),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 158, 50),
        title: Row(
          children: [
            Text("Home"),
            Icon(
              Icons.energy_savings_leaf_outlined,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPagina1(),
      ),
    );
  }
}

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterLogo(),
        Text("Desenvolvido por:"),
        Text("Patrick Augusto"),
        Icon(
          Icons.copyright,
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "pagina1");
          },
          child: Text("Home"),
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "pagina2");
          },
          child: Text("Sobre o APP e Composteira "),
        ),
        TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/");
          },
          child: Text("Login"),
        ),
      ],
    );
  }
}

class conteudoPagina1 extends StatefulWidget {
  @override
  State<conteudoPagina1> createState() => _conteudoPagina1State();
}

class _conteudoPagina1State extends State<conteudoPagina1> {
  Color cor1 = Color.fromARGB(255, 145, 94, 1);
  Color cor2 = Color.fromARGB(255, 104, 172, 77);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(0)),
          Container(
            height: 50,
            width: 1000,
            color: cor1,
            child: Center(
              child: Text(
                "DEMETER",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 50,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
              height: 770,
              width: 850,
              color: cor2,
              child: Column(
                children: [
                  Text(
                    "  •Demeter é uma composteira inteligente que transforma o desperdício de alimentos e afins em adubo que pode ser doado para pequenos agricultores fazendo as empresas ajudarem a sociedade e permitindo ter maior visibilidade. Demeter conta com um aplicativo que permite supervisionar a composteira e pedir a retirada do adubo de maneira fácil além de conectar em uma rede com outros clientes e pequenos agricultores.",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text("                           "),
                  Text(
                    "  •O aplicativo permitira os clientes entrarem em contato com a empresa, checar os status das composteiras e seu conteúdo, solicitar a retirada da compostagem e tomar ações sobre. Tendo a possibilidade de transações diretas e fáceis.",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 4, 158, 50),
        title: Text("Oque Fazemos!!!"),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: Container(
        child: conteudoPagina2(),
      ),
    );
  }
}

class conteudoPagina2 extends StatefulWidget {
  @override
  State<conteudoPagina2> createState() => _conteudoPagina2State();
}

class _conteudoPagina2State extends State<conteudoPagina2> {
  double tamanho = 0;
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(0)),
          Container(
            height: 50,
            width: 1000,
            color: Colors.black54,
            child: Center(
              child: Text(
                "Mais Sobre o Projeto.",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Container(
              height: 770,
              width: 850,
              color: Color.fromARGB(255, 65, 131, 65),
              child: Column(
                children: [
                  Text(
                    "Aplicativo",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                    ),
                  ),
                  Text("                           "),
                  Text(
                    "  •O aplicativo será responsável por conectar o cliente a empresa e a empresa e o cliente a composteira, permitindo ele ter uma rede de agricultores que podem querer a sua compostagem e chamar a empresa para retirada da compostagem",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("                           "),
                  Text(
                    "Vantagens",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                    ),
                  ),
                  Text("                           "),
                  Text(
                    "  •Fácil uso, Conectividade com a empresa, Chamada para retirada da compostagem, Supervisão da composteira, Transações feitas diretamente pelo aplicativo, Seguro, Conexão fácil com agricultores locais.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "COMPOSTEIRA",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                    ),
                  ),
                  Text("                           "),
                  Text(
                    "  •A composteira contara com vários sensores inteligentes e uma estrutura organizada para tornar prático para os clientes usarem a composteira, sem terem que se preocupar com todos os problemas da compostagem clássica, podendo ver informações da composteira em tempo real e tomarem ações sobre a mesma mesmo a longa distância .",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("                           "),
                  Text(
                    "Vantagens",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10,
                    ),
                  ),
                  Text("                           "),
                  Text(
                    "  •Prático e fácil, Internet das coisas (I.O.T), Fácil supervisão, Fácil coleta da compostagem, Sem contaminação ou fedor, Transformar desperdício em adubo, Informações em tempo real pelo aplicativo.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class login extends StatelessWidget {
  String email = "";
  String senha = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "http://3.bp.blogspot.com/-_vFBTnyTDnE/WC9lT1KKS8I/AAAAAAABaMU/hq5TBbiVvsobXEtwJgvrUHBCG1VQDqGgQCK4B/s1600/Florescendo.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (Text) {
                  email = Text;
                  print("$email");
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "email",
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                onChanged: (Text) {
                  senha = Text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "senha",
                  border: OutlineInputBorder(),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextButton(
                onPressed: () {
                  if (email == "Demeter@gmail.com" && senha == "123") {
                    print("Entrada autorizada");
                    Navigator.popAndPushNamed(context, "pagina1");
                  } else {
                    print("Usuário ou senha incorreto");
                  }
                },
                child: Text("Login"),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor:
                      Color.fromARGB(255, 2, 99, 31), //cor do fundo

                  onSurface: Colors.grey,
                  padding: const EdgeInsets.all(25), //margem no botão ou
                  //fixedSize: const Size(100, 100), //tamanho fixo da margem
                  shape: RoundedRectangleBorder(
                    //side: BorderSide(color: Colors.green, width: 5), // borda do botão
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
