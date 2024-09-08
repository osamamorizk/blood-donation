import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';

class SortingItem extends StatefulWidget {
  const SortingItem(
      {super.key, required this.bloodTypeList, required this.hintText});
  final List<String> bloodTypeList;
  final String hintText;
  @override
  State<StatefulWidget> createState() => _SortingItemState();
}

class _SortingItemState extends State<SortingItem> {
  String? _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(32)),
      width: 150,
      height: 40,
      child: Center(
        child: DropdownButton(
          style: TextStyle(color: kPrimaryColor, fontSize: 16),
          elevation: 50,
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
