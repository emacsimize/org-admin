(defun org-admin/new-eshell-cd-to (dest)
  "Opens a new Eshell and cds to the destination.
It hasnt necessarily to be a remote host."
  (interactive)
  (eshell-new)
  (eshell/cd dest)
  ;; I call send input here for cosmetic reasons since the
  ;; 'cd' happens in the background and the new eshell buffer
  ;; isn't updated yet.
  (eshell-send-input))

(defun org-admin/new-eshell-sudo-cd-to (dest)
  "Opens a new Eshell and cds to the destination.
In this case it will consruct a tramp hop string befor 'cd'."
  (interactive)
  (eshell-new)
  (eshell/cd (prepare-tramp-sudo-string dest))
  ;; I call send input here for cosmetic reasons since the
  ;; 'cd' happens in the background and the new eshell buffer
  ;; isn't updated yet.
  (eshell-send-input))
