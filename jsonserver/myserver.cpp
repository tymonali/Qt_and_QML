#include "myserver.h"

myserver::myserver(){}

myserver::~myserver(){}

void myserver::startServer()
{
    if(this -> listen(QHostAddress::Any, 5555))
    {
        qDebug() << "Listening";
    }
    else
    {
        qDebug() << "Not listening";
    }
}

void myserver::incomingConnection(qintptr socketDescriptor)
{
    socket = new QTcpSocket(this);
    socket -> setSocketDescriptor(socketDescriptor);

        connect(socket, SIGNAL(readyRead()), this, SLOT(sockReady()));
        connect(socket, SIGNAL(disconnected()), this, SLOT(sockDisc()));

    qDebug() << socketDescriptor << " Client connected";
    // "key":"value" or value
    // {"type":"connect","status":"yes"}
    socket -> write("{\"type\":\"connect\",\"status\":\"yes\"}");
    qDebug() << "Send client connect status - YES";
}

void myserver::sockReady()
{
    Data = socket -> readAll();
    qDebug() << "Data: " << Data;

    doc = QJsonDocument::fromJson(Data, &docError);

    // {"type":"select", "params":"workers"}
    if(docError.errorString().toInt() == QJsonParseError::NoError)
    {
        if((doc.object().value("type").toString() == "select") && (doc.object().value("params").toString() == "workers"))
        {
            QFile file;
            file.setFileName("/home/torbrand/jsonsFiles/workers.json");
            if(file.open(QIODevice::ReadOnly|QFile::Text))
            {
                QByteArray fromFile = file.readAll();
                // {"type":"resultSelect", "result":...}
                QByteArray itog = "{\"type\":\"resultSelect\", \"result\":" + fromFile + "}";

                socket -> write(itog);
                socket -> waitForBytesWritten(500);
            }
            file.close();
        }
    }
}

void myserver::sockDisc()
{
    qDebug() << "Disconnect";
    socket -> deleteLater();
}
