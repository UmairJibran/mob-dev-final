import 'package:flutter/material.dart';

class AdDetails extends StatelessWidget {
  static final String pageRoute = "/ad_details";
  String name,
      description,
      price,
      url,
      location,
      model,
      date,
      mobile,
      bikeNumber;
  int views;
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments as Map;
    name = args['name'];
    description = args['description'];
    price = args['price'];
    url = args['url'];
    location = args['location'];
    model = args['model'];
    date = args['date'];
    mobile = args['mobile'];
    views = args['views'];
    bikeNumber = args['bikeNumber'];
    return Scaffold(
      appBar: AppBar(title: Text(name), centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                url,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Price: PKR $price",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Model: $model",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Bike Number: $bikeNumber",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Date: $date",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mobile: $mobile",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Views: $views",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Description: $description",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: FlatButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "Purchase",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //TODO: redirect to purchase page
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
