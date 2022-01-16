$(document).ready(function() {
  $('.collapsed-hamburger-icon').on('click', function() {
    $('.navbar-collapsible-item').transition('fade down');
  });

  $('.invert-toggle').checkbox({
    onChecked: () => {
      $('.invert-toggle').checkbox('check');
      $('.ui:not(.keep-inverted-state)').addClass('inverted');
    },
    onUnchecked: () => {
      $('.invert-toggle').checkbox('uncheck');
      $('.ui.inverted:not(.keep-inverted-state)').removeClass('inverted');
    }
  });

  if (document.getElementsByClassName('invert-toggle').length > 0) {
    if ($('.invert-toggle').checkbox('is checked').every(item => item)) {
      $('.ui:not(.keep-inverted-state)').addClass('inverted');
    }
  }

  if (window.innerWidth < 768) {
    $('.navbar-collapsible-item').transition('hide');
  }

  window.addEventListener('resize', function(event) {
    if (window.innerWidth >= 768) {
      $('.navbar-collapsible-item').transition('show');
    } else {
      $('.navbar-collapsible-item').transition('hide');
    }
  }, true);
});
