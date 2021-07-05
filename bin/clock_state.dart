abstract class ClockState {
  int? hour;
  int? min;
  ClockState({this.hour = 0, this.min = 0});
  void incTime();
  ClockState nextState();
}

class NormalClockState extends ClockState {
  NormalClockState({hour, min}) : super(hour: hour, min: min);
  @override
  void incTime() {}
  @override
  SetHourClockState nextState() {
    return SetHourClockState(hour: hour, min: min);
  }
}

class SetHourClockState extends ClockState {
  SetHourClockState({hour, min}) : super(hour: hour, min: min);
  @override
  void incTime() {
    hour = (hour! + 1) % 24;
  }

  @override
  SetMinClockState nextState() {
    return SetMinClockState(hour: hour, min: min);
  }
}

class SetMinClockState extends ClockState {
  SetMinClockState({hour, min}) : super(hour: hour, min: min);
  @override
  void incTime() {
    min = (min! + 1) % 60;
  }

  @override
  NormalClockState nextState() {
    return NormalClockState(hour: hour, min: min);
  }
}
