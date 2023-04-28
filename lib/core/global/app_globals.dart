import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AppGlobals {
  AppGlobals._();

  //Measure
  static const minWidthFieldsDouble = 200.0;
  static const maxHeigthFieldsDouble = 50.0;

  static const primaryColor = Colors.indigo;
  static const secondaryColor = Colors.white;
  static const whiteTransparent85Color = Color.fromRGBO(234, 234, 234, 0.85);
  static const blackTransparent38Color = Color.fromRGBO(0, 0, 0, 0.38);
  static const whiteTransparent01Color = Color.fromRGBO(222, 222, 222, 01);
  static const borderCheckBoxColor = Color(0xff27AE60);
  static const customKeyboarSpecialIconKeyColor = Color(0xffEFF4FF);
  static const customKeyboarSpecialKeyResendCodeColor = Color(0xffE86D6D);
  static const customKeyboarKeyColor = Color(0xff494949);
  static const codeNumberContainerColor = Colors.white;
  static const customButtonBorderColor = Color(0xff656565);
  static const intlPhoneFieldColor = Color(0xff78849E);
  static const customButtonTextColor = Colors.white;
  static const backgroundColorApp = Colors.white;
  static const hintColor = Color(0xFF888888);
  static const texColor = Color(0xFF333333);
  static const speeldialbackground = Color(0xFF950204);
  static const overlayspeeldialbackground = Colors.black87;
  static const colorBlack = Colors.black;
  static const chatBurbleLeftColor = Color(0xFFD4D4D4);
  static const chatBurbleRightColor = Color(0xFFFF4E4E);
  static const chatColorsubtitleTex = Color(0xFF888888);
  static const colorDivider = Color(0xFFB5B5B5);
  static const colorExpandelCardUsder = Color(0xFFE7E7E7);
  static const fillColor = Color(0xFFEFEFEF);
  static const opacityModalProgressHUD = 0.9;
  static const Color dropdownBackgroundColor = Colors.white;
  static var backgroundGradient=[
    Colors.indigoAccent.withOpacity(0.5),
    Color(0xff87CEEB).withOpacity(0.3),
    Colors.white
  ];

  //Paddings
  static const screenPandding =
      EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);

  //margins
  static const topCustomTextMargin = EdgeInsets.only(top: 25.0);
  //TextStyles
  static const textStyleForFromAndTo = TextStyle(
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: AppGlobals.hintColor);
  static const textStyleForNameOfQuote = TextStyle(
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Colors.black);
  static const textStyleForTextLocation = TextStyle(
      fontSize: 10,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Colors.black);
  static const textStyleFont14WeightNormal =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

  static const textStylePoppinsNormalBlack = TextStyle(
      fontFamily: 'Poppins',
      fontWeight: FontWeight.normal,
      color: Colors.black);

  static const textStylePoppins12NormalPrimaryColor = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.normal,
    color: AppGlobals.primaryColor,
    fontSize: 12,
  );

  //images
  static const String backgroundPremiumFreemiumImg =
      'assets/images/background_premium_freemium.png';
  static const String videoBtnImg = 'assets/images/video.png';
  static const String playerBtnImg = 'assets/images/player.png';
  static const String unionBtnImg = 'assets/images/union.png';
  static const String calendarBtnImg = 'assets/images/calendar.png';
  static const String jumpingBasketballPlayerImg =
      'assets/images/player_account_verification.png';
  static const String jumpingBasketballPlayerBallinHandImg =
      'assets/images/player_account_verification_phone_number.png';
  static const String uImg = 'assets/logo.png';
  static const String uImgHC = 'assets/logo_hc.png';
  static const String iconsUrlAssets = 'assets/icons/';
  static const String welcomeLoginScreen =
      'assets/images/welcome_screen_login.png';
  static const String phoneLoginPage = 'assets/images/phone_number_login.png';
  static const String verificationCodeImg =
      'assets/images/logoVerificationCode.png';
  static const String photoImg = 'assets/images/camera.png';
  static const String sucessCodeImg = 'assets/images/logoSucessCode.png';
  static const String changerPasswordImg = 'assets/images/changePassword.png';
  static const String wrongCodeImg = 'assets/images/WrongCode.png';
  static const String recoveryPasswordImg =
      'assets/images/recoveryPassword.png';
  static const String unifySportsImg = 'assets/images/unify_sports_login.png';
  static const String astronautImg = 'assets/images/astronaut.png';
  static const String backgroundImg = 'assets/images/background.png';
  static const String dealershipHomebackgroundImg =
      'assets/images/dealership_icon_home.png';
  static const String companyHomebackgroundImg = 'assets/images/truck.png';
  static const String companyProfilebackgroundImg = 'assets/images/company.png';
  static const String logoAppImg = 'assets/ic_launcher.png';
  static const String omboarding1Img = 'assets/images/omboardingImagen1.png';
  static const String omboarding2Img = 'assets/images/omboardingImagen2.png';
  static const String omboarding3Img = 'assets/images/omboardingImagen3.png';
  static const creditCardAssetPath = 'assets/images/payment/cards.png';
  static const cellIllustrationAssetPath =
      'assets/images/payment/cell_illustration.png';

  //styles
  static const TextStyle customKeyboardSpecialKeyStyle =
      TextStyle(fontSize: 17.0, color: Colors.white);
  static const TextStyle customKeyboardNumberKeyTextStyle =
      TextStyle(fontSize: 20.0, color: Colors.white);
  static const TextStyle customKeyboardLetterKeyTextStyle =
      TextStyle(fontSize: 10.0, color: Colors.white);
  static const TextStyle textContainerDirectionStyle =
      TextStyle(color: Colors.white, fontFamily: 'Gibson', fontSize: 16.0);
  static const TextStyle textContainerTextFormFieldStyle =
      TextStyle(fontSize: 18.0, color: Colors.black, fontFamily: 'Federo');
  static const TextStyle textIntlPhoneFieldStyle = TextStyle(
      fontFamily: 'Gibson', fontSize: 15.0, fontWeight: FontWeight.normal);
  static const TextStyle sliderTextValueDoubleStyle =
      TextStyle(color: Colors.white, fontSize: 25, fontFamily: 'Raleway');
  static const TextStyle sliderTextValueTextStyle =
      TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'Roboto');
  static const TextStyle textStyleLabel = TextStyle(color: Colors.grey);
  static const TextStyle pageUnderText = TextStyle(
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
    color: Color(0xFF333333),
  );
  static const TextStyle qouteListInfoTitleText = TextStyle(
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Color(0xFF888888));
  static const TextStyle qouteListInfoText = TextStyle(
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Colors.black);
  static const TextStyle qouteListInfoTextRed = TextStyle(
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: AppGlobals.primaryColor);
  static const TextStyle selectStyle = TextStyle(
      fontFamily: 'Poppins', fontWeight: FontWeight.normal, fontSize: 14);
  static const TextStyle styleTextRegularFont14 = TextStyle(
      fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.w400);
  static const TextStyle styleTextRegularFont11 = TextStyle(
      fontSize: 11, fontFamily: 'Poppins', fontWeight: FontWeight.w400);
  static const TextStyle styleTextNormalFont13 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 13, fontFamily: 'Poppins');
  static const TextStyle styleText400Font13 = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 13, fontFamily: 'Poppins');
  static const TextStyle styleText6000Font15 = TextStyle(
      fontWeight: FontWeight.w600,
      color: AppGlobals.primaryColor,
      fontSize: 15,
      fontFamily: 'Poppins');
  static const TextStyle styleText7000Font14 = TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
      color: Colors.black);

  static final phoneCodeNumberNeumorphicStyle = NeumorphicStyle(
      depth: 0,
      intensity: 0,
      color: Colors.white,
      boxShape: NeumorphicBoxShape.roundRect(
          const BorderRadius.all(Radius.circular(40))),
      border: const NeumorphicBorder(
          color: Color.fromRGBO(228, 226, 226, 1), width: 2));

  //regular expressions
  static RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static RegExp passwordRegExp = RegExp(
      r"^(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+*!=]).*$");
  static RegExp onlyWordsRegExp = RegExp(r'^[a-zA-Z\s]+');
  static RegExp creditCardRegExp = RegExp(
      r'^([0-9]{0,4}[\-]{0,1})([0-9]{0,4}[\-]{0,1})([0-9]{0,4}[\-]{0,1})([0-9]{0,4})');
  static RegExp dateOfBirthRegExp =
      RegExp(r'^([0-9]{0,2}[\/]{0,1})([0-9]{0,2}[\/]{0,1})([0-9]{0,4})');
  static RegExp ssnRegExp =
      RegExp(r'^([0-9]{0,3}[\-]{0,1})([0-9]{0,2}[\-]{0,1})([0-9]{0,4})');

  //strings
  static const String autoCheckInText = 'Auto Check-In';
  static const String choseAvatarText = 'Choose Avatar';
  static const String msgChoseAvatarText =
      'Choose an image as avatar for your profile company';
  static const String toPickupText = 'To Pickup';
  static const String fromPickupText = 'From Pickup';
  static const String toDelivery = 'To Delivery';
  static const String fromDelivery = 'From Delivery';
  static const String noMoreElement = 'there are no more elements to show!';
  static const String noMoreMessage = 'there are no messages to show!';
  static const String noCompanyFundText = 'no company found available';
  static const String requestSend = 'Request Sent';
  static const String welcomeMsgLoginPage =
      'As it is your first time using the application, you must complete two simple and quick steps to start enjoying this incredible application.';
  static const String phoneMsgLoginPage =
      'Please enter your phone number to send you a validation code';
  static const String requestSendMsg = 'The request has been sent successfully';
  static const String QuoteReportAcceptmsg =
      'The quote report has been accept successfully';
  static const String rejectReportmsg = 'The quote report has been reject';
  static const String quoteDeletemsg =
      'The quote has been deleted successfully';
  static const String emailblankErrortext = 'Please enter an email';
  static const String emailValidErrortext = 'Please valid enter an email';
  static const String firstNameblankErrortext = 'Please enter to first name';
  static const String lastNameblankErrortext = 'Please enter to last name';
  static const String deleteAccounttext = 'Delete Account';
  static const String deleteAccountMsgtext =
      'Are you sure you want to permanently delete this user?';
  static const String checkVinText =
      'Check that the VIN number of the vehicle you received is the same as the one shown above';
  static const String deleteQouteTitleText = 'Reject Quote Request';
  static const String deleteQouteMsgText =
      'Are you sure you want to permanently reject this Quote Request?';
  static const String specificInfo = 'Specific Info';
  static const String dealershipDestinationText = 'Destination Dealership';
  static const String dealershipOrigenText = 'Dealership of Origin';
  static const String damageText = 'Damage';
  static const String estimatedTimeArrival = 'Estimated time of arrival: ';
  static const String expirationdateQoute = 'Expiration date for the quote: ';
  static const String quoteRequestMenu = 'Quote Request Name';
  static const String quotationReportName = 'Quotation Report Name';
  static const String amountofVehiclesDelivery = 'Amount of Vehicles delivery';
  static const String amountofVehiclesPickup = 'Amount of Vehicles pickup';
  static const String amountofVehicles = 'Amount of Vehicles';
  static const String listofvehiclestransport = 'List of vehicles to transport';
  static const String requestQuoteDealershipText = 'Request Quote';
  static const String totalTransportationCost = 'Total Transportation Cost';
  static const String quoteReceivedDealershipText = 'Quotes Received';
  static const String quoteList = 'Quotes List';
  static const String transportationStatustext = 'Transport Status ';
  static const String userManagementtext = 'User Management';
  static const String checkVinNumber = 'Please check VIN number';
  static const String checkVinNumberMsg =
      'You must enter the Vehicle Identification Number (VIN) to begin transportation';
  static const String estimatedTimelineText = 'Estimated Timeline';
  static const String transportationDateText = 'Transportation date';
  static const String expirationDateText = 'Expiration date';
  static const String questionText = 'Question';
  static const String TransportationText = 'Transportation';
  static const String vehicleDeliver = 'Vehicles to deliver: ';
  static const String vehiclePickup = 'Vehicles to Pickup: ';
  static const String requestedQuote = 'Requested Quotes';
  static const String createQuoteReport = 'Create Quotes Report';
  static const String vehiclesReceivedDealershipText = 'Vehicles Received';
  static const String welcomeTranspMsg = 'Welcome to ';
  static const String omboardingTranspMsgStep2 = 'Secure ';
  static const String omboardingTranspMsgRedStep2 = 'transport process';
  static const String omboardingTranspMsgStep3 = 'Find your ';
  static const String omboardingTranspMsgRedStep3 = 'ideal transport';
  static const String omboardingTranspMsgBodyStep1 =
      'Go ahead and discover this \n amazing app';
  static const String omboardingTranspMsgBodyStep2 =
      'We help you manage the entire car transport process efficiently and safely';
  static const String omboardingTranspMsgBodyStep3 =
      'With us you can find the best transport company that fits your requirements';
  static const String quoteName = 'Quote name';
  static const String receiveVehicleText = 'Receive Vehicle';
  static const String continuedWelcomeTranspMsg = 'Transporter App ';
  static const String introductionTransporterMsg =
      'We help you manage car transport processes in the most efficient way possible, it has never been so easy to have control of every detail!';
  static const String versionText = 'Version 1.0.0';
  static const String versionSubTittleText = '2022. All Right Reserved';
  static const String errorOldPasswordEmpty = 'Please enter you Old Password';
  static const String errorPasswordEmpty = 'Please enter a Password';
  static const String requiredField = 'Required field';
  static const String errorPasswordValid =
      'Please use at least 8 characters, a capital letter, a special key, and a number';
  static const String errorPasswordEquals = 'Passwords must be the same';
  static const String errorPhoneEmpty = 'Passwords must be the same';
  static const String errorEmailEmpty = 'Please enter an email';
  static const String errorEmailValid = 'Please enter an email valid  ';
  static const String crationAccount = 'The account was successfully created';
  static const String titleCrationAccount = 'Account created!';
  static const String titlePasteSmsCode = 'Paste Code';
  static const String pasteSmsCode = 'Do you want paste this code';
  static const String failAccount =
      'Your account could not be created, please try again.';
  static const String titleFailAccount = 'Creation Failed!.';
  static const String personalinfo = 'Company Info';
  static const String accountInfo = 'Account Info';
  static const String otherInfo = 'Other Info';
  static const String profile = 'Profile';
  static const String qoutesRequestText = 'Quotation Request';
  static const String quoteNameReportText = 'Quote name';
  static const String searchYourQuoteText = 'Search your Quote';
  static const String searchTransportationStatusText =
      'Enter the last 8# of the VIN to search';
  static const String searchUserText = 'Search User';
  static const String defaultDelivery = 'Default Delivery';
  static const String vehicleInfo = 'Vehicle Info';
  static const String deliveryInfo = 'Delivery Info';
  static const String deliveryVehicleInfo = 'Delivery Vehicles';
  static const String pickupVehicleInfo = 'Pickup Vehicles';
  static const String pickUpInfo = 'Pickup Info';
  static const String editUserText = 'Edit User Account';
  static const String editUserAlertText = 'Account updated!';
  static const String createUserText = 'Create User Account';
  static const String createUserAlertText = 'Account created!';
  static const String createUserMsgText =
      'The account was successfully created';
  static const String editUserMsgText = 'The account was successfully updated';
  static const String exitViewText = 'Exit view';
  static const String exitViewMsgText =
      'Are you sure you want to leave? All unsaved changes will be lost.';
  static const String vehicleListInfo = 'List of Vehicles to transport';
  static const String vinNumberCheck = 'VIN Number Check';
  static const String qouteRequestDetail = 'Quote Request Details';
  static const String createQuotesReportCompany = 'Create Quote';
  static const String createQuotesRequestCompany = 'Create Quote Request';
  static const String quotesReportDetailsCompany = 'Quote Details';
  static const String quoteRequestsReceived = 'Quote Requests Received';
  static const String quoteRequestReportReceived = 'Quote Reports Received';
  static const String quotationReportDetails = 'Quotation Report Details';
  static const String availableTransportCompany =
      'Available Transport Companies';
  static const String textIntroductionRequestedQoutes =
      'Create Quotation Request to transport vehicles';
  static const String signUpText = 'Iniciar Sesión';
  static const String backToText = 'Back to';
  static const String receiveEmelText = 'Didn\'t receive the code';
  static const String forgotPasswordText = 'Forgot password?';
  static const String sentText = 'Send';
  static const String loginText = 'Login';
  static const String longBedText = 'Long Bed';
  static const String LiftedText = 'Lifted';
  static const String tryAgaintext = 'Try Again';
  static const String labelEmail = 'Email';
  static const String paswordEmail = 'Password';
  static const String confirmPaswordEmail = 'Confirm Password';
  static const String dontHaveAccountText = 'Don\'t have an account yet?';
  static const String alreadyHaveAccount = 'Already have an account?';
  static const String accountNumberText = 'Account Number';
  static const String accessText = 'Access';
  static const String ageText = 'Age';
  static const String ageUpperText = 'AGE';
  static const String bankText = 'Bank';
  static const String cardnumberText = 'Card Number';
  static const String cityText = 'City';
  static const String fqText = 'Frecuent Questions';
  static const String contactSubtitleText =
      'Tell us about your problem, we will try to help you';
  static const String subTitlequestion1Text =
      'These FAQ seek to clarify basic doubts about the application';
  static const String questionText1 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. Arcu massa aliquet lobortis tortor viverra interdum scelerisque iaculis congue. Tristique mattis sollicitudin neque volutpat, quam. Molestie hendrerit et sit auctor. Posuere dignissim dignissim arcu nullam urna. ';
  static const String questionText2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. Arcu massa aliquet lobortis tortor viverra interdum scelerisque iaculis congue. Tristique mattis sollicitudin neque volutpat, quam. ';
  static const String questionText3 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. ';
  static const String privacyText1 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. Arcu massa aliquet lobortis tortor viverra interdum scelerisque iaculis congue. Tristique mattis sollicitudin neque volutpat, quam. Molestie hendrerit et sit auctor. Posuere dignissim dignissim arcu nullam urna. ';
  static const String privacyText2 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. Arcu massa aliquet lobortis tortor viverra interdum scelerisque iaculis congue. Tristique mattis sollicitudin neque volutpat, quam. ';
  static const String privacyText3 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. ';
  static const String privacyText4 =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ac justo, ante orci diam, pulvinar nulla sed. ';
  static const String question1Text = 'Question 1';
  static const String question2Text = 'Question 2';
  static const String question3Text = 'Question 3';
  static const String privacy1Text = '1. Lorem ipsum dolor';
  static const String privacy2Text = '1.1 Lorem ipsum dolor';
  static const String privacy3Text = '1.2 Lorem ipsum dolor';
  static const String privacy4Text = '1.3 Lorem ipsum dolor';
  static const String contactText = 'Contact Us';
  static const String contactTextDialog = 'Your message was successfully sent.';
  static const String conditionstText = 'Conditions and Privacy';
  static const String privacyText = 'Privacy Policy';
  static const String infoText = 'Info';
  static const String completeText = 'Complete';
  static const String confirmEmailText = 'Confirm Email';
  static const String continueLowerText = 'Continue';
  static const String signInText = 'Sign In';
  static const String pickupAddresText = 'Pickup at their address';
  static const String sendQuoteRequest = 'Send Quote Request to selected';
  static const String rejectRequestButton = 'Reject Request';
  static const String estimatedDelivery = 'Estimated Delivery';
  static const String rejectButton = 'Reject';
  static const String addSpecificInformationText = 'Add Specific Information';
  static const String signInRecoverPasswordText = 'Sign in';
  static const String vehicleViewDetails = 'View Details';
  static const String saveText = 'Save';
  static const String createText = 'Create';
  static const String editText = 'Edit';
  static const String addText = 'Add';
  static const String uploadButtonText = 'Upload';
  static const String DeleteButtonText = 'Delete Account permanently ';
  static const String notificationEmailCheckbox = 'Receive email notifications';
  static const String defaultChippingAddress = 'Default Chipping Address';
  static const String transportVehicleCheckbox =
      'Transport vehicles on the return trip';
  static const String OversizedCheckbox = 'Oversized';
  static const String LiftedCheckbox = 'Lifted';
  static const String LongBedCheckbox = 'Long Bed';
  static const String excessHeightCheckbox = 'Excess Height';
  static const String oversizedBumpersCheckbox = 'Oversized Bumpers';
  static const String addTruckOrDriverInfoText = 'Add Truck/Driver Info';
  static const String oversizedtext = 'Oversized';
  static const String damageVehicleText = 'Damage on vehicle';
  static const String descriptionText = 'Description';
  static const String damageRadioButton = 'Damage on vehicle';
  static const String workZoneText = 'Work Zone';
  static const String insuranceText = 'Liability insurance ';
  static const String addProvincTerritorioTex =
      'Add the provinces / territories where the transportation service is available';
  static const String uploadText =
      'Please add a copy of the liability insurance (PDF or JPG)';
  static const String signUPText = 'Sign Up';
  static const String defaultDeliveryText = 'Default Delivery';
  static const String changePasswordText = 'Change Password';
  static const String confirmText = 'Confirm';
  static const String reSendText = 'Resend';
  static const String companyNameText = 'Company Name';
  static const String courtTypeText = 'Court Type';
  static const String confirmRoutingNumberText = 'Confirm Routing Number';
  static const String cardText = 'Card';
  static const String emailText = 'Enter your email';
  static const String companyEmailText = 'Company email';
  static const String searchQuoteText = 'Search your Quote';
  static const String emailQutesText = 'Email for quotes';
  static const String emailClaimsText = 'Email for claims';
  static const String facebookText = 'Facebook';
  static const String firstNameText = 'First Name';
  static const String lastNameUserText = 'Last Name';
  static const String genderText = 'GENDER';
  static const String heightText = 'Height';
  static const String heightUpperText = 'HEIGHT';
  static const String healthAndSafetyText = 'HEALTH & SAFETY';
  static const String instagramText = 'Instagram';
  static const String joinUnifyPremiumText = 'JOIN UNIFY PREMIUM';
  static const String lastNameText = 'Enter your last name';
  static const String stateText = 'Province / territory';
  static const String typeHaulingText = 'Type of hauling';
  static const String selectText = 'Select';
  static const String helpMenuText = 'Help';
  static const String locationText = 'LOCATION';
  static const String myCompanyText = 'MY COMPANY';
  static const String mediaInformationText = 'MEDIA INFORMATION';
  static const String mediaRightsText = 'MEDIA RIGHTS';
  static const String myPlayerText = 'MY PLAYER';
  static const String mediaText = 'MEDIA';
  static const String notificationsText = 'NOTIFICATIONS';
  static const String nameText = 'Enter your name';
  static const String quotenameErrorText = 'Enter your quote request name';
  static const String cardModelErrorText = 'Enter your car model';
  static const String vinErrorlErrorText = 'Enter your VIN Number';
  static const String cardBrandErrorText = 'Enter your car brand';
  static const String availableDateText = 'Enter a date';
  static const String expDateErrorText = 'Enter a date';
  static const String odometerReadingErrorText = 'Enter your Odometer Reading';
  static const String damageDesriptionErrorText =
      'Enter your Damage Description';
  static const String deliveryFromErrorText =
      'Enter your delivery from address';
  static const String deliveryToErrorText = 'Enter your delivery to address';
  static const String countryErrorText = 'Select Canada country';
  static const String pickupToErrorText = 'Enter your pickup to address';
  static const String pickupFromErrorText = 'Enter your pickup from address';
  static const String addVehiclDelivery = 'Add vehicles delivery';
  static const String addVehiclPickup = 'Add vehicles on the return trip';
  static const String problemText = 'Describe the problem';
  static const String quoteNameText = 'Quote request name';
  static const String cardBrandText = 'Car brand';
  static const String odometerReadingText = 'Odometer Reading';
  static const String damagedescriptionText = 'Describe the damage(s)';
  static const String typeYourQuestionsText = 'Type your questions';
  static const String cardModelText = 'Car Model';

  static const String modelText = 'Model';
  static const String vinNumberText = 'VIN Number';
  static const String vinText = 'VIN';
  static const String deliveryVehicleText = 'Deliver vehicle to:';
  static const String deliveryVehicleFrom = 'Deliver vehicle from:';
  static const String addVehicleReadOnlyText = 'Added vehicles: ';
  static const String numberOfRimsText = 'Number of Rims';
  static const String noOfCourtsText = 'No. of Courts';
  static const String passwordLowerText = 'password';
  static const String phoneNumberText = 'Enter your phone number';
  static const String phoneNumberNoMacthWithCodeText =
      'The number is not correct';
  static const String driverCellText = 'Driver Cell';
  static const String unitNumberText = 'Unit Number';
  static const String companyPhoneNumberText = 'Company phone number';
  static const String FaxNumberText = 'Fax number';
  static const String companyFaxNumberText = 'Company Fax number';
  static const String InsurageCoverageText = 'Insurance coverage';
  static const String yearsBussinesText = 'Years in business';
  static const String companyText = 'Select Company Type';
  static const String companyName = 'Enter Company Name';
  static const String name = 'Enter Name';
  static const String lastName = 'Enter Last Name';
  static const String driverName = 'Driver Name';
  static const String yearText = 'Year';
  static const String typeUserText = 'Type of user';
  static const String trailerType = 'Trailer Type';
  static const String vinValidationDigitText = 'Enter an 11 digit number';
  static const String makeText = 'Make';
  static const String yearsErrorText = 'Enter to Year';
  static const String typeUserErrorText = 'Enter to type of User';
  static const String estimatedDeliveryErrorText =
      'Enter to estimated delivery';
  static const String typeOfHaulingErrorText = 'Enter to type of hauling';
  static const String addresText = 'Address';
  static const String companyAddressText = 'Company Address';
  static const String codeZip = 'Postal Code';
  static const String companyCodeZip = 'Company Postal Code';
  static const String postalCodeTex = 'Postal Code';
  static const String companyPostalCodeTex = 'Company Postal Code';
  static const String numberTruckTex = 'Number of trucks';
  static const String positionText = 'Position';
  static const String passwordText = 'Enter your Password';
  static const String passwordChangeText = 'Enter your new password';
  static const String newPasswordText = 'New Password';
  static const String oldPasswordText = 'Old Password';
  static const String confirmPasswordText = 'Confirm your password';
  static const String confirmChangePasswordText = 'Confirm your new password';
  static const String enterChangePasswordText = 'Enter your new password';
  static const String enterOldChangePasswordText = 'Enter your Old password';
  static const String passwordLabel = 'Password';
  static const String personalInformationText = 'PERSONAL INFORMATION';
  static const String premiumSubscriptionText = 'PREMIUM SUBSCRIPTION';
  static const String paymentInformationText = 'PAYMENT INFORMATION';
  static const String paymentReceipText = 'PAYMENT RECEIPT';
  static const String routingNumberText = 'Routing Number';
  static const String snapChatText = 'Snapchat';
  static const String sizeOfTeamText = 'Size of Team';
  static const String settingsAndPreferencesText = 'SETTINGS & PREFERENCES';
  static const String socialText = 'SOCIAL';
  static const String selectArea = 'Seleccione el Área';
  static const String selectPiso = 'Seleccione el Piso';
  static const String shirtSizeText = 'Shirt Size';
  static const String smsNotificationsText = 'SMS Notifications';
  static const String surfaceText = 'Surface';
  static const String tikTokText = 'Tik Tok';
  static const String twitterText = 'Twitter';
  static const String userNameLowerText = 'user name';
  static const String userNameText = 'Enter your email ';
  static const String vehiclePriceText = 'Enter your price ';

  static const String uploadPhotoText = 'Upload Photo';
  static const String venueInformationText = 'VENUE INFORMATION';
  static const String venueNameText = 'Venue Name';
  static const String venueStreetText = 'Venue Street';
  static const String weightText = 'Weight';
  static const String weightUpperText = 'WEIGHT';
  static const String youtubeText = 'Youtube';
  static const String zipCodeText = 'Zip Code';
  static const String zipText = 'Zip';
  static const String basicInformationText = 'BASIC INFORMATION';
  static const String whatsYourPhoneNumText = 'WHAT IS YOUR PHONE NUMBER';
  static const String coolUserNameText = 'CREATE A COOL USERNAME';
  static const String beginnerText = 'BEGINNER';
  static const String professionalText = 'PROFESSIONAL';
  static const String logoText = 'PLAY. WIN. EARN';
  static const String joinUnifySportsFamilyText = 'JOIN UNIFY SPORTS FAMILY';
  static const String maleText = 'Male';
  static const String femaleText = 'Female';
  static const String unifyRequiresText =
      'Unify requires location access & notification access to use app.';
  static const String completePlayerProfileText =
      'Complete player profile in user profile after sign up to earn an additional \$10 in game credits to play more games on us!';
  static const String pleaseEnterUserNameText = 'Please enter an user name';
  static const String pleaseEnterPhoneNumberText =
      'Please enter a phone number';
  static const String enterPhoneNumberText =
      'ENTER PHONE NUMBER LINKED TO ACCOUNT';
  static const String enterVerificationText =
      'ENTER VERIFICATION CODE SENT TO PHONE NUMBER';
  static const String verificationText = 'Verify';
  static const String numberNotFoundText =
      'NUMBER NOT FOUND. TRY AGAIN OR SIGN UP';
  static const String verificationUnsuccessfulText =
      'VERIFICATION UNSUCCESSFUL. TRY AGAIN OR RESEND';
  static const String updateTransportationCompanyText =
      'Transportation company has been successfully updated';
  static const String updateUserText =
      'User account has been successfully updated';
  static const String updateTransportationCompanyTextDialog =
      'Upgrade Trasnsportation Company';
  static const String updateDealershipText =
      'Dealership has been successfully updated';
  static const String createQuoteReportDialogText =
      'Quote Report has been successfully created';
  static const String updateDealershipTextDialog = 'Upgrade dealership';
  static const String plusOneText = '+1';
  static const String returnHomePageText = 'RETURN TO HOMEPAGE';
  static const String continueText = 'Continue';
  static const String continueUperInitialText = 'Continue';
  static const String applyText = 'Apply';
  static const String SendQuoteAllText = 'Send Quote Request to All';
  static const String requestDetailsButtton = 'Request Details';
  static const String detailsButtton = 'Details';
  static const String acceptButtton = 'Accept';
  static const String sendQuoteButtton = 'Send Quote';
  static const String backButtton = 'Back';
  static const String createQuoteReportButtton = 'Create Quote Report';
  static const String eliminateRequest = 'Eliminate Request';
  static const String rejectRequest = 'Reject Request';
  static const String deleteQuote = 'Delete quote';
  static const String deleteQuotemsg =
      'Are you sure you will be able to eliminate this quota?';
  static const String resendText = 'resend';
  static const String canselText = 'Cancel';
  static const String activeHaveBeenScannedText = 'Este activo ya fue escaneado';
  static const String pressToExit = 'Vuelva a presionar atrás para salir';
  static const String requiredSelectOpionText = 'Debe seleccionar una de las dos opciones.';
  static const String cameraGalleryText = 'Choose Gallery';
  static const String cameraText = 'Take a Photo';
  static const String closeText = 'Close';
  static const String pasteText = 'Paste';
  static const String yesText = 'Yes';
  static const String noText = 'No';
  static const String enterVINNumberText = 'Enter VIN Number';
  static const String confirmVINNumberText = 'Confirm VIN number';
  static const String chatSendMsg = 'Send a Message';
  static const String statusText = 'Status';
  static const String errorEmptyTransportationCostAlertText = 'Empty fields';
  static const String errorEmptyTransportationCostAlertMsgText =
      'There are vehicles that have not yet been priced. Please fill in the fields to continue';
  static const API_KEY_GOOGLEMAPS = "AIzaSyCA-JM_OxVYh9dgWlCOmCcz68rKftnPrf0";

  static const addPaymentMethodAppBarTitleText = 'Add Payment Method';
  static const editPaymentMethodAppBarTitleText = 'Edit Payment Method';
  static const listPaymentMethodAppBarTitleText = 'Payment Methods';
  static const verificationAccountAppBarTitleText = 'Verification Summary';

  static const addcardIndicatorText = 'Adding card...';
  static const sendingInformationIndicatorText = 'Sending information...';
  static const loadingCardIndicatorText = 'Loading cards...';
  static const uploadingPhotoIndicatorText = 'Uploading photo...';
  static const loadingInformationIndicatorText = 'Loading information...';
  static const updatingInformationIndicatorText = 'Updating information...';

  static const headerTextAddCard =
      'Choose a payment option below and fill out the appropiate information';
  static const headerTextSendVerificationDocuments =
      'For additional security, please have this person finish verifying their identity with a government-issued ID.';
  static const headerText2SendVerificationDocuments =
      'Select identification type';
  static const headerTextConnectedAccount =
      'In order to receive payments, you must have this information updated';
  static const cardHolderHintText = 'Card holder name';
  static const cvvHintText = 'CVV';
  static const idVerificationText = 'ID Verification';
  static const externalAccountText = 'External Account';
  static const saveDefaultCardText = 'Save as Default Card';
  static const phoneText = 'Phone number';
  static const chooseOptionText = 'Choose option';
  static const galleryText = 'Gallery';
  static const chooseFileText = 'Choose File';
  static const ssnText = 'SSN';
  static const updateText = 'Update';
  static const line1Text = 'Line 1';
  static const line2Text = 'Line 2';
  static const countryText = 'Country';
  static const customStateText = 'State';
  static const customCityText = 'City';
  static const providedText = 'Provided';
  static const verifyText = 'Verify';
  static const finishVerifyingIdentityText =
      'For additional security, please finish verifying your identity with a government-issued ID';
  static const addDebitCardText = 'Add a Debit Card to receive secure payments';

  static const postalCodeText = 'Postal Code';
  static const businessProfileMccText = '5734';
  static const businessProfileUrlText = 'www.transporterapp.com';

  static const postalCodeValidationErrorText = 'Invalid Postal Code';
  static const cityValidationErrorText = 'Invalid City';
  static const countryValidationErrorText = 'Invalid Country';
  static const stateValidationErrorText = 'Invalid State';
  static const line1ValidationErrorText = 'Invalid Line 1';
  static const nameValidationErrorText = 'Please enter a valid name';
  static const firstNameValidationErrorText = 'Invalid Name';
  static const lastNameValidationErrorText = 'Invalid Last Name';
  static const ssnValidationErrorText = 'Invalid SSN';
  static const emailValidationErrorText = 'Invalid Email';
  static const cardNumberValidationErrorText =
      'Please enter a valid card number';
  static const dateValidationErrorText = 'Invalid Date';
  static const cvvValidationErrorText = 'Invalid CVV';
  static const phoneValidationErrorText = 'Invalid phone number';

  static const cardNumberHintText = 'Card number';
  static const cardNumberMask = 'XXXX-XXXX-XXXX-XXXX';
  static const cardNumberSeparator = '-';

  static const addPaymentMethodButtonText = 'Add Payment Method';

  static const deleteCardAlertDialogMessage =
      'Are you sure you want to permanently delete this card?';
  static const deleteCardAlertDialogTitle = 'Delete Account';

  static const dropDownButtonDriverLicenseItemText = 'Driver License';
  static const dropDownButtonDriverIdentityCardItemText = 'Identity Card';
  static const dropDownButtonPassportItemText = 'Passport';
  static const backDocumentIdText = "Back of your ID document";
  static const frontDocumentIdText = "Front of your ID document";
  static const uploadDocumentIdText =
      "Upload an image of the back of your identity document here";

  static assetsImagesOmboarding(String assetName, double height) {
    return Image.asset('assets/images/$assetName', height: height);
  }
}
