#ifndef VIEWMODEL_H
#define VIEWMODEL_H

#include <QAbstractListModel>

class ListModel: public QAbstractListModel
{
    Q_OBJECT
    //Q_PROPERTY(QList<Person> myModel READ model NOTIFY modelChanged)

public:
    ListModel(QObject *parent = 0);

    enum PersonRoles
    {
        NAME_TYPE = Qt::UserRole + 1,
        SEX_TYPE,
        AGE_TYPE,
        TEL_TYPE,
        ADDR_TYPE
    };

    struct Person
    {
        QString name;
        QString sex;
        int age;
        QString tel;
        QString addr;
    };

    void addPerson(const Person &person);
    //QList<Person> model()const;


    Q_INVOKABLE bool removeRow(int row, const QModelIndex &parent);
    Q_INVOKABLE bool insertRow(int row, const QModelIndex &parent);
    int rowCount(const QModelIndex &parent = QModelIndex()) const;
    QVariant data(const QModelIndex &index, int role) const;

protected:
    QHash<int,QByteArray> roleNames()const;

private:
    QList<Person> list;

signals:
    void modelChanged();

};

#endif // VIEWMODEL_H
