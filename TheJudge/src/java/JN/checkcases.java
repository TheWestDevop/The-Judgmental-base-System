/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JN;

import ClientAccount.AccountBean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author user
 */
public class checkcases {
   
Pattern property = Pattern.compile(".*property.*");
Pattern nlaw = Pattern.compile(".*native law.*");
Pattern custom = Pattern.compile(".*custom.*");
Pattern appointment = Pattern.compile(".*appointment.*");
Pattern  qualification = Pattern.compile(".* qualification.*");
Pattern tenureofoffice = Pattern.compile(".*tenure of office.*");
Pattern removalofthe = Pattern.compile(".*removal of the.*");
Pattern judgeofcourt = Pattern.compile(".*judge of a court.*"); 
Pattern everyjudgementis= Pattern.compile(".*every judgement.*");
Pattern conclusiveproof = Pattern.compile(".*conclusive proof.*");
Pattern  asagainst = Pattern.compile(".*as against.*");
Pattern  partiesandprivies = Pattern.compile(".*parties and privies.*");
Pattern unlessevidencedelivered = Pattern.compile(".*unless evidence delivered.*");
Pattern excludedaction = Pattern.compile(".*which is excluded in the action.*");
Pattern proved = Pattern.compile(".*it is intended to be proved.*");
Pattern setaside = Pattern.compile(".*set aside.*");
Pattern awronglysaleofland = Pattern.compile(".*a wrongly sale of land.*");
Pattern notestablishidentitylandsold = Pattern.compile(".*not establish identity of a land sold.*");                
Pattern damagestranspass = Pattern.compile(".*damages for transpass on grounds *");
Pattern tenancyagreement = Pattern.compile(".*the tenancy agreement was null and void..*");
Pattern declarationtitle = Pattern.compile(".*declaration of title.*");
Pattern toafarmland = Pattern.compile(".*to a farmland.*");
Pattern claimforinjuction = Pattern.compile(".*claim for injuction.*");
Pattern  onland = Pattern.compile(".*on land.*");
Pattern statementofclaim = Pattern.compile(".*statement of claim.*");
Pattern withoutreceiving = Pattern.compile(".*without receiving.*");
Pattern evidence = Pattern.compile(".*evidence.*");
Pattern ontheclaim = Pattern.compile(".*on the claim .*");
Pattern   setout = Pattern.compile(".*set out.*");
Pattern   relief = Pattern.compile(".*relief.*");
Pattern   paragraph = Pattern.compile(".*paragraph.*");
Pattern   thereon = Pattern.compile(".*thereon.*");
Pattern  failuretofileastatementofdefence   = Pattern.compile(".*failure to file a statement of defence.*");
Pattern  layingclaimmore   = Pattern.compile(".*laying claim to more.*");
Pattern   wronglydismissedpetition  = Pattern.compile(".*wrongly dismissed petition.*");
Pattern  adultery = Pattern.compile(".*adultery.*");
Pattern  nagging = Pattern.compile(".*nagging.*");
Pattern cruelty  = Pattern.compile(".*cruelty.*");
Pattern culpabledelay  = Pattern.compile(".*culpable delay.*");
Pattern rposession  = Pattern.compile(".*recovery of possession.*");
Pattern arealand  = Pattern.compile(".*of area of land.*");
Pattern injuctionrestrain  = Pattern.compile(".*an injuction to restrain*");
Pattern billexchange = Pattern.compile(".*bill of exchange.*");
Pattern noticeintentiondefend = Pattern.compile(".*notice of intention to defend.*");
Pattern damagesonland = Pattern.compile(".*damages for trespass on a land.*"); 
Pattern  summonjudgementpayment = Pattern.compile(".*the writ of summons until judgement or payment.*");
Pattern  debtdue = Pattern.compile(".*debt due from and payable.*");
Pattern publicauction = Pattern.compile(".*public auction or by private treaty.*");
Pattern   furthertrespass = Pattern.compile(".*damages for trespass and an injuction to restrain further trespass.*");
Pattern trepassparcelland = Pattern.compile(".*trespass and injuction in respect of a parcel of land.*");
Pattern declarationtitleland  = Pattern.compile(".*declaration of title to the piece and portion of land.*");
Pattern damagewithoutpermission  = Pattern.compile(".*damages for trespass without permission*");
Pattern possessorytitle = Pattern.compile(".*possessory title to a piece of land.*");
Pattern perpetualinjuction = Pattern.compile(".*an order of perpetual injuction.*");   
Pattern  proprety = Pattern.compile(".*property.*");
Pattern  itsekiri = Pattern.compile(".*itsekiri customery law.*");
Pattern landwarri  = Pattern.compile(".*land at okere warri.*");
Pattern  overloadship = Pattern.compile(".*subject to the overlord-ship of olu of warri.*");
Pattern  wrongfultrespass = Pattern.compile(".*damages for wrongful trespass committed.*");
Pattern willneglected = Pattern.compile(".*wilfully neglected.*");
Pattern securedperiodicalpayment = Pattern.compile(".*secured periodical payment.*");   
Pattern  deserted = Pattern.compile(".*deserted.*");
Pattern  moneydueowing = Pattern.compile(".*money due from, and owing.*");
Pattern damagesbranchescontract  = Pattern.compile(".*special and general damages for several branches of contract.*");
Pattern  offextensiontime = Pattern.compile(".*off extension of time within which to apply for leave to appeal.*");
Pattern  convictedmurder = Pattern.compile(".*convicted of murder.*");
Pattern  absenceevidence = Pattern.compile(".*absence of evidence of proof.*");
Pattern  underdecisionappeal = Pattern.compile(".*injuction to restrain an act under the decision on appeal pending the determination of the said appeal.*");
Pattern jurisdiction  = Pattern.compile(".*jurisdiction to stay proceedings.*");
Pattern  jurisdictionorder = Pattern.compile(".* jurisdiction after the order has been drawn up and enrolled.*");
Pattern  miscarriagejustice = Pattern.compile(".*miscarriage of justice.*");
Pattern circumstantialevidence = Pattern.compile(".*circumstantial evidence.*");
Pattern appealconvictiondeath = Pattern.compile(".*appeal against conviction of dealth sentence.*");   
Pattern  chargeabetting = Pattern.compile(".*charge for abetting the offences.*");
Pattern  criminalconspiracy = Pattern.compile(".*criminal conspiracy to commit theft.*");
Pattern nonsuit  = Pattern.compile(".*non-suit*");
Pattern secondchanceprovecase = Pattern.compile(".*second chance to prove case.*");
Pattern errorlaw = Pattern.compile(".*error in law.*");   
Pattern  particularerror = Pattern.compile(".*particulars to error.*");
Pattern  judgementreserved = Pattern.compile(".*judgement reserved.*");
Pattern moneyleattermloan  = Pattern.compile(".*money leat in form of a term loan.*");
Pattern  disputeaffidavitevidence = Pattern.compile(".*dispute solely on affidavit evidence.*");
Pattern  againstweightevidence = Pattern.compile(".* judgement is against the weight of evidence.*");
Pattern sharesheldtrust = Pattern.compile(".*shares held in trust.*");
Pattern employedrecoverfees = Pattern.compile(".*a method employed to recover fees.*");   
Pattern  powerinterfere = Pattern.compile(".*power to interfere.*");
Pattern  arrestednowarrant = Pattern.compile(".*arrested without warrant.*");
Pattern grantrightoccupancyparcelland =  Pattern.compile(".*entitled to the grant of certificate of statutory right of"
        + " occupancy in respect to a parcel of land.*");
Pattern  generaldamageland   = Pattern.compile(".*general damages for trespass in land in dispute.*");
Pattern   raisedcash  = Pattern.compile(".*raised requisition for cash.*");
Pattern  giftmilitary = Pattern.compile(".*welfare gift in the military.*");
//start from here 37 next
Pattern  nagunconstitutionaldeduction = Pattern.compile(".*illegal and unconstitutional to make deductions as a first line charge on the federation account.*");
Pattern declarationparcelLand  = Pattern.compile(".* declaration of right of occupancy over a piece or parcel of land.*");
Pattern failuredelivervehicle  = Pattern.compile(".*failure to deliver vehicles.*");
Pattern forsalebenztrucks  = Pattern.compile(".*contract for the sale of mercedes benz trucks.*");
Pattern naturalresourcesnigeria = Pattern.compile(".* natural resources located within the continental"
        + " sheft of nigeria are not derivable from any state of the federation.*");
Pattern lawenacted  = Pattern.compile(".* law enacted by the national assembly.*");
Pattern nationalassembly = Pattern.compile(".*national assembly has no power .*");
Pattern decisionhighcourt = Pattern.compile(".*dissatisfied with the decision of the high court.*");
Pattern credibleevidence = Pattern.compile(".*credible evidence in line with pleading to prove claim.*");
Pattern  bankinglicency = Pattern.compile(".*banking licency.*");
Pattern  statutoryinstrument = Pattern.compile(".*statutory instrument.*");
Pattern  revokedlicency = Pattern.compile(".*revoked licency.*");
Pattern  faslenegotiableinstrument = Pattern.compile(".*making a false negotiable instrument.*");
Pattern forgery  = Pattern.compile(".*forgery.*");
Pattern  utteringforgecheque = Pattern.compile(".*uttering a forged cheque.*");
Pattern  stealingcontiny = Pattern.compile(".*stealing con tiny.*");
Pattern receivingstolenproperty = Pattern.compile(".*receiving stolen property.*");
Pattern disobediencestandingorder = Pattern.compile(".*disobedience to standing order.*"); 
Pattern circularletter = Pattern.compile(".*circular letter addressed.*");
Pattern  powerpresidentofnigeria = Pattern.compile(".*power vested in the president of the federal republic of nigeria.*");
Pattern  notqualifiedcontest = Pattern.compile(".* not qualified to contest an election.*");
Pattern attempttrivalisejudicalprocess  = Pattern.compile(".*attempt to trivialise the judical process*");
Pattern offencerobbery = Pattern.compile(".*charged for the offence of armed robbery.*");
Pattern absencevalididentyparade = Pattern.compile(".*absence of a valid identification parade.*");   
Pattern  notprovenreasonable = Pattern.compile(".*not proved beyond reasonable doubt by the prosecution.*");
Pattern  insufficiencyevidence = Pattern.compile(".*insufficiency of the evidence.*");
Pattern  amendedstatementdefence  = Pattern.compile(".*amended statement of defence.*");
Pattern  propertydispute = Pattern.compile(".* property in dispute for future advancement.*");
Pattern  notentitledtobuild = Pattern.compile(".* not entitled to build.*");
Pattern garnisheeproceedings = Pattern.compile(".*garnishee proceedings.*");
Pattern commencedactionagainst = Pattern.compile(".*commenced an action against.*");   
Pattern  refuseliabilities = Pattern.compile(".*refuse all liabilities.*");
Pattern  entitletodamageswork = Pattern.compile(".*entitled to damages for non-completion of the work.*");
Pattern  sumrevisedupward =  Pattern.compile(".*sum originally agreed was revised upward*");
Pattern  architectcertificate   = Pattern.compile(".*architect's certificate is a condition procedent for payment.*");
Pattern  refuseliabilitiestwo = Pattern.compile(".*refuse all liabilities.*");
Pattern  entitletodamagesworktwo = Pattern.compile(".*entitled to damages for non-completion of the work.*");
Pattern  sumrevisedupwardtwo =  Pattern.compile(".*sum originally agreed was revised upward*");
Pattern  architectcertificatetwo   = Pattern.compile(".*architect's certificate is a condition procedent for payment.*");
Pattern   interpleaderproceeding  = Pattern.compile(".*interpleader proceedings.*");
Pattern  undefendedlist = Pattern.compile(".*undefended list.*");
Pattern  jurisdicperson = Pattern.compile(".*jurisdic person.*");
Pattern noticeintentiontodefend  = Pattern.compile(".*notice of intention to defend.*");
Pattern damagestrespass  = Pattern.compile(".*damages for trespass.*");
Pattern damagesdefamation  = Pattern.compile(".*damages for defamation.*");
Pattern returnmoneycollected = Pattern.compile(".*reture of money collected.*");
Pattern enteredbuildingcontractdispute  = Pattern.compile(".*entered into a building contract out of which dispute arose.*");
Pattern arbitrationreport = Pattern.compile(".*arbitration report.*");
Pattern outsidelagosjurisdiction = Pattern.compile(".*outside the jurisdiction of lagos state.*");
Pattern filedexparteapplication = Pattern.compile(".*filed an ex-parte application.*");
     public String checkcase(String get){
        
  System.out.println("checking search ......");


  System.out.println("this is the word"+ get);
   if(property.matcher(get).find() && nlaw.matcher(get).find() && custom.matcher(get).find()){
       return "1";
   }
   else if(appointment.matcher(get).find()
&& qualification.matcher(get).find() 
&& tenureofoffice.matcher(get).find() 
&& removalofthe.matcher(get).find()
&& judgeofcourt.matcher(get).find()){
       return "2";
   }
else if(everyjudgementis.matcher(get).find()
&& conclusiveproof.matcher(get).find() 
&& asagainst.matcher(get).find() 
&& partiesandprivies.matcher(get).find()
&& unlessevidencedelivered.matcher(get).find()
&& excludedaction.matcher(get).find()
&& proved.matcher(get).find()){
    return "3";
}
else if(setaside.matcher(get).find()
&& awronglysaleofland.matcher(get).find() 
|| notestablishidentitylandsold.matcher(get).find()){
    return "4";
}else if(damagestranspass.matcher(get).find() 
&& tenancyagreement.matcher(get).find()){
    return "5";
}
else if(declarationtitle.matcher(get).find() 
&& toafarmland.matcher(get).find() 
||claimforinjuction.matcher(get).find()
&& onland.matcher(get).find()){
    return "6";
}
else if(statementofclaim.matcher(get).find()
&& withoutreceiving.matcher(get).find() 
&& evidence.matcher(get).find() 
&& ontheclaim.matcher(get).find()
&& setout.matcher(get).find()
&& relief.matcher(get).find()
&& paragraph.matcher(get).find()
&& thereon.matcher(get).find()
|| failuretofileastatementofdefence.matcher(get).find()){
    return "7";
}
else if(layingclaimmore.matcher(get).find()){
    return "8";
}
else if(wronglydismissedpetition.matcher(get).find() 
|| adultery.matcher(get).find()
|| nagging.matcher(get).find()
|| cruelty.matcher(get).find()
|| culpabledelay.matcher(get).find()
){
    return "9";
}   
else if(rposession.matcher(get).find() && arealand.matcher(get).find()
||damagesonland.matcher(get).find()
|| injuctionrestrain.matcher(get).find()){
    return "10";
}
else if(billexchange.matcher(get).find()
|| noticeintentiondefend.matcher(get).find() 
){
    return "11";
}
else if(summonjudgementpayment.matcher(get).find()
|| debtdue.matcher(get).find()  
|| notestablishidentitylandsold.matcher(get).find()){
    return "12";
}
else if(furthertrespass.matcher(get).find()){
    return "13";
}
else if(trepassparcelland.matcher(get).find()){
    return "14";
}
else if(declarationtitleland.matcher(get).find() 
|| damagewithoutpermission.matcher(get).find() ){
    return "15";
}
else if(possessorytitle.matcher(get).find() 
|| perpetualinjuction.matcher(get).find()){
    return "16";
}
else if(proprety.matcher(get).find()){
    return "17";
}
else if(itsekiri.matcher(get).find() 
|| landwarri.matcher(get).find() 
|| overloadship.matcher(get).find()){
    return "18";
}
else if(wrongfultrespass.matcher(get).find()){
    return "19";
}
else if(willneglected.matcher(get).find() 
|| securedperiodicalpayment.matcher(get).find() 
|| deserted.matcher(get).find()){
    return "20";
}
else if(moneydueowing.matcher(get).find()){
    return "21";
}
   else if(damagesbranchescontract.matcher(get).find()){
    return "22";
}
else if( offextensiontime.matcher(get).find()){
    return "23";
}
   else if(convictedmurder.matcher(get).find() 
||  absenceevidence.matcher(get).find()){
    return "24";
}
   else if(underdecisionappeal.matcher(get).find() 
||jurisdiction.matcher(get).find() 
|| underdecisionappeal.matcher(get).find()){
    return "25";
}
else if(miscarriagejustice.matcher(get).find() 
|| circumstantialevidence.matcher(get).find() 
|| appealconvictiondeath.matcher(get).find()
){
    return "26";
}
   else if(chargeabetting.matcher(get).find() 
|| criminalconspiracy.matcher(get).find() 
           ){
    return "27";
}
else if(nonsuit.matcher(get).find() 
|| secondchanceprovecase.matcher(get).find() 
){
    return "28";
}
   else if(errorlaw.matcher(get).find() 
|| particularerror.matcher(get).find() 
|| judgementreserved.matcher(get).find()
){
    return "29";
}
 else if(moneyleattermloan.matcher(get).find() 
|| disputeaffidavitevidence.matcher(get).find() 
|| againstweightevidence.matcher(get).find()
){
    return "30";
}
else if(sharesheldtrust.matcher(get).find()
){
    return "31";
}
   else if(employedrecoverfees.matcher(get).find() 
   || powerinterfere.matcher(get).find()
 ){
    return "32";
}
else if(arrestednowarrant.matcher(get).find() 
){
    return "33";
}
   else if(grantrightoccupancyparcelland.matcher(get).find() 
|| generaldamageland.matcher(get).find()
){
    return "34";
}
 else if(raisedcash.matcher(get).find() 
|| giftmilitary.matcher(get).find() 
){
    return "35";
}
 else if(nagunconstitutionaldeduction.matcher(get).find() 

){
    return "36";
} else if(declarationparcelLand.matcher(get).find() 
){
    return "37";
} else if(failuredelivervehicle.matcher(get).find() 
|| forsalebenztrucks.matcher(get).find()  
){
    return "38";
} else if(naturalresourcesnigeria.matcher(get).find()  
){
    return "39";
} else if(lawenacted.matcher(get).find() 
 || nationalassembly.matcher(get).find() 
){
    return "40";
} else if(decisionhighcourt.matcher(get).find() 
|| credibleevidence.matcher(get).find() 
){
    return "41";
} else if(bankinglicency.matcher(get).find() 
|| statutoryinstrument.matcher(get).find() 
||revokedlicency.matcher(get).find()
){
    return "42";
} else if(faslenegotiableinstrument.matcher(get).find() 
|| forgery.matcher(get).find() 
||utteringforgecheque.matcher(get).find() 
|| stealingcontiny.matcher(get).find() 
||receivingstolenproperty.matcher(get).find()
||disobediencestandingorder.matcher(get).find()
){
    return "43";
} else if(circularletter.matcher(get).find() 
|| powerpresidentofnigeria.matcher(get).find() 
){
    return "44";
} else if(notqualifiedcontest.matcher(get).find() 
|| attempttrivalisejudicalprocess.matcher(get).find() 
){
    return "45";
} else if(offencerobbery.matcher(get).find() 
|| absencevalididentyparade.matcher(get).find() 
|| notprovenreasonable.matcher(get).find() 
|| insufficiencyevidence.matcher(get).find()
){
    return "46";
} else if(amendedstatementdefence.matcher(get).find() 
|| propertydispute.matcher(get).find() 
){
    return "47";
} else if(notentitledtobuild.matcher(get).find() 
){
    return "48";
} else if(garnisheeproceedings.matcher(get).find() 
|| commencedactionagainst.matcher(get).find() 
){
    return "49";
} else if(refuseliabilities.matcher(get).find() 
|| entitletodamagesworktwo.matcher(get).find() 
|| sumrevisedupwardtwo.matcher(get).find() 
|| architectcertificatetwo.matcher(get).find()    
){
    return "50";
}else if(refuseliabilities.matcher(get).find() 
|| entitletodamagesworktwo.matcher(get).find() 
|| sumrevisedupwardtwo.matcher(get).find() 
|| architectcertificatetwo.matcher(get).find()  
){
    return "55";
}
else if(interpleaderproceeding.matcher(get).find() 
|| undefendedlist.matcher(get).find() 
||jurisdicperson.matcher(get).find() 
|| noticeintentiontodefend.matcher(get).find()
){
    return "51";
}else if(damagestrespass.matcher(get).find() 
|| damagesdefamation.matcher(get).find()
||returnmoneycollected.matcher(get).find()
){
    return "52";
}else if(enteredbuildingcontractdispute.matcher(get).find() 
|| outsidelagosjurisdiction.matcher(get).find() 
){
    return "53";
}else if(generaldamageland.matcher(get).find() 
|| filedexparteapplication.matcher(get).find() 
){
    return "54";
}
    return "Case Not Found";
     }  
   
}

