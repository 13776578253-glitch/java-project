(function () {
    var forms = document.querySelectorAll("form[data-demo-form='true']");
    for (var i = 0; i < forms.length; i++) {
        forms[i].addEventListener("submit", function () {
            var submitButton = this.querySelector("button[type='submit']");
            if (submitButton) {
                submitButton.disabled = true;
                submitButton.innerText = "提交中...";
            }
        });
    }
})();
