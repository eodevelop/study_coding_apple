## 새로운 프로젝트 생성 & Bootstrap 사용하기

- npm install react-bootstrap bootstrap 명령으로 부트스트랩 설치

## 이미지 넣는 법 & public 폴더 이용하기

- jsx 내에서 style 을 통해서 이미지를 넣을때는 import 문을 사용해야 한다.
  - css 에서는 그냥 경로로 정해도 상관 없음.
- 이미지가 많아지면 import 하기 귀찮아진다.
  - 이때 public 폴더를 활용하면 된다.
- public 폴더는 빌드시 따로 압축안되고 보존된다.
- public 폴더 내부에 내요을 가져오려면 /로 바로 접근가능하다.
- 주의점은 http://호스트/추가페이지 와 같은식으로 메인이 아닌 곳에서 발행하면 잘 안될수도 있다.
- 그럴때를 위해 proprocess.env.PUBLIC_URL + '/파일명' 과 같은식으로 접근하면 잘 불러온다.

## 코드 길어지면 import export 하면 됩니다
