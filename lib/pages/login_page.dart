import 'package:flutter/material.dart';

import 'package:chat_app/pages/register_page.dart';
import 'package:chat_app/widgets/custom_input.dart';
import 'package:chat_app/widgets/custom_logo_header.dart';
import 'package:chat_app/widgets/custom_footer_labels.dart';
import 'package:chat_app/widgets/custom_btn_large.dart';

class LoginPage extends StatelessWidget {
  static final pageName = '/login';
  final Color backgroundColor = const Color(0xffF2F2F2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _LogoHeader(),
                _LoginForm(),
                _FooterLabels(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LogoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomLogoHeader(
      assetImage: AssetImage('assets/tag-logo.png'),
      headerText: 'Messenger',
      fontSize: 30,
    );
  }
}

class _LoginForm extends StatefulWidget {
  @override
  __LoginFormState createState() => __LoginFormState();
}

class __LoginFormState extends State<_LoginForm> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.mail_outline,
            placeholder: 'Email',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outline_rounded,
            placeholder: 'Password',
            keyboardType: TextInputType.text,
            textController: passCtrl,
            isPassword: true,
          ),
          CustomLargeButton(
            btnText: 'Iniciar Sesión',
            onPressed: _sendLogin,
          ),
        ],
      ),
    );
  }

  _sendLogin() {
    print(emailCtrl.text);
    print(passCtrl.text);
  }
}

class _FooterLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomFooterLabels(
      ask: '¿No Tienes Cuenta?',
      mainText: '¡Crea una ahora!',
      route: RegisterPage.pageName,
    );
  }
}
