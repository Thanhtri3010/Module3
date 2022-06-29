package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements IProductRepository{
    static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Iphone 12",2000,"Mới","Apple"));
        productList.add(new Product(2,"S22 Ultra",1500,"Cũ","SamSung"));
        productList.add(new Product(3,"ReoMi",1400,"Mới","Xiaomi"));
        productList.add(new Product(4,"8800",1500,"Cũ","Nokia"));
        productList.add(new Product(5,"Iphoen 13",2200,"Mới","Apple"));
    }
    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id-1);
    }

    @Override
    public void update(int id, Product product) {
        productList.set(id-1,product);
    }

    @Override
    public void remove(int id) {
        productList.remove(id-1);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> searchList = new ArrayList<>();
        for (Product item : productList) {
            if (item.getProductName().contains(name)){
                searchList.add(item);
            }
        }
        return searchList;
    }
}
