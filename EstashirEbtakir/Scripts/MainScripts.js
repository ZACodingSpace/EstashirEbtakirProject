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


var admin_data = document.getElementById('admin_data');
var add_more_fields = document.getElementById('add_more_fields');
var remove_fields = document.getElementById('remove_fields');

add_more_fields.onclick = function () {
    var newField = document.createElement('input');
    newField.setAttribute('type', 'date');
    var newFieldd = document.createElement('input');
    newFieldd.setAttribute('type', 'time');
    var newFielddd = document.createElement('input');
    newFielddd.setAttribute('type', 'number');
    newFielddd.setAttribute('placeholder', 'السعر');
    newField.style.float = 'left'
    admin_data.appendChild(newField);
    admin_data.appendChild(newFieldd);
    admin_data.appendChild(newFielddd);

}


remove_fields.onclick = function () {
    var input_tags = admin_data.getElementsByTagName('input');
    if (input_tags.length = 3) {
        admin_data.removeChild(input_tags[(input_tags.length) - 1]);
        admin_data.removeChild(input_tags[(input_tags.length) - 1]);
        admin_data.removeChild(input_tags[(input_tags.length) - 1]);

    }
}

/*
    function text(x) {
        if (x == 0)
            document.getElementById('idNumber').style.visibility = "visible";
        else
            document.getElementById('idNumber').style.visibility = "hidden";
        return;

}
*/



/* Shahad*/

function myFunction() {
    let text = "هل أنت متأكد من حذف هذة الفكرة نهائيا ؟ ";
    if (confirm(text) == true) {
        text = "نعم";
    } else {
        text = "لا";
    }
    document.getElementById("demo").innerHTML = text;
}

/*******************************************************************************/

