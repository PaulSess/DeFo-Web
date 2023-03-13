const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry) => {
    if (entry.isIntersecting) {
      entry.target.classList.add('show');
    }
  });
});

const hiddenElements = document.querySelectorAll('.hidden')
hiddenElements.forEach((el) => observer.observe(el));


const startbutton = document.getElementById('get-started-btn')
const startbuttonTXT = document.getElementById('get-started-btn-txt')
window.addEventListener("load", (event) => {
  startbutton.classList.add('animate__animated', 'animate__backInUp', 'animate__delay-1s')
  startbuttonTXT.classList.add('animate__animated', 'animate__headShake', 'animate__delay-5s')
});
