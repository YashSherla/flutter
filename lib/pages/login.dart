import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroutes);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hey.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: " Enter Username", labelText: "Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Username is not entered";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: " Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " Password is not entered";
                          } else if (value.length < 6) {
                            return "Password should atleast 6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),
                        color: Colors.amber,
                        child: InkWell(
                          splashColor: Colors.red,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(Icons.done, color: Colors.white)
                                : Text(
                                    "Login",
                                    style: TextStyle(color: Colors.black),
                                  ),
                          ),
                        ),
                      )
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.pushNamed(context, MyRoutes.homeroutes);
                      //     },
                      //     child: Text("login"),
                      //     style:
                      //         TextButton.styleFrom(minimumSize: Size(150, 40))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
