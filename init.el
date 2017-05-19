; packages

; to install?
; helm
; magit
; projectile
; flycheck
; company

(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ; ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(setq package-enable-at-startup nil)

(package-initialize)

(require 'evil)
(evil-mode 1)

(custom-set-variables
  '(package-selected-packages (quote (evil))))
(custom-set-faces
  )

; interface
(tool-bar-mode -1)
