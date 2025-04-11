import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_lab3/base/res/media.dart';
import 'package:flutter_application_lab3/base/res/styles/app_styles.dart';
import 'package:flutter_application_lab3/base/widgets/app_double_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      //Home Screen Listview
      body: ListView(
        children: [
          SizedBox(height: 40),
          // Container around 3TC
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),

            // 1/3rd Top Column (TC)
            child: Column(
              children: [
                //TC-Row 1
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceBetween, //Horizonral Alignment in Row Widget
                  children: [
                    //Row 1 - Left Partition
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),

                    //Row 1 - Right Partition
                    Container(
                       
                      width: 50, 
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo),

                         )
                        )
                      ),
                  ],
                ),
                const SizedBox(height:25),
                // Search container
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                        ),
                  //TC-Row 2
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                      Text("Search")
                      ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all',),

                const SizedBox(height: 40),
                const AppDoubleText(bigText: 'Upcoming Meetings', smallText: 'View all',),
              ],
            ),
          ),
          
          //ADD MORE LISTVIEW CHILDREN
        ],
      ),
    );
  }
}
