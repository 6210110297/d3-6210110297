abstract class ClockState {
  int? hour;
  int? min;
  ClockState({this.hour = 0, this.min = 0});
}

class NormalClockState extends ClockState {
  static final NormalClockState _instance = NormalClockState.internal();

  factory NormalClockState() => _instance;

  NormalClockState.internal() : super(hour: 0, min: 0);
}

class SetHourClockState extends ClockState {
  SetHourClockState({hour, min}) : super(hour: hour, min: min);
}

class SetMinClockState extends ClockState {
  SetMinClockState({hour, min}) : super(hour: hour, min: min);
}
