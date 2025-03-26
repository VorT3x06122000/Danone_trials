
using from './danonedisplaybom/annotations';

annotate DanoneService.ProductCategoriesView with {

    ID                      @(title : '{i18n>prodid}');
    title                   @(title : '{i18n>title}');
    stock                   @(title : '{i18n>stck}');
    type                    @(title : '{i18n>typ}');

} ;

annotate DanoneService.IdValuehelp with {

    ID                      @(title : '{i18n>prodid}');

}

annotate DanoneService.ProductCategoriesView with @(UI : {
    SelectionFields : [
        ID,
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
        },
        {
            Value : type,
            Label : '{i18n>typ}'
        },
        
    ]
});

annotate DanoneService.ProductCategoriesView with {

    ID         @(Common : {
        Text      : {
            $value                 : ID,
            ![@UI.TextArrangement] : #TextOnly

        },
        ValueList : {
            SearchSupported : true,
            Label           : ID,
            CollectionPath  : 'IdValuehelp',
            Parameters      : [{
                $Type             : 'Common.ValueListParameterInOut',
                LocalDataProperty : ID,
                ValueListProperty : 'ID'
            }

            ]
        }
    });
}