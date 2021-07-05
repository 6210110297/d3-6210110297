abstract class ClockState {
  int? hour;
  int? min;
  final NormalClockState clock = NormalClockState();
  ClockState({this.hour = 0, this.min = 0});
  void incTime();
}

class NormalClockState extends ClockState {
  static final NormalClockState _instance = NormalClockState.internal();

  factory NormalClockState() => _instance;

  NormalClockState.internal() : super(hour: 0, min: 0);
  @override
  void incTime() {}
}

class SetHourClockState extends ClockState {
  SetHourClockState({hour, min}) : super(hour: hour, min: min);
  @override
  void incTime() {
    clock.hour = (clock.hour! + 1) % 24;
  }
}

class SetMinClockState extends ClockState {
  SetMinClockState({hour, min}) : super(hour: hour, min: min);
  @override
  void incTime() {
    clock.min = (clock.min! + 1) % 60;
  }
}
