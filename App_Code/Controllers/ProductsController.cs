using System.Collections.Generic;
using System.Web.Http;

public class ProductsController : ApiController
{

    Product[] products = new Product[]
    {
        new Product{
            Id = 1,
            Name = "Fridge"
        },
        new Product{
            Id = 2,
            Name = "Mcrowave"
        },
        new Product
            {
                Id=3,
                Name="Washing Machine"
            }
    };

    
    public IEnumerable<Product> GetAllProducts()
    {
        return products;
    } 



}
