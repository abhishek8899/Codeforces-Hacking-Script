import requests
import sys
from bs4 import *
response = ""
names = ["Name"]
adds = ["URL"]
writers = ["Author"]
cost = ["Price"]
total = ['Number of Ratings']
avgrtngs = ['Average Rating']

f = open('out.txt', 'w')
sys.stdout = f

SUBMISSION_URL = 'http://codeforces.com/contest/{ContestId}/submission/{SubmissionId}'

x="https://codeforces.com/contest/1095/standings/page/"

for k in range(10,12):
    y=str(str(x)+str(k))
    response = requests.get(y)
    html = response.content
    soup = BeautifulSoup(html, "html5lib")
    table = soup.find_all(problemid="275106")
    for p in table:
        try:
            list_books = p.select(".acceptedsubmissionid")
            print("https://codeforces.com/contest/1095/submission/"+str(p['acceptedsubmissionid']))
        except:
            pass
f.close()
