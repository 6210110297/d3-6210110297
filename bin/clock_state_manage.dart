import 'clock_state.dart';

class ClockStateManage {
  final List<ClockState> states = [
    NormalClockState(),
    SetHourClockState(),
    SetMinClockState()
  ];

  int state;

  final NormalClockState clock = NormalClockState();

  ClockStateManage({hour, min}) {
    clock.hour = hour ?? clock.hour;
    clock.min = min ?? clock.min;
  }

  ClockState nextState() {}
}
