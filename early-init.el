;;; -*- lexical-binding: t -*-

;; Defer garbage collection further back in the startup process
(setq gc-cons-threshold most-positive-fixnum)

(setq package-enable-at-startup nil)

;; Don't show startup message
(setq inhibit-startup-message t)

;; Remove uneeded UI elements
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Load the theme now to avoid flashing
(load-theme 'modus-vivendi t)
