import pandas as pd
import xlrd


nome = pd.read_excel('letraM.xlsx', index_col=0)
arquivo = ""

for j in range(240):
	for i in range(20):
		if nome.loc[j,i] == 1:
			arquivo += "leaw ${0}, %A \n".format(16384+i+j*20)
			arquivo += "movw $-1,(%A) \n"

with open ('nome.txt', 'w') as file:
	file.write(arquivo)