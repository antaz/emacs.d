;;;  -*- lexical-binding: t -*-

(setq epg-pinentry-mode 'loopback)

(epa-file-enable)

(setq epa-file-select-keys nil) 

(provide 'init-epa)
