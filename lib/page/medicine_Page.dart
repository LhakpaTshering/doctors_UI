import 'package:flutter/material.dart';
import 'package:practice_ui/Data/Medicine_Store_Data.dart';
import 'package:practice_ui/Data/medicine_Data.dart';
import 'package:practice_ui/model/medicine_Model.dart';
import 'package:practice_ui/page/Medicine_Store_page.dart';
import 'package:practice_ui/page/constant.dart';

class MedicinePage extends StatelessWidget {
  const MedicinePage({super.key, required MedicineClass list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
        child: Center(
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allmedicinedata.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.99,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => MadicineStore_page(
                                medicine: allMedData[index],
                              )));
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Card(
                        shadowColor: Colors.white,
                        elevation: 7,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${allmedicinedata[index].imgUrl}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "${allmedicinedata[index].name}",
                              style: myStyle(24, Colors.black, FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${allmedicinedata[index].Location}",
                              style: myStyle(
                                20,
                                Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              height: 45,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: Colors.green,
                              ),
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
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.white,
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
