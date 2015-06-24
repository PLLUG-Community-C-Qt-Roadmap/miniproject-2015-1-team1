#include "mapmodel.h"

MapModel::MapModel(QObject *parent) : QAbstractListModel(parent)
{

}

MapModel::~MapModel()
{

}

void MapModel::moveObjectUp(int index, float row)
{
    QModelIndex modelIndex = this->index(index, 0, QModelIndex());
    this->setData(modelIndex, row, YRole);

}

void MapModel::moveObjectDown(int index, float row)
{

    QModelIndex modelIndex = this->index(index, 0, QModelIndex());

    this->setData(modelIndex, row, YRole);
}

void MapModel::moveObjectLeft(int index, float column)
{
    QModelIndex modelIndex = this->index(index, 0, QModelIndex());
    this->setData(modelIndex, column, XRole);
}

void MapModel::moveObjectRight(int index, float column)
{
    QModelIndex modelIndex = this->index(index, 0, QModelIndex());
    this->setData(modelIndex, column, XRole);
}

void MapModel::changeObjectType(int index, int type)
{
    QModelIndex modelIndex = this->index(index, 0, QModelIndex());
    this->setData(modelIndex, type, TypeRole);
}

int MapModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return mObjectsList.count();
}

void MapModel::addMapObject(MapObject *object)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    mObjectsList << object;
    endInsertRows();
}

QVariant MapModel::data(const QModelIndex &index, int role) const
{
    if (index.row() < 0 || index.row() >= rowCount())
    {
        return QVariant();
    }
    MapObject *object = mObjectsList.at(index.row());

    if (role == TypeRole)
    {
        return object->type();
    }
    else if (role == XRole)
    {
        return object->x();
    }
    else if (role == YRole)
    {
        return object->y();
    }
    else if (role == WidthRole)
    {
        return object->width();
    }
    else if (role == HeigthRole)
    {
        return object->heigth();

    }
    return QVariant();
}

QHash<int, QByteArray> MapModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[TypeRole] = "typeRole";
    roles[XRole] = "xRole";
    roles[YRole] = "yRole";
    roles[WidthRole] = "widthRole";
    roles[HeigthRole] = "heigthRole";
    return roles;
}

bool MapModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    bool result = false; int k, way;
    if ( index.row() >= 0 && index.row() < rowCount())
    {
        MapObject *object = mObjectsList.at(index.row());
        switch (role)
        {
        case XRole:

            way = value.toFloat() * 21.5 - object->x();
            for(int i = 0; i < mObjectsList.count(); i++)
            {
                if(way > 0)
                {
                    if(object->x() + 21.5 == mObjectsList[i]->x() &&  object->y() == mObjectsList[i]->y())
                    {
                        k = i;
                        break;
                    }
                }
                else if(object->x() - 21.5 == mObjectsList[i]->x() &&  object->y() == mObjectsList[i]->y())
                {
                    k = i;
                    break;
                }
            }
            if(mObjectsList.at(k)->type() != 0)
            {
                mObjectsList[k]->setType((MapObject::ObjectTypes)1);
                object->setX(value.toFloat());
                result = true;

            }
            break;
        case YRole:
            way = value.toFloat() * 19.0 - object->y();
            for(int i = 0; i < mObjectsList.count(); i++)
            {
                if(way > 0)
                {
                    if(object->x() == mObjectsList[i]->x() &&  object->y() + 19.0 == mObjectsList[i]->y())
                    {
                        k = i;
                        break;
                    }
                }
                else if(object->x() == mObjectsList[i]->x() &&  object->y() - 19.0 == mObjectsList[i]->y())
                {

                    k = i;
                    break;
                }
            }
            if(mObjectsList.at(k)->type() != 0)
            {
                mObjectsList[k]->setType((MapObject::ObjectTypes)1);
                object->setY(value.toFloat());
                result = true;

            }
            break;
        case TypeRole:
            object->setType((MapObject::ObjectTypes)value.toInt());
            result = true;
            break;
        default:
            break;
        }
        emit dataChanged(index, index);
        emit dataChanged(this->index(k, 0, QModelIndex()), this->index(k, 0, QModelIndex()));
    }
    return result;
}
