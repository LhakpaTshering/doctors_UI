import 'package:flutter/material.dart';
import 'package:practice_ui/page/constant.dart';

class Doctor_profile extends StatelessWidget {
  const Doctor_profile({super.key, required list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
                style: myStyle(26, primaryColor, FontWeight.bold),
                children: [
                  TextSpan(
                    text: "Doc",
                  ),
                  TextSpan(
                      text: "Time",
                      style: myStyle(26, secondaryColor, FontWeight.bold)),
                  TextSpan(
                    text: "+",
                    style: myStyle(26, primaryColor, FontWeight.bold),
                  ),
                ]),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/my image2.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Card(
            elevation: 15,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name:",
                          style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Age:",
                          style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Disease:",
                          style: myStyle(22, Colors.black, FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.phone_bluetooth_speaker,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.email_outlined,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Lhakpa Tshering Singer",
                          style: myStyle(21, Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          " 22",
                          style: myStyle(21, Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "  Skin Cancer",
                          style: myStyle(21, Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Gyelposhing",
                          style: myStyle(21, Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "+99 77318488",
                          style: myStyle(21, Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "lhakpa63hsf@gmail.com",
                          style: myStyle(21, Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
