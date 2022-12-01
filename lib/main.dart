import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(2205, '2RdAi7xU0oprcXYCSgpRjw', null, null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void yourLoginFunction() {
    NativeNotify.registerIndieID("10");
  }

  void yourIndiePushSendingFunction() {
    //    NativeNotify.registerIndieID("10");
    NativeNotify.sendIndieNotification(2205, '2RdAi7xU0oprcXYCSgpRjw', "10",
        'Musfiq', 'Hello shona bondhu', "https://www.rd.com/wp-content/uploads/2019/09/GettyImages-621924830-scaled.jpg?fit=700,500", "{'test':'test'}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: yourLoginFunction, 
                child: Text("Generate Id"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: yourIndiePushSendingFunction,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
