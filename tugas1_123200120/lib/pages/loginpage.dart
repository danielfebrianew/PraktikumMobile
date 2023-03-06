import 'package:flutter/material.dart';

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

const _mainColor = Colors.white;
const _secondaryColor = Colors.blue;

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login Screen',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(35, 40, 40, 5),
          color: _mainColor,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/img/flutterlogo.png',
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 30,
                ),
                _emailField(),
                const SizedBox(
                  height: 25,
                ),
                _passwordField(),
                const SizedBox(
                  height: 45,
                ),
                _loginButton(),
                const SizedBox(
                  height: 5,
                ),
                _buttonForgot(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _emailField() {
  return Container(
    alignment: Alignment.center,
    child: TextField(
      enabled: true,
      controller: _emailController,
      style: const TextStyle(
        color: _secondaryColor,
      ),
      cursorColor: _secondaryColor,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            width: 3,
            color: _secondaryColor,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        focusColor: Colors.white,
        filled: true,
        fillColor: Colors.white,
        labelText: 'Email',
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(15),
      ),
    ),
  );
}

Widget _passwordField() {
  return Container(
    alignment: Alignment.center,
    child: TextField(
      enabled: true,
      controller: _passwordController,
      style: const TextStyle(
        color: _secondaryColor,
      ),
      cursorColor: _secondaryColor,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: const BorderSide(
            color: _secondaryColor,
            width: 3,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
        filled: true,
        fillColor: Colors.white,
        labelText: 'Password',
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.all(15),
      ),
    ),
  );
}

Widget _loginButton() {
  return Container(
    alignment: Alignment.center,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: _secondaryColor,
        shadowColor: Colors.orangeAccent,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        minimumSize: const Size(400, 40),
      ),
      onPressed: () {},
      child: const Text(
        'Log In',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget _buttonForgot() {
  return Container(
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Forgot password? ',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ],
    ),
  );
}
