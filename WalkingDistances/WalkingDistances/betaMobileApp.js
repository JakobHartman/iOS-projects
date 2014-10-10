
    // initialize variables that start google maps
    var map;
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    var marker = new Array();
    var totalDistance = 0;
    var totalDistanceMi = 0;
    var totalTimeMin = 0;
    var hrs = 0;
    var savedCustomItems = new Array();
    var confirming;
    var origin = null;
    var destination = null;
    var originName = null;
    var destinationName = null;
    var clickCount = 0;
    var histSwitch = false;
    
    var NE =  new google.maps.LatLng(43.883276, -111.738058);
    var SW = new google.maps.LatLng(43.797349, -111.838308);

    var bounds = new google.maps.LatLngBounds(SW,NE);
    //Creates a iframe that overides the normal alert so that it looks like a normal alert on the iPhone.

function firstTime(){
    if(localStorage["startUp"]){
        
    }
    else{
        localStorage["startUp"] = 1;
        startUpInstructions();
    }
}

    function alert(message){
      var iframe = document.createElement("IFRAME");
      iframe.setAttribute("src", 'data:text/plain,');
      document.documentElement.appendChild(iframe);
      window.frames[0].window.alert(message);
      iframe.parentNode.removeChild(iframe);
    }

    function confirm(message){
        var iframe = document.createElement("IFRAME");
        iframe.setAttribute("src", 'data:text/plain,');
        document.documentElement.appendChild(iframe);
        confirming = window.frames[0].window.confirm(message);
        iframe.parentNode.removeChild(iframe);
    }


