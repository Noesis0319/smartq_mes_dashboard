
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Color.dart';

enum ResourceType {
  ActionMethod("조치방법", null, null),
  ActionModify("조치수정", null, null),
  ActionRegistration("조치등록", null, null),
  ActionTime("조치일시", Icons.calendar_month, null),
  ActionType("조치유형", Icons.calendar_month, null),
  All("전체", null, null),
  Apply("적용하기", Icons.check, null),
  Authentication("인증", Icons.key, null),
  AuthenticationError("인증오류", Icons.error, null),
  AutoAuth("자동인증", Icons.person, null),
  Back("뒤로가기", Icons.arrow_back, null),
  Brn("사업자번호", Icons.domain, null),
  Call("호출", Icons.add_alert, null),
  CallAction("조치", Icons.calendar_month, null),
  CallCreatedTime("발생일시", Icons.calendar_month, null),
  CallManager("호출담당자", Icons.person, null),
  CallReason("호출원인", Icons.build, null),
  CallResponse("응답", Icons.domain, null),
  CallSeverity("심각단계", Icons.crisis_alert, null),
  Cancel("취소", Icons.cancel, null),
  ClearText("", Icons.highlight_remove_outlined, null),
  Close("닫기", Icons.close_rounded, null),
  CustomerServicePhoneNumber("1899-1363", Icons.phone, null),
  DaysAgo("일 전", Icons.calendar_month, null),
  DisableAutoLogin("자동로그인 해제", Icons.not_interested, null),
  DX("DX platform", null, 'assets/icon/DX_logo_non_text.svg'),
  English("영어", null, null),
  DxMonitoring("DX Monitoring", null, 'assets/image/dx_monitoring_log.svg'),
  EmployeeId("사원아이디", Icons.person, null),
  EndDate("종료일", Icons.event, null),
  Error("에러", Icons.error_outline, null),
  FactoryName("공장명", Icons.domain, null),
  Filter("필터", Icons.manage_search, null),
  FilterDialog("메시지 필터", Icons.domain, null),
  HoursAgo("시간 전", Icons.domain, null),
  Indonesian("Bahasa Indonesia", null, null),
  Inquiry("조회", null, null),
  Japanese("日本語", null, null),
  Korean("한국어", null, null),
  NotResponded("미응답", Icons.warning, null),
  IsResponded("응답", Icons.check_circle, null),
  LineName("동/라인명", Icons.business_sharp, null),
  LoginId("로그인ID", Icons.person, null),
  Login("로그인", Icons.person, null),
  Logout("로그아웃", Icons.person, null),
  LookupPeriod("조회기간", Icons.today, null),
  MachineCode("설비코드", Icons.build_circle, null),
  MachineName("설비명", Icons.settings, null),
  Manager("담당자", Icons.person, null),
  Memo("메모", Icons.message, null),
  Message("메시지", Icons.mail, null),
  MinutesAgo("분 전", Icons.calendar_month, null),
  Newest("최신순", Icons.arrow_downward, null),
  None("", Icons.filter_none, null),
  Occurred("발생일시", Icons.alarm, null),
  Oldest("오래된순", Icons.arrow_upward, null),
  OneHourAgo("1시간 전", Icons.access_time, null),
  OneMinuteAgo("1분 전", Icons.access_time, null),
  OneWeek("일주일", Icons.calendar_month, null),
  OneWeekAgo("지난주", Icons.calendar_month, null),
  Password("비밀번호", Icons.lock, null),
  ProductionCall("생산호출", Icons.notifications_none, null),
  ProductionConditionLine("생산조건라인", Icons.widgets, null),
  SecondsAgo("초 전", Icons.calendar_month, null),
  SimplifiedChinese("中文(简体)", null, null),
  StartDate("시작일", Icons.today, null),
  Refresh("새로고침", Icons.refresh, null),
  RemoteSupport("원격지원", Icons.security_update, null),
  Reset("초기화", Icons.refresh, null),
  SaveId("ID저장", null, null),
  Search("검색", Icons.search, null),
  Setting("설정", Icons.settings, null),
  Spanish("Español", null, null),
  Submit("확인", Icons.check, null),
  Thai("ภาษาไทย", null, null),
  ThisDay("금일", Icons.today, null),
  Today("오늘", Icons.today, null),
  TraditionalChinese("中文(繁體)", null, null),
  Transmission("전송", null, null),
  TransmissionComplete("전송완료", Icons.calendar_month, null),
  Update("업데이트", Icons.system_update, null),
  Vietnamese("Tiếng Việt", null, null),
  Warning("경고", Icons.warning, null),
  WeeksAgo("주 전", Icons.calendar_month, null),
  Yesterday("어제", Icons.calendar_month, null),
  ;

