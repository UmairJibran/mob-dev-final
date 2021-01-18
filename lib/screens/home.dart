import 'package:final_paper/components/custom_drawer.dart';
import 'package:final_paper/screens/ad_detail.dart';
import 'package:final_paper/screens/login.dart';
import 'package:flutter/material.dart';

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
            var name = "Honda CD70";
            var url =
                "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Honda_cd_70.jpg/300px-Honda_cd_70.jpg";
            var price = '50000';
            var location = 'Peshawar';
            var description =
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua et dolore magna aliqu ";
            var model = "2021";
            var date = "2 jan 2021";
            var mobile = "03120919647";
            var bikeNumber = "FE-2193";
            var views = 5000;
            return ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(
                  AdDetails.pageRoute,
                  arguments: {
                    "name": name,
                    "description": description,
                    "price": price,
                    "url": url,
                    "location": location,
                    "model": model,
                    "date": date,
                    "mobile": mobile,
                    "views": views,
                    "bikeNumber": bikeNumber,
                  },
                );
              },
              title: Text(name),
              leading: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                child: Image.network(url),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "PKR: ${price}",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                  Text("${location}"),
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
          itemCount: 20, //TODO: replace with length of the items
        ),
      ),
    );
  }
}
