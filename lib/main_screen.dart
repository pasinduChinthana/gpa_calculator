// importing dart:io file
import 'dart:io';

void main()
{
  print("Enter your University ID");
  String universityId = stdin.readLineSync();

  print("Hello, $universityId! \nWelcome to GPA Calculator!!");

  print("Enter your current study level");
  String studyLevel = stdin.readLineSync();
}