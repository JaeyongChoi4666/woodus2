ClassicEditor.create(document.querySelector("#ckeditor-classic"))
    .then(editor => {
        window.editor = editor})
    .catch(function (e) {
        console.error(e);
    });