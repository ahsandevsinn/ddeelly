import 'package:ddeelly/viewmodel/calender_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'upcoming_deal_widget.dart';
import 'package:ddeelly/core/imports/imports.dart'; 

class HorizontalCalendar extends StatelessWidget {
  final DateTime startDate;
  final DateTime endDate;

  const HorizontalCalendar({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalDays = endDate.difference(startDate).inDays + 1;
    final selectedDate = context.watch<CalendarProvider>().selectedDate;

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: totalDays,
   
        itemBuilder: (context, index) {
          final currentDate = startDate.add(Duration(days: index));
          final isSelected = _isSameDay(currentDate, selectedDate);

          return GestureDetector(
            onTap: () {
              context.read<CalendarProvider>().setDate(currentDate);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              child: UpcomingDealWidget(
                text: '${currentDate.day}',
                subTitle: _weekdayLabel(currentDate),
                backgroundColor:
                    isSelected ? AppColors.primary : AppColors.white,
                textColor: isSelected ? Colors.white : Colors.black,
                borderColor:
                    isSelected ? AppColors.primary : AppColors.discountColor,
              ),
            ),
          );
        },
      ),
    );
  }

  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  String _weekdayLabel(DateTime date) {
    const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return days[date.weekday - 1];
  }
}
