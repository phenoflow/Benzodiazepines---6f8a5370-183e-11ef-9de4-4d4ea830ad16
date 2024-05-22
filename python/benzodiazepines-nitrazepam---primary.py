# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2024.

import sys, csv, re

codes = [{"code":"58928020","system":"multilex"},{"code":"54170020","system":"multilex"},{"code":"49130020","system":"multilex"},{"code":"65066020","system":"multilex"},{"code":"65067020","system":"multilex"},{"code":"49124020","system":"multilex"},{"code":"65068020","system":"multilex"},{"code":"49121020","system":"multilex"},{"code":"64053020","system":"multilex"},{"code":"60189020","system":"multilex"},{"code":"51544020","system":"multilex"},{"code":"53356020","system":"multilex"},{"code":"65063020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benzodiazepines-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benzodiazepines-nitrazepam---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benzodiazepines-nitrazepam---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benzodiazepines-nitrazepam---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
