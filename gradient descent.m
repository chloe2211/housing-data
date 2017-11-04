# implementation of gradient descent 
f= fopen('hp.txt')
X=textscan(f,'%f%f%s%f%f','headerlines',1,'Delimiter','\t')
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

theta = zeros(size(X(1,:)))
alpha = 0.1 
J = zeros(50, 1)
for num_iterations = 1:50
    J(num_iterations) = (1/(2*m)*(X*theta'-Y)'*(X*theta'-Y))
    theta = theta - (alpha * (1/m) * (X*theta'-Y)' * X)
end

plot(0:49, J(1:50), '-')
xlabel('Number of iterations')
ylabel('Cost J')

