import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intern_assignment/home_main/commo.dart';
import 'package:intern_assignment/home_main/common_widgets/all_restaurant.dart';
import 'package:intern_assignment/home_main/common_widgets/food_campaign.dart';
import 'package:intern_assignment/home_main/common_widgets/popular_restaurant.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final imgList = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// notification top section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      '76A eight evenue, New York, US',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Spacer(),
                    Stack(
                      children: [
                        Icon(Icons.notifications),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              /// Search sections
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2)),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search food or restaurants here...',
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
                      )),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              /// Image slider sections
              Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                        height: 100.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/slider/slider.png',),fit: BoxFit.cover),
                            ),);
                        },
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                  Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                                  .withOpacity(
                                  _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),

              ///category sections
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () => print('view All'),
                          child: Text(
                            'View All',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categoryList
                            .map((e) => Container(
                          width: 80,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(6),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                      Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: Offset(0,
                                          3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  '${e.imageData}',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Text(
                                '${e.title}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),

              ///Popular food nearby sections
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Popular Food Nearby',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () => print('view All'),
                          child: Text(
                            'View All',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: popularFoodList
                            .map((e) => Container(
                          width: 250,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(4),
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(10),
                                  color: Colors.grey[200],
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(8),
                                      child: Image.asset(
                                        '${e.imageData}',
                                        height: 80,
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      left: 0,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2,
                                              horizontal: 1),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.only(
                                                topRight:
                                                Radius.circular(4),
                                                bottomRight:
                                                Radius.circular(4),
                                              ),
                                              color: Colors.green),
                                          child: Text(
                                            '30% OFF',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.white),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${e.title}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      'Mc Donald,New york, USA',
                                      maxLines: 1,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[600]),
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
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Wrap(spacing: 10, children: [
                                          Text(
                                            '\$5',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          Text(
                                            '\$10',
                                            style: TextStyle(
                                                decoration:
                                                TextDecoration
                                                    .lineThrough),
                                          ),
                                        ]),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),

              ///Food Campaign
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Food Campaign',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () => print('view All'),
                          child: Text(
                            'View All',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        FoodCampaign(),
                        SizedBox(
                          width: 10,
                        ),
                        FoodCampaign(),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Popular Restaurant\'s',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () => print('view All'),
                          child: Text(
                            'View All',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                            5,
                                (index) => PopularRestaurant(),
                          )),
                    )
                  ],
                ),
              ),

              ///New on app name
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'New on App Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        InkWell(
                          onTap: () => print('view All'),
                          child: Text(
                            'View All',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(
                            5,
                                (index) => PopularRestaurant(),
                          )),
                    )
                  ],
                ),
              ),

              ///All Restaurants
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'All Restaurants',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text('200+ Near you')
                          ],
                        ),
                        InkWell(
                            onTap: () => PopupMenuButton(
                                color: Colors.yellowAccent,
                                elevation: 40,
                                itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text("First"),
                                    value: 1,
                                  ),
                                  PopupMenuItem(
                                    child: Text("Second"),
                                    value: 2,
                                  ),
                                ]),
                            child: Icon(Icons.menu_outlined)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    /// all restaurants sections
                    AllRestaurant()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}
