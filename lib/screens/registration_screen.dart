import 'package:flash_chat/widgets/my_button.dart';
import 'package:flash_chat/widgets/text_input_layout.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = '/registration';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
              buttonColor: Colors.blueAccent,
              onPressed: () {},
              text: 'Register',
            ),
          ],
        ),
      ),
    );
  }
}
