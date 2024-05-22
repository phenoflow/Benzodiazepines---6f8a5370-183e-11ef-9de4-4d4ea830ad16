# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2024.

import sys, csv, re

codes = [{"code":"57821020","system":"multilex"},{"code":"57820020","system":"multilex"},{"code":"65255020","system":"multilex"},{"code":"49151020","system":"multilex"},{"code":"49150020","system":"multilex"},{"code":"49133020","system":"multilex"},{"code":"55034020","system":"multilex"},{"code":"49134020","system":"multilex"},{"code":"59841020","system":"multilex"},{"code":"59842020","system":"multilex"},{"code":"55035020","system":"multilex"},{"code":"59840020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benzodiazepines-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benzodiazepines-oxazepam---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benzodiazepines-oxazepam---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benzodiazepines-oxazepam---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
