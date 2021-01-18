import 'package:flutter/material.dart';

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
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Honda CD-70"),
            leading: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Honda_cd_70.jpg/300px-Honda_cd_70.jpg",
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PKR: 5000",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text("Pending"),
              ],
            ),
          ),
          ListTile(
            title: Text("Honda CD-70"),
            leading: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Honda_cd_70.jpg/300px-Honda_cd_70.jpg",
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PKR: 5000",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text("Rejected"),
              ],
            ),
          ),
          ListTile(
            title: Text("Honda CD-70"),
            leading: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Honda_cd_70.jpg/300px-Honda_cd_70.jpg",
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PKR: 5000",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text("Accepted"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
