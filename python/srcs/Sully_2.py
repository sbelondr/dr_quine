import os
x=1
F='Sully_'+str(x)+'.py'
if os.getenv('SULLY'):
  x-=1
PR="import os\nx=%d\nF='Sully_'+str(x)+'.py'\nif os.getenv('SULLY'):\n  x-=1\nPR=%r\nW=lambda:[(_.write(PR%%(x,PR)), _.close()) for _ in [open(F, 'w')]]\nW()\nif x>0:\n  os.system('SULLY=1 python '+F)\n"
W=lambda:[(_.write(PR%(x,PR)), _.close()) for _ in [open(F, 'w')]]
W()
if x>0:
  os.system('SULLY=1 python '+F)
