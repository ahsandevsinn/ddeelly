import 'package:ddeelly/core/imports/imports.dart';


class CustomDropdown<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final String Function(T) display;
  final ValueChanged<T?> onChanged;
  final String hint;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.display,
    required this.onChanged,
    this.hint = "Select option",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, width: 1.2),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          dropdownColor: AppColors.white,
          value: value,
          hint: Text(hint, style: const TextStyle(color: AppColors.mediumGrey)),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          isExpanded: true,
          onChanged: onChanged,
          items: items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(display(item), style: const TextStyle(fontSize: 16)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
