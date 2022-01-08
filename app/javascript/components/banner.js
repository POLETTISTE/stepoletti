import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Développeur Web Full Stack", "Freelance"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
