## 틀린그림 찾기능력이 향상되는 Destructuring 문법

- var [a, b, c] = arr; (arr 은 [1, 2, 3] 처럼 구성) 와 같이 모양만 맞춰져 있으면 변수를 만들 수 있다.
- 이를 Destructuring 문법이라 한다.
- var [a, b, c = 10] = arr; 이런식으로 디폴트 값도 넣어둘 수 있다.
- var { name, age } = obj; 이런 방식도 모양만 맞추면 사용 가능하다.
  - 하지만 위치를 맞추는 방식은 아니고 key 값과 이름을 일치 시켜야한다.
  - var { name:나이, age } = obj; 와 같은 방식으로 alias 도 사용가능하다.

```javascript
var name = "kim";
var age = 10;
var obj = { name: name, age: age };
var obj = { name, age }; // ES6 부터 지원 되며 위와 같음
```

```javascript
var obj = { name: "kim", age: 10 };

function method({ name, age }) {
  // object 말고 array 형태도 가능하다.
  console.log(name, age);
}

method(obj); // 이런 문법도 가능해짐
method({ name: "aaa", age: 12 });
```

## import / export 를 이용한 파일간 모듈식 개발

- script 의 타입을 module 로 선언하면 import 사용이 가능해진다.
  - es6 부터 지원
- export 명령어를 통해서 내보낼 객체 지정 가능.
  - export default 라고 쓸수 있는데 이때는 import 에서 자유롭게 alias 가 가능하다
  - 여러개의 객체를 내보내고 싶을때는 default 를 쓰진 못하고 export {a,b} 와 같은 식으로 해줘야 한다.
    - import 쪽에서도 마찬가지로 {} 를 사용후 가져와야 한다.
  - export default 와 export {} 를 동시에 사용도 가능하다.
    - import alias, {} from 'path' 와 같은 방식으로 사용하면 된다.
  - {} 로 감싼 애들은 alias 를 할때 as 를 붙혀야 한다.
  - 와일드카드(\*) 도 사용 가능하지만 as 를 써서 별명을 붙혀줘야한다.
    - default 한 내용은 와일드카드 사용 불가능 하며 직접 가져와야한다.
- var test = require("./library.js"); 와 같은 옛날 방식도 있다.
- 가장 호환성 좋고 일반적인 방법은 &lt;script&gt; 에 src 로 불러오느 방식이 가장 좋다.

## Stack, Queue를 이용한 웹브라우저 동작원리

- 자바스크립트는 빨리 처리되는것과 늦게 처리되는 코드가 저장되는 공간이 다르다.
- 바로 실행되는 코드는 stack 으로 이동 한다.
- 바로 실행 안되는 코드들은 미리 지정(timeout, ajax와 같은)되있으며 대기실로 이동되어 있다.
  - 대기실에서 대기가 끝난 코드들은 queue로 이동 후 stack 으로 이동 시켜둔다.
  - 단 stack 이 비어 있을때만 올려보낸다.
    - 이런 이유로 stack 을 너무 바쁘게 만들면 안된다.

## 동기/비동기처리와 콜백함수라는 용어 깔끔하게 정리

- 자바스크립트 언어 자체는 병렬처리를 지원하지 않는다.
  - 하지만 특수한 처리를 통해서 일부 코드들은 비동기식으로 처리되게 만들어졌다.
- 순차적으로 코드를 실행하기 위해서 콜백함수를 많이사용한다.
  - 이런 방식은 매우 지저분해 지기 때문에 promise 방식을 많이 사용한다.

## 인간의 언어로 설명하는 ES6 Promise

- new Promise() 로 만들 수 있다.
  - then 을 사용하면 첫 실행한 내용 후 다음걸 실행할 수 있다.
  - catch 를 사용하면 해당 내용이 실패하면 실행할 내용도 작성 가능.
  - finally 도 마찬가지로 사용 가능
- promise 사용 시 성공 실패 판정도 해줘야 정상적으로 동작한다.
  - promise 는 성공 실패 판정 기계
- 관습적으로 프로미스에 들어가는 함수의 파라미터는 resolove, reject 두개의 파라미터를 관습적으로 사용한다.
- 프로미스 함수 내부에서 resolve 함수가 실행되면 성공, reject 함수가 실행되면 실패로 인지한다.
- 콜백함수에 비해서 사용이 좀 더 까다롭지만 가독성이 더 좋음
- 만들고 나면 사용하고 난 다음 상태는 3가지로 나뉜다.
  - 결론 미 정의 시 pending
  - 성공 시 resolve
  - 실패 시 reject
- promise 에 대한 오해
  - 동기적 처리가 비동기적 처리로 가능하게 만들어주는게 아니다.
    - 내부에서 비동기적 처리를 도와주는 기능들을 쓸 수 는 있다.

## ES6 Promise 간단 연습문제 & 해설

## Promise 어려워서 싫으면 async/await을사용합시다

- es8 부터 나온 async/await 문법
- async 를 function 앞에 붙이면 항상 해당 함수 이후에 Promise 가 남는다.
- await 은 항상 async 안에서만 쓸 수 있다.
- 실패를 다루는 문법은 자바 처럼 try catch 를 사용한다.

## for in / for of 반복문과 enumerable, iterable 속성

