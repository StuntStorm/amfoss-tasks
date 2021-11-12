```
import csv
from urllib.request import urlopen
from bs4 import BeautifulSoup

html = urlopen(
    'https://i.forbesimg.com/forbes/scripts/fac08f22.scripts.js')
bs = BeautifulSoup(html, 'html.parser')

table = bs.find('table')
rows = table.findAll('tr')

csvFile = open('Billion.csv', 'wt+')
writer = csv.writer(csvFile)
try:
    for row in rows:
        row = []
        for cell in row.findAll(['td','th']):
            row.append(cell.get_text())
            writer.writerow(row)
finally:
    csvFile.close()
    
''' Potential Links : 
https://www.forbes.com/real-time-billionaires/#442ea2b3d788
https://i.forbesimg.com/list-landers/css/main.css?v=2
https://i.forbesimg.com/csf/real-time-billionaires/js/main.js
https://i.forbesimg.com/forbes/scripts/fac08f22.scripts.js
https://i.forbesimg.com/forbes/scripts/835b9600.vendor.js
'''
```
