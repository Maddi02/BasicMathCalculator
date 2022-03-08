#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "calculateCyliderArea.h"
#include <QDebug>
#include <QQuickView>
#include <iostream>


calculateCyliderArea::calculateCyliderArea(QObject *parent) : QObject(parent){};
 const double pi = 3.14159265359;
void calculateCyliderArea::emmitChange(const QString& height, const QString& radius )
{
    qDebug()<<"Button pressed " << height <<  radius;

    if(checkInputString(height) && checkInputString(radius) && !height.isEmpty() && !radius.isEmpty())
    {
        emit valueChanged(calculateVolume(height,radius));
    }
    else{
        emit valueChanged("Invalid Input");
    }

}
 bool calculateCyliderArea::checkInputString(const QString& stringToCheck) const
{
   for(int i = 0 ; i < stringToCheck.length() ; i++)
   {
       if((isalpha(stringToCheck.toStdString().at(i)))){
           return false;
       }
   }
   return true;
}

 const QString calculateCyliderArea::calculateVolume(const QString& height, const QString& radius)const{

     return QString::number(pi*(std::pow(std::stod(radius.toStdString()),2))*std::stod(height.toStdString()));
 }


