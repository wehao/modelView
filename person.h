#ifndef PERSON_H
#define PERSON_H

#include <QObject>

class Person : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString sex READ sex WRITE setSex NOTIFY sexChanged)
    Q_PROPERTY(int age READ age WRITE setAge NOTIFY ageChanged)
    Q_PROPERTY(QString tel READ tel WRITE setTel NOTIFY telChanged)
    Q_PROPERTY(QString addr READ addr WRITE setAddr NOTIFY addrChanged)

public:
    Person(QObject* parent = 0);
    Person(QString name, QString sex = "", int age = 0, QString tel = "", QString addr = "");

    QString name()const;
    void setName(const QString &name);

    QString sex()const;
    void setSex(const QString &sex);

    int age()const;
    void setAge(const int &age);

    QString tel()const;
    void setTel(const QString &tel);

    QString addr()const;
    void setAddr(const QString &addr);



signals:
    void nameChanged();
    void sexChanged();
    void ageChanged();
    void telChanged();
    void addrChanged();

private:
    QString m_name;
    QString m_sex;
    int m_age;
    QString m_tel;
    QString m_addr;
};


#endif // PERSON_H

