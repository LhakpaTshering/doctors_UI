import 'package:flutter/material.dart';
import 'package:practice_ui/Data/Hospital_Data.dart';
import 'package:practice_ui/page/Hospital_Details.dart';
import 'package:practice_ui/page/constant.dart';

class Hospital_Page extends StatelessWidget {
  Hospital_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(26, secondaryColor, FontWeight.bold),
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
          padding: EdgeInsets.only(top: 15),
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Center(
                  child: Text(
                'Hospital',
                style: myStyle(30, primaryColor, FontWeight.bold),
              )),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allData.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => HospitalDetailPage(
                                Hospitalmodel: allData[index],
                              )));
                    },
                    child: Card(
                      color: Color(0xff284b63),
                      shadowColor: Colors.blueAccent,
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 250,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${allData[index].imgUrl}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              child: Text(
                                "${allData[index].HospitalName}",
                                style:
                                    myStyle(20, Colors.white, FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              "${allData[index].Location}",
                              style: myStyle(
                                15,
                                Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
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
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
