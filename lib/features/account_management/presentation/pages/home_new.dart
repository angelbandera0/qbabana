import 'package:flutter/material.dart';
import 'package:qbabana/features/account_management/presentation/pages/category.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("QBABANA"),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  <Widget>[
              const DrawerHeader(
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
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Acerca De'),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Contactos'),
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Categorías'),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const CategoryPage()));
                },
              ),
              const ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Gestionar Ubicacion'),
              ),
              const ListTile(
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
              const SizedBox(height: 20,),
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
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20 )),
        color: Colors.red,
      ),
    );
  }
}
