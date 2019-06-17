-- 認証方式を変更しないとマイグレーションをした際にエラーが出る
ALTER USER 'user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';
