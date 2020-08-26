import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:ndako_erp/models/country.dart';

class EnterPhoneNumberDialog extends StatefulWidget {
  final Country countryCode;

  EnterPhoneNumberDialog({@required this.countryCode});

  @override
  State<StatefulWidget> createState() => _EnterPhoneNumberDialogState();
}

class _EnterPhoneNumberDialogState extends State<EnterPhoneNumberDialog> {
  String _phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: 448.0,
            height: 500.0,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(FlutterIcons.x_circle_fea, color: Color.fromARGB(255, 232, 232, 232), size: 32.0),
                        onPressed: () => Navigator.of(context).pop()),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32.0),
                  child: Text('Saisissez votre numéro de\ntéléphone portable',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 40.0,
                    top: 40.0,
                    right: 40.0,
                    bottom: 40.0
                  ),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 250),
                            borderRadius: const BorderRadius.all(Radius.circular(4.0))
                          ),
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                  child: Text('${widget.countryCode.isoCode}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Icon(FlutterIcons.triangle_down_ent,
                                    color: Color.fromARGB(255, 218, 223, 230),
                                    size: 16.0),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 247, 250),
                            borderRadius: const BorderRadius.all(Radius.circular(4.0))
                        ),
                        child: Center(
                          child: Text('${widget.countryCode.countryCode}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 247, 250),
                                borderRadius: const BorderRadius.all(Radius.circular(4.0))
                            ),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  _phoneNumber = value;
                                });
                              },
                              autofocus: true,
                              cursorColor: Colors.black,
                              cursorWidth: 1.0,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 24.0,
                    bottom: 32.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Veuillez saisir un numéro de téléphone valide.',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  child: RichText(
                    text: TextSpan(
                        text: 'Appuyez sur "Continuer", et Ndako ERP vous enverra un message avec un code de vérification. Des frais liés à l\'utilisation de messages et/ou de données peuvent s\'appliquer. Vous pourrez ensuite utilisé ce numéro de téléphone vérifié pour vous connecter. ',
                        style: TextStyle(
                          color: Color.fromARGB(255, 119, 119, 119),
                          fontSize: 11.0,
                          height: 1.25
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Découvrez ce qui se passe si vous changez de numéro de téléphone.',
                            style: TextStyle(
                                color: Color.fromARGB(255, 119, 119, 119),
                                fontSize: 11.0,
                                decoration: TextDecoration.underline
                            ),
                          )
                        ]
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24.0),
                  child: Stack(
                    children: <Widget>[
                      Offstage(
                        offstage: _phoneNumber.isEmpty,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: GradientColors.yellow),
                            borderRadius: const BorderRadius.all(Radius.circular(64.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey[300],
                                offset: Offset(1.5, 1.5),
                                blurRadius: 8.0,
                                spreadRadius: 4.0
                              )
                            ]
                          ),
                          child: ArgonButton(
                            width: 264.0,
                            height: 48.0,
                            borderRadius: 64.0,
                            elevation: 0.0,
                            hoverElevation: 0.0,
                            highlightElevation: 0.0,
                            color: Colors.transparent,
                            highlightColor: Theme.of(context).highlightColor,
                            hoverColor: Theme.of(context).hoverColor,
                            splashColor: Theme.of(context).splashColor,
                            roundLoadingShape: false,
                            child: Text(
                              "CONTINUER",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            loader: Container(
                              padding: EdgeInsets.symmetric(horizontal: 56.0),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: GradientColors.yellow),
                                borderRadius: const BorderRadius.all(Radius.circular(64.0)),
                              ),
                              child: Container(),
                            ),
                            onTap: (startLoading, stopLoading, buttonState) {
//                              Navigator.of(context).pop();
//                              showDialog(
//                                context: context,
//                                barrierDismissible: false,
//                                builder: (context) {
//                                  return EnterVerificationCodeDialog(phoneNumber: _phoneNumber);
//                                }
//                              );
                            },
                          ),
                        ),
                      ),
                      Offstage(
                        offstage: _phoneNumber.isNotEmpty,
                        child: Container(
                          width: 264.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 230, 233, 237),
                              borderRadius: const BorderRadius.all(Radius.circular(64.0))
                          ),
                          child: Center(
                            child: Text(
                              "CONTINUER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}