import 'dart:io';

import 'package:animations/animations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hiRest/Delivary.dart';
import 'package:hiRest/Information.dart';
import 'package:hiRest/RestMenu.dart';
FirebaseMessaging messaging;
class HiRestMain extends StatefulWidget {
 
  @override
  _HiRestMainState createState() => _HiRestMainState();
}

class _HiRestMainState extends State<HiRestMain> {
  @override
  void initState() {
    getToken();
    super.initState();
  }
   Future<void> getToken()async{
 
  
}
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    print(null == null);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()async{ messaging = FirebaseMessaging();
     await  messaging.subscribeToTopic('Orders');
  String token = await messaging.getToken();
  print(token);},),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: SelectableText(
          'Hi Resturant',
          style: TextStyle(color: Colors.red),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OpenContainer(
              closedColor: Colors.transparent,
              closedElevation: 0,
              closedBuilder: (context, __) {
                return Container(
                    width: 200,
                    child: FloatingActionButton.extended(
                      isExtended: true,
                      icon: Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                      ),
                      heroTag: null,
                      backgroundColor: Colors.red,
                      onPressed: null,
                      label: Text('Food Menu',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ));
              },
            openBuilder: (context,__){
              return Menu();
            },),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0, top: 18),
              child: OpenContainer(
              closedColor: Colors.transparent,
              closedElevation: 0,
              closedBuilder: (context, __) {
                return Container(
                    width: 200,
                    child: FloatingActionButton.extended(
                      isExtended: true,
                      icon: Icon(
                        Icons.restaurant_menu,
                        color: Colors.white,
                      ),
                      heroTag: null,
                      backgroundColor: Colors.red,
                      onPressed: null,
                      label: Text('Delivary Service',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ));
              },
            openBuilder: (context,__){
              return Delivary();
            },),
            ),
            Container(
                width: 200,
                child: FloatingActionButton.extended(
                  icon: Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                  heroTag: null,
                  backgroundColor: Colors.red,
                  onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Information()))},
                  label: Text(
                    'Resturant Info',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
