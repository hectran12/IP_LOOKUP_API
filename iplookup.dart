import 'package:http/http.dart' as http;

void main() async {
  var headers = {
    'authority': 'tronghoa.dev',
    'accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
    'accept-language': 'en-US,en;q=0.9',
    'referer': 'https://tronghoa.dev/',
    'sec-ch-ua': '" Not;A Brand";v="99", "Microsoft Edge";v="103", "Chromium";v="103"',
    'sec-ch-ua-mobile': '?0',
    'sec-ch-ua-platform': '"Windows"',
    'sec-fetch-dest': 'document',
    'sec-fetch-mode': 'navigate',
    'sec-fetch-site': 'same-origin',
    'sec-fetch-user': '?1',
    'upgrade-insecure-requests': '1',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37',
    'Accept-Encoding': 'gzip',
  };

  var params = {
    'ipadress': 'me',
  };
  var query = params.entries.map((p) => '${p.key}=${p.value}').join('&');

  var url = Uri.parse('https://tronghoa.dev/api/ip_lookup.php?$query');
  var res = await http.get(url, headers: headers);
  if (res.statusCode != 200) throw Exception('http.get error: statusCode= ${res.statusCode}');
  print(res.body);
}
