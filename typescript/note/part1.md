## Typescript 필수문법 10분 정리와 설치 셋팅 (Vue, React 포함)

- 설치 방법

  - npm 기반 설치되어 있다는 가정하에 시작

  1. npm install -g typescript
  2. 작업할 폴더 생성
  3. 폴더 내에서 ts 파일 생성
  4. 터미널에서 tsc -w 입력시 자동으로 변환 해줌
  5. 웹 브라우저에서는 ts 파일 인식 못하므로 js 파일로 변환 후 사용

  - 리액트에서 사용하는 경우

  1. npm install --save typescript @types/node @types/react @types/react-dom @types/jest

  - 처음부터 ts 적용된 리액트 만드는 경우

  1. npx create-react-app my-app --template typescript

  - vue 에서 사용하는 경우

  1. vue add typescript

## Typescript 컴파일시 세부설정 (tsconfig.json)
