//import 'package:doctor_info/HomePage.dart';
import 'package:doctor_info/list.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';




class LoginPage extends StatefulWidget {

  State<LoginPage> createState() => _LoginPageState();

}




class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();




  @override

  Widget build(BuildContext context) {

    return  Scaffold(

      backgroundColor: Colors.orange[100],

        body: _page(),

      );

  }




  Widget _page() {

    return Padding(

      padding: const EdgeInsets.all(32.0),

      child: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            _icon(),

            const SizedBox(height: 50),

            _inputField("Username", usernameController),

            const SizedBox(height: 20),

            _inputField("Password", passwordController, isPassword: true),

            const SizedBox(height: 50),

            _loginBtn(),

            const SizedBox(height: 20),

            _extraText(),

          ],

        ),

      ),

    );

  }




  Widget _icon() {

    return Container(
child:
        Image(image: AssetImage("Assets/images/icons8-hospital-3-30.png"),width: 100,height: 120,
          fit: BoxFit.cover,

    )
    );
  }




  Widget _inputField(String hintText, TextEditingController controller,

      {isPassword = false}) {

    var border = OutlineInputBorder(

        borderRadius: BorderRadius.circular(18),

        borderSide: const BorderSide(color: Colors.grey));




    return TextField(

      style: const TextStyle(color: Colors.black54),

      controller: controller,

      decoration: InputDecoration(

        hintText: hintText,

        hintStyle: const TextStyle(color: Colors.grey),

        enabledBorder: border,

        focusedBorder: border,

      ),

      obscureText: isPassword,

    );

  }




  Widget _loginBtn() {

    return ElevatedButton(

      onPressed: () {

        debugPrint("Username : " + usernameController.text);

        debugPrint("Password : " + passwordController.text);

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> list(), )
        );
      },

      child: const SizedBox(

          width: double.infinity,

          child: Text(

            "Sign in ",

            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 20),

          )),

      style: ElevatedButton.styleFrom(

        shape: const StadiumBorder(),

        primary: Colors.grey[200],

        onPrimary: Colors.deepOrange,

        padding: const EdgeInsets.symmetric(vertical: 16),

      ),

    );

  }




  Widget _extraText() {

    return const Text(

      "Can't access to your account?",

      textAlign: TextAlign.center,

      style: TextStyle(fontSize: 16, color: Colors.white),

    );

  }}

