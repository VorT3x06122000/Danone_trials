namespace danone.dspace;
using {managed} from '@sap/cds/common';

entity Products : managed {
  key ID    : Integer;
      title : String(1000);
      stock : Integer;
      price : Integer;
      status : String(50);
      Rating : Integer;
      EXPIRATION_DATE : Date;
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
        b.type,
        a.price,
        a.status,
        a.Rating,
        a.EXPIRATION_DATE
  from Categories as b
  inner join Products as a
    on a.ID = b.ID;


view TitleValuehelp as select distinct title from Products;
