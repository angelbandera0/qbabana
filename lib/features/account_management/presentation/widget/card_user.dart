import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../../../core/global/app_globals.dart';
import '../utils/chevron_icons_icons.dart';

class CardUser extends StatelessWidget {
  CardUser({
    required this.user,
    required this.email,
    required this.typeOfUser,
    required this.ontapEdit,
    required this.ontapExpandable,
    required this.ontapDelete,
    this.isExpandle = false,
    Key? key,
  }) : super(key: key);

  String user;
  String email;
  String typeOfUser;
  Function() ontapEdit;
  Function() ontapExpandable;
  bool isExpandle;
  Function() ontapDelete;

  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, _screenSize.height * 0.01),
        child: isExpandle
            ? Container(
                height: _screenSize.height * 0.2,
                child: Card(
                  color: AppGlobals.colorExpandelCardUsder,
                  child: Column(
                    children: [
                      ListTile(
                        trailing: Wrap(
                          spacing: 10,
                          children: [
                            InkWell(
                                child: Icon(
                                  LineIcons.edit,
                                  color: Colors.black,
                                ),
                                onTap: ontapEdit),
                            InkWell(
                              child: Icon(
                                LineIcons.trash,
                                color: AppGlobals.primaryColor,
                              ),
                              onTap: ontapDelete,
                            ),
                            InkWell(
                                child: Icon(
                                  ChevronIcons.chevron_up,
                                  color: AppGlobals.primaryColor,
                                  size: 20,
                                ),
                                onTap: ontapExpandable),
                          ],
                        ),
                        title: Text(
                          '$user',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(
                          '$email',
                          style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      _Divider(_screenSize),
                      SizedBox(
                        height: _screenSize.height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: _screenSize.width * 0.04),
                        child: Row(
                          children: [
                            Text(
                              AppGlobals.typeUserText + ':',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Expanded(child: SizedBox()),
                            Text(typeOfUser,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                  shadowColor: Color.fromRGBO(236, 236, 236, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(236, 236, 236, 70),
                      blurRadius: 20.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              )
            : Container(
                child: Card(
                  child: ListTile(
                    trailing: Wrap(
                      spacing: 10,
                      children: [
                        InkWell(
                            child: Icon(
                              LineIcons.edit,
                              color: Colors.black,
                            ),
                            onTap: ontapEdit),
                        InkWell(
                          child: Icon(
                            LineIcons.trash,
                            color: AppGlobals.primaryColor,
                          ),
                          onTap: ontapDelete,
                        ),
                        InkWell(
                            child: Icon(
                              ChevronIcons.chevron_down,
                              color: AppGlobals.colorBlack,
                              size: 20,
                            ),
                            onTap: ontapExpandable),
                      ],
                    ),
                    title: Text(
                      '$user',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      '$email',
                      style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  shadowColor: Color.fromRGBO(236, 236, 236, 160),
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(236, 236, 236, 70),
                      blurRadius: 20.0,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ));
  }

  _Divider(Size screensize) {
    return SizedBox(
      width: screensize.width,
      child: Divider(
        color: AppGlobals.colorDivider,
        thickness: 1,
        endIndent: 10,
        indent: 15,
      ),
    );
  }
}
