# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2024.

import sys, csv, re

codes = [{"code":"53750020","system":"multilex"},{"code":"56874020","system":"multilex"},{"code":"60738020","system":"multilex"},{"code":"55043020","system":"multilex"},{"code":"53475020","system":"multilex"},{"code":"53476020","system":"multilex"},{"code":"55214020","system":"multilex"},{"code":"71940020","system":"multilex"},{"code":"53751020","system":"multilex"},{"code":"60743020","system":"multilex"},{"code":"71939020","system":"multilex"},{"code":"50935020","system":"multilex"},{"code":"71941020","system":"multilex"},{"code":"55213020","system":"multilex"},{"code":"60742020","system":"multilex"},{"code":"68857020","system":"multilex"},{"code":"60736020","system":"multilex"},{"code":"53474020","system":"multilex"},{"code":"60737020","system":"multilex"},{"code":"56873020","system":"multilex"},{"code":"50936020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benzodiazepines-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benzodiazepines-chlordiazepoxide---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benzodiazepines-chlordiazepoxide---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benzodiazepines-chlordiazepoxide---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
