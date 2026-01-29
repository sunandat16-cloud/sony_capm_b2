//service definition
service MyService @(path:'MyService') {
    //service end point /hello
    function hello(name:String) returns String;


}