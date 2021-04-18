(defrule hello
	=>
	(printout t "Hello World." crlf)
	(printout t "DLL Example." crlf)
	(printout t "Hit return to end." crlf)
	(readline))
