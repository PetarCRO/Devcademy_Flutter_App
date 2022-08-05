import 'package:flutter/material.dart';
import 'package:devcademy_flutter/theme.dart';
import 'package:devcademy_flutter/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      style: textTheme.headline5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'VIEW MORE',
                        style: textTheme.button!.merge(
                          TextStyle(
                            color: ThemeColors.mint400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Homes guests love',
                      style: textTheme.headline5,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'VIEW MORE',
                        style: textTheme.button!.merge(
                          TextStyle(
                            color: ThemeColors.mint400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
