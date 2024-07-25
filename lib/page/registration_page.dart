import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _rePassword = TextEditingController();

  bool isObs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background image.jpg"))),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  /// First Name
                  TextFormField(
                    controller: _firstName,
                    // maxLines: 5,
                    // maxLength: 200,
                    // readOnly: true,
                    decoration: InputDecoration(
                      label: Text(
                        "First Name",
                        style: TextStyle(fontSize: 15),
                      ),
                      hintText: "First Name",
                      hintStyle: TextStyle(color: Colors.black),
                      // hintStyle: TextStyle(color: Colors.purple)
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      // suffix: Icon(Icons.search),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter first name";
                      }
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  /// Last Name
                  TextFormField(
                    controller: _lastName,
                    decoration: InputDecoration(
                      label: Text(
                        "Last Name",
                        style: TextStyle(fontSize: 15),
                      ),
                      hintText: "Last Name",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      // suffix: Icon(Icons.search),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter last name";
                      }
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  /// Email
                  TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                      label: Text(
                        "Email",
                        style: TextStyle(fontSize: 15),
                      ),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      suffix: Icon(Icons.email_outlined),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter email";
                      }
                      if (!value.contains("@")) {
                        return "Enter correct email";
                      }
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  /// Password
                  TextFormField(
                    controller: _password,
                    obscureText: isObs,
                    decoration: InputDecoration(
                      label: Text(
                        "Password",
                        style: TextStyle(fontSize: 15),
                      ),
                      hintText: "Enter your password",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      suffix: IconButton(
                        onPressed: () {
                          isObs = !isObs;
                          setState(() {});
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 digits/char";
                      }
                    },
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  /// Re-password
                  TextFormField(
                    controller: _rePassword,
                    obscureText: isObs,
                    decoration: InputDecoration(
                      label: Text(
                        "Re enter the Password",
                        style: TextStyle(fontSize: 15),
                      ),
                      hintText: "Re enter your password",
                      hintStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isObs = !isObs;
                          });
                        },
                        icon: Icon(Icons.visibility),
                      ),
                      // suffixIcon: Icon(Icons.abc),
                      // prefix: Icon(Icons.abc),
                      // prefixIcon: Icon(Icons.abc)
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password";
                      }
                      if (value != _password) {
                        return "Password does not match";
                      }
                    },
                  ),

                  Container(
                    margin: EdgeInsets.all(15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Forgotten Password?",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
