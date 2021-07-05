import 'clock_state.dart';

class ClockStateManage {
  ClockState state = NormalClockState(hour: 0, min: 0);

  ClockStateManage({hour, min}) {
    state.hour = hour ?? state.hour;
    state.min = min ?? state.min;

    if (state.hour == 0 && state.min == 0) {
      state = state.nextState();
    }
  }

  void incTime() {
    state.incTime();
  }

  void nextState() {
    state = state.nextState();
  }
}
