;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Adam Swinford"
      user-mail-address "aswinford@jadam.space")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'doom-gruvbox)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
(with-eval-after-load 'org
  (setq org-agenda-files
        (directory-files-recursively "~/org/" "\\.org$")))

(with-eval-after-load 'org-agenda
  (add-hook 'org-agenda-mode-hook
            (lambda ()
              (setq org-agenda-files (directory-files-recursively "~/org/" "\\.org$")))))

;; project management templates for org-roam
;; (setq org-roam-capture-templates
;;       '(("p" "Personal Project" plain
;;          "%?"
;;          :if-new (file+head "projects/personal/%<%Y%m%d%H%M%S>-${slug}.org"
;;                             "#+title: ${title}\n#+filetags: :project:personal:\n\n* Scope\n* Tasks\n** TODO %?")
;;          :unnarrowed t)
;;         ("s" "Software Project" plain
;;          "%?"
;;          :if-new (file+head "projects/software/%<%Y%m%d%H%M%S>-${slug}.org"
;;                             "#+title: ${title}\n#+filetags: :project:software:\n\n* Architecture\n* Roadmap\n* Tasks\n** TODO %?")
;;          :unnarrowed t)
;;         ("a" "Sysadmin Project" plain
;;          "%?"
;;          :if-new (file+head "projects/sysadmin/%<%Y%m%d%H%M%S>-${slug}.org"
;;                             "#+title: ${title}\n#+filetags: :project:sysadmin:\n\n* Infrastructure Context\n* Runbook / Steps\n* Tasks\n** TODO %?")

;; Dynamically feed project nodes into Org Agenda
;; (defun my/org-roam-filter-by-tag (tag)
;;   "Return a list of file paths for nodes containing TAG."
;;   (let ((rows (org-roam-db-query
;;                [:select [nodes:file]
;;                 :from tags
;;                 :join nodes :on (= tags:node-id nodes:id)
;;                 :where (= tags:tag $s1)] tag)))
;;     (cl-loop for row in rows collect (car row))))

;; (defun my/org-roam-update-agenda-files ()
;;   "Dynamically add active Org-roam projects to org-agenda-files."
;;   (interactive)
;;   (setq org-agenda-files (my/org-roam-filter-by-tag "project")))

;; ;; Custom agenda view for roles
;; (setq org-agenda-custom-commands
;;       '(("d" "Daily Dashboard"
;;          ((agenda "" ((org-agenda-span 1)))
;;           (tags-todo "software"
;;                      ((org-agenda-overriding-header "💻 Software Development Tasks")))
;;           (tags-todo "sysadmin"
;;                      ((org-agenda-overriding-header "🛡️ Sysadmin & Infrastructure Tasks")))
;;           (tags-todo "personal"
;;                      ((org-agenda-overriding-header "🏠 Personal Tasks")))))))

;; ;; Run the update function automatically before opening the agenda viewer
;; (advice-add 'org-agenda :before #'my/org-roam-update-agenda-files)


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `with-eval-after-load' block, otherwise Doom's defaults may override your
;; settings. E.g.
;;
;;   (with-eval-after-load 'PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look them up).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
