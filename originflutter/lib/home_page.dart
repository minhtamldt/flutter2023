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
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                height: 0, //remove padding cell
              ),
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                return renderItem(restaurants[index]);
              },
            )),
      ),
    );
  }

  Widget renderItem(Restaurant item) {
    return InkWell(
        onTap: () => {print(item.name)},
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  flex: 2,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Stack(
                        children: [
                          Image.network(
                            fit: BoxFit.contain,
                            item.overView,
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
                                Center(
                                  child: Text(
                                      "Hết hạn đặt món vào lúc: ${DateFormat('kk:mm').format(item.endTimeOrder)}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11),
                                      textAlign: TextAlign.center),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(width: 10),
              Flexible(
                  flex: 8,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          child: Text(
                            item.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                      ),
                      Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Text(
                                    item.address,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 207, 207, 207),
                                        fontSize: 11)
                                ),
                              ),
                              SizedBox(width: 3),
                              Text(
                                  "> ${NumberFormat("###.#", "vi").format(item.distance)} km",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 207, 207, 207),
                                      fontSize: 11))
                            ],
                          )),
                      Flexible(
                          child: Text(item.CategorysToString(),
                              style: TextStyle(color: Colors.black, fontSize: 11)
                          )),
                      Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 20,
                                child: Image.asset("assets/images/icon_tag.png"),
                              ),
                              Flexible(
                                  child: Container(
                                    child: RichText(
                                      maxLines: 1,
                                      text: TextSpan(children: <TextSpan>[
                                        TextSpan(
                                            text: " ${item.openTimeMode.name} - ",
                                            style: TextStyle(
                                                color: item.getColorOpenTime(),
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: item.preferential,
                                            style: TextStyle(
                                                color: Color.fromARGB(255, 243, 155, 121),
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold)),
                                      ]),
                                    ),
                                  )),
                            ],
                          )),
                    ],
                  )),
            ],
          ),
        ));
  }
}
