import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/widgets/my_button.dart';
import 'package:flash_chat/widgets/text_input_layout.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextInputWidget(
              hint: 'Enter your Email.',
              onChanged: (value) {},
              prefixIcon: Icons.mail_rounded,
            ),
            SizedBox(
              height: 8.0,
            ),
            TextInputWidget(
              hint: 'Enter the Password.',
              isPassword: true,
              onChanged: (value) {},
              prefixIcon: Icons.privacy_tip,
            ),
            SizedBox(
              height: 24.0,
            ),
            MyButton(
              buttonColor: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context, ChatScreen.id);
              },
              text: 'Log In',
            ),
          ],
        ),
      ),
    );
  }
}
