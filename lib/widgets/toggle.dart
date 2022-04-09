import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ToggleTextBtnsFb1 extends StatefulWidget {
  final List<Text> texts;
  final Function(int) selected;
  final Color selectedColor;
  final bool multipleSelectionsAllowed;
  final bool stateContained;
  final bool canUnToggle;
  ToggleTextBtnsFb1(
      {required this.texts,
      required this.selected,
      this.selectedColor = const Color.fromARGB(255, 188, 225, 240),
      this.stateContained = true,
      this.canUnToggle = false,
      this.multipleSelectionsAllowed = false,
      Key? key});

  @override
  _ToggleTextBtnsFb1State createState() => _ToggleTextBtnsFb1State();
}

class _ToggleTextBtnsFb1State extends State<ToggleTextBtnsFb1> {
  late List<bool> isSelected = [];
  @override
  void initState() {
    // ignore: unused_local_variable
    for (var e in widget.texts) {
      isSelected.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ToggleButtons(
            color: Colors.black.withOpacity(0.60),
            selectedColor: widget.selectedColor,
            selectedBorderColor: widget.selectedColor,
            fillColor: widget.selectedColor.withOpacity(0.08),
            splashColor: widget.selectedColor.withOpacity(0.12),
            hoverColor: widget.selectedColor.withOpacity(0.04),
            borderRadius: BorderRadius.circular(4.0),
            isSelected: isSelected,
            highlightColor: Colors.transparent,
            onPressed: (index) {
              // send callback
              widget.selected(index);
              // if you wish to have state:
              if (widget.stateContained) {
                if (!widget.multipleSelectionsAllowed) {
                  final selectedIndex = isSelected[index];
                  isSelected = isSelected.map((e) => e = false).toList();
                  if (widget.canUnToggle) {
                    isSelected[index] = selectedIndex;
                  }
                }
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              }
              switch (index) {
                case 0:
                  {
                    context.setLocale(const Locale("uz"));
                  }
                  break;
                case 1:
                  {
                    context.setLocale(const Locale("ru"));
                  }
                  break;
                case 2:
                  {
                    context.setLocale(const Locale("en"));
                  }
              }
            },
            children: widget.texts
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: e,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
