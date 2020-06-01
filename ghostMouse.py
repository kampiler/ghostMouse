from time import sleep
import pyautogui

pyautogui.FAILSAFE=False

dX=3
iX=1
iY=1
delay=55

maxX,maxY = pyautogui.size()


while True:
      curX,curY = pyautogui.position()

      print(f'current pos = {curX,curY}, screen={maxX,maxY}, dir={iX,iY}')#curX,curY, "(",maxX,maxY,")","//",iX,iY)

      curX=curX+dX*iX
      if(curX>maxX or curX<0): iX=-1*iX

      curY=curY+dX*iY
      if(curY>maxY or curY<0): iY=-1*iY

      pyautogui.moveTo(curX,curY)

      sleep(delay)

