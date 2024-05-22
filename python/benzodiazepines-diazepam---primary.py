# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2024.

import sys, csv, re

codes = [{"code":"62417020","system":"multilex"},{"code":"49456020","system":"multilex"},{"code":"49522020","system":"multilex"},{"code":"49516020","system":"multilex"},{"code":"61793020","system":"multilex"},{"code":"58982020","system":"multilex"},{"code":"64048020","system":"multilex"},{"code":"62837020","system":"multilex"},{"code":"49506020","system":"multilex"},{"code":"58981020","system":"multilex"},{"code":"68615020","system":"multilex"},{"code":"49515020","system":"multilex"},{"code":"63587020","system":"multilex"},{"code":"63140020","system":"multilex"},{"code":"56921020","system":"multilex"},{"code":"64045020","system":"multilex"},{"code":"53334020","system":"multilex"},{"code":"61794020","system":"multilex"},{"code":"65787020","system":"multilex"},{"code":"63141020","system":"multilex"},{"code":"62418020","system":"multilex"},{"code":"53335020","system":"multilex"},{"code":"63139020","system":"multilex"},{"code":"79693020","system":"multilex"},{"code":"63597020","system":"multilex"},{"code":"49457020","system":"multilex"},{"code":"58980020","system":"multilex"},{"code":"61795020","system":"multilex"},{"code":"75741020","system":"multilex"},{"code":"49505020","system":"multilex"},{"code":"65974020","system":"multilex"},{"code":"49520020","system":"multilex"},{"code":"53333020","system":"multilex"},{"code":"49521020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benzodiazepines-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benzodiazepines-diazepam---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benzodiazepines-diazepam---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benzodiazepines-diazepam---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
