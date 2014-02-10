#include <iostream>
#include <cstdlib>
#include <cmath>
#include <vector>
using namespace std;

/**********************************

ACCORDANCE: 
  
  1. http://www.virginiadot.org/vtrc/main/online_reports/pdf/01-r13.pdf
  
  2. v^2 - v0^2 = 2 * a * S
  
  3. 1 foot = 0.3048 m

Speed (feet/sec)
14.7
22
29.3
36.7
44
51.3 //
58.7
66
73.3
80.7
88
95.3
102.7
110
117.3
124.7
132
139.3
146.7

Automoblie Brakes (feet)
5
11
19
30
43
58 //
76
96
119
144
171
201
233
268
305
344
386
430
476

Truck Brakes (feet)
6
14
25
40
57
78 //
102
129
159
192
229
268
311
357
406
459
514
573
635

**************************/


int main()
{
  vector<double> vt;
  vector<double> Sa; // auto
  vector<double> St; // truck
  int count = 0;
  
  double reader;
  
  cout << "vt::" << endl;
  while(cin>>reader && (reader>=0))
  {
    count++;
    vt.push_back(reader);
  }
  
  cout << endl << "Sa::" << endl;
  for(int i=0; i<count; ++i)
  {
    cin >> reader;
    Sa.push_back(reader);
  }
  
  cout << endl << "St::" << endl;
  for(int i=0; i<count; ++i)
  {
    cin >> reader;
    St.push_back(reader);
  }
  
  cout << endl << "Result:: (m/s)" << endl;
  for(int i=0; i<count; ++i)
  {
    cout << vt[i]*vt[i] / (2 * Sa[i]) * 0.3048 << "\t\t" 
         << vt[i]*vt[i] / (2 * St[i]) * 0.3048 << endl;
  }
  
  system("pause");
  return 0;
}
