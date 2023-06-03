package models;

import java.util.TreeMap;
import models.Product;

public class ReadCategoryProduct {
    
     //準備好產品清單  
    public static TreeMap<String, Product> readProduct() {
        //read_product_from_file(); //從檔案或資料庫讀入產品菜單資訊
        //放所有產品  產品編號  產品物件
        TreeMap<String, Product> product_dict = new TreeMap();
        String[][] product_array = {
            {"p-j-101", "主食", "牛肉麵", "110", "beef_noodles.jpg", "有牛肉的麵"},
            {"p-j-102", "主食", "滷肉飯", "60", "pork_rice.jpg", "加了滷肉的飯"},
            {"p-j-103", "主食", "乾麵",   "55", "noodles.jpg", "沒有湯了麵"},
            {"p-j-104", "飲料", "紅茶", "30", "blackTea.jpg", "黑色的紅茶？"},
            {"p-j-105", "飲料", "奶茶", "50", "milkTea.jpg", "假奶奶茶"},
            {"p-j-106", "飲料", "綠茶", "30", "greenTea.jpg", "黃色的綠茶？"},
            {"p-j-107", "小菜", "米血", "15", "rice_blood.jpg", "流血的米"},
            {"p-j-108", "小菜", "豆乾", "20", "drysoy.jpg", "干掉的黃豆"},
            {"p-j-109", "小菜", "黑輪", "10", "black_wheel.jpg", "黑色的輪子"},
        };

        //一筆放入字典變數product_dict中
        for (String[] item : product_array) {
            Product product = new Product(
                    item[0], 
                    item[1], 
                    item[2], 
                    Integer.parseInt(item[3]), //價格轉為int
                    item[4], 
                    item[5]);
            //將這一筆放入字典變數product_dict中 
            product_dict.put(product.getProduct_id(), product);
        }
        return product_dict; 
    }
}
