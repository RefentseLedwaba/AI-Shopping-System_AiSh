import 'dart:ui';
import 'package:aishop/components/searchservice.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {

  bool isSearching = false;
  var queryResultSet = [];
  var tempSearchStore = [];

  initiateSearch(value) {
    if (value.length == 0) {
      setState(() {
        queryResultSet = [];
        tempSearchStore = [];
      });
    }
    var capitalizedValue =
        value.substring(0, 1).toUpperCase() + value.substring(1);

    if (queryResultSet.length == 0 && value.length == 1) {
      SearchService().searchByName(capitalizedValue).then((QuerySnapshot mydocs) {
        for (int i = 0; i < mydocs.docs.length; ++i) {
          queryResultSet.add(mydocs.docs[i].data());
          setState(() {
            tempSearchStore.add(queryResultSet[i]);
          });
        }
      });
    }
    else {
      tempSearchStore = [];
      queryResultSet.forEach((element) {
        if (element['name'].toLowerCase().contains(value.toLowerCase()) ==
            true) {
          if (element["name"].toLowerCase().indexOf(value.toLowerCase()) ==
              0) {
            setState(() {
              tempSearchStore.add(element);
            });
          }
        }
      });
    }
    if (tempSearchStore.length == 0 && value.length > 1) {
      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
          TextField(
            onChanged: (val) {
              initiateSearch(val);
            },
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.white)
            ),
              // icon: Icon(
              //   Icons.cancel,
              //   color: white,
              // ),
              // onPressed: () {
              //   setState(() {
              //     TextField.clear();
              //   });
              // },
            ),
          )`  q1111111111111111111111111111111111111111111111111111111111111  ,
          // iconTheme: IconThemeData(color: Colors.white)),
      //Body of the home page
      body:
        ListView(children:
          <Widget>[
            SizedBox(height: 10.0),
            GridView.count(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                crossAxisCount: 4,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                primary: false,
                shrinkWrap: true,
                children: tempSearchStore.map((element) {
                  return SearchService().buildResultCard(context, element);
                }).toList())
          ]
        )
    );
  }
}