function startUpInstructions(){
    var body = document.getElementById('startInstructions');
    body.classList.add('expand');
    body.classList.add('spawnDown');
    body.style.visibility = "visible";
    body.innerHTML = "Welcome to the BYU-Idaho Walking Distances App for iPhone.<br><br><span id='fadeInText'>We want to show you the basics of this app, so you can get better familiar with its abilities.<br><br>Tap to Continue</span>";
    var fadeText = document.getElementById('fadeInText');
    fadeInText.classList.add('fadeOut')
    setTimeout(function(){
               var fadeText = document.getElementById('fadeInText');
               fadeInText.classList.add('fadeIn');
               },3000);
    body.onclick = function(){
        
        this.innerHTML = "<span id='fadeInText'>At the top of the screen is where we will display all the information you will use to to determine how far buildings and apartments will be. The first row will display the locations in which you have selected, the second row will display the current selection's time and distance. The Third row will display the total distance selected untill cleared.<br><br>Tap to Continue</span>";
        var fadeText = document.getElementById('fadeInText');
        fadeText.classList.remove('fadeIn');
        fadeInText.classList.add('fadeOut');
        
        setTimeout(function(){
                   var fadeText = document.getElementById('fadeInText');
                   fadeText.classList.remove('fadeOut');
                   fadeInText.classList.add('fadeIn');
                   },2500);
        this.classList.add('expandMore');
        
        this.onclick = function(){
            this.innerHTML = "<span id='fadeInText'>Here you'll find &#8594;</span>";
            var fadeText = document.getElementById('fadeInText');
            fadeText.classList.remove('fadeIn');
            fadeInText.classList.add('fadeOut');
            this.onclick = function(){}
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.classList.remove('fadeOut');
                       fadeInText.classList.add('fadeIn');
                       
                       },2500);
            
            this.classList.add('shrink');
            this.classList.add('moveRight');
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.classList.remove('fadeIn');
                       fadeInText.classList.add('fadeOut2');
                       },4000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.innerHTML = "Campus Buildings &#8594;"
                       fadeText.classList.remove('fadeOut2');
                       fadeInText.classList.add('fadeIn');
                       },6000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       var body = document.getElementById('startInstructions');
                       fadeText.classList.remove('fadeIn');
                       fadeInText.classList.add('fadeOut2');
                       body.classList.remove('spawnDown');
                       body.classList.add('shiftDown')
                       },8000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.innerHTML = "Women's Housing &#8594;"
                       fadeText.classList.remove('fadeOut2');
                       fadeInText.classList.add('fadeIn');
                       },10000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       var body = document.getElementById('startInstructions');
                       fadeText.classList.remove('fadeIn');
                       fadeInText.classList.add('fadeOut2');
                       body.classList.remove('shiftDown');
                       body.classList.add('shiftDownMore')
                       },12000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.innerHTML = "Men's Housing &#8594;"
                       fadeText.classList.remove('fadeOut2');
                       fadeInText.classList.add('fadeIn');
                       },14000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       var body = document.getElementById('startInstructions');
                       fadeText.classList.remove('fadeIn');
                       fadeInText.classList.add('fadeOut2');
                       body.classList.remove('shiftDownMore');
                       body.classList.add('shiftDown215');
                       },16000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.innerHTML = "Married Housing &#8594;"
                       fadeText.classList.remove('fadeOut2');
                       fadeInText.classList.add('fadeIn');
                       },18000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       var body = document.getElementById('startInstructions');
                       fadeText.classList.remove('fadeIn');
                       fadeInText.classList.add('fadeOut2');
                       body.classList.remove('shiftDown215');
                       body.classList.add('shiftDown250');
                       },20000);
            
            setTimeout(function(){
                       var fadeText = document.getElementById('fadeInText');
                       fadeText.innerHTML = "Custom Location &#8594;<br><br>In the custom location tab you can enter only rexburg address' to create a custom location.<br><br>Tap to Continue"
                       fadeText.classList.remove('fadeOut2');
                       fadeInText.classList.add('fadeIn');
                       },22000);
            
            setTimeout(function(){
                       var body = document.getElementById('startInstructions');
                       body.classList.remove('moveRight');
                       body.classList.add('moveLeft');
                       body.classList.remove('shrink');
                       body.classList.add('expandAgain');
                       body.onclick = function(){
                       var body = document.getElementById('startInstructions');
                       body.classList.add('moveRight');
                       body.classList.remove('moveLeft');
                       body.classList.add('shrink');
                       body.classList.remove('expandAgain');
                       this.onclick = function(){}
                       setTimeout(function(){
                                  var fadeText = document.getElementById('fadeInText');
                                  var body = document.getElementById('startInstructions');
                                  fadeText.classList.remove('fadeIn');
                                  fadeInText.classList.add('fadeOut2');
                                  body.classList.remove('shiftDown250');
                                  body.classList.add('shiftDown290');
                                  },2000);
                       
                       setTimeout(function(){
                                  var fadeText = document.getElementById('fadeInText');
                                  fadeText.innerHTML = "Location History &#8594;"
                                  fadeText.classList.remove('fadeOut2');
                                  fadeInText.classList.add('fadeIn');
                                  },4000);
                       
                       setTimeout(function(){
                                  var fadeText = document.getElementById('fadeInText');
                                  var body = document.getElementById('startInstructions');
                                  fadeText.classList.remove('fadeIn');
                                  fadeInText.classList.add('fadeOut2');
                                  body.classList.remove('shiftDown290');
                                  body.classList.add('shiftDown325');
                                  },6000);
                       
                       setTimeout(function(){
                                  var fadeText = document.getElementById('fadeInText');
                                  fadeText.innerHTML = "Health Center Info. &#8594;"
                                  fadeText.classList.remove('fadeOut2');
                                  fadeInText.classList.add('fadeIn');
                                  },8000);
                       
                       setTimeout(function(){
                                  var body = document.getElementById('startInstructions');
                                  body.classList.remove('shiftDown325');
                                  body.classList.add('spawnDown');
                                  body.classList.remove('moveRight');
                                  body.classList.remove('shrink');
                                  body.classList.add('expand');
                                  var fadeText = document.getElementById('fadeInText');
                                  fadeText.classList.remove('fadeIn');
                                  fadeInText.classList.add('fadeOut2');
                                  },10000);
                       
                       setTimeout(function(){
                                  var fadeText = document.getElementById('fadeInText');
                                  fadeText.innerHTML = "In order to get the distances between points all you have to do is choose two locations. Thank you, for using the Walking Distances App we hope you enjoy this tool.<br><br>Tap to close";
                                  
                                  
                                  body.onclick = function(){
                                  var en = document.getElementById('startInstructions');
                                  var body = document.getElementById('bd');
                                  body.removeChild(en);
                                  }
                                  fadeText.classList.remove('fadeOut2');
                                  fadeInText.classList.add('fadeIn');
                                  },12000);
                       
                       }
                       },24000);
            
        }
    }
}

  //Builds map from google API
