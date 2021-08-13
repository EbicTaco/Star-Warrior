class Timer{
  float Time;
  
  Timer(float set){
    Time = set;
  }
  
  float getTime(){
    return (Time);
  }
  
  void setTime(float set){
    Time = set;
  }
  
  void countUp(){
    Time += 1/frameRate;
    text(Time, 100, 100);
  }
  
}
