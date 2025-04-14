#ifndef MYLIST_H
#define MYLIST_H

#include <QObject>

class mylist : public QObject{
    Q_OBJECT
    Q_PROPERTY(QList<QString> listStr STORED true USER true)
private:
    QList<QString> listStr;
    QString allStr;
    int lastStrSize;
public:
    mylist();
    Q_INVOKABLE void addNewStr(QString str);
    Q_INVOKABLE void deleteLastStr();
    Q_INVOKABLE QString getAllStr();
private slots:
signals:
//    void listChanged();
};

#endif // MYLIST_H
