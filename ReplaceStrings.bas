REM  *****  BASIC  *****

Sub myReplace001
    ReplaceLigaturesB("akasa.","􀄁")
    ReplaceLigaturesB("alu.","􀄃")
    ReplaceLigaturesB("cakuwa.","􀄎")
    ReplaceLigaturesB("ikama.","􀄻")
    ReplaceLigaturesB("inkatan.","􀅁")
    ReplaceLigaturesB("lekin.","􀆎")
    ReplaceLigaturesB("loso.","􀆞")
    ReplaceLigaturesB("matuwa.","􀆬")
    ReplaceLigaturesB("mulu.","􀆼")
    ReplaceLigaturesB("nenka.","􀇏")
    ReplaceLigaturesB("ocota.","􀇛")
    ReplaceLigaturesB("pumi.","􀈑")
    ReplaceLigaturesB("sito.","􀈮")
    ReplaceLigaturesB("sone.","􀈱")
    ReplaceLigaturesB("tene.","􀉎")
    ReplaceLigaturesB("tuntan.","􀉣")
    ReplaceLigaturesB("uta.","􀉯")
    ReplaceLigaturesB("oke.","􀇜")
    ReplaceLigaturesB("pilu.","􀈂")
    ReplaceLigaturesB("ani.","􀄆")

   rem monosyllable 
   rem ReplaceLigaturesB("non.","")
    ReplaceLigaturesB("no.","􀇗")
    ReplaceLigaturesB("han.","􀄪")
    rem ReplaceLigaturesB("ha.","")
    ReplaceLigaturesB("nin.","􀇕")
    ReplaceLigaturesB("he.","􀄭")
    ReplaceLigaturesB("ju.","􀅑")
    ReplaceLigaturesB("kin.","􀅪")
    ReplaceLigaturesB("ki.","􀅣")
    ReplaceLigaturesB("le.","􀆍")
    ReplaceLigaturesB("lo.","􀆜")
    ReplaceLigaturesB("men.","􀆯")
    ReplaceLigaturesB("mi.","􀆴")
    ReplaceLigaturesB("nan.","􀇇")
    ReplaceLigaturesB("ne.","􀇌")
    ReplaceLigaturesB("pi.","􀇽")
    ReplaceLigaturesB("pon.","􀈊")
    ReplaceLigaturesB("se.","􀈡")
    ReplaceLigaturesB("sin.","􀈩")
    ReplaceLigaturesB("sun.","􀈶")
    ReplaceLigaturesB("ta.","􀈺")
    ReplaceLigaturesB("ten.","􀉍")
    ReplaceLigaturesB("te.","􀉋")
    ReplaceLigaturesB("tun.","􀉡")
    ReplaceLigaturesB("tu.","􀉞")
    ReplaceLigaturesB("un.","􀉬")
    ReplaceLigaturesB("wi.","􀉷")
      
  rem final
    ReplaceLigaturesB("o.","􀇚")
    ReplaceLigaturesB("in.","􀄿") 
End Sub


sub ReplaceLigaturesB(sourceString as String, targetString as string)
rem ----------------------------------------------------------------------
rem define variables
dim document   as object
dim dispatcher as object
rem ----------------------------------------------------------------------
rem get access to the document
document   = ThisComponent.CurrentController.Frame
dispatcher = createUnoService("com.sun.star.frame.DispatchHelper")
rem ----------------------------------------------------------------------
dim args1(21) as new com.sun.star.beans.PropertyValue
args1(0).Name = "SearchItem.StyleFamily"
args1(0).Value = 2
args1(1).Name = "SearchItem.CellType"
args1(1).Value = 0
args1(2).Name = "SearchItem.RowDirection"
args1(2).Value = true
args1(3).Name = "SearchItem.AllTables"
args1(3).Value = false
args1(4).Name = "SearchItem.SearchFiltered"
args1(4).Value = false
args1(5).Name = "SearchItem.Backward"
args1(5).Value = false
args1(6).Name = "SearchItem.Pattern"
args1(6).Value = false
args1(7).Name = "SearchItem.Content"
args1(7).Value = false
args1(8).Name = "SearchItem.AsianOptions"
args1(8).Value = false
args1(9).Name = "SearchItem.AlgorithmType"
args1(9).Value = 0
args1(10).Name = "SearchItem.SearchFlags"
args1(10).Value = 65536
args1(11).Name = "SearchItem.SearchString"
args1(11).Value = sourceString
args1(12).Name = "SearchItem.ReplaceString"
args1(12).Value = targetString
args1(13).Name = "SearchItem.Locale"
args1(13).Value = 255
args1(14).Name = "SearchItem.ChangedChars"
args1(14).Value = 2
args1(15).Name = "SearchItem.DeletedChars"
args1(15).Value = 2
args1(16).Name = "SearchItem.InsertedChars"
args1(16).Value = 2
args1(17).Name = "SearchItem.TransliterateFlags"
args1(17).Value = 1280
args1(18).Name = "SearchItem.Command"
args1(18).Value = 3
args1(19).Name = "SearchItem.SearchFormatted"
args1(19).Value = false
args1(20).Name = "SearchItem.AlgorithmType2"
args1(20).Value = 1
args1(21).Name = "Quiet"
args1(21).Value = true

dispatcher.executeDispatch(document, ".uno:ExecuteSearch", "", 0, args1())


end sub
