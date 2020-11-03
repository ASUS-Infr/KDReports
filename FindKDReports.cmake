#
# This module finds if KDReports is installed.
#
# KDReports_FOUND       - Set to TRUE if KDReports was found.
# KDReports_LIBRARIES   - Path to KDReports libraries.
# KDReports_INCLUDE_DIR - Path to the KDReports include directory.
#
# SPDX-FileCopyrightText: 2007-2020 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
#
# SPDX-License-Identifier: BSD-3-Clause
#

include(FindPackageHandleStandardArgs)

find_library(KDReports_LIBRARIES
	NAMES KDReports kdreports
	PATH_SUFFIXES bin)
find_path(KDReports_INCLUDE_DIR
	NAMES KDReports KDReportsGlobal)

mark_as_advanced(KDReports_LIBRARIES KDReports_INCLUDE_DIR)

find_package_handle_standard_args(KDReports DEFAULT_MSG KDReports_LIBRARIES KDReports_INCLUDE_DIR)
