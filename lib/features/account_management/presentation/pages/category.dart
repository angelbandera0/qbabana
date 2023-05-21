import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qbabana/features/account_management/presentation/bloc/category/category_bloc.dart';
import 'package:qbabana/features/account_management/presentation/pages/products.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/base/widget_base_state.dart';
import '../../../../core/global/app_globals.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends StateWithBloC<CategoryPage, CategoryBloc> {
  TextEditingController name = TextEditingController(text: "");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc?.add(GetCategorysEvent());
  }

  @override
  Widget buildWidget(BuildContext context) {
    return BlocConsumer<CategoryBloc, CategoryState>(
        listener: (context, state) {
          if (state is GetCategorySuccess) {
            setState(() {

            });
          }
          if (state is AddCategorySuccess) {
            bloc?.add(GetCategorysEvent());
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is GetCategorySend,
              child: Scaffold(

                appBar: AppBar(
                  title: const Text("QBABANA"),
                  centerTitle: true,
                ),
                drawer: Drawer(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        const DrawerHeader(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.indigo, Colors.blue])),
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
                body: DoubleBackToCloseApp(
                  snackBar: SnackBar(
                    content: Text(AppGlobals.pressToExit),
                  ),
                  child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: bloc?.categories.length ?? 0,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Material(
                                  borderRadius: BorderRadius.circular(20),
                                  elevation: 3,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const ProductsPage()));
                                    },
                                    child: Container(
                                        height: 200,
                                        width: double.maxFinite,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        child: Stack(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  height: 125,
                                                  width: double.maxFinite,
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(
                                                              20),
                                                          topRight: Radius
                                                              .circular(
                                                              20))),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10.0,
                                                      vertical: 20),
                                                  child: Text(
                                                    bloc?.categories[index]?.name??"",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Añadir Categoría'),
                            content: Container(
                              height: 100,
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: name,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      labelText: 'Nombre',
                                      hintText: 'Ingresa tu nombre',
                                    ),
                                    validator: (value) {
                                      if (value?.isEmpty ?? false) {
                                        return 'Por favor ingresa tu nombre';
                                      }
                                      return null;
                                    },
                                  )
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Cancelar'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              ElevatedButton(
                                child: Text('Crear'),
                                onPressed: () {
                                  // Hacer algo
                                  bloc?.add(AddCategorysEvent(name.text));
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(Icons.add)),
              )
          );
        }
    );
  }
}
