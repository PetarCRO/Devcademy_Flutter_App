import 'package:flutter/material.dart';
import 'package:devcademy_flutter/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColors.white,
        appBar: AppBar(
          elevation: 5.0,
          backgroundColor: ThemeColors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Staycation'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: ThemeColors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: ThemeColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Popular locations',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    'VIEW MORE',
                    style:
                        TextStyle(fontSize: 13.0, color: ThemeColors.mint400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Home guests love',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Text(
                    'VIEW MORE',
                    style:
                        TextStyle(fontSize: 13.0, color: ThemeColors.mint400),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Sugar & Spice Apartments',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      'Split',
                      style:
                          TextStyle(color: ThemeColors.gray300, fontSize: 14.0),
                    ),
                    Text(
                      'EUR 75',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Lemon Luxury Apartments',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      'Saint Tropez',
                      style:
                          TextStyle(color: ThemeColors.gray300, fontSize: 14.0),
                    ),
                    Text(
                      'EUR 174',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: ThemeColors.coral400,
                          size: 16.0,
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
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
