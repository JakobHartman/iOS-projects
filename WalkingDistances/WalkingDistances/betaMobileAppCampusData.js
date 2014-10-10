//Building Data for each polygon overlay and Names.


var buildingNames = ["Austin","Benson","Biddulph/Rigby","Clarke","Hart","Health-Center","Hinckley","Housing","I-Center","Kimball","Kirkham","Library","MC","Parking","Ricks","Romney","Smith","Snow","Spori","Taylor"];

var coords = new Array();

//austin
var austin = [
	new google.maps.LatLng(43.816263, -111.784159),
	new google.maps.LatLng(43.815909, -111.784159),
	new google.maps.LatLng(43.815909, -111.784097),
	new google.maps.LatLng(43.815363, -111.784097),
	new google.maps.LatLng(43.815363, -111.784945),
	new google.maps.LatLng(43.815658, -111.784945),
	new google.maps.LatLng(43.815658, -111.784730),
	new google.maps.LatLng(43.816029, -111.784730),
	new google.maps.LatLng(43.816029, -111.785031),
	new google.maps.LatLng(43.816111, -111.785031),
	new google.maps.LatLng(43.816111, -111.785060),
	new google.maps.LatLng(43.816263, -111.785060),
	new google.maps.LatLng(43.816263, -111.784159)
];

coords[0] = austin;

//benson
var benson = [
	new google.maps.LatLng(43.815996, -111.783459),
	new google.maps.LatLng(43.815996, -111.782687),
	new google.maps.LatLng(43.815454, -111.782687),
	new google.maps.LatLng(43.815454, -111.782623),
	new google.maps.LatLng(43.815191, -111.782623),
	new google.maps.LatLng(43.815191, -111.782510),
	new google.maps.LatLng(43.814940, -111.782510),
	new google.maps.LatLng(43.814940, -111.783218),
	new google.maps.LatLng(43.814793, -111.783218),
	new google.maps.LatLng(43.814793, -111.783459),
	new google.maps.LatLng(43.815996, -111.783459)
];

coords[1] = benson;

//biddulph
var biddulph = [
	new google.maps.LatLng(43.817562, -111.783982),
	new google.maps.LatLng(43.816567, -111.783982),
	new google.maps.LatLng(43.816567, -111.785562),
	new google.maps.LatLng(43.817258, -111.785562),
	new google.maps.LatLng(43.817562, -111.784875),
	new google.maps.LatLng(43.817562, -111.783982)
];

coords[2] = biddulph;

//clarke
var clarke = [
	new google.maps.LatLng(43.819866, -111.781938),
	new google.maps.LatLng(43.820163, -111.781938),
	new google.maps.LatLng(43.820163, -111.782064),
	new google.maps.LatLng(43.820310, -111.782064),
	new google.maps.LatLng(43.820310, -111.781938),
	new google.maps.LatLng(43.820515, -111.781938),
	new google.maps.LatLng(43.820515, -111.781544),
	new google.maps.LatLng(43.819866, -111.781544),
	new google.maps.LatLng(43.819866, -111.781938)
];

coords[3] = clarke;

//hart
var hart = [
	new google.maps.LatLng(43.819757, -111.784103),
	new google.maps.LatLng(43.819224, -111.784103),
	new google.maps.LatLng(43.819224, -111.784350),
	new google.maps.LatLng(43.819261, -111.784350),
	new google.maps.LatLng(43.819261, -111.785055),
	new google.maps.LatLng(43.819343, -111.785055),
	new google.maps.LatLng(43.819343, -111.785245),
	new google.maps.LatLng(43.819269, -111.785245),
	new google.maps.LatLng(43.819269, -111.785530),
	new google.maps.LatLng(43.819343, -111.785530),
	new google.maps.LatLng(43.819343, -111.785709),
	new google.maps.LatLng(43.819221, -111.785709),
	new google.maps.LatLng(43.819221, -111.786149),
	new google.maps.LatLng(43.819344, -111.786149),
	new google.maps.LatLng(43.819344, -111.786353),
	new google.maps.LatLng(43.819751, -111.786353),
	new google.maps.LatLng(43.819751, -111.785892),
	new google.maps.LatLng(43.819904, -111.785892),
	new google.maps.LatLng(43.819904, -111.784891),
	new google.maps.LatLng(43.819793, -111.784891),
	new google.maps.LatLng(43.819793, -111.784309),
	new google.maps.LatLng(43.819757, -111.784309),
	new google.maps.LatLng(43.819757, -111.784103)
];

