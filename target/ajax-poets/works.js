function showWorklist() {
    hideEverything();
    const worksEl = document.getElementById('worklist-content');
    worksEl.style.display = 'block';

    const userNameEl = document.getElementById('worklist-user-name');
    userNameEl.textContent = 'Works of ' + globalSessionUser.fullName;

    const params = new URLSearchParams();
    params.append('userId', globalSessionUser.id);

    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', onWorksReceived);
    xhr.open('POST', 'protected/works');
    xhr.send(params);
}

function onWorksReceived() {
    const text = this.responseText;
    const works = JSON.parse(text);
    document.getElementById('worklist').remove();
    document.getElementById('worklist-content').appendChild(createWorksTable(works));
}

function createWorksTable(works) {
    const tabEl = document.createElement('table');
    tabEl.setAttribute('id', 'worklist');
    for (let i = 0; i < works.length; i++) {
        const idEl = document.createElement('td');
        idEl.textContent = works[i].id + ": ";

        const titleEl = document.createElement('td');
        titleEl.textContent = works[i].title;
        titleEl.setAttribute('data-work-id', works[i].id);
        titleEl.addEventListener('click', onWorkTitleClicked);

        const rowEl = document.createElement('tr');
        rowEl.appendChild(idEl);
        rowEl.appendChild(titleEl);
        tabEl.appendChild(rowEl);
    }
    return tabEl;
}

function onWorkTitleClicked() {
    const workId = this.getAttribute('data-work-id');

    const params = new URLSearchParams();
    params.append('workId', workId);

    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', onWorkContentReceived);
    xhr.open('POST', 'protected/work_content');
    xhr.send(params);
}


function onWorkContentReceived() {
    hideEverything();
    workEl.style.display = 'block';

    const dispEl = document.getElementById('word-count-display');
    dispEl.textContent = '';

    text = this.responseText;
    const work = JSON.parse(text);
    
    const workTitleEl = document.getElementById('work-title');
    workTitleEl.textContent = work.title;

    const workBodyEl = document.getElementById('work-body');
    workBodyEl.textContent = work.content;

    const backButtonEl = document.getElementById('work-back-button');
    backButtonEl.setAttribute('userId', work.userId);
}

function onWorkBackButtonClicked() {
    const userId = this.getAttribute('userId');
    showWorklist(userId)
}

function onWordCountButtonClick() {
    const workText = document.getElementById('work-body').textContent
    const searchPhrase = document.getElementById('word-count-search').value;
    const count = (workText.match(new RegExp(searchPhrase, 'g')) || []).length;
    const dispEl = document.getElementById('word-count-display');
    dispEl.textContent = 'Occurences: ' + count;
}