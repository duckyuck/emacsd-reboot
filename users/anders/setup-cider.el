;; work around logging issues, figwheel-main vs cider ... fight!
(defun cider-figwheel-workaround--boot-up-cljs ()
  (format "(boot-up-cljs %s)" cider-figwheel-main-default-options))

(cider-register-cljs-repl-type 'boot-up-cljs #'cider-figwheel-workaround--boot-up-cljs)


;; For å reloade .dir-locals (hack-dir-local-variables-non-file-buffer)
