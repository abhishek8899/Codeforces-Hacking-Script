import requests
import sys
import subprocess
from bs4 import *

f = open('out.txt', 'r')
sys.stdin = f

for k in range(1,102):
    y=input()
    # print(s)
    response = requests.get(y)
    html = response.content
    soup = BeautifulSoup(html, "html5lib")
    table = soup.find(id="program-source-text")
    g = open('trash/'+str(k)+'.cpp', 'w')
    sys.stdout = g
    print(table.text)
    g.close()
    
    # subprocess.call(["./a.out","<","input"])
    # for p in table:
    #     try:
    #         list_books = p.select(".acceptedsubmissionid")
    #         print("https://codeforces.com/contest/1093/submission/"+str(p['acceptedsubmissionid']))
    #     except:
    #         pass
f.close()
