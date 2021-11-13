Having no elaborate background with Arduino boards although I have worked with Bibox and Raspberry pi.


This video really helped me to understand more about the question and solution [YT VIDEO](https://www.youtube.com/watch?v=6F1B_N6LuKw)

# Code
----------------------------------------------------------------------
```
#define trigPin 10
#define echoPin 13

float duration, distance;

void setup() {
  Serial.begin(9600);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
}
void loop() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  duration = pulseIn(echoPin, HIGH);
  
  distance = (duration/2) * 0.0343;
  
  Serial.print("Distance = ");
  if(distance >= 500 || distance <= 200) {
    Serial.println("Out of range");
  }
  else {
    Serial.print(distance);
    Serial.println(" cm");
    delay(500);
  }
  delay(500);
}
    
```

# Connections
----------------------------------------------------------------------
![image](https://user-images.githubusercontent.com/56226566/141651238-365c557c-239b-49ce-8838-8f7ffcb08561.png)


![image](https://user-images.githubusercontent.com/56226566/141651273-234fb826-7943-4cc1-b7ba-43208536b96b.png)



# Final
----------------------------------------------------------------------

![image](https://user-images.githubusercontent.com/56226566/141651199-c55ca6fb-23d3-48bb-963b-1a828c3a2f21.png)



https://user-images.githubusercontent.com/56226566/141651947-d369e8cb-7873-42db-8b91-3049fd487878.mp4







