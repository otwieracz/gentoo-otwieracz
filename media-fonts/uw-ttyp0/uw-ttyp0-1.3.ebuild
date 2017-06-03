# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit font font-ebdftopcf

DESCRIPTION="Family of bitmap programmer's fonts in bdf format"
HOMEPAGE="http://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/"
SRC_URI="https://people.mpi-inf.mpg.de/~uwe/misc/uw-ttyp0/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86"

S="${WORKDIR}/${P}/bdf"
FONT_S="${S}/"
FONT_SUFFIX="pcf.gz"
RESTRICT="strip binchecks"

src_compile() {
	font-ebdftopcf_src_compile
}

