import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:elite/screenreducer.dart';

class graph extends StatefulWidget
{
  @override
  Graph createState() => Graph();
}

class Graph extends State<graph>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report",
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.bold
        ),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: <Widget>[
              
            ],
          ),
        ),

      ),
    );
  }




//  int Total_Price = 0;
//  var data = [0.0, 1.0, 3.0, 4.0, 5.0 ,7.0,4.0];
////   Calcget(List<DocumentSnapshot>  documents)
////  {
////    for(DocumentSnapshot document in documents )
////    {
////      Total_Price = Total_Price + int.parse(document.data['price']);
////    }
////return Total_Price;
////  }
//  @override
//  Widget build(BuildContext context) {
//    return new StreamBuilder<QuerySnapshot>(
//        stream:
//        Firestore.instance.collection("receipts_for_Mpesa").where('Hotelname',isEqualTo: 'Freg Hotel').snapshots(),
//        builder: (BuildContext context,
//            AsyncSnapshot<QuerySnapshot>snapshot) {
//          if (snapshot.hasError)
//          {
//            return Center(
//                child:Text("Error occured..")
//            );
//          }
//          switch (snapshot.connectionState) {
//            case ConnectionState.waiting:
//              return Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  Container(
//                    height:screenHeight(context,dividedBy: 1),
//                    child: Center(
//                      child: CircularProgressIndicator(),
//                    ),
//                  )
//                ],
//              );
//            default:
//              return Scaffold(
//                appBar: AppBar(
//                  title: Text("Statistics",
//                    style: TextStyle(
//                        color: Colors.white,
//                        fontSize: 20
//                    ),
//                  ),
//                  centerTitle: true,
//                  backgroundColor:Color(0xff25242A),
//                ),
//                body: SingleChildScrollView(
//                    scrollDirection: Axis.vertical,
//                    child:Container(
//                      child: Column(
//                        children: <Widget>[
//                          Card(
//                              semanticContainer: true,
//                              clipBehavior: Clip.antiAliasWithSaveLayer,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(10),
//                              ),
//                              elevation: 12.0,
//                              child:Column(
//                                children: <Widget>[
//                                  //Calcget(snapshot.data.documents),
//                                  Text("Mpesa",
//                                    style: TextStyle(
//                                        color: Colors.black,
//                                        fontSize: 23,
//                                        fontWeight: FontWeight.bold
//                                    ),
//                                  ),
//                                  Divider(),
//                                  Text("Total money:",
//                                    style: TextStyle(
//                                        color: Colors.black,
//                                        fontSize: 28,
//                                        fontWeight: FontWeight.bold
//                                    ),
//                                  ),
//                                  SizedBox(height: 10),
//                                  Text("\$ 40000",
//                                    style: TextStyle(
//                                        color: Colors.black,
//                                        fontSize: 28,
//                                        fontWeight: FontWeight.bold
//                                    ),
//                                  ),
//                                  SizedBox(height: 10),
//                                  Padding(padding: EdgeInsets.only(left:4.0, right: 14.0, top: 2.0),
//                                    child: Sparkline(
//                                      data: data,
//                                      pointsMode: PointsMode.last,
//                                      pointSize: 8.0,
//                                      fillMode: FillMode.below,
//                                      fillGradient:  new LinearGradient(
//                                        begin: Alignment.topCenter,
//                                        end: Alignment.bottomCenter,
//                                        colors: [Color(0xff25242A),Color(0xffE2E3F4)],
//                                      ),
//                                    ),
//                                  )
//                                ],
//                              )
//                          ),SizedBox(height: 10),
//                          Card(
//                              semanticContainer: true,
//                              clipBehavior: Clip.antiAliasWithSaveLayer,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(10),
//                              ),
//                              elevation: 2.0,
//                              child:Column(
//                                children: <Widget>[
//                                  //Calcget(snapshot.data.documents),
//                                  ListTile(
//                                    title: Text("Todays' Mpesa Amount:",
//                                      style: TextStyle(
//                                          color: Colors.black,
//                                          fontSize: 23,
//                                          fontWeight: FontWeight.bold
//                                      ),
//                                    ),
//                                    trailing: Text("\$400",
//                                      style: TextStyle(
//                                          color: Colors.green,
//                                          fontSize: 17,
//                                          fontWeight: FontWeight.bold
//                                      ),),
//                                  ),
//                                ],
//                              )
//                          ),
//                          SizedBox(height:7),
//                          Card(
//                              semanticContainer: true,
//                              clipBehavior: Clip.antiAliasWithSaveLayer,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(10),
//                              ),
//                              elevation: 2.0,
//                              child:Column(
//                                children: <Widget>[
//                                  //Calcget(snapshot.data.documents),
//                                  ListTile(
//                                    title: Text("Todays' total number of Orders:",
//                                      style: TextStyle(
//                                          color: Colors.black,
//                                          fontSize: 23,
//                                          fontWeight: FontWeight.bold
//                                      ),
//                                    ),
//                                    trailing: Text("40",
//                                      style: TextStyle(
//                                          color: Colors.green,
//                                          fontSize: 17,
//                                          fontWeight: FontWeight.bold
//                                      ),),
//                                  ),
//                                ],
//                              )
//                          ),
//                          SizedBox(height:7),
//                          Card(
//                              semanticContainer: true,
//                              clipBehavior: Clip.antiAliasWithSaveLayer,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(10),
//                              ),
//                              elevation: 2.0,
//                              child:Column(
//                                children: <Widget>[
//                                  //Calcget(snapshot.data.documents),
//                                  ListTile(
//                                    title: Text("Booked Accomodation rooms:",
//                                      style: TextStyle(
//                                          color: Colors.black,
//                                          fontSize: 23,
//                                          fontWeight: FontWeight.bold
//                                      ),
//                                    ),
//                                    trailing: Text("0",
//                                      style: TextStyle(
//                                          color: Colors.green,
//                                          fontSize: 17,
//                                          fontWeight: FontWeight.bold
//                                      ),),
//                                  ),
//                                ],
//                              )
//                          ),
//                          SizedBox(height:7),
//                          Card(
//                              semanticContainer: true,
//                              clipBehavior: Clip.antiAliasWithSaveLayer,
//                              shape: RoundedRectangleBorder(
//                                borderRadius: BorderRadius.circular(10),
//                              ),
//                              elevation: 2.0,
//                              child:Column(
//                                children: <Widget>[
//                                  //Calcget(snapshot.data.documents),
//                                  ListTile(
//                                    title: Text("Todays' Mpesa Amount:",
//                                      style: TextStyle(
//                                          color: Colors.black,
//                                          fontSize: 23,
//                                          fontWeight: FontWeight.bold
//                                      ),
//                                    ),
//                                    trailing: Text("\$400",
//                                      style: TextStyle(
//                                          color: Colors.green,
//                                          fontSize: 17,
//                                          fontWeight: FontWeight.bold
//                                      ),),
//                                  ),
//                                ],
//                              )
//                          ),
//                        ],
//                      ),
//                    )
//                ),
//              );
//          }
//        }
//    );
//
//  }

}