import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      //Home Screen Listview
      body: ListView(
        children: [

          // Container around 3TC
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            // 1/3rd Top Column (TC)
            child: Column(
              children: [
            
                //TC-Row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //Horizonral Alignment in Row Widget
                  children: [
            
                    //Row 1 - Left Partition
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w500,
                        )),
                        SizedBox(height: 5),
                        Text("Book Tickets", style: TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w500, color: Color(0xFF3b3b3b) 
                        )),
                      ],
                    ),
            
                    //Row 1 - Right Partition
                    Container(
                      color: Colors.red,
                      width: 100,
                      height: 70,
                    )
                  ],
                ),
            
                //TC-Row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(" Search icon "),
                    Text(" Empty space"),
                  ],
                )
              ],
            ),
          )

          //ADD MORE LISTVIEW CHILDREN
        ],
      )
    );
  }
}