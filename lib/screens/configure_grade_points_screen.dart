import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfigureGradePointsScreen extends StatefulWidget {
  const ConfigureGradePointsScreen({Key? key}) : super(key: key);

  @override
  _ConfigureGradePointsScreenState createState() => _ConfigureGradePointsScreenState();
}

class _ConfigureGradePointsScreenState extends State<ConfigureGradePointsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Text('Configure Grade Points', style: Theme.of(context).textTheme.headline1,),
                Slider(
                    value: 5,
                    max: 10,
                    min: 0,
                    onChanged: (value){
                }),
                RangeSlider(

                    min: 0,
                    max: 10,
                    values: const RangeValues(2, 3),
                    onChanged: (values){

                })
              ],
            ),
          ),
        )
    );
  }
}
