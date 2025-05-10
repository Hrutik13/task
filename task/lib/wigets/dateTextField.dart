import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datetextfield extends StatefulWidget {
  final String hinttext;
  final bool isDate;

  const Datetextfield({
    super.key,
    required this.hinttext,
    this.isDate = false,
  });

  @override
  State<Datetextfield> createState() => _DatetextfieldState();
}

class _DatetextfieldState extends State<Datetextfield> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _controller.text = DateFormat('dd-MM-yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return TextField(
      controller: _controller,
      readOnly: widget.isDate,
      onTap: widget.isDate ? () => _selectDate(context) : null,
      decoration: InputDecoration(
        hintText: widget.hinttext,
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        suffixIcon: widget.isDate
            ? const Icon(Icons.calendar_today, size: 20, color: Colors.blue)
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black45), // Normal border
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 2), // Focused border
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
