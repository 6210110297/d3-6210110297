import 'clock_state.dart';

class ClockStateManage {
  final List<ClockState> states = [
    NormalClockState(),
    SetHourClockState(),
    SetMinClockState()
  ];

  int currentStateIndex = 0;

  ClockState state = NormalClockState();

  final NormalClockState clock = NormalClockState();

  ClockStateManage({hour, min}) {
    clock.hour = hour ?? clock.hour;
    clock.min = min ?? clock.min;
    if (currentStateIndex == 0 && clock.hour == 0 && clock.min == 0) {
      currentStateIndex = 1;
    }
  }

  ClockState set() {
    currentStateIndex = (currentStateIndex + 1) % 3;
    state = states[currentStateIndex];
    if (currentStateIndex != 0) {
      state.hour = clock.hour;
      state.min = clock.min;
    }
    return state;
  }
}
