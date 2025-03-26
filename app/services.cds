
using from './danonedisplaybom/annotations';

annotate DanoneService.ProductCategoriesView with {

    ID                      @(title : '{i18n>prodid}');
    title                   @(title : '{i18n>title}');
    stock                   @(title : '{i18n>stck}');
    type                    @(title : '{i18n>typ}');
    price                   @(title : '{i18n>price}');
    status                  @(title : '{i18n>sttus}');
    Rating                  @(title : '{i18n>rttng}');
    EXPIRATION_DATE         @(title : '{i18n>expd}');

} ;

annotate DanoneService.TitleValuehelp with {

    title                   @(title : '{i18n>title}');

}

annotate DanoneService.ProductCategoriesView with @(UI : {
    SelectionFields : [
        title
    ],
    LineItem        : [
        {
            Value : ID,
            Label : '{i18n>prodid}'
        },
        {
            Value : title,
            Label : '{i18n>title}'

        },
        {
            Value : stock,
            Label : '{i18n>stck}'
        }
        
    ]
});

annotate DanoneService.ProductCategoriesView with {

    title         @(Common : {
        Text      : {
            $value                 : title,
            ![@UI.TextArrangement] : #TextOnly

        },
        ValueList : {
            SearchSupported : true,
            Label           : title,
            CollectionPath  : 'TitleValuehelp',
            Parameters      : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : title,
                ValueListProperty : 'title'
            }

            ]
        }
    });
}