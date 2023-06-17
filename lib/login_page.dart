import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginpage.png.png",
              fit: BoxFit.contain,
              height: 150.0,
            ),
            SizedBox(
              height: 28.0,
            ),
            Text(
              "welcome to our page $name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "password"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changebutton = true;
                      });
                      await Future.delayed(Duration(seconds: 3));
                      Navigator.pushNamed(context, Myroute.homeRoute);
                    },

                    child: AnimatedContainer(
                      duration: Duration(seconds: 2),
                      width: changebutton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changebutton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 50 : 8)),
                    ),
                    //ElevatedButton(
                    //onPressed: () {
                    //Navigator.pushNamed(context, Myroute.homeRoute);
                    //},
                    //child: Text("Login"),
                    //style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
