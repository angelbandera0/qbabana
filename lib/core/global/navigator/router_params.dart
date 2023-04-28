abstract class RouteParams {}

class ParamsFromSignUpPage extends RouteParams {
  ParamsFromSignUpPage(this.code, this.phoneNumber);
  final String code;
  final String phoneNumber;
}

class ParamsListQuoteFromVinCheck extends RouteParams {
  ParamsListQuoteFromVinCheck(this.idQuoteReport);
  final String idQuoteReport;
}

class ParamsDetailQuoteFromVinCheck extends RouteParams {
  ParamsDetailQuoteFromVinCheck(this.idQuoteReport, this.id);
  final String idQuoteReport;
  final String id;
}

class ParamsChatFromQuoteReportReceived extends RouteParams {
  ParamsChatFromQuoteReportReceived(
      this.idChatroom, this.companyName, this.avatar);
  final String idChatroom;
  final String companyName;
  final String avatar;
}

class ParamsChatFromQuoteReportCompanyReceived extends RouteParams {
  ParamsChatFromQuoteReportCompanyReceived(
      this.idChatroom, this.dealershipName, this.avatar);
  final String idChatroom;
  final String dealershipName;
  final String avatar;
}

class ParamsFromQuoteReportAcceptMsg extends RouteParams {}

class ParamsFromVehiclesWithoutVin extends RouteParams {
  final String idQuoteReport;
  ParamsFromVehiclesWithoutVin(this.idQuoteReport);
}

class ParamsFromQuoteReportRejectMsg extends RouteParams {}

class ParamsFromLoginPhoneNumberPage extends RouteParams {
  ParamsFromLoginPhoneNumberPage(this.code, this.phoneNumber);
  final String code;
  final String phoneNumber;
}

class ParamsFromLoginPhoneNumberOfWelcomePage extends RouteParams {
  ParamsFromLoginPhoneNumberOfWelcomePage(this.code, this.phoneNumber);
  final String code;
  final String phoneNumber;
}

class ParamsFromSMSValidationFirstLoginPage extends RouteParams {
  ParamsFromSMSValidationFirstLoginPage(this.code, this.phoneNumber);
  final String code;
  final String phoneNumber;
}

class ParamsFromSMSValidationPage extends RouteParams {
  ParamsFromSMSValidationPage(this.code, this.phone);
  final String code;
  final String phone;
}

class ParamsFromLoginWelcomePage extends RouteParams {}

class ParamsFromSMSValidationPageMsg extends RouteParams {
  ParamsFromSMSValidationPageMsg({required this.title, required this.msg});
  final String title;
  final String msg;
}

class ParamsFromQouteReportReceived extends RouteParams {
  ParamsFromQouteReportReceived(this.idQuoteReportReceived);
  final String idQuoteReportReceived;
}

class ParamsFromQouteListReceived extends RouteParams {
  ParamsFromQouteListReceived(this.idQuote);
  final String idQuote;
}

class ParamsFromRecoveryAccountPage extends RouteParams {
  ParamsFromRecoveryAccountPage(this.email);
  final String email;
}

class ParamsFromListTransportationVehicle extends RouteParams {
  ParamsFromListTransportationVehicle(
      {required this.deliveryStateId, this.pickUpStateId});
  final int deliveryStateId;
  final int? pickUpStateId;
}

class ParamsFromListVINNumberCheckPage extends RouteParams {}

class ParamsFromHomeDealership extends RouteParams {}

class ParamsFromDeliveryVehicleAdd extends RouteParams {}

class ParamsFromPicKupVehicleAdd extends RouteParams {}

class ParamsFromValidatePhonePage extends RouteParams {
  ParamsFromValidatePhonePage(this.code);
  final String code;
}

class ParamsFromEmailContactUs extends RouteParams {
  ParamsFromEmailContactUs(this.email);
  final String email;
}

class ParamsFromQuoteRequestedReceivedTransportationCompany
    extends RouteParams {
  ParamsFromQuoteRequestedReceivedTransportationCompany(this.id);
  final String id;
}

class ParamsFromDetailsQuoteRequestedReceivedTransportationCompany
    extends RouteParams {
  final String idQuoteReques;
  ParamsFromDetailsQuoteRequestedReceivedTransportationCompany(
      this.idQuoteReques);
}

class ParamsFromUpdateUserProfile extends RouteParams {
  ParamsFromUpdateUserProfile(
      {this.userName, this.email, this.country, this.number});
  final String? userName;
  final String? email;
  final String? country;
  final String? number;
}

class ParamsFromEditUser extends RouteParams {
  ParamsFromEditUser(this.id);
  final int id;
}
