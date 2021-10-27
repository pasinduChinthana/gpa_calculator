import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/components/profile_selector.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text('Select Profile', style: Theme.of(context).textTheme.headline1,),
              const SizedBox(height: 20),
              const ProfileSelector(),
              ElevatedButton(onPressed: (){}, child: Text('Create Profile'))
            ],
          ),
        ),
      ),
    );
  }
}
