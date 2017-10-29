public without sharing class SinhVienController {
    public List<Sinhvien__c> listSV {get;set;}
    public SinhVien__c sinhvienA {get;set;}
    public Boolean showsinhvien {get;set;}
    public String mssv	{get;set;}
    public String hocky	{get;set;}
    
    public SinhVienController(ApexPages.StandardController controller){
        showsinhvien = true;
        sinhvienA = new SinhVien__c();
        GetRecordPage();
    }
    public SinhVienController(){
        showsinhvien = true;
        sinhvienA = new SinhVien__c();
        GetRecordPage();
    }
    Public PageReference GetRecordPage(){

        showsinhvien = true;
        this.listSV = GetRecordFetching();
    
        return null;
    }    
    public void saveSV(){
        //try{
        	insert sinhvienA;
            System.debug('Luu thong tin sinh vien thanh cong');
            
       
    }
        
   Public List<Sinhvien__c> GetRecordFetching(){
  
       List<Sinhvien__c> listItem = [Select Id, hoten__c, mssv__c, hocky__c, namhoc__c, monhoc__c, mahp__c From SinhVien__c];
       System.debug('testttttt:' + listItem);
        return listItem;
   }
    
   
}