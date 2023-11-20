import 'package:flutter/material.dart';
import 'package:project_pm/home_screen.dart';
import 'package:project_pm/cart_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
                child: PopupMenuButton<String>(
                  onSelected: (String result) {
                    switch (result) {
                      case 'option1':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                        break;
                      case 'option2':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShoppingCartPage()),
                        );
                        break;
                      case 'option3':
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Text('hayy')),
                        );
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'Product',
                      child: IconButton(
                        icon: Icon(Icons.home_outlined),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'home',
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart_outlined),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoppingCartPage()),
                          );
                        },
                      ),
                    ),
                    PopupMenuItem<String>(
                      value: 'keranjang',
                      child: IconButton(
                        icon: Icon(Icons.add_chart),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Text('hayy')),
                          );
                        },
                      ),
                    ),
                  ],
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                )),
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
        body: Row(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:  
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTacDKsc82IYiMQSN_DPenpq1RzGRnyAlqrFw&usqp=CAU")
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(),
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16.0, top: 20.0),
                    child: Text("All food",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    height: 250,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width / 2 - 32,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmNLySWMAC-KuBhNTDe-IboFX5VIKziefYWg&usqp=CAU',
                                height: 100,
                                width: 130,
                              ),
                              Text("Burger medium",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text("Rp. 50.000.00",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.grey)),
                            ],
                          ),
                        ),
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width / 2 - 32,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Living room",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold)),
                              Text("2 Lights",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.orange)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Row(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width / 2 - 32,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Kitchen",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold)),
                              Text("5 Lights",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.orange)),
                            ],
                          ),
                        ),
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width / 2 - 32,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // place here your image
                              Text("Bathroom",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold)),
                              Text("1 Lights",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.orange)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    child: Row(
                      children: [
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width / 2 - 32,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // place here your image
                              Text("Bed room",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold)),
                              Text("4 Lights",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.orange)),
                            ],
                          ),
                        ),
                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width / 2 - 32,
                          margin: EdgeInsets.all(16.0),
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            boxShadow: [
                              // this is the shadow of the card
                              BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // place here your image
                              Text("Living room",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.brown,
                                      fontWeight: FontWeight.bold)),
                              Text("2 Lights",
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
