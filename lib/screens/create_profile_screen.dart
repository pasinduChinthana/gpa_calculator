import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpa_calculator/screens/configure_grade_points_screen.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create Profile', style: Theme.of(context).textTheme.headline1,),
                  const SizedBox(height: 30),
                  const Text('Profile Name'),
                  TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter profile name';
                      }
                      return null;
                    }
                  ),
                  const SizedBox(height: 20),
                  const Text('University'),
                  TextFormField(
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter university name';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 20),
                  const Text('Maximum GPA'),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter maximum GPA';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ConfigureGradePointsScreen()),
                        );
                      },
                      child: const Text('Next')
                    ),
                  )
                ],
              ),
            ),
          )
        ));
  }
}
