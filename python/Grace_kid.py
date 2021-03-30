F='Grace_kid.py'
A="F='Grace_kid.py'\nA=%r\nLA=lambda:[(_.write(A%%A), _.close()) for _ in [open(F,'w')]]\nLA()\n"
LA=lambda:[(_.write(A%A), _.close()) for _ in [open(F,'w')]]
LA()
