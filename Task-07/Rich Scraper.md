```
package main

import (
	"fmt"
	"github.com/PuerkitoBio/goquery"
	"net/http"
	"os"
)

func check(err error) {
	if err != nil {
		fmt.Println(err)
	}

}
func writeFile(data, filename string) {
	file, error := os.Create(filename)
	defer file.Close()
	check(error)

	file.WriteString(data)
}
func main() {
	url := "https://www.forbes.com/real-time-billionaires/#1f140dfa3d78/"

	response, error := http.Get(url)
	defer response.Body.Close()
	check(error)
	if response.StatusCode > 400 {
		fmt.Println("Status code", response.StatusCode)
	}

	doc, error := goquery.NewDocumentFromReader(response.Body)
	check(error)

	task, error := doc.Find("table.ng-scope ng-table").Html()
	check(error)

	//fmt.Println(task)
	writeFile(task, "index.html")
}

//possible URLs : 
https://i.forbesimg.com/csf/real-time-billionaires/js/main.js
https://www.forbes.com/real-time-billionaires/#1f140dfa3d78/
https://i.forbesimg.com/forbes/scripts/835b9600.vendor.js
https://i.forbesimg.com/forbes/scripts/fac08f22.scripts.js
```

