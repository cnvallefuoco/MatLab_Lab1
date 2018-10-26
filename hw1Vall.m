%% HW1
% This is Carina's Homework 1.
%
%This is how you do it

%% Problem 1
% This problem deals with creating a *mock* homework gradesheet
homeworkGrades = randi([0 100],4,5); % random sample grade sheet
homeworkGrades(2,3)= 100; % change the second person's homework 3 grade to a 100
homeworkGrades=[homeworkGrades(:,1),homeworkGrades(:,2)+5,homeworkGrades(:,3:5)]; 
% The line above add 5 points to homework grade 2 and displays the new
% matrix in one command line
homeworkGrades(:,4)=[]; % deletes homework 4 grades
student1Avg = mean(homeworkGrades(1,:)); % average homework grade for student 1
student2Avg = mean(homeworkGrades(2,:)); % average homework grade for student 2
student3Avg = mean(homeworkGrades(3,:)); % average homework grade for student 3
student4Avg = mean(homeworkGrades(4,:)); % average homework grade for student 4
%% Problem 2
% There is a big ol' sale at Eddie's super market. There was a sale on apples 
% $a$ and also a sale on lemons $l$. I'm not so good at math so i show the 
% check out clerk the produce i have in my basket and they help me calculate
% my total. For example, 1 apple and 2 lemons was 4 dollars. 
% 
% * $a + 2l = 4$
% * $4a + 5l = 13$
% 
A = [1 2;4 5];
b = [4;13];
sol = A\b 
%%
% Solving these equations we found |sol|, which shows that $a$ is 2 dollars
% and $l$ is 1 dollar

%% Problem 3
% This problem deals with plotting. This is a plot graph of cos(x) from 0 to 2pi.
x = [0:0.1:2*pi]; % These are the x values from 0 to 2pi in increments of .1
y = cos(x); % These are the y values of cos(x) given the x values 
plot(x,y,'b') % plots the graph
hold on % adds to the same graph
xlabel('x') % labels x axis
ylabel('y') % labels y axis
title('Graph of cos(x)') % titles graph
legend('cos(x)') % a key for the graph of cos(x)
%% Problem 4
% This problem will create a chart converting dollars to euros

dollars = [1:10]; % the basis is from 1 to 10 dollars
euros = .94*dollars; % Creates table to take care of vectorization 
TBL = [dollars;euros]; % creates a visual table for the conversions
fprintf('Dollars to Euros Table\n\n'); % title
fprintf('Dollars \t \t  Euros\n'); % column labels
fprintf('%2.0f \t \t  %3.2f\n', TBL); % visual placement

%% Link to this website and m-file
%
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/html/hw1Vall.html hw1Vall.html>
% * <http://studentpersonalpages.loyola.edu/cnvallefuoco/www/loy1703936/MA302/hw1Vall.m hw1Vall.m>
