#ifndef MAPMODEL_H
#define MAPMODEL_H

#include "mapobject.h"
#include <QAbstractListModel>
#include <QObject>

class MapModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum ObjectsRoles {
        TypeRole = Qt::UserRole + 1,
        XRole,
        YRole,
        WidthRole,
        HeigthRole
    };

    MapModel(QObject *parent = 0);
    ~MapModel();

    Q_INVOKABLE void moveObjectUp(int index, float row);
    Q_INVOKABLE void moveObjectDown(int index, float row);
    Q_INVOKABLE void moveObjectLeft(int index, float column);
    Q_INVOKABLE void moveObjectRight(int index, float column);
    Q_INVOKABLE void changeObjectType(int index, int type);

    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    void addMapObject(MapObject* object);
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const;
    QHash<int, QByteArray> roleNames() const;
    bool setData(const QModelIndex &index, const QVariant &value, int role);

private:
    QList<MapObject*> mObjectsList;


    // QAbstractItemModel interface
public:
};

#endif // MAPMODEL_H
