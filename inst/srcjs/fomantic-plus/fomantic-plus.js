$(document).ready(function() {
  $('.collapsed-hamburger-icon').on('click', function() {
    $('.navbar-collapsible-item').transition('fade down');
  });

  $('.invert-toggle').checkbox({
    onChecked: () => {
      var fui_elements = document.getElementsByClassName('ui');
      $(fui_elements).addClass('inverted');
    },
    onUnchecked: () => {
      var fui_elements = document.getElementsByClassName('ui');
      $(fui_elements).removeClass('inverted');
    }
  });

  if ($('.invert-toggle').checkbox('is checked')) {
    var fui_elements = document.getElementsByClassName('ui');
    $(fui_elements).addClass('inverted');
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
