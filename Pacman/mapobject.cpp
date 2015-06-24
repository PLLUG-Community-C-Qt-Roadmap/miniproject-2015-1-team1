#include "mapobject.h"

#include <QDebug>

MapObject::MapObject(ObjectTypes type, int row, int column)
    : mType(type),

      mWidth(21.5f),
      mHeigth(19.0f)
{
    mX = column * mWidth;
    mY = row * mHeigth;
}

MapObject::~MapObject()
{
}

MapObject::ObjectTypes MapObject::type() const
{
    return mType;
}

void MapObject::setType(const ObjectTypes &type)
{
    mType = type;
}
float MapObject::x() const
{
    return mX;
}

void MapObject::setX(float x)
{
    mX = x * mWidth;
}
float MapObject::y() const
{
    return mY;
}

void MapObject::setY(float y)
{
    mY = y * mHeigth;
}
float MapObject::width() const
{
    return mWidth;
}

void MapObject::setWidth(float width)
{
    mWidth = width;
}
float MapObject::heigth() const
{
    return mHeigth;
}

void MapObject::setHeigth(float heigth)
{
    mHeigth = heigth;
}
