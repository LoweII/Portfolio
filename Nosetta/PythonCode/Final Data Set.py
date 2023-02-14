# This segment will also take the previous to lists of data
# tagCountPerPost and mentionCountPerPoust and and outlierList and will add them to the main data set



# This will create data sets that are no string data and the whole cleaned dataset    
finalDataset = newLinesData.copy()
finalDataset.insert(6, 'Tags Per Post' ,tagCountPerPost)
finalDataset.insert(7, 'Mentions Per Post' ,mentionCountPerPost)
finalDataset.insert(17, 'Is Outlier', outlierList)
finalDataset.to_csv('FinalDataSet.csv')

