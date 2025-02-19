var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");

canvas.width = window.innerWidth - 100;
canvas.height = window.innerHeight - 100;

// 공룡이 등장할 좌표
var dino = {
  x: 10,
  y: 200,
  width: 50,
  height: 50,
  draw() {
    ctx.fillStyle = "green";
    ctx.fillRect(this.x, this.y, this.width, this.height);
  },
};
dino.draw();

class Cactus {
  constructor() {
    this.x = 500;
    this.y = 200;
    this.width = 50;
    this.height = 50;
  }
  draw() {
    ctx.fillStyle = "red";
    ctx.fillRect(this.x, this.y, this.width, this.height);
  }
}

var timer = 0;
var jumpTimer = 0;
var cactuses = [];
var animation;

function 프레임마다실행할거() {
  animation = requestAnimationFrame(프레임마다실행할거);
  timer++;

  ctx.clearRect(0, 0, canvas.width, canvas.height);

  if (timer % 200 === 0) {
    var cactus = new Cactus();
    cactuses.push(cactus);
  }
  cactuses.forEach((cactus, index, array) => {
    if (cactus.x < -100) {
      array.splice(index, 1);
    }
    cactus.x--;
    cactus.draw();

    checkCollision(dino, cactus);
  });

  dino.draw();

  if (jumping) {
    dino.y -= 4;
    jumpTimer++;
  }
  if (!jumping) {
    if (dino.y < 200) {
      dino.y += 4;
    }
  }
  if (jumpTimer > 50) {
    jumping = false;
    jumpTimer = 0;
  }
}

프레임마다실행할거();

var jumping = false;
document.addEventListener("keydown", function (event) {
  if (event.code === "Space") {
    jumping = true;
  }
});

// 충돌 확인
function checkCollision(dino, cactus) {
  var diffX = cactus.x - (dino.x + dino.width);
  var diffY = cactus.y - (dino.y + dino.height);

  if (diffX < 0 && diffY < 0) {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    cancelAnimationFrame(animation);
  }
}
