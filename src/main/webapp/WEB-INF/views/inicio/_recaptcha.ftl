<script src="https://www.google.com/recaptcha/api.js?render=${session.recaptcha_public_key}"></script>
<script>
    grecaptcha.ready(function() {
        window.resetRecaptcha = function() {
            grecaptcha.execute('${session.recaptcha_public_key}', {action: 'ejemplo_recaptcha_tuds'}).then(function(token) {
                document.getElementById('g-recaptcha-response').value = token;
            });
        };
        resetRecaptcha();
  });
</script>
<input type="hidden" name="g-recaptcha-response" id="g-recaptcha-response" required/>