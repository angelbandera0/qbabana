import 'package:flutter/material.dart';

import '../../../../core/base/widget_base_state.dart';
import '../bloc/product/product_bloc.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends StateWithBloC<ProductsPage, ProductBloc> {
  @override
  Widget buildWidget(BuildContext context) {
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
                title: const Text('Category'),

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
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[

            SizedBox(height: 20),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:18,
                itemBuilder: (context,index){
                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child:
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 3,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const ProductsPage()));
                        },
                        child: ListTile(
                          title: Text("Product ${index +1}"),
                          leading: Container(height: 50,width: 50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),),                          
                          trailing: Text("${index+1} CUP"),
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Título del diálogo'),
              content: Text('Contenido del diálogo'),
              actions: <Widget>[
                TextButton(
                  child: Text('Cancelar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ElevatedButton(
                  child: Text('Aceptar'),
                  onPressed: () {
                    // Hacer algo
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },child: Icon(Icons.add)),
    );
  }
}
