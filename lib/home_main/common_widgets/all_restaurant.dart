import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intern_assignment/home_main/commo.dart';
//import 'package:intern_test/home_main/common.dart';

class AllRestaurant extends StatelessWidget {
  const AllRestaurant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: allRestaurants.map((e) => Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey)
                )
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    '${e.imageData}',
                    height: 60,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Burger',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'Mc Donald,New york, USA',
                          maxLines: 1,
                          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                        ),
                        RatingBar.builder(
                          itemSize: 18,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    )),
                Icon(Icons.favorite_border)
              ],
            ),
          )).toList()
      ),
    );
  }
}