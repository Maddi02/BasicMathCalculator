#ifndef CALCULATECYLIDERAREA_H
#define CALCULATECYLIDERAREA_H
#include <QObject>
#include <QDebug>

class calculateCyliderArea : public QObject
{
    Q_OBJECT
public:
    explicit calculateCyliderArea(QObject * parent = nullptr);

signals:
   void valueChanged(QString s);

public slots:
    void emmitChange(const QString& height, const QString& radius);
private:
    bool checkInputString(const QString& stringToCheck)const ;
    const QString calculateVolume(const QString& height, const QString& radius) const;

};

#endif // CALCULATECYLIDERAREA_H
