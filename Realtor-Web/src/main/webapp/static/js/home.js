function hideRegistretion() {
    $(".registr").hide();
}
function showRegistration(postId) {
    $("#registr" + postId).show();
    $(".bottom_registr").hide();
}

function cancel() {
    $(".registr").hide();
    $(".bottom_registr").show();
}