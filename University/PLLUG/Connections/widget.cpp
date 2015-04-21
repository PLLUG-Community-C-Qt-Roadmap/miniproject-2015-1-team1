#include "widget.h"
#include "ui_widget.h"
#include <QObject>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    connect(ui->pushButton, SIGNAL(clicked()), ui->checkBox, SLOT(toggle()));
    connect(ui->ScrollBar, SIGNAL(valueChanged(int)), ui->Slider, SLOT(setValue(int)));
    connect(ui->ScrollBar, SIGNAL(valueChanged(int)), ui->dial, SLOT(setValue(int)));
    connect(ui->Slider, SIGNAL(valueChanged(int)), ui->ScrollBar, SLOT(setValue(int)));
    connect(ui->Slider, SIGNAL(valueChanged(int)), ui->dial, SLOT(setValue(int)));
    connect(ui->dial, SIGNAL(valueChanged(int)), ui->ScrollBar, SLOT(setValue(int)));
    connect(ui->dial, SIGNAL(valueChanged(int)), ui->Slider, SLOT(setValue(int)));

}

Widget::~Widget()
{
    delete ui;
}
