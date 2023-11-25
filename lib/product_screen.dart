import 'package:flutter/material.dart';
import 'package:project_pm/home_screen.dart';
import 'package:project_pm/cart_screen.dart';
import 'package:flutter/cupertino.dart';

class ProductWidget extends StatefulWidget {
  @override
  ProductScreen createState() => ProductScreen();
}

class ProductScreen extends State<ProductWidget> {
  double _price = 0000; // Initial price value
  int _quantity = 1; // Initial quantity value
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
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShoppingCartPage()));
                },
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              ),
              Text(
                'Cart',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
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
                    icon: Icon(Icons.person),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // First product
            Card(
              elevation: 3,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product 1 Name',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Product 1 Description',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            CupertinoButton(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (_quantity > 1) {
                                    _quantity--;
                                    _price -=
                                        10; // You can adjust the decrement value
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 8),
                            Text(
                              '\Rp. ${(_price * _quantity).toStringAsFixed(2)}',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 8),
                            CupertinoButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  _quantity++;
                                  _price += 10;
                                });
                              },
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product 2 Name',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Product 2 Description',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            CupertinoButton(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (_quantity > 1) {
                                    _quantity--;
                                    _price -= 10;
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 8),
                            Text(
                              '\Rp. ${(_price * _quantity).toStringAsFixed(2)}',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 8),
                            CupertinoButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  _quantity++;
                                  _price += 10;
                                });
                              },
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 3,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product 3 Name',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Product 3 Description',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price:',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            CupertinoButton(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  if (_quantity > 1) {
                                    _quantity--;
                                    _price -= 10;
                                  }
                                });
                              },
                            ),
                            SizedBox(width: 8),
                            Text(
                              '\Rp. ${(_price * _quantity).toStringAsFixed(2)}',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(width: 8),
                            CupertinoButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  _quantity++;
                                  _price += 10;
                                });
                              },
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReceiptItem(title: 'PPN 11%', value: 'Rp 11,000'),
                    ReceiptItem(title: 'Total belanja', value: 'Rp 123,000'),
                    ReceiptItem(
                        title: 'Total Pembayaran',
                        value: 'Rp 134,000',
                        isTotal: true),
                    SizedBox(height: 16),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Checkout'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          minimumSize: const Size(double.infinity, 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

void main() {
  runApp(
    MaterialApp(
      home: ProductWidget(),
    ),
  );
}

class ReceiptItem extends StatelessWidget {
  final String title;
  final String value;
  final bool isTotal;

  ReceiptItem({required this.title, required this.value, this.isTotal = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(color: isTotal ? Colors.red : Colors.black),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
