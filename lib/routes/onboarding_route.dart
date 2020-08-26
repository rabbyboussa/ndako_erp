import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:motion_widget/motion_widget.dart';
import 'package:ndako_erp/dialogs/enter_phone_number_dialog.dart';
import 'package:ndako_erp/models/country.dart';

class OnboardingRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/black-woman-smiling-at-phone.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          color: Color.fromARGB(50, 0, 0, 0),
          child: Container(
            margin: EdgeInsets.only(left: 48.0, top: 88.0, right: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Motion<Column>(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      MotionElement(
                        orientation: MotionOrientation.RIGHT,
                        displacement: 10.0,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'La plateforme\n',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Metropolis',
                                                fontSize: 64.0,
                                                fontWeight: FontWeight.w900
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'idéale ',
                                                style: TextStyle(
                                                    color: Color.fromARGB(255, 255, 199, 0),
                                                    fontFamily: 'Metropolis',
                                                    fontSize: 64.0,
                                                    fontWeight: FontWeight.w900
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'pour les\n',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Metropolis',
                                                  fontSize: 64.0,
                                                  fontWeight: FontWeight.w900
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'professionnels\n',
                                                style: TextStyle(
                                                  color: Color.fromARGB(255, 255, 199, 0),
                                                  fontFamily: 'Metropolis',
                                                  fontSize: 64.0,
                                                  fontWeight: FontWeight.w900
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'de l\'immobilier !',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Metropolis',
                                                    fontSize: 64.0,
                                                    fontWeight: FontWeight.w900
                                                ),
                                              ),
                                            ]
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
                      MotionElement(
                        orientation: MotionOrientation.RIGHT,
                        displacement: 50,
                        child: Container(
                          margin: EdgeInsets.only(top: 16.0),
                          child: Text('Ndako ERP vous offre des outils de gestion et\nd\'analyse pour faciliter votre activité au quotidien',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                height: 1.5
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Motion<Column>(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MotionElement(
                        orientation: MotionOrientation.RIGHT,
                        displacement: 80,
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 200.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: GradientColors.yellow),
                                borderRadius: const BorderRadius.all(Radius.circular(64.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Color.fromARGB(100, 255, 199, 0),
                                    offset: Offset(0.0, 1.5),
                                    blurRadius: 8.0,
                                    spreadRadius:4.0
                                  )
                                ]
                              ),
                              child: Material(
                                color: Colors.transparent,
                                borderRadius: const BorderRadius.all(Radius.circular(64.0)),
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return EnterPhoneNumberDialog(countryCode: Country(name: 'Congo-Brazzaville', countryCode: '+242', isoCode: "CG"));
                                      }
                                    );
                                  },
                                  borderRadius: const BorderRadius.all(Radius.circular(64.0)),
                                  child: Center(
                                    child: Text('COMMENCER',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 64.0, bottom: 32.0),
                        child: RichText(
                          text: TextSpan(
                              text: 'En cliquant sur Commencer, vous acceptez nos ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  height: 1.30
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Conditions d\'utilisation.',
                                  style: TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                ),
                                TextSpan(
                                  text:  '  Découvrez comment nous traitons vos données dans notre ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Politique de confidentialité',
                                  style: TextStyle(
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w600,
                                      decoration: TextDecoration.underline
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                )
                              ]
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