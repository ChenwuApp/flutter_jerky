import 'package:flutter/material.dart';

class PageViewTest extends StatelessWidget {
  const PageViewTest({super.key});

  static const colorList = [Colors.red, Colors.yellow, Colors.grey];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: PageView.builder(
            allowImplicitScrolling: true,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Column(
                  children: [
                    Text("Current Page: $index"),
                    Expanded(
                        child: Container(
                      color: colorList[index % 3],
                    ))
                  ],
                ),
              );
            }));
  }
}
