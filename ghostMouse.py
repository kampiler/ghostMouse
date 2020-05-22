from time import sleep
import pyautogui

dX=3
iX=1
iY=1
sec=55

maxX,maxY = pyautogui.size()


while 1==1:
      curX,curY = pyautogui.position()

      print(curX,curY, "(",maxX,maxY,")","//",iX,iY)

      curX=curX+dX*iX
      if(curX>maxX or curX<0): iX=-1*iX

      curY=curY+dX*iY
      if(curY>maxY or curY<0): iY=-1*iY

      pyautogui.moveTo(curX,curY)

      sleep(sec)

