import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //? This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bible Verse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //? This is the theme of application.
        colorScheme: .fromSeed(seedColor: Colors.brown.shade900),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Bible Verse')));
  }
}
