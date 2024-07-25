import 'package:flutter/material.dart';
import 'package:practice_ui/model/Hospital_Model.dart';
import 'package:practice_ui/page/constant.dart';

class HospitalDetailPage extends StatelessWidget {
  HospitalModel Hospitalmodel;
  HospitalDetailPage({super.key, required this.Hospitalmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      /// body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.lightBlue,
              ),
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    color: Colors.grey,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(Hospitalmodel.imgUrl),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text('${Hospitalmodel.HospitalName}',
                      style: myStyle(25, Colors.black, FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text('Thimphu:  ${Hospitalmodel.Location}',
                      style: myStyle(20, Colors.black, FontWeight.bold)),
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
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text('${Hospitalmodel.AboutHospital}',
                        style: myStyle(20, Colors.black, FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40),
                    child: Center(
                      child: MaterialButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        height: MediaQuery.of(context).size.height * 0.07,
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        onPressed: () {},
                        child: Text(
                          'Click here',
                          style: myStyle(20, Colors.black, FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
