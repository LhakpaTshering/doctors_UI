import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_ui/page/constant.dart';

class ambulance extends StatelessWidget {
  ambulance({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
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
          centerTitle: true,
          actions: [Icon(Icons.more_vert_outlined)],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Lottie.asset(
                            'assets/animation/Animation - 1720888002070.json'),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: const Column(
                          children: [
                            Text(
                              "Energency Ambulance",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              // overflow: TextOverflow.ellipsis,
                              " An ambulance is a vehicle used to transport people who are sick or injured.",
                              style: TextStyle(fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    children: [
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.7,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Dialouge Box"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Yes"),
                                    ),
                                    TextButton(
                                        onPressed: () {}, child: Text("No")),
                                  ],
                                );
                              });
                        },
                        child: Text(
                          "Emergency call: 112",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
