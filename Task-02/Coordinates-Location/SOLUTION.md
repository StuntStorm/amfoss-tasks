Detailed Terminal Commands :

mkdir Coordinates-Location
cd Coordinates-Location
mkdir NOrth

cd North
touch NDegree.txt
cat > NDegree.txt
2°
CTRL + D
touch NMinutes.txt
cat > NMinutes.txt
5'
CTRL + D
touch NSeconds.txt
cat > NSeconds.txt  
38.1"
CTRL + D

touch NorthCoordinate.txt
cat > NorthCoordinate.txt
2°,5',38.1"
CTRL + D
cp ~/Desktop/Coordinates-Location/North/NorthCoordinate.txt ~/Desktop/Coordinates-Location/
cd ..
mv NorthCoordinate.txt North.txt


mkdir East
cd East
touch EDegree.txt
cat > EDegree.txt
76°
CTRL + D
touch EMinutes.txt
cat > EMinutes.txt
29'
CTRL + D
touch ESeconds.txt
cat > ESeconds.txt  
30.8"
CTRL + D


touch EastCoordinate.txt
cat > EastCoordinate.txt
76°,29',30.8"
CTRL + D
cp ~/Desktop/Coordinates-Location/East/EastCoordinate.txt ~/Desktop/Coordinates-Location/
cd ..
mv EastCoordinate.txt East.txt

touch Location-Coordinate.txt      
cat > Location-Coordinate.txt                                                                                                                                                                                                        1 ⚙
2°,5',38.1"
76°,29',30.8"
CTRL + D

SCREENSHOT : 
