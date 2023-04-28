class Endpoint {
  static String apiLogin = "";

  // url https://unifysport-api-dev.azurewebsites.net/swagger/index.html
  // user: user@test.com
  // pass: Test*2021
  //static String apiBaseUrl = "https://transporterapi-dev.azurewebsites.net";
  static String apiBaseUrl = "https://transporterapi-dev.azurewebsites.net";
  static const apiGateway = "https://transporterapi-dev.azurewebsites.net";
  //static String apiBaseUrl = "http://localhost:5000";
  //static const apiBaseUrl = "http://10.0.2.2:5000";
  // static String apiBaseUrlProd = "http://34.70.236.15/wp-json/wp/v2";
  // static const API_GATEWAY = 'http://unifysport-api-dev.azurewebsites.net';
  // static const API_GATEWAY_PROD =
  //     'https://us-central1-bienestar-2c18b.cloudfunctions.net';

  // static const API_AZURE_STORAGE =
  //     'https://sparkzstorage.blob.core.windows.net/apicore/';

  /* ACCOUNT Endpoints */
  static const register = "/api/account/register";
  static const login = "/api/account/login";
  static const logOut = "/api/account/logout";
  static const globalLogOut = "/api/account/global-logout";
  static const refreshToken = "/api/account/refresh-token";
  static const changePassword = "/api/account/change-password";
  static const updateProfile = '/api/account/update-profile';
  static const validateToken = "/api/account/validate-token";
  static const changeStatus = "/api/account/change-status";
  static const upLoadAvatar = '/api/admin/upload-avatar';
  static const upLoadAvatarCompany = '/api/admin/';
  static const forgotPassword = "/api/account/forgot-password";
  static const apiAzureStorage = "https://transporterappdev.blob.core.windows.net/apicore/";

  static const PROFILE = "/api/account/profile";
  static const ACCOUNT = "/api/account";
  static const VALIDATE_PHONE = "/api/account/confirm-account";
  static const CHECK_VERIFICATION_PHONE = "/api/account/check-verification-code";
  static const REFRESH_VALIDATE_CODES = "/api/account/request-verification-code";
  static const RECOVER_ACCOUNT = "/api/account/recover-account";
  static const RESET_PASSWORD = "/api/account/reset-password";
  static const CHANGE_PASSWORD = "/api/account/change-password";
  static const UPDATE_PROFILE = '/api/account/update-profile';
  static const UPDATE_PROFILE_TRANSPORTATION_COMPANY = '/api/TransportationCompany';
  static const REQUEST_VERIFICATION_CODE = '/api/account/request-verification-code';
  static const VALIDATE_REQUESTED_CODE = '/api/account/check-verification-code';
  static const UPDATE_PROFILE_DEALERSHIP = '/api/dealership';

  /*Quotes Endpoint */
  static const CreateQuoteDealership = "/api/Dealership/$id/QuoteRequest";
  static const TransporterCompanyAvailable = "/api/transportation-company/available-companies";
  static const qouteReportReceived = "/api/Dealership/";
  static const chatMessages = "/api/chat/messages/";
  static const qouteListReceived = "/api/Dealership/";
  static const vehicleWithVin = "/api/Dealership/";
  static const qouteReportAccept = "/api/Dealership/";
  static const quoteListDelete = "/api/Dealership/";
  static const editVehicleVin = "/api/vehicle/";
  static const qouteListFilter = "/api/Dealership/";
  static const qouteReportReceivedDetail = "/api/Dealership/";
  static const TransporterCompany = "/api/transportation-company";
  static const hubConnection = "https://transporterapi-dev.azurewebsites.net/chatHub";
  //static const hubConnection = "http://localhost:5000/chatHub";
  //static const apiAzureStorage = "https://transporterappdev.blob.core.windows.net/apicore/";
  /* AUCTION Endpoints */
  static const GET_PARKED_BY_USER = "/api/parked/user";
  static const AUCTION_CRUD = '/api/parked';

  /*Card Endpoints */
  static const GET_CARDS_BY_USER = '/api/cars';
  static const ADD_CRUD = '/api/cars';
  static const ACTIVATE_CAR = '/active-inactive?active=';
  static const GET_ACTIVE_CAR = '/api/cars/user-active-car';

  /*Unparked Endpoints */
  static const UNPARKED_CRUD = '/api/unparked';
  static const UNPARKED_BY_USER = '/api/unparked/user';
  static const COMPATIBLE_SPOTS = '/api/unparked/search-compatible-spots';

  /*User Endpoint*/
  static const String user = '/api/user';
  /*Roles Endpoint*/
  static const String Roles = '/api/admin/roles';

  /*Help Endpoints */
  static const CONTACT_US = '/api/help/contact-us';

  /* Customer Account*/
  static const customerAccountBase="/api/customer-accounts";
  static const createCustomer="$customerAccountBase/customer";
  static const updateCustomer="$customerAccountBase/update-customer";
  static const addCard="$customerAccountBase/cards";
  static const listPaymentMethods="cards";
  static const updateCard="$customerAccountBase/update-card";
  static const removeCard="$customerAccountBase/remove-card";
  static const setDefaultPaymentMethod="$customerAccountBase/set-default-payment-method";
  static const createPaymentIntent="$customerAccountBase/payment-intent";
  static const confirmPaymentIntent="$customerAccountBase/confirm-payment-intent";
  static const cancelPaymentIntent="$customerAccountBase/cancel-payment-intent";

  /* Connected Account*/
  static const connectedAccountBase="/api/connect-accounts";
  static const addCardConnectedAccount="$connectedAccountBase/cards";
  static const listPaymentMethodsConnectedAccount="cards";
  static const updateCardConnectedAccount="$connectedAccountBase/update-card";
  static const removeCardConnectedAccount="$connectedAccountBase/remove-card";
  static const setDefaultPaymentMethodConnectedAccount="$connectedAccountBase/set-default-payment-method";
   static const updateConnectedAccount='/api/connect-accounts';
  static const uploadDocumentation='/upload-documentation';

  static const String getCategories =
      "/categories?per_page=20&exclude=46,47,48";
  static const String getPostedByCategory = "/posts?per_page=50&categories=";
  static const String getAvailablePosts = "/posts?per_page=100";
  static const String getPostByPid = "/posts/";
  static const String getJobs = "https://acl.cl/wp-json/wp/v2/job-listings";
  static const String getRRHHUser = "/users?context=edit";

  ///send Email
  static const String emailGoogleEndpoint =
      "https://www.googleapis.com/gmail/v1/users/";
  static const String emailGoogleEndpointSent = "/messages/send";
  static const String emailEndpoint =
      "https://us-central1-bienestar-2c18b.cloudfunctions.net/sendEmail";

  /// JWT
  // static const IP_SERVER = 'http://34.121.209.225';
  static const IP_SERVER = 'localhost';
  static const IP_SERVER_PROD = 'http://34.70.236.15';
  static const URL_JWT_BASE = '/wp-json/jwt-auth/v1';
  static const URL_JWT_TOKEN = '/token';

  /// Custome Endpoints
  static const getItems = 'https://$key:$passwork$product';
  static const getItemDetails = 'https://$key:$passwork$productDetail';
  static const product =
      '@acl-academy.myshopify.com/admin/api/2021-04/products.json';
  static const productDetail =
      '@acl-academy.myshopify.com/admin/api/2021-04/products/';
  static const metafields = '/metafields.json';
  static const baseUrlProduct =
      'https://www.aclacademy.cl/collections/frontpage/products/';

  /// validation to know if the user is an ACL employee
  static const VALIDATE_EMAIL = '/userValidation?email=';

  /// Credentials
  static const String key = '090f855f90062d3a3897971dc05b3111';
  static const String passwork = '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';

  ///User
  static const String profile = "/api/User/Get";

  static const String unable_host_massage = 'Failed host lookup:';
  static const int code_success = 200;
  static const int code_success_created = 201;
  static const int code_success_204 = 204;
  static const int code_not_found = 400;
  static const int code_un_authorized = 401;
  static const int code_forbidden = 403;
  static const int code_bad_request = 404;
  static const int code_server_error = 500;
  static const int code_server_errorMax = 599;
  static const int code_server_error_502 = 502;

  static const String content_type = "Content-Type";
  static const String content_type_value = "multipart/form-data";
  static const String api_key = "x-api-key";
  static const String api_key_value = "AIzaSyDVJASQgswaMiCkqjv28nOudIVwmbv2ayY";
  static const String result = "result";
  static const String access_token = "authorization";
  static const String refresh_token1 = "refreshtoken";
  static const String token = "token";
  static const String id = "id";
  static const String email = "email";
  static const String phone = "phone";
  static const String identity = "identity";
  static const String avatar = "avatar";
  static const String avatar_mime_type = "avatarMimeType";
  static const String birth_day = "birthDate";
  static const String gender = "gender";
  static const String password = "password";
  static const String confirm_password = "confirmationPassword";
  static const String full_name = "fullName";

  static const String value = "value";
  static const String shortDescription = "ShortDescrip";
  static const String isTaxi = "IsTaxi";
  static const String users = "user";
  static const String usersPst = "/users";
  static const String usersVerify = "/users/verification";
  static const String usersVerifyCode = "/auth/recovery";
  static const String status = "status";
  static const String dateTime = "dateTime";
  static const String shortComment = "shortComment";
  static const String fromShortDescription = "shortDescripFrom";
  static const String toShortDescription = "shortDescripTo";
  static const String prices = "price";
  static const String evaluations = "evaluations";
  static const String rides = "rides";
  static const String driverName = "driverName";
}
