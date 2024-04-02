// pulsar la bnarra de navegacion de inconos
let menuIcon = document.querySelector('#menu-icon');
let navbar = document.querySelector('.navbar');

menuIcon.onclick = () => {
    menuIcon.classList.toggle('bx-x');
    navbar.classList.toggle('active');
};

// iluminar el scroll
let sections = document.querySelectorAll('section');
let navLinks = document.querySelectorAll('header nav a');

window.onscroll = () => {
    sections.forEach(sec => {
        let top = window.scrollY;
        let offset = sec.offsetTop - 150;
        let height = sec.offsetHeight;
        let id = sec.getAttribute('id');

        if(top >= offset && top < offset + height) {
            navLinks.forEach(links => {
                links.classList.remove('active');
                document.querySelector('header nav a[href*=' + id + ']').classList.add('active');
            });
        };
    });
    // barra de bavegacion pegagosa
    let header = document.querySelector('header');

    header.classList.toggle('sticky', window.scrollY > 100);

    // Remover el icono pulsar y la barra de navegacion al hacer clic en el enlace de la barra de navegacion (sroll)
    menuIcon.classList.remove('bx-x');
    navbar.classList.remove('active');
};

// scroll reveal
ScrollReveal({ 
    // reset: true,
    distance: '80px',
    duration: 2000,
    delay: 200
});

ScrollReveal().reveal('.home-contect, .heading', { origin: 'top' });
ScrollReveal().reveal('.home-img, .services-container, .portafolio-box, .contact form', { origin: 'bottom' });
ScrollReveal().reveal('.home-contect h1, .about-img', { origin: 'left' });
ScrollReveal().reveal('.home-contect p, .about-content', { origin: 'right' });

// typed.js
const typed = new Typed('.multiple-text', {
    strings: ['Full Stack Developer', 'Admin Server', 'Editor'],
    typeSpeed: 100,
    backSpeed: 100,
    backDelay: 1000,
    loop: true
});