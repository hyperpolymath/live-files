; SPDX-License-Identifier: MPL-2.0
;; guix.scm — GNU Guix package definition for live-files
;; Usage: guix shell -f guix.scm

(use-modules (guix packages)
             (guix build-system gnu)
             (guix licenses))

(package
  (name "live-files")
  (version "0.1.0")
  (source #f)
  (build-system gnu-build-system)
  (synopsis "live-files")
  (description "live-files — part of the hyperpolymath ecosystem.")
  (home-page "https://github.com/hyperpolymath/live-files")
  (license mpl2.0))
