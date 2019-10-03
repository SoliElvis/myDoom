;;; init.el -*- lexical-binding: t; -*-

;; Copy this file to ~/.doom.d/init.el or ~/.config/doom/init.el ('doom
;; quickstart' will do this for you). The `doom!' block below controls what
;; modules are enabled and in what order they will be loaded. Remember to run
;; 'doom refresh' after modifying it.
;;
;; More information about these modules (and what flags they support) can be
;; found in modules/README.org.

(doom! :input
       ;;chinese
       ;;japanese

       :completion
       ;; company           ; the ultimate code completion backend
       helm              ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       ivy               ; a search engine for love and life


       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;objed             ; text object editing for the innocent
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates

       :emacs
       (dired            ; making dired pretty [functional]
         +ranger         ; bringing the goodness of ranger to dired
         +icons          ; colorful icons for dired-mode
         )
       electric          ; smarter, keyword-based electric-indent
       vc                ; version-control and Emacs, sitting in a tree

       :term
       eshell            ; a consistent, cross-platform shell (WIP)
       term              ; terminals in Emacs
       vterm             ; another terminals in Emacs

       :tools
       ;;ansible
       ;;debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ein               ; tame Jupyter notebooks with emacs
       eval              ; run code, run (also, repls)
       flycheck          ; tasing you for every semicolon you forget
       flyspell          ; tasing you for misspelling mispelling
       gist              ; interacting with github gists
       (lookup           ; helps you navigate your code and documentation
         +docsets)        ; ...or in Dash docsets locally
       ;;lsp
       ;;macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       make              ; run make tasks from Emacs
       pass              ; password manager for nerds
       pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       tmux              ; an API for interacting with tmux
       upload            ; map local to remote projects via ssh/ftp
       wakatime

       :lang
       ;;agda              ; types of types of types of types...
       ;;assembly          ; assembly for fun or debugging
       ;;cc                ; C/C++/Obj-C madness
       clojure           ; java with a lisp
       common-lisp       ; if you've seen one lisp, you've seen them all
       coq               ; proofs-as-programs
       crystal           ; ruby at the speed of c
       csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       erlang            ; an elegant language for a more civilized age
       elixir            ; erlang done right
       elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ess               ; emacs speaks statistics
       fsharp           ; ML stands for Microsoft's Language
       go                ; the hipster dialect
       hy                ; readability of scheme w/ speed of python
       idris             ;
       (java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       julia             ; a better, faster MATLAB
       ;;kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ledger            ; an accounting system in Emacs
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       nim               ; python + lisp at the speed of c
       nix               ; I hereby declare "nix geht mehr!"
       ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
         +dragndrop       ; file drag & drop support
         +ipython         ; ipython support for babel
         +gnuplot
         +pandoc          ; pandoc integration into org's exporter
         +present)
       perl              ; write code no one else can comprehend
       php               ; perl's insecure younger brother
       plantuml          ; diagrams for confusing people more
       purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       qt                ; the 'cutest' gui framework ever
       racket            ; a DSL for DSLs
       rest              ; Emacs as a REST client
       ruby              ; 1.step {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}

       rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       scala             ; java, but good
       sh                ; she sells {ba,z,fi}sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       ;;web               ; the tubes
       ;;vala              ; GObjective-C


       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       calendar
       ;;irc              ; how neckbeards socialize
       (rss +org)        ; emacs as an RSS reader
       twitter           ; twitter client https://twitter.com/vnought
       (write            ; emacs as a word processor (latex + org + markdown)
         +wordnut         ; wordnet (wn) search
         +langtool)       ; a proofreader (grammar/style check) for Emacs

       :collab
       ;;floobits          ; peer programming for a price
       impatient-mode    ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))
(advice-add #'doom--refresh-pkg-contents :override #'package-refresh-contents)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-begin-commands (quote (self-insert-command)))
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 2)
 '(company-show-numbers t)
 '(company-tooltip-align-annotations t)
 '(custom-safe-themes
   (quote
    ("f8fb7488faa7a70aee20b63560c36b3773bd0e4c56230a97297ad54ff8263930" "f8067b7d0dbffb29a79e0843797efabdf5e1cf326639874d8b407e9b034136a4" "97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "9129c2759b8ba8e8396fe92535449de3e7ba61fd34569a488dd64e80f5041c9f" "071f5702a5445970105be9456a48423a87b8b9cfa4b1f76d15699b29123fb7d8" "fefab1b6d3366a959c78b4ed154018d48f4ec439ce652f4748ef22945ca7c2d5" "0fe9f7a04e7a00ad99ecacc875c8ccb4153204e29d3e57e9669691e6ed8340ce" "001c2ff8afde9c3e707a2eb3e810a0a36fb2b466e96377ac95968e7f8930a7c5" "a2286409934b11f2f3b7d89b1eaebb965fd63bc1e0be1c159c02e396afb893c8" "f589e634c9ff738341823a5a58fc200341b440611aaa8e0189df85b44533692b" "70ed3a0f434c63206a23012d9cdfbe6c6d4bb4685ad64154f37f3c15c10f3b90" "018c8326bced5102b4c1b84e1739ba3c7602019c645875459f5e6dfc6b9d9437" "f951343d4bbe5a90dba0f058de8317ca58a6822faa65d8463b0e751a07ec887c" "f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" "955426466aa729d7d32483d3b2408cf474a1332550ad364848d1dfe9eecc8a16" "256bd513a9875cd855077162cdfee8d75b0ad7e18fe8b8cbc10412561fbef892" "174502267725776b47bdd2d220f035cae2c00c818765b138fea376b2cdc15eb6" "a28d89cf398c60dade1b0a7e3dce9d4691c236c05a050b7e6ba808bfce2622e1" "fd944f09d4d0c4d4a3c82bd7b3360f17e3ada8adf29f28199d09308ba01cc092" "4e10cdf7d030fb41061cf57c74f6ddfc19db8d4af6c8e0723dc77f9922543a3d" default)))
 '(global-company-mode t)
 '(org-agenda-files
   (quote
    ("~/.personal/org/brain/root.org" "/home/sole/.personal/org/appointments.org" "/home/sole/.personal/org/assholes.org" "/home/sole/.personal/org/contacts.org" "/home/sole/.personal/org/fiction-reading.org" "/home/sole/.personal/org/geek.org" "/home/sole/.personal/org/index.org" "/home/sole/.personal/org/journal.org" "/home/sole/.personal/org/koios.org" "/home/sole/.personal/org/master-book-list.org" "/home/sole/.personal/org/non-fiction.org" "/home/sole/.personal/org/projects.org" "/home/sole/.personal/org/stufftobuy.org" "/home/sole/.personal/org/todo.org")))
 '(org-contacts-files (quote ("~/.personal/org/contacts.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-document-title ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif" :height 2.0 :underline nil))))
 '(org-level-1 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif" :height 1.7))))
 '(org-level-2 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif"))))
 '(org-level-6 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif"))))
 '(org-level-7 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif"))))
 '(org-level-8 ((t (:inherit default :weight normal :foreground "#bbc2cf" :family "Sans Serif")))))
