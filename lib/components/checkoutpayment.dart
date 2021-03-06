import 'package:aishop/components/textlink.dart';
import 'package:flutter/material.dart';

class CheckOutPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Row(
      children: <Widget>[
        Expanded(
            child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(children: <Widget>[
                Container(
                  child: Center(
                    child: TextLink(
                      text: 'Load Credits',
                      align: Alignment.center,
                      press: () => {},
                    ),
                  ),
                  width: double.infinity,
                  height: 50,
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.black,
                ),
                Container(
                  child: Center(
                    child: TextLink(
                      text: 'Past Transactions',
                      align: Alignment.center,
                      press: () => {},
                    ),
                  ),
                  width: double.infinity,
                  height: 50,
                ),
                Divider(
                  height: 10,
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.black,
                ),
              ]),
            ),
          ],
        )),
        Expanded(
          flex: 2,
          child: ListView(children: <Widget>[
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Expanded(
                    child: Container(
                        width: 450,
                        height: 360,
                        margin: const EdgeInsets.all(50.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)),
                        child: new Column(children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                left: 0.0, top: 8.0, bottom: 2.0, right: 100.0),
                            child: Text("Order Subtotal     R 2 219,97",
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0)),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 0.0,
                                  top: 12.0,
                                  bottom: 0.0,
                                  right: 150.0),
                              child: Text("Delivery        R 250,00",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0))),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 10.0,
                                  top: 12.0,
                                  bottom: 0.0,
                                  right: 200.0),
                              child: Text("Promo Code ",
                                  style: new TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18.0))),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              width: 350,
                              height: 50,
                              margin: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  bottom: 0.0,
                                  right: 100.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.black87,
                                  hintText: 'e.g. FirstTimePromo',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                                style: TextStyle(
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w300),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Divider(
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: 0.0, top: 8.0, bottom: 2.0, right: 150.0),
                            child: Text("TOTAL         R 2469,97",
                                style: new TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18.0)),
                          ),
                        ])),
                  ),
                ])),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //====================================================================================row

                    children: [
                  Container(
                    width: 250,
                    height: 50,
                    margin: EdgeInsets.only(
                        left: 0.0, top: 0.0, bottom: 0.0, right: 20.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black, // background
                          primary: Colors.black,
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w300,
                          ),
                          side: BorderSide(color: Colors.black, width: 2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                        onPressed: () {},
                        child: Text("Purchase",
                            style: new TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]))
          ]),
        ),
      ],
    )));
  }
}
