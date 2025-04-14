#ifndef MYLIST1_H
#define MYLIST1_H

#include <QObject>

class mylist1 : public QObject{
    Q_OBJECT
    Q_PROPERTY(QList<QString> listStr STORED true USER true)
    Q_PROPERTY(QList<int> objectsArray STORED true USER true)
private:
    QList<QString> listStr;
    QString allStr;
    int lastStrSize;
    QString lastStr;
    int count_v = 0; // кол-во гласных
    int count_c = 0; // кол-во согласных
    int count_n = 0; // кол-во цифр
    QList<int> integerList;

public:
    mylist1();
    Q_INVOKABLE void addNewStr(QString str);
    Q_INVOKABLE void deleteLastStr();
    Q_INVOKABLE QString getAllStr();
    Q_INVOKABLE QList<int> countLetters();
    Q_INVOKABLE QList<int> countLetters2(QString myStr);
    Q_INVOKABLE bool myStrFind(QString myStr, QString str2find);
};

#endif // MYLIST_H
