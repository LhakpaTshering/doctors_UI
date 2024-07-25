import 'package:flutter/material.dart';
import 'package:practice_ui/Data/ambulance_Data.dart';
import 'package:practice_ui/Data/doctorData.dart';
import 'package:practice_ui/Data/medicine_Data.dart';
import 'package:practice_ui/page/Doctor_Details.dart';
import 'package:practice_ui/page/Hospital_Page.dart';
import 'package:practice_ui/page/ambulance_page.dart';
import 'package:practice_ui/page/constant.dart';
import 'package:practice_ui/page/covid_Page.dart';
import 'package:practice_ui/page/doctor_Abutton_page.dart';
import 'package:practice_ui/page/medicine_Page.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key, required list});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                /// App Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    RichText(
                      text: TextSpan(
                          style: myStyle(20, primaryColor, FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "Doc",
                            ),
                            TextSpan(
                                text: "Time",
                                style: myStyle(
                                    20, secondaryColor, FontWeight.bold)),
                            TextSpan(
                              text: "+",
                            ),
                          ]),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (builder) => Doctor_profile(
                                    list: alldata,
                                  )),
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/doctors.jpg'))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// Hero Area
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  // width: double.infinity,
                  child: Row(
                    children: [
                      /// Doctors Image
                      Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage("assets/images/doctor3.png"),
                              fit: BoxFit.cover),
                        ),
                      ),

                      /// Hero Texts
                      Container(
                        width: MediaQuery.of(context).size.width * 0.47,
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stay Healthy!",
                              style: myStyle(25, Colors.black, FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              "Stay Safe!",
                              style: myStyle(22, Colors.black, FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              "We provide good services to our patients. We are open 24/7. Do contact us any time you need.",
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.video_call,
                                    color: primaryColor,
                                    size: 35,
                                  ),
                                  Text(
                                    "   Meet Online",
                                    style: myStyle(
                                        18, secondaryColor, FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                /// Text for services
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                /// Animated Icons
                Card(
                  elevation: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (builder) => ambulance()),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/icons/ambulance.gif"),
                              Text("Ambulances"),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => CovidHomePage()));
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/icons/virus.gif"),
                              Text("Covid-19"),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) => Hospital_Page()));
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/icons/hospital.gif"),
                              Text("Hospitals"),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (builder) =>
                                    MedicinePage(list: allmedicinedata[0])));
                          },
                          child: Column(
                            children: [
                              Image.asset("assets/icons/medicine.gif"),
                              Text("Medicines"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                /// Text of GridView
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated Doctors",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: alldata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (builder) => DoctorDetails(
                                    doctorModel: alldata[index],
                                  )),
                        );
                      },
                      child: Card(
                        elevation: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Hero(
                                  tag: "${allData[index].name}",
                                  child: CircleAvatar(
                                    maxRadius: 60,
                                    backgroundImage:
                                        AssetImage("${alldata[index].imgUrl}"),
                                  ),
                                ),
                                Text(
                                  "${alldata[index].name}",
                                  style: myStyle(
                                      22, Colors.black, FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${alldata[index].speciality}",
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
        ),
      ),
    );
  }
}
