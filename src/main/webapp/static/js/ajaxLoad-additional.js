(function($) {
  $(document).on('click', '[data-toggle="ajaxLoad"]', function(event) {
    event.preventDefault()
    event.stopPropagation()
    var target = $(event.currentTarget).data('target');
    var ajaxLoad = $(target).ajaxLoad().data('coreui.ajaxLoad');
    if (!ajaxLoad) {
      return;
    }
    if (event.currentTarget.target === '_top') {
      ajaxLoad.loadTop(event.currentTarget.href)
    } else if (event.currentTarget.target === '_blank') {
      ajaxLoad.loadBlank(event.currentTarget.href)
    } else {
      ajaxLoad.setUpUrl(event.currentTarget.getAttribute('href'))
    }
  });
})(jQuery);
