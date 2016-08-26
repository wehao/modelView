#include <QApplication>
#include <QQmlApplicationEngine>
#include "person.h"
#include <qqml.h>
#include <QList>
#include <QQmlContext>
#include <QVariant>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    qmlRegisterType<Person>("com.person", 1, 0, "Person");

    QList<QObject*>  list;

    list.append(new Person("zhangsan", "male", 22, "33333", "China"));
    list.append(new Person("lisi", "male", 22, "33333", "China"));
    list.append(new Person("wangwu", "male", 22, "33333", "China"));
    list.append(new Person("xiaohong", "male", 22, "33333", "China"));
    list.append(new Person("xiaoming", "male", 22, "33333", "China"));

    QQmlApplicationEngine engine;
    QQmlContext *qctx = engine.rootContext();
    qctx->setContextProperty("MyModel", QVariant::fromValue(list));
    //qctx->setContextProperty("list",QVariant::);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
