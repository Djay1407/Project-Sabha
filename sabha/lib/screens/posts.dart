import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int votes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Issues"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        color: Colors.red,
                        height: 300.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total $votes votes",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w400),
                            ),
                            OutlineButton(
                              onPressed: () {
                                setState(() {
                                  votes++;
                                });
                              },
                              child: Text(
                                "Upvote",
                                style: TextStyle(
                                    fontSize: 20.0, fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
