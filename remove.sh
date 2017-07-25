#!/bin/bash

set -e

apt-get update -q
dpkg --configure -a

exec apt-get -y remove \
    libreoffice \
    libreoffice-avmedia-backend-gstreamer \
    libreoffice-base \
    libreoffice-base-core \
    libreoffice-base-drivers \
    libreoffice-calc \
    libreoffice-common \
    libreoffice-core \
    libreoffice-draw \
    libreoffice-gnome \
    libreoffice-gtk3 \
    libreoffice-help-de \
    libreoffice-help-en-us \
    libreoffice-impress \
    libreoffice-java-common \
    libreoffice-l10n-de \
    libreoffice-math \
    libreoffice-pdfimport \
    libreoffice-report-builder-bin \
    libreoffice-sdbc-hsqldb \
    libreoffice-style-galaxy \
    libreoffice-style-tango \
    libreoffice-writer \
    ant \
    ant-optional \
    antlr \
    armagetronad \
    armagetronad-common \
    apache2 \
    apache2-bin \
    apache2-data \
    apache2-utils \
    amarok \
    amarok-common \
    amarok-utils \
    aumix \
    bitcoind \
    blinken \
    blobby \
    blobby-data \
    blobby-server \
    bluefish \
    bluefish-data \
    bluefish-plugins \
    php5-common \
    php7.0-common \
    phpmyadmin \
    php-gettext \
    chromium \
    chromium-bsu \
    chromium-bsu-data \
    chromium-l10n \
    cups \
    cups-backend-bjnp \
    cups-browsed \
    cups-bsd \
    cups-client \
    cups-common \
    cups-core-drivers \
    cups-daemon \
    cups-filters \
    cups-filters-core-drivers \
    cups-pk-helper \
    cups-ppdc \
    cups-server-common \
    curl \
    cvs \
    cvsservice \
    daisy-player \
    dia \
    dia-common \
    dia-libs \
    dia-shapes \
    dosbox \
    dosemu \
    eclipse \
    eclipse-jdt \
    eclipse-pde \
    eclipse-platform \
    eclipse-platform-data \
    eclipse-rcp \
    evolution \
    evolution-common \
    evolution-data-server \
    evolution-data-server-common \
    evolution-plugins \
    emacs \
    emacs24 \
    emacs24-bin-common \
    emacs24-common \
    emacsen-common \
    emacspeak \
    emacspeak-espeak-server \
    gnome-games \
    libmariadbclient18 \
    kate \
    kdegames-card-data \
    kdegames-mahjongg-data \
    kstars \
    openjdk-7-jdk \
    openjdk-7-jre \
    openjdk-7-jre-headless \
    openjdk-8-jdk \
    openjdk-8-jre \
    openjdk-8-jre-headless \
    mariadb-client-10.1 \
    mysql-client \
    mysql-client-5.6 \
    mysql-client-core-5.6 \
    mysql-common \
    mysql-server \
    mysql-server-5.6 \
    mysql-server-core-5.6 \
    php-seclib \
    php5 \
    php5-cli \
    php5-common \
    php5-json \
    php5-mcrypt \
    php5-mysql \
    qemu \
    qemu-kvm \
    qemu-slof \
    qemu-system \
    qemu-system-arm \
    qemu-system-common \
    qemu-system-mips \
    qemu-system-misc \
    qemu-system-ppc \
    qemu-system-sparc \
    qemu-system-x86 \
    qemu-user \
    qemu-user-binfmt \
    qemu-utils \
    scilab \
    scilab-cli \
    scilab-data \
    scilab-doc \
    scilab-full-bin \
    scilab-include \
    scilab-minimal-bin \
    spamassassin \
    spamc \
    speech-dispatcher \
    speech-dispatcher-audio-plugins \
    squid \
    squid-common \
    squid-langpack \
    tex-common \
    texinfo \
    texlive \
    texlive-base \
    texlive-binaries \
    texlive-extra-utils \
    texlive-font-utils \
    texlive-fonts-recommended \
    texlive-generic-extra \
    texlive-generic-recommended \
    texlive-lang-german \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-luatex \
    texlive-math-extra \
    texlive-metapost \
    texlive-music \
    texlive-pictures \
    texlive-pstricks \
    texlive-science \
    texmacs \
    texmaker \
    texmaker-data \
    tuxmath \
    tuxmath-data \
    tuxpuck \
    tuxtype \
    tuxtype-data \
    tvtime \
    vlc \
    vlc-data \
    vlc-nox \
    vlc-plugin-zvbi \
    wireshark \
    wireshark-common \
    wireshark-gtk \
    akonadi-backend-postgresql breeze-cursor-theme default-jdk default-jdk-headless default-jre
    default-jre-headless foomatic-db-engine foomatic-filters gir1.2-gdm-1.0 gir1.2-mutter-3.0 \
    gnome-flashback gnome-flashback-common icedtea-8-plugin icedtea-netx icedtea-netx-common \
    icedtea-plugin kde-baseapps-data kde-cli-tools-data kde-runtime-data kde-style-breeze \
    kde-style-breeze-qt4 kdegames-card-data-kf5 kdegames-mahjongg-data-kf5 kdelibs-bin kdelibs5-data \
    kdoctools kio-extras-data klettres-data ktouch-data kwin-data kwin-style-breeze libastro1 \
    libavcodec57 libavformat57 libavutil55 libcamel-1.2-59 libgdm1 libgnome-speech7 \
    libgnutls-openssl27 libgnutls30 libgoa-1.0-0b libgoa-1.0-common libgpgme11 libgpgmepp6 \
    libgspell-1-common libjavascriptcoregtk-4.0-18 libkcmutils4 libkde3support4 libkdeclarative5 \
    libkdecore5 libkdesu5 libkdeui5 libkdewebkit5 libkdnssd4 libkemoticons4 libkf5akonadiagentbase5 \
    libkf5akonadicore5 libkf5akonadiprivate5 libkf5akonadisearchdebug5 libkf5akonadisearchpim5 \
    libkf5akonadiwidgets5 libkf5declarative-data libkf5kcmutils-data libkf5kdelibs4support-data \
    libkf5khtml-data libkf5kmahjongglib5 libkf5ksieve-data libkf5ksieve5 libkf5mailtransport-data \
    libkf5newstuff-data libkf5notifications-data libkf5notifyconfig-data libkf5wallet-data libkfile4 \
    libkhtml5 libkio5 libkjsapi4 libkjsembed4 libkmediaplayer4 libknewstuff2-4 libknewstuff3-4 \
    libknotifyconfig4 libkntlm4 libkparts4 libkprintutils4 libkpty4 libkrosscore4 libkrossui4 \
    libktexteditor4 libkunitconversion4 libkwineffects9 libkwinxrenderutils9 liblirc-client0 \
    liblircclient0 libmutter0i libnepomuk4 libnepomukquery4a libnepomukutils4 libokularcore7 \
    libopenmpt0 libperl5.24 libplasma3 libpq5 libproxy1v5 libpurple0 libqt5core5a libqt5dbus5 \
    libqt5designer5 libqt5gui5 libqt5multimedia5 libqt5multimedia5-plugins libqt5network5 \
    libqt5opengl5 libqt5positioning5 libqt5printsupport5 libqt5qml5 libqt5quick5 libqt5quickwidgets5 \
    libqt5script5 libqt5sql5 libqt5sql5-psql libqt5sql5-sqlite libqt5svg5 libqt5webkit5 \
    libqt5widgets5 libqt5xml5 libqt5xmlpatterns5 libreadline7 libsolid4 libssl1.1 libswresample2 \
    libthreadweaver4 libva-drm1 libva-glx1 libva-wayland1 libva-x11-1 libva1 libvlccore8 libx265-95 \
    libxapian30 libxcb-res0 lpr marble-data maxima mutter-common openjdk-8-jdk \
    openjdk-8-jdk-headless openjdk-8-jre openjdk-8-jre-headless orca parley-data perl perl-base \
    perl-doc perl-modules-5.24 pidgin-data plasma-desktop-data plasma-discover-common \
    qml-module-org-kde-analitza qml-module-org-kde-kholidays qml-module-qtgraphicaleffects \
    qml-module-qtqml-models2 qml-module-qtquick-controls qml-module-qtquick-controls-styles-breeze \
    qml-module-qtquick-dialogs qml-module-qtquick-layouts qml-module-qtquick-privatewidgets \
    qml-module-qtquick-window2 qml-module-qtquick2 qml-module-qtwebkit qttools5-dev-tools \

