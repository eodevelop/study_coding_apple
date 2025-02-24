import { useState } from "react";
import "./App.css";

function App() {
  let [글제목, set글제목] = useState([
    "남자 코트 추천",
    "강남 우동 맛집",
    "파이썬 독학",
  ]);
  let [likeCount, setLikeCount] = useState(0);
  let [modal, setModal] = useState(false);

  return (
    <div className="App">
      <div className="black-nav">
        <h4>ReactBlog</h4>
      </div>
      <button
        onClick={() => {
          let copy = [...글제목];
          copy[0] = "여자 코트 추천";
          set글제목(copy);
        }}
      >
        여자 코트로 변경
      </button>
      <button
        onClick={() => {
          let copy = [...글제목];
          copy.sort();
          set글제목(copy);
        }}
      >
        가나다순 정렬
      </button>
      <div className="list">
        <h4>
          {글제목[0]}
          <span
            onClick={() => {
              setLikeCount(likeCount + 1);
            }}
          >
            👍
          </span>{" "}
          {likeCount}
        </h4>
        <p>2월 17일 발행</p>
      </div>
      <div className="list">
        <h4>{글제목[1]}</h4>
        <p>2월 17일 발행</p>
      </div>
      <div className="list">
        <h4>{글제목[2]}</h4>
        <p>2월 17일 발행</p>
      </div>

      <Modal />
    </div>
  );
}

function Modal() {
  return (
    <div className="modal">
      <h4>제목</h4>
      <p>날짜</p>
      <p>상세내용</p>
    </div>
  );
}

export default App;
