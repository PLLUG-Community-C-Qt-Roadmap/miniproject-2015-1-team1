#include "widget.h"

Widget::Widget(QWidget *parent)
    : QWidget(parent)
{
    a1 = new QLabel("a=");
    b1 = new QLabel("b=");
    res = new QLabel("result=");

    first = new QLineEdit();
    second = new QLineEdit();
    result = new QLineEdit();

    HBlayout1 = new QHBoxLayout();
    HBlayout2 = new QHBoxLayout();
    HBlayout3 = new QHBoxLayout();
    VBlayout = new QVBoxLayout(this);

    HBlayout1->addWidget(a1);
    HBlayout1->addWidget(first);
    HBlayout1->addWidget(b1);
    HBlayout1->addWidget(second);

    Add = new QPushButton("Add");
    Clear = new QPushButton("Clear");

    HBlayout2->addWidget(Add);
    HBlayout2->addWidget(Clear);
    HBlayout3->addWidget(res);
    HBlayout3->addWidget(result);

    VBlayout->addLayout(HBlayout1);
    VBlayout->addLayout(HBlayout2);
    VBlayout->addLayout(HBlayout3);
    QObject::connect(Add,SIGNAL(clicked()),this,SLOT(AddOnClick()));
     QObject::connect(Clear,SIGNAL(clicked()),this,SLOT(ButtClear()));
}
void Widget::AddOnClick()
{
//    bool flagone = true, flagtwo = true;
//    int one = first->text().toInt(&flag);
//    int two = second->text().toInt(&flag);
//    if(flagone && flagtwo)
//        result->setText(QString::number(one + two));
    result->setText(QString::number(first->text().toInt() + second->text().toInt()));
}
void Widget::ButtClear()
{
    first->setText("");
    second->setText("");
    result->setText("");
}

Widget::~Widget()
{

}
