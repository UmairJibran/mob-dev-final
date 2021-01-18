import 'package:flutter/material.dart';

import '../dummy.dart';

class YourAds extends StatelessWidget {
  static final String pageRoute = "/page_route";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Ads",
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(myAds[index]["name"]),
            leading: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Image.network(
                myAds[index]["url"],
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  myAds[index]["price"],
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 14,
                  ),
                ),
                Text(myAds[index]["status"])
              ],
            ),
          );
        },
        itemCount: myAds.length,
      ),
    );
  }
}
