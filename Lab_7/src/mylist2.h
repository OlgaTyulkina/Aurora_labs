#ifndef mylist2_H
#define mylist2_H

#include <QObject>

class mylist2 : public QObject{
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
    mylist2();
    Q_INVOKABLE void addNewStr(QString str);
    Q_INVOKABLE void deleteLastStr();
    Q_INVOKABLE QString getAllStr();
    Q_INVOKABLE QList<int> countLetters();
};

#endif // MYLIST_H