- for in 반복문은 object 에 있는 파라미터를 하나씩 가져오고 싶을때 쓴다
  - enumerable 한 것만 반복해준다.
    - enumerable 이란 getOwnPropertyDescriptor 로 확인 시 셀수 있는 변수인지 설정되는 내용이다.
  - 부모의 prototype 도 반복해준다.
    - 부모까지 쓸일은 잘 없기 때문에 obj.hasOwnProperty(key) 로 검사해서 사용하는것도 방법이다.
- for of 반복문은 array 에 있는 인덱스를 하나씩 가져오고 싶을때 쓴다.
  - array 뿐만 아니라 문자, arguments, NodeList, Map, Set 등도 가능
  - 즉 iterable 한 자료형에만 가능하다 이 또한 위 처럼 자바스크립트에서 몰래 숨겨둔 속성이다.
    - 배열[Symbol.iterator]; 이런식으로 접근 시 접근 가능한 애들이 of 로 반복할 수 있는 애들이다.

## Symbol 자료형은 쓸모없어보이는데 왜 있는거죠

- 별로 쓸데는 없다.

```javascript
var 심볼 = Symbol("설명");
```

- 위 처럼 만들 수 있다.
- 오브젝트의 키 값으로 사용 가능
  - 숨기고 싶은 내용의 key 값으로 사용

```javascript
var 심볼 = Symbol("설명");
var person = { name: "kim" };
var person = { name: "kim", [심볼]: 100 }; // 이런식으로도 가능하다.
person[심볼] = 100;
```

- 위처럼 적으면 심볼 내용은 for in 반복문이 돌 떄 나오지 않는다.
  - enumerable 하지 않다고도 한다.
- 심볼의 특징
  1. 설명이 같다고 해도 같은 Symbol 이 아니다.
  - 만들때마다 유니크함
  2. 전역 심볼을 만들려면 Symbol.for() 로 만들면 같은 설명이라면 싱글톤으로 가져오게 된다.
  3. 어레이에 Symbol.iterator 인덱스로 접근하면 미리 넣어둔 기본 심볼을 확인할 수 있다.
  - 해당 내용을 통해 for of 나 spread 연산자를 사용할때 다음 연산으로 이동 가능하다.

## 매우 짧게 알아보는 Map, Set 자료형

- new Map() 으로 만들 수 있다.
  - map.set(key, value) 순으로 저장 가능하다.
  - map 자료형은 자료간의 연관성을 표현 하기 위해 사용한다.
  - Object 는 key 값이 고정된 자료형이지만 Map 모든 자료형이 가능하다.
  - 선언시 초기화 하려면 아래처럼 하면 된다.
    - 2차원 배열 형태로 들어가는듯

```javascript
var map2 = new Map([
  ["name", "kim"],
  ["age", 12],
]);
```

- set 자료형은 중복을 허용하지 않는 자료형이다.
  - new Set() 으로 만들 수 있다.
  - 중복을 넣으면 자동으로 사라진다.
  - 초기화는 map 과 유사하지만 1차원 배열로 넣어주면 된다.
  - array로 바꾸고 싶으면 [... set] 처럼 쓰면된다.

## Web Components : 커스텀 HTML 태그 만들기

- Web Components 문법을 쓰면 커스텀 컴포넌트를 만들 수 있다.
  - js 자체 기능은 아니며 브라우저에서 제공하는 기능이다.

```javascript
class 클래스 extends HTMLElement {
  connectedCallback() {
    let name = this.getAttribute("name");
    this.innerHTML = `<label>${name}안녕하세요</label><input>`;
  }

  static get observedAttributes() {
    return ["name"];
  }

  attributeChangedCallback() {
    (attribute 변경시 실행할 코드)
  }
}

customElements.define("custom-input", 클래스);
```

- 위 처럼 적은 후 아래처럼 HTML 에서 사용 가능

```HTML
<custom-input name="비번"></custom-input>
```

## shadow DOM과 template으로 HTML 모듈화하기

- input 태그 안에 숨어있는 요소들을 Shadow DOM 이라고 한다.
  - 사용자가 이를 이용해서 직접 만들수도 있다.
  - 딱히 쓸땐 없음

```javascript
<div class="mordor"></div>
<script>
document.querySelector('mordor').attachShadow({mode : 'open'}); // 이걸 해줘야 shadowRoot 가 생긴다.
document.querySelector('mordor').shadowRoot.innerHTML = '<p>심연에서왔도다</p>'
</script>
```

- 그나마 사용할려면 Web Components 사용시 스타일이 다른곳에 영향줄수도 있으니 이를 Shadow dom 에 넣어서 방지 가능하다.

## class로 만들어보는 간단한 2D 게임 1 (배웠으면 써먹어야하니까)

- canvas 태그는 html 에 그림을 그리는 태그이다.

## class로 만들어보는 간단한 2D 게임 2 (collision detection)

- .foreach 메소드는 내부에 인수를 3개 넣을 수 있는데 item, index, array 순이다

## ?. / ?? 연산자 (optional chaining)

- ?. 를하면 왼쪽의 객체가 null 이나 undefined 라면 점 안찍고 undefined 를 남겨준다.
- ?? 문법은 obj(undefined 나 null) ?? "대신 출력"
  - 위 처럼 obj 가 null 이면 오른쪽의 데이터를 대신 출력해준다.
