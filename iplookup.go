package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	client := &http.Client{}
	req, err := http.NewRequest("GET", "https://tronghoa.dev/api/ip_lookup.php?ipadress=me", nil)
	if err != nil {
		log.Fatal(err)
	}
	req.Header.Set("authority", "tronghoa.dev")
	req.Header.Set("accept", "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9")
	req.Header.Set("accept-language", "en-US,en;q=0.9")
	req.Header.Set("referer", "https://tronghoa.dev/")
	req.Header.Set("sec-ch-ua", `" Not;A Brand";v="99", "Microsoft Edge";v="103", "Chromium";v="103"`)
	req.Header.Set("sec-ch-ua-mobile", "?0")
	req.Header.Set("sec-ch-ua-platform", `"Windows"`)
	req.Header.Set("sec-fetch-dest", "document")
	req.Header.Set("sec-fetch-mode", "navigate")
	req.Header.Set("sec-fetch-site", "same-origin")
	req.Header.Set("sec-fetch-user", "?1")
	req.Header.Set("upgrade-insecure-requests", "1")
	req.Header.Set("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37")
	resp, err := client.Do(req)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	bodyText, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Printf("%s\n", bodyText)
}
