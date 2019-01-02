# Codeforces-Hacking-Script
Kindly install beautiful soup before running the python script


## The script uses web scraping of solution codes and then testing them on your local machine on your testcases.

## Usage
*Run sub_ids.py to get all submissions of selected pages (you can edit the pages that you want to scrape). Do edit the contest number which you can get from the codeforces site. The links will be saved in 'out.txt'.
*Run retr_source.py to retrieve source codes from the link in 'out.txt'. By default they'll be saved in the 'trash' folder.
*Add the corresponding testcase to file named 'input'.
*The script will automatically assign the answer by first code run.
*Execute bash.sh to know the codes that give different answers on that testcases.

## Limitations
*You can only check solutions that are submitted in C++.
*You have to manually hack the solution, it just gives you the number(which can be used to find the corresponding link in 'out.txt' and then hack).

## Further aspects
*Making the hacking automatic.
