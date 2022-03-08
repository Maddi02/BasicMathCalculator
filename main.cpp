#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "calculateCyliderArea.h"
#include <QDebug>
#include<QQmlContext>

int main(int argc, char *argv[])
{
    calculateCyliderArea *calculateCylider = new  calculateCyliderArea;

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("calculate",calculateCylider);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if(engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
