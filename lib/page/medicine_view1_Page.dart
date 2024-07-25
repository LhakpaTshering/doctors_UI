import 'package:flutter/material.dart';
import 'package:practice_ui/model/medicine_Model.dart';

import 'constant.dart';

class MedicineDetialPage extends StatelessWidget {
  MedicineClass medicineClass;
  MedicineDetialPage({super.key, required this.medicineClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              // style: myStyle(26, primaryColor, FontWeight.bold),
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

      /// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 703,
              decoration: BoxDecoration(
                color: Color(0xff284b63),
              ),
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    color: Colors.white,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.20,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(medicineClass.imgUrl),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('${medicineClass.name}',
                      style: myStyle(25, Colors.white, FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Doctor Name:  ${medicineClass.docName}',
                      style: myStyle(20, Colors.white)),
                  SizedBox(
                    height: 25,
                  ),
                  Text('Open from:  ${medicineClass.closing}',
                      style: myStyle(20, Colors.white)),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('${medicineClass.aboutShop}',
                      style: myStyle(18, Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
