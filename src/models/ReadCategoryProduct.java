package models;

import java.util.TreeMap;
import models.Product;
import java.sql.*;
public class ReadCategoryProduct {

     //準備好產品清單
    public static TreeMap<String, Product> readProduct() {
        //read_product_from_file(); //從檔案或資料庫讀入產品菜單資訊
        //放所有產品  產品編號  產品物件
        TreeMap<String, Product> product_dict = new TreeMap();


        final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/java_pos";

        try
        {
            Class.forName(JDBC_DRIVER);
            Connection conn = null;
            Statement stmt = null;
            // 打开链接
            conn = DriverManager.getConnection(DB_URL,"mis","mis123");

            // 执行查询
            stmt = conn.createStatement();
            String sql = "SELECT * FROM Product";
            ResultSet rs = stmt.executeQuery(sql);

            // 展开结果集数据库
            while(rs.next()){
                // 通过字段检索
                Product product = new Product(String.format("%d", rs.getInt("product_id")),
                        rs.getString("product_type"),
                        rs.getString("product_name"),
                        rs.getInt("price"),
                        rs.getString("img"),
                        rs.getString("describe")
                );
                product_dict.put(String.format("%d", rs.getInt("product_id")), product);
            }
            // 完成后关闭
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return product_dict;
    }

}
