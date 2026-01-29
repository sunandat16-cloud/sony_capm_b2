namespace sony.metro.reuse;


//create a reusable type - like data element in abap
type Guid : String(32) @title : 'Key';


//abap we have structures - group of fields - aspects
aspect address{
    houseNo: Int64;
    landmark: String(255);
    city: String(64);
    country: String(2);
    region: String(4);
}
