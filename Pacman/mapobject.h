#ifndef MAPOBJECT_H
#define MAPOBJECT_H

#include <QObject>

class MapObject
{
public:
    enum ObjectTypes {
        WallType,
        EmptyType,
        PointType,
        BoosterType,
        PlayerType
    };
    MapObject(ObjectTypes type, int row, int column);
    ~MapObject();

    ObjectTypes type() const;
    void setType(const ObjectTypes &type);

    float x() const;
    void setX(float x);

    float y() const;
    void setY(float y);

    float width() const;
    void setWidth(float width);

    float heigth() const;
    void setHeigth(float heigth);

private:
    ObjectTypes mType;
    float mX;
    float mY;
    float mWidth;
    float mHeigth;
};

#endif // MAPOBJECT_H
