import 'package:flutter/material.dart';
import 'package:test_tab_navigation2/person.dart';

class BasicView extends StatefulWidget {
  BasicView({super.key});

  @override
  State<BasicView> createState() => _BasicViewState();
}

class _BasicViewState extends State<BasicView> {
  List<Person> people = [
    Person(name: "HUngDV", hobby: "Flutter Developer"),
    Person(name: "NguyenLKH", hobby: "Android Developer"),
    Person(name: "HUngPV", hobby: "iOS Developer"),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.brown,
            child: Text(people[index].name.substring(0,1)),
          ),
          title: Text(people[index].name),
          subtitle: Text(people[index].hobby),
          trailing: Icon(Icons.star, color: Colors.yellow,),
        );
      }
    );
  }
}
