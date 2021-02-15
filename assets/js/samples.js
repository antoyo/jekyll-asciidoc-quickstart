var code_samples = document.getElementById("code_samples");
var sample_image = document.getElementById("sample_image");

code_samples.addEventListener("change", function() {
    var sample = code_samples.options[code_samples.selectedIndex];
    var codes = document.getElementsByClassName("code");
    for(var code of codes) {
        code.style.display = "none";
    }
    var code = document.querySelector(".code[data-id='" + sample.dataset.id + "']");
    code.style.display = "block";

    sample_image.src = sample.dataset.image;
});
