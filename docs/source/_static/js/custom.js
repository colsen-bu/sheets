// Light/Dark mode toggle for Sphinx RTD theme
document.addEventListener('DOMContentLoaded', function() {
  // Default to dark mode unless user has set a preference
  var userPref = localStorage.getItem('darkMode');
  if (userPref === null) {
    document.body.classList.add('dark-mode');
    localStorage.setItem('darkMode', 'true');
  } else if (userPref === 'true') {
    document.body.classList.add('dark-mode');
  }

  // Create toggle button
  var btn = document.createElement('button');
  btn.innerText = '🌓 Toggle Light/Dark';
  btn.setAttribute('aria-label', 'Toggle light/dark mode');
  btn.style.position = 'fixed';
  btn.style.bottom = '1em';
  btn.style.right = '1em';
  btn.style.zIndex = 1000;
  btn.style.padding = '0.5em 1em';
  btn.style.background = '#3a1c6e';
  btn.style.color = '#fff';
  btn.style.border = 'none';
  btn.style.borderRadius = '5px';
  btn.style.cursor = 'pointer';

  btn.onclick = function() {
    document.body.classList.toggle('dark-mode');
    localStorage.setItem('darkMode', document.body.classList.contains('dark-mode'));
  };

  document.body.appendChild(btn);
});
