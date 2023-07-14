import 'package:flutter/material.dart';
import 'package:weather_app_with_clean_arch/weather_feature/data/data_source/remote/remote_data_source.dart';
import 'package:weather_app_with_clean_arch/weather_feature/data/repository/weather_repo.dart';
import 'package:weather_app_with_clean_arch/weather_feature/domain/repository/base_weather_repo.dart';
import 'package:weather_app_with_clean_arch/weather_feature/domain/use_case/get_weather_by_country_name.dart';

void main() async {
  BaseRemoteDataSource baseRemoteDataSource =RemoteDataSource();
  BaseWeatherRepo baseWeatherRepo = WeatherRepository(baseRemoteDataSource);
 await GetWeatherByCountryName(baseWeatherRepo).execute(cityName: "Egypt");
  runApp(const MyApp());
}
//73fcc5b51ac350d5e039df48922bbd1d
//https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
