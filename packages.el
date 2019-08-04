;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! builtin-package :disable t)
(package! evil-collection)
(package! julia-repl)

(package! gnus-desktop-notify)
(package! evil-org)
(package! toc-org)
(package! org-noter)
(package! org-bullets)
(package! org-super-agenda)
(package! org-brain)
(package! org-cliplink)
(package! helm-bibtex)
(package! org-babel-eval-in-repl)

(package! org-books :recipe (:fetcher github :repo "lepisma/org-books"))
(package! org-board :recipe (:fetcher github :repo "scallywag/org-board"))
(package! org-wiki :recipe (:fetcher github :repo "caiorss/org-wiki"))
(package! org-ref :recipe (:fetcher github :repo "jkitchin/org-ref"))

(package! engine-mode :recipe (:fetcher github :repo "hrs/engine-mode"))
(package! yasnippet)
(package! yasnippet-snippets)

(package! rg)
(package! helm-rg)
(package! projectile-ripgrep)
(package! company)
(package! company-box)

(package! elpy)
(package! zenburn-theme)
(package! helm-org-rifle)
