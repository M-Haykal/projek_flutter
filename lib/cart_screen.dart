import 'package:flutter/material.dart';
import 'package:project_pm/home_screen.dart';
import 'package:project_pm/adddata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // iconTheme: IconThemeData(
        //   color: Colors.black, // <-- SEE HERE
        // ),
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home(),),
                );
              },
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(Icons.person),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: 100,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.blue,
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Row(
                  children: [
                    Text(
                      "Add Data",
                      style: TextStyle(
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white, 
                    ),
                    SizedBox(width: 8),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddData()),
                  );
                },
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Burger King Medium",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text("Rp. 50.000.00"),
            leading: Image.network(
                "https://cdn-icons-png.flaticon.com/512/5787/5787016.png"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink,
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Juice Orange",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text("Rp. 15.000.00"),
            leading: Image.network(
                "https://cdn-icons-png.flaticon.com/512/6190/6190582.png"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink,
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Burger King Small",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text("Rp. 30.000.00"),
            leading: Image.network(
                "https://cdn-icons-png.flaticon.com/512/5787/5787016.png"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
