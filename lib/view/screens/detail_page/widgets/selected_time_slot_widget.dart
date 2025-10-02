import 'package:ddeelly/core/imports/imports.dart';
import 'package:ddeelly/model/time_slot_model.dart';

class TimeSlotSelector extends StatefulWidget {
  const TimeSlotSelector({super.key});

  @override
  State<TimeSlotSelector> createState() => _TimeSlotSelectorState();
}

class _TimeSlotSelectorState extends State<TimeSlotSelector> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: AppStrings.chooseTimeSlot,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: AppColors.black
        ),
      Gap(10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: slots.asMap().entries.map((entry) {
            int index = entry.key;
            TimeSlot slot = entry.value;
    
            bool isSelected = index == _selectedIndex;
    
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: _TimeSlotCard(
                    time: slot.time,
                    seats: slot.seats,
                    isSelected: isSelected,
                    selectedColor: AppColors.primary,
                    unselectedColor: AppColors.white,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class _TimeSlotCard extends StatelessWidget {
  final String time;
  final int seats;
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;

  const _TimeSlotCard({
    required this.time,
    required this.seats,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = isSelected ? selectedColor : unselectedColor;

    final Color timeTextColor = isSelected ? AppColors.white : AppColors.black;

    final Color seatTextColor =
        isSelected ? AppColors.white : AppColors.mediumGrey;

    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: selectedColor.withOpacity(0.4),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                )
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AppText(
            text: time,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: timeTextColor,
          ),
          const SizedBox(height: 4),
          AppText(
            text: 'Seat: $seats',
            fontSize: 14,
            color: seatTextColor,
          ),
        ],
      ),
    );
  }
}
