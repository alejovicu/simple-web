## APIs:
### Product:
- Create Product: [POST] | `api/products`

Request:
```json
{
    reference: "string",
    tags: ["string", ... ],
    price: "float",
    state: "string",
    data: [
        {
            langCode: "string",
            title: "string",
            shortDescription:"string",
            longDescription:"string",
            smallImageUrl:"string",
            bigImageUrl:"string"
        }, ...
    ]
}
```

Response:
```json
{}
```
- Update Product: [PUT] | `api/products`

Request:
```json
{
    reference: "string",
    tags: ["string", ... ],
    price: "float",
    state: "string",
    data: [
        {
            langCode: "string",
            title: "string",
            shortDescription:"string",
            longDescription:"string",
            smallImageUrl:"string",
            bigImageUrl:"string"
        }, ...
    ]
}
```

Response:
```json
{}
```
- Get Product: [GET] | `api/product`
Request:

* langCode:  string. get param. required
* reference: string. get param. required

Response:
```json
{
    reference: "string",
    tags: ["string", ... ],
    price: "float",
    state: "string",
    title: "string",
    shortDescription:"string",
    longDescription:"string",
    smallImageUrl:"string",
    bigImageUrl:"string"
}
```

- Get Products by tags and language: [GET] | `api/products/?langCode=US&tags=[tags, ...]`

Response:
```json
{
    [
        {
            reference: "string",
            state: "string",
            price: "float",
            title: "string",
            shortDescription:"string",
            smallImageUrl:"string"
        }, ...
    ]
}
```

- Get Products: [GET] | `api/products/`

Response:
```json
[
    {
        reference: "string",
        tags: ["string", ... ],
        price: "float",
        state: "string",
        data: [
            {
                langCode: "string",
                title: "string",
                shortDescription:"string",
                longDescription:"string",
                smallImageUrl:"string",
                bigImageUrl:"string"
            }, ...
        ]
    }, ...
]
```

<!-- (TODO) -->
## Order: 
- Create Order
- Update Order
- Get Order
- Get Orders by States

### User:
- Create User
- Update User
- Get User