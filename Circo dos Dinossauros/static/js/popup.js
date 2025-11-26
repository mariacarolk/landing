// Controle do popup de anúncio
function closePopup() {
  const popup = document.getElementById('announcement-popup');
  if (popup) {
    popup.classList.add('popup-hidden');
    // Salvar no localStorage que o usuário já viu o popup
    localStorage.setItem('popupClosed', 'true');
  }
}

// Mostrar popup ao carregar a página (apenas se não foi fechado antes)
window.addEventListener('DOMContentLoaded', function() {
  const popupClosed = localStorage.getItem('popupClosed');
  const popup = document.getElementById('announcement-popup');
  
  // Mostrar popup após 1 segundo, apenas se não foi fechado antes
  if (!popupClosed && popup) {
    setTimeout(function() {
      popup.classList.remove('popup-hidden');
    }, 1000);
  }
});

