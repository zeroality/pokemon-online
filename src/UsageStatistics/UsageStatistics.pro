# -------------------------------------------------
# Project created by QtCreator 2010-07-22T23:36:49
# -------------------------------------------------
TARGET = usagestats
DESTDIR = ../../bin/serverplugins
TEMPLATE = lib
DEFINES += POKEMONONLINESTATSPLUGIN_LIBRARY
DEFINES += SERVER_SIDE
LIBS += -L../../bin \
    -lpo-pokemoninfo \
    -lpo-utilities
SOURCES += usagestats.cpp
HEADERS += usagestats.h \
    usagestats_global.h \
    ../PokemonInfo/battlestructs.h \
    ../Server/plugininterface.h \
    ../Server/playerinterface.h \
    ../Server/serverinterface.h \
    ../Server/battleinterface.h

contains(QT_VERSION, ^5\\.[0-9]\\..*) {
  DEFINES += QT5
  QMAKE_CXXFLAGS += "-std=c++11"
} else {
  QMAKE_CXXFLAGS += "-std=c++0x"
}

include(../Shared/Common.pri)
