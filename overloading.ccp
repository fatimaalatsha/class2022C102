#include <iostream>
#include <string>
using namespace std;


class Point {
  private:
  int x;
  int y;

  public:
  Point(int a=0, int b=0 ): x{a}, y{b}{
    
  }

  void getPoint() const{
     cout<< "cooordinate (x,y) is :" <<"("<<x<< ";"<<y<<")"<< endl;
    
  }

  //add function ..... member funvtion
  /******
Point add(Point& p){
    this->x =this-> x + p.x; //p1.x +p2.x
    this->y =this-> y + p.y;

    return *this;
  }

**********/

/// poerateor + is non static memeber function 

/* using non-static member function p1 operator p2*/

//non- member function 
Point operator+( const Point& rh){
  Point p;
  p.x=x + rh.x;
  p.y=y+rh.y;
  return p;
  }  

Point operator*( const Point& rh ){

  Point p;
  p.x = x * rh.x;
  p.y = y * rh.y;

  return p;
}

};

int main (){
  Point p1{3,4};
  Point p2{1,2};
  Point p3 = p1+p2;
  Point p4 = p1 + p3 * p1;
  p3.getPoint();
  return 0;
}