coords[4] = hart;

//health
var health = [
	new google.maps.LatLng(43.817028, -111.779068),
	new google.maps.LatLng(43.816627, -111.779068),
	new google.maps.LatLng(43.816627, -111.779224),
	new google.maps.LatLng(43.816575, -111.779224),
	new google.maps.LatLng(43.816575, -111.779363),
	new google.maps.LatLng(43.816645, -111.779363),
	new google.maps.LatLng(43.816645, -111.779471),
	new google.maps.LatLng(43.816680, -111.779471),
	new google.maps.LatLng(43.816680, -111.779562),
	new google.maps.LatLng(43.816796, -111.779562),
	new google.maps.LatLng(43.816796, -111.779471),
	new google.maps.LatLng(43.817028, -111.779471),
	new google.maps.LatLng(43.817028, -111.779068)
];

coords[5] = health;

//hinckley
var hinckley = [
	new google.maps.LatLng(43.816180, -111.780053),
	new google.maps.LatLng(43.816180, -111.779959),
	new google.maps.LatLng(43.816227, -111.779959),
	new google.maps.LatLng(43.816227, -111.779782),
	new google.maps.LatLng(43.816180, -111.779782),
	new google.maps.LatLng(43.816180, -111.779682),
	new google.maps.LatLng(43.816109, -111.779581),
	new google.maps.LatLng(43.815667, -111.779581),
	new google.maps.LatLng(43.815580, -111.779661),
	new google.maps.LatLng(43.815580, -111.779758),
	new google.maps.LatLng(43.815543, -111.779758),
	new google.maps.LatLng(43.815543, -111.779945),
	new google.maps.LatLng(43.815588, -111.779945),
	new google.maps.LatLng(43.815588, -111.780050),
	new google.maps.LatLng(43.815663, -111.780141),
	new google.maps.LatLng(43.815828, -111.780141),
	new google.maps.LatLng(43.815828, -111.780222),
	new google.maps.LatLng(43.815940, -111.780222),
	new google.maps.LatLng(43.815940, -111.780141),
	new google.maps.LatLng(43.816103, -111.780141),
	new google.maps.LatLng(43.816180, -111.780053)
];

coords[6] = hinckley;

//housing
var housing = [
	new google.maps.LatLng(43.817831, -111.780724),
	new google.maps.LatLng(43.819635, -111.780724),
	new google.maps.LatLng(43.819635, -111.778218),
	new google.maps.LatLng(43.817831, -111.778218),
	new google.maps.LatLng(43.817831, -111.780724)
];

coords[7] = housing;

//icenter
var icenter = [
	new google.maps.LatLng(43.818071, -111.784012),
	new google.maps.LatLng(43.818071, -111.784124),
	new google.maps.LatLng(43.817997, -111.784124),
	new google.maps.LatLng(43.817997, -111.784789),
	new google.maps.LatLng(43.817901, -111.784789),
	new google.maps.LatLng(43.817901, -111.785245),
	new google.maps.LatLng(43.817953, -111.785245),
	new google.maps.LatLng(43.817953, -111.785624),
	new google.maps.LatLng(43.818342, -111.785900),
	new google.maps.LatLng(43.818342, -111.785986),
	new google.maps.LatLng(43.818715, -111.785986),
	new google.maps.LatLng(43.818715, -111.786219),
	new google.maps.LatLng(43.819046, -111.786219),
	new google.maps.LatLng(43.819046, -111.785680),
	new google.maps.LatLng(43.819079, -111.785645),
	new google.maps.LatLng(43.819081, -111.785251),
	new google.maps.LatLng(43.819132, -111.785251),
	new google.maps.LatLng(43.819085, -111.784792),
	new google.maps.LatLng(43.819012, -111.784792),
	new google.maps.LatLng(43.819012, -111.784143),
	new google.maps.LatLng(43.818954, -111.784143),
	new google.maps.LatLng(43.818954, -111.784012),
	new google.maps.LatLng(43.818071, -111.784012)
];

coords[8] = icenter;

//kimball
var kimball = [
	new google.maps.LatLng(43.816676, -111.781278),
	new google.maps.LatLng(43.816676, -111.781413),
	new google.maps.LatLng(43.816620, -111.781413),
	new google.maps.LatLng(43.816620, -111.781584),
	new google.maps.LatLng(43.816676, -111.781584),
	new google.maps.LatLng(43.816676, -111.781729),
	new google.maps.LatLng(43.817535, -111.781729),
	new google.maps.LatLng(43.817535, -111.781278),
	new google.maps.LatLng(43.816676, -111.781278)
];

