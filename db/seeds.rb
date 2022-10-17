require 'faker'

puts "🌱 Seeding spices..."

[
    {
        country_name: "Afghanistan",
        continent: "Asia",
        currency: 'AFN'
    },
    {
        country_name: "Albania",
        continent: "Europe",
        currency: "ALL"
    },
    {
        country_name: "Algeria",
        continent: "Africa",
        currency: "DZD"
    },
    {
        country_name: "American Samoa",
        continent: "Oceania",
        currency: "USD"
    },
    {
        country_name: "Andorra",
        continent: "Europe",
        currency: "EUR"
    },
    {
        country_name: "Angola",
        continent: "Africa",
        currency: 'AOA'
    },
    {
        country_name: "Anguilla",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Antarctica",
        continent: "Antarctica",
        currency: 'Penguins'
    },
    {
        country_name: "Antigua and Barbuda",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Argentina",
        continent: "South America",
        currency: 'ARS'
    },
    {
        country_name: "Armenia",
        continent: "Asia",
        currency: 'AMD'
    },
    {
        country_name: "Aruba",
        continent: "North America",
        currency: 'AWG'
    },
    {
        country_name: "Australia",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "Austria",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Azerbaijan",
        continent: "Asia",
        currency: 'AZN'
    },
    {
        country_name: "Bahamas",
        continent: "North America",
        currency: 'BSD'
    },
    {
        country_name: "Bahrain",
        continent: "Asia",
        currency: 'BHD'
    },
    {
        country_name: "Bangladesh",
        continent: "Asia",
        currency: 'BDT'
    },
    {
        country_name: "Barbados",
        continent: "North America",
        currency: 'BBD'
    },
    {
        country_name: "Belarus",
        continent: "Europe",
        currency: 'BYN'
    },
    {
        country_name: "Belgium",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Belize",
        continent: "North America",
        currency: 'BZD'
    },
    {
        country_name: "Benin",
        continent: "Africa",
        currency: 'XOF'
    },
    {
        country_name: "Bermuda",
        continent: "North America",
        currency: 'BMD'
    },
    {
        country_name: "Bhutan",
        continent: "Asia",
        currency: 'BTN'
    },
    {
        country_name: "Bolivia",
        continent: "South America",
        currency: 'BOV'
    },
    {
        country_name: "Bosnia and Herzegovina",
        continent: "Europe",
        currency: 'BAM'
    },
    {
        country_name: "Botswana",
        continent: "Africa",
        currency: 'BWP'
    },
    {
        country_name: "Bouvet Island",
        continent: "Antarctica",
        currency: 'NOK'
    },
    {
        country_name: "Brazil",
        continent: "South America",
        currency: 'BRL'
    },
    {
        country_name: "British Indian Ocean Territory",
        continent: "Africa",
        currency: 'USD'
    },
    {
        country_name: "Brunei",
        continent: "Asia",
        currency: 'BND'
    },
    {
        country_name: "Bulgaria",
        continent: "Europe",
        currency: 'BGN'
    },
    {
        country_name: "Burkina Faso",
        continent: "Africa",
        currency: 'XOF'
    },
    {
        country_name: "Burundi",
        continent: "Africa",
        currency: 'BIF'
    },
    {
        country_name: "Cambodia",
        continent: "Asia",
        currency: 'KHR'
    },
    {
        country_name: "Cameroon",
        continent: "Africa",
        currency: 'XAF'
    },
    {
        country_name: "Canada",
        continent: "North America",
        currency: 'CAD'
    },
    {
        country_name: "Cape Verde",
        continent: "Africa",
        currency: 'CVE'
    },
    {
        country_name: "Cayman Islands",
        continent: "North America",
        currency: 'KYD'
    },
    {
        country_name: "Central African Republic",
        continent: "Africa",
        currency: 'XAF'
    },
    {
        country_name: "Chad",
        continent: "Africa",
        currency: 'XAF'
    },
    {
        country_name: "Chile",
        continent: "South America",
        currency: 'CLF'
    },
    {
        country_name: "China",
        continent: "Asia",
        currency: 'CNY'
    },
    {
        country_name: "Christmas Island",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "Cocos (Keeling) Islands",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "Colombia",
        continent: "South America",
        currency: 'COP'
    },
    {
        country_name: "Comoros",
        continent: "Africa",
        currency: 'KMF'
    },
    {
        country_name: "Congo",
        continent: "Africa",
        currency: 'CDF'
    },
    {
        country_name: "Cook Islands",
        continent: "Oceania",
        currency: 'NZD'
    },
    {
        country_name: "Costa Rica",
        continent: "North America",
        currency: 'CRC'
    },
    {
        country_name: "Croatia",
        continent: "Europe",
        currency: 'KRF'
    },
    {
        country_name: "Cuba",
        continent: "North America",
        currency: 'CUC'
    },
    {
        country_name: "Cyprus",
        continent: "Asia",
        currency: 'EUR'
    },
    {
        country_name: "Czech Republic",
        continent: "Europe",
        currency: 'ECZK'
    },
    {
        country_name: "Denmark",
        continent: "Europe",
        currency: 'DKK'
    },
    {
        country_name: "Djibouti",
        continent: "Africa",
        currency: 'DJF'
    },
    {
        country_name: "Dominica",
        continent: "North America",
        currency: 'XCXD'
    },
    {
        country_name: "Dominican Republic",
        continent: "North America",
        currency: 'DOP'
    },
    {
        country_name: "East Timor",
        continent: "Asia",
        currency: 'USD'
    },
    {
        country_name: "Ecuador",
        continent: "South America",
        currency: 'USD'
    },
    {
        country_name: "Egypt",
        continent: "Africa",
        currency: 'EGP'
    },
    {
        country_name: "El Salvador",
        continent: "North America",
        currency: 'SVC'
    },
    {
        country_name: "England",
        continent: "Europe",
        currency: 'GBP'
    },
    {
        country_name: "Equatorial Guinea",
        continent: "Africa",
        currency: 'XAF'
    },
    {
        country_name: "Eritrea",
        continent: "Africa",
        currency: 'ERN'
    },
    {
        country_name: "Estonia",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Ethiopia",
        continent: "Africa",
        currency: 'ETB'
    },
    {
        country_name: "Falkland Islands",
        continent: "South America",
        currency: 'FKP'
    },
    {
        country_name: "Faroe Islands",
        continent: "Europe",
        currency: 'DKK'
    },
    {
        country_name: "Fiji Islands",
        continent: "Oceania",
        currency: 'FJD'
    },
    {
        country_name: "Finland",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "France",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "French Guiana",
        continent: "South America",
        currency: 'EUR'
    },
    {
        country_name: "French Polynesia",
        continent: "Oceania",
        currency: 'XPF'
    },
    {
        country_name: "French Southern territories",
        continent: "Antarctica",
        currency: 'EUR'
    },
    {
        country_name: "Gabon",
        continent: "Africa",
        currency: 'XAF'
    },
    {
        country_name: "Gambia",
        continent: "Africa",
        currency: 'GMD'
    },
    {
        country_name: "Georgia",
        continent: "Asia",
        currency: 'GEL'
    },
    {
        country_name: "Germany",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Ghana",
        continent: "Africa",
        currency: 'CHS'
    },
    {
        country_name: "Gibraltar",
        continent: "Europe",
        currency: 'GIP'
    },
    {
        country_name: "Greece",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Greenland",
        continent: "North America",
        currency: 'DKK'
    },
    {
        country_name: "Grenada",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Guadeloupe",
        continent: "North America",
        currency: 'EUR'
    },
    {
        country_name: "Guam",
        continent: "Oceania",
        currency: 'USD'
    },
    {
        country_name: "Guatemala",
        continent: "North America",
        currency: 'GTQ'
    },
    {
        country_name: "Guinea",
        continent: "Africa",
        currency: 'GNF'
    },
    {
        country_name: "Guinea-Bissau",
        continent: "Africa",
        currency: 'XOF'
    },
    {
        country_name: "Guyana",
        continent: "South America",
        currency: 'GYD'
    },
    {
        country_name: "Haiti",
        continent: "North America",
        currency: 'HTG'
    },
    {
        country_name: "Heard Island and McDonald Islands",
        continent: "Antarctica",
        currency: 'AUD'
    },
    {
        country_name: "Holy See (Vatican City State)",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Honduras",
        continent: "North America",
        currency: 'HNL'
    },
    {
        country_name: "Hong Kong",
        continent: "Asia",
        currency: 'KHD'
    },
    {
        country_name: "Hungary",
        continent: "Europe",
        currency: 'HUF'
    },
    {
        country_name: "Iceland",
        continent: "Europe",
        currency: 'ISK'
    },
    {
        country_name: "India",
        continent: "Asia",
        currency: 'INR'
    },
    {
        country_name: "Indonesia",
        continent: "Asia",
        currency: 'IDR'
    },
    {
        country_name: "Iran",
        continent: "Asia",
        currency: 'IRR'
    },
    {
        country_name: "Iraq",
        continent: "Asia",
        currency: 'IQD'
    },
    {
        country_name: "Ireland",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Israel",
        continent: "Asia",
        currency: 'ILS'
    },
    {
        country_name: "Italy",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Ivory Coast",
        continent: "Africa",
        currency: 'CFA'
    },
    {
        country_name: "Jamaica",
        continent: "North America",
        currency: ''
    },
    {
        country_name: "Japan",
        continent: "Asia",
        currency: 'JMD'
    },
    {
        country_name: "Jordan",
        continent: "Asia",
        currency: 'JOD'
    },
    {
        country_name: "Kazakhstan",
        continent: "Asia",
        currency: 'KZT'
    },
    {
        country_name: "Kenya",
        continent: "Africa",
        currency: 'KES'
    },
    {
        country_name: "Kiribati",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "Kuwait",
        continent: "Asia",
        currency: 'KWD'
    },
    {
        country_name: "Kyrgyzstan",
        continent: "Asia",
        currency: 'KGS'
    },
    {
        country_name: "Laos",
        continent: "Asia",
        currency: 'LAK'
    },
    {
        country_name: "Latvia",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Lebanon",
        continent: "Asia",
        currency: 'LBP'
    },
    {
        country_name: "Lesotho",
        continent: "Africa",
        currency: 'LSL'
    },
    {
        country_name: "Liberia",
        continent: "Africa",
        currency: 'LRD'
    },
    {
        country_name: "Libyan Arab Jamahiriya",
        continent: "Africa",
        currency: 'LYD'
    },
    {
        country_name: "Liechtenstein",
        continent: "Europe",
        currency: 'CHF'
    },
    {
        country_name: "Lithuania",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Luxembourg",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Macao",
        continent: "Asia",
        currency: 'MOP'
    },
    {
        country_name: "North Macedonia",
        continent: "Europe",
        currency: 'MKD'
    },
    {
        country_name: "Madagascar",
        continent: "Africa",
        currency: 'MGA'
    },
    {
        country_name: "Malawi",
        continent: "Africa",
        currency: 'MWK'
    },
    {
        country_name: "Malaysia",
        continent: "Asia",
        currency: 'MYR'
    },
    {
        country_name: "Maldives",
        continent: "Asia",
        currency: 'MVR'
    },
    {
        country_name: "Mali",
        continent: "Africa",
        currency: 'XOF'
    },
    {
        country_name: "Malta",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Marshall Islands",
        continent: "Oceania",
        currency: 'USD'
    },
    {
        country_name: "Martinique",
        continent: "North America",
        currency: 'EUR'
    },
    {
        country_name: "Mauritania",
        continent: "Africa",
        currency: 'MRU'
    },
    {
        country_name: "Mauritius",
        continent: "Africa",
        currency: 'MUR'
    },
    {
        country_name: "Mayotte",
        continent: "Africa",
        currency: 'EUR'
    },
    {
        country_name: "Mexico",
        continent: "North America",
        currency: 'MXN'
    },
    {
        country_name: "Micronesia, Federated States of",
        continent: "Oceania",
        currency: 'USD'
    },
    {
        country_name: "Moldova",
        continent: "Europe",
        currency: 'MDL'
    },
    {
        country_name: "Monaco",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Mongolia",
        continent: "Asia",
        currency: 'MNT'
    },
    {
        country_name: "Montenegro",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Montserrat",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Morocco",
        continent: "Africa",
        currency: 'MAD'
    },
    {
        country_name: "Mozambique",
        continent: "Africa",
        currency: 'MZN'
    },
    {
        country_name: "Myanmar",
        continent: "Asia",
        currency: 'MMK'
    },
    {
        country_name: "Namibia",
        continent: "Africa",
        currency: 'NAD'
    },
    {
        country_name: "Nauru",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "Nepal",
        continent: "Asia",
        currency: 'NPR'
    },
    {
        country_name: "Netherlands",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Netherlands Antilles",
        continent: "North America",
        currency: 'ANG'
    },
    {
        country_name: "New Caledonia",
        continent: "Oceania",
        currency: 'XPF'
    },
    {
        country_name: "New Zealand",
        continent: "Oceania",
        currency: 'NZD'
    },
    {
        country_name: "Nicaragua",
        continent: "North America",
        currency: 'NIO'
    },
    {
        country_name: "Niger",
        continent: "Africa",
        currency: 'XOF'
    },
    {
        country_name: "Nigeria",
        continent: "Africa",
        currency: 'NGN'
    },
    {
        country_name: "Niue",
        continent: "Oceania",
        currency: 'NZD'
    },
    {
        country_name: "Norfolk Island",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "North Korea",
        continent: "Asia",
        currency: 'KPW'
    },
    {
        country_name: "Northern Ireland",
        continent: "Europe",
        currency: 'GBP'
    },
    {
        country_name: "Northern Mariana Islands",
        continent: "Oceania",
        currency: 'USD'
    },
    {
        country_name: "Norway",
        continent: "Europe",
        currency: 'NOK'
    },
    {
        country_name: "Oman",
        continent: "Asia",
        currency: 'OMR'
    },
    {
        country_name: "Pakistan",
        continent: "Asia",
        currency: 'PKR'
    },
    {
        country_name: "Palau",
        continent: "Oceania",
        currency: 'USD'
    },
    {
        country_name: "Palestine",
        continent: "Asia",
        currency: 'ILS'
    },
    {
        country_name: "Panama",
        continent: "North America",
        currency: 'PAB'
    },
    {
        country_name: "Papua New Guinea",
        continent: "Oceania",
        currency: 'PGK'
    },
    {
        country_name: "Paraguay",
        continent: "South America",
        currency: 'PYG'
    },
    {
        country_name: "Peru",
        continent: "South America",
        currency: 'PEN'
    },
    {
        country_name: "Philippines",
        continent: "Asia",
        currency: 'PHP'
    },
    {
        country_name: "Pitcairn",
        continent: "Oceania",
        currency: 'NZD'
    },
    {
        country_name: "Poland",
        continent: "Europe",
        currency: 'PLN'
    },
    {
        country_name: "Portugal",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Puerto Rico",
        continent: "North America",
        currency: 'USD'
    },
    {
        country_name: "Qatar",
        continent: "Asia",
        currency: 'QAR'
    },
    {
        country_name: "Reunion",
        continent: "Africa",
        currency: 'EUR'
    },
    {
        country_name: "Romania",
        continent: "Europe",
        currency: 'RON'
    },
    {
        country_name: "Russian Federation",
        continent: "Europe",
        currency: 'RUB'
    },
    {
        country_name: "Rwanda",
        continent: "Africa",
        currency: 'RQF'
    },
    {
        country_name: "Saint Helena",
        continent: "Africa",
        currency: 'SHP'
    },
    {
        country_name: "Saint Kitts and Nevis",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Saint Lucia",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Saint Pierre and Miquelon",
        continent: "North America",
        currency: 'EUR'
    },
    {
        country_name: "Saint Vincent and the Grenadines",
        continent: "North America",
        currency: 'XCD'
    },
    {
        country_name: "Samoa",
        continent: "Oceania",
        currency: 'WST'
    },
    {
        country_name: "San Marino",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Sao Tome and Principe",
        continent: "Africa",
        currency: 'STN'
    },
    {
        country_name: "Saudi Arabia",
        continent: "Asia",
        currency: 'SAR'
    },
    {
        country_name: "Scotland",
        continent: "Europe",
        currency: 'GBP'
    },
    {
        country_name: "Senegal",
        continent: "Africa",
        currency: 'XOF'
    },
    {
        country_name: "Serbia",
        continent: "Europe",
        currency: 'RSD'
    },
    {
        country_name: "Seychelles",
        continent: "Africa",
        currency: 'SCR'
    },
    {
        country_name: "Sierra Leone",
        continent: "Africa",
        currency: 'SLE'
    },
    {
        country_name: "Singapore",
        continent: "Asia",
        currency: 'SGD'
    },
    {
        country_name: "Slovakia",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Slovenia",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Solomon Islands",
        continent: "Oceania",
        currency: 'SBD'
    },
    {
        country_name: "Somalia",
        continent: "Africa",
        currency: 'SOS'
    },
    {
        country_name: "South Africa",
        continent: "Africa",
        currency: 'ZAR'
    },
    {
        country_name: "South Georgia and the South Sandwich Islands",
        continent: "Antarctica",
        currency: 'Penguins'
    },
    {
        country_name: "South Korea",
        continent: "Asia",
        currency: 'KRW'
    },
    {
        country_name: "South Sudan",
        continent: "Africa",
        currency: 'SSP'
    },
    {
        country_name: "Spain",
        continent: "Europe",
        currency: 'EUR'
    },
    {
        country_name: "Sri Lanka",
        continent: "Asia",
        currency: 'LKR'
    },
    {
        country_name: "Sudan",
        continent: "Africa",
        currency: 'SDG'
    },
    {
        country_name: "Suriname",
        continent: "South America",
        currency: 'SRD'
    },
    {
        country_name: "Svalbard and Jan Mayen",
        continent: "Europe",
        currency: 'NOK'
    },
    {
        country_name: "Swaziland",
        continent: "Africa",
        currency: 'SZL'
    },
    {
        country_name: "Sweden",
        continent: "Europe",
        currency: 'SEK'
    },
    {
        country_name: "Switzerland",
        continent: "Europe",
        currency: 'CHF'
    },
    {
        country_name: "Syria",
        continent: "Asia",
        currency: 'SYP'
    },
    {
        country_name: "Tajikistan",
        continent: "Asia",
        currency: 'TJS'
    },
    {
        country_name: "Tanzania",
        continent: "Africa",
        currency: 'TZS'
    },
    {
        country_name: "Thailand",
        continent: "Asia",
        currency: 'THB'
    },
    {
        country_name: "The Democratic Republic of Congo",
        continent: "Africa",
        currency: 'CDF'
    },
    {
        country_name: "Togo",
        continent: "Africa",
        currency: ''
    },
    {
        country_name: "Tokelau",
        continent: "Oceania",
        currency: ''
    },
    {
        country_name: "Tonga",
        continent: "Oceania",
        currency: 'TOP'
    },
    {
        country_name: "Trinidad and Tobago",
        continent: "North America",
        currency: 'TTD'
    },
    {
        country_name: "Tunisia",
        continent: "Africa",
        currency: 'TND'
    },
    {
        country_name: "Turkey",
        continent: "Asia",
        currency: 'TRY'
    },
    {
        country_name: "Turkmenistan",
        continent: "Asia",
        currency: 'TMT'
    },
    {
        country_name: "Turks and Caicos Islands",
        continent: "North America",
        currency: 'USD'
    },
    {
        country_name: "Tuvalu",
        continent: "Oceania",
        currency: 'AUD'
    },
    {
        country_name: "Uganda",
        continent: "Africa",
        currency: 'UGX'
    },
    {
        country_name: "Ukraine",
        continent: "Europe",
        currency: 'UAH'
    },
    {
        country_name: "United Arab Emirates",
        continent: "Asia",
        currency: 'AED'
    },
    {
        country_name: "United Kingdom",
        continent: "Europe",
        currency: 'GBP'
    },
    {
        country_name: "United States",
        continent: "North America",
        currency: 'USD'
    },
    {
        country_name: "United States Minor Outlying Islands",
        continent: "Oceania",
        currency: 'USD'
    },
    {
        country_name: "Uruguay",
        continent: "South America",
        currency: 'UYI'
    },
    {
        country_name: "Uzbekistan",
        continent: "Asia",
        currency: 'UZS'
    },
    {
        country_name: "Vanuatu",
        continent: "Oceania",
        currency: 'VUV'
    },
    {
        country_name: "Venezuela",
        continent: "South America",
        currency: 'VED'
    },
    {
        country_name: "Vietnam",
        continent: "Asia",
        currency: 'VND'
    },
    {
        country_name: "Virgin Islands, British",
        continent: "North America",
        currency: 'USD'
    },
    {
        country_name: "Virgin Islands, U.S.",
        continent: "North America",
        currency: 'USD'
    },
    {
        country_name: "Wales",
        continent: "Europe",
        currency: 'GBP'
    },
    {
        country_name: "Wallis and Futuna",
        continent: "Oceania",
        currency: 'XPF'
    },
    {
        country_name: "Western Sahara",
        continent: "Africa",
        currency: 'MAD'
    },
    {
        country_name: "Yemen",
        continent: "Asia",
        currency: 'YER'
    },
    {
        country_name: "Zambia",
        continent: "Africa",
        currency: 'ZMW'
    },
    {
        country_name: "Zimbabwe",
        continent: "Africa",
        currency: 'ZWL'
    }
].each { |country|
    Country.create(
            country_name: country[:country_name],
            continent: country[:continent],
            currency: country[:currency]
        )
} 

# Creates 1000 random visits, for the 'day trips' of each traveler

1000.times do
    Visit.create(
        accomodation_name: Faker::Company.name,
        accomodation_type: ['Hotel', 'Hostel', 'AirBnb', 'Homestay'].sample,
        address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
        cost_per_night: rand(10..200),
        country_id: rand(1..244),
        traveler_id: rand(1..500)
    )
end

# After some random visits, create a series of visits, ensuring that each traveler has between 3 and 7 visits in five countries.

500.times do 
    traveler = Traveler.create(
        traveler_name: Faker::Name.name,
        passport_number: "#{rand(100..999)}#{rand(100..999)}#{rand(100..999)}" ,
        from_country_id: rand(1..244)
    )

    random = Array[rand(1..244), rand(1..244), rand(1..244), rand(1..244), rand(1..244)]
    random.each do |element| 
        rand(3..7).times do 
            Visit.create(
                accomodation_name: Faker::Company.name,
                accomodation_type: ['Hotel', 'Hostel', 'AirBnb', 'Homestay'].sample,
                address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                cost_per_night: rand(10..200),
                country_id: element,
                traveler_id: traveler.id
            )
        end
    end
end

puts "✅ Done seeding!"
