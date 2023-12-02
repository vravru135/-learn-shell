log_file=/tmp/expense.log
color="\e[33m"
echo$ ?

echo -e "\e[33m Installing Nginx \e[0m"
dnf install nginx -y "&>>$log_file"
echo$ ?

echo -e "\e[33m copy Expense Config file \e[0m"
cp expense.conf /etc/nginx/default.d/expense.conf "&>>$log_file"
echo$ ?

echo -e "\e[33m Old Nginx Content \e[0m"
rm -rf /usr/share/nginx/html/* "&>>$log_file"
echo$ ?

echo -e "\e[33m Download Frontend Application Code  \e[0m"
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/frontend.zip "&>>$log_file"
echo$ ?

echo -e "\e[33m Extract Downloaded Application Content \e[0m"
cd /usr/share/nginx/html "&>>$log_file"
unzip /tmp/frontend.zip "&>>$log_file"
echo$ ?

echo -e "\e[33m Starting Nginx Service \e[0m"
systemctl enable nginx "&>>$log_file"
systemctl restart nginx "&>>$log_file"
echo$ ?







