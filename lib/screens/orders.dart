import 'package:final_paper/dummy.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  static final String pageRoute = "/orders";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myOrders.length,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(myOrders[index]["name"]),
            leading: Image.network(myOrders[index]["url"]),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PKR: ${myOrders[index]['price']}",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
                Text("Pending"),
              ],
            ),
          );
        },
      ),
    );
  }
}
