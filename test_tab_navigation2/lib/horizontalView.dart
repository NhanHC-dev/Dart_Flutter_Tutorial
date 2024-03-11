import 'package:flutter/material.dart';

class HorizontalView extends StatefulWidget {
  const HorizontalView({super.key});

  @override
  State<HorizontalView> createState() => _HorizontalViewState();
}

class _HorizontalViewState extends State<HorizontalView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 50,
      itemBuilder: (BuildContext context, int index){
      return Container(
        width: 170,
        child: ListTile(
          title: Text("Item"+index.toString()),
          trailing: VerticalDivider(width: 3,),
        ),
      );
    });
  }
}
