import 'package:flutter/material.dart';
import 'package:practice_ui/page/constant.dart';

class MadicineStore_page extends StatelessWidget {
  List medicine = [];

  MadicineStore_page({super.key, required this.medicine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                  text: "Time",
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "+",
                ),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.teal,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Container(
                      height: 200,
                      padding: EdgeInsets.only(top: 25),
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: Column(
                        children: [
                          Text(
                            "Keep safe",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'There is nothing more important than our good health that is our principal capital asset.!',
                            style: myStyle(22, Colors.white, FontWeight.bold),
                          ),
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
            Text(
              'Medicine Store',
              style: myStyle(40, secondaryColor, FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 500,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: medicine.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 25),
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image:
                                      AssetImage('${medicine[index].imgURL}'),
                                ),
                              ),
                            ),
                            Text(
                              '${medicine[index].name}',
                              style:
                                  myStyle(20, secondaryColor, FontWeight.bold),
                            ),
                            Text(
                              '${medicine[index].weight}',
                              style:
                                  myStyle(20, secondaryColor, FontWeight.bold),
                            ),
                            Text(
                              '\$${medicine[index].cost}',
                              style:
                                  myStyle(20, secondaryColor, FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Card(
                              elevation: 10,
                              child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Card',
                                      style: myStyle(
                                          16, Colors.white, FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.stars,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
