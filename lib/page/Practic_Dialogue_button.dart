import 'package:flutter/material.dart';

class PracticDialogueButton extends StatelessWidget {
  const PracticDialogueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialouge Box"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.8,
              color: Colors.deepOrange,
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
                          TextButton(onPressed: () {}, child: Text("No")),
                        ],
                      );
                    });
              },
              child: Text(
                "Show Dialouge",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
