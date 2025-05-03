## 플러터 기본 위젯 넣는 법

- 해당 파일에 아래 내용 추가

```yaml
(analysis_options.yaml)

rules:
  prefer_const_constructors: false
  avoid_print: false
  prefer_typing_uninitialized_variables: false
  prefer_const_constructors_in_immutables: false
```

- 린트 끄는 용도. 나중에는 다시 키고 사용할것
- 기본 클래스 만드는 스니펫 stless
- 생성된 build 함수 안에 MaterialApp 을 리턴으로 만들고 코드 짜면된다.
- 플러터에서 앱 디자인 넣는법
  - 위젯 짜집기
- 이미지 폴더는 최상위에 assets 폴더를 만든다.
- 이미지 추가는 assets 에 넣은 후 이미지를 등록을 해줘야한다.
  - 내부에 pubspec.yaml 파일에 내용을 등록해준다.
    - flutter 밑에 assets 넣은 후 밑에 - assets/ 저장해두면 모든 이미지 파일을 다 읽어 올 수 있다. 

## 플러터 기본 앱 레이아웃 만드는 법 (Scaffold)

- MaterialApp 이란?
  - 얘도 위젯이다.
  - 구글이 제공하는 마테리얼 테마를 활용해서 쉽게 앱 개발을 도와줌
    - 구글 스타일로 만들어 진다.
  - 자체적으로 디자인 하고 싶어도 MaterialApp 으로 시작하는게 좋다.
- Scaffold는 앱을 상중 하로 나눠주는 위젯
- 여러 위젯을 가로로 배치할떄는 Row(childer:[]) 을 사용한다.
  - 세로는 Column 으로 작업해주면된다.

## Flutter에서 박스디자인하는 법 (margin, padding, 정렬)

- width, height, Child 정도만 제어하면 된다면 Container 대신 SizedBox 를 쓰는게 좋음
- 기본적인 디자인 속성 이름들은 css 와 비슷
- 여러 잡다한 내용들은 decoration 에서 제어 가능하다.

## 플러터 Typography & 알아서 레이아웃 잘짜려면

- hex 코드로 컬러 넣을때는 Color(0xFF코드) 와 같은 식으로 넣으면 된다.
  - Color.fromRGBO() 와 같은 메소드 사용해도 된다.
- 버튼은 3개중에하나 선택
  1. TextButton()
  2. IconBUtton()
  3. ElevatedButton()
- AppBar 에서 자주 쓰는 속성들
  - title : 왼쪽 제목
  - leading: 왼쪽에 넣을 아이콘
  - actions: 리스트를 넣으면 우측에 넣을 버튼 지정 가능
- 레이아웃 혼자서 잘짜는 법
  1. 원본 디자인 준비
  2. 예시화면에 네모 그리기
  3. 바깥네모부터 하나하나 위젯으로
     - 최상단은 Container, 내부는 Row, Column 위젯으로 구현

## Expanded, Flexible & 상품 레이아웃 숙제

- Flexible 을 사용하면 크기글 % 로 줄 수 있게된다.
  - 내부에 flex 값에 숫자로 값을 넣어주면 된다.
- Expended 를 사용하면 flex를 1 만큼 가진 Flexible 과 같다.

## 코드가 길어지면 커스텀 위젯만드세요

- StatelessWidget 상속받는 클래스를 생성한다.
  - 길고 복잡한 코드가 될때 사용하면 좋음
  - stless 라고 적으면 스니펫 사용 가능
```dart
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}
```
- 본인의 이름과 같은 const 변수가 하나 생긴다.
  - 나중에는 이영역을 통해서 외부에서 사용가능한 키값들을 정의 가능하다고 한다.
- 커스텀 레이아웃을 안만들고 변수를 만들어서 축약 가능하다.
```dart
var a = SizedBox(
  child: Text('안녕'),
);
```
- 하지만 위 방법은 성능에 이슈가 있을수도 있어서 변경되지 않는 값만 위 처럼 사용하는 것이 좋다.
- 커스텀 위젯의 단점은 state 의 관리가 힘들어지거나하는 단점들이 있다.

