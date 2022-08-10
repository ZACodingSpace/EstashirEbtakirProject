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
/* AdminData page*/
/* Afnan */

var admin_data = document.getElementById('admin_data');
var add_more_fields = document.getElementById('add_more_fields');
var remove_fields = document.getElementById('remove_fields');

add_more_fields.onclick = function () {
    
    var dateField = document.createElement('input');
    dateField.setAttribute('type', 'date');
    admin_data.appendChild(dateField); 
    var timeField = document.createElement('input');
    timeField.setAttribute('type', 'time');
    admin_data.appendChild(timeField);

    var priceField = document.createElement('input');
    priceField.setAttribute('type', 'number');
    priceField.setAttribute('placeholder', 'السعر');
    admin_data.appendChild(priceField);

    /* style */
    dateField.style.height = 6 + "vh"; dateField.style.width = 22 + "vw"; dateField.style.background = '#FFFFFF'; 
    dateField.style.boxShadow = ' inset -4px -4px 8px #FFFFFF, inset 4px 4px 8px #BEC3CC'; dateField.style.borderRadius= 0.5 + 'vh';
    dateField.style.marginBottom = 2 + 'vh'; dateField.style.display = 'block'; dateField.style.marginBottom = 1 + 'vh'; 

    timeField.style.height = 6 + "vh"; timeField.style.width = 22 + "vw"; timeField.style.background = '#FFFFFF';
    timeField.style.boxShadow = ' inset -4px -4px 8px #FFFFFF, inset 4px 4px 8px #BEC3CC'; timeField.style.borderRadius = 0.5 + 'vh';
    timeField.style.marginBottom = 2 + 'vh'; timeField.style.display = 'block'; timeField.style.marginBottom = 1 + 'vh'; 


    priceField.style.height = 6 + "vh"; priceField.style.width = 22 + "vw"; priceField.style.background = '#FFFFFF';
    priceField.style.boxShadow = ' inset -4px -4px 8px #FFFFFF, inset 4px 4px 8px #BEC3CC'; priceField.style.borderRadius = 0.5 + 'vh';
    priceField.style.marginBottom = 2 + 'vh'; priceField.style.display = 'block'; priceField.style.marginBottom = 3 + 'vh';


    
  

}


remove_fields.onclick = function () {
    var input_tags = admin_data.getElementsByTagName('input');
    if (input_tags.length = 3) {
        admin_data.removeChild(input_tags[(input_tags.length) - 1]);
        admin_data.removeChild(input_tags[(input_tags.length) - 1]);
        admin_data.removeChild(input_tags[(input_tags.length) - 1]);

    }
}

    function text(x) {
        if (x == 0)
            document.getElementById('ID').style.visibility = "visible";
        else
            document.getElementById('ID').style.visibility = "hidden";
        return;

    }
/*******************************************************************************/




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

