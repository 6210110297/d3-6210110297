abstract class ClockState {
  final int? hour;
  final int? min;
  ClockState({this.hour=0,this.min=0});
  nextState();
}

class NormalClockState extends ClockState {
  

  static final NormalClockState _instance = NormalClockState.internal();

  factory NormalClockState({int? hour,int? min}){
    if(hour==0&&min==0){
      
    }
    return 
  }

  NormalClockState.internal()
      : super(hour: 0,min: 0)

  @override
  newState(){
    return SetHourClockState()
  }
}


class SetHourClockState extends ClockState {}
