#include <QApplication>
#include <QQmlApplicationEngine>
#include "person.h"
#include <qqml.h>
#include <QList>
#include <QQmlContext>
#include <QVariant>
#include <QQuickView>
#include "viewmodel.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

//    QList<QObject*>  list;
//    list.append(new Person("1", "male", 43, "iufpu", "f;ja"));
//    list.append(new Person("1", "male", 43, "iufpu", "f;ja"));
//    list.append(new Person("1", "male", 43, "iufpu", "f;ja"));
//    list.append(new Person("1", "male", 43, "iufpu", "f;ja"));
//    list.append(new Person("1", "male", 43, "iufpu", "f;ja"));

    ListModel listmodel;
    listmodel.addPerson({"1", "male", 42, "33333", "China"});
    listmodel.addPerson({"2", "male", 42, "33333", "China"});
    listmodel.addPerson({"3", "male", 42, "33333", "China"});
    listmodel.addPerson({"4", "male", 42, "33333", "China"});
    listmodel.addPerson({"5", "male", 42, "33333", "China"});
    listmodel.addPerson({"6", "male", 42, "33333", "China"});
    listmodel.addPerson({"7", "male", 42, "33333", "China"});
    listmodel.addPerson({"8", "male", 42, "33333", "China"});
    listmodel.addPerson({"9", "male", 42, "33333", "China"});
    listmodel.addPerson({"10", "male", 42, "33333", "China"});
    listmodel.addPerson({"11", "male", 42, "33333", "China"});

    QQmlApplicationEngine engine;
    QQmlContext *qctx = engine.rootContext();
    //qctx->setContextProperty("mymodel", QVariant::fromValue(list));
    qctx->setContextProperty("mymodel1",&listmodel);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
