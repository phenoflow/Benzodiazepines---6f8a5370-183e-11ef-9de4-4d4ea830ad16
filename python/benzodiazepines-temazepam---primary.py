# Matthew J Carr, Darren M Ashscroft, Evangelos Kontopantelis, David While, Yvonne Awenant, Jayne Cooper, Carolyn Chew-Graham, Nav Kapur, Roger T Webb, 2024.

import sys, csv, re

codes = [{"code":"59162020","system":"multilex"},{"code":"54008020","system":"multilex"},{"code":"50860020","system":"multilex"},{"code":"59161020","system":"multilex"},{"code":"14501021","system":"multilex"},{"code":"61199020","system":"multilex"},{"code":"66824020","system":"multilex"},{"code":"66878020","system":"multilex"},{"code":"56303020","system":"multilex"},{"code":"50702020","system":"multilex"},{"code":"50695020","system":"multilex"},{"code":"68343020","system":"multilex"},{"code":"57124020","system":"multilex"},{"code":"54007020","system":"multilex"},{"code":"50859020","system":"multilex"},{"code":"57123020","system":"multilex"},{"code":"50688020","system":"multilex"},{"code":"66877020","system":"multilex"},{"code":"50696020","system":"multilex"},{"code":"70449020","system":"multilex"},{"code":"61571020","system":"multilex"},{"code":"68342020","system":"multilex"},{"code":"50687020","system":"multilex"},{"code":"66879020","system":"multilex"},{"code":"72955020","system":"multilex"},{"code":"53651020","system":"multilex"},{"code":"53646020","system":"multilex"},{"code":"61200020","system":"multilex"},{"code":"55860020","system":"multilex"},{"code":"50701020","system":"multilex"},{"code":"46781020","system":"multilex"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('benzodiazepines-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["benzodiazepines-temazepam---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["benzodiazepines-temazepam---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["benzodiazepines-temazepam---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
