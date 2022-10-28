module.exports.hotoptions = async (req, res) => {
    var result={
"1":{
"title":"playground",
"location":"kolkata",
"description":"One acre of unused land near town which we are planning to use for farming. We are looking for stock holders who can hold for a maximum of 3 years",
"image": "https://images.unsplash.com/photo-1593642532972-7f1c2a8b3a1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWdyb3VuZCUyMGxhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
"cost": 1000,
"remaining": 100,
},
"2":{
"title":"2 acre land",
"location":"edapally",
"description":"premium land, planning for mall and other commercial activities",
"image": "https://images.unsplash.com/photo-1593642532972-7f1c2a8b3a1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWdyb3VuZCUyMGxhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
"cost": 500,
"remaining": 100,
},

    "3":{
        "title":"farm land",
        "location":"kottayam",
        "description":"One acre of unused land near town which we are planning to use for farming. We are looking for stock holders who can hold for a maximum of 3 years",
        "image": "https://images.unsplash.com/photo-1593642532972-7f1c2a8b3a1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWdyb3VuZCUyMGxhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
        "cost": 10,
        "remaining": 5,



    },
    "4":{
        "title":"unused land",
        "location":"thiruvalla",
        "description":"One acre of unused land near town which we are planning to use for farming. We are looking for stock holders who can hold for a maximum of 3 years",
        "image": "https://images.unsplash.com/photo-1593642532972-7f1c2a8b3a1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWdyb3VuZCUyMGxhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
        "cost": 100,
        "remaining": 100,

    },
    "5":{
        "title":"3 acre land",
        "location":"kochi",
        "description":"One acre of unused land near town which we are planning to use for farming. We are looking for stock holders who can hold for a maximum of 3 years",
        "image": "https://images.unsplash.com/photo-1593642532972-7f1c2a8b3a1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cGxheWdyb3VuZCUyMGxhbmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80",
        "cost": 100,
            },
}

    return res.status(200).json({
        success: true,
        message: "result inna pidicho",
        result
    });
}

