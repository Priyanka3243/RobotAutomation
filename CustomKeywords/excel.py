import openpyxl as xl
def access():
    wb = xl.load_workbook('DataFile.xlsx')
    sheet = wb['Sheet1']
    cell = sheet['a2']
    cell = sheet.cell(2,1)
    print(cell)

a = access()
print(a)