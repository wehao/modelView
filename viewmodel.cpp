#include "viewmodel.h"
#include <QDebug>

ListModel::ListModel(QObject *parent)
    :QAbstractListModel(parent)
{ }

bool ListModel::removeRow(int row, const QModelIndex &parent)
{
    beginRemoveRows(QModelIndex(), row, row);
    Q_UNUSED(parent);
    qDebug() << "delete an item";
    list.removeAt(row);
//    foreach (Person var, list) {
//        qDebug() << var.name << var.sex << var.age <<var.tel << var.addr <<"\n";
//    }
    endRemoveRows();
    return true;
}

bool ListModel::insertRow(int row, const QString name, const QString sex, const int age,
                          const QString tel, const QString addr)
{
    beginInsertRows(QModelIndex(), row, row);
    Person person;
    person.name = name;
    person.sex = sex;
    person.age = age;
    person.tel = tel;
    person.addr = addr;
    list.insert(row,person);
    endInsertRows();

//    foreach (Person var, list) {
//        qDebug() << var.name << var.sex << var.age <<var.tel << var.addr <<"\n";
//    }
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


