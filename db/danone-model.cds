namespace danone.dspace;

entity Products {
  key ID    : Integer;
      title : String;
      stock : Integer;
}

entity Categories {
  key ID          : Integer;
      type        : String;
      description : String;
}


view ProductCategoriesView as
  select
    key a.ID,
        a.title,
        a.stock,
        b.type
  from Categories as b
  inner join Products as a
    on a.ID = b.ID;


view IdValuehelp as select distinct key ID from Products;
