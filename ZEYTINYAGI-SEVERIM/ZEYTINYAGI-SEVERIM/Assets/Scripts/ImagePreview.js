function readUrl(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#img_image').attr('src', e.target.result)
        }
        reader.readAsDataURL(input.files[0]);
    }
}
$("#ContentPlaceHolder1_fu_Image").change(function () {
    readUrl(this);
})