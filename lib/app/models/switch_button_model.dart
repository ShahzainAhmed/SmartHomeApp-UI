import 'package:flutter/material.dart';

class SwitchButtonModel {
  final IconData icon;
  final String title;
  bool switchValue;

  SwitchButtonModel({
    required this.title,
    required this.icon,
    required this.switchValue,
  });
}

List<SwitchButtonModel> myList = [
  SwitchButtonModel(
    title: "Speaker",
    icon: Icons.music_note_outlined,
    switchValue: false,
  ),
  SwitchButtonModel(
    title: "Sony TV",
    icon: Icons.tv_rounded,
    switchValue: false,
  ),
  SwitchButtonModel(
    title: "Hue Lamp",
    icon: Icons.lightbulb_outlined,
    switchValue: false,
  ),
  SwitchButtonModel(
    title: "Blutooth",
    icon: Icons.phone_bluetooth_speaker_outlined,
    switchValue: false,
  ),
   SwitchButtonModel(
    title: "Data",
    icon: Icons.four_g_plus_mobiledata_outlined,
    switchValue: false,
  ),
   SwitchButtonModel(
    title: "Laptop",
    icon: Icons.laptop,
    switchValue: false,
  ),
];
