#ifndef VIEWMODEL_H
#define VIEWMODEL_H

#include <QAbstractListModel>

class ListModel: public QAbstractListModel
{
    Q_OBJECT
public:
    ListModel(QObject *parent = 0);

    bool removeRow(int row, const QModelIndex &parent);
    bool insertRow(int row, const QModelIndex &parent);
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;
};

#endif // VIEWMODEL_H
