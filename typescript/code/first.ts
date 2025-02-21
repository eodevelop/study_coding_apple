// 연습 문제1
// 여러분의 이름, 나이, 출생지역을 변수로 각각 저장해봅시다
let userName: string = "유저";
let userAge: number = 22;
let userLocation: string = "한국";

// 연습 문제2
// 여러분이 가장 좋아하는 곡과 가수이름을 변수에 object 자료형으로 담아보십시오.
interface Music {
  songName: string;
  singer: string;
}

let music: Music = { songName: "하입보이", singer: "뉴진스" };

// 연습 문제 3
// 다음과 같이 생긴 자료의 타입지정을 해보도록 합시다.

// let project = {
//   member : ['kim', 'park'],
//   days : 30,
//   started : true,
// }

interface Project {
  member: string[];
  days: number;
  started: boolean;
}
