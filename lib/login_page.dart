import 'package:flutter/material.dart';
import 'package:study_project/components/custom_text_field.dart';
import 'package:study_project/spaces.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key})
  : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = '';
  String password = '';

  Widget _body() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                'lib/assets/images/login.png', 
              )
            ),
            SizedBoxComponent.verticalSpaceS30,
            CustomTextField(
              placeholder: 'Email',
              onEmailChanged: (text) {
                setState(() {
                  email = text;
                });
              },
            ),
            SizedBoxComponent.verticalSpaceS20,
            CustomTextField(
              obscureText: true,
              placeholder: 'Senha',
              onEmailChanged: (text) {
                setState(() {
                  password = text;
                });
              },
            ),
            SizedBoxComponent.verticalSpaceS30,
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  if (email == 'grandop03@gmail.com' && password == '1234') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } 
                },
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                child: const Text(
                  'Entrar', 
                  style: TextStyle(
                    color: 
                    Colors.black, 
                    fontSize: 20
                  )
                ),
              ),
            )
          ]
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'lib/assets/images/background.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          _body(),
        ],
      )
    );
  }
}
