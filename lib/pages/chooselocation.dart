import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(apiURL: 'Africa/Abidjan', location: 'Abidjan'),
    WorldTime(apiURL: 'Africa/Accra', location: 'Accra'),
    WorldTime(apiURL: 'Africa/Algiers', location: 'Algiers'),
    WorldTime(apiURL: 'Africa/Bissau', location: 'Bissau'),
    WorldTime(apiURL: 'Africa/Cairo', location: 'Cairo'),
    WorldTime(apiURL: 'Africa/Casablanca', location: 'Casablanca'),
    WorldTime(apiURL: 'Africa/Ceuta', location: 'Ceuta'),
    WorldTime(apiURL: 'Africa/El_Aaiun', location: 'El_Aaiun'),
    WorldTime(apiURL: 'Africa/Johannesburg', location: 'Johannesburg'),
    WorldTime(apiURL: 'Africa/Juba', location: 'Juba'),
    WorldTime(apiURL: 'Africa/Khartoum', location: 'Khartoum'),
    WorldTime(apiURL: 'Africa/Lagos', location: 'Lagos'),
    WorldTime(apiURL: 'Africa/Maputo', location: 'Maputo'),
    WorldTime(apiURL: 'Africa/Monrovio', location: 'Monrovio'),
    WorldTime(apiURL: 'Africa/Nairobi', location: 'Nairobi'),
    WorldTime(apiURL: 'Africa/Ndjamena', location: 'Ndjamena'),
    WorldTime(apiURL: 'Africa/Sao_Tome', location: 'Sao_Tome'),
    WorldTime(apiURL: 'Africa/Tripoli', location: 'Tripoli'),
    WorldTime(apiURL: 'Africa/Tunis', location: 'Tunis'),
    WorldTime(apiURL: 'Africa/Windhoek', location: 'Windhoek'),
    WorldTime(apiURL: 'America/Adak', location: 'Adak' ) ,
    WorldTime(apiURL: 'America/Anchorage', location: 'Anchorage' ) ,
    WorldTime(apiURL: 'America/Araguaina', location: 'Araguaina' ) ,
    WorldTime(apiURL: 'America/Argentina/Buenos_Aires', location: 'Buenos_Aires' ) ,
    WorldTime(apiURL: 'America/Argentina/Catamarca', location: 'Catamarca' ) ,
    WorldTime(apiURL: 'America/Argentina/Cordoba', location: 'Cordoba' ) ,
    WorldTime(apiURL: 'America/Argentina/Jujuy', location: 'Jujuy' ) ,
    WorldTime(apiURL: 'America/Argentina/La_Rioja', location: 'La_Rioja' ) ,
    WorldTime(apiURL: 'America/Argentina/Mendoza', location: 'Mendoza' ) ,
    WorldTime(apiURL: 'America/Argentina/Rio_Gallegos', location: 'Rio_Gallegos' ) ,
    WorldTime(apiURL: 'America/Argentina/Salta', location: 'Salta' ) ,
    WorldTime(apiURL: 'America/Argentina/San_Juan', location: 'San_Juan' ) ,
    WorldTime(apiURL: 'America/Argentina/San_Luis', location: 'San_Luis' ) ,
    WorldTime(apiURL: 'America/Argentina/Tucuman', location: 'Tucuman' ) ,
    WorldTime(apiURL: 'America/Argentina/Ushuaia', location: 'Ushuaia' ) ,
    WorldTime(apiURL: 'America/Asuncion', location: 'Asuncion' ) ,
    WorldTime(apiURL: 'America/Atikokan', location: 'Atikokan' ) ,
    WorldTime(apiURL: 'America/Bahia', location: 'Bahia' ) ,
    WorldTime(apiURL: 'America/Bahia_Banderas', location: 'Bahia_Banderas' ) ,
    WorldTime(apiURL: 'America/Barbados', location: 'Barbados' ) ,
    WorldTime(apiURL: 'America/Belem', location: 'Belem' ) ,
    WorldTime(apiURL: 'America/Belize', location: 'Belize' ) ,
    WorldTime(apiURL: 'America/Blanc-Sablon', location: 'Blanc-Sablon' ) ,
    WorldTime(apiURL: 'America/Boa_Vista', location: 'Boa_Vista' ) ,
    WorldTime(apiURL: 'America/Bogota', location: 'Bogota' ) ,
    WorldTime(apiURL: 'America/Boise', location: 'Boise' ) ,
    WorldTime(apiURL: 'America/Cambridge_Bay', location: 'Cambridge_Bay' ) ,
    WorldTime(apiURL: 'America/Campo_Grande', location: 'Campo_Grande' ) ,
    WorldTime(apiURL: 'America/Cancun', location: 'Cancun' ) ,
    WorldTime(apiURL: 'America/Caracas', location: 'Caracas' ) ,
    WorldTime(apiURL: 'America/Cayenne', location: 'Cayenne' ) ,
    WorldTime(apiURL: 'America/Chicago', location: 'Chicago' ) ,
    WorldTime(apiURL: 'America/Chihuahua', location: 'Chihuahua' ) ,
    WorldTime(apiURL: 'America/Costa_Rica', location: 'Costa_Rica' ) ,
    WorldTime(apiURL: 'America/Creston', location: 'Creston' ) ,
    WorldTime(apiURL: 'America/Cuiaba', location: 'Cuiaba' ) ,
    WorldTime(apiURL: 'America/Curacao', location: 'Curacao' ) ,
    WorldTime(apiURL: 'America/Danmarkshavn', location: 'Danmarkshavn' ) ,
    WorldTime(apiURL: 'America/Dawson', location: 'Dawson' ) ,
    WorldTime(apiURL: 'America/Dawson_Creek', location: 'Dawson_Creek' ) ,
    WorldTime(apiURL: 'America/Denver', location: 'Denver' ) ,
    WorldTime(apiURL: 'America/Detroit', location: 'Detroit' ) ,
    WorldTime(apiURL: 'America/Edmonton', location: 'Edmonton' ) ,
    WorldTime(apiURL: 'America/Eirunepe', location: 'Eirunepe' ) ,
    WorldTime(apiURL: 'America/El_Salvador', location: 'El_Salvador' ) ,
    WorldTime(apiURL: 'America/Fort_Nelson', location: 'Fort_Nelson' ) ,
    WorldTime(apiURL: 'America/Fortaleza', location: 'Fortaleza' ) ,
    WorldTime(apiURL: 'America/Glace_Bay', location: 'Glace_Bay' ) ,
    WorldTime(apiURL: 'America/Goose_Bay', location: 'Goose_Bay' ) ,
    WorldTime(apiURL: 'America/Grand_Turk', location: 'Grand_Turk' ) ,
    WorldTime(apiURL: 'America/Guatemala', location: 'Guatemala' ) ,
    WorldTime(apiURL: 'America/Guayaquil', location: 'Guayaquil' ) ,
    WorldTime(apiURL: 'America/Guyana', location: 'Guyana' ) ,
    WorldTime(apiURL: 'America/Halifax', location: 'Halifax' ) ,
    WorldTime(apiURL: 'America/Havana', location: 'Havana' ) ,
    WorldTime(apiURL: 'America/Hermosillo', location: 'Hermosillo' ) ,
    WorldTime(apiURL: 'America/Indiana/Indianapolis', location: 'Indianapolis' ) ,
    WorldTime(apiURL: 'America/Indiana/Knox', location: 'Knox' ) ,
    WorldTime(apiURL: 'America/Indiana/Marengo', location: 'Marengo' ) ,
    WorldTime(apiURL: 'America/Indiana/Petersburg', location: 'Petersburg' ) ,
    WorldTime(apiURL: 'America/Indiana/Tell_City', location: 'Tell_City' ) ,
    WorldTime(apiURL: 'America/Indiana/Vevay', location: 'Vevay' ) ,
    WorldTime(apiURL: 'America/Indiana/Vincennes', location: 'Vincennes' ) ,
    WorldTime(apiURL: 'America/Indiana/Winamac', location: 'Winamac' ) ,
    WorldTime(apiURL: 'America/Inuvik', location: 'Inuvik' ) ,
    WorldTime(apiURL: 'America/Iqaluit', location: 'Iqaluit' ) ,
    WorldTime(apiURL: 'America/Jamaica', location: 'Jamaica' ) ,
    WorldTime(apiURL: 'America/Juneau', location: 'Juneau' ) ,
    WorldTime(apiURL: 'America/Kentucky/Louisville', location: 'Louisville' ) ,
    WorldTime(apiURL: 'America/Kentucky/Monticello', location: 'Monticello' ) ,
    WorldTime(apiURL: 'America/La_Paz', location: 'La_Paz' ) ,
    WorldTime(apiURL: 'America/Lima', location: 'Lima' ) ,
    WorldTime(apiURL: 'America/Los_Angeles', location: 'Los_Angeles' ) ,
    WorldTime(apiURL: 'America/Maceio', location: 'Maceio' ) ,
    WorldTime(apiURL: 'America/Managua', location: 'Managua' ) ,
    WorldTime(apiURL: 'America/Manaus', location: 'Manaus' ) ,
    WorldTime(apiURL: 'America/Martinique', location: 'Martinique' ) ,
    WorldTime(apiURL: 'America/Matamoros', location: 'Matamoros' ) ,
    WorldTime(apiURL: 'America/Mazatlan', location: 'Mazatlan' ) ,
    WorldTime(apiURL: 'America/Menominee', location: 'Menominee' ) ,
    WorldTime(apiURL: 'America/Merida', location: 'Merida' ) ,
    WorldTime(apiURL: 'America/Metlakatla', location: 'Metlakatla' ) ,
    WorldTime(apiURL: 'America/Mexico_City', location: 'Mexico City' ) ,
    WorldTime(apiURL: 'America/Miquelon', location: 'Miquelon' ) ,
    WorldTime(apiURL: 'America/Moncton', location: 'Moncton' ) ,
    WorldTime(apiURL: 'America/Monterrey', location: 'Monterrey' ) ,
    WorldTime(apiURL: 'America/Montevideo', location: 'Montevideo' ) ,
    WorldTime(apiURL: 'America/Nassau', location: 'Nassau' ) ,
    WorldTime(apiURL: 'America/New_York', location: 'New_York' ) ,
    WorldTime(apiURL: 'America/Nipigon', location: 'Nipigon' ) ,
    WorldTime(apiURL: 'America/Nome', location: 'Nome' ) ,
    WorldTime(apiURL: 'America/Noronha', location: 'Noronha' ) ,
    WorldTime(apiURL: 'America/North_Dakota/Beulah', location: 'Beulah' ) ,
    WorldTime(apiURL: 'America/North_Dakota/Center', location: 'Center' ) ,
    WorldTime(apiURL: 'America/North_Dakota/New_Salem', location: 'New_Salem' ) ,
    WorldTime(apiURL: 'America/Nuuk', location: 'Nuuk' ) ,
    WorldTime(apiURL: 'America/Ojinaga', location: 'Ojinaga' ) ,
    WorldTime(apiURL: 'America/Panama', location: 'Panama' ) ,
    WorldTime(apiURL: 'America/Pangnirtung', location: 'Pangnirtung' ) ,
    WorldTime(apiURL: 'America/Paramaribo', location: 'Paramaribo' ) ,
    WorldTime(apiURL: 'America/Phoenix', location: 'Phoenix' ) ,
    WorldTime(apiURL: 'America/Port-au-Prince', location: 'Port-au-Prince' ) ,
    WorldTime(apiURL: 'America/Port_of_Spain', location: 'Port_of_Spain' ) ,
    WorldTime(apiURL: 'America/Porto_Velho', location: 'Porto_Velho' ) ,
    WorldTime(apiURL: 'America/Puerto_Rico', location: 'Puerto_Rico' ) ,
    WorldTime(apiURL: 'America/Punta_Arenas', location: 'Punta_Arenas' ) ,
    WorldTime(apiURL: 'America/Rainy_River', location: 'Rainy_River' ) ,
    WorldTime(apiURL: 'America/Rankin_Inlet', location: 'Rankin_Inlet' ) ,
    WorldTime(apiURL: 'America/Recife', location: 'Recife' ) ,
    WorldTime(apiURL: 'America/Regina', location: 'Regina' ) ,
    WorldTime(apiURL: 'America/Resolute', location: 'Resolute' ) ,
    WorldTime(apiURL: 'America/Rio_Branco', location: 'Rio_Branco' ) ,
    WorldTime(apiURL: 'America/Santarem', location: 'Santarem' ) ,
    WorldTime(apiURL: 'America/Santiago', location: 'Santiago' ) ,
    WorldTime(apiURL: 'America/Santo_Domingo', location: 'Santo_Domingo' ) ,
    WorldTime(apiURL: 'America/Sao_Paulo', location: 'Sao_Paulo' ) ,
    WorldTime(apiURL: 'America/Scoresbysund', location: 'Scoresbysund' ) ,
    WorldTime(apiURL: 'America/Sitka', location: 'Sitka' ) ,
    WorldTime(apiURL: 'America/St_Johns', location: 'St_Johns' ) ,
    WorldTime(apiURL: 'America/Swift_Current', location: 'Swift_Current' ) ,
    WorldTime(apiURL: 'America/Tegucigalpa', location: 'Tegucigalpa' ) ,
    WorldTime(apiURL: 'America/Thule', location: 'Thule' ) ,
    WorldTime(apiURL: 'America/Thunder_Bay', location: 'Thunder_Bay' ) ,
    WorldTime(apiURL: 'America/Tijuana', location: 'Tijuana' ) ,
    WorldTime(apiURL: 'America/Toronto', location: 'Toronto' ) ,
    WorldTime(apiURL: 'America/Vancouver', location: 'Vancouver' ) ,
    WorldTime(apiURL: 'America/Whitehorse', location: 'Whitehorse' ) ,
    WorldTime(apiURL: 'America/Winnipeg', location: 'Winnipeg' ) ,
    WorldTime(apiURL: 'America/Yakutat', location: 'Yakutat' ) ,
    WorldTime(apiURL: 'America/Yellowknife', location: 'Yellowknife' ) ,
    WorldTime(apiURL: 'Antarctica/Casey', location: 'Casey' ) ,
    WorldTime(apiURL: 'Antarctica/Davis', location: 'Davis' ) ,
    WorldTime(apiURL: 'Antarctica/DumontDUrville', location: 'DumontDUrville' ) ,
    WorldTime(apiURL: 'Antarctica/Macquarie', location: 'Macquarie' ) ,
    WorldTime(apiURL: 'Antarctica/Mawson', location: 'Mawson' ) ,
    WorldTime(apiURL: 'Antarctica/Palmer', location: 'Palmer' ) ,
    WorldTime(apiURL: 'Antarctica/Rothera', location: 'Rothera' ) ,
    WorldTime(apiURL: 'Antarctica/Syowa', location: 'Syowa' ) ,
    WorldTime(apiURL: 'Antarctica/Troll', location: 'Troll' ) ,
    WorldTime(apiURL: 'Antarctica/Vostok', location: 'Vostok' ) ,
    WorldTime(apiURL: 'Asia/Almaty', location: 'Almaty' ) ,
    WorldTime(apiURL: 'Asia/Amman', location: 'Amman' ) ,
    WorldTime(apiURL: 'Asia/Anadyr', location: 'Anadyr' ) ,
    WorldTime(apiURL: 'Asia/Aqtau', location: 'Aqtau' ) ,
    WorldTime(apiURL: 'Asia/Aqtobe', location: 'Aqtobe' ) ,
    WorldTime(apiURL: 'Asia/Ashgabat', location: 'Ashgabat' ) ,
    WorldTime(apiURL: 'Asia/Atyrau', location: 'Atyrau' ) ,
    WorldTime(apiURL: 'Asia/Baghdad', location: 'Baghdad' ) ,
    WorldTime(apiURL: 'Asia/Baku', location: 'Baku' ) ,
    WorldTime(apiURL: 'Asia/Bangkok', location: 'Bangkok' ) ,
    WorldTime(apiURL: 'Asia/Barnaul', location: 'Barnaul' ) ,
    WorldTime(apiURL: 'Asia/Beirut', location: 'Beirut' ) ,
    WorldTime(apiURL: 'Asia/Bishkek', location: 'Bishkek' ) ,
    WorldTime(apiURL: 'Asia/Brunei', location: 'Brunei' ) ,
    WorldTime(apiURL: 'Asia/Chita', location: 'Chita' ) ,
    WorldTime(apiURL: 'Asia/Choibalsan', location: 'Choibalsan' ) ,
    WorldTime(apiURL: 'Asia/Colombo', location: 'Colombo' ) ,
    WorldTime(apiURL: 'Asia/Damascus', location: 'Damascus' ) ,
    WorldTime(apiURL: 'Asia/Dhaka', location: 'Dhaka' ) ,
    WorldTime(apiURL: 'Asia/Dili', location: 'Dili' ) ,
    WorldTime(apiURL: 'Asia/Dubai', location: 'Dubai' ) ,
    WorldTime(apiURL: 'Asia/Dushanbe', location: 'Dushanbe' ) ,
    WorldTime(apiURL: 'Asia/Famagusta', location: 'Famagusta' ) ,
    WorldTime(apiURL: 'Asia/Gaza', location: 'Gaza' ) ,
    WorldTime(apiURL: 'Asia/Hebron', location: 'Hebron' ) ,
    WorldTime(apiURL: 'Asia/Ho_Chi_Minh', location: 'Ho_Chi_Minh' ) ,
    WorldTime(apiURL: 'Asia/Hong_Kong', location: 'Hong_Kong' ) ,
    WorldTime(apiURL: 'Asia/Hovd', location: 'Hovd' ) ,
    WorldTime(apiURL: 'Asia/Irkutsk', location: 'Irkutsk' ) ,
    WorldTime(apiURL: 'Asia/Jakarta', location: 'Jakarta' ) ,
    WorldTime(apiURL: 'Asia/Jayapura', location: 'Jayapura' ) ,
    WorldTime(apiURL: 'Asia/Jerusalem', location: 'Jerusalem' ) ,
    WorldTime(apiURL: 'Asia/Kabul', location: 'Kabul' ) ,
    WorldTime(apiURL: 'Asia/Kamchatka', location: 'Kamchatka' ) ,
    WorldTime(apiURL: 'Asia/Karachi', location: 'Karachi' ) ,
    WorldTime(apiURL: 'Asia/Kathmandu', location: 'Kathmandu' ) ,
    WorldTime(apiURL: 'Asia/Khandyga', location: 'Khandyga' ) ,
    WorldTime(apiURL: 'Asia/Kolkata', location: 'Kolkata' ) ,
    WorldTime(apiURL: 'Asia/Krasnoyarsk', location: 'Krasnoyarsk' ) ,
    WorldTime(apiURL: 'Asia/Kuala_Lumpur', location: 'Kuala_Lumpur' ) ,
    WorldTime(apiURL: 'Asia/Kuching', location: 'Kuching' ) ,
    WorldTime(apiURL: 'Asia/Macau', location: 'Macau' ) ,
    WorldTime(apiURL: 'Asia/Magadan', location: 'Magadan' ) ,
    WorldTime(apiURL: 'Asia/Makassar', location: 'Makassar' ) ,
    WorldTime(apiURL: 'Asia/Manila', location: 'Manila' ) ,
    WorldTime(apiURL: 'Asia/Nicosia', location: 'Nicosia' ) ,
    WorldTime(apiURL: 'Asia/Novokuznetsk', location: 'Novokuznetsk' ) ,
    WorldTime(apiURL: 'Asia/Novosibirsk', location: 'Novokuznetsk' ) ,
    WorldTime(apiURL: 'Asia/Omsk', location: 'Omsk' ) ,
    WorldTime(apiURL: 'Asia/Oral', location: 'Oral' ) ,
    WorldTime(apiURL: 'Asia/Pontianak', location: 'Pontianak' ) ,
    WorldTime(apiURL: 'Asia/Pyongyang', location: 'Pyongyang' ) ,
    WorldTime(apiURL: 'Asia/Qatar', location: 'Qatar' ) ,
    WorldTime(apiURL: 'Asia/Qostanay', location: 'Qostanay' ) ,
    WorldTime(apiURL: 'Asia/Qyzylorda', location: 'Qyzylorda' ) ,
    WorldTime(apiURL: 'Asia/Riyadh', location: 'Riyadh' ) ,
    WorldTime(apiURL: 'Asia/Sakhalin', location: 'Sakhalin' ) ,
    WorldTime(apiURL: 'Asia/Samarkand', location: 'Samarkand' ) ,
    WorldTime(apiURL: 'Asia/Seoul', location: 'Seoul' ) ,
    WorldTime(apiURL: 'Asia/Shanghai', location: 'Shanghai' ) ,
    WorldTime(apiURL: 'Asia/Singapore', location: 'Singapore' ) ,
    WorldTime(apiURL: 'Asia/Srednekolymsk', location: 'Srednekolymsk' ) ,
    WorldTime(apiURL: 'Asia/Taipei', location: 'Taipei' ) ,
    WorldTime(apiURL: 'Asia/Tashkent', location: 'Tashkent' ) ,
    WorldTime(apiURL: 'Asia/Tbilisi', location: 'Tbilisi' ) ,
    WorldTime(apiURL: 'Asia/Tehran', location: 'Tehran' ) ,
    WorldTime(apiURL: 'Asia/Thimphu', location: 'Thimphu' ) ,
    WorldTime(apiURL: 'Asia/Tokyo', location: 'Tokyo' ) ,
    WorldTime(apiURL: 'Asia/Tomsk', location: 'Tomsk' ) ,
    WorldTime(apiURL: 'Asia/Ulaanbaatar', location: 'Ulaanbaatar' ) ,
    WorldTime(apiURL: 'Asia/Urumqi', location: 'Urumqi' ) ,
    WorldTime(apiURL: 'Asia/Ust-Nera', location: 'Ust-Nera' ) ,
    WorldTime(apiURL: 'Asia/Vladivostok', location: 'Vladivostok' ) ,
    WorldTime(apiURL: 'Asia/Yakutsk', location: 'Yakutsk' ) ,
    WorldTime(apiURL: 'Asia/Yangon', location: 'Yangon' ) ,
    WorldTime(apiURL: 'Asia/Yekaterinburg', location: 'Yekaterinburg' ) ,
    WorldTime(apiURL: 'Asia/Yerevan', location: 'Yerevan' ) ,
    WorldTime(apiURL: 'Atlantic/Azores', location: 'Azores' ) ,
    WorldTime(apiURL: 'Atlantic/Bermuda', location: 'Bermuda' ) ,
    WorldTime(apiURL: 'Atlantic/Canary', location: 'Canary' ) ,
    WorldTime(apiURL: 'Atlantic/Cape_Verde', location: 'Cape Verde' ) ,
    WorldTime(apiURL: 'Atlantic/Faroe', location: 'Faroe' ) ,
    WorldTime(apiURL: 'Atlantic/Madeira', location: 'Madeira' ) ,
    WorldTime(apiURL: 'Atlantic/Reykjavik', location: 'Reykjavik' ) ,
    WorldTime(apiURL: 'Atlantic/South_Georgia', location: 'South Georgia' ) ,
    WorldTime(apiURL: 'Atlantic/Stanley', location: 'Stanley' ) ,
    WorldTime(apiURL: 'Australia/Adelaide', location: 'Adelaide' ) ,
    WorldTime(apiURL: 'Australia/Brisbane', location: 'Brisbane' ) ,
    WorldTime(apiURL: 'Australia/Broken_Hill', location: 'Broken_Hill' ) ,
    WorldTime(apiURL: 'Australia/Currie', location: 'Currie' ) ,
    WorldTime(apiURL: 'Australia/Darwin', location: 'Darwin' ) ,
    WorldTime(apiURL: 'Australia/Eucla', location: 'Eucla' ) ,
    WorldTime(apiURL: 'Australia/Hobart', location: 'Hobart' ) ,
    WorldTime(apiURL: 'Australia/Lindeman', location: 'Lindeman' ) ,
    WorldTime(apiURL: 'Australia/Lord_Howe', location: 'Lord_Howe' ) ,
    WorldTime(apiURL: 'Australia/Melbourne', location: 'Melbourne' ) ,
    WorldTime(apiURL: 'Australia/Perth', location: 'Perth' ) ,
    WorldTime(apiURL: 'Australia/Sydney', location: 'Sydney' ) ,
    WorldTime(apiURL: 'Europe/Amsterdam', location: 'Amsterdam' ) ,
    WorldTime(apiURL: 'Europe/Andorra', location: 'Andorra' ) ,
    WorldTime(apiURL: 'Europe/Astrakhan', location: 'Astrakhan' ) ,
    WorldTime(apiURL: 'Europe/Athens', location: 'Athens' ) ,
    WorldTime(apiURL: 'Europe/Belgrade', location: 'Belgrade' ) ,
    WorldTime(apiURL: 'Europe/Berlin', location: 'Berlin' ) ,
    WorldTime(apiURL: 'Europe/Brussels', location: 'Brussels' ) ,
    WorldTime(apiURL: 'Europe/Bucharest', location: 'Bucharest' ) ,
    WorldTime(apiURL: 'Europe/Budapest', location: 'Budapest' ) ,
    WorldTime(apiURL: 'Europe/Chisinau', location: 'Chisinau' ) ,
    WorldTime(apiURL: 'Europe/Copenhagen', location: 'Copenhagen' ) ,
    WorldTime(apiURL: 'Europe/Dublin', location: 'Dublin' ) ,
    WorldTime(apiURL: 'Europe/Gibraltar', location: 'Gibraltar' ) ,
    WorldTime(apiURL: 'Europe/Helsinki', location: 'Helsinki' ) ,
    WorldTime(apiURL: 'Europe/Istanbul', location: 'Istanbul' ) ,
    WorldTime(apiURL: 'Europe/Kaliningrad', location: 'Kaliningrad' ) ,
    WorldTime(apiURL: 'Europe/Kiev', location: 'Kiev' ) ,
    WorldTime(apiURL: 'Europe/Kirov', location: 'Kirov' ) ,
    WorldTime(apiURL: 'Europe/Lisbon', location: 'Lisbon' ) ,
    WorldTime(apiURL: 'Europe/London', location: 'London' ) ,
    WorldTime(apiURL: 'Europe/Luxembourg', location: 'Luxembourg' ) ,
    WorldTime(apiURL: 'Europe/Madrid', location: 'Madrid' ) ,
    WorldTime(apiURL: 'Europe/Malta', location: 'Malta' ) ,
    WorldTime(apiURL: 'Europe/Minsk', location: 'Minsk' ) ,
    WorldTime(apiURL: 'Europe/Monaco', location: 'Monaco' ) ,
    WorldTime(apiURL: 'Europe/Moscow', location: 'Moscow' ) ,
    WorldTime(apiURL: 'Europe/Oslo', location: 'Oslo' ) ,
    WorldTime(apiURL: 'Europe/Paris', location: 'Paris' ) ,
    WorldTime(apiURL: 'Europe/Prague', location: 'Prague' ) ,
    WorldTime(apiURL: 'Europe/Riga', location: 'Riga' ) ,
    WorldTime(apiURL: 'Europe/Rome', location: 'Rome' ) ,
    WorldTime(apiURL: 'Europe/Samara', location: 'Samara' ) ,
    WorldTime(apiURL: 'Europe/Saratov', location: 'Saratov' ) ,
    WorldTime(apiURL: 'Europe/Simferopol', location: 'Simferopol' ) ,
    WorldTime(apiURL: 'Europe/Sofia', location: 'Sofia' ) ,
    WorldTime(apiURL: 'Europe/Stockholm', location: 'Stockholm' ) ,
    WorldTime(apiURL: 'Europe/Tallinn', location: 'Tallinn' ) ,
    WorldTime(apiURL: 'Europe/Tirane', location: 'Tirane' ) ,
    WorldTime(apiURL: 'Europe/Ulyanovsk', location: 'Ulyanovsk' ) ,
    WorldTime(apiURL: 'Europe/Uzhgorod', location: 'Uzhgorod' ) ,
    WorldTime(apiURL: 'Europe/Vienna', location: 'Vienna' ) ,
    WorldTime(apiURL: 'Europe/Vilnius', location: 'Vilnius' ) ,
    WorldTime(apiURL: 'Europe/Volgograd', location: 'Volgograd' ) ,
    WorldTime(apiURL: 'Europe/Warsaw', location: 'Warsaw' ) ,
    WorldTime(apiURL: 'Europe/Zaporozhye', location: 'Zaporozhye' ) ,
    WorldTime(apiURL: 'Europe/Zurich', location: 'Zurich' ) ,
    WorldTime(apiURL: 'Indian/Chagos', location: 'Chagos' ) ,
    WorldTime(apiURL: 'Indian/Christmas', location: 'Christmas' ) ,
    WorldTime(apiURL: 'Indian/Cocos', location: 'Cocos' ) ,
    WorldTime(apiURL: 'Indian/Kerguelen', location: 'Kerguelen' ) ,
    WorldTime(apiURL: 'Indian/Mahe', location: 'Mahe' ) ,
    WorldTime(apiURL: 'Indian/Maldives', location: 'Maldives' ) ,
    WorldTime(apiURL: 'Indian/Mauritius', location: 'Mauritius' ) ,
    WorldTime(apiURL: 'Indian/Reunion', location: 'Reunion' ) ,
    WorldTime(apiURL: 'Pacific/Apia', location: 'Apia' ) ,
    WorldTime(apiURL: 'Pacific/Auckland', location: 'Aukland' ) ,
    WorldTime(apiURL: 'Pacific/Bougainville', location: 'Bougainville' ) ,
    WorldTime(apiURL: 'Pacific/Chatham', location: 'Chatham' ) ,
    WorldTime(apiURL: 'Pacific/Chuuk', location: 'Chuuk' ) ,
    WorldTime(apiURL: 'Pacific/Easter', location: 'Easter' ) ,
    WorldTime(apiURL: 'Pacific/Efate', location: 'Efate' ) ,
    WorldTime(apiURL: 'Pacific/Enderbury', location: 'Enderbury' ) ,
    WorldTime(apiURL: 'Pacific/Fakaofo', location: 'Fakaofo' ) ,
    WorldTime(apiURL: 'Pacific/Fiji', location: 'Fiji' ) ,
    WorldTime(apiURL: 'Pacific/Funafuti', location: 'Funafuti' ) ,
    WorldTime(apiURL: 'Pacific/Galapagos', location: 'Galapagos' ) ,
    WorldTime(apiURL: 'Pacific/Gambier', location: 'Gambier' ) ,
    WorldTime(apiURL: 'Pacific/Guadalcanal', location: 'Guadalcanal' ) ,
    WorldTime(apiURL: 'Pacific/Guam', location: 'Guam' ) ,
    WorldTime(apiURL: 'Pacific/Honolulu', location: 'Honolulu' ) ,
    WorldTime(apiURL: 'Pacific/Kiritimati', location: 'Kiritimati' ) ,
    WorldTime(apiURL: 'Pacific/Kosrae', location: 'Kosrae' ) ,
    WorldTime(apiURL: 'Pacific/Kwajalein', location: 'Kwajalein' ) ,
    WorldTime(apiURL: 'Pacific/Majuro', location: 'Majuro' ) ,
    WorldTime(apiURL: 'Pacific/Marquesas', location: 'Marquesas' ) ,
    WorldTime(apiURL: 'Pacific/Nauru', location: 'Nauru' ) ,
    WorldTime(apiURL: 'Pacific/Niue', location: 'Niue' ) ,
    WorldTime(apiURL: 'Pacific/Norfolk', location: 'Norfolk' ) ,
    WorldTime(apiURL: 'Pacific/Noumea', location: 'Noumea' ) ,
    WorldTime(apiURL: 'Pacific/Pago_Pago', location: 'Pago_Pago' ) ,
    WorldTime(apiURL: 'Pacific/Palau', location: 'Palau' ) ,
    WorldTime(apiURL: 'Pacific/Pitcairn', location: 'Pitcairn' ) ,
    WorldTime(apiURL: 'Pacific/Pohnpei', location: 'Pohnpei' ) ,
    WorldTime(apiURL: 'Pacific/Port_Moresby', location: 'Port_Moresby' ) ,
    WorldTime(apiURL: 'Pacific/Rarotonga', location: 'Rarotonga' ) ,
    WorldTime(apiURL: 'Pacific/Tahiti', location: 'Tahiti' ) ,
    WorldTime(apiURL: 'Pacific/Tarawa', location: 'Tarawa' ) ,
    WorldTime(apiURL: 'Pacific/Tongatapu', location: 'Tongatapu' ) ,
    WorldTime(apiURL: 'Pacific/Wake', location: 'Wake' ) ,
    WorldTime(apiURL: 'Pacific/Wallis', location: 'Wallis' ) ,
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'isDay': instance.isDay
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[700],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Center(
                  child: Text(
                      locations[index].apiURL.replaceAll('/', ': ').replaceAll('_', ' '),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      )
    );
  }
}
