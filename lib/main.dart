import 'package:flutter/material.dart';
import 'package:flutter_cakendar_app02/page/event_editing_page.dart';
import 'package:flutter_cakendar_app02/widget/calendar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "Calendar App";
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(
          176,
          0,
          0,
          0,
        ),
        primaryColor: Colors.lightBlue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
        centerTitle: true,
      ),
      body: CalendarWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EventEditingPage()),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
