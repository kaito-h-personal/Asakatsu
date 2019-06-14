FROM mysql:latest

#read env #不要
#ARG PJ_NAME

#mysqlの認証方法を変更
RUN mysql -uroot -ppassword \
    && ALTER USER 'user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