coords[9] = kimball;

//kirkham
var kirkham = [
	new google.maps.LatLng(43.821502, -111.781273),
	new google.maps.LatLng(43.821373, -111.781273),
	new google.maps.LatLng(43.821373, -111.781332),
	new google.maps.LatLng(43.820773, -111.781332),
	new google.maps.LatLng(43.820773, -111.781595),
	new google.maps.LatLng(43.820624, -111.781595),
	new google.maps.LatLng(43.820624, -111.781898),
	new google.maps.LatLng(43.820653, -111.781898),
	new google.maps.LatLng(43.820653, -111.781960),
	new google.maps.LatLng(43.820784, -111.781960),
	new google.maps.LatLng(43.820784, -111.781887),
	new google.maps.LatLng(43.821235, -111.781887),
	new google.maps.LatLng(43.821235, -111.781654),
	new google.maps.LatLng(43.821502, -111.781654),
	new google.maps.LatLng(43.821502, -111.781273)
];

coords[10] = kirkham;

//library
var library = [
	new google.maps.LatLng(43.819074, -111.782928),
	new google.maps.LatLng(43.819074, -111.783443),
	new google.maps.LatLng(43.819660, -111.783443),
	new google.maps.LatLng(43.819660, -111.782928),
	new google.maps.LatLng(43.819557, -111.782928),
	new google.maps.LatLng(43.819557, -111.782810),
	new google.maps.LatLng(43.819670, -111.782810),
	new google.maps.LatLng(43.819670, -111.782560),
	new google.maps.LatLng(43.819762, -111.782560),
	new google.maps.LatLng(43.819762, -111.782271),
	new google.maps.LatLng(43.819670, -111.782271),
	new google.maps.LatLng(43.819670, -111.782019),
	new google.maps.LatLng(43.819412, -111.782019),
	new google.maps.LatLng(43.819412, -111.782802),
	new google.maps.LatLng(43.819459, -111.782802),
	new google.maps.LatLng(43.819459, -111.782928),
	new google.maps.LatLng(43.819074, -111.782928)
];

coords[11] = library;

//mc
var mc = [
	new google.maps.LatLng(43.818766, -111.781767),
	new google.maps.LatLng(43.818543, -111.781767),
	new google.maps.LatLng(43.818543, -111.781625),
	new google.maps.LatLng(43.818311, -111.781625),
	new google.maps.LatLng(43.818311, -111.781539),
	new google.maps.LatLng(43.818137, -111.781539),
	new google.maps.LatLng(43.818137, -111.782129),
	new google.maps.LatLng(43.818075, -111.782129),
	new google.maps.LatLng(43.818075, -111.782478),
	new google.maps.LatLng(43.818152, -111.782478),
	new google.maps.LatLng(43.818152, -111.782660),
	new google.maps.LatLng(43.818056, -111.782660),
	new google.maps.LatLng(43.818056, -111.782810),
	new google.maps.LatLng(43.818152, -111.782810),
	new google.maps.LatLng(43.818152, -111.782939),
	new google.maps.LatLng(43.818098, -111.782939),
	new google.maps.LatLng(43.818098, -111.783347),
	new google.maps.LatLng(43.818810, -111.783347),
	new google.maps.LatLng(43.818810, -111.781861),
	new google.maps.LatLng(43.818766, -111.781861),
	new google.maps.LatLng(43.818766, -111.781767)
];

coords[12] = mc;

//parking
var parking = [
	new google.maps.LatLng(43.811632, -111.782614),
	new google.maps.LatLng(43.812693, -111.782614),
	new google.maps.LatLng(43.812882, -111.781844),
	new google.maps.LatLng(43.812882, -111.780661),
	new google.maps.LatLng(43.811632, -111.780661),
	new google.maps.LatLng(43.811632, -111.782614)
];

coords[13] = parking;

