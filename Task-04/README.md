_30/10/2021_<br>
_9:11am_

# Python Code

```
import requests
import json
import argparse
import urllib.request
import random

parser = argparse.ArgumentParser(description="Nasa Photo on Demand Using API")
parser.add_argument('Id', help='Id of the Rover')
parser.add_argument('Date', help='Date of the Image')
args = parser.parse_args()


api_key = 'uOO8Ya79SiJZDiIrzu6Oner7qBgeOsugXPrhMhkP'
x = args.Id
y = args.Date

url= f'https://api.nasa.gov/mars-photos/api/v1/rovers/'+x+'/photos?earth_date='+y+'&api_key=uOO8Ya79SiJZDiIrzu6Oner7qBgeOsugXPrhMhkP'

r = requests.get(url)
result=json.loads(r.text)
image = result['photos'][0]["img_src"]
name = random.randrange(1, 1000)
full_name = str(name) + ".jpg"
urllib.request.urlretrieve(image, full_name)

```

USAGE : `python nasa.py <rover id> <date : YYYY-MM-DD>`


--------------------------------
Rover Ids :

1.curiosity

2.opportunity

3.spirit

--------------------------------
# GIF
--------------------------------

![ezgif com-gif-maker (6)](https://user-images.githubusercontent.com/56226566/139519684-4edb04c4-339f-4254-a180-cdb315e70218.gif)

--------------------------------
# ScreenShots
-----------------------------------
1. `python nasa.py curiosity 2015-3-6`

![image](https://user-images.githubusercontent.com/56226566/139519324-8a549797-9d58-46db-a325-396cb81e30c8.png)

2. `python nasa.py opportunity 2013-7-12`

![image](https://user-images.githubusercontent.com/56226566/139519320-52713ca6-cfc1-4639-91c6-fd5e57ed134c.png)

3. `python nasa.py spirit 2004-6-3` 

![image](https://user-images.githubusercontent.com/56226566/139519314-9bce596c-f2fd-4ce1-9ceb-204141ec7222.png)


