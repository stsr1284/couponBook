console.log("hello");

const searchIcon = document.querySelector(".searchIcon");

function searchBar() {
    if (searchContainer.style.display === 'none' || searchContainer.style.display === '') {
        searchContainer.style.display = 'block';
    } else {
        searchContainer.style.display = 'none';
    }
}

searchIcon.addEventListener("click", searchBar);