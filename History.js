const recentNotes = [
        "Note Title 1",
        "Note Title 2",
        "Note Title 3",
        "Note Title 4",
        "Note Title 5",
        "Note Title 6",
        "Note Title 7",
        "Note Title 8",
        "Note Title 9",
        "Note Title 10"
    ];

    function populateRecentNotes() {
        const notesList = document.getElementById("notes-list");

        notesList.innerHTML = "";

        recentNotes.forEach((note, index) => {
            const listItem = document.createElement("li");
            listItem.textContent = note;
            notesList.appendChild(listItem);
        });
    }

    populateRecentNotes();