function initialize() {
    var instructions = document.getElementById("instructions");
        instructions.style.backgroundColor = "white";
    document.getElementById('newsReel').contentWindow.location.reload()
    document.getElementById('innerFrame').contentWindow.location.reload()
    
    //geocoder is the way to turn an address into coordinates that can be used to place custom markers.
      geocoder = new google.maps.Geocoder();
    //This is used when a user clicks to points and it gives them the route that the map takes
      directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: true,polylineOptions:{strokeColor:'#48036F'}});
    //These are the map options.
      var mapOptions = {
          //changes zoom level
        zoom: 14,
          //this is where the map location is placed.
        center: new google.maps.LatLng(43.81821,-111.782544),
          //this is the type of map, either can be HYBRID,ROADMAP,SATTELITE.
        mapTypeId: google.maps.MapTypeId.ROADMAP,
          //These turn of the button on the map.
        streetViewControl: false,
        zoomControl: false,
        mapTypeControl:false
      };
        //establishes the variable for building polygons within the google maps.
      var buildingBlocks;
        // creates a new map to display, everything is attached to this when adding to the map.
      map = new google.maps.Map(document.getElementById('map-canvas'),mapOptions);
        //adds the directions to the map.
      directionsDisplay.setMap(map);
      directionsDisplay.setPanel(document.getElementById('directions-panel'));


      // For loop that will iterate through the array and make the markers for each housing place.
        for (input = 0; input < 188;input++){
          var type = housingData[input][0];
          var name = housingData[input][1];
          var address = housingData[input][2];
          var building = housingData[input][3];
          var distance = housingData[input][4];
          var latitude = housingData[input][5];
          var longitude = housingData[input][6];
        
        }
        //For loop that generates the boxes over campus buildings.
        for(poly = 0;poly < coords.length;poly++){
          buildingBlocks = new google.maps.Polygon({
          paths: coords[poly],
          strokeColor: "#1144AA",
          strokeOpacity: 0.8,
          strokeWeight: 2,
          fillColor: "#1144AA",
          fillOpacity: 0.35
          });
          buildingBlocks.setMap(map);
        }

        //inialize saved data
        var checkStorage = localStorage.getItem('customData');
        //checks the local storage
        if (checkStorage != null){
            //This splits the string into an array.
          checkStorage = checkStorage.split(",");
            //this variable is to get the shifted variable.
          var shifted;
            //start a counter.
          var countingCustom = 190;
            //for loop
          var q = 0;
            //shifting the array,removing indexes.
          checkStorage.shift();
            //while loop to shift all information back into seperate data.
          while(checkStorage.length != 0){
              //clearing shifted
              shifted = '';
              //For loop to put new shifted data in shifted variable.
            for(q;q < 4;q++){
              shifted += "," + checkStorage.shift()
            }
              //shift takes shifted split into another array.
            var shift = shifted.split(",")
              // creates a custom address array , savedCustomAddress is in betaMobileAppMenu.js.
            var customPlace = new savedCustomAddress(shift[1],shift[2],shift[3],shift[4]);
              // creates the list tiem in the menu for the custom address. createCustomListItem is in betaMobileAppMenu.js.
            createCustomListItem(customPlace);
              //counter + 1
            countingCustom++;
              // reset loop
            q = 0
          }
        }
        //populates the lists.
        populateList();
    
    var healthCenter = new google.maps.LatLng(43.816871,  -111.779249);
    marker = new google.maps.Marker({
    map: map,
    clickable: true,
    icon: 'marker6.png',
    title: "Health Center",
    position: healthCenter
    });
}
    //creates the map with all the content.
    google.maps.event.addDomListener(window, 'load', initialize);

    //new icon, change this to change the file path for the images for the custom markers.
    var newIcon = ''

