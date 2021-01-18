import 'package:final_paper/screens/orders.dart';
import 'package:final_paper/screens/update_profile.dart';
import 'package:final_paper/screens/your_ads.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    child: Image.network(
                      "https://umairjibran.github.io/assets/img/logo.jpg",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Umair Jibran",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "umairjibran7@gmail.com",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Post an ad"),
            onTap: () {
              // TODO: add functionality call
            },
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text("Profile"),
            onTap: () {
              Navigator.of(context).pushNamed(UpdateProfile.pageRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Your Ads"),
            onTap: () {
              Navigator.of(context).pushNamed(YourAds.pageRoute);
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text("Orders"),
            onTap: () {
              Navigator.of(context).pushNamed(Orders.pageRoute);
            },
          ),
        ],
      ),
    );
  }
}
