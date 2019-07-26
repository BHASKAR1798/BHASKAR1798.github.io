function validate() {
                var name = document.forms["editMenuItem"]["title"].value.trim();
                if (name == ""){
                                alert("Title is required.");
                                return false;
                }
                if (name.length < 2 || name.length > 65) {
                    alert("Title should have 2 to 65 characters.");
                                return false;
                }
                
                var price = document.forms["editMenuItem"]["price"].value.trim();
    if (price == ""){
                                alert("Price is required.");
                                return false;
                }
                if(isNaN(price))
				{
								alert("Price has to be number.");
                                return false;
                }
                var dateOfLaunch = document.forms["editMenuItem"]["dateOfLaunch"].value;
                if (dateOfLaunch == "") {
                                alert("Date of Launch is required.");
                                return false;
                }
                
    var category = document.forms["editMenuItem"]["category"].value;
                if (category == "") {
                                alert("Select one category.");
                                return false;
                }
}
