import 'package:flutter/material.dart';
import 'package:devcademy_flutter/theme.dart';
import 'package:devcademy_flutter/assets.dart';

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
              Text(
                'Staycation',
                style: TextStyle(color: ThemeColors.teal800, fontSize: 20),
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
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  "Popular locations",
                  style: TextStyle(color: ThemeColors.black, fontSize: 24),
                ),
                Text(
                  "VIEW MORE",
                  style: TextStyle(color: ThemeColors.mint400, fontSize: 13),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Homes guests love",
                  style: TextStyle(color: ThemeColors.black, fontSize: 24),
                ),
                Text(
                  "VIEW MORE",
                  style: TextStyle(color: ThemeColors.mint400, fontSize: 13),
                ),
              ],
            ),
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

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            'Sugar & Spice Apartments',
            style: TextStyle(fontSize: 16.0),
          ),
          Text(
            'Split',
            style: TextStyle(color: ThemeColors.gray300, fontSize: 14.0),
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
    );
  }
}
