using danone.dspace as Danoneref from '../db/danone-model';

service DanoneService {
    entity Products as projection on Danoneref.Products;
    entity Categories as projection on Danoneref.Categories;
    entity ProductCategoriesView as projection on Danoneref.ProductCategoriesView;
}
