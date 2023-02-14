# This segment is to get rid of outliers by creating zscores and getting making a list
# of 0 and 1 that show 0 is not an outlier and 1 it is with index according to the rows of data from the masterdata set
#

onlyIntsDataset = newLinesData.copy()



stringColumns = ['Caption','Hashtags', 'Mentions', 'VideoLength', 'VideoViews', 'Date', 'IsVideo']

onlyIntsDataset = onlyIntsDataset.drop(stringColumns, axis = 1)



z = np.abs(stats.zscore(onlyIntsDataset))
outlierList = [];

data_clean = onlyIntsDataset[(z<3).all(axis=1)]

numberList = [];

for index in data_clean['ID']:
    numberList.append(index)


for index in finalDataset['ID']:
    if index in numberList:
        outlierList.append(0)
    else:
        outlierList.append(1)

        
onlyIntsDataset.to_csv("forSQLDataset.csv")