- 위젯은 내부에 내용이 많아진다고 자동으로 스크롤바가 생기지 않는다.
  - 그런 이유로 자동으로 스크롤을 생기게 하려면 ListView를 사용하면 좋다.
  - 그 외에도 ListView 에는 여러가지 장점이 존재한다.
    1. 스크롤바 생김
    2. 스크롤 위치 감시 가능
    3. 메모리 절약 가능

## 목록 많이 만들 땐 ListView.builder, 버튼에 기능만들기

- ListView.builder 를 사용하면 반복문 쉽게 사용 가능
  - 내부 속성에 itemCount는 반복 숫자, itemBuilder 는 함수가 들어가는데 return 으로 위젯 들어가면됌
  - itemBuilder 에는 context, index 라는 파라미터가 들어가야 한다.
- 메소드 내부에 print 메소드 사용시 콘솔창에 출력 가능
- 변수 선언 후 화면에 표시해줄때는 재렌더링 해줘야 한다.

## StatefulWidget 만들기

- 재렌더링 방법
  - state를 가져다 쓰면 된다.
  - state를 사용하기 위해선 StatefulWidget 를 상속받은 클래스를 만들어야 한다.
  - stful 로 스니펫 있음
  - 기존 상속을 StatefulWidget 로 컨버터 해서도 사용 가능하다.
  - StatefulWidget 내부에서 setState(() {}) 를 만들어서 내부에서 변경시 값이 화면에 반영된다.

## Dialog/모달창 만드는 법과 context가 뭔지

- showDialog 메소드 사용 후 builder 속성의 return 에서 디자인 해주면 된다.
  - 일반적으로 Dialog 위젯을 사용해서 디자인
  - MaterialApp 을 밖에 내보내줘야 정상적으로 Dialog 가 출력된다.
- 위 내용의 원리
  - context 는 커스텀 위젯을 만들때마다 강제로 하나씩 생성된다.
    - 부모 위젯이 누구인지를 담고 있는 변수이다.
  - showDialog의 경우 부모에 MaterialApp 가 있어야 정상적으로 작동한다. 

## 자식 위젯이 부모 위젯의 state를 사용하고 싶으면

- 보내는 방법
  1. 자식위젯(작명: 보낼state)
  2. 작명한 얘를 등록한다.
- 자식이 부모한테 데이터 보내기는 안된다.
- 옆에 있는 위젯한테도 데이터 보내기는 안된다.

## 자식 위젯이 부모 위젯의 state를 변경하고 싶으면

- 부모 state 를 자식이 수정하려면
  1. 부모에 수정 함수 만들기
  2. 자식으로 보내기
- inputType 에서 사용자의 입력값을 저장하기 위해서는 controller 속성에서 필드 변수와 연결시켜줘야한다.
  - 선언한필드변수.text 로 받아올 수 있다.
  - onChanged 속성으로 메소드로 연동도 가능하다.
    - 여기서 사용자가 입력한 값은 메소드에 첫번째 파라미터로 받아야 한다.
  - input 필드가 많은 경우에는 List([]) 나 Map({}) 을 사용하면 된다.

## 유저에게 앱 권한 요청하기

- pubspec.yaml 이 의존성 추가 파일이다.
```yaml
dependencies:
  permission_handler: ^10.4.0
```
- 위 명령이 권한 핸들하는 의존성
- 노란 전구에서 pub get 으로 라이브러리 받아올 수 있다.
- 네이티브 설정을 위해서 android 폴더 내부에서 gradle 을 건드려야 할 수도 있다.
- android/app/build.gradle.kts 파일에서 버전도 맞춰줘야 한다.
```kts
android {
  namespace = "com.example.contact"
  compileSdkVersion(33)
  ndkVersion = "27.0.12077973"
```
- android/app/src/main/AndroidManifest.xml 파일을 직접 건드려서 받아오려는 퍼미션을 건드려야 한다.
```xml
<manifest 어쩌구>

    <uses-permission android:name="android.permission.READ_CONTACTS"/>
    <uses-permission android:name="android.permission.WRITE_CONTACTS"/>

   <application 어쩌구>
```
- 이후 dart 코드에서 유저에게 요청하는 코드를 넣어야 한다.
```dart
  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();
      openAppSettings(); // 유저가 몇번 거절한 경우 다시 안뜨기 때문에 사용자가 직접 설정할수 있게 설정창을 띄운다.
    }
  }
```
- 위 코드로 실행 가능