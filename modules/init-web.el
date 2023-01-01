;;; -*- lexical-binding: t; -*-

(use-package web-mode
  :mode 
  (("\\.phtml\\'" . web-mode)
   ("\\.tpl\\.php\\'" . web-mode)      
   ("\\.jsp\\'" . web-mode)            
   ("\\.as[cp]x\\'" . web-mode)        
   ("\\.erb\\'" . web-mode)            
   ("\\.mustache\\'" . web-mode)       
   ("\\.djhtml\\'" . web-mode)         
   ("\\.jst.ejs\\'" . web-mode)        
   :init
   (setq web-mode-enable-block-face t)
   (setq web-mode-enable-comment-keywords t)
   (setq web-mode-enable-current-element-highlight t)
   (setq web-mode-enable-current-column-highlight t)   
   (setq web-mode-script-padding 2)
   (setq web-mode-style-padding 2)
   (setq web-mode-comment-style 2)
   (setq web-mode-code-indent-offset 2)
   (setq web-mode-markup-indent-offset 2))("\\.html?\\'" . web-mode))


(provide 'init-web)
