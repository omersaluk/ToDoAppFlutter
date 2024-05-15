import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.title});
  final String title;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.notes_sharp,
              size: 40,
            ),
            Text(
              widget.title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
            ),
            Checkbox(
                value: _isChecked,
                onChanged: (val) => {
                      setState(() {
                        _isChecked = val!;
                      }),
                    }),
          ],
        ),
      ),
    );
  }
}
