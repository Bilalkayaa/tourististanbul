import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'markers/markers.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tourist İstanbul',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Tourist İstanbul',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(41.0082, 28.9784),
              initialZoom: 11,
            ),
            nonRotatedChildren: [
              RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () => launchUrl(
                        Uri.parse('https://openstreetmap.org/copyright')),
                  ),
                ],
              ),
            ],
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: Markers.data,
              ),
            ],
          ),
          Positioned(
              bottom: 0, // Alt kenar boşluğu
              left: 0, // Sol kenar boşluğu
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/cami.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Cami",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/tarihi.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Müze",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/muze.png',
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Tarihi yer",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ])),
        ],
      ),
    );
  }
}
