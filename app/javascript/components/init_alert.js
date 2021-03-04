const removeAlert = () => {
  $(".alert").fadeTo(2000, 500).slideUp(500, function () {
    $(this).slideUp(500);
  });
};

export { removeAlert }
