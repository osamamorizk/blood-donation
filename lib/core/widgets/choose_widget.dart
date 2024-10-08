import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class ChooseWidget extends StatefulWidget {
  const ChooseWidget({
    super.key,
    required this.chooseType,
    this.icon,
    required this.hintText,
  });
  final List<String> chooseType;

  final IconData? icon;
  final String hintText;

  @override
  State<ChooseWidget> createState() => _ChooseWidgetState();
}

class _ChooseWidgetState extends State<ChooseWidget> {
  String? selectedLocation;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.05),
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: kPrimaryColor),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          if (widget.icon != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                widget.icon,
                color: kPrimaryColor,
              ),
            ),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    widget.hintText,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                padding: const EdgeInsets.only(left: 16),
                iconSize: 18,
                borderRadius: BorderRadius.circular(32),
                isExpanded: true,
                alignment: AlignmentDirectional.centerStart,
                menuWidth: 150,
                icon: const Icon(Icons.arrow_downward_rounded),
                value: selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    selectedLocation = newValue!;
                  });
                },
                items: widget.chooseType.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(
                      location,
                      style: TextStyles.textStyle16.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
