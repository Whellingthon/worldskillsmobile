import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wsa_2025/providers/event_provider.dart';
import 'screens/home_screen.dart';
import '../services/notification_servide.dart';



void main() async {
  print('App started');
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationServide.initialize();
  runApp(
    ChangeNotifierProvider(create: (_) => EventProvider(),
    child: const MainApp(),
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    title: 'WSA2025 EVENTS',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const HomeScreen(),
    
    );
    
 
  }
}
