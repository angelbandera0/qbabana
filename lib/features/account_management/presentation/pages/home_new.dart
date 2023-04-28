import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("QBABANA"),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.indigo,
                    Colors.blue

                  ])
                ),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Acerca De'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Contactos'),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Gestionar Productos'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Gestionar Ubicacion'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración'),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child:

        Padding(

          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cuadro(),
                  cuadro()
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cuadro(),
                  cuadro()

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  cuadro(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20 )),
        color: Colors.red,
      ),
    );
  }
}
