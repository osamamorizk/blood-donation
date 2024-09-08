import 'package:flutter/material.dart';

class RequestDonnerSorting extends StatefulWidget {
  const RequestDonnerSorting(
      {super.key, required this.bloodTypeList, required this.hintText});
  final List<String> bloodTypeList;
  final String hintText;
  @override
  State<StatefulWidget> createState() => _RequestDonnerSortingState();
}

class _RequestDonnerSortingState extends State<RequestDonnerSorting> {
  String? _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Center(
        child: DropdownButton(
          hint: Text(widget.hintText),
          value: _selectedLocation,
          onChanged: (newValue) {
            setState(() {
              _selectedLocation = newValue;
            });
          },
          items: widget.bloodTypeList.map((location) {
            return DropdownMenuItem(
              value: location,
              child: Text(location),
            );
          }).toList(),
        ),
      ),
    );
  }
}
