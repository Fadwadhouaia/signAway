import 'dart:io';

import 'package:flutter/material.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'file:///B:/Fadwa/signaway_fadwa-master/lib/SignaturePad/signaturepage.dart';


class Fingerprint extends StatefulWidget {
  @override
  _FingerprintState createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
  
 final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    
    setState(() {
      _biometrico();
    });
    return Container();
  }

  Future<void> _biometrico() async {

    bool flag = true;

    if(flag) {
      bool authenticated = false;

      const androidString = const AndroidAuthMessages(
        cancelButton: "Annuler",
        goToSettingsButton: "Aller au paramétres",
        signInTitle: "Autentiquese",
        fingerprintNotRecognized: "Veuillez réessayer",
        fingerprintSuccess: "Avec Succes",
        goToSettingsDescription: "Go to settings"

      );
      try {
        authenticated = await auth.authenticateWithBiometrics(
            localizedReason: "Authentification",
          useErrorDialogs: true,
          stickyAuth: true,
          androidAuthStrings: androidString


        );

        if (!authenticated) {

          exit(0);

        }

      }
      catch(e) {
        print(e);

      }
      if (!mounted) {
        return;
      }

      if (authenticated) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignaturePgae(),
          ),
        );
      }

    }






  }
}
