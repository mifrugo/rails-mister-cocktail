const showOverflow = () => {
  document.body.style.overflow = 'auto';
};

const showCocktails = () => {

  if (window.scrollY >= document.querySelector('.jumbotron').offsetHeight) {
    showOverflow();
  }

  document.querySelector('#show-cocktails').addEventListener('click', () => {
    document.querySelector('#content').scrollIntoView({ behavior: 'smooth', block: 'center' });
    showOverflow();
  });

};

export { showCocktails };
