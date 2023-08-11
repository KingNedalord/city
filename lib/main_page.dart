import 'package:city/cities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<HistoricalCities> cities = [
    HistoricalCities(
        image: "https://img.geliophoto.com/samarkand/00_samarkand.jpg",
        name: "Samarkand",
        route: "/s",
        content:
        "Общая площадь территории города составляет 123,82 км²[3]. Численность населения по состоянию на 1 января 2023 года составляла 573,2 тыс.[5]"),
    HistoricalCities(
        image:
        "https://www.gold-volga.ru/system/areas/73316/photos/1020x700/16104566532322366.jpg",
        name: "Bukhara",
        route: "/b",
        content:
        "Бухара́ (узб. Buxoro) — один из древнейших городов Центральной Азии, административный центр Бухарской области Узбекистана; архитектурный и историко-культурный заповедник")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(titleTextStyle: TextStyle(fontFamily: "EBG"),
          title: Text("GridView"),
        ),
        body: GridView.builder(
            itemCount: cities.length,
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, cities[index].route);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pink,
                            blurRadius: 10,
                            offset: Offset(10, 10),
                          ),
                        ],
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.network(cities[index].image)),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          cities[index].name,
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          cities[index].content,
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}