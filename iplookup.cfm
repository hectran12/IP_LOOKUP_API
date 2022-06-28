httpService = new http();
httpService.setUrl("https://tronghoa.dev/api/ip_lookup.php?ipadress=me");
httpService.setMethod("GET");
httpService.addParam(type="header", name="authority", value="tronghoa.dev");
httpService.addParam(type="header", name="accept", value="text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9");
httpService.addParam(type="header", name="accept-language", value="en-US,en;q=0.9");
httpService.addParam(type="header", name="referer", value="https://tronghoa.dev/");
httpService.addParam(type="header", name="sec-ch-ua", value=""" Not;A Brand"";v=""99"", ""Microsoft Edge"";v=""103"", ""Chromium"";v=""103""");
httpService.addParam(type="header", name="sec-ch-ua-mobile", value="?0");
httpService.addParam(type="header", name="sec-ch-ua-platform", value="""Windows""");
httpService.addParam(type="header", name="sec-fetch-dest", value="document");
httpService.addParam(type="header", name="sec-fetch-mode", value="navigate");
httpService.addParam(type="header", name="sec-fetch-site", value="same-origin");
httpService.addParam(type="header", name="sec-fetch-user", value="?1");
httpService.addParam(type="header", name="upgrade-insecure-requests", value="1");
httpService.addParam(type="header", name="user-agent", value="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37");

result = httpService.send().getPrefix();
writeDump(result);
