TEMPLATE = app

QT += qml quick core gui widgets androidextras
CONFIG += c++11

SOURCES += main.cpp \
    backend.cpp \
    filepicker.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    android/AndroidManifest.xml \
    android/res/values/libs.xml \
    android/build.gradle \
    android/src/com/example/getimage/fetch/FetchClass.java

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

HEADERS += \
    backend.h \
    filepicker.h
