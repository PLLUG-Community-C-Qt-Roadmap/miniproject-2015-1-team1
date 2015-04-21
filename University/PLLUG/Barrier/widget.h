#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QRadioButton>
#include <QTimer>
#include <QHBoxLayout>
#include <QVBoxLayout>
#include <QPushButton>

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = 0);
    ~Widget();
private:
    QTimer *timer;

    QRadioButton *rButtRed;
    QRadioButton *rButtYellow;
    QRadioButton *rButtGreen;

    QHBoxLayout *horrLayout;
    QVBoxLayout *vertLayout;

    QPushButton *start;
    QPushButton *stop;

    bool flag;
    int it;
private slots:
    void update();
    void timerStart();
    void timerStop();
};

#endif // WIDGET_H
