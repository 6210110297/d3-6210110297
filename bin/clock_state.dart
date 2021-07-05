abstract class ClockState {
  final int? hour;
  final int? min;

  static final ClockState _instance=ClockState(hour);
  
  factory ClockState({, this.min = 0}) {
    if (hour == 0 && min == 0) {
      return SetHourClockState();
    }
  }

  ClockState normalState({int? hours, int? min}) {
    return NormalClockState(hours: hours ?? this.hour, min: min ?? this.min);
  }
}

class NormalClockState extends ClockState {
  NormalClockState({hours, min}) : super(hour: hours = 0, min: min = 0);
}

class SetHourClockState extends ClockState {}
