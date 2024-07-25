import 'package:flutter/material.dart';
import 'package:practice_ui/Data/covid%20Data.dart';
import 'package:practice_ui/page/constant.dart';

class CovidHomePage extends StatelessWidget {
  const CovidHomePage({super.key});

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                'Death history of Covid-19',
                style: myStyle(26, primaryColor, FontWeight.bold),
              )),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: allCovidDoc.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    // color: Colors.grey,
                    shadowColor: Colors.blueAccent,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                                image: DecorationImage(
                                    image: AssetImage(
                                      "${allCovidDoc[index].imgUrl}",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${allCovidDoc[index].country}",
                            style: myStyle(30, Colors.black, FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Infected: ${allCovidDoc[index].infected}",
                            style: myStyle(
                              22,
                              Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Death: ${allCovidDoc[index].death}",
                            style: myStyle(
                              22,
                              Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Center(
                            child: MaterialButton(
                              color: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              height: MediaQuery.of(context).size.height * 0.07,
                              minWidth: MediaQuery.of(context).size.width * 0.8,
                              onPressed: () {},
                              child: Text(
                                'Click Here',
                                style:
                                    myStyle(20, Colors.white, FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
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
