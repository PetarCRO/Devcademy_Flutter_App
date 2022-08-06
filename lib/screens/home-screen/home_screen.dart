import 'package:flutter/material.dart';
import 'package:devcademy_flutter/theme.dart';
import 'package:devcademy_flutter/assets.dart';
import '../homes.dart';
import '../popularLocations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PopularLocations> popularLocations = [
      PopularLocations(
          image: 'image', location: 'London', numberOfProperties: 5102),
      PopularLocations(
          image: 'image', location: 'Tokyo', numberOfProperties: 11251),
      PopularLocations(
          image: 'image', location: 'Barcelona', numberOfProperties: 21104),
      PopularLocations(
          image: 'image', location: 'New York', numberOfProperties: 1381),
    ];
    final List<Homes> homes = [
      Homes(
          image: 'image',
          title: 'Sugar & Spice Apartments',
          location: 'Split',
          price: 75,
          stars: 5),
      Homes(
          image: 'image',
          title: 'Lemon Luxury Apartments',
          location: 'Saint Tropez',
          price: 174,
          stars: 5),
    ];

    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ThemeColors.white,
        appBar: AppBar(
          elevation: 5.0,
          backgroundColor: ThemeColors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Staycation',
                style: textTheme.headline6!.merge(
                  TextStyle(
                    color: ThemeColors.teal800,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: ThemeColors.teal800,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: ThemeColors.teal800,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular locations',
                      style: textTheme.headline6!
                          .merge(TextStyle(color: ThemeColors.black)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'VIEW MORE',
                        style: TextStyle(color: ThemeColors.mint400),
                      ),
                    ),
                  ],
                ),
              ),
              GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  crossAxisCount: 2,
                  children: [
                    ...popularLocations.map(
                      (location) {
                        return Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(Assets.images.london),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 16),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    ThemeColors.black.withOpacity(0.3),
                                    ThemeColors.white.withOpacity(0),
                                  ],
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    location.location,
                                    style: textTheme.bodyText1,
                                  ),
                                  Text(
                                    '${location.numberOfProperties} properties',
                                    style: textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Homes guests love',
                      style: textTheme.headline6!
                          .merge(TextStyle(color: ThemeColors.black)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'VIEW MORE',
                        style: TextStyle(color: ThemeColors.mint400),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: homes.map((home) {
                  return Column(
                    children: [
                      Text(home.title),
                      Text(home.location),
                      Container(
                        child: Row(children: [
                          Text('EUR '),
                          Text(home.price.toString())
                        ]),
                      ),
                      Row(
                        children: [
                          for (var i = 0; i < home.stars; i++)
                            Icon(
                              Icons.star,
                              color: ThemeColors.coral400,
                              size: 16.0,
                            ),
                        ],
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted),
              label: 'My bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city),
              label: 'My places',
            ),
          ],
        ),
      ),
    );
  }
}
