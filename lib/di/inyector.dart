import 'dart:async';

import 'package:flutter/widgets.dart' as Material;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:qbabana/features/account_management/data/model/product.dart';
import 'package:qbabana/features/account_management/domain/usercases/get_category_usercase.dart';
import 'package:qbabana/features/account_management/presentation/bloc/category/category_bloc.dart';

import '../../../../core/global/endpoints.dart';
import '../../../../core/platform/network_handler.dart';
import '../../../../core/platform/shared_prefs.dart';
import '../../../../core/utils/logger.dart';
import '../core/platform/isardb.dart';
import '../features/account_management/data/respository/category_repository_impl.dart';
import '../features/account_management/data/respository/product_repository_impl.dart';
import '../features/account_management/domain/repository/category_repository.dart';
import '../features/account_management/domain/repository/product_repository.dart';
import '../features/account_management/domain/usercases/add_category_usercase.dart';
import '../features/account_management/domain/usercases/add_product_usercase.dart';
import '../features/account_management/domain/usercases/get_product_usercase.dart';
import '../features/account_management/presentation/bloc/product/product_bloc.dart';

///Part dependency injector engine and Part service locator.
///The main purpose of [Injector] is to provide bloCs instances and initialize the app components depending the current scope.
///To reuse a bloc instance in the widget's tree feel free to use the [BlocProvider] mechanism.
class Injector {
  ///Singleton instance
  static Injector? instance;

  KiwiContainer container = KiwiContainer();

  ///API base url
  static late String apiBaseUrl;

  ///Api url validator
  static late String apiGateway;

  ///IP Server
  static late String ipServer;

  static late Material.GlobalKey<Material.NavigatorState> navigatorKey;

  ///Init the injector with prod configurations
  // static initProd() {
  //   apiBaseUrl = Endpoint.apiBaseUrlProd;

  // apiGateway = Endpoint.API_GATEWAY_PROD;

  //   ipServer = Endpoint.IP_SERVER_PROD;

  //   if (instance == null) instance = Injector._init();
  // }

  ///Init the injector with demo configurations
  static initDev() {
    apiBaseUrl = Endpoint.apiBaseUrl;

    apiGateway = Endpoint.apiGateway;
    ipServer = Endpoint.IP_SERVER;

    if (instance == null) instance = Injector._init();
  }

  ///Init the injector with demo configurations
  static initDemo() {
    if (instance == null) instance = Injector._demo();
  }

  ///Init
  Injector._init() {
    navigatorKey = Material.GlobalKey(debugLabel: "Main Navigator");
    _registerLocalAuth();
    _registerCommonImpl();
    _registerModelConverters();
    _registerDaoLayer();
    _registerApiLayer();
    _registerDBLayer();
    _registerBloCs();
    _registerUserCaseLayer();
    //repositories
    _registerRepositoryLayer();
  }

  ///Init Demo
  Injector._demo() {
    _registerLocalAuth();
    _registerCommonImpl();
    _registerModelConverters();
    _registerDaoLayer();
    _registerApiLayer();
    _registerBloCs();
    _registerUserCaseLayer();
    //demo repositories
    //_registerDemoRepositoryLayer();
  }

  _registerDemoRepositoryLayer() {
    /*container.registerSingleton<AccountManagementRepository>(
        (c) => AccountManagementRepositoryImpl(
              c.resolve(),
              c.resolve(),
              c.resolve(),
              ));
*/
  }

  _registerLocalAuth() {}

  _registerApiLayer() {}

  _registerUserCaseLayer() {
    container.registerFactory(
        (container) => GetCategoryUserCase(container.resolve()));
    container
        .registerFactory((container) => AddCategoryUserCase(container.resolve()));
    container
        .registerFactory((container) => AddProductUserCase(container.resolve()));
    container.registerFactory(
            (container) => GetProductUserCase(container.resolve()));
    /*container
        .registerFactory((container) => GetActiveUserCase(container.resolve()));
    container
        .registerFactory((container) => GetLocalsUserCase(container.resolve()));
    container
        .registerFactory((container) => GetLocalsByNameUserCase(container.resolve()));
    container
        .registerFactory((container) => GetLocalByNameUserCase(container.resolve()));
    container
        .registerFactory((container) => AddReportUserCase(container.resolve()));
    container
        .registerFactory((container) => ClearDbUserCase(container.resolve()));
*/
  }

  _registerDBLayer() {
    // container.registerSingleton<ICategoryDb, CategoryDbImplementation>(
    //     (c) => CategoryDbImplementation(container.resolve()));
    //container.registerSingleton((container) => IsarDB());
  }

  _registerDaoLayer() {
//    container.registerSingleton<IUserDAO, UserDao>(
//        (c) => UserDao(container.resolve(), container.resolve()));
//    container.registerSingleton<IContactDao, ContactDao>((c) => ContactDao());
    //container.registerSingleton((container) => IsarDB());
  }

  _registerRepositoryLayer() {
    container.registerSingleton<CategoryRepository>(
        (c) => CategoryRepositoryImpl(c.resolve(), c.resolve()));
    container.registerSingleton<ProductRepository>(
            (c) => ProductRepositoryImpl(c.resolve(), c.resolve()));
    /*container.registerSingleton<ScanManagementRepository>((c) =>
        ScanManagementRepositoryImpl(
            c.resolve(), c.resolve()));
*/
  }

  ///Register the blocs here
  _registerBloCs() {
    container.registerFactory((c) => CategoryBloc(c.resolve(),
        c.resolve(),
        c.resolve()
    ));
    container.registerFactory((c) => ProductBloc(c.resolve(),
        c.resolve(),
        c.resolve()
    ));
    /*container.registerFactory((c) => HomeBloc());
    container.registerFactory((c) => ViewListBloc(c.resolve()));
    container.registerFactory((c) => GenerateQrBloc(c.resolve(),c.resolve()));
    container.registerFactory((c) => ScanBloc(c.resolve(),c.resolve(),c.resolve(),c.resolve(),c.resolve(),c.resolve()));
    container.registerFactory((c) => DbBloc(c.resolve(),c.resolve()));*/
  }

  _registerModelConverters() {
//    container.registerSingleton<IUserConverter, UserConverter>(
//      (c) => UserConverter(),
//    );
  }

  ///Register common components
  _registerCommonImpl() {
    container.registerSingleton<Logger>((c) => LoggerImpl());
    container.registerSingleton((c) => SharedPreferencesManager());
    container.registerSingleton(
      (c) => NetworkHandler(container.resolve(), container.resolve()),
    );
    container.registerSingleton((container) => StreamController.broadcast());
    container.registerSingleton<IsarDB>((c) => IsarDBImpl());
  }

  ///returns the current instance of the logger
  Logger getLogger() => container.resolve();

  ///returns a new bloc instance
  T getNewBloCLibrary<T extends Bloc>() => container.resolve();

  NetworkHandler get networkHandler => container.resolve();

  SharedPreferencesManager get sharedPreferences => container.resolve();

  StreamController get streamController => container.resolve();

  IsarDB get isarDB => container.resolve();

  T getDependency<T>() => container.resolve();
}
