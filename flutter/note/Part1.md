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

## Expanded, Flexible & 상품 레이아웃 숙제

- Flexible 을 사용하면 크기글 % 로 줄 수 있게된다.
  - 내부에 flex 값에 숫자로 값을 넣어주면 된다.
- Expended 를 사용하면 flex를 1 만큼 가진 Flexible 과 같다.