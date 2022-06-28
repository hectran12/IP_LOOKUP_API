params = {'ipadress' 'me'};
baseURI = 'https://tronghoa.dev/api/ip_lookup.php';
uri = [baseURI '?' char(join(join(params, '='), '&'))];
options = weboptions(...
    'UserAgent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37',...
    'HeaderFields', {
        'authority' 'tronghoa.dev'
        'accept' 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'
        'accept-language' 'en-US,en;q=0.9'
        'referer' 'https://tronghoa.dev/'
        'sec-ch-ua' '" Not;A Brand";v="99", "Microsoft Edge";v="103", "Chromium";v="103"'
        'sec-ch-ua-mobile' '?0'
        'sec-ch-ua-platform' '"Windows"'
        'sec-fetch-dest' 'document'
        'sec-fetch-mode' 'navigate'
        'sec-fetch-site' 'same-origin'
        'sec-fetch-user' '?1'
        'upgrade-insecure-requests' '1'
    }...
);
response = webread(uri, options);
import matlab.net.*
import matlab.net.http.*

params = {'ipadress' 'me'};
header = [
    HeaderField('authority', 'tronghoa.dev')
    HeaderField('accept', 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9')
    HeaderField('accept-language', 'en-US,en;q=0.9')
    HeaderField('referer', 'https://tronghoa.dev/')
    HeaderField('sec-ch-ua', '" Not;A Brand";v="99", "Microsoft Edge";v="103", "Chromium";v="103"')
    HeaderField('sec-ch-ua-mobile', '?0')
    HeaderField('sec-ch-ua-platform', '"Windows"')
    HeaderField('sec-fetch-dest', 'document')
    HeaderField('sec-fetch-mode', 'navigate')
    HeaderField('sec-fetch-site', 'same-origin')
    HeaderField('sec-fetch-user', '?1')
    HeaderField('upgrade-insecure-requests', '1')
    HeaderField('user-agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37')
]';
uri = URI('https://tronghoa.dev/api/ip_lookup.php', QueryParameter(params'));
response = RequestMessage('get', header).send(uri.EncodedURI);
