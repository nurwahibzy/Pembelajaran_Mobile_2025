import 'package:flutter/material.dart';
import 'package:master_plan/provider/plan_provider.dart';
import 'package:master_plan/views/plan_creator_screen.dart';
import './models/plan.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          // menonaktifkan Material 3 agar primarySwatch dapat berfungsi dengan baik
          useMaterial3: false,
        ),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
