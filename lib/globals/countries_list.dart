List<Countries> get allCountries {
  return List<Countries>.from(countries.map((x) => Countries(
        name: x['name']!,
        code: x['code']!,
        flag: x['flag']!,
        dialCode: x['dial_code']!,
        currency: x['currency'] ?? 'qwerty',
      )));
}

class Countries {
  String name, code, flag, dialCode, currency;
  Countries({
    required this.name,
    required this.code,
    required this.dialCode,
    required this.flag,
    required this.currency,
  });
}

List<Map<String, String>> countries = [
  {
    "name": 'Afghanistan',
    "dial_code": '+93',
    "code": 'AF',
    "flag": '🇦🇫',
    "currency": "usd"
  },
  {
    "name": 'Albania',
    "dial_code": '+355',
    "code": 'AL',
    "flag": '🇦🇱',
    "currency": "2"
  },
  {
    "name": 'Algeria',
    "dial_code": '+213',
    "code": 'DZ',
    "flag": '🇩🇿',
    "currency": "3"
  },
  {
    "name": 'AmericanSamoa',
    "dial_code": '+1684',
    "code": 'AS',
    "flag": '🇦🇸',
    "currency": "awawa"
  },
  {
    "name": 'Andorra',
    "dial_code": '+376',
    "code": 'AD',
    "flag": '🇦🇩',
    "currency": "awawa"
  },
  {
    "name": 'Angola',
    "dial_code": '+244',
    "code": 'AO',
    "flag": '🇦🇴',
    "currency": "awawa"
  },
  {
    "name": 'Anguilla',
    "dial_code": '+1264',
    "code": 'AI',
    "flag": '🇦🇮',
    "currency": "awawa"
  },
  {
    "name": 'Antarctica',
    "dial_code": '+672',
    "code": 'AQ',
    "flag": '🇦🇶',
    "currency": "awawa"
  },
  {
    "name": 'Antigua and Barbuda',
    "dial_code": '+1268',
    "code": 'AG',
    "flag": '🇦🇬',
    "currency": "awawa"
  },
  {
    "name": 'Argentina',
    "dial_code": '+54',
    "code": 'AR',
    "flag": '🇦🇷',
    "currency": "awawa"
  },
  {
    "name": 'Armenia',
    "dial_code": '+374',
    "code": 'AM',
    "flag": '🇦🇲',
    "currency": "awawa"
  },
  {
    "name": 'Aruba',
    "dial_code": '+297',
    "code": 'AW',
    "flag": '🇦🇼',
    "currency": "awawa"
  },
  {
    "name": 'Australia',
    "dial_code": '+61',
    "code": 'AU',
    "flag": '🇦🇺',
    "currency": "awawa"
  },
  {
    "name": 'Austria',
    "dial_code": '+43',
    "code": 'AT',
    "flag": '🇦🇹',
    "currency": "awawa"
  },
  {
    "name": 'Azerbaijan',
    "dial_code": '+994',
    "code": 'AZ',
    "flag": '🇦🇿',
    "currency": "awawa"
  },
  {
    "name": 'Bahamas',
    "dial_code": '+1242',
    "code": 'BS',
    "flag": '🇧🇸',
    "currency": "awawa"
  },
  {
    "name": 'Bahrain',
    "dial_code": '+973',
    "code": 'BH',
    "flag": '🇧🇭',
    "currency": "awawa"
  },
  {
    "name": 'Bangladesh',
    "dial_code": '+880',
    "code": 'BD',
    "flag": '🇧🇩',
    "currency": "awawa"
  },
  {
    "name": 'Barbados',
    "dial_code": '+1246',
    "code": 'BB',
    "flag": '🇧🇧',
    "currency": "awawa"
  },
  {
    "name": 'Belarus',
    "dial_code": '+375',
    "code": 'BY',
    "flag": '🇧🇾',
    "currency": "awawa"
  },
  {
    "name": 'Belgium',
    "dial_code": '+32',
    "code": 'BE',
    "flag": '🇧🇪',
    "currency": "awawa"
  },
  {
    "name": 'Belize',
    "dial_code": '+501',
    "code": 'BZ',
    "flag": '🇧🇿',
    "currency": "awawa"
  },
  {
    "name": 'Benin',
    "dial_code": '+229',
    "code": 'BJ',
    "flag": '🇧🇯',
    "currency": "awawa"
  },
  {
    "name": 'Bermuda',
    "dial_code": '+1441',
    "code": 'BM',
    "flag": '🇧🇲',
    "currency": "awawa"
  },
  {
    "name": 'Bhutan',
    "dial_code": '+975',
    "code": 'BT',
    "flag": '🇧🇹',
    "currency": "awawa"
  },
  {
    "name": 'Bolivia',
    "dial_code": '+591',
    "code": 'BO',
    "flag": '🇧🇴',
    "currency": "awawa"
  },
  {
    "name": 'Bosnia and Herzegovina',
    "dial_code": '+387',
    "code": 'BA',
    "flag": '🇧🇦'
  },
  {
    "name": 'Botswana',
    "dial_code": '+267',
    "code": 'BW',
    "flag": '🇧🇼',
    "currency": "awawa"
  },
  {
    "name": 'Brazil',
    "dial_code": '+55',
    "code": 'BR',
    "flag": '🇧🇷',
    "currency": "awawa"
  },
  {
    "name": 'British Indian Ocean Territory',
    "dial_code": '+246',
    "code": 'IO',
    "flag": '🇮🇴',
    "currency": "awawa"
  },
  {
    "name": 'Brunei',
    "dial_code": '+673',
    "code": 'BN',
    "flag": '🇧🇳',
    "currency": "awawa"
  },
  {
    "name": 'Bulgaria',
    "dial_code": '+359',
    "code": 'BG',
    "flag": '🇧🇬',
    "currency": "awawa"
  },
  {
    "name": 'Burkina Faso',
    "dial_code": '+226',
    "code": 'BF',
    "flag": '🇧🇫',
    "currency": "awawa"
  },
  {
    "name": 'Burundi',
    "dial_code": '+257',
    "code": 'BI',
    "flag": '🇧🇮',
    "currency": "awawa"
  },
  {
    "name": 'Cambodia',
    "dial_code": '+855',
    "code": 'KH',
    "flag": '🇰🇭',
    "currency": "awawa"
  },
  {
    "name": 'Cameroon',
    "dial_code": '+237',
    "code": 'CM',
    "flag": '🇨🇲',
    "currency": "awawa"
  },
  {
    "name": 'Canada',
    "dial_code": '+1',
    "code": 'CA',
    "flag": '🇨🇦',
    "currency": "awawa"
  },
  {
    "name": 'Cape Verde',
    "dial_code": '+238',
    "code": 'CV',
    "flag": '🇨🇻',
    "currency": "awawa"
  },
  {
    "name": 'Cayman Islands',
    "dial_code": '+345',
    "code": 'KY',
    "flag": '🇰🇾',
    "currency": "awawa"
  },
  {
    "name": 'Central African Republic',
    "dial_code": '+236',
    "code": 'CF',
    "flag": '🇨🇫',
    "currency": "awawa"
  },
  {
    "name": 'Chad',
    "dial_code": '+235',
    "code": 'TD',
    "flag": '🇹🇩',
    "currency": "awawa"
  },
  {
    "name": 'Chile',
    "dial_code": '+56',
    "code": 'CL',
    "flag": '🇨🇱',
    "currency": "awawa"
  },
  {
    "name": 'China',
    "dial_code": '+86',
    "code": 'CN',
    "flag": '🇨🇳',
    "currency": "awawa"
  },
  {
    "name": 'Christmas Island',
    "dial_code": '+61',
    "code": 'CX',
    "flag": '🇨🇽',
    "currency": "awawa"
  },
  {
    "name": 'Cocos (Keeling) Islands',
    "dial_code": '+61',
    "code": 'CC',
    "flag": '🇨🇨',
    "currency": "awawa"
  },
  {
    "name": 'Colombia',
    "dial_code": '+57',
    "code": 'CO',
    "flag": '🇨🇴',
    "currency": "awawa"
  },
  {
    "name": 'Comoros',
    "dial_code": '+269',
    "code": 'KM',
    "flag": '🇰🇲',
    "currency": "awawa"
  },
  {
    "name": 'Congo',
    "dial_code": '+242',
    "code": 'CG',
    "flag": '🇨🇬',
    "currency": "awawa"
  },
  {
    "name": 'Republic of the Congo',
    "dial_code": '+243',
    "code": 'CD',
    "flag": '🇨🇩',
    "currency": "awawa"
  },
  {
    "name": 'Cook Islands',
    "dial_code": '+682',
    "code": 'CK',
    "flag": '🇨🇰',
    "currency": "awawa"
  },
  {
    "name": 'Costa Rica',
    "dial_code": '+506',
    "code": 'CR',
    "flag": '🇨🇷',
    "currency": "awawa"
  },
  {
    "name": "Cote d'Ivoire",
    "dial_code": '+225',
    "code": 'CI',
    "flag": '🇨🇮',
    "currency": "awawa"
  },
  {
    "name": 'Croatia',
    "dial_code": '+385',
    "code": 'HR',
    "flag": '🇭🇷',
    "currency": "awawa"
  },
  {
    "name": 'Cuba',
    "dial_code": '+53',
    "code": 'CU',
    "flag": '🇨🇺',
    "currency": "awawa"
  },
  {
    "name": 'Cyprus',
    "dial_code": '+357',
    "code": 'CY',
    "flag": '🇨🇾',
    "currency": "awawa"
  },
  {
    "name": 'Czech Republic',
    "dial_code": '+420',
    "code": 'CZ',
    "flag": '🇨🇿',
    "currency": "awawa"
  },
  {
    "name": 'Denmark',
    "dial_code": '+45',
    "code": 'DK',
    "flag": '🇩🇰',
    "currency": "awawa"
  },
  {
    "name": 'Djibouti',
    "dial_code": '+253',
    "code": 'DJ',
    "flag": '🇩🇯',
    "currency": "awawa"
  },
  {
    "name": 'Dominica',
    "dial_code": '+1767',
    "code": 'DM',
    "flag": '🇩🇲',
    "currency": "awawa"
  },
  {
    "name": 'Dominican Republic',
    "dial_code": '+1849',
    "code": 'DO',
    "flag": '🇩🇴',
    "currency": "awawa"
  },
  {
    "name": 'Ecuador',
    "dial_code": '+593',
    "code": 'EC',
    "flag": '🇪🇨',
    "currency": "awawa"
  },
  {
    "name": 'Egypt',
    "dial_code": '+20',
    "code": 'EG',
    "flag": '🇪🇬',
    "currency": "awawa"
  },
  {
    "name": 'El Salvador',
    "dial_code": '+503',
    "code": 'SV',
    "flag": '🇸🇻',
    "currency": "awawa"
  },
  {
    "name": 'Equatorial Guinea',
    "dial_code": '+240',
    "code": 'GQ',
    "flag": '🇬🇶',
    "currency": "awawa"
  },
  {
    "name": 'Eritrea',
    "dial_code": '+291',
    "code": 'ER',
    "flag": '🇪🇷',
    "currency": "awawa"
  },
  {
    "name": 'Estonia',
    "dial_code": '+372',
    "code": 'EE',
    "flag": '🇪🇪',
    "currency": "awawa"
  },
  {
    "name": 'Ethiopia',
    "dial_code": '+251',
    "code": 'ET',
    "flag": '🇪🇹',
    "currency": "awawa"
  },
  {
    "name": 'Falkland Islands',
    "dial_code": '+500',
    "code": 'FK',
    "flag": '🇫🇰',
    "currency": "awawa"
  },
  {
    "name": 'Faroe Islands',
    "dial_code": '+298',
    "code": 'FO',
    "flag": '🇫🇴',
    "currency": "awawa"
  },
  {
    "name": 'Fiji',
    "dial_code": '+679',
    "code": 'FJ',
    "flag": '🇫🇯',
    "currency": "awawa"
  },
  {
    "name": 'Finland',
    "dial_code": '+358',
    "code": 'FI',
    "flag": '🇫🇮',
    "currency": "awawa"
  },
  {
    "name": 'France',
    "dial_code": '+33',
    "code": 'FR',
    "flag": '🇫🇷',
    "currency": "awawa"
  },
  {
    "name": 'French Guiana',
    "dial_code": '+594',
    "code": 'GF',
    "flag": '🇬🇫',
    "currency": "awawa"
  },
  {
    "name": 'French Polynesia',
    "dial_code": '+689',
    "code": 'PF',
    "flag": '🇵🇫',
    "currency": "awawa"
  },
  {
    "name": 'Gabon',
    "dial_code": '+241',
    "code": 'GA',
    "flag": '🇬🇦',
    "currency": "awawa"
  },
  {
    "name": 'Gambia',
    "dial_code": '+220',
    "code": 'GM',
    "flag": '🇬🇲',
    "currency": "awawa"
  },
  {
    "name": 'Georgia',
    "dial_code": '+995',
    "code": 'GE',
    "flag": '🇬🇪',
    "currency": "awawa"
  },
  {
    "name": 'Germany',
    "dial_code": '+49',
    "code": 'DE',
    "flag": '🇩🇪',
    "currency": "awawa"
  },
  {
    "name": 'Ghana',
    "dial_code": '+233',
    "code": 'GH',
    "flag": '🇬🇭',
    "currency": "awawa"
  },
  {
    "name": 'Gibraltar',
    "dial_code": '+350',
    "code": 'GI',
    "flag": '🇬🇮',
    "currency": "awawa"
  },
  {
    "name": 'Greece',
    "dial_code": '+30',
    "code": 'GR',
    "flag": '🇬🇷',
    "currency": "awawa"
  },
  {
    "name": 'Greenland',
    "dial_code": '+299',
    "code": 'GL',
    "flag": '🇬🇱',
    "currency": "awawa"
  },
  {
    "name": 'Grenada',
    "dial_code": '+1473',
    "code": 'GD',
    "flag": '🇬🇩',
    "currency": "awawa"
  },
  {
    "name": 'Guadeloupe',
    "dial_code": '+590',
    "code": 'GP',
    "flag": '🇬🇵',
    "currency": "awawa"
  },
  {
    "name": 'Guam',
    "dial_code": '+1671',
    "code": 'GU',
    "flag": '🇬🇺',
    "currency": "awawa"
  },
  {
    "name": 'Guatemala',
    "dial_code": '+502',
    "code": 'GT',
    "flag": '🇬🇹',
    "currency": "awawa"
  },
  {
    "name": 'Guernsey',
    "dial_code": '+44',
    "code": 'GG',
    "flag": '🇬🇬',
    "currency": "awawa"
  },
  {
    "name": 'Guinea',
    "dial_code": '+224',
    "code": 'GN',
    "flag": '🇬🇳',
    "currency": "awawa"
  },
  {
    "name": 'Guinea-Bissau',
    "dial_code": '+245',
    "code": 'GW',
    "flag": '🇬🇼',
    "currency": "awawa"
  },
  {
    "name": 'Guyana',
    "dial_code": '+595',
    "code": 'GY',
    "flag": '🇬🇾',
    "currency": "awawa"
  },
  {
    "name": 'Haiti',
    "dial_code": '+509',
    "code": 'HT',
    "flag": '🇭🇹',
    "currency": "awawa"
  },
  {
    "name": 'Vatican City',
    "dial_code": '+379',
    "code": 'VA',
    "flag": '🇻🇦',
    "currency": "awawa"
  },
  {
    "name": 'Honduras',
    "dial_code": '+504',
    "code": 'HN',
    "flag": '🇭🇳',
    "currency": "awawa"
  },
  {
    "name": 'Hong Kong',
    "dial_code": '+852',
    "code": 'HK',
    "flag": '🇭🇰',
    "currency": "awawa"
  },
  {
    "name": 'Hungary',
    "dial_code": '+36',
    "code": 'HU',
    "flag": '🇭🇺',
    "currency": "awawa"
  },
  {
    "name": 'Iceland',
    "dial_code": '+354',
    "code": 'IS',
    "flag": '🇮🇸',
    "currency": "awawa"
  },
  {
    "name": 'India',
    "dial_code": '+91',
    "code": 'IN',
    "flag": '🇮🇳',
    "currency": "awawa"
  },
  {
    "name": 'Indonesia',
    "dial_code": '+62',
    "code": 'ID',
    "flag": '🇮🇩',
    "currency": "awawa"
  },
  {
    "name": 'Iran',
    "dial_code": '+98',
    "code": 'IR',
    "flag": '🇮🇷',
    "currency": "awawa"
  },
  {
    "name": 'Iraq',
    "dial_code": '+964',
    "code": 'IQ',
    "flag": '🇮🇶',
    "currency": "awawa"
  },
  {
    "name": 'Ireland',
    "dial_code": '+353',
    "code": 'IE',
    "flag": '🇮🇪',
    "currency": "awawa"
  },
  {
    "name": 'Isle of Man',
    "dial_code": '+44',
    "code": 'IM',
    "flag": '🇮🇲',
    "currency": "awawa"
  },
  {
    "name": 'Israel',
    "dial_code": '+972',
    "code": 'IL',
    "flag": '🇮🇱',
    "currency": "awawa"
  },
  {
    "name": 'Italy',
    "dial_code": '+39',
    "code": 'IT',
    "flag": '🇮🇹',
    "currency": "awawa"
  },
  {
    "name": 'Jamaica',
    "dial_code": '+1876',
    "code": 'JM',
    "flag": '🇯🇲',
    "currency": "awawa"
  },
  {
    "name": 'Japan',
    "dial_code": '+81',
    "code": 'JP',
    "flag": '🇯🇵',
    "currency": "awawa"
  },
  {
    "name": 'Jersey',
    "dial_code": '+44',
    "code": 'JE',
    "flag": '🇯🇪',
    "currency": "awawa"
  },
  {
    "name": 'Jordan',
    "dial_code": '+962',
    "code": 'JO',
    "flag": '🇯🇴',
    "currency": "awawa"
  },
  {
    "name": 'Kazakhstan',
    "dial_code": '+77',
    "code": 'KZ',
    "flag": '🇰🇿',
    "currency": "awawa"
  },
  {
    "name": 'Kenya',
    "dial_code": '+254',
    "code": 'KE',
    "flag": '🇰🇪',
    "currency": "awawa"
  },
  {
    "name": 'Kiribati',
    "dial_code": '+686',
    "code": 'KI',
    "flag": '🇰🇮',
    "currency": "awawa"
  },
  {
    "name": "North Korea",
    "dial_code": '+850',
    "code": 'KP',
    "flag": '🇰🇵',
    "currency": "awawa"
  },
  {
    "name": 'Republic of Korea',
    "dial_code": '+82',
    "code": 'KR',
    "flag": '🇰🇷',
    "currency": "awawa"
  },
  {
    "name": 'Kuwait',
    "dial_code": '+965',
    "code": 'KW',
    "flag": '🇰🇼',
    "currency": "awawa"
  },
  {
    "name": 'Kyrgyzstan',
    "dial_code": '+996',
    "code": 'KG',
    "flag": '🇰🇬',
    "currency": "awawa"
  },
  {
    "name": "Lao People's Democratic Republic",
    "dial_code": '+856',
    "code": 'LA',
    "flag": '🇱🇦',
    "currency": "awawa"
  },
  {
    "name": 'Latvia',
    "dial_code": '+371',
    "code": 'LV',
    "flag": '🇱🇻',
    "currency": "awawa"
  },
  {
    "name": 'Lebanon',
    "dial_code": '+961',
    "code": 'LB',
    "flag": '🇱🇧',
    "currency": "awawa"
  },
  {
    "name": 'Lesotho',
    "dial_code": '+266',
    "code": 'LS',
    "flag": '🇱🇸',
    "currency": "awawa"
  },
  {
    "name": 'Liberia',
    "dial_code": '+231',
    "code": 'LR',
    "flag": '🇱🇷',
    "currency": "awawa"
  },
  {
    "name": 'Libya',
    "dial_code": '+218',
    "code": 'LY',
    "flag": '🇱🇾',
    "currency": "awawa"
  },
  {
    "name": 'Liechtenstein',
    "dial_code": '+423',
    "code": 'LI',
    "flag": '🇱🇮',
    "currency": "awawa"
  },
  {
    "name": 'Lithuania',
    "dial_code": '+370',
    "code": 'LT',
    "flag": '🇱🇹',
    "currency": "awawa"
  },
  {
    "name": 'Luxembourg',
    "dial_code": '+352',
    "code": 'LU',
    "flag": '🇱🇺',
    "currency": "awawa"
  },
  {
    "name": 'Macao',
    "dial_code": '+853',
    "code": 'MO',
    "flag": '🇲🇴',
    "currency": "awawa"
  },
  {
    "name": 'Macedonia',
    "dial_code": '+389',
    "code": 'MK',
    "flag": '🇲🇰',
    "currency": "awawa"
  },
  {
    "name": 'Madagascar',
    "dial_code": '+261',
    "code": 'MG',
    "flag": '🇲🇬',
    "currency": "awawa"
  },
  {
    "name": 'Malawi',
    "dial_code": '+265',
    "code": 'MW',
    "flag": '🇲🇼',
    "currency": "awawa"
  },
  {
    "name": 'Malaysia',
    "dial_code": '+60',
    "code": 'MY',
    "flag": '🇲🇾',
    "currency": "awawa"
  },
  {
    "name": 'Maldives',
    "dial_code": '+960',
    "code": 'MV',
    "flag": '🇲🇻',
    "currency": "awawa"
  },
  {
    "name": 'Mali',
    "dial_code": '+223',
    "code": 'ML',
    "flag": '🇲🇱',
    "currency": "awawa"
  },
  {
    "name": 'Malta',
    "dial_code": '+356',
    "code": 'MT',
    "flag": '🇲🇹',
    "currency": "awawa"
  },
  {
    "name": 'Marshall Islands',
    "dial_code": '+692',
    "code": 'MH',
    "flag": '🇲🇭',
    "currency": "awawa"
  },
  {
    "name": 'Martinique',
    "dial_code": '+596',
    "code": 'MQ',
    "flag": '🇲🇶',
    "currency": "awawa"
  },
  {
    "name": 'Mauritania',
    "dial_code": '+222',
    "code": 'MR',
    "flag": '🇲🇷',
    "currency": "awawa"
  },
  {
    "name": 'Mauritius',
    "dial_code": '+230',
    "code": 'MU',
    "flag": '🇲🇺',
    "currency": "awawa"
  },
  {
    "name": 'Mayotte',
    "dial_code": '+262',
    "code": 'YT',
    "flag": '🇾🇹',
    "currency": "awawa"
  },
  {
    "name": 'Mexico',
    "dial_code": '+52',
    "code": 'MX',
    "flag": '🇲🇽',
    "currency": "awawa"
  },
  {
    "name": 'Federated States of Micronesia',
    "dial_code": '+691',
    "code": 'FM',
    "flag": '🇫🇲',
    "currency": "awawa"
  },
  {
    "name": 'Republic of Moldova',
    "dial_code": '+373',
    "code": 'MD',
    "flag": '🇲🇩',
    "currency": "awawa"
  },
  {
    "name": 'Monaco',
    "dial_code": '+377',
    "code": 'MC',
    "flag": '🇲🇨',
    "currency": "awawa"
  },
  {
    "name": 'Mongolia',
    "dial_code": '+976',
    "code": 'MN',
    "flag": '🇲🇳',
    "currency": "awawa"
  },
  {
    "name": 'Montenegro',
    "dial_code": '+382',
    "code": 'ME',
    "flag": '🇲🇪',
    "currency": "awawa"
  },
  {
    "name": 'Montserrat',
    "dial_code": '+1664',
    "code": 'MS',
    "flag": '🇲🇸',
    "currency": "awawa"
  },
  {
    "name": 'Morocco',
    "dial_code": '+212',
    "code": 'MA',
    "flag": '🇲🇦',
    "currency": "awawa"
  },
  {
    "name": 'Mozambique',
    "dial_code": '+258',
    "code": 'MZ',
    "flag": '🇲🇿',
    "currency": "awawa"
  },
  {
    "name": 'Myanmar',
    "dial_code": '+95',
    "code": 'MM',
    "flag": '🇲🇲',
    "currency": "awawa"
  },
  {
    "name": 'Namibia',
    "dial_code": '+264',
    "code": 'NA',
    "flag": '🇳🇦',
    "currency": "awawa"
  },
  {
    "name": 'Nauru',
    "dial_code": '+674',
    "code": 'NR',
    "flag": '🇳🇷',
    "currency": "awawa"
  },
  {
    "name": 'Nepal',
    "dial_code": '+977',
    "code": 'NP',
    "flag": '🇳🇵',
    "currency": "awawa"
  },
  {
    "name": 'Netherlands',
    "dial_code": '+31',
    "code": 'NL',
    "flag": '🇳🇱',
    "currency": "awawa"
  },
  {
    "name": 'Netherlands Antilles',
    "dial_code": '+599',
    "code": 'AN',
    "flag": '🇦🇳',
    "currency": "awawa"
  },
  {
    "name": 'New Caledonia',
    "dial_code": '+687',
    "code": 'NC',
    "flag": '🇳🇨',
    "currency": "awawa"
  },
  {
    "name": 'New Zealand',
    "dial_code": '+64',
    "code": 'NZ',
    "flag": '🇳🇿',
    "currency": "awawa"
  },
  {
    "name": 'Nicaragua',
    "dial_code": '+505',
    "code": 'NI',
    "flag": '🇳🇮',
    "currency": "awawa"
  },
  {
    "name": 'Niger',
    "dial_code": '+227',
    "code": 'NE',
    "flag": '🇳🇪',
    "currency": "awawa"
  },
  {
    "name": 'Nigeria',
    "dial_code": '+234',
    "code": 'NG',
    "flag": '🇳🇬',
    "currency": "awawa"
  },
  {
    "name": 'Niue',
    "dial_code": '+683',
    "code": 'NU',
    "flag": '🇳🇺',
    "currency": "awawa"
  },
  {
    "name": 'Norfolk Island',
    "dial_code": '+672',
    "code": 'NF',
    "flag": '🇳🇫',
    "currency": "awawa"
  },
  {
    "name": 'Northern Mariana Islands',
    "dial_code": '+1670',
    "code": 'MP',
    "flag": '🇲🇵',
    "currency": "awawa",
  },
  {
    "name": 'Norway',
    "dial_code": '+47',
    "code": 'NO',
    "flag": '🇳🇴',
    "currency": "awawa",
  },
  {
    "name": 'Oman',
    "dial_code": '+968',
    "code": 'OM',
    "flag": '🇴🇲',
    "currency": "awawa",
  },
  {
    "name": 'Pakistan',
    "dial_code": '+92',
    "code": 'PK',
    "flag": '🇵🇰',
    "currency": "awawa",
  },
  {
    "name": 'Palau',
    "dial_code": '+680',
    "code": 'PW',
    "flag": '🇵🇼',
    "currency": "awawa",
  },
  {
    "name": 'Palestine',
    "dial_code": '+970',
    "code": 'PS',
    "flag": '🇵🇸',
    "currency": "awawa",
  },
  {
    "name": 'Panama',
    "dial_code": '+507',
    "code": 'PA',
    "flag": '🇵🇦',
    "currency": "awawa",
  },
  {
    "name": 'Papua New Guinea',
    "dial_code": '+675',
    "code": 'PG',
    "flag": '🇵🇬',
    "currency": "awawa",
  },
  {
    "name": 'Paraguay',
    "dial_code": '+595',
    "code": 'PY',
    "flag": '🇵🇾',
    "currency": "awawa",
  },
  {
    "name": 'Peru',
    "dial_code": '+51',
    "code": 'PE',
    "flag": '🇵🇪',
    "currency": "awawa",
  },
  {
    "name": 'Philippines',
    "dial_code": '+63',
    "code": 'PH',
    "flag": '🇵🇭',
    "currency": "awawa",
  },
  {
    "name": 'Pitcairn',
    "dial_code": '+872',
    "code": 'PN',
    "flag": '🇵🇳',
    "currency": "awawa",
  },
  {
    "name": 'Poland',
    "dial_code": '+48',
    "code": 'PL',
    "flag": '🇵🇱',
    "currency": "awawa",
  },
  {
    "name": 'Portugal',
    "dial_code": '+351',
    "code": 'PT',
    "flag": '🇵🇹',
    "currency": "awawa",
  },
  {
    "name": 'Puerto Rico',
    "dial_code": '+1939',
    "code": 'PR',
    "flag": '🇵🇷',
    "currency": "awawa",
  },
  {
    "name": 'Qatar',
    "dial_code": '+974',
    "code": 'QA',
    "flag": '🇶🇦',
    "currency": "awawa",
  },
  {
    "name": 'Romania',
    "dial_code": '+40',
    "code": 'RO',
    "flag": '🇷🇴',
    "currency": "awawa",
  },
  {
    "name": 'Russia',
    "dial_code": '+7',
    "code": 'RU',
    "flag": '🇷🇺',
    "currency": "awawa",
  },
  {
    "name": 'Rwanda',
    "dial_code": '+250',
    "code": 'RW',
    "flag": '🇷🇼',
    "currency": "awawa",
  },
  {
    "name": 'Réunion',
    "dial_code": '+262',
    "code": 'RE',
    "flag": '🇷🇪',
    "currency": "awawa",
  },
  {
    "name": 'Saint Barthélemy',
    "dial_code": '+590',
    "code": 'BL',
    "flag": '🇧🇱',
    "currency": "awawa",
  },
  {
    "name": 'Saint Helena',
    "dial_code": '+290',
    "code": 'SH',
    "flag": '🇸🇭',
    "currency": "awawa",
  },
  {
    "name": 'Saint Kitts and Nevis',
    "dial_code": '+1869',
    "code": 'KN',
    "flag": '🇰🇳',
    "currency": "awawa",
  },
  {
    "name": 'Saint Lucia',
    "dial_code": '+1758',
    "code": 'LC',
    "flag": '🇱🇨',
    "currency": "awawa",
  },
  {
    "name": 'Saint Martin',
    "dial_code": '+590',
    "code": 'MF',
    "flag": '🇲🇫',
    "currency": "awawa",
  },
  {
    "name": 'Saint Pierre and Miquelon',
    "dial_code": '+508',
    "code": 'PM',
    "flag": '🇵🇲',
    "currency": "awawa",
  },
  {
    "name": 'Saint Vincent and the Grenadines',
    "dial_code": '+1784',
    "code": 'VC',
    "flag": '🇻🇨',
    "currency": "awawa",
  },
  {
    "name": 'Samoa',
    "dial_code": '+685',
    "code": 'WS',
    "flag": '🇼🇸',
    "currency": "awawa",
  },
  {
    "name": 'San Marino',
    "dial_code": '+378',
    "code": 'SM',
    "flag": '🇸🇲',
    "currency": "awawa",
  },
  {
    "name": 'Sao Tome and Principe',
    "dial_code": '+239',
    "code": 'ST',
    "flag": '🇸🇹',
    "currency": "awawa",
  },
  {
    "name": 'Saudi Arabia',
    "dial_code": '+966',
    "code": 'SA',
    "flag": '🇸🇦',
    "currency": "awawa",
  },
  {
    "name": 'Senegal',
    "dial_code": '+221',
    "code": 'SN',
    "flag": '🇸🇳',
    "currency": "awawa",
  },
  {
    "name": 'Serbia',
    "dial_code": '+381',
    "code": 'RS',
    "flag": '🇷🇸',
    "currency": "awawa",
  },
  {
    "name": 'Seychelles',
    "dial_code": '+248',
    "code": 'SC',
    "flag": '🇸🇨',
    "currency": "awawa",
  },
  {
    "name": 'Sierra Leone',
    "dial_code": '+232',
    "code": 'SL',
    "flag": '🇸🇱',
    "currency": "awawa",
  },
  {
    "name": 'Singapore',
    "dial_code": '+65',
    "code": 'SG',
    "flag": '🇸🇬',
    "currency": "awawa",
  },
  {
    "name": 'Slovakia',
    "dial_code": '+421',
    "code": 'SK',
    "flag": '🇸🇰',
    "currency": "awawa",
  },
  {
    "name": 'Slovenia',
    "dial_code": '+386',
    "code": 'SI',
    "flag": '🇸🇮',
    "currency": "awawa",
  },
  {
    "name": 'Solomon Islands',
    "dial_code": '+677',
    "code": 'SB',
    "flag": '🇸🇧',
    "currency": "awawa",
  },
  {
    "name": 'Somalia',
    "dial_code": '+252',
    "code": 'SO',
    "flag": '🇸🇴',
    "currency": "awawa",
  },
  {
    "name": 'South Africa',
    "dial_code": '+27',
    "code": 'ZA',
    "flag": '🇿🇦',
    "currency": "awawa",
  },
  {
    "name": 'South Georgia and the South Sandwich Islands',
    "dial_code": '+500',
    "code": 'GS',
    "flag": '🇬🇸',
    "currency": "awawa",
  },
  {
    "name": 'Spain',
    "dial_code": '+34',
    "code": 'ES',
    "flag": '🇪🇸',
    "currency": "awawa",
  },
  {
    "name": 'Sri Lanka',
    "dial_code": '+94',
    "code": 'LK',
    "flag": '🇱🇰',
    "currency": "awawa",
  },
  {
    "name": 'Sudan',
    "dial_code": '+249',
    "code": 'SD',
    "flag": '🇸🇩',
    "currency": "awawa",
  },
  {
    "name": 'Suriname',
    "dial_code": '+597',
    "code": 'SR',
    "flag": '🇸🇷',
    "currency": "awawa",
  },
  {
    "name": 'Svalbard and Jan Mayen',
    "dial_code": '+47',
    "code": 'SJ',
    "flag": '🇸🇯',
    "currency": "awawa",
  },
  {
    "name": 'Swaziland',
    "dial_code": '+268',
    "code": 'SZ',
    "flag": '🇸🇿',
    "currency": "awawa",
  },
  {
    "name": 'Sweden',
    "dial_code": '+46',
    "code": 'SE',
    "flag": '🇸🇪',
    "currency": "awawa",
  },
  {
    "name": 'Switzerland',
    "dial_code": '+41',
    "code": 'CH',
    "flag": '🇨🇭',
    "currency": "awawa",
  },
  {
    "name": 'Syria',
    "dial_code": '+963',
    "code": 'SY',
    "flag": '🇸🇾',
    "currency": "awawa",
  },
  {
    "name": 'Taiwan',
    "dial_code": '+886',
    "code": 'TW',
    "flag": '🇹🇼',
    "currency": "awawa",
  },
  {
    "name": 'Tajikistan',
    "dial_code": '+992',
    "code": 'TJ',
    "flag": '🇹🇯',
    "currency": "awawa",
  },
  {
    "name": 'Tanzania',
    "dial_code": '+255',
    "code": 'TZ',
    "flag": '🇹🇿',
    "currency": "awawa",
  },
  {
    "name": 'Thailand',
    "dial_code": '+66',
    "code": 'TH',
    "flag": '🇹🇭',
    "currency": "awawa",
  },
  {
    "name": 'Timor-Leste',
    "dial_code": '+670',
    "code": 'TL',
    "flag": '🇹🇱',
    "currency": "awawa",
  },
  {
    "name": 'Togo',
    "dial_code": '+228',
    "code": 'TG',
    "flag": '🇹🇬',
    "currency": "awawa",
  },
  {
    "name": 'Tokelau',
    "dial_code": '+690',
    "code": 'TK',
    "flag": '🇹🇰',
    "currency": "awawa",
  },
  {
    "name": 'Tonga',
    "dial_code": '+676',
    "code": 'TO',
    "flag": '🇹🇴',
    "currency": "awawa",
  },
  {
    "name": 'Trinidad and Tobago',
    "dial_code": '+1868',
    "code": 'TT',
    "flag": '🇹🇹',
    "currency": "awawa",
  },
  {
    "name": 'Tunisia',
    "dial_code": '+216',
    "code": 'TN',
    "flag": '🇹🇳',
    "currency": "awawa",
  },
  {
    "name": 'Turkey',
    "dial_code": '+90',
    "code": 'TR',
    "flag": '🇹🇷',
    "currency": "awawa",
  },
  {
    "name": 'Turkmenistan',
    "dial_code": '+993',
    "code": 'TM',
    "flag": '🇹🇲',
    "currency": "awawa",
  },
  {
    "name": 'Turks and Caicos Islands',
    "dial_code": '+1649',
    "code": 'TC',
    "flag": '🇹🇨',
    "currency": "awawa",
  },
  {
    "name": 'Tuvalu',
    "dial_code": '+688',
    "code": 'TV',
    "flag": '🇹🇻',
    "currency": "awawa",
  },
  {
    "name": 'Uganda',
    "dial_code": '+256',
    "code": 'UG',
    "flag": '🇺🇬',
    "currency": "awawa",
  },
  {
    "name": 'Ukraine',
    "dial_code": '+380',
    "code": 'UA',
    "flag": '🇺🇦',
    "currency": "awawa",
  },
  {
    "name": 'United Arab Emirates',
    "dial_code": '+971',
    "code": 'AE',
    "flag": '🇦🇪',
    "currency": "awawa",
  },
  {
    "name": 'United Kingdom',
    "dial_code": '+44',
    "code": 'GB',
    "flag": '🇬🇧, "currency": "awawa",'
  },
  {
    "name": 'United States',
    "dial_code": '+1',
    "code": 'US',
    "flag": '🇺🇸',
    "currency": "awawa",
  },
  {
    "name": 'Uruguay',
    "dial_code": '+598',
    "code": 'UY',
    "flag": '🇺🇾',
    "currency": "awawa",
  },
  {
    "name": 'Uzbekistan',
    "dial_code": '+998',
    "code": 'UZ',
    "flag": '🇺🇿',
    "currency": "awawa",
  },
  {
    "name": 'Vanuatu',
    "dial_code": '+678',
    "code": 'VU',
    "flag": '🇻🇺',
    "currency": "awawa",
  },
  {
    "name": 'Venezuela',
    "dial_code": '+58',
    "code": 'VE',
    "flag": '🇻🇪',
    "currency": "awawa",
  },
  {
    "name": 'Vietnam',
    "dial_code": '+84',
    "code": 'VN',
    "flag": '🇻🇳',
    "currency": "awawa",
  },
  {
    "name": 'British Virgin Islands',
    "dial_code": '+1284',
    "code": 'VG',
    "flag": '🇻🇬',
    "currency": "awawa",
  },
  {
    "name": 'U.S. Virgin Islands',
    "dial_code": '+1340',
    "code": 'VI',
    "flag": '🇻🇮',
    "currency": "awawa",
  },
  {
    "name": 'Wallis and Futuna',
    "dial_code": '+681',
    "code": 'WF',
    "flag": '🇼🇫',
    "currency": "awawa",
  },
  {
    "name": 'Yemen',
    "dial_code": '+967',
    "code": 'YE',
    "flag": '🇾🇪',
    "currency": "awawa",
  },
  {
    "name": 'Zambia',
    "dial_code": '+260',
    "code": 'ZM',
    "flag": '🇿🇲',
    "currency": "awawa",
  },
  {
    "name": 'Zimbabwe',
    "dial_code": '+263',
    "code": 'ZW',
    "flag": '🇿🇼',
    "currency": "awawa",
  },
  {
    "name": 'Åland',
    "dial_code": '+358',
    "code": 'AX',
    "flag": '🇦🇽',
    "currency": "awawa",
  },
];
