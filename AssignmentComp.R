readed_data <- (read.csv('Sales.csv'))
# print (readed_data)
# for (row in readed_data){
# 	print(row)
# 	}
rownumber <- 1
previous_quater <- ""
previous_region <- ""
sale_amount <- 0
for(i in 1:nrow(readed_data) ){

	quarter <- readed_data$Quarter[rownumber]
	region <- readed_data$Region[rownumber]
	sale <- readed_data$Sale[rownumber]
	# print (region)

	if ((previous_quater == "")&(previous_region == "")){
		previous_quater <- quarter
		previous_region <- region

	}

	if ((quarter == previous_quater)&(region == previous_region)){
			sale_amount <- sale + sale_amount
			# sale_amount <- readed_data$new_sale
			readed_data$new_sale[rownumber] = sale_amount
			# print (sale_amount)

	}
	else if ((quarter != previous_quater)|(region != previous_region)){
		sale_amount <- 0
		sale_amount <- sale + sale_amount
		# sale_amount <- readed_data$new_sale
		readed_data$new_sale[rownumber] = sale_amount
	}

	previous_quater <- readed_data$Quarter[rownumber]
	previous_region <- readed_data$Region[rownumber]

	rownumber <- rownumber + 1
}

	print (readed_data)
	
	