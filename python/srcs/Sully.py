import os
x=5
if os.getenv('SULLY'):
  x-=1
if x<0:
  exit(0)
F='Sully_'+str(x)+'.py'
W=lambda:[(_.write(PR%(x,PR)), _.close()) for _ in [open(F, 'w')]]
PR="import os\nx=%d\nif os.getenv('SULLY'):\n  x-=1\nif x<0:\n  exit(0)\nF='Sully_'+str(x)+'.py'\nW=lambda:[(_.write(PR%%(x,PR)), _.close()) for _ in [open(F, 'w')]]\nPR=%r\nW()\nos.system('SULLY=1 python '+F)\n"
W()
os.system('SULLY=1 python '+F)
