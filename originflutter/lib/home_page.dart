import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:originflutter/enums/restaurant_category.dart';

import 'models/restaurant.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late List<Restaurant> restaurants = Restaurant.Mock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Restaurant List")),
      body: SafeArea(
        child: Container(

          constraints: BoxConstraints.expand(),
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              final item = restaurants[index];

              return Card(
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                child: Container(
                  height: 100,
                  child: Row(
                    children: [
                          Container(
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Stack(
                                children: [
                                  Container(
                                    constraints: BoxConstraints.expand(),
                                    color: Colors.red,
                                    child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Image.network(item.overView)),
                                  ),
                                  Visibility(
                                    visible: item.checkEndTimeOrder(),
                                    child: Stack(
                                      children: [
                                        Opacity(
                                          opacity: 0.5,
                                          child: Container(
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          constraints: BoxConstraints.expand(),
                                          child: Center(
                                            child: Text(
                                              "Hết hạn đặt món vào lúc: ${DateFormat('kk:mm').format(item.endTimeOrder)}",
                                              style: TextStyle(color: Colors.white, fontSize: 11), textAlign: TextAlign.center,),),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                      SizedBox(width: 10),
                      Expanded(
                          child: Column(
                            children: [
                              SizedBox(height: 5),
                              Expanded(
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                          child: Text(item.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),),
                                    ),
                                  )),
                              Expanded(
                                  child: Container(

                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        item.address, maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Color.fromARGB(255, 207, 207, 207), fontSize: 11)
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  child: Container(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          item.CategorysToString(),
                                          style: TextStyle(color: Colors.black, fontSize: 11)
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 20,
                                        child: Image.asset("assets/images/icon_tag.png"),
                                      ),
                                      Expanded(child: Container(
                                        child: RichText(
                                          maxLines: 1,
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(text: " ${item.openTimeMode.name} - ", style: TextStyle(color: item.getColorOpenTime(), fontSize: 11, fontWeight: FontWeight.bold)),
                                              TextSpan(text: item.preferential, style: TextStyle(color: Color.fromARGB(255, 243, 155, 121), fontSize: 11, fontWeight: FontWeight.bold)),
                                            ]
                                          ),
                                        ),
                                      )),
                                    ],
                                  )),
                              SizedBox(height: 5)
                            ],
                          )),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              );
            },
          )
        ),
      ),
    );
  }
}
