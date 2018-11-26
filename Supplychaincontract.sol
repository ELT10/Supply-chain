pragma solidity ^0.4.0;
contract goods{
    
    struct extr{
        string Mna;
        string Mdate;
        string edate;
    }
    struct transman{
        
        uint Ono;
        mapping (uint => extr) withdrawinfo; 
        string Odate;
        uint tno;
        string supplierID;
        string suppliername;
        uint pcode;
        uint unitordered;
        uint discount;
        string ordstatus;
        uint cost;
                    
        }
    
    struct transsupplier{
        
        uint Ono;
        string Odate;
        uint tno;
        string uname;
        uint pcode;
        string pname;
        uint unitordered;
        string ordstatus;
        uint cost;
        
        }
    
    struct restockmanufacturer{
        
        uint bno;
        uint pcoo;
        uint stockadded;
        
    }
    
  mapping (uint => transman) public mantransaction;
  mapping (uint => transsupplier) public supplieratransaction;
  mapping (uint => restockmanufacturer) public manrestock;    

  
function addman(uint Orno,string mna,string Ordate,string mda,string exda,uint trno,string supplieraID,string supplieraname,uint prcode,uint unitord,uint dis,string ordstat,uint costtt) public {
                      
        mantransaction[Orno].Ono=Orno;
        mantransaction[Orno].withdrawinfo[Orno].Mna=mna;
        mantransaction[Orno].withdrawinfo[Orno].Mdate=mda;
        mantransaction[Orno].withdrawinfo[Orno].edate=exda;
        mantransaction[Orno].Odate=Ordate;
        mantransaction[Orno].tno=trno;
        mantransaction[Orno].supplierID=supplieraID;
        mantransaction[Orno].suppliername=supplieraname;
        mantransaction[Orno].pcode=prcode;
        mantransaction[Orno].unitordered=unitord;
        mantransaction[Orno].discount=dis;
        mantransaction[Orno].ordstatus=ordstat;
        mantransaction[Orno].cost=costtt;
        
        
                        
                        }
                        
function addsupplier(uint Orrno,string Orrdate,uint trrno,string urname,uint prcode,string prname,uint unitorderedr,string ordrstat,uint costr) public{
                      
        supplieratransaction[Orrno].Ono=Orrno;
        supplieratransaction[Orrno].Odate=Orrdate;
        supplieratransaction[Orrno].tno=trrno;
        supplieratransaction[Orrno].uname=urname;
        supplieratransaction[Orrno].pcode=prcode;
        supplieratransaction[Orrno].pname=prname;
        supplieratransaction[Orrno].unitordered=unitorderedr;
        supplieratransaction[Orrno].ordstatus=ordrstat;
        supplieratransaction[Orrno].cost=costr;
                        
                        }
                        
function addreman(uint batchn,uint pc,uint stock) public{
        manrestock[batchn].bno=batchn;
        manrestock[batchn].pcoo=pc;
        manrestock[batchn].stockadded=stock;
        
}

function check1(uint Orno) public constant returns (string,string){

        return(supplieratransaction[Orno].Odate,supplieratransaction[Orno].pname);
}
function check2(uint Orno) public constant returns (uint,string,string,string,string,string,string){        
        return(supplieratransaction[Orno].pcode,mantransaction[Orno].withdrawinfo[Orno].Mna,mantransaction[Orno].withdrawinfo[Orno].Mdate,
        mantransaction[Orno].withdrawinfo[Orno].edate,mantransaction[Orno].suppliername,mantransaction[Orno].ordstatus,supplieratransaction[Orno].ordstatus);
}
function check3(uint Orno) public constant returns (uint,uint){
    return( supplieratransaction[Orno].unitordered,supplieratransaction[Orno].cost);
}
function check4(uint batno) public constant returns (uint,uint,uint){
    return(manrestock[batno].bno,manrestock[batno].pcoo,manrestock[batno].stockadded);
}
}
