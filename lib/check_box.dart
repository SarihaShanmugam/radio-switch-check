import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text(
          'Check Box',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF4E342E),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(90.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Bill Payment',
                    style: TextStyle(
                        fontSize: 20,
                    // color: Color(0xFF4E342E),
                      color: Colors.cyan
                    )),

                Row(
                  children: [
                    Text('Do you paid your EB bill'),

                    Checkbox(
                       // checkColor: Color(0xFF4E342E),
                        checkColor:Colors.cyan,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                            print(" Checkbox is clicked ");
                          });
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
