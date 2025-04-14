#include "mycount.h"
#include <QDebug>

MyCountClass::MyCountClass() : QObject()
{
    count = 0;
}
QString MyCountClass::getText(){
    return text;
}
void MyCountClass::setText(QString &newText){
    text = newText;
}
void MyCountClass::printText() {
   qDebug() << text;
}
void MyCountClass::increaseCount(){
    count++;
}
void MyCountClass::resetCount(){
    count = 0;
}
int MyCountClass::getCount(){
    return count;
}
void MyCountClass::printCount(){
    qDebug() << count;
}
void MyCountClass::discreaseCount(){
    count--;
}
void MyCountClass::sq_Count(){
    count = count * count;
}
