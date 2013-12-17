;; (setq org-agenda-custom-commands
;;       '(
;; 	("w0" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 (
;; 	  (org-deadline-warning-days 0)
;; 	  (org-scheduled-delay-days 0)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "2013-12-17")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w1" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+1d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w2" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+2d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w3" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+3d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w4" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+4d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w5" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+5d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w6" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+6d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 1))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w7" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;; 	  (org-agenda-skip-scheduled-if-done t)
;; 	  (org-agenda-skip-timestamp-if-done t)
;; 	  (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+7d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 7))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("wt" "Development Todo" 
;; 	 alltodo "-officehours-skip"
;; 	 ((org-agenda-todo-ignore-scheduled 'all)
;; 	  (org-agenda-todo-ignore-deadlines 'all)
;; 	  (org-agenda-prefix-format '((todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))
;; 	("w8" "Development Agenda" 
;; 	 agenda "-officehours-skip"
;; 	 ((org-agenda-skip-deadline-if-done t)
;;           (org-agenda-skip-scheduled-if-done t)
;;           (org-agenda-skip-timestamp-if-done t)
;;           (org-agenda-use-time-grid nil)
;; 	  (org-agenda-start-day "+14d")
;; 	  (org-agenda-span (org-agenda-ndays-to-span 7))
;; 	  (org-agenda-prefix-format '(
;; 				      (todo . "%e,%(tw/max-dur),")
;; 				      (agenda . "%e,%(tw/max-dur),")))))))


;; I think that, instea, I should just make a custom agenda
;; and read the raw buffer text.

(defun tw/duration-of-timestamp-at-point (type)
  "Compute the duration of the timestamp at point. TYPE can either be :SCHEDULED or :DEADLINE"
  (interactive)
  (let* ((type-str (if (eq type :SCHEDULED) "SCHEDULED" "DEADLINE"))
	 (scheduled (cdr (assoc type-str (org-entry-properties (point)))))
	 (regexp-str "\\([0-9\\-]+\\) +[A-z]+ +\\([0-9]+:[0-9]+\\)-*\\([0-9]+:[0-9]+\\)"))
    (if (and (not (eq scheduled nil))
	     (string-match regexp-str scheduled))
	(let* ((match (string-match regexp-str scheduled))
	       (date (match-string 1 scheduled))
	       (t1  (match-string 2 scheduled))
	       (t2  (match-string 3 scheduled)))
	  (/ (- (org-time-string-to-seconds (concat date " " t2))
		(org-time-string-to-seconds (concat date " " t1))) 3600))
      nil)))

(defun tw/max-dur ()
  "Take the maximum of SCHEDULED and DEADLINE durations."
  (let ((sched (tw/duration-of-timestamp-at-point :SCHEDULED))
	(dead  (tw/duration-of-timestamp-at-point :DEADLINE)))
    (cond ((eq nil sched) dead)
	  ((eq nil dead) sched)
	  (t (max sched dead)))))

(defun tw/search ()
  "Search forward for the effort and time-duration data that I
export in the custom agenda views."
  (let ((continue (re-search-forward 
		   "\\(\\[\\([\\.0-9]+\\)\\],\\|^,\\)\\([\\.0-9]+\\|nil\\)"
		   nil t)))
    (list (match-string 2) (match-string 3) continue)))

(defun tw/sum-efforts (&optional sum blank)
  "This sum across all of the agenda items, summing up the
maximum of estimated effort and estimated times, and counting how
many blank entries there are."
  (interactive)
    (let*
	((result  (tw/search))
	 (effort (ignore-errors (string-to-int (first result))))
	 (effort (if (eq effort nil) 0 effort))
	 (time (ignore-errors (string-to-int (second result))))
	 (metric (max effort time))
	 (bl (if (eq metric 0) 1 0)))
      (cond ((eq (nth 2 result) nil) (list sum blank))
            ((eq nil sum) (tw/sum-efforts metric bl))
	    (t (tw/sum-efforts (+ sum metric) (+ bl blank))))))

(defun tw/agenda-summary ()
  "Run the agenda-summary across the custom agenda-views. This creates
a modeline number that gives the fraction of hours over the next 3-week horizon that are
'free'. Note that you need to define the custom agendas."
  (interactive)
  (save-excursion
    (let (day0 day1 day2 day3 day4 day5 day6 week7 week14 blanks unsched)
      (org-agenda nil "w0")
      (setq day0 (tw/sum-efforts))
      (org-agenda nil "w1")
      (setq day1 (tw/sum-efforts))
      (org-agenda nil "w2")
      (setq day2 (tw/sum-efforts))
      (org-agenda nil "w3")
      (setq day3 (tw/sum-efforts))
      (org-agenda nil "w4")
      (setq day4 (tw/sum-efforts))
      (org-agenda nil "w5")
      (setq day5 (tw/sum-efforts))
      (org-agenda nil "w6")
      (setq day6 (tw/sum-efforts))
      (org-agenda nil "w7")
      (setq week7 (tw/sum-efforts))
      (org-agenda nil "w8")
      (setq week14 (tw/sum-efforts))
      (org-agenda nil "wt")
      (setq unsched (tw/sum-efforts))
      (org-agenda-quit)
      (setq blanks (+ (second day0) (second day1) (second day2) (second day3)
		      (second day4) (second day5) (second day6) (second day6)
		      (second week7) (second week14) (second unsched)))
      (format "%2.2f(%d)/%2.2f(%d)/%2.2f(%d)/%2.2f(%d)/%2.2f(%d)/%2.2f(%d)/%2.2f(%d)"
		       (/ (first day0) 24.0) (second day0)
		       (/ (first day1) 24.0) (second day1)
		       (/ (first day2) 24.0) (second day2)
		       (/ 
			(+ (first day3) (first day4) (first day5) (first day6))
			(* 24.0 4))    (+ (second day3) (second day4) (second day5) (second day6))
		       (/ (first week7) (* 24.0 7)) (second week7)
		       (/ (first week14) (* 24.0 7)) (second week14)
		       (first unsched) (second unsched)
		       ))))
