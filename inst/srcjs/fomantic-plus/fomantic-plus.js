$(document).ready(function() {
  $('.collapsed-hamburger-icon').on('click', function() {
    $('.navbar-collapsible-item').transition('fade down');
  });

  $('.invert-toggle').checkbox({
    onChecked: () => {
      $('.checkbox.invert-toggle').checkbox('check');
      $('.ui:not(.keep-inverted-state,.message)').addClass('inverted');
    },
    onUnchecked: () => {
      $('.checkbox.invert-toggle').checkbox('uncheck');
      $('.ui.inverted:not(.keep-inverted-state,.message)').removeClass('inverted');
    }
  });

  if (document.getElementsByClassName('checkbox invert-toggle').length > 1) {
    if ($('.checkbox.invert-toggle').checkbox('is checked').every(item => item)) {
      $('.ui:not(.keep-inverted-state,.message)').addClass('inverted');
    }
  } else {
    if ($('.checkbox.invert-toggle').checkbox('is checked') === true) {
      $('.ui:not(.keep-inverted-state,.message)').addClass('inverted');
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
