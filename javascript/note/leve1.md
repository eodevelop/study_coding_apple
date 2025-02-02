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

## 서브메뉴 만들어보기와 classList 다루기

- 태그에 class 를 탈부착 하는 방식이 애니메이션 추가나 나중에 재사용 하기에 편리하다.
- querySelector 를 사용하면 css 에서 접근하듯이 태그에 접근 가능하다.
  - querySelector의 특징은 제일 첫번째 태그 요소만 찾아준다.

## jQuery 사용법 간단정리

- html 을 조작을 쉽게 해주는 라이브러리중 하나가 jQuery 이다.

## 모달창만들기와 간단한 애니메이션

- jquery 에 애니메이션을 주는 간단한 기능들이 많지만 가능하다면 CSS 로만 처리하는게 성능면에서 좋다.
- one-way UI 애니메이션 만드는 법
  1. 시작 스타일 만들기
  2. 최종 스타일 만들기
  3. 원할때 최종스타일로 변경하는 코드 짬
  4. transition 추가하기
- display : none 보다 visibility : hidden 이 더 좋은데 둘의 차이는 display 이 경우 진짜 없애는 방식이고 visibility 의 경우 모습만 순기는 방식이다.

## 폼만들며 배워보는 if else

## 공백검사 숙제와 else if 문법

## input, change 이벤트와 and, or 연산자

## 변수 심화학습시간 & 저번시간 숙제

- var, let, const 의 경우 몇가지 차이점이 존재한다.
  - let 과 const 는 같은 스코프내에서 재선언 불가능
  - const 는 첫 선언시 할당 해줘야 하며 재할당이 불가능
- var 는 함수 내에서 스코프가 유진된다.
- let, const 는 중괄호 내에서 스코프가 유지된다.
