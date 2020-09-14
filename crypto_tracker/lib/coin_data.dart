import 'dart:convert';
import 'package:http/http.dart' as http;


const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR',
  'NGN',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
  'XRP',
  'BCH',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'C3741DA1-DC42-47E0-803F-5852DAC293D2';

class CoinData {

  Future getCoinData(String currency) async{
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList){
      String requestURL = '$coinAPIURL/$crypto/$currency?apikey=$apiKey';
      http.Response result = await http.get(requestURL);

      if (result.statusCode == 200) {
        var decodedData = jsonDecode(result.body);
        double lastPrice = decodedData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(result.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}
