import 'package:flutter/material.dart';

class ReminderModel extends ChangeNotifier {
  String _selectedDay = 'Monday';
  TimeOfDay _selectedTime = TimeOfDay.now();
  String _selectedActivity = 'Wake up';

  String get selectedDay => _selectedDay;
  TimeOfDay get selectedTime => _selectedTime;
  String get selectedActivity => _selectedActivity;

  void updateDay(String newDay) {
    _selectedDay = newDay;
    notifyListeners();
  }

  void updateTime(TimeOfDay newTime) {
    _selectedTime = newTime;
    notifyListeners();
  }

  void updateActivity(String newActivity) {
    _selectedActivity = newActivity;
    notifyListeners();
  }
}
