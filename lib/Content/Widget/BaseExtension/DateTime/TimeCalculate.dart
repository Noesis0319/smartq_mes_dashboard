


import '../../../../Resource/ResourceType.dart';

extension TimeAgo on DateTime {

  String timeAgo() {
    final now = DateTime.now();
    final difference = now.difference(this);

    ///
    /// difference를 이용해 계산하면 날짜 차이가 아닌 경과 시간으로 결정,
    /// 따라서 완전히 24시간이 지나야 1일전으로 결정되기 때문에 오차가 발생
    ///
    final differenceDays = now.day -day;

    if ((difference.inDays / 7).floor() > 1) {
      return (difference.inDays / 7).floor().toString() + ResourceType.WeeksAgo.getText();
    } else if((difference.inDays / 7).floor() == 1){
      return ResourceType.OneWeekAgo.getText();
    }else if (differenceDays >= 2) {
      return differenceDays.toString() + ResourceType.DaysAgo.getText();
    } else if (differenceDays == 1) {
      return ResourceType.Yesterday.getText();
    } else if (difference.inHours >= 2) {
      return difference.inHours.toString() + ResourceType.HoursAgo.getText();
    } else if (difference.inHours >= 1) {
      return ResourceType.OneHourAgo.getText();
    } else if (difference.inMinutes >= 2) {
      return difference.inMinutes.toString() + ResourceType.MinutesAgo.getText();
    } else if (difference.inMinutes >= 1) {
      return ResourceType.OneMinuteAgo.getText();
    } else{
      return difference.inSeconds.toString() + ResourceType.SecondsAgo.getText();
    }
  }
}