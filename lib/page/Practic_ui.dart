import 'package:flutter/material.dart';
import 'package:practice_ui/Data/practic_ui_Data.dart';
import 'package:practice_ui/page/constant.dart';

class PracticUi extends StatelessWidget {
  const PracticUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: RichText(
            text: TextSpan(
          children: [
            TextSpan(
                text: ("Covid"),
                style: myStyle(27, primaryColor, FontWeight.bold)),
            TextSpan(
                text: ("19"), style: myStyle(27, Colors.cyan, FontWeight.bold)),
            TextSpan(
                text: ("UI"),
                style: myStyle(27, primaryColor, FontWeight.bold)),
          ],
        )),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        actions: [
          Row(
            children: [
              Container(
                width: 40,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Bhutanese doctor1.jpg")),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: secondaryColor),
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/bhutanese doctor3.jpg")),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.47,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I hate Virus!",
                        style: myStyle(25, Colors.black, FontWeight.bold),
                        maxLines: 1,
                      ),
                      Text(
                        "Keep Safe!",
                        style: myStyle(22, Colors.black, FontWeight.bold),
                        maxLines: 1,
                      ),
                      Text(
                        "Coronavirus disease 2019 is a contagious disease caused by the coronavirus SARS-CoV-2.",
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.phone_bluetooth_speaker,
                            color: primaryColor,
                            size: 35,
                          ),
                          Text(
                            "   Meet Online",
                            style: myStyle(18, secondaryColor, FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Carefully",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "  See all",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Card(
              elevation: 30,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/icons/ambulance.gif"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/icons/hospital.gif"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/icons/medicine.gif"),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/icons/virus.gif"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Read Lough",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: allDetails.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 5,
                  childAspectRatio: 0.7),
              itemBuilder: (context, index) {
                return InkWell(
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //     // MaterialPageRoute(
                  //     //     builder: (builder) => PracticUi(
                  //     //       practicModel: allDetails[index],
                  //     //     )),
                  //   ),
                  // },
                  child: Card(
                    elevation: 15,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 60,
                              backgroundImage:
                                  AssetImage("${allDetails[index].imgurl}"),
                            ),
                            Container(
                              child: Text(
                                "${allDetails[index].name}",
                                style:
                                    myStyle(22, Colors.black, FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              "${allDetails[index].rating}",
                              style: myStyle(
                                16,
                                Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
