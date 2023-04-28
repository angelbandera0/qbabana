import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/platform/shared_prefs.dart';
import 'di/inyector.dart';
import 'features/account_management/presentation/pages/home_new.dart';

int? initScreen;
void main() async {
  Injector.initDev();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  initScreen = prefs.getInt('initScreen');
  //await IsarDBImpl.initIsar();
  Injector.instance?.isarDB.initIsar();
  if(await SharedPreferencesManager().getPassword()==''){
    await SharedPreferencesManager().setPassword("1");
  }
  runApp(const MyApp());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [

    ],
    child:  MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState(){
    super.initState();
    //BackButtonInterceptor.add(myInterceptor);
  }
  @override
  void dispose(){
    super.dispose();
    //BackButtonInterceptor.remove(myInterceptor);
  }
  @override
  Widget build(BuildContext context) {
    //throw ("Test Crash");

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return OverlaySupport(
      child: MaterialApp(
        useInheritedMediaQuery: true,
        title: 'Flutter Demo',
        theme: ThemeData(
          // is not restarted.
          primarySwatch: Colors.indigo,
          fontFamily: 'Poppins',
        ),
        home: Home(),
      ),
    );
  }

  bool myInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
    print("BACK BUTTON!");
    return true;
  }
}
