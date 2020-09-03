import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

List images = [
  'https://lh3.googleusercontent.com/proxy/Tvo995Vw2tsa2GBkGh2Jj76xleEcGi04GYxT3UkIhV2LEkHfIt_nl0AcYF0Dey6DXZOuFS0v_KxHDdkUrU0DRVHf',
  'https://turkishfoodie.com/wp-content/uploads/2018/11/Adana-Kebab-.jpg',
  'https://kitchen.sayidaty.net/uploads/small/c1/c12af5a89f3fef484139dc393018d16f_w750_h500.jpg',
  'https://storyy.cc/wp-content/uploads/2018/08/5870.jpg'
];

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
              child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          
          children: images
              .map((e) => Padding(
                padding: const EdgeInsets.only(left:16.0,right: 16),
                child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          width: size.width > 650 ? 400 : size.width,
                          height: 0.3 * size.height,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              e,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                            width: size.width > 650 ? 400 : size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Pizza',
                                    style: textTheme.headline6,
                                  ),
                                  Text(
                                    '7000 IQD',
                                    style: textTheme.headline6,
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
              ))
              .toList(),
        ),
      ),
    );
  }
}
