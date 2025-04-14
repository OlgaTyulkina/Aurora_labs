#include "mylist.h"
#include <QDebug>


mylist::mylist()
{
    lastStrSize = 0;

}
void mylist::addNewStr(QString str){

    if(listStr.empty()){
        str.replace(0,1,str[0].toUpper());
    }
    else{
        str.replace(0,1,str[0].toLower());
        str.push_front(", ");
    }
    allStr += str;
    listStr.append(str);
    qDebug()<<"element of list = "<<listStr.at(listStr.size()-1);
    lastStrSize = str.size();
    qDebug()<<"size of last str= "<<lastStrSize;
}
QString mylist::getAllStr(){
    return allStr;
}
void mylist::deleteLastStr(){
    if(!listStr.empty()){
        listStr.pop_back();
    }
//    lastStrSize = listStr.at(listStr.size()-1).size();
//    qDebug()<<"size of last str= "<<lastStrSize;
//    allStr.remove(allStr.size()-lastStrSize,lastStrSize);

    allStr.clear();
    for (int i =0 ; i<listStr.size();i++){
        allStr += listStr[i];
    }
}
