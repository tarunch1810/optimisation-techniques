%%
% *19BCI7005  Q1* 
%%
% |Mohan-Meakins Breveries Ltd. has two bottling plants, one located at Solon and the other at Mohan Nagar. Each plant produces three drinks, whisky, beer andfrilit juices named A, B and C respectively The number of bottles produced per day are as follows: Plant at Bolan Mohan Nagar (6-) (M) Whisky, A 1,500 1.500 Beet; B 3,000 1.000 Fruit juices. C 2.000 5.000 A market survey indicates that during the month of April, there will be a demand of 20,000 bottles of whisky, 40,000 bottles of beer and 44.000 bottles offruit juices. The operating costs per day for plants at Solon and Mohan Nagar are 600 and 400 monetary units. For how many days each plant be run in April so as to minimize the production cost, while still meeting the market demand| 

syms x y
c=[600 400];
a=[-1500 -1500;-3000 -1000;-2000 -5000;-1 0;0 -1]
b=[-20000;-40000;-44000;0;0]
linprog(c,a,b)

