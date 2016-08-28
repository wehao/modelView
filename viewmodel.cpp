#include "viewmodel.h"

ListModel::ListModel(QObject *parent)
    :QAbstractListModel(parent)
{ }

bool ListModel::removeRow(int row, const QModelIndex &parent)
{
    return true;
}

bool ListModel::insertRow(int row, const QModelIndex &parent)
{
    return true;
}

int ListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return list.count();
}

QVariant ListModel::data(const QModelIndex &index, int role) const
{
    if(index.row() <0 || index.row() >= list.count())
        return QVariant();

    const Person person = list[index.row()];
    if(role == NAME_TYPE)
        return person.name;
    else if(role == SEX_TYPE)
        return person.sex;
    else if(role == AGE_TYPE)
        return person.age;
    else if(role == TEL_TYPE)
        return person.tel;
    else if(role == ADDR_TYPE)
        return person.addr;
}

QHash<int,QByteArray> ListModel::roleNames()const
{
    QHash<int,QByteArray> hash;
    hash[NAME_TYPE] = "name";
    hash[SEX_TYPE] = "sex";
    hash[AGE_TYPE] = "age";
    hash[TEL_TYPE] = "tel";
    hash[ADDR_TYPE] = "addr";
    return hash;
}

void ListModel::addPerson(const Person &person)
{
    beginInsertColumns(QModelIndex(), rowCount(), rowCount());
    list << person;
    endInsertColumns();
}

//QList<Person> ListModel::model()const
//{

//    return list;
//}
