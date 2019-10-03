;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

(package! fountain-mode)
;; (package! write-or-die-mode :recipe
  ;; (:fetcher github :repo "duncanmortimer/write-or-die-mode.el"))
(package! evil-collection)
(package! julia-repl)

(package! irony)
(package! irony-eldoc)
(package! ggtags)
(package! helm-gtags)

(package! lsp-haskell)
(package! lsp-ui)
(package! lsp-mode)

(package! poet-theme)


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
(package! sly)

(package! yankpad)
(package! drag-stuff)
(package! mpdel)
(package! org-download)

(package! org-protocol-capture-html :recipe
  (:fetcher github :repo "alphapapa/org-protocol-capture-html"))
(package! org-books :recipe (:fetcher github :repo "lepisma/org-books"))
(package! org-board :recipe (:fetcher github :repo "scallywag/org-board"))
(package! org-wiki :recipe (:fetcher github :repo "caiorss/org-wiki"))
(package! org-ref :recipe (:fetcher github :repo "jkitchin/org-ref"))
(package! zotxt-emacs :recipe (:fetcher github :repo "egh/zotxt-emacs"))
(package! ob-rust :recipe (:fetcher gitlab :repo "ajyoon/ob-rust"))
(package! org-writers-room :recipe (:fetcher github :repo "titaniumbones/org-writers-room"))

(package! engine-mode :recipe (:fetcher github :repo "hrs/engine-mode"))
(package! yasnippet)
(package! yasnippet-snippets)

(package! rg)
(package! helm-rg)
(package! projectile-ripgrep)
(package! company)
(package! company-box)

(package! elpy)
(package! helm-org-rifle)
