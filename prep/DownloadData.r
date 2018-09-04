root <- rprojroot::find_rstudio_root_file()
dataDir <- file.path(root, 'data')

# DiamondColors.csv
download.file(
	'https://query.data.world/s/uVlTdijkCbfac49-3k12tawsmviArp',
	destfile=file.path(dataDir, 'DiamondColors.csv'),
	mode='w')

# ExcelExample.xlsx
download.file(
	'https://query.data.world/s/5wa6K_X91yfkf-BVpRe2UIabO5A-QB',
	destfile=file.path(dataDir, 'ExcelExample.xlsx'),
	mode='wb')

# reaction.txt
download.file(
	'https://query.data.world/s/uDfiLMRxSiB_kQQhEt_LbDGVOcStBR',
	destfile=file.path(dataDir, 'reaction.txt'),
	mode='w')

# TomatoFirst.csv
download.file(
	'https://query.data.world/s/o_LrhM_oY5dexXVDbsMNxF2JyyIMrg',
	destfile=file.path(dataDir, 'TomatoFirst.csv'),
	mode='w')

# manhattan_Test.rds
download.file(
	'https://query.data.world/s/tkfdrcapfsw7ihodbjzsdywz7povce',
	destfile=file.path(dataDir, 'manhattan_Test.rds'),
	mode='wb')

# manhattan_Train.rds
download.file(
	'https://query.data.world/s/4tjm263dwjq5knfs5upekzlmzc6oa2',
	destfile=file.path(dataDir, 'manhattan_Train.rds'),
	mode='wb')

# manhattan_Train.csv
download.file(
	'https://query.data.world/s/zGvNwNJbY2470sjsVxYFstm426SEf1',
	destfile=file.path(dataDir, 'manhattan_Train.csv'),
	mode='w')

