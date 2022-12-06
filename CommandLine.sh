# GET dataset
echo 'GET dataset'
head bank_transactions.csv
echo '---------------------------------------------------------------------------'

# Question 1
echo 'Question 1) First 10 locations with maximum number of purchases:'
awk -F ',' '{print $5}' bank_transactions.csv | sort | uniq -c | sort -nr | head -10
echo '---------------------------------------------------------------------------'

# Question 2
echo 'Question 2) In the dataset provided, did females spend more than males, or vice versa?'

echo 'Females purchases AVG: '
awk -F ',' '$4=="F"{sum+=$9;cnt++}END{print sum/cnt}' bank_transactions.csv
echo 'Females purchases SUM: '
awk -F ',' '$4=="F"{sum+=$9}END{print sum}' bank_transactions.csv

echo 'Males purchases AVG: '
awk -F ',' '$4=="M"{sum+=$9;cnt++}END{print sum/cnt}' bank_transactions.csv
echo 'Males purchases SUM: '
awk -F ',' '$4=="M"{sum+=$9}END{print sum}' bank_transactions.csv

echo 'yes, did females spend more than males'
echo '---------------------------------------------------------------------------'

# Question 3
echo 'Question 3) Customer with the highest average transaction amount in the dataset: '
awk -F ',' '{seen[$2]+=$9; count[$2]++} END{for (x in seen)print  seen[x]/count[x],x}' bank_transactions.csv | sort -nr | head -n 1

wait