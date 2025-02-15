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
- 가장 호환성 좋고 일반적인 방법은 <script> 에 src 로 불러오느 방식이 가장 좋다.

## Stack, Queue를 이용한 웹브라우저 동작원리

- 자바스크립트는 빨리 처리되는것과 늦게 처리되는 코드가 저장되는 공간이 다르다.
- 바로 실행되는 코드는 stack 으로 이동 한다.
- 바로 실행 안되는 코드들은 미리 지정(timeout, ajax와 같은)되있으며 대기실로 이동되어 있다.
  - 대기실에서 대기가 끝난 코드들은 queue로 이동 후 stack 으로 이동 시켜둔다.
  - 단 stack 이 비어 있을때만 올려보낸다.
    - 이런 이유로 stack 을 너무 바쁘게 만들면 안된다.
