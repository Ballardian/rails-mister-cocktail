import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Wurk wurk wurk", "Drank drank drank"],
    typeSpeed: 60,
    loop: true
  });
};

export { loadDynamicBannerText };
