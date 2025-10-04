import 'package:flutter/material.dart';

class MyDialogWidget extends StatelessWidget {
  const MyDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text("Show AlertDialog"),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _showSimpleDialog(context);
          },
          child: const Text("Show SimpleDialog"),
        ),
      ],
    );
  }

  // Fungsi untuk AlertDialog
  void _showAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("My title"),
      content: const Text("This is my message."),
      actions: [okButton],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // Fungsi untuk SimpleDialog
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("Pilih opsi"),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, "Option 1");
              },
              child: const Text("Option 1"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, "Option 2");
              },
              child: const Text("Option 2"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, "Option 3");
              },
              child: const Text("Option 3"),
            ),
          ],
        );
      },
    );
  }
}
