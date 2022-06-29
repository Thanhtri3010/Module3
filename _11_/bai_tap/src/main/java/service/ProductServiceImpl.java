package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepositoryImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    static Map<Integer,Product> products;
//    static {
//        products =new HashMap<>();
//        products.put(1,new Product(1,"Iphone 12",2000,"Mới","Apple"));
//        products.put(2,new Product(2,"S22 Ultra",1500,"Cũ","SamSung"));
//        products.put(3,new Product(3,"ReoMi",1400,"Mới","Xiaomi"));
//        products.put(4,new Product(4,"8800",1500,"Cũ","Nokia"));
//        products.put(5,new Product(5,"Iphoen 13",2200,"Mới","Apple"));
//    }
    private IProductRepository productRepository = new ProductRepositoryImpl();
    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(int id, Product product) {
        productRepository.update(id,product);
    }

    @Override
    public void remove(int id) {
        productRepository.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }
}
