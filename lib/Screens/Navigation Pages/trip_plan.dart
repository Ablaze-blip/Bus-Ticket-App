import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TripPlanPage extends StatefulWidget {
  const TripPlanPage({Key? key}) : super(key: key);

  @override
  _TripPlanPageState createState() => _TripPlanPageState();
}

class _TripPlanPageState extends State<TripPlanPage> {

  DateTime? _date;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,

                  child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain
                    ,
                ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Text("Book your ticket",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                    ),
                    )
                )

              ],
            ),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.blueAccent.shade400),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: TextField(
                    focusNode: disabel(),
                    decoration: InputDecoration(
                      hintText: "From",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            color: Colors.black
                          ),
                          prefixIcon: Icon(Icons.adjust_outlined),
                          border: InputBorder.none
                    ),
                  )


                  ),
                
                Container(
                    child: Image.asset('assets/two-way-arrow.png', height: 50, width: 50,),
                  
                ),
                Container(
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.blueAccent.shade400),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: TextField(
                      focusNode: disabel(),
                      decoration: InputDecoration(
                          hintText: "To",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal,
                              fontSize: 15,
                              color: Colors.black
                          ),
                          prefixIcon: Icon(Icons.location_on_outlined),
                          border: InputBorder.none
                      ),
                    )

                ),

              ],
            ),


          ]
        ),
      ),
    ),
    );
  }
}

class disabel extends FocusNode{
@override
  bool consumeKeyboardToken()
{
  return false;
 }
}
