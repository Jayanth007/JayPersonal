public with sharing class DisplayRichTextHelper {
  @AuraEnabled
  public static Attachment generatePDF(String txtValue) {
    Pagereference pg = Page.renderAsPDF;
    pg.getParameters().put('displayText', txtValue);

    Contact con = new Contact(Id = '0030K00001a1SzP');
    Attachment objAttachment = new Attachment();
    objAttachment.Name = 'J2S.pdf';
    objAttachment.ParentId = con.Id;
    objAttachment.Body = pg.getContentaspdf();
    objAttachment.IsPrivate = false;
    insert objAttachment;
    return objAttachment;
  }
}