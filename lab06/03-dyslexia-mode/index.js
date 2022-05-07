/* 
  See Smashing Magazine Tutorial:
  https://www.smashingmagazine.com/2021/11/dyslexia-friendly-mode-website/
*/
const initializePage = () => {
  const pressed = window.localStorage.getItem("dyslexic") === 'true';
  if (pressed) {
    document.body.classList.add("dyslexia-mode");
  }

  const toggle = document.querySelector("dyslexia-toggle");
  if (pressed) {
    toggle.setAttribute('aria-pressed','true');
  }

  toggle.addEventListener('click',toggleDyslexiaMode);
};

const toggleDyslexiaMode = ev => {
  let pressed = ev.currentTarget.getAttribute('aria-pressed') === 'true';
  ev.currentTarget.setAttribute('aria-pressed', String(!pressed));
  document.body.classList.toggle("dyslexia-mode");
  window.localStorage.setItem("dyslexic", String(!pressed));
};

initializePage();