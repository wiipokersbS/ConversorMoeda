import 'package:flutter/material.dart';

class BoxMoeda extends StatelessWidget {
  const BoxMoeda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton(
                iconEnabledColor: Colors.amber,
                isExpanded: true,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: const [
                  DropdownMenuItem(
                    child: Text('Real'),
                  ),
                ],
                onChanged: (value) {}),
          ),
        ),
        const SizedBox(height: 10),
        const Expanded(
          child: SizedBox(
            height: 56,
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
