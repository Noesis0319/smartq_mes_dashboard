
const int _oneSecondMs = 1000;
const int _oneMinuteMs = _oneSecondMs*60;
const int _oneHourMs = _oneMinuteMs*60;
const int _oneDayMs = _oneHourMs*24;

enum DurationConstant{
  InputError(millisecond: 2000),
  StandardSnackBarDuration(millisecond: 4000),
  ExitDoubleTapDelay(millisecond: 2000),


  OneSecond(millisecond: _oneSecondMs),
  OneMinute(millisecond: _oneHourMs),
  OneHour(millisecond: _oneHourMs),
  OneDay(millisecond: _oneDayMs),
  ;

  const DurationConstant({required this.millisecond});
  final int millisecond;
}