//calculates the distances and the time it takes between two points, uses the Distance Matrix API.
function calculateDistances() {
  var service = new google.maps.DistanceMatrixService();
  service.getDistanceMatrix(
    {
      origins: [origin],
      destinations: [destination],
      travelMode: google.maps.TravelMode.WALKING,
      unitSystem: google.maps.UnitSystem.IMPERIAL,
      avoidHighways: true,
      avoidTolls: true
    }, callback);
}

//creates a route between two points, uses the Distance API.
function calcRoute() {
    //start and finish points.
  var start = origin;
  var end = destination;
    //creates path
  var request = {
      origin:start,
      destination:end,
      travelMode: google.maps.DirectionsTravelMode.WALKING
  };
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
        //sets the setting to have markers for directions
      directionsDisplay.suppressMarkers = false;
        //draws the path
      directionsDisplay.setDirections(response);
    }
  });
}

//retrieves the distance matrixes callback and displays it on Interface.
function callback(response, status) {
  if (status != google.maps.DistanceMatrixStatus.OK) {
    alert('Error was: ' + status);
  } 
  else {
      //these are the boxes that the distance go to and are dsplayed.
    var origins = response.originAddresses;
    var destinations = response.destinationAddresses;
    var timeBox = document.getElementById('timeBox');
    var distanceBox = document.getElementById('distanceBox');
    var feetBox = document.getElementById('feetBox');
    var textBox = document.getElementById('textBox');
    var totalBox = document.getElementById('totalBox');
    var totalMiBox = document.getElementById('totalMiBox');
    var totalTimeBox = document.getElementById('totalTimeBox');


//clears the boxes.
    timeBox.innerHTML = '';
    distanceBox.innerHTML = '';
    feetBox.innerHTML = '';
    textBox.innerHTML= '';
    totalBox.innerHTML = '';
    totalMiBox.innerHTML = '';
    totalTimeBox.innerHTML = '';
      //Error handling for errors in retrieving data.
      if(response.rows[0].elements[0].duration.text != undefined){
        var time = response.rows[0].elements[0].duration.text;
      }
      
      var distances = response.rows[0].elements[0].distance.text
      //converts time to a number depending on the size of the time.
      
      if(time.length >= 15){
          var getTime = time.slice(0,3);
          
              getTime *= 1;
              getTime *= 24;
          var hours = time.slice(9,11);
          hours *=1;
          getTime += hours;
          time = getTime + " hours";
          hrs += getTime;
      }
      if (time.length == 7){
        var getTime = time.slice(0,3);
      }
      else if (time.length == 6){
        var getTime = time.slice(0,2);
      }
      else{
        var getTime = time.slice(0,1);
      }
          getTime *= 1;
      var totalTime = createTotalTime(getTime);
        if (60 < totalTime){
          totalTime = totalTime % 60;
          hrs++
        }
      //converts distance to a number then to feet 
      var checkIfFeet = distances.slice(4,7);
      var distanceFeet = distances.slice(0,4);
          distanceFeet = Number(distanceFeet);
      // gets the total miles.
      var totalMi = createTotalDistanceMi(distanceFeet,checkIfFeet);
          totalMi = totalMi.toFixed(1);
          if (checkIfFeet != "ft"){
            distanceFeet *= 5280;
            distanceFeet = distanceFeet.toFixed(0);
          }
      var total = createTotalDistance(distanceFeet); 

      //Displays the following variables on the GUI.
        timeBox.innerHTML += time;
        distanceBox.innerHTML += distances;
        feetBox.innerHTML += distanceFeet + 'ft';
        textBox.innerHTML +=  "From " +  originName + " To " + destinationName;
        totalBox.innerHTML += total + 'ft';
        totalMiBox.innerHTML += totalMi + " mi";
      // converts the time to normal time.
      
        if (0 < hrs){
          totalTimeBox.innerHTML += hrs + " hr " + totalTimeMin + ' m ';
        }
        else{
          totalTimeBox.innerHTML += totalTimeMin + ' mins';
        }
        if(histSwitch == true){
          histSwitch = false;
        }
        else{
            createHistory(time,distances,distanceFeet);
        }
      }
    }

//adds the distances in feet of all the origins and destinations.
function createTotalDistance(getDistance){
     totalDistance += getDistance * 1;
      return totalDistance; 
}

//adds the distances in miles of all the origins and destinations.
function createTotalDistanceMi(getMiles,checkFeet){
    if(checkFeet == 'ft'){
      totalDistanceMi += getMiles / 5280;
    }
    else{
      totalDistanceMi += getMiles * 1;
    }
    return totalDistanceMi;
}

//adds the time of all the origins and destinations.
function createTotalTime(getTime){
    if(getTime > 60){
        
        getTime *= 60;
        alert(getTime);
        getTime *= 60;
    }
    
  totalTimeMin += getTime;
  if (60 < totalTimeMin){
    totalTimeMin = totalTimeMin % 60;
    hrs++
  } 
  return totalTimeMin;
}

//clears the totals 
function totalClear(){
  totalDistance = 0;
  totalDistanceMi = 0;
  totalTimeMin = 0;
  hrs = 0;
  var totalBox = document.getElementById('totalBox');
  var totalMiBox = document.getElementById('totalMiBox');
  var totalTimeBox = document.getElementById('totalTimeBox');
  totalBox.innerHTML = 'Total(ft)';
  totalMiBox.innerHTML = 'Total(mi)';
  totalTimeBox.innerHTML = 'Total(mins)';
}

var closeButton = document.createElement('p');

closeButton.id = "instructionClose";
closeButton.innerHTML = "Close";
closeButton.style.width = "50px";
closeButton.style.position = "absolute";
closeButton.style.right = "45px";
closeButton.style.bottom = "0%";
closeButton.style.backgroundColor = "#2D3B83";
closeButton.style.padding ="3px";
closeButton.style.fontFamily = "Verdana";
closeButton.style.fontWeight = "bold";
closeButton.style.color = "White";
closeButton.style.zIndex = "20";
closeButton.style.cursor = "pointer";
closeButton.onclick = function(){
    hideInstructions();
}

function showInstruction(){
    var instructions = document.getElementById("instructions");
    var instructionBody = document.getElementById("instructionBody");
        instructions.classList.add("transitionBig");
        instructions.classList.remove("transitionSmall");
               var instructions = document.getElementById("instructions");
               instructions.innerHTML = "<br><span style='font-weight:Bold;'>Intructions:</span> <br> Use the slide menu's to select locations. Select two to get distances.<hr><span id='lightblue'>Campus</span> - Campus buildings at BYU-Idaho <br><br> <span id='pink'>Women</span> - This is the locations of women only housing in rexburg.<br><br><span id='blue'>Men</span> - This is the locations of men only housing in rexburg.<br><br> <span id='green'>Married</span> - This is the locations of married housing in rexburg.<br><br> <span id='orange'>Custom Address</span> - Enter your rexburg address,if not found in database.<br><br> <span id='grey'>History</span> - This is the history of your current session.";

    setTimeout(function (){
               instructionBody.appendChild(closeButton);
               },800);
    
}

function hideInstructions(){
    var instructions = document.getElementById("instructions");
    var instructionBody = document.getElementById("instructionBody");
    
    instructions.classList.remove("TransitionBig");
    instructions.classList.add("transitionSmall");
    instructions.innerHTML = "Instructions";
    
    instructionBody.removeChild(closeButton);
}

function promptForLocation(){
    if (navigator.geolocation)
    {
        slideTabRight(document.getElementById("tips"));
        navigator.geolocation.getCurrentPosition(getLocation);
    }
}

function getLocation(position){
    origin = new google.maps.LatLng(position.coords.latitude,  position.coords.longitude);
    originName = "Your Location";
    destination = new google.maps.LatLng(43.816871,  -111.779249) ;
    destinationName = "Health Center";
    calculateDistances();
    calcRoute()
}




