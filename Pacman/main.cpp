#include <QFile>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QTextStream>
#include <QDebug>
#include "mapmodel.h"
#include "mapobject.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QFile fMap(":/Map/map.txt");
    fMap.open(QIODevice::ReadOnly);
    QTextStream in(&fMap);
    QString sMap = in.readAll();
    MapModel mapModel;
    QList<MapObject*> objects;
    objects << new MapObject(MapObject::PlayerType, 23, 14);
    for (int i = 0; i < 31; ++i)
    {
        for (int j = 0; j < 28; ++j)
        {
            int type = sMap.split('\n').at(i).split('\t').at(j).toInt();
            objects << new MapObject((MapObject::ObjectTypes)type, i, j);
        }
    }
    for (int i = 0; i < objects.count(); ++i)
    {
        mapModel.addMapObject(objects.at(i));
    }
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("mapModel", &mapModel);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
