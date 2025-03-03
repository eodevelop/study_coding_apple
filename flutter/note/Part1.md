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