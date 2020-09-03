import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hiRest/MenuItem.dart';

class Delivary extends StatefulWidget {
  @override
  _DelivaryState createState() => _DelivaryState();
}



Future<List<MenuItem>> getMenu() async {
 
  QuerySnapshot snapshot =
      await FirebaseFirestore.instance.collection('FoodMenu').get();

  
  return snapshot.docs
      .map((e) => MenuItem(menu: FoodMenu(
          image: e.data()['image'],
          name: e.data()['Name'],
          price: e.data()['Price'])),)
      .toList();
}

class _DelivaryState extends State<Delivary> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
              child: TabBar(
                tabs: [
                Text('Pizaa'),
                Text('West Foods')
                ],
              ),
      ),
    );
  }
}

class FoodMenu {
  final String name;
  final int price;
  final String image;
  
  MenuItem item;

  FoodMenu({@required this.image, @required this.name, @required this.price});
 
Widget menu(){
item = MenuItem(menu: this,);
return item;
}
  
  
}


  // FutureBuilder<List<MenuItem>>(
  //         future: getMenu(),
  //         builder: (context, snapshot) {
  //           if (!snapshot.hasData) {
  //                 return Center(
  //                   child: CircularProgressIndicator(
  //                     strokeWidth: 3,
  //                   ),
  //                 );
  //           } else {
  //                 List<MenuItem> menu = snapshot.data;
             
  //                 return Center(
  //                   child: Container(
  //                     alignment: Alignment.center,
  //                     width: size.width > 600 ? 500 : size.width,
  //                     height: double.infinity,
  //                     child: ListView(
  //                      children: menu.map((e) => e).toList(),
  //                     ),
  //                   ),
  //                 );
  //           }
  //         },
  //       ),