#include "mylist1.h"
#include <QDebug>


mylist1::mylist1()
{
    lastStrSize = 0;
}
void mylist1::addNewStr(QString str){

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
QString mylist1::getAllStr(){
    return allStr;
}
void mylist1::deleteLastStr(){
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

// принимает последний элемент массива QList<QString> listStr;

QList<int> mylist1::countLetters(){

    QString lastStr;
    lastStr = listStr.at(listStr.size()-1);

    int count_v = 0; // кол-во гласных
    int count_c = 0; // кол-во согласных
    int count_n = 0; // кол-во цифр

    QList<QString> vowels = {"А", "Е", "Ё", "И", "О", "У", "Ы", "Э", "Ю", "Я", "а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я"};
    QList<QString> consonants = { "Б", "В", "Г", "Д", "Ж", "З", "Й", "К", "Л", "М", "Н", "П", "Р", "С", "Т", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ"};
    QList<QString> numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};

    for (int i = 0; i < lastStr.size(); i++) {

        if (vowels.contains(lastStr.at(i))){
            count_v++;
        }
        if (consonants.contains(lastStr.at(i))){
            count_c++;
        }
        if(numbers.contains(lastStr.at(i))){
            count_n++;
        }
    }
    qDebug() << "Кол-во гласных: " << count_v;
    qDebug() << "Кол-во согласных: " <<count_c;
    qDebug() << "Кол-во цифр: " <<count_n;

    QList<int> integerList {count_v, count_c, count_n};
    return integerList;
}

QList<int> mylist1::countLetters2(QString myStr){

    int count_v = 0; // кол-во гласных
    int count_c = 0; // кол-во согласных
    int count_n = 0; // кол-во цифр

    QList<QString> vowels = {"А", "Е", "Ё", "И", "О", "У", "Ы", "Э", "Ю", "Я", "а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я", "A", "E", "I", "O", "U", "Y", "a", "e", "i", "o", "u", "y"};
    QList<QString> consonants = { "Б", "В", "Г", "Д", "Ж", "З", "Й", "К", "Л", "М", "Н", "П", "Р", "С", "Т", "Ф", "Х", "Ц", "Ч", "Ш", "Щ", "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ц", "ч", "ш", "щ", "B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z","b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"};
    QList<QString> numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};

    for (int i = 0; i < myStr.size(); i++) {

        if (vowels.contains(myStr.at(i))){
            count_v++;
        }
        if (consonants.contains(myStr.at(i))){
            count_c++;
        }
        if(numbers.contains(myStr.at(i))){
            count_n++;
        }
    }
    qDebug() << "Кол-во гласных: " << count_v;
    qDebug() << "Кол-во согласных: " <<count_c;
    qDebug() << "Кол-во цифр: " <<count_n;

    QList<int> integerList {count_v, count_c, count_n};
    return integerList;
}

bool mylist1::myStrFind(QString myStr, QString str2find){
    return myStr.contains(str2find);
}
