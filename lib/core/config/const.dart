import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';

const personalInfoCollectAgreement = '''
TFair(팀페어)는 맛Q 서비스 회원가입, 고객상담 및 AS, 고지사항 전달 및 서비스 사용을 위해 아래와 같이 개인정보를 수집, 이용합니다.

개인정보 보호법 제15조 제1항
1. 회원 식별 및 회원제 서비스 제공 - 성함, 가게 주소
2. 고객 상담 및 AS관리 - 전화번호
3. 서비스 변경사항 및 고지사항 전달 - 가게 전화번호 및 이메일''';

const thirdPartySharingConsent = ''' 
TFair(팀페어) 맛Q는 회원님의 개인정보를 개인정보 처리방침에서 고지한 제3자 제공 범위 내에서 제공하며, 정보주체의 사전 동의 없이 등 범위를 초과하여 제3자에게 제공하지 않습니다.

1. 없음
''';

const marketingConsent = '''
TFair(팀페어)는 맛Q는 "개인정보 보호법"에 따라 동의를 얻어 아래와 같이 맛Q 서비스의 홍보 및 마케팅을 위한 개인정보를 수집, 이용합니다.

수집목적 / 수집 항목 / 보유 기간
- SMS를 통한 이벤트 참여 기회 제공 / 휴대전화번호, 이메일 / 수집일로부터 6개월
- 사용자 형태 분석을 통한 맞춤형 서비스 제공 / 사용자 접속 기록, 페이지 목록 등 앱 내에서의 모든 행위 / 수집

홍보 및 마케팅에 관한 동의
TFair(팀페어)는 맛Q는 "개인정보 보호법"에 따라 동의를 얻어 아래와 같이 맛Q 서비스의 홍보 및 마케팅을 위한 개인정보를 수집, 이용합니다.
수집목적 / 수집 항목 / 보유 기간
- SMS를 통한 이벤트 참여 기회 제공 / 휴대전화번호, 이메일 / 수집일로부터 6개월
- 사용자 형태 분석을 통한 맞춤형 서비스 제공 / 사용자 접속 기록, 페이지 목록 등 앱 내에서의 모든 행위 / 수집일로부터 3개월
- 서비스 이용시 필요한 필수 정보 / 상호명, 가게 전화번호, 가게 주소 / 수집일로부터 1년
''';

const businessTypeList = [
  '식품제조가공업',
  '식품접객업',
  '건강기능식품판매업',
  '즉석판매제조가공업',
  '축산물가공업',
  '축산물판매업',
  '식육즉석판매가공업',
];

const week = [
  '전체',
  '월',
  '화',
  '수',
  '목',
  '금',
  '토',
  '일',
];

const questContent =
    '퀘스트란 미션과 보상을 합친 용어입니다. 사장님께서 미션을 주시면, 고객님께서 보상을 받는 형태입니다.';

const rewardContent = '보상은 고객이 미션을 완료했을 때, 사장님께서 제공하는 쿠폰입니다.';

const passContent =
    '이용권은 퀘스트를 맛Q 서비스에 올릴 수 있는 화폐입니다. 이용권 한 개당 30일이며, 한 번 사용하면 수정이 불가하니 신중히 사용해주세요!';

const rejectList = [
  '영수증이 불명확합니다',
  '퀘스트와 알맞는 내용이 아닙니다',
  '직접 입력',
];

// const restAPIUrl = 'http://43.202.229.190:9090';
const restAPIUrl = 'http://43.202.229.190:9091';

String imageUrl = '$restAPIUrl/api/open/image/';

SplashStatus strToSplashStatus(String value) {
  return switch (value) {
    'REGISTERED' => SplashStatus.register,
    'UNDER_REVIEW' => SplashStatus.underReview,
    'APPROVED' => SplashStatus.approved,
    'REJECTED' => SplashStatus.reject,
    _ => SplashStatus.needLogin,
  };
}

LoginStatus strToLoginStatus(String str) => switch (str) {
      'APPROVED' => LoginStatus.approved,
      'UNDER_REVIEW' => LoginStatus.review,
      'REGISTERED' => LoginStatus.register,
      'REJECTED' => LoginStatus.reject,
      _ => LoginStatus.failure,
    };
