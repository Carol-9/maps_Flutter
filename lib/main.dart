import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/location_viewmodel.dart';
import 'views/map_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LocationViewModel()..fetchLocation(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mapa OSM',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal),
      home: const MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  void initState() {
    super.initState();
    // Inicia o stream de atualização contínua da posição
    final locationViewModel =
        Provider.of<LocationViewModel>(context, listen: false);
    locationViewModel.startLocationUpdates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Localização no Mapa')),
      body: const MapView(),
    );
  }
}
