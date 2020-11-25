data test;
set sashelp.cars(obs=20);
string1 = 'this is a really long string to demonstrate the scrolling differences between 3.x and 5.x for the table viewer. It truncates the column to show.';
string2 = 'and here is another column to see what happens after the first one';
string3 = "it's trying to autosize them apparently but how many columns will it do that to?";
run;