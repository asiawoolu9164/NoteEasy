document.addEventListener('DOMContentLoaded', function() {
    const N_Text = document.getElementById('userText');
    const saveButton = document.getElementById('saveButton');
    const censoredResult = document.getElementById('censoredResult');

    saveButton.addEventListener('click', function() {
        const textToCensor = N_Text.value;
        const censoredText = censorBadWords(textToCensor, badWords);
        censoredResult.innerHTML = censoredText;
    });

    function censorBadWords(text, badWords) {
        const regex = new RegExp(badWords.join('|'), 'gi');
        return text.replace(regex, '*****');
    }

    const badWords = ["badword1", "badword2", "badword3", "badword4"];

    saveButton.addEventListener('click', function() {
        const textToParse = N_Text.value;
        const hashtags = extractHashtags(textToParse);
        renderHashtags(hashtags, hashtagsContainer);
    });

    function extractHashtags(text) {
        const regex = /#(\w+)/g;
        return text.match(regex) || [];
    }

    function renderHashtags(hashtags, container) {
        container.innerHTML = '';
        for (const hashtag of hashtags) {
            const link = document.createElement('a');
            link.href = `https://example.com/hashtag/${hashtag.slice(1)}`;
            link.textContent = hashtag;
            container.appendChild(link);
        }
    }
});
