package model;

public class Product {
     private String productID;
    private String productName;
    private String category;
    private int price;
    private int quantity;
    private String image;
    private boolean status;
    private String description;

    public Product() {
    }

    public Product(String productID, String productName, String category, int price, int quantity, String image, boolean status, String description) {
        this.productID = productID;
        this.productName = productName;
        this.quantity = quantity;
        this.price = price;
        this.category = category;
        this.description = description;
        this.image = image;
        this.status = status;
    }

    public String getProductID() {
        return productID;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Services{" +
                "productID='" + productID + '\'' +
                ", productName='" + productName + '\'' +
                ", category='" + category + '\'' +
                ", quantity=" + quantity +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", status=" + status +
                ", description='" + description + '\'' +
                '}';
    }
}
