import 'dart:ui';

import 'package:flutter/material.dart';

import '../enums/open_time_mode.dart';
import '../enums/restaurant_category.dart';

class Restaurant {
  late String name;
  late String address;
  late List<RestaurantCategory> categorys;
  late OpenTimeMode openTimeMode;
  late DateTime endTimeOrder;
  late String preferential;
  late String overView;
  late double distance;


  Restaurant(this.name, this.address, this.categorys, this.openTimeMode,
      this.endTimeOrder, this.preferential, this.overView, this.distance);

  String CategorysToString() {
    List<String> results = List<String>.generate(
        categorys.length, (index) => InitData(index));
    return results.join("/");
  }

  bool checkEndTimeOrder() {
    var timeNow = DateTime.now();
    var endTime = DateTime(
        timeNow.year, timeNow.month, timeNow.day, endTimeOrder.hour,
        endTimeOrder.minute, endTimeOrder.second);
    return timeNow.compareTo(endTime) > 0;
  }

  Color getColorOpenTime() {
    switch (openTimeMode) {
      case OpenTimeMode.all:
        {
          return Color.fromARGB(255, 165, 221, 252);
        }
      case OpenTimeMode.breakfast:
        {
          return Colors.purple;
        }
      case OpenTimeMode.lunch:
        {
          return Color.fromARGB(255, 168, 221, 173);
        }
      case OpenTimeMode.dinner:
        {
          return Color.fromARGB(255, 76, 50, 52);
        }
    }
  }

  static List<Restaurant> Mock() {
    return
      [Restaurant(
          "Buffet Hoàng Yến – Ăn đúng nơi, ngon đúng điệu",
          "148 Hai Bà Trưng, P.Đa Kao, Q.1, TPHCM",
          [RestaurantCategory.restaurant, RestaurantCategory.birthday],
          OpenTimeMode.breakfast,
          DateTime(0, 0, 0, 11, 0),
          "Giảm 20 %",
          "https://hoangyenbuffet.com/wp-content/uploads/2015/01/hoangyenbuffet.jpg",
          10),
        Restaurant(
            "Chuỗi nhà hàng Phố 79",
            "79 Đ. Sương Nguyệt Anh, Phường Phạm Ngũ Lão, Quận 1, Thành phố Hồ Chí Minh 700000",
            [RestaurantCategory.restaurant, RestaurantCategory.birthday],
            OpenTimeMode.lunch,
            DateTime(0, 0, 0, 23, 0),
            "Giảm 20 %",
            "https://lh5.googleusercontent.com/p/AF1QipN5mQ3WM1ajPUlEj9SdOpbPQJelFj7lsr0HJzdh=w114-h114-n-k-no",
            10),
        Restaurant(
            "Nhà hàng Hội Ngộ",
            "19B Nguyễn Thị Diệu, Phường 6, Quận 3",
            [RestaurantCategory.restaurant, RestaurantCategory.birthday],
            OpenTimeMode.dinner,
            DateTime(0, 0, 0, 11, 0),
            "Giảm 20 %",
            "https://lh5.googleusercontent.com/p/AF1QipN5mQ3WM1ajPUlEj9SdOpbPQJelFj7lsr0HJzdh=w114-h114-n-k-no",
            10),
        Restaurant(
            "Chuỗi Ân Nam Quán – Đặc sản miền Trung",
            "P. 7, Quận 3, TP. HCM. Giá bình quân đầu người 50.000đ - 165.000đ.",
            [RestaurantCategory.restaurant, RestaurantCategory.birthday],
            OpenTimeMode.all,
            DateTime(0, 0, 0, 21, 0),
            "Giảm 90 %",
            "https://lh5.googleusercontent.com/p/AF1QipN5mQ3WM1ajPUlEj9SdOpbPQJelFj7lsr0HJzdh=w114-h114-n-k-no",
            10),
        Restaurant(
            "Ẩm Thực Quê Nhà",
            "Q.2 (169 Nguyễn Văn Hưởng, P. Thảo Điền, TP.Thủ Đức)",
            [RestaurantCategory.restaurant, RestaurantCategory.birthday],
            OpenTimeMode.breakfast,
            DateTime(0, 0, 0, 11, 0),
            "Miễn phí Bia",
            "https://lh5.googleusercontent.com/p/AF1QipN5mQ3WM1ajPUlEj9SdOpbPQJelFj7lsr0HJzdh=w114-h114-n-k-no",
             6.3),
      ];
  }

  String InitData(int index) {
    var result = "${categorys[index].name}";
    print("${result}");
    return result;
  }


}

