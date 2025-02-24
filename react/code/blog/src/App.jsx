import { useState } from "react";
import "./App.css";

function App() {
  let [글제목, set글제목] = useState([
    "남자 코트 추천",
    "강남 우동 맛집",
    "파이썬 독학",
  ]);
  let [likeCount, setLikeCount] = useState([0, 0, 0]);
  let [modal, setModal] = useState(false);
  let [title, setTitle] = useState("");
  let [inputValue, setInputValue] = useState("");

  function change글제목() {
    let copy = [...글제목];
    copy[0] = "여자 코트 추천";
    set글제목(copy);
  }

  return (
    <div className="App">
      <div className="black-nav">
        <h4>ReactBlog</h4>
      </div>
      {글제목.map(function (item, index) {
        return (
          <div className="list" key={item}>
            <h4
              onClick={() => {
                setTitle(item);
                setModal(true);
              }}
            >
              {item}
              <span
                onClick={() => {
                  let copy = [...likeCount];
                  copy[index] = copy[index] + 1;
                  setLikeCount(copy);
                }}
              >
                👍
              </span>
              {likeCount[index]}
            </h4>
            <p>2월 17일 발행</p>
          </div>
        );
      })}
      <input
        onChange={(e) => {
          setInputValue(e.target.value);
        }}
      />
      {modal ? <Modal title={title} changeFunction={change글제목} /> : null}
    </div>
  );
}

function Modal(props) {
  return (
    <div className="modal">
      <h4>{props.title}</h4>
      <p>날짜</p>
      <p>상세내용</p>
      <button>글수정</button>
    </div>
  );
}

export default App;
