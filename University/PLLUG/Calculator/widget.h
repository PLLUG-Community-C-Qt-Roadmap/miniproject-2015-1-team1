#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QPushButton>
#include <QLineEdit>
#include <QLabel>
#include <QVBoxLayout>
#include <QHBoxLayout>

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = 0);
    ~Widget();

private:
    QLabel *a1;
    QLabel *b1;
    QLabel *res;

    QHBoxLayout *HBlayout1;
    QHBoxLayout *HBlayout2;
    QHBoxLayout *HBlayout3;
    QVBoxLayout *VBlayout;

    QPushButton *Add;
    QPushButton *Clear;

    QLineEdit *first;
    QLineEdit *second;
    QLineEdit *result;
public slots:
    void AddOnClick();
    void ButtClear();

};

#endif // WIDGET_H
