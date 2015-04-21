#include "widget.h"
#include <QApplication>
#include <QPushButton>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Widget w;
    QPushButton *pB = new QPushButton("Close", &w);
    pB->setGeometry(0, 0, w.width(), w.height());
    QObject::connect(pB, SIGNAL(clicked()),&w, SLOT(close()));
    w.show();

    return a.exec();
}
