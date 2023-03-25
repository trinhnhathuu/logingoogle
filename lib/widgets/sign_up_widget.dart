import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logintest/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          FlutterLogo(
            size: 30,
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hello my app',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,decoration:TextDecoration.none),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
          ),
          Spacer(),
          ElevatedButton.icon(
              onPressed: () {
                final provider = Provider.of<GoogleSignInProvider>(context, listen:false);
                provider.googleLogin();
                

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity,50),
              ),
              icon:FaIcon(FontAwesomeIcons.google),
              label: Text('Sign up wwith Google'),
          ),
          SizedBox(
            height: 40,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: 'Login ',
              style: TextStyle(decoration: TextDecoration.underline),
            )
          ]))
        ],
      ),
    );
  }
}
