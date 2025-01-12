# Copyright 2025 Michel Catudal <michelcatudal@gmail.com>
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils

DEPEND="
        dev-qt/qtcore
        dev-qt/qtgui
        dev-qt/qtwidgets
"

RESTRICT="mirror"
DESCRIPTION="PosteRazor cuts raster images into multipage PDF documents."
HOMEPAGE="http://posterazor.sourceforge.net/"
SRC_URI="https://github.com/SuzieLinux/posterazor/archive/refs/tags/v1.9.6.tar.gz"

LICENSE="GPL-2"
SLOT="0"
S=${WORKDIR}/${P}

KEYWORDS="amd64"
IUSE=""

DEPEND="${RDEPEND}"
src_compile() {
	cd src
	qmake5 -o Makefile posterazor.pro
	make
}
src_install() {
	mv ${S}/src/PosteRazor ${S}/src/posterazor
	exeinto /usr/bin
	doexe ${S}/src/posterazor
	dodoc ${S}/CHANGES ${S}/LICENSE ${S}/README
}
