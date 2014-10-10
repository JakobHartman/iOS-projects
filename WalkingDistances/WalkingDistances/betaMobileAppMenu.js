
var checkLocation;
var checkIfInBounds;

//Slides a tab to the left.
function slideTabLeft(object) {
  object.children[0].onclick = function() {slideTabRight(object);};
  slideLeft(object);
}

//Slides a tab to the Right.
function slideTabRight(object) {
  object.children[0].onclick = function() {slideTabLeft(object);};
  slideRight(object);
}

//Slides an object Left.
function slideLeft(object) {
    setZIndex(object,500);
    //uses CSS animation
    object.classList.add('leftTranslate');
    object.classList.remove('rightTranslate');
}

//Slides an object Right
function slideRight(object) {
    setZIndex(object,5);
    //uses CSS animation
    object.classList.remove('leftTranslate');
    object.classList.add('rightTranslate');
}
//set the Z-Index of the tabs.
function setZIndex(object, zindex) {
    object.style.zIndex = zindex;
}

//creates the entries in the tabs menus.
function populateList(){
  var place = new Array();
  for (i = 0;i < housingData.length;i++){
    var type = housingData[i][0];
    var name = housingData[i][1];
    var address = housingData[i][2];
    var latitude = housingData[i][5];
    var longitude = housingData[i][6];
    var tab = null;
    
    place[i] = new createPlace(type,name,address,latitude,longitude,tab);

  createListItem(place[i]);

  }
}
//contructor for the places in the populateList function
function createPlace(type,name,address,latitude,longitude,tab){
  this.type = type;
  this.name = name;
  this.address = address;
  this.latitude = latitude;
  this.longitude = longitude;
  this.tab = tab;
}

//appends the objects to the tabs, and setting there onclick functions.
function createListItem(place){

  var campusList = document.getElementById("cList");
  var mensList = document.getElementById("meList");
  var womensList = document.getElementById("wList");
  var marriedList = document.getElementById("mList");

      var placeItem = document.createElement('p');
          placeItem.innerHTML = place.name + "<br><span>" + place.address +"</span>";

  switch(place.type){

  case "married":
        place.tab  = document.getElementById('married');
        marriedList.appendChild(placeItem);
  break;

  case "men":
        place.tab  = document.getElementById('men');
        mensList.appendChild(placeItem);
  break;

  case "women":
        place.tab  = document.getElementById('women');
        womensList.appendChild(placeItem);
  break;

  case "campus":
        place.tab  = document.getElementById('campus');
        placeItem.innerHTML = place.name;
          campusList.appendChild(placeItem);
  break;

  default:
    alert('Error: Unable to Load Housing or Campus Data.');
  }
  placeItem.onclick = function(){
        if (clickCount == 0){
          origin = new google.maps.LatLng(place.latitude,place.longitude);
          slideTabRight(place.tab);
          originName = place.name;
          clickCount++;
        }
        else{
          destination = new google.maps.LatLng(place.latitude,place.longitude) ;
          destinationName = place.name;
          if (originName == destinationName){
            var textBox = document.getElementById('textBox');
                alert('Error: Please Select different Locations.')
            slideTabRight(place.tab);
          }
          else{
            calculateDistances();
            calcRoute()
            slideTabRight(place.tab);
            clickCount = 0;
          }
        }
      }
}

//appends what the user has clicked into the history tab, and creates a button so they can recall the distance and route.
function createHistory(time,distances,feet){
    var historyList = document.getElementById('hList');
    var historyItem = document.createElement('p');
    var newOrigin = origin;
    var newDestination = destination;
      if (historyList.childNodes.length == 10){
        historyList.removeChild(historyList.firstChild);
      }
        historyItem.innerHTML = "From<span> " + originName + "</span><br>To <span>" + destinationName + "</span> Time: <span>" + time + " </span>Distance: <span>" + distances + " , " + feet + "ft</span>";

        historyItem.onclick = function (){
        	histSwitch = true;
        	origin = newOrigin;
        	destination = newDestination;
        	slideTabRight(document.getElementById("history"));
            calculateDistances();
            calcRoute()
          }

         hList.appendChild(historyItem);
} 
//clears the history tab
function clearHistory(){
  var historyList = document.getElementById('hList');
    for(var i = 0;i < historyList.childNodes.length;i++ ){
      historyList.removeChild(historyList.lastChild);
    }
}

//create's a latlag from address and adds a list item that is personalized by the user.
function checkLine(){
  var getCords = document.getElementById('customAddress').value;
  var getName = document.getElementById('customName').value;
        document.getElementById('customName').value = '';
        document.getElementById('customAddress').value = '';
    getLatLng(getCords);
    checkNum(getCords);
    if (getCords.indexOf("<") != -1 || getCords.indexOf("script") != -1){
      alert("Invalid address, Please enter a valid address.");
    }
    else if(getName.indexOf("<") != -1 || getName.indexOf("script") != -1){
      alert("Please enter in a proper name.");
    }
    else{
        setTimeout(function(){
          if(checkIfInBounds == true){
            createLatLang(getCords,getName);
          }
          else{
            alert("Invalid address, Please enter a valid address.");
          }
        },2000)
        
    }
}

