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
