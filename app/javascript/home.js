document.addEventListener('DOMContentLoaded', function() {
  const normalBtn = document.getElementById('normal-btn');
  const easyBtn = document.getElementById('easy-btn');

  normalBtn.addEventListener('click', function() {
    normalBtn.classList.add('active');
    easyBtn.classList.remove('active');
  });

  easyBtn.addEventListener('click', function() {
    easyBtn.classList.add('active');
    normalBtn.classList.remove('active');
  });
});
