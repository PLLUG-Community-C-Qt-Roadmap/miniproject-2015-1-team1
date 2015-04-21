#include "widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
{
    start = new QPushButton("Start");
    stop = new QPushButton("Stop");

    horrLayout = new QHBoxLayout();
    horrLayout->addWidget(start);
    horrLayout->addWidget(stop);

    timer = new QTimer(this);
    timer->setInterval(300);

    rButtRed = new QRadioButton("red");
    rButtYellow = new QRadioButton("yellow");
    rButtGreen = new QRadioButton("green");

    vertLayout = new QVBoxLayout(this);
    vertLayout->addWidget(rButtRed);
    vertLayout->addWidget(rButtYellow);
    vertLayout->addWidget(rButtGreen);
    vertLayout->addLayout(horrLayout);

    it = 0;
    flag = true;

    QObject::connect(timer, SIGNAL(timeout()),this, SLOT(update()));
    QObject::connect(start,SIGNAL(clicked()),this,SLOT(timerStart()));
    QObject::connect(stop,SIGNAL(clicked()),this,SLOT(timerStop()));
}

void Widget::update()
{

    switch (it) {
    case 0:
        rButtRed->toggle();
        break;
    case 1:
        rButtYellow->toggle();
        break;
    case 2:
        rButtGreen->toggle();

        break;
    default:
        break;
    }

    if(flag)
        it++;
    else
        it--;
    if(it==3)
    {   it = 2;
        flag = false;
    }
    if(it == -1)
    {
        it = 0;
        flag = true;
    }
}
void Widget::timerStart()
{
    timer->start();
}
void Widget::timerStop()
{
    timer->stop();
}

Widget::~Widget()
{

}
