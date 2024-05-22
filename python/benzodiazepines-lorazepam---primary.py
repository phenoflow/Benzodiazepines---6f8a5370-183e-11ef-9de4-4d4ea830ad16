# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2024.

import sys, csv, re

codes = [{"code":"50646020","system":"multilex"},{"code":"58993020","system":"multilex"},{"code":"58994020","system":"multilex"},{"code":"71875020","system":"multilex"},{"code":"66962020","system":"multilex"},{"code":"50645020","system":"multilex"},{"code":"51443020","system":"multilex"},{"code":"74808020","system":"multilex"},{"code":"94513020","system":"multilex"},{"code":"20432020","system":"multilex"},{"code":"94516020","system":"multilex"},{"code":"51444020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benzodiazepines-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benzodiazepines-lorazepam---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benzodiazepines-lorazepam---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benzodiazepines-lorazepam---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
