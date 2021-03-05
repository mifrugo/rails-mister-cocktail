const navBar = () => {
  document.addEventListener('scroll', () => {

    const nav = document.querySelector('nav');

    if (window.scrollY >= document.querySelector('.jumbotron').offsetHeight) {
      nav.classList.add('scrolled');
    } else {
      nav.classList.remove('scrolled')
    }
  });
};

export { navBar };
