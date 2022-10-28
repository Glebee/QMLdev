#include "counter.h"
#include <QDebug>

Counter::Counter(QObject  *parent):QObject(parent){
}

int  Counter::getCounter()
{
    qDebug()<<"triggered method Get, returned some value"<< count;
    return count;
}
    void Counter::setCounter(int  c)
{
    qDebug()<<"triggered method Set, returned some value"<< c;
    count  =  c;
}

void  Counter::add()
{
    count++;
}
void  Counter::reset()
{
    count = 0;
}