//ricks
var ricks = [
	new google.maps.LatLng(43.815158, -111.780742),
	new google.maps.LatLng(43.815127, -111.780734),
	new google.maps.LatLng(43.815127, -111.780637),
	new google.maps.LatLng(43.815021, -111.780637),
	new google.maps.LatLng(43.815021, -111.780731),
	new google.maps.LatLng(43.814831, -111.780721),
	new google.maps.LatLng(43.814831, -111.780694),
	new google.maps.LatLng(43.814649, -111.780694),
	new google.maps.LatLng(43.814649, -111.780906),
	new google.maps.LatLng(43.814713, -111.780906),
	new google.maps.LatLng(43.814713, -111.781045),
	new google.maps.LatLng(43.814649, -111.781045),
	new google.maps.LatLng(43.814649, -111.781246),
	new google.maps.LatLng(43.814715, -111.781246),
	new google.maps.LatLng(43.814715, -111.781818),
	new google.maps.LatLng(43.814680, -111.781818),
	new google.maps.LatLng(43.814680, -111.781927),
	new google.maps.LatLng(43.814837, -111.781927),
	new google.maps.LatLng(43.814837, -111.781842),
	new google.maps.LatLng(43.814947, -111.781842),
	new google.maps.LatLng(43.814947, -111.781230),
	new google.maps.LatLng(43.814899, -111.781230),
	new google.maps.LatLng(43.814899, -111.781067),
	new google.maps.LatLng(43.815158, -111.781067),
	new google.maps.LatLng(43.815158, -111.780742)
];

coords[14] = ricks;

//romney
var romney = [
	new google.maps.LatLng(43.819935, -111.783540),
	new google.maps.LatLng(43.820461, -111.783540),
	new google.maps.LatLng(43.820461, -111.782853),
	new google.maps.LatLng(43.819935, -111.782853),
	new google.maps.LatLng(43.819935, -111.783540)
];

coords[15] = romney;

//smith
var smith = [
	new google.maps.LatLng(43.818938, -111.781662),
	new google.maps.LatLng(43.819472, -111.781662),
	new google.maps.LatLng(43.819472, -111.781282),
	new google.maps.LatLng(43.818938, -111.781282),
	new google.maps.LatLng(43.818938, -111.781662)
];

coords[16] = smith;

//snow
var snow = [
	new google.maps.LatLng(43.821131, -111.783666),
	new google.maps.LatLng(43.820804, -111.783666),
	new google.maps.LatLng(43.820804, -111.783196),
	new google.maps.LatLng(43.821239, -111.783196),
	new google.maps.LatLng(43.821239, -111.782925),
	new google.maps.LatLng(43.821649, -111.782925),
	new google.maps.LatLng(43.821649, -111.783459),
	new google.maps.LatLng(43.821475, -111.783459),
	new google.maps.LatLng(43.821475, -111.784245),
	new google.maps.LatLng(43.821413, -111.784245),
	new google.maps.LatLng(43.821413, -111.784350),
	new google.maps.LatLng(43.821156, -111.784350),
	new google.maps.LatLng(43.821156, -111.784285),
	new google.maps.LatLng(43.821049, -111.784285),
	new google.maps.LatLng(43.821049, -111.784336),
	new google.maps.LatLng(43.820862, -111.784336),
	new google.maps.LatLng(43.820862, -111.784264),
	new google.maps.LatLng(43.820780, -111.784264),
	new google.maps.LatLng(43.820780, -111.783993),
	new google.maps.LatLng(43.821131, -111.783993),
	new google.maps.LatLng(43.821131, -111.783666)
];

coords[17] = snow;

//spori
var spori = [
	new google.maps.LatLng(43.820657, -111.782689),
	new google.maps.LatLng(43.820657, -111.782165),
	new google.maps.LatLng(43.820955, -111.782165),
	new google.maps.LatLng(43.820955, -111.782689),
	new google.maps.LatLng(43.820657, -111.782689)
];

coords[18] = spori;

//taylor
var taylor = [
	new google.maps.LatLng(43.817194, -111.782314),
	new google.maps.LatLng(43.817194, -111.782153),
	new google.maps.LatLng(43.816964, -111.782153),
	new google.maps.LatLng(43.816964, -111.782027),
	new google.maps.LatLng(43.816920, -111.781962),
	new google.maps.LatLng(43.816724, -111.781962),
	new google.maps.LatLng(43.816724, -111.782308),
	new google.maps.LatLng(43.816666, -111.782308),
	new google.maps.LatLng(43.816666, -111.782665),
	new google.maps.LatLng(43.816736, -111.782665),
	new google.maps.LatLng(43.816736, -111.783016),
	new google.maps.LatLng(43.816933, -111.783016),
	new google.maps.LatLng(43.816964, -111.782971),
	new google.maps.LatLng(43.816964, -111.782853),
	new google.maps.LatLng(43.817194, -111.782853),
	new google.maps.LatLng(43.817194, -111.782695),
	new google.maps.LatLng(43.817363, -111.782504),
	new google.maps.LatLng(43.817194, -111.782314)
];

coords[19] = taylor;