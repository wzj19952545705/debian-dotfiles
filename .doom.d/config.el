(setq user-full-name "wzj"
      user-mail-address "wzj19952545705@126.com")

(setq doom-font (font-spec :family "FiraCode Nerd Font" :size 20)
      doom-variable-pitch-font (font-spec :family "WenQuanYi Zen Hei" :size 18)
      doom-serif-font (font-spec :family "DejavuSans Mono" :size 19)
      doom-unicode-font (font-spec :family "FontAwesome" :size 19))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative
      global-display-line-numbers-mode t)

(setq org-agenda-files '("~/nc/Org/agenda.org"))

(use-package! org-auto-tangle
  :defer t
  :hook (org-mode . org-auto-tangle-mode)
  :config (setq org-auto-tangle-default t))

(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
                              "xelatex -interaction nonstopmode %f"))

(use-package! org-modern)
(global-org-modern-mode 1)

(modify-all-frames-parameters
 '((right-divider-width . 40)
   (internal-border-width . 40)))
(dolist (face '(window-divider
                window-divider-first-pixel
               window-divider-last-pixel))
 (face-spec-reset-face face)
 (set-face-foreground face (face-attribute 'default :background)))
(set-face-background 'fringe (face-attribute 'default :background))

(setq
; Edit settings
 org-auto-align-tags nil
 org-tags-column 0
 org-fold-catch-invisible-edits 'show-and-error
 org-special-ctrl-a/e t
 org-insert-heading-respect-content t
; Org styling, hide markup etc.
 org-hide-emphasis-markers t
 org-pretty-entities t
org-ellipsis " ▼ "
; Agenda styling
org-agenda-tags-column 0
org-agenda-block-separator ?─
org-agenda-time-grid
'((daily today require-timed)
  (800 1000 1200 1400 1600 1800 2000)
  " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
org-agenda-current-time-string
"⭠ now ─────────────────────────────────────────────────")

(setq shell-file-name "/usr/bin/fish"
      vterm-max-scrollback 5000)
