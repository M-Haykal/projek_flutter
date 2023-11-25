import 'package:flutter/material.dart';
import 'package:project_pm/cart_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

void main() {
  runApp(const AddData());
}

class AddData extends StatelessWidget {
  const AddData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Nambah(
        title: 'Nambah Data',
      ),
    );
  }
}

class Nambah extends StatefulWidget {
  const Nambah({super.key, required this.title});
  final String title;

  @override
  State<Nambah> createState() => Input();
}

class Input extends State<Nambah> {
  String _nama = '';
  String _harga = '';
  String _kategori = '';
  String _image = '';

  final List<String> items = ['All', 'Makanan', 'Minuman'];
  String? selectedValue;

  final ImagePicker _imagePicker = ImagePicker();

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
                  MaterialPageRoute(builder: (context) => ShoppingCartPage()),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan Nama Produk',
                labelText: 'Nama Produk',
              ),
              onChanged: (String value) {
                setState(() {
                  _nama = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan Harga',
                labelText: 'Harga',
              ),
              onChanged: (String value) {
                setState(() {
                  _harga = value;
                });
              },
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(  
                isExpanded: true,
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value;
                    _kategori = value ?? '';
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 40,
                  width: 140,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final pickedFile =
                    await _imagePicker.getImage(source: ImageSource.gallery);

                if (pickedFile != null) {
                  setState(() {
                    _image = pickedFile.path;
                  });
                }
              },
              child: Text('Select Image'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Nama Produk: $_nama'),
                          Text('Harga Barang: $_harga'),
                          Text('Kategori Barang: $_kategori'),
                          Text('Image Path: $_image')
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
