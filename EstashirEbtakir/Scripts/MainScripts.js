let dropdown_menu_button = document.querySelector(".dropdown-menu-button");
let sections_dd_menue = document.querySelector(".dropdown-item-container");

dropdown_menu_button.addEventListener("click", function () {


    // If the menu is hidden, show it
    if (sections_dd_menue.style.display === "none") {
        sections_dd_menue.style.display = "flex";

    } // If the list is dropdown, hide it
    else {
        sections_dd_menue.style.display = "none";
    }

})