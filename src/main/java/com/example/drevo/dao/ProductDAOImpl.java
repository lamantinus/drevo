package com.example.drevo.dao;

import com.example.drevo.entities.Product;
import com.example.drevo.entities.ProductMaterial;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class ProductDAOImpl implements ProductDAO {
    @PersistenceContext
    private EntityManager entityManager;

    protected Session getSession() {
        return entityManager.unwrap(Session.class);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Product> getProducts() {
        return entityManager.createQuery("from Product ").getResultList();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<ProductMaterial> getProductMaterials() {
        return entityManager.createQuery("from ProductMaterial ").getResultList();
    }

    @Override
    public void add(Product product) {
        Session session = this.getSession();
        session.persist(product);
    }

    @Override
    public void delete(Product product) {
        Session session = this.getSession();
        session.delete(product);
    }

    @Override
    public void edit(Product product) {
        Session session = this.getSession();
        session.update(product);
    }

    @Override
    public Product getById(int id) {
        Session session = this.getSession();
        return session.get(Product.class, id);
    }
}

