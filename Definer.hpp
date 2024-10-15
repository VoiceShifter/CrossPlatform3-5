#ifndef DEFINER_HPP
#define DEFINER_HPP

#include <QObject>

class Definer : public QObject
{
    Q_OBJECT
public:
    explicit Definer(QObject *parent = nullptr);
    QString OS{};

    QString getOS() const;

    void setOS(const QString &newOS);

signals:

    void OSChanged();

private:


    Q_PROPERTY(QString _OS READ getOS WRITE setOS NOTIFY OSChanged FINAL)
};

#endif // DEFINER_HPP
