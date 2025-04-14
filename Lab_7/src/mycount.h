#ifndef MYCOUNT_H
#define MYCOUNT_H

#include <QObject>

class MyCountClass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString getText READ getText WRITE setText NOTIFY TextChanged)
private:
    QString text;
    int count;
public:
    MyCountClass();
    QString getText();
    void setText(QString &newText);
    Q_INVOKABLE void printText();
    Q_INVOKABLE void printCount();
    Q_INVOKABLE void increaseCount();
    Q_INVOKABLE void resetCount();
    Q_INVOKABLE int getCount();
    Q_INVOKABLE void discreaseCount();
    Q_INVOKABLE void sq_Count();
    //explicit MyCountClass(QObject *parent = nullptr);
private slots:
signals:
   void TextChanged();
};

#endif // MYCOUNT_H
