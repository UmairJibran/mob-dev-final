import 'package:final_paper/components/custom_drawer.dart';
import 'package:final_paper/screens/ad_detail.dart';
import 'package:final_paper/screens/login.dart';
import 'package:flutter/material.dart';

import '../dummy.dart';

class Home extends StatefulWidget {
  static final String pageRoute = "/home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(Login.pageRoute);
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: ListView.builder(
          itemBuilder: (_, index) {
            return ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AdDetails.pageRoute,
                  arguments: {
                    "name": ads[index]["name"],
                    "description": ads[index]["description"],
                    "price": ads[index]["price"],
                    "url": ads[index]["url"],
                    "location": ads[index]["location"],
                    "model": ads[index]["model"],
                    "date": ads[index]["date"],
                    "mobile": ads[index]["mobile"],
                    "views": ads[index]["views"],
                    "bikeNumber": ads[index]["bikeNumber"],
                  },
                );
              },
              title: Text(ads[index]["name"]),
              leading: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.width * 0.15,
                child: Image.network(
                  ads[index]["url"],
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "PKR: ${ads[index]['price']}",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                  Text("${ads[index]['location']}"),
                ],
              ),
              trailing: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
                child: FlatButton(
                  onPressed: () {
                    //TODO: navigate to add screen with correct ad
                  },
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Details",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: ads.length,
        ),
      ),
    );
  }
}