function checkNum(address){
	var numCount = 0;

	for(var i =0;i < address.length;i++){
		if(isNaN(address[0])){

		}
		else{
			numCount++;
		}
	}

	if(numCount = 0){
		checkIfInBounds = false;
	}
	
}

function getLatLng(address){
    if(address.indexOf("rexberg") == -1){
      address += "Rexburg Idaho 83440";
    }
    geocoder.geocode( { 'address': address}, function(results, status) {
         if (status == google.maps.GeocoderStatus.OK) {
            checkLocation = results[0].geometry.location;
            store(checkLocation);
         }
         else {
             alert('Geocode was not successful for the following reason: ' + status);
         }
     });
}

function store(location){
  var  lat = location.lat();
  var  lng = location.lng();
  newLocation = new google.maps.LatLng(lat,lng);
  checkIfInBounds = bounds.contains(newLocation);
}




//this is using the geocoding API to convert an address to latitude and longitude
function createLatLang(Addresses,Names){
  var address = Addresses + ",Rexburg,Idaho"
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
        createCustomObject(results,Names,Addresses);
    } 
    else {
      alert('Geocode was not successful for the following reason: ' + status);
    }
  });
}


//This take the custom data and creates an object from it.
//It will call functions to store the data into local storage.
function createCustomObject(result,Names,address){
  var customObject = new customAddress(result,Names,address);
  createSaveData(customObject);
  createCustomListItem(customObject);
}

//Takes custom data and stores it into local storage.
function createSaveData(Data){
  if(savedCustomItems.length == 0){
    savedCustomItems = Data;
  }
  else{
    savedCustomItems += "," + Data;
  }

  for(var i = 0;i < savedCustomItems.length;i++){
    localStorage['customData'] += "," + savedCustomItems[i];
  } 
  alert("saved");
}

//saved custom address object.
function savedCustomAddress(name,address,lat,lng){
  var custom = new Array();   

  custom[0] = name;
  custom[1] = address;
  custom[2] = lat;
  custom[3] = lng;


  return custom;
}

//This takes the information from user and stores it into an array.
function customAddress(result,Names,address){
  var custom = new Array();   

  custom[0] = Names;
  custom[1] = address;

  var location = result[0].geometry.location;
  var  lat = location.lat();
  var  lng = location.lng();
  custom[2] = lat;
  custom[3] = lng;

  return custom;
}

function createCustomListItem(place){
  //button creation.
  var placeItem = document.createElement('p');
  var itemClear = document.createElement("div");
      itemClear.id = place[0];
      itemClear.innerHTML = "X";
      itemClear.style.width = "12px";
      itemClear.style.position = "relative";
      itemClear.style.left = "180px";
      itemClear.style.top = "-45px";
      itemClear.style.backgroundColor = "#F19012";
      itemClear.style.padding ="10px";
      //itemClear.style.height = "50px";
      itemClear.style.fontFamily = "Verdana";
      itemClear.style.fontWeight = "bold";
      itemClear.style.color = "White";
      itemClear.style.zIndex = "1";
      itemClear.style.cursor = "ponter";
    
      itemClear.onclick = function(){
        var delItem = document.getElementById(this.id).parentNode;
            delItem.onclick = function(){}
        var checkStorage = localStorage.getItem('customData');
            checkStorage = checkStorage.split(",");
            for(var i = 0;i < checkStorage.length;i++){
                if(this.id == checkStorage[i]){
                  checkStorage.splice(i,4);
                  localStorage['customData'] = checkStorage;
                }
            }


        var ctList = document.getElementById('ctList'); 
            ctList.removeChild(delItem);
      }

      placeItem.innerHTML = place[0] + "<br><span>" + place[1] +"</span>";   
      placeItem.onclick = function(){
        if (clickCount == 0){
          origin = new google.maps.LatLng(place[2],place[3]);
          slideTabRight(document.getElementById('custom'));
          originName = place[0];
          clickCount++;
        }
        else{
          destination = new google.maps.LatLng(place[2]) ;
          destinationName = place[0];
          if (originName == destinationName){
                alert('Error: Please Select different Locations.')
            slideTabRight(document.getElementById('custom'));
          }
          else{
            calculateDistances();
            calcRoute()
            createCustomMarkers(place[0],place[2],place[3]);
            slideTabRight(document.getElementById('custom'));
            clickCount = 0;
          }
        }
      }
    
  var ctList = document.getElementById('ctList');
      ctList.appendChild(placeItem);
      placeItem.appendChild(itemClear);
}









