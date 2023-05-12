import 'package:flutter/material.dart';
import 'package:myfoodapp/FoodModel.dart';

class FoodList extends StatelessWidget {
  List<FoodModel> foods = [
    FoodModel(
        'French Fries',
        'Brief detail French Fries',
        "https://images.unsplash.com/photo-1518013431117-eb1465fa5752?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
        13),
    FoodModel(
        'Pizza',
        'Brief detail of pizza',
        "https://media-cdn.tripadvisor.com/media/photo-s/0a/c0/7c/98/best-pizza-in-lahore.jpg",
        14),
    FoodModel(
        'Samosa',
        'Brief detail of Samosa',
        "https://www.cookwithmanali.com/wp-content/uploads/2019/08/Homemade-Samosa-480x270.jpg",
        12),
    FoodModel(
        'Soft Drink',
        'Brief detail of Soft Drink',
        "https://images.unsplash.com/photo-1457518919282-b199744eefd6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1172&q=80",
        14),
    FoodModel(
        'Ice Cream',
        'Brief detail of Ice Cream',
        "https://images.unsplash.com/photo-1567206563064-6f60f40a2b57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        16),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Foody',
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'app',
                  style: TextStyle(
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 6),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: <Widget>[
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.network(
                            "${foods[index].pic}",
                            width: 60,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                foods[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                foods[index].detial,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          child: Text(
                            foods[index].price.toString(),
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                  itemCount: foods.length,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
