import 'package:flutter/material.dart';
import 'package:project_pm/home_screen.dart';

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
                  MaterialPageRoute(builder: (context) => Home()),
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
      body:  ListView(
        children: [
          ListTile(
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmNLySWMAC-KuBhNTDe-IboFX5VIKziefYWg&usqp=CAU',
              height: 100,
              width: 100,
            ),
            title: Text('Burger King Medium'),
            subtitle: Text('Rp 50,000'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink,
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmNLySWMAC-KuBhNTDe-IboFX5VIKziefYWg&usqp=CAU',
              height: 100,
              width: 100,
            ),
            title: Text('Tahu Bakso'),
            subtitle: Text('Rp 40,000'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.pink,
              onPressed: () {},
            ),
          ),
          ListTile(
            leading: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmNLySWMAC-KuBhNTDe-IboFX5VIKziefYWg&usqp=CAU',
              height: 100,
              width: 100,
            ),
            title: Text('Burger King Small'),
            subtitle: Text('Rp 35,000'),
            trailing: IconButton(
              icon: Icon(Icons.delete,),
              color: Colors.pink,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
