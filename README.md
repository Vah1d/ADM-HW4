Getting to know your customers
================================================
![image](https://github.com/user-attachments/assets/ec6c51a3-7f7b-4172-9e22-3c03b6e8edd3)


Over time, the Banking sector has dabbled into plenty of Data Science applications. The latter includes topics such as Fraud detection, risk modelling for investment, personalized marketing, managing customer data and customer segmentation, among others. The latter is a crucial topic for a bank since they can offer their products more accurately and tailor-made depending on their clients' characteristics and how probable they will consume more services from the bank.

Now, you and your team have been hired by a bank to get to know their customers. In other words, you will implement hashing and clustering techniques to extract relevant information and highlights from those clients and their transactions.

Then, let's get started!
----------------------------------------------------

1. Finding Similar Costumers
   
Companies nowadays are implementing product suggestions to provide users with things they are likely to buy. The process often starts by finding similar behaviours among consumers; for this task, we will focus on this part in the specific.
Here you will implement an algorithm to find the most similar match to a consumer given his bank account information. In particular, you will implement your version of the LSH algorithm that takes as input information about a consumer and finds people similar to the one in the study.

1.1 Set up the data
To start working download the banking dataset on Kaggle.

For the sake of this first part, not all columns are necessary since comparing each field single handedly can be quite time-expensive. Then, carefully read the linked guide above and try to understand which features will be appropriate for this task (An heads up: some users have more than one transaction record, make sure to handle them all). Once you have finished, project a version of the dataset to work with.

1.2 Fingerprint hashing
Using the previously selected data with the features you found pertinent, you have to:

Implement your minhash function from scratch. No ready-made hash functions are allowed. Read the class material and search the internet if you need to. For reference, it may be practical to look at the description of hash functions in the book.

Process the dataset and add each record to the MinHash. The subtask's goal is to try and map each consumer to its bin; to ensure this works well, be sure you understand how MinHash works and choose a matching threshold to use. Before moving on, experiment with different thresholds, explaining your choice.

1.3 Locality Sensitive Hashing
Now that you prepared your algorithm, it's query time!
We have prepared some dummy users for you to work with.

Download this csv and report the most similar users (comparing them against the dataset provided in Kaggle).
Did your hashing method work properly, what scores have you obtained and how long did it take to run? Provide information and analysis about the results.

2. Grouping customers together!
--------------------------------------------------
   
Now we will deal with clustering algorithms that will provide groups of clients which are similar among them.

To solve this task, you must accomplish the following stages:

2.1 Getting your data + feature engineering
Access to the data found in this dataset (it is the same dataset from the previous question 1.1).

Sometimes, the features (variables, fields) are not given in a dataset but can be created from it. The previous step is known as feature engineering. For example, the original dataset has several transactions done by the same customer. Then, we suggest you to group data by the client (using CustomerId) and, based on it, create the following new features for each CustomerId:

a) Number of transactions

b) Number of transactions with a balance bigger than 100 USD

c) Average amount of the transactions

d) Average balance

e) Average difference between the balance and the transaction amount for each customer (this is mainly known in the banking world as utilisation).

f) Most common gender of the customer

h) Most frequent location of the customer

So, in the end, you should have for each CustomerID seven features.

Consider at least 20 additional features that can be generated for each CustomerId. Describe each of them and why you believe they will be helpful. Moreover, add it to the previous dataset (the one with seven features). In the end, you should have for each CustomerID at least 27 features (7 recommended + 20 suggested by you).

2.2 Choose your features (variables)!
As you may notice, you have plenty of features to work with now. So, you need to find a way to reduce the dimensionality (reduce the number of variables to work with). You can follow the subsequent directions to achieve it:

To normalise or not to normalise? That's the question. Sometimes it is worth normalising (scaling) the features. Explain if it is a good idea to perform any normalisation method. If you think the normalisation should be used, apply it to your data (look at the available normalisation functions in the scikit-learn library).

Select one method for dimensionality reduction and apply it to your data. Some suggestions are Principal Component Analysis, Multiple Correspondence Analysis, Singular Value Decomposition, Factor Analysis for Mixed Data, Two-Steps clustering. Make sure that the method you choose applies to the features you have or modify your data to be able to use it. Explain why you chose that method and the limitations it may have.

Apply the selected method(s) to your data. Ensure the chosen method retains > 70% of the total variance.

2.3 Clustering!
-------------------------------------------
Implement the K-means clustering algorithm (not ++: random initialization). We ask you to write the algorithm from scratch following what you learned in class. !! We also ask you to use MapReduce in your K-means algorithm.

Find an optimal number of clusters. Use at least two different methods. If your algorithms provide diverse optimal K's, select one of them and explain why you chose it.

Run the algorithm on the data.

Then, use the already implemented version of K-means++ (from the scikit-learn library). Explain the differences (if there are any) in the results.

2.4 Analysing your results!
You are often encouraged to explain the main characteristics that your clusters have. This is called the Characterizing Clusters step. Thus, follow the next steps to do it:

Select 2-3 variables you think are relevant to identify the cluster of the customer. For example, CustGender, Number of transactions, etc.

Most of your selected variables will be numerical (continuous or discrete), then categorise them into four categories.

With the selected variables, perform pivot tables. On the horizontal axis, you will have the clusters, and on the vertical axis, you will have the categories of each variable. Notice that you have to do one pivot table per variable.

Calculate the percentage by column for each pivot table. The sum of each row (cluster) must be 100. The sample example for clustering with K = 4 and Gender variable:

Interpret the results for each pivot table.

Use any known metrics to estimate clustering algorithm performance (how good are the clusters you found?).

IMPORTANT NOTE:

We know you may consult the internet for information about implementing the requested algorithms. However, the final code must be yours! So please, do not search and copy-paste the code.

Since we know that some of the previous points can raise many questions, opening a thread on Slack is recommended and welcomed.

Unfortunately, there are no explicit descriptions of the features in the data sets. Nevertheless, the names are usually self-explanatory. In case you have any doubt, Google will help you better understand the characteristics of a bank's customer.

Bonus
-----------------------------------------
We remind you that we consider and grade the bonuses only if you complete the entire assignment.

Think about any two other clustering algorithms that you would like to use for the dataset (of course, you can use implemented version of them, e.g. from the scikit-learn library). Compare the results of chosen two algorithms with K-means implemented by you and K-means++ (from the scikit-learn library). Explain the differences (if there are any) in the results. Which one is the best, in your opinion, and why?

Homework 4 - Getting to know your customers

Mario Edoardo Pandolfo 1835189, Vahid Ghanbarizadeh 2002527 ,  Eric Rubia Aguilera 2049558,

In this repository you may find the following documents:

-  HW4.ipynb: The jupyter notebook file where there is the code for Q1, Q2 and the Algorithmic Question. There you may also found the command line code and its ouputs.
- CommandLine.sh: Is the executable file with the code for the command line question from HW4.
