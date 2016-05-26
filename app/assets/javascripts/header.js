$(document).ready(function() {
    
    // Detect the open link on the header with tabs and apply the open class.
    var $openLink = $('.header-nav a[href="' + window.location.pathname + '"]');
    $openLink.addClass("open");
});
