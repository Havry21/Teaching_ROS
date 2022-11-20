 #include "ros/ros.h"
 #include "my_service/AddInts.h"
 #include <iostream>

using namespace std;

long int getNum(const vector<char>& str){
    long int _num = 0;
    if(str[0] == '-'){
        for(int i = 1; i < str.size(); i++){
            _num += (str[i] - '0') * pow(10, (str.size()-1) - i);
        }
        _num *= -1;
    }else{
        for(int i = 0; i < str.size(); i++){
            _num += (str[i] - '0') * pow(10, (str.size()-1) - i);
        } 
    }
    return _num;
}

int main(int argc, char** argv){
    ros::init(argc, argv, "add_two_ints_publisher");
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<my_service::AddInts>("add_two_ints");
    my_service::AddInts srv;

    while(ros::ok()){
        string array;
        vector<char> number;

        vector<long int> c = {0,0,0, 0,0,0, 0,0,0};

        cout<<"Matrix =  ";
        getline(cin, array);

        int i = 0;
        for(auto const& num : array){
            if(isdigit(num) || num == '-'){
                number.push_back(num);
            }
            if(num == ' ' || num == '.'){
                c[i] = getNum(number);
                number.clear();
                i++;
            }
        }

        srv.request.matrix = c;

        if(!client.call(srv)){
            cout<<"Fail"<< endl;
            return 1;
        }
    }
}
