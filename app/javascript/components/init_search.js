
const showSearch = () => {
  document.querySelector('#show-search').addEventListener('click', (event) => {
    document.querySelector('#search').classList.remove('d-none');
    event.currentTarget.classList.add('d-none');
  });
};

export { showSearch };
