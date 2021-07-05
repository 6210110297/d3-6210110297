import 'clock_state.dart';

class ClockStateManage {
  final List<ClockState> states = [
    NormalClockState(),
    SetHourClockState(),
    SetMinClockState()
  ];

  int currentState = 0;

  final NormalClockState clock = NormalClockState();

  ClockStateManage({hour, min}) {
    clock.hour = hour ?? clock.hour;
    clock.min = min ?? clock.min;
  }

  ClockState nextState() {
    currentState = (currentState + 1) % 3;
    return states[currentState];
  }
}
