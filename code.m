# housing-data
f= fopen('hp.txt')
X=textscan(f,"%f%f%s%f%f",'headerlines',1,'Delimiter','\t')
X=[X{1},X{4},{5}]
Y=x{2}
m = length(Y)
X = [ones(m, 1), X]
%%normalization

sigma = std(X)
mu = mean(X)
X(:,2) = (X(:,2) - mu(2))./ sigma(2)
X(:,3) = (X(:,3) - mu(3))./ sigma(3)
X(:,4) = (X(:,4) - mu(4))./ sigma(4)
