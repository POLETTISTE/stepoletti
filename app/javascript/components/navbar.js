const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-poolandtea');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-dark');
      } else {
        navbar.classList.remove('navbar-dark');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
