QT_TDESKTOP_VERSION_DEFAULT = 5.6.0
QT_TDESKTOP_PATH_DEFAULT = /usr/local/tdesktop/Qt-$${QT_TDESKTOP_VERSION_DEFAULT}

QT_TDESKTOP_VERSION = $${QT_TDESKTOP_VERSION}
QT_TDESKTOP_PATH = $${QT_TDESKTOP_PATH}

isEmpty(QT_TDESKTOP_PATH) {
    message(QT_TDESKTOP_PATH is not set. Using default value $${QT_TDESKTOP_PATH_DEFAULT})
    QT_TDESKTOP_PATH = $${QT_TDESKTOP_PATH_DEFAULT}

}
isEmpty(QT_TDESKTOP_VERSION) {
    message(QT_TDESKTOP_VERSION is not set. Using default value $${QT_TDESKTOP_VERSION_DEFAULT})
    QT_TDESKTOP_VERSION = $${QT_TDESKTOP_VERSION_DEFAULT}
}

INCLUDEPATH += "/usr/include/$$(DEB_HOST_MULTIARCH)/qt5/QtGui/$${QT_TDESKTOP_VERSION}/QtGui" \
               "/usr/include/$$(DEB_HOST_MULTIARCH)/qt5/QtCore/$${QT_TDESKTOP_VERSION}/QtCore" \
               "/usr/include/$$(DEB_HOST_MULTIARCH)/qt5" \
