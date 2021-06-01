(define atom?
	(lambda (x)
		(and (not (pair? x)) (not (null? x)))))

(define lat?
  	(lambda (x)
	  	(cond
		  	((null? x) #t)
			((atom? (car x)) (lat? (cdr l)))
			(else #f))))

