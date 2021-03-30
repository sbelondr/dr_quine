F='Grace_kid.py' #z
A="F='Grace_kid.py' #z\nA=%r\nLA=lambda:[(_.write(A%%A), _.close()) for _ in [open(F,'w')]]\nLA()\n"
LA=lambda:[(_.write(A%A), _.close()) for _ in [open(F,'w')]]
LA()
