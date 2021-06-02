(define atom?
	(lambda (x)
		(and (not (pair? x)) (not (null? x)))))

(define lat?
	(lambda (x)
		(cond
			((null? x) #t)
			((atom? (car x)) (lat? (cdr l)))
			(else #f))))

(define member?
	(lambda (a lat)
		((null? lat) #f)
		(else (or
			(eq? (car lat) a)
			(member? a (cdr lat))))))
