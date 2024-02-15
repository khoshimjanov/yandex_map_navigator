import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_location_package/bloc/map_bloc.dart';
import 'package:map_location_package/page.dart';
import 'package:map_location_package/permisson.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await permish();
  runApp(const MainApp());

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
