#include "person.h"

Person::Person(QObject *parent)
    :QObject(parent)
{ }

Person::Person(QString name, QString sex, int age, QString tel, QString addr)
    : m_name(name), m_sex(sex), m_age(age), m_tel(tel), m_addr(addr)
{ }

QString Person::name()const
{
    return m_name;
}

void Person::setName(const QString &name)
{
    m_name = name;
}

QString Person::sex()const
{
    return m_sex;
}

void Person::setSex(const QString &sex)
{
    m_sex = sex;
}

int Person::age()const
{
    return m_age;
}

void Person::setAge(const int &age)
{
    m_age = age;
}

QString Person::tel()const
{
    return m_tel;
}

void Person::setTel(const QString &tel)
{
    m_tel = tel;
}

QString Person::addr()const
{
    return m_addr;
}
void Person::setAddr(const QString &addr)
{
    m_addr  = addr;
}
