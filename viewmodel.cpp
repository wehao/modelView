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
    return 1;
}

QVariant ListModel::data(const QModelIndex &index, int role) const
{
    return QVariant(33);
}
