class TimeSlot {
  final String time;
  final int seats;

  TimeSlot({required this.time,required this.seats});
}


  final List<TimeSlot> slots = [
    TimeSlot(time: '1:00 PM', seats: 15),
    TimeSlot(time: '1:00 PM', seats: 18),
    TimeSlot(time: '1:00 PM', seats: 7),

  ];