import 'dart:ui';
import 'package:flutter/material.dart';

class ModelClass{
  String TitlE = '';
  String Discricption = '';
  String Time = '';
  List<ModelClass> detail = [];
  Color color = Colors.green;
  bool dot = true;
  ModelClass.detail({required this.Discricption,required this.Time});
  ModelClass({required this.TitlE,required this.detail, this.color = Colors.green, this.dot = true});
}