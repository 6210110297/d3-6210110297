import 'clock_state.dart';

class ClockStateManage {
  ClockState state = NormalClockState(hour: 0, min: 0);

  ClockStateManage({hour, min}) {
    state.hour = hour ?? state.hour;
    state.min = min ?? state.min;

    if (state.hour == 0 && state.min == 0) {
      currentStateIndex = 1;
    }
  }

  void incTime() {
    clock.incTime();
  }

  ClockState set() {
    currentStateIndex = (currentStateIndex + 1) % 3;
    state = states[currentStateIndex];
    return state;
  }
}
