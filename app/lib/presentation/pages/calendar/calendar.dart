import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget{
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.week,
        dataSource: MeetingDataSource(getAppointements()),
        onTap: (CalendarTapDetails details){
          dynamic appointment = details.appointments;
          DateTime date = details.date;
          CalendarElement element = details.targetElement;
          print(details.appointments);
        }

      ),
    );
  }
}

List<Appointment> getAppointements(){
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day,9,0,0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));
  
  meetings.add(Appointment(startTime: startTime,
    endTime: endTime,
  subject: "Conférence",
  color: Colors.blue,
  resourceIds: [1],
  isAllDay: true));

  meetings.add(Appointment(startTime: startTime,
      endTime: endTime,
      subject: "Devoir",
      color: Colors.red,
      resourceIds: [2],
      isAllDay: true));


  meetings.add(Appointment(startTime: startTime,
      endTime: endTime,
      subject: "Devoir2",
      color: Colors.green,
      resourceIds: [3],
      isAllDay: true));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource{
  MeetingDataSource(List<Appointment> source){
    appointments = source;
  }
}