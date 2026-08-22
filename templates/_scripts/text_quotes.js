module.exports = async function (params) {
    const editor = params.app.workspace.activeEditor?.editor;

    if (!editor) return;

    const selected = editor.getSelection();

    if (!selected) return;

    editor.replaceSelection(`«${selected}»`);
};