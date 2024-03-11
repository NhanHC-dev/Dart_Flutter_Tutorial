import 'package:flutter/material.dart';

class VerticalView extends StatefulWidget {
  const VerticalView({super.key});

  @override
  State<VerticalView> createState() => _VerticalViewState();
}

class _VerticalViewState extends State<VerticalView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (BuildContext context, int index){
      return ListTile(
        title: Text("Item"+index.toString()),
        subtitle: Divider(height: 3,),
      );
    });
  }
}
