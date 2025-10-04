import 'package:flutter/material.dart';

class MyDatePickerWidget extends StatefulWidget {
  final String title;
  const MyDatePickerWidget({super.key, required this.title});

  @override
  State<MyDatePickerWidget> createState() => _MyDatePickerWidgetState();
}

class _MyDatePickerWidgetState extends State<MyDatePickerWidget> {
  DateTime? _selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(widget.title),
        ElevatedButton(
          onPressed: () => _pickDate(context),
          child: const Text("Pilih Tanggal"),
        ),
        if (_selectedDate != null)
          Text("Tanggal dipilih: ${_selectedDate!.toLocal()}".split(' ')[0]),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

class MyTimePickerWidget extends StatefulWidget {
  final String title;
  const MyTimePickerWidget({super.key, required this.title});

  @override
  State<MyTimePickerWidget> createState() => _MyTimePickerWidgetState();
}

class _MyTimePickerWidgetState extends State<MyTimePickerWidget> {
  TimeOfDay? _selectedTime;

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(widget.title),
        ElevatedButton(
          onPressed: () => _pickTime(context),
          child: const Text("Pilih Jam"),
        ),
        if (_selectedTime != null)
          Text("Jam dipilih: ${_selectedTime!.format(context)}"),
      ],
    );
  }
}

