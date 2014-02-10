#include <iostream>
#include <cstdlib>
#include <vector>
using namespace std;


double calcMinSafeDistance(
  double a2, 
  double MIN_a, 
  double MIN_v, 
  double MAX_v, 
  double tr)
{
  double a1 = MIN_a;
  double v1 = MAX_v;
  double v2 = MIN_v;
  double L;
  
  if(v2/a2 >= v1/a1 + tr)
    L = (a1*a2*tr*tr + 2*a1*tr*v1 - 2*a1*tr*v2 + v1*v1 - 2*v1*v2 + v2*v2)/(2*(a1 - a2));
  else
    L = v1*tr + v1*v1/(2*a1) - v2*v2/(2*a2);
  
  cout << a2 << "\t" << (v2/a2 >= v1/a1 + tr) << "\t" << L << endl;
  
  return L;
}



int main()
{
  freopen("calc_MinSafeDistances_out.txt","w",stdout);
  
  for(int i=0; i<=800; ++i)
  {
    calcMinSafeDistance(i*0.01, 5.14, 100/3.6, 120/3.6, 1.5);
  }
  
  system("pause");
  return 0;
}
