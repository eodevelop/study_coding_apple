## 강의 소개와 자바스크립트의 근본

- 자바스크립트는 HTML의 조작을 목적으로 나옴
- html 내부에서 script 태그를 사용하여 자바스크립트 코드를 작성할 수 있음
- 자바스크립트의 장점은 언어에 대해 하나도 몰라도 이름으로 해석이 가능하다.

## 동적 UI 만드는 스텝 (Alert 박스 만들기)

- UI 만드는 Step
  1. HTML/CSS 로 미리 디자인
     - 평소에는 숨겨둔다
  2. 필요할 때 보여달라고 코드 짬

## 자바스크립트 function 문법 사용법

- html 파일은 위에서 부터 읽기 때문에 script 를 위에 쓰면 자바스크립트 코드가 정상적으로 동작하지 못한다.

## function의 파라미터 문법

## 자바스크립트 이벤트리스너

- id 로 태그에 접기 귀찮다면 다른 방법은 class 로 접근하는것
  - getElementsByClassName('') 으로 접근 가능하다.
    > 그럼 그냥 id랑 같지 않나?
  - 클래스명은 여러군데 쓰이기 때문에 인덱스도 적어서 접근해야한다.
- 자바스크립트에서는 addEventListener() 를 사용하면 HTML 에 javascript 코드 추가 없이 기능 연결이 가능하다.
  - document
    .getElementById("close")
    .addEventListener("click", () => changeAlertDisplay("none", ""));
  - 위와 같이 사용가능하며 () => 를 생략하면 해당 함수가 바로 실행되어 버리기 떄문에 꼭 필요하다