  const ResourceType(this._text, this._iconData, this._assetRoute);

  final String _text;
  final IconData? _iconData;
  final String? _assetRoute;

  /// 번역 o
  getText() => _text.tr();

  /// 번역 x
  getOriginalText() {
    return _text;
  }

  getIcon({Color? color, double? imageHeight, double? imageWidth, bool isDefaultColor = true}) {
    isDefaultColor = color != null ? false : isDefaultColor;
    final Color? finalColor = isDefaultColor ? ColorConstants.Icon.color : color;
    if (_assetRoute != null) {
      int lastIndex = _assetRoute.lastIndexOf('.');
      String extension = _assetRoute.substring(lastIndex + 1);

      if (extension == 'svg') {
        return SvgPicture.asset(_assetRoute,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.cover,
            colorFilter: finalColor != null ? ColorFilter.mode(finalColor, BlendMode.srcIn) : null);
      } else {
        return Image(
          image: AssetImage(_assetRoute),
          color: finalColor,
          width: imageWidth,
          height: imageHeight,
        );
      }
    } else {
      if (_iconData != null) {
        return Icon(
          _iconData,
          color: finalColor,
          size: imageHeight,
        );
      } else {
        return Image(
          image: const AssetImage('assets/icon/default_icon.png'),
          color: finalColor,
          width: imageWidth,
          height: imageHeight,
        );
      }
    }
  }
}

enum AlarmTextType {
  AlertLogout("사원 인증정보를 삭제하고 인증화면으로 되돌아갑니다.\n초기화 하기겠습니까?"),

  ///입력 경고
  AlertNotEnteredBrn("사업자번호를 입력해주세요."),

  ///선택 경고
  AlertNotSelectedManager("담당자를 선택해주세요."),
  AlertNotSelectedFactoryName("공장명을 선택해주세요."),
  AuthenticationError(
      "등록되지 않은 로그인ID이거나,\n사업자번호 또는 로그인ID,비밀번호를\n잘못 입력하셨습니다.\n로그인ID를 잊었거나, 자사 사업자번호로\n인증할수 없는 경우에는 피디엠테크 고객\n센터에 문의하여 도움을 받을 수 있습니다."),
  AuthenticationError2(
      "등록되지 않은 로그인ID이거나,사업자번호 또는 로그인ID,비밀번호를 잘못 입력하셨습니다. 로그인ID를 잊었거나, 자사 사업자번호로 인증할수 없는 경우에는 피디엠테크 고객센터에 문의하여 도움을 받을 수 있습니다."),
  AlertNotSelectedResponseMethod("조치방법을 선택해주세요."),
  AlertNotSelectedResponseTime("조치일자를 선택해주세요."),
  AuthenticationFail("인증에 실패하였습니다."),
  AutoLoginDisabled("자동로그인이 해제 되었습니다."),
  CustomerService("고객센터 1899-1363"),
  DoubleTapExit("한번 더 누르면 앱이 종료됩니다."),
  IncorrectBrn("사업자등록번호가 올바르지 않습니다."),
  IncorrectLoginData("아이디 또는 비밀번호가 올바르지 않습니다."),
  NoMessage("메시지가 없습니다."),
  NotConnectedInternet("인터넷에 연결되어 있지 않습니다."),
  PleaseWait("잠시만 기다려 주십시오..."),
  Refresh("갱신 되었습니다."),
  RequestFail("요청에 실패하였습니다."),
  SearchPlaceholder("검색할 내용을 입력해주세요."),
  Updated("업데이트 되었습니다"),
  ;

  const AlarmTextType(this._text);

  final String _text;

  getText() => _text.tr();
}

enum SystemMessage {
  NotMountedContext(text: "Context is not mounted"),
  ;

  const SystemMessage({required this.text});

  final String text;
}
