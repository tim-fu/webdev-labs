let fontSize = 1.4;
const makeBigger = () => {
   alert('make bigger!');
   fontSize += 0.2;
   document.querySelector(".content").style.fontSize = '${fontSize}em';
   document.querySelector("h1").style.fontSize = '${fontSize + 1}em';
};

const makeSmaller = () => {
   alert('make smaller!');
   fontSize -= 0.2;
   document.querySelector(".content").style.fontSize = '${fontSize}em';
   document.querySelector("h1").style.fontSize = '${fontSize + 1}em';
};

document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);
