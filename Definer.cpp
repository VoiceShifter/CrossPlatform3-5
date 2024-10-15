#include "Definer.hpp"

Definer::Definer(QObject *parent)
    : QObject{parent}
{
    #if defined (_WIN32)
        OS = "WINDOWS";
    #elif defined(__linux__)
        OS = "LINUX";
    #else
        OS = "ANDROID";
    #endif

}

QString Definer::getOS() const
{
    return OS;
}

void Definer::setOS(const QString &newOS)
{
    if (OS == newOS)
        return;
    OS = newOS;
    emit OSChanged();
}
