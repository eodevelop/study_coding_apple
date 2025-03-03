## 리액트 React 설치와 개발환경 셋팅

- npm create vite@latest 명령어로 시작
- jsx 확장자는 js 확장자와 큰 차이는 없다.
- SPA는 기본적으로 html 하나만 쓴다는 의미로 생각해도 된다.
- index.html -> main.jsx -> app.jsx 순으로 호출해서 사용한다.
- public 폴더는 쓸데없는 이미지와 같은 파일을 저장하는 용도

## 리액트에서 레이아웃 만들 때 쓰는 JSX 문법 3개

- jsx 에서도 제대로 동작하는 이유는 return 내부의 내용이 html 이 아니라 jsx 이기 떄문이다.
- class 넣을땐 class 대신에 className
- 변수를 html 에 넣고 싶으면 {변수} 를 사용해서 넣으면 된다.
- jsx 에서 스타일을 넣고 싶을땐 태그 내부에 style={} 와 같은 식으로 넣어줘야 한다.
  - 내부에 그냥 값을 넣는게 아니라 {{}} 처럼 오브젝트 형태로 넣어줘야 한다.
  - css 속성의 -기호를 쓰지 않고 카멜케스로 넣어줘야한다.

## 중요한 데이터는 변수말고 state에 담습니다

- return 내부에는 최상위 단에 하나의 태그만 있어야 한다.
- 데이터의 변경이 화면에 반영되어야 하는 경우에는 state 문법을 써야한다.
  - useStat 를 사용하면된다.
  - let [a, b] = useState(""); 와 같이 사용한다.
    - a 는 ""의 값이 들어간다.
    - b 는 state 의 변경을 도와주는 함수
- Destructuring 문법은 하나이상의 데이터가 있는경우 []로 한번에 변수를 선언할수 있는 문법이다.
  - 서로간의 짝을 맞춰서 선언해줘야 한다.
- state 는 배열로도 만들수 있다
  - useState(['','']) 와 같은 방식으로 사용하면된다.

## 버튼에 기능개발을 해보자 & 리액트 state변경하는 법

- react 에서는 함수 없이 바로 이벤트 리스너에 넣을 수는 없고, 무조건 함수를 통해서 넣어야 한다.
  - 내부에 직접 함수 선언은 가능하다
  - 화살표 함수도 가능
- state 는 set 메소드를 통해서만 변경해줘야 한다.
  - 이 메소드를 사용해줘야 화면에서도 자동으로 변경된다.

## array, object state 변경하는 법

- 원본 데이터를 직접 변경 후 setter 에 넣게 되면 신규와 기존이 같다고 판단해서 데이터를 바꿔주지 않는다.
  - 즉 주소값으로 들어간 경우 화면의 변경 여부는 주소값이 변경되는가이다.

## Component : 많은 div들을 한 단어로 줄이고 싶으면

- html 은 웹페이지만 좀 더 길어지면 더럽게 느껴진다.
- 컴포넌트 만드는 법
  1. function 만들기
  2. return() 안에 html 담기
  3. <함수명></함수명> 쓰기
- 컴포넌트를 만드는 문법2
  - 화살표 함수로도 컴포넌트를 만들 수 있다.
  ```javascript
  let Modal = () => {
    return <div></div>;
  };
  ```
  - 이렇게 만들때 const 로 만드는 사람도 있는데 재할당 실수를 방지하기 때문이다.
- 의미 없는 div를 만들기 싫으면 아무 내용 없이 <></> 로 감싸줘도 된다.
- 컴포넌트 만들어 쓰면 좋은 경우
  1. 반복적은 html 축약할 때
  2. 큰 페이지들은 컴포넌트로
  3. 자주 변경되는 것들
- 컴포넌트의 단점은 state 를 가져다 쓰기 불편해진다.

## 리액트 환경에서 동적인 UI 만드는 법 (모달창만들기)

- html 내부에서는 {} 내부에 if 는 못쓰고 삼항연산자를 사용해서 넣으면 된다.
  ```javascript
  {
    modal ? <Modal /> : null;
  }
  ```
- 동적인 UI 만드는 step
  1. html css 로 미리 디자인 완성
  2. UI 의 현재 상태를 state 로 저장
  3. state 에 따라 UI 가 어떻게 보일지 작성

## map : 많은 div들을 반복문으로 줄이고 싶은 충동이 들 때

- 중괄호 내에서는 for 는 사용 못하고 map 을 통해서 반복문을 사용해야 한다.

## 자식이 부모의 state 가져다쓰고 싶을 때는 props

- 함수에서 함수간 데이터를 전달하기 위해서는 props 를 사용해야 한다.
- 부모 -> 자식 state 전송하는 법
  1. <자식컴포넌트 작명={state이름}>
  2. 자식 funtion 에서 매개변수를 선언
  3. 자식 내부에서 매개변수명.작명 으로 사용 가능

## props를 응용한 상세페이지 만들기

## input 1 : 사용자가 입력한 글 다루기

- react 에서는 무조건 태그를 열었으면 닫아줘야 한다
  - 예시 input 과 같은 태그
- onChange 는 값이 입력될때마다 이벤트 발생
  - 이 외에도 여러가지 이벤트 핸들러들이 존재한다.
- 이벤트가 상위 이벤트로 퍼지는 이벤트 버블링을 막으려면 e.stopPropagation(); 을 사용하면 막을 수 있다.
  - js 문법이다.
- 제일 처음 값은 로그로 안뜨고 다음값부터 뜨거나할수도 있는데 state 의 변경에는 시간이 좀 걸리기 때문이다.

## class를 이용한 옛날 React 문법

- 요즘은 다 function 만 쓴다.
  - 옛날 코드 볼때 대비용으로 참고

```javascript
class Modal2 extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "kim",
      age: 20,
    };
  }

  render() {
    return (
      <div>
        안녕{this.state.age}
        <button
          onClick={() => {
            this.setState({ age: 21 });
          }}
        >
          버튼
        </button>
      </div>
    );
  }
}
```

## 만든 리액트 사이트 build & Github Pages로 배포해보기

1. npm run build 로 빌드

   - dist 혹은 build 라는 폴더에 index.html 파일이 생성된다.

2. 배포전 체크할 사항

   - 미리보기 띄워볼때 콘솔창, 터미널에 에러가 안나야함
   - 사이트 배포시 하위 경로에 배포하고싶으면 별도로 설정이 필요하다
     - package.json 파일안에 "homepage": "/blog", 와 같이 넣어주면 http://내url/blog/ 처럼 나오게된다.
     - vite인 경우 defineConfig 내부에 base : '/blog' 처럼 넣어주면 된다.

3. 깃허브에서 배포 시 "내깃허브 아이디.github.io" 로 레파지토리 생성
4. 이후 레파지토리안에서 dist 내부 파일 드래그앤 드롭 후 커밋
5. "내아이디.github.io" 로 접속하면 내 사이트가 보인다.
