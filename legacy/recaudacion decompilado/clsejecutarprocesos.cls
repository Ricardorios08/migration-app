VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsejecutarprocesos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '410A1C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '410A2B
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '410A3A
  RsFrm = Value
End Sub

Public Sub Requery() '9E6264
  'Data Table: 410564
  loc_9E6240: LitI4 -1
  loc_9E6245: FLdPr Me
  loc_9E6248: MemLdPr RsFrm
  loc_9E624B: Me.Requery from_stack_1
  loc_9E6250: LitVarStr var_94, "Primary"
  loc_9E6255: PopAdLdVar
  loc_9E6256: FLdPr Me
  loc_9E6259: LateIdCall
  loc_9E6261: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) 'A61074
  'Data Table: 410564
  loc_A61010: ILdRf sSelect
  loc_A61013: FStStrCopy var_88
  loc_A61016: LitNothing
  loc_A61018: CastAd
  loc_A6101B: FStAdFuncNoPop
  loc_A6101E: FLdPr Me
  loc_A61021: MemStAd
  loc_A61025: FFree1Ad var_8C
  loc_A61028: New Recordset
  loc_A6102C: FStAdFuncNoPop
  loc_A6102F: FLdPr Me
  loc_A61032: MemStAd
  loc_A61036: FFree1Ad var_8C
  loc_A61039: LitI4 -1
  loc_A6103E: LitI4 3
  loc_A61043: LitI4 3
  loc_A61048: ImpAdLdI4 MemVar_D9301C
  loc_A6104B: CVarAd
  loc_A6104F: PopAdLdVar
  loc_A61050: ILdRf var_88
  loc_A61053: CVarStr var_9C
  loc_A61056: PopAdLdVar
  loc_A61057: FLdPr Me
  loc_A6105A: MemLdPr RsFrm
  loc_A6105D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A61062: LitVarStr var_9C, "Primary"
  loc_A61067: PopAdLdVar
  loc_A61068: FLdPr Me
  loc_A6106B: LateIdCall
  loc_A61073: ExitProcHresult
End Sub

Public Property Get DataSource() '9F1348
  'Data Table: 410564
  loc_9F1324: ZeroRetVal
  loc_9F1326: FLdRfVar var_8C
  loc_9F1329: FLdPr Me
  loc_9F132C: MemLdPr RsFrm
  loc_9F132F:  = Me.DataSource
  loc_9F1334: ILdRf var_8C
  loc_9F1337: CastAd
  loc_9F133A: FStAdFunc var_88
  loc_9F133D: FFree1Ad var_8C
  loc_9F1340: ExitProcCbHresult
End Sub

Public Sub CreditosManualesPagosDobles(byCodiOfic, iPeriCtct) 'C57FD8
  'Data Table: 410564
  loc_C57310: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_creditos;"
  loc_C57313: LitStr " CREATE TEMPORARY TABLE tmp_creditos ("
  loc_C57316: ConcatStr
  loc_C57317: FStStrNoPop var_98
  loc_C5731A: LitStr " odiOfic` tinyint(2) unsigned NOT NULL default '0',"
  loc_C5731D: ConcatStr
  loc_C5731E: FStStrNoPop var_9C
  loc_C57321: LitStr " uenCtct` char(11) NOT NULL default '',"
  loc_C57324: ConcatStr
  loc_C57325: FStStrNoPop var_A0
  loc_C57328: LitStr " eriCtct` year(4) NOT NULL default '0000',"
  loc_C5732B: ConcatStr
  loc_C5732C: FStStrNoPop var_A4
  loc_C5732F: LitStr " imeCtct` smallint(3) unsigned NOT NULL default '0',"
  loc_C57332: ConcatStr
  loc_C57333: FStStrNoPop var_A8
  loc_C57336: LitStr " umeCtct` int(10) unsigned NOT NULL default '0', `FeveCtct` date default NULL,"
  loc_C57339: ConcatStr
  loc_C5733A: FStStrNoPop var_AC
  loc_C5733D: LitStr " ipoCtct` enum('Aforos Varios','Mensual','Bimestral','Anual','Semestral1','Semestral2') NOT NULL DEFAULT 'Aforos Varios',"
  loc_C57340: ConcatStr
  loc_C57341: FStStrNoPop var_B0
  loc_C57344: LitStr " eriInfo` year(4) NOT NULL DEFAULT 0000,"
  loc_C57347: ConcatStr
  loc_C57348: FStStrNoPop var_B4
  loc_C5734B: LitStr " odiConc` char(8) NOT NULL DEFAULT '',"
  loc_C5734E: ConcatStr
  loc_C5734F: FStStrNoPop var_B8
  loc_C57352: LitStr " odiFapa` int(8) unsigned NOT NULL DEFAULT 0,"
  loc_C57355: ConcatStr
  loc_C57356: FStStrNoPop var_BC
  loc_C57359: LitStr " umeApre` int(8) NOT NULL DEFAULT 0,"
  loc_C5735C: ConcatStr
  loc_C5735D: FStStrNoPop var_C0
  loc_C57360: LitStr " aldCtct` decimal(10,2) NOT NULL default '0.00',"
  loc_C57363: ConcatStr
  loc_C57364: FStStrNoPop var_C4
  loc_C57367: LitStr " odiOficDebi` tinyint(2) unsigned NOT NULL default '0',"
  loc_C5736A: ConcatStr
  loc_C5736B: FStStrNoPop var_C8
  loc_C5736E: LitStr " uenCtctDebi` char(11) NOT NULL default '',"
  loc_C57371: ConcatStr
  loc_C57372: FStStrNoPop var_CC
  loc_C57375: LitStr " eriCtctDebi` year(4) NOT NULL default '0000',"
  loc_C57378: ConcatStr
  loc_C57379: FStStrNoPop var_D0
  loc_C5737C: LitStr " imeCtctDebi` smallint(3) unsigned NOT NULL default '0',"
  loc_C5737F: ConcatStr
  loc_C57380: FStStrNoPop var_D4
  loc_C57383: LitStr " umeCtctDebi` int(10) unsigned NOT NULL default '0', `FepaCtct` date default NULL,"
  loc_C57386: ConcatStr
  loc_C57387: FStStrNoPop var_D8
  loc_C5738A: LitStr " ipoCtctDebi` enum('Aforos Varios','Mensual','Bimestral','Anual','Semestral1','Semestral2') NOT NULL DEFAULT 'Aforos Varios',"
  loc_C5738D: ConcatStr
  loc_C5738E: FStStrNoPop var_DC
  loc_C57391: LitStr " eriInfoDebi` year(4) NOT NULL DEFAULT 0000,"
  loc_C57394: ConcatStr
  loc_C57395: FStStrNoPop var_E0
  loc_C57398: LitStr " odiConcDebi` char(8) NOT NULL DEFAULT '',"
  loc_C5739B: ConcatStr
  loc_C5739C: FStStrNoPop var_E4
  loc_C5739F: LitStr " odiFapaDebi` int(8) unsigned NOT NULL DEFAULT 0,"
  loc_C573A2: ConcatStr
  loc_C573A3: FStStrNoPop var_E8
  loc_C573A6: LitStr " umeApreDebi` int(8) NOT NULL DEFAULT 0,`SaldCtctDebi` decimal(10,2) NOT NULL default '0.00',"
  loc_C573A9: ConcatStr
  loc_C573AA: FStStrNoPop var_EC
  loc_C573AD: LitStr " ifeCtctDebi` decimal(10,2) NOT NULL default '0.00', KEY  (`CodiOfic`,`CuenCtct`,`PeriCtct`,`BimeCtct`,`NumeCtct`)"
  loc_C573B0: ConcatStr
  loc_C573B1: FStStrNoPop var_F0
  loc_C573B4: LitStr ") ENGINE=MEMORY DEFAULT CHARSET=latin1"
  loc_C573B7: ConcatStr
  loc_C573B8: FStStrNoPop var_F4
  loc_C573BB: Call Proc_261_10_A4592C()
  loc_C573C0: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_C573F3: LitVar_TRUE var_104
  loc_C573F6: PopAdLdVar
  loc_C573F7: ImpAdLdRf MemVar_D93A7C
  loc_C573FA: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C573FD: VCallAd Control_ID_
  loc_C57400: FStAdFunc var_118
  loc_C57403: FLdPr var_118
  loc_C57406: LateIdSt
  loc_C5740B: FFree1Ad var_118
  loc_C5740E: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte1;"
  loc_C57411: LitStr " CREATE TEMPORARY TABLE tmp_ctacte1"
  loc_C57414: ConcatStr
  loc_C57415: FStStrNoPop var_98
  loc_C57418: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct, ctacte.PeriInfo, ctacte.CodiConc"
  loc_C5741B: ConcatStr
  loc_C5741C: FStStrNoPop var_9C
  loc_C5741F: LitStr " FROM ctacte"
  loc_C57422: ConcatStr
  loc_C57423: FStStrNoPop var_A0
  loc_C57426: LitStr " WHERE CodiOfic = "
  loc_C57429: ConcatStr
  loc_C5742A: FStStrNoPop var_A4
  loc_C5742D: FLdUI1
  loc_C57431: CStrI2
  loc_C57433: FStStrNoPop var_A8
  loc_C57436: ConcatStr
  loc_C57437: FStStrNoPop var_AC
  loc_C5743A: LitStr " AND PeriCtct = "
  loc_C5743D: ConcatStr
  loc_C5743E: FStStrNoPop var_B0
  loc_C57441: FLdI2 iPeriCtct
  loc_C57444: CStrUI1
  loc_C57446: FStStrNoPop var_B4
  loc_C57449: ConcatStr
  loc_C5744A: FStStrNoPop var_B8
  loc_C5744D: LitStr " AND MoviCtct = 1"
  loc_C57450: ConcatStr
  loc_C57451: FStStrNoPop var_BC
  loc_C57454: LitStr " AND CodiFapa = 0"
  loc_C57457: ConcatStr
  loc_C57458: FStStrNoPop var_C0
  loc_C5745B: LitStr " AND NumeApre = 0"
  loc_C5745E: ConcatStr
  loc_C5745F: FStStrNoPop var_C4
  loc_C57462: Call Proc_261_11_A45814()
  loc_C57467: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_C57482: LitStr " DROP TEMPORARY TABLE IF EXISTS tmp_ctacte;"
  loc_C57485: LitStr " CREATE TEMPORARY TABLE tmp_ctacte"
  loc_C57488: ConcatStr
  loc_C57489: FStStrNoPop var_98
  loc_C5748C: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, "
  loc_C5748F: ConcatStr
  loc_C57490: FStStrNoPop var_9C
  loc_C57493: LitStr " (SELECT MAX(ctacte.FeveCtct) FROM ctacte WHERE ctacte.CodiOfic = tmp_ctacte1.CodiOfic"
  loc_C57496: ConcatStr
  loc_C57497: FStStrNoPop var_A0
  loc_C5749A: LitStr " AND ctacte.CuenCtct = tmp_ctacte1.CuenCtct"
  loc_C5749D: ConcatStr
  loc_C5749E: FStStrNoPop var_A4
  loc_C574A1: LitStr " AND ctacte.PeriCtct = tmp_ctacte1.PeriCtct"
  loc_C574A4: ConcatStr
  loc_C574A5: FStStrNoPop var_A8
  loc_C574A8: LitStr " AND ctacte.BimeCtct = tmp_ctacte1.BimeCtct"
  loc_C574AB: ConcatStr
  loc_C574AC: FStStrNoPop var_AC
  loc_C574AF: LitStr " AND ctacte.NumeCtct = tmp_ctacte1.NumeCtct"
  loc_C574B2: ConcatStr
  loc_C574B3: FStStrNoPop var_B0
  loc_C574B6: LitStr " AND ctacte.PeriInfo = tmp_ctacte1.PeriInfo"
  loc_C574B9: ConcatStr
  loc_C574BA: FStStrNoPop var_B4
  loc_C574BD: LitStr " AND ctacte.CodiConc = tmp_ctacte1.CodiConc"
  loc_C574C0: ConcatStr
  loc_C574C1: FStStrNoPop var_B8
  loc_C574C4: LitStr " AND ctacte.CodiTimo IN (2,4,5,9,21)) FechPago,"
  loc_C574C7: ConcatStr
  loc_C574C8: FStStrNoPop var_BC
  loc_C574CB: LitStr " ctacte.TipoCtct, ctacte.PeriInfo, ctacte.CodiConc, ctacte.CodiFapa, ctacte.NumeApre, SUM(DebeCtct)-SUM(CredCtct) as SaldCtct"
  loc_C574CE: ConcatStr
  loc_C574CF: FStStrNoPop var_C0
  loc_C574D2: LitStr " FROM  tmp_ctacte1"
  loc_C574D5: ConcatStr
  loc_C574D6: FStStrNoPop var_C4
  loc_C574D9: LitStr " INNER JOIN ctacte"
  loc_C574DC: ConcatStr
  loc_C574DD: FStStrNoPop var_C8
  loc_C574E0: LitStr " ON ctacte.CodiOfic = tmp_ctacte1.CodiOfic"
  loc_C574E3: ConcatStr
  loc_C574E4: FStStrNoPop var_CC
  loc_C574E7: LitStr " AND ctacte.CuenCtct = tmp_ctacte1.CuenCtct"
  loc_C574EA: ConcatStr
  loc_C574EB: FStStrNoPop var_D0
  loc_C574EE: LitStr " AND ctacte.PeriCtct = tmp_ctacte1.PeriCtct"
  loc_C574F1: ConcatStr
  loc_C574F2: FStStrNoPop var_D4
  loc_C574F5: LitStr " AND ctacte.BimeCtct = tmp_ctacte1.BimeCtct"
  loc_C574F8: ConcatStr
  loc_C574F9: FStStrNoPop var_D8
  loc_C574FC: LitStr " AND ctacte.NumeCtct = tmp_ctacte1.NumeCtct"
  loc_C574FF: ConcatStr
  loc_C57500: FStStrNoPop var_DC
  loc_C57503: LitStr " AND ctacte.PeriInfo = tmp_ctacte1.PeriInfo"
  loc_C57506: ConcatStr
  loc_C57507: FStStrNoPop var_E0
  loc_C5750A: LitStr " AND ctacte.CodiConc = tmp_ctacte1.CodiConc"
  loc_C5750D: ConcatStr
  loc_C5750E: FStStrNoPop var_E4
  loc_C57511: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_C57514: ConcatStr
  loc_C57515: FStStrNoPop var_E8
  loc_C57518: LitStr " Having SaldCtct < 0;"
  loc_C5751B: ConcatStr
  loc_C5751C: FStStrNoPop var_EC
  loc_C5751F: Call Proc_261_11_A45814()
  loc_C57524: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_C57553: LitStr "SELECT * FROM  tmp_ctacte"
  loc_C57556: Call Proc_261_11_A45814()
  loc_C5755B: FLdRfVar var_11C
  loc_C5755E: FLdPr Me
  loc_C57561: MemLdPr global_68
  loc_C57564:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.RecordCount
  loc_C57569: ILdRf var_11C
  loc_C5756C: LitI4 0
  loc_C57571: GtI4
  loc_C57572: BranchF loc_C57FD4
  loc_C57575: FLdPr Me
  loc_C57578: MemLdPr global_68
  loc_C5757B: Me.MoveFirst
  loc_C57580: LitI2_Byte 0
  loc_C57582: CR8I2
  loc_C57583: CVarR4
  loc_C57587: PopAdLdVar
  loc_C57588: ImpAdLdRf MemVar_D93A7C
  loc_C5758B: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C5758E: VCallAd Control_ID_
  loc_C57591: FStAdFunc var_118
  loc_C57594: FLdPr var_118
  loc_C57597: LateIdSt
  loc_C5759C: FFree1Ad var_118
  loc_C5759F: FLdRfVar var_11C
  loc_C575A2: FLdPr Me
  loc_C575A5: MemLdPr global_68
  loc_C575A8:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.RecordCount
  loc_C575AD: ILdRf var_11C
  loc_C575B0: CR8I4
  loc_C575B1: CVarR4
  loc_C575B5: PopAdLdVar
  loc_C575B6: ImpAdLdRf MemVar_D93A7C
  loc_C575B9: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C575BC: VCallAd Control_ID_
  loc_C575BF: FStAdFunc var_118
  loc_C575C2: FLdPr var_118
  loc_C575C5: LateIdSt
  loc_C575CA: FFree1Ad var_118
  loc_C575CD: LitI2_Byte 0
  loc_C575CF: CR8I2
  loc_C575D0: CVarR4
  loc_C575D4: PopAdLdVar
  loc_C575D5: ImpAdLdRf MemVar_D93A7C
  loc_C575D8: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C575DB: VCallAd Control_ID_
  loc_C575DE: FStAdFunc var_118
  loc_C575E1: FLdPr var_118
  loc_C575E4: LateIdSt
  loc_C575E9: FFree1Ad var_118
  loc_C575EC: FLdRfVar var_11E
  loc_C575EF: FLdPr Me
  loc_C575F2: MemLdPr global_68
  loc_C575F5:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.EOF
  loc_C575FA: FLdI2 var_11E
  loc_C575FD: NotI4
  loc_C575FE: BranchF loc_C57FD4
  loc_C57601: ILdRf var_88
  loc_C57604: CR8I4
  loc_C57605: CVarR4
  loc_C57609: PopAdLdVar
  loc_C5760A: ImpAdLdRf MemVar_D93A7C
  loc_C5760D: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C57610: VCallAd Control_ID_
  loc_C57613: FStAdFunc var_118
  loc_C57616: FLdPr var_118
  loc_C57619: LateIdSt
  loc_C5761E: FFree1Ad var_118
  loc_C57621: ILdRf var_88
  loc_C57624: LitI4 1
  loc_C57629: AddI4
  loc_C5762A: FStR4 var_88
  loc_C5762D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmp_deuda;"
  loc_C57630: LitStr " CREATE TEMPORARY TABLE tmp_deuda"
  loc_C57633: ConcatStr
  loc_C57634: FStStrNoPop var_98
  loc_C57637: LitStr " SELECT ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct, ctacte.PeriInfo, ctacte.CodiConc, ctacte.FeveCtct"
  loc_C5763A: ConcatStr
  loc_C5763B: FStStrNoPop var_9C
  loc_C5763E: LitStr " FROM ctacte"
  loc_C57641: ConcatStr
  loc_C57642: FStStrNoPop var_A0
  loc_C57645: LitStr " WHERE CodiOfic = "
  loc_C57648: ConcatStr
  loc_C57649: CVarStr var_144
  loc_C5764C: FLdRfVar var_134
  loc_C5764F: FLdRfVar var_124
  loc_C57652: LitVarStr var_104, "CodiOfic"
  loc_C57657: PopAdLdVar
  loc_C57658: FLdRfVar var_118
  loc_C5765B: FLdPr Me
  loc_C5765E: MemLdPr global_68
  loc_C57661:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.Fields
  loc_C57666: FLdPr var_118
  loc_C57669: from_stack_2 = Me.Item(from_stack_1)
  loc_C5766E: FLdPr var_124
  loc_C57671:  = Me.Value
  loc_C57676: FLdRfVar var_134
  loc_C57679: ConcatVar var_154
  loc_C5767D: LitVarStr var_114, " AND ctacte.CuenCtct = '"
  loc_C57682: ConcatVar var_164
  loc_C57686: FLdRfVar var_18C
  loc_C57689: FLdRfVar var_17C
  loc_C5768C: LitVarStr var_178, "CuenCtct"
  loc_C57691: PopAdLdVar
  loc_C57692: FLdRfVar var_168
  loc_C57695: FLdPr Me
  loc_C57698: MemLdPr global_68
  loc_C5769B:  = Me.Fields
  loc_C576A0: FLdPr var_168
  loc_C576A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C576A8: FLdPr var_17C
  loc_C576AB:  = Me.Value
  loc_C576B0: FLdRfVar var_18C
  loc_C576B3: ConcatVar var_19C
  loc_C576B7: LitVarStr var_1AC, "'"
  loc_C576BC: ConcatVar var_1BC
  loc_C576C0: LitVarStr var_1CC, " AND PeriCtct = "
  loc_C576C5: ConcatVar var_1DC
  loc_C576C9: FLdRfVar var_204
  loc_C576CC: FLdRfVar var_1F4
  loc_C576CF: LitVarStr var_1F0, "PeriCtct"
  loc_C576D4: PopAdLdVar
  loc_C576D5: FLdRfVar var_1E0
  loc_C576D8: FLdPr Me
  loc_C576DB: MemLdPr global_68
  loc_C576DE:  = Me.Fields
  loc_C576E3: FLdPr var_1E0
  loc_C576E6: from_stack_2 = Me.Item(from_stack_1)
  loc_C576EB: FLdPr var_1F4
  loc_C576EE:  = Me.Value
  loc_C576F3: FLdRfVar var_204
  loc_C576F6: ConcatVar var_214
  loc_C576FA: LitVarStr var_224, " AND MoviCtct = 1"
  loc_C576FF: ConcatVar var_234
  loc_C57703: LitVarStr var_244, " AND PeriInfo = "
  loc_C57708: ConcatVar var_254
  loc_C5770C: FLdRfVar var_27C
  loc_C5770F: FLdRfVar var_26C
  loc_C57712: LitVarStr var_268, "PeriInfo"
  loc_C57717: PopAdLdVar
  loc_C57718: FLdRfVar var_258
  loc_C5771B: FLdPr Me
  loc_C5771E: MemLdPr global_68
  loc_C57721:  = Me.Fields
  loc_C57726: FLdPr var_258
  loc_C57729: from_stack_2 = Me.Item(from_stack_1)
  loc_C5772E: FLdPr var_26C
  loc_C57731:  = Me.Value
  loc_C57736: FLdRfVar var_27C
  loc_C57739: ConcatVar var_28C
  loc_C5773D: LitVarStr var_29C, " AND CodiConc = "
  loc_C57742: ConcatVar var_2AC
  loc_C57746: FLdRfVar var_2D4
  loc_C57749: FLdRfVar var_2C4
  loc_C5774C: LitVarStr var_2C0, "CodiConc"
  loc_C57751: PopAdLdVar
  loc_C57752: FLdRfVar var_2B0
  loc_C57755: FLdPr Me
  loc_C57758: MemLdPr global_68
  loc_C5775B:  = Me.Fields
  loc_C57760: FLdPr var_2B0
  loc_C57763: from_stack_2 = Me.Item(from_stack_1)
  loc_C57768: FLdPr var_2C4
  loc_C5776B:  = Me.Value
  loc_C57770: FLdRfVar var_2D4
  loc_C57773: ConcatVar var_2E4
  loc_C57777: LitVarStr var_2F4, " AND CodiFapa = 0"
  loc_C5777C: ConcatVar var_304
  loc_C57780: LitVarStr var_314, " AND NumeApre = 0"
  loc_C57785: ConcatVar var_324
  loc_C57789: CStrVarVal var_A4
  loc_C5778D: Call Proc_261_12_A45788()
  loc_C57792: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C5779D: FFreeAd var_118 = "": var_124 = "": var_168 = "": var_17C = "": var_1E0 = "": var_1F4 = "": var_258 = "": var_26C = "": var_2B0 = ""
  loc_C577B4: FFreeVar var_144 = "": var_134 = "": var_154 = "": var_164 = "": var_18C = "": var_19C = "": var_1BC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = ""
  loc_C577DD: LitStr "SELECT tmp_deuda.FeveCtct FechaVenc, ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.TipoCtct, ctacte.PeriInfo, ctacte.CodiConc, ctacte.CodiFapa, ctacte.NumeApre, ctacte.DebeCtct-SUM(ctacte.CredCtct) saldo  FROM tmp_deuda"
  loc_C577E0: LitStr " INNER JOIN ctacte"
  loc_C577E3: ConcatStr
  loc_C577E4: FStStrNoPop var_98
  loc_C577E7: LitStr " ON ctacte.CodiOfic = tmp_deuda.CodiOfic"
  loc_C577EA: ConcatStr
  loc_C577EB: FStStrNoPop var_9C
  loc_C577EE: LitStr " AND ctacte.CuenCtct = tmp_deuda.CuenCtct"
  loc_C577F1: ConcatStr
  loc_C577F2: FStStrNoPop var_A0
  loc_C577F5: LitStr " AND ctacte.PeriCtct = tmp_deuda.PeriCtct"
  loc_C577F8: ConcatStr
  loc_C577F9: FStStrNoPop var_A4
  loc_C577FC: LitStr " AND ctacte.BimeCtct = tmp_deuda.BimeCtct"
  loc_C577FF: ConcatStr
  loc_C57800: FStStrNoPop var_A8
  loc_C57803: LitStr " AND ctacte.NumeCtct = tmp_deuda.NumeCtct"
  loc_C57806: ConcatStr
  loc_C57807: FStStrNoPop var_AC
  loc_C5780A: LitStr " AND ctacte.PeriInfo = tmp_deuda.PeriInfo"
  loc_C5780D: ConcatStr
  loc_C5780E: FStStrNoPop var_B0
  loc_C57811: LitStr " AND ctacte.CodiConc = tmp_deuda.CodiConc"
  loc_C57814: ConcatStr
  loc_C57815: FStStrNoPop var_B4
  loc_C57818: LitStr " GROUP BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct"
  loc_C5781B: ConcatStr
  loc_C5781C: FStStrNoPop var_B8
  loc_C5781F: LitStr " HAVING saldo > 0"
  loc_C57822: ConcatStr
  loc_C57823: FStStrNoPop var_BC
  loc_C57826: Call Proc_261_12_A45788()
  loc_C5782B: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_C57842: FLdRfVar var_11C
  loc_C57845: FLdPr Me
  loc_C57848: MemLdPr global_72
  loc_C5784B:  = Me.RecordCount
  loc_C57850: ILdRf var_11C
  loc_C57853: LitI4 0
  loc_C57858: GtI4
  loc_C57859: BranchF loc_C57FC6
  loc_C5785C: FLdRfVar var_154
  loc_C5785F: FLdRfVar var_17C
  loc_C57862: LitVarStr var_178, "Saldo"
  loc_C57867: PopAdLdVar
  loc_C57868: FLdRfVar var_168
  loc_C5786B: FLdPr Me
  loc_C5786E: MemLdPr global_72
  loc_C57871:  = Me.Fields
  loc_C57876: FLdPr var_168
  loc_C57879: from_stack_2 = Me.Item(from_stack_1)
  loc_C5787E: FLdPr var_17C
  loc_C57881:  = Me.Value
  loc_C57886: FLdRfVar var_134
  loc_C57889: FLdRfVar var_124
  loc_C5788C: LitVarStr var_104, "SaldCtct"
  loc_C57891: PopAdLdVar
  loc_C57892: FLdRfVar var_118
  loc_C57895: FLdPr Me
  loc_C57898: MemLdPr global_68
  loc_C5789B:  = Me.Fields
  loc_C578A0: FLdPr var_118
  loc_C578A3: from_stack_2 = Me.Item(from_stack_1)
  loc_C578A8: FLdPr var_124
  loc_C578AB:  = Me.Value
  loc_C578B0: FLdRfVar var_134
  loc_C578B3: LitVarI2 var_114, -1
  loc_C578B8: MulVar var_144
  loc_C578BC: FnCDblVar
  loc_C578BE: FLdRfVar var_154
  loc_C578C1: FnCDblVar
  loc_C578C3: EqR4
  loc_C578C4: FFreeAd var_118 = "": var_124 = "": var_168 = ""
  loc_C578CF: FFreeVar var_134 = ""
  loc_C578D6: BranchF loc_C57FC6
  loc_C578D9: FLdRfVar var_4A4
  loc_C578DC: FLdRfVar var_494
  loc_C578DF: LitVarStr var_490, "SaldCtct"
  loc_C578E4: PopAdLdVar
  loc_C578E5: FLdRfVar var_480
  loc_C578E8: FLdPr Me
  loc_C578EB: MemLdPr global_68
  loc_C578EE:  = Me.Fields
  loc_C578F3: FLdPr var_480
  loc_C578F6: from_stack_2 = Me.Item(from_stack_1)
  loc_C578FB: FLdPr var_494
  loc_C578FE:  = Me.Value
  loc_C57903: FLdRfVar var_87C
  loc_C57906: FLdRfVar var_86C
  loc_C57909: LitVarStr var_868, "Saldo"
  loc_C5790E: PopAdLdVar
  loc_C5790F: FLdRfVar var_858
  loc_C57912: FLdPr Me
  loc_C57915: MemLdPr global_72
  loc_C57918:  = Me.Fields
  loc_C5791D: FLdPr var_858
  loc_C57920: from_stack_2 = Me.Item(from_stack_1)
  loc_C57925: FLdPr var_86C
  loc_C57928:  = Me.Value
  loc_C5792D: FLdRfVar var_8E4
  loc_C57930: FLdRfVar var_8D4
  loc_C57933: LitVarStr var_8D0, "SaldCtct"
  loc_C57938: PopAdLdVar
  loc_C57939: FLdRfVar var_8C0
  loc_C5793C: FLdPr Me
  loc_C5793F: MemLdPr global_68
  loc_C57942:  = Me.Fields
  loc_C57947: FLdPr var_8C0
  loc_C5794A: from_stack_2 = Me.Item(from_stack_1)
  loc_C5794F: FLdPr var_8D4
  loc_C57952:  = Me.Value
  loc_C57957: FLdRfVar var_92C
  loc_C5795A: FLdRfVar var_91C
  loc_C5795D: LitVarStr var_918, "Saldo"
  loc_C57962: PopAdLdVar
  loc_C57963: FLdRfVar var_908
  loc_C57966: FLdPr Me
  loc_C57969: MemLdPr global_72
  loc_C5796C:  = Me.Fields
  loc_C57971: FLdPr var_908
  loc_C57974: from_stack_2 = Me.Item(from_stack_1)
  loc_C57979: FLdPr var_91C
  loc_C5797C:  = Me.Value
  loc_C57981: LitStr "INSERT INTO tmp_creditos (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, FeveCtct, TipoCtct, PeriInfo, CodiConc, CodiFapa, NumeApre, SaldCtct, CodiOficDebi, CuenCtctDebi, PeriCtctDebi, BimeCtctDebi, NumeCtctDebi, FepaCtct, TipoCtctDebi, PeriInfoDebi, CodiConcDebi, CodiFapaDebi, NumeApreDebi, SaldCtctDebi, DifeCtctDebi) "
  loc_C57984: LitStr " VALUES ("
  loc_C57987: ConcatStr
  loc_C57988: CVarStr var_144
  loc_C5798B: FLdRfVar var_134
  loc_C5798E: FLdRfVar var_124
  loc_C57991: LitVarStr var_104, "CodiOfic"
  loc_C57996: PopAdLdVar
  loc_C57997: FLdRfVar var_118
  loc_C5799A: FLdPr Me
  loc_C5799D: MemLdPr global_68
  loc_C579A0:  = Me.Fields
  loc_C579A5: FLdPr var_118
  loc_C579A8: from_stack_2 = Me.Item(from_stack_1)
  loc_C579AD: FLdPr var_124
  loc_C579B0:  = Me.Value
  loc_C579B5: FLdRfVar var_134
  loc_C579B8: ConcatVar var_154
  loc_C579BC: LitVarStr var_114, ",'"
  loc_C579C1: ConcatVar var_164
  loc_C579C5: FLdRfVar var_18C
  loc_C579C8: FLdRfVar var_17C
  loc_C579CB: LitVarStr var_178, "CuenCtct"
  loc_C579D0: PopAdLdVar
  loc_C579D1: FLdRfVar var_168
  loc_C579D4: FLdPr Me
  loc_C579D7: MemLdPr global_68
  loc_C579DA:  = Me.Fields
  loc_C579DF: FLdPr var_168
  loc_C579E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C579E7: FLdPr var_17C
  loc_C579EA:  = Me.Value
  loc_C579EF: FLdRfVar var_18C
  loc_C579F2: ConcatVar var_19C
  loc_C579F6: LitVarStr var_1AC, "',"
  loc_C579FB: ConcatVar var_1BC
  loc_C579FF: FLdRfVar var_1DC
  loc_C57A02: FLdRfVar var_1F4
  loc_C57A05: LitVarStr var_1CC, "PeriCtct"
  loc_C57A0A: PopAdLdVar
  loc_C57A0B: FLdRfVar var_1E0
  loc_C57A0E: FLdPr Me
  loc_C57A11: MemLdPr global_68
  loc_C57A14:  = Me.Fields
  loc_C57A19: FLdPr var_1E0
  loc_C57A1C: from_stack_2 = Me.Item(from_stack_1)
  loc_C57A21: FLdPr var_1F4
  loc_C57A24:  = Me.Value
  loc_C57A29: FLdRfVar var_1DC
  loc_C57A2C: ConcatVar var_204
  loc_C57A30: LitVarStr var_1F0, ","
  loc_C57A35: ConcatVar var_214
  loc_C57A39: FLdRfVar var_234
  loc_C57A3C: FLdRfVar var_26C
  loc_C57A3F: LitVarStr var_224, "BimeCtct"
  loc_C57A44: PopAdLdVar
  loc_C57A45: FLdRfVar var_258
  loc_C57A48: FLdPr Me
  loc_C57A4B: MemLdPr global_68
  loc_C57A4E:  = Me.Fields
  loc_C57A53: FLdPr var_258
  loc_C57A56: from_stack_2 = Me.Item(from_stack_1)
  loc_C57A5B: FLdPr var_26C
  loc_C57A5E:  = Me.Value
  loc_C57A63: FLdRfVar var_234
  loc_C57A66: ConcatVar var_254
  loc_C57A6A: LitVarStr var_244, ","
  loc_C57A6F: ConcatVar var_27C
  loc_C57A73: FLdRfVar var_28C
  loc_C57A76: FLdRfVar var_2C4
  loc_C57A79: LitVarStr var_268, "NumeCtct"
  loc_C57A7E: PopAdLdVar
  loc_C57A7F: FLdRfVar var_2B0
  loc_C57A82: FLdPr Me
  loc_C57A85: MemLdPr global_68
  loc_C57A88:  = Me.Fields
  loc_C57A8D: FLdPr var_2B0
  loc_C57A90: from_stack_2 = Me.Item(from_stack_1)
  loc_C57A95: FLdPr var_2C4
  loc_C57A98:  = Me.Value
  loc_C57A9D: FLdRfVar var_28C
  loc_C57AA0: ConcatVar var_2AC
  loc_C57AA4: LitVarStr var_29C, ",Null,'"
  loc_C57AA9: ConcatVar var_2D4
  loc_C57AAD: FLdRfVar var_2E4
  loc_C57AB0: FLdRfVar var_32C
  loc_C57AB3: LitVarStr var_2C0, "TipoCtct"
  loc_C57AB8: PopAdLdVar
  loc_C57AB9: FLdRfVar var_328
  loc_C57ABC: FLdPr Me
  loc_C57ABF: MemLdPr global_68
  loc_C57AC2:  = Me.Fields
  loc_C57AC7: FLdPr var_328
  loc_C57ACA: from_stack_2 = Me.Item(from_stack_1)
  loc_C57ACF: FLdPr var_32C
  loc_C57AD2:  = Me.Value
  loc_C57AD7: FLdRfVar var_2E4
  loc_C57ADA: ConcatVar var_304
  loc_C57ADE: LitVarStr var_2F4, "',"
  loc_C57AE3: ConcatVar var_324
  loc_C57AE7: FLdRfVar var_344
  loc_C57AEA: FLdRfVar var_334
  loc_C57AED: LitVarStr var_314, "PeriInfo"
  loc_C57AF2: PopAdLdVar
  loc_C57AF3: FLdRfVar var_330
  loc_C57AF6: FLdPr Me
  loc_C57AF9: MemLdPr global_68
  loc_C57AFC:  = Me.Fields
  loc_C57B01: FLdPr var_330
  loc_C57B04: from_stack_2 = Me.Item(from_stack_1)
  loc_C57B09: FLdPr var_334
  loc_C57B0C:  = Me.Value
  loc_C57B11: FLdRfVar var_344
  loc_C57B14: ConcatVar var_354
  loc_C57B18: LitVarStr var_364, ",'"
  loc_C57B1D: ConcatVar var_374
  loc_C57B21: FLdRfVar var_39C
  loc_C57B24: FLdRfVar var_38C
  loc_C57B27: LitVarStr var_388, "CodiConc"
  loc_C57B2C: PopAdLdVar
  loc_C57B2D: FLdRfVar var_378
  loc_C57B30: FLdPr Me
  loc_C57B33: MemLdPr global_68
  loc_C57B36:  = Me.Fields
  loc_C57B3B: FLdPr var_378
  loc_C57B3E: from_stack_2 = Me.Item(from_stack_1)
  loc_C57B43: FLdPr var_38C
  loc_C57B46:  = Me.Value
  loc_C57B4B: FLdRfVar var_39C
  loc_C57B4E: ConcatVar var_3AC
  loc_C57B52: LitVarStr var_3BC, "',"
  loc_C57B57: ConcatVar var_3CC
  loc_C57B5B: FLdRfVar var_3F4
  loc_C57B5E: FLdRfVar var_3E4
  loc_C57B61: LitVarStr var_3E0, "CodiFapa"
  loc_C57B66: PopAdLdVar
  loc_C57B67: FLdRfVar var_3D0
  loc_C57B6A: FLdPr Me
  loc_C57B6D: MemLdPr global_68
  loc_C57B70:  = Me.Fields
  loc_C57B75: FLdPr var_3D0
  loc_C57B78: from_stack_2 = Me.Item(from_stack_1)
  loc_C57B7D: FLdPr var_3E4
  loc_C57B80:  = Me.Value
  loc_C57B85: FLdRfVar var_3F4
  loc_C57B88: ConcatVar var_404
  loc_C57B8C: LitVarStr var_414, ","
  loc_C57B91: ConcatVar var_424
  loc_C57B95: FLdRfVar var_44C
  loc_C57B98: FLdRfVar var_43C
  loc_C57B9B: LitVarStr var_438, "NumeApre"
  loc_C57BA0: PopAdLdVar
  loc_C57BA1: FLdRfVar var_428
  loc_C57BA4: FLdPr Me
  loc_C57BA7: MemLdPr global_68
  loc_C57BAA:  = Me.Fields
  loc_C57BAF: FLdPr var_428
  loc_C57BB2: from_stack_2 = Me.Item(from_stack_1)
  loc_C57BB7: FLdPr var_43C
  loc_C57BBA:  = Me.Value
  loc_C57BBF: FLdRfVar var_44C
  loc_C57BC2: ConcatVar var_45C
  loc_C57BC6: LitVarStr var_46C, ","
  loc_C57BCB: ConcatVar var_47C
  loc_C57BCF: LitI4 0
  loc_C57BD4: LitI4 -1
  loc_C57BD9: LitI4 1
  loc_C57BDE: LitStr "."
  loc_C57BE1: LitStr ","
  loc_C57BE4: FLdRfVar var_4A4
  loc_C57BE7: CStrVarTmp
  loc_C57BE8: FStStrNoPop var_98
  loc_C57BEB: ImpAdCallI2 Replace(, , , , , )
  loc_C57BF0: CVarStr var_4B4
  loc_C57BF3: ConcatVar var_4C4
  loc_C57BF7: LitVarStr var_4D4, ","
  loc_C57BFC: ConcatVar var_4E4
  loc_C57C00: FLdRfVar var_50C
  loc_C57C03: FLdRfVar var_4FC
  loc_C57C06: LitVarStr var_4F8, "CodiOfic"
  loc_C57C0B: PopAdLdVar
  loc_C57C0C: FLdRfVar var_4E8
  loc_C57C0F: FLdPr Me
  loc_C57C12: MemLdPr global_72
  loc_C57C15:  = Me.Fields
  loc_C57C1A: FLdPr var_4E8
  loc_C57C1D: from_stack_2 = Me.Item(from_stack_1)
  loc_C57C22: FLdPr var_4FC
  loc_C57C25:  = Me.Value
  loc_C57C2A: FLdRfVar var_50C
  loc_C57C2D: ConcatVar var_51C
  loc_C57C31: LitVarStr var_52C, ",'"
  loc_C57C36: ConcatVar var_53C
  loc_C57C3A: FLdRfVar var_564
  loc_C57C3D: FLdRfVar var_554
  loc_C57C40: LitVarStr var_550, "CuenCtct"
  loc_C57C45: PopAdLdVar
  loc_C57C46: FLdRfVar var_540
  loc_C57C49: FLdPr Me
  loc_C57C4C: MemLdPr global_72
  loc_C57C4F:  = Me.Fields
  loc_C57C54: FLdPr var_540
  loc_C57C57: from_stack_2 = Me.Item(from_stack_1)
  loc_C57C5C: FLdPr var_554
  loc_C57C5F:  = Me.Value
  loc_C57C64: FLdRfVar var_564
  loc_C57C67: ConcatVar var_574
  loc_C57C6B: LitVarStr var_584, "',"
  loc_C57C70: ConcatVar var_594
  loc_C57C74: FLdRfVar var_5BC
  loc_C57C77: FLdRfVar var_5AC
  loc_C57C7A: LitVarStr var_5A8, "PeriCtct"
  loc_C57C7F: PopAdLdVar
  loc_C57C80: FLdRfVar var_598
  loc_C57C83: FLdPr Me
  loc_C57C86: MemLdPr global_72
  loc_C57C89:  = Me.Fields
  loc_C57C8E: FLdPr var_598
  loc_C57C91: from_stack_2 = Me.Item(from_stack_1)
  loc_C57C96: FLdPr var_5AC
  loc_C57C99:  = Me.Value
  loc_C57C9E: FLdRfVar var_5BC
  loc_C57CA1: ConcatVar var_5CC
  loc_C57CA5: LitVarStr var_5DC, ","
  loc_C57CAA: ConcatVar var_5EC
  loc_C57CAE: FLdRfVar var_614
  loc_C57CB1: FLdRfVar var_604
  loc_C57CB4: LitVarStr var_600, "BimeCtct"
  loc_C57CB9: PopAdLdVar
  loc_C57CBA: FLdRfVar var_5F0
  loc_C57CBD: FLdPr Me
  loc_C57CC0: MemLdPr global_72
  loc_C57CC3:  = Me.Fields
  loc_C57CC8: FLdPr var_5F0
  loc_C57CCB: from_stack_2 = Me.Item(from_stack_1)
  loc_C57CD0: FLdPr var_604
  loc_C57CD3:  = Me.Value
  loc_C57CD8: FLdRfVar var_614
  loc_C57CDB: ConcatVar var_624
  loc_C57CDF: LitVarStr var_634, ","
  loc_C57CE4: ConcatVar var_644
  loc_C57CE8: FLdRfVar var_66C
  loc_C57CEB: FLdRfVar var_65C
  loc_C57CEE: LitVarStr var_658, "NumeCtct"
  loc_C57CF3: PopAdLdVar
  loc_C57CF4: FLdRfVar var_648
  loc_C57CF7: FLdPr Me
  loc_C57CFA: MemLdPr global_72
  loc_C57CFD:  = Me.Fields
  loc_C57D02: FLdPr var_648
  loc_C57D05: from_stack_2 = Me.Item(from_stack_1)
  loc_C57D0A: FLdPr var_65C
  loc_C57D0D:  = Me.Value
  loc_C57D12: FLdRfVar var_66C
  loc_C57D15: ConcatVar var_67C
  loc_C57D19: LitVarStr var_68C, ",Null,'"
  loc_C57D1E: ConcatVar var_69C
  loc_C57D22: FLdRfVar var_6C4
  loc_C57D25: FLdRfVar var_6B4
  loc_C57D28: LitVarStr var_6B0, "TipoCtct"
  loc_C57D2D: PopAdLdVar
  loc_C57D2E: FLdRfVar var_6A0
  loc_C57D31: FLdPr Me
  loc_C57D34: MemLdPr global_72
  loc_C57D37:  = Me.Fields
  loc_C57D3C: FLdPr var_6A0
  loc_C57D3F: from_stack_2 = Me.Item(from_stack_1)
  loc_C57D44: FLdPr var_6B4
  loc_C57D47:  = Me.Value
  loc_C57D4C: FLdRfVar var_6C4
  loc_C57D4F: ConcatVar var_6D4
  loc_C57D53: LitVarStr var_6E4, "',"
  loc_C57D58: ConcatVar var_6F4
  loc_C57D5C: FLdRfVar var_71C
  loc_C57D5F: FLdRfVar var_70C
  loc_C57D62: LitVarStr var_708, "PeriInfo"
  loc_C57D67: PopAdLdVar
  loc_C57D68: FLdRfVar var_6F8
  loc_C57D6B: FLdPr Me
  loc_C57D6E: MemLdPr global_72
  loc_C57D71:  = Me.Fields
  loc_C57D76: FLdPr var_6F8
  loc_C57D79: from_stack_2 = Me.Item(from_stack_1)
  loc_C57D7E: FLdPr var_70C
  loc_C57D81:  = Me.Value
  loc_C57D86: FLdRfVar var_71C
  loc_C57D89: ConcatVar var_72C
  loc_C57D8D: LitVarStr var_73C, ",'"
  loc_C57D92: ConcatVar var_74C
  loc_C57D96: FLdRfVar var_774
  loc_C57D99: FLdRfVar var_764
  loc_C57D9C: LitVarStr var_760, "CodiConc"
  loc_C57DA1: PopAdLdVar
  loc_C57DA2: FLdRfVar var_750
  loc_C57DA5: FLdPr Me
  loc_C57DA8: MemLdPr global_72
  loc_C57DAB:  = Me.Fields
  loc_C57DB0: FLdPr var_750
  loc_C57DB3: from_stack_2 = Me.Item(from_stack_1)
  loc_C57DB8: FLdPr var_764
  loc_C57DBB:  = Me.Value
  loc_C57DC0: FLdRfVar var_774
  loc_C57DC3: ConcatVar var_784
  loc_C57DC7: LitVarStr var_794, "',"
  loc_C57DCC: ConcatVar var_7A4
  loc_C57DD0: FLdRfVar var_7CC
  loc_C57DD3: FLdRfVar var_7BC
  loc_C57DD6: LitVarStr var_7B8, "CodiFapa"
  loc_C57DDB: PopAdLdVar
  loc_C57DDC: FLdRfVar var_7A8
  loc_C57DDF: FLdPr Me
  loc_C57DE2: MemLdPr global_72
  loc_C57DE5:  = Me.Fields
  loc_C57DEA: FLdPr var_7A8
  loc_C57DED: from_stack_2 = Me.Item(from_stack_1)
  loc_C57DF2: FLdPr var_7BC
  loc_C57DF5:  = Me.Value
  loc_C57DFA: FLdRfVar var_7CC
  loc_C57DFD: ConcatVar var_7DC
  loc_C57E01: LitVarStr var_7EC, ","
  loc_C57E06: ConcatVar var_7FC
  loc_C57E0A: FLdRfVar var_824
  loc_C57E0D: FLdRfVar var_814
  loc_C57E10: LitVarStr var_810, "NumeApre"
  loc_C57E15: PopAdLdVar
  loc_C57E16: FLdRfVar var_800
  loc_C57E19: FLdPr Me
  loc_C57E1C: MemLdPr global_72
  loc_C57E1F:  = Me.Fields
  loc_C57E24: FLdPr var_800
  loc_C57E27: from_stack_2 = Me.Item(from_stack_1)
  loc_C57E2C: FLdPr var_814
  loc_C57E2F:  = Me.Value
  loc_C57E34: FLdRfVar var_824
  loc_C57E37: ConcatVar var_834
  loc_C57E3B: LitVarStr var_844, ","
  loc_C57E40: ConcatVar var_854
  loc_C57E44: LitI4 0
  loc_C57E49: LitI4 -1
  loc_C57E4E: LitI4 1
  loc_C57E53: LitStr "."
  loc_C57E56: LitStr ","
  loc_C57E59: FLdRfVar var_87C
  loc_C57E5C: CStrVarTmp
  loc_C57E5D: FStStrNoPop var_9C
  loc_C57E60: ImpAdCallI2 Replace(, , , , , )
  loc_C57E65: CVarStr var_88C
  loc_C57E68: ConcatVar var_89C
  loc_C57E6C: LitVarStr var_8AC, ","
  loc_C57E71: ConcatVar var_8BC
  loc_C57E75: LitI4 0
  loc_C57E7A: LitI4 -1
  loc_C57E7F: LitI4 1
  loc_C57E84: LitStr "."
  loc_C57E87: LitStr ","
  loc_C57E8A: FLdRfVar var_8E4
  loc_C57E8D: LitVarI2 var_8F4, -1
  loc_C57E92: MulVar var_904
  loc_C57E96: FnCDblVar
  loc_C57E98: FLdRfVar var_92C
  loc_C57E9B: FnCDblVar
  loc_C57E9D: SubR4
  loc_C57E9E: CStrR8
  loc_C57EA0: FStStrNoPop var_A0
  loc_C57EA3: ImpAdCallI2 Replace(, , , , , )
  loc_C57EA8: CVarStr var_93C
  loc_C57EAB: ConcatVar var_94C
  loc_C57EAF: LitVarStr var_95C, ");"
  loc_C57EB4: ConcatVar var_96C
  loc_C57EB8: CStrVarVal var_A4
  loc_C57EBC: Call Proc_261_10_A4592C()
  loc_C57EC1: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_C57ECC: FFreeAd var_648 = "": var_65C = "": var_6A0 = "": var_6B4 = "": var_6F8 = "": var_70C = "": var_750 = "": var_764 = "": var_7A8 = "": var_7BC = "": var_800 = "": var_814 = "": var_858 = "": var_86C = "": var_8C0 = "": var_8D4 = "": var_908 = "": var_91C = "": var_118 = "": var_124 = "": var_168 = "": var_17C = "": var_1E0 = "": var_1F4 = "": var_258 = "": var_26C = "": var_2B0 = "": var_2C4 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_378 = "": var_38C = "": var_3D0 = "": var_3E4 = "": var_428 = "": var_43C = "": var_480 = "": var_494 = "": var_4E8 = "": var_4FC = "": var_540 = "": var_554 = "": var_598 = "": var_5AC = "": var_5F0 = ""
  loc_C57F2F: FFreeVar var_7DC = "": var_7FC = "": var_824 = "": var_834 = "": var_87C = "": var_854 = "": var_88C = "": var_89C = "": var_8E4 = "": var_92C = "": var_8BC = "": var_93C = "": var_94C = "": var_96C = "": var_4A4 = "": var_47C = "": var_4B4 = "": var_4C4 = "": var_4E4 = "": var_50C = "": var_51C = "": var_53C = "": var_564 = "": var_574 = "": var_594 = "": var_5BC = "": var_5CC = "": var_5EC = "": var_614 = "": var_624 = "": var_644 = "": var_66C = "": var_67C = "": var_69C = "": var_6C4 = "": var_6D4 = "": var_6F4 = "": var_71C = "": var_72C = "": var_74C = "": var_774 = "": var_784 = "": var_7A4 = "": var_7CC = "": var_144 = "": var_134 = "": var_154 = "": var_164 = "": var_18C = "": var_19C = "": var_1BC = "": var_1DC = "": var_204 = "": var_214 = "": var_234 = "": var_254 = "": var_27C = "": var_28C = "": var_2AC = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_324 = "": var_344 = "": var_354 = "": var_374 = "": var_39C = "": var_3AC = "": var_3CC = "": var_3F4 = "": var_404 = "": var_424 = "": var_44C = ""
  loc_C57FC6: FLdPr Me
  loc_C57FC9: MemLdPr global_68
  loc_C57FCC: Me.MoveNext
  loc_C57FD1: Branch loc_C575EC
  loc_C57FD4: ExitProcHresult
  loc_C57FD5: FLdFPR4 arg_373
End Sub

Public Sub GenerarCreditosManualesPagosDobles(sExpeCtct) 'C8DEAC
  'Data Table: 410564
  loc_C8C83C: ILdRf sExpeCtct
  loc_C8C83F: FStStrCopy var_88
  loc_C8C842: LitI2_Byte 0
  loc_C8C844: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C8C849: FStFPR8 var_A0
  loc_C8C84C: LitVar_TRUE var_B0
  loc_C8C84F: PopAdLdVar
  loc_C8C850: ImpAdLdRf MemVar_D93A7C
  loc_C8C853: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C8C856: VCallAd Control_ID_
  loc_C8C859: FStAdFunc var_C4
  loc_C8C85C: FLdPr var_C4
  loc_C8C85F: LateIdSt
  loc_C8C864: FFree1Ad var_C4
  loc_C8C867: LitStr "SELECT * FROM  tmp_creditos"
  loc_C8C86A: Call Proc_261_11_A45814()
  loc_C8C86F: FLdRfVar var_C8
  loc_C8C872: FLdPr Me
  loc_C8C875: MemLdPr global_68
  loc_C8C878:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.RecordCount
  loc_C8C87D: ILdRf var_C8
  loc_C8C880: LitI4 0
  loc_C8C885: GtI4
  loc_C8C886: BranchF loc_C8DEAA
  loc_C8C889: FLdPr Me
  loc_C8C88C: MemLdPr global_68
  loc_C8C88F: Me.MoveFirst
  loc_C8C894: LitI2_Byte 0
  loc_C8C896: CR8I2
  loc_C8C897: CVarR4
  loc_C8C89B: PopAdLdVar
  loc_C8C89C: ImpAdLdRf MemVar_D93A7C
  loc_C8C89F: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C8C8A2: VCallAd Control_ID_
  loc_C8C8A5: FStAdFunc var_C4
  loc_C8C8A8: FLdPr var_C4
  loc_C8C8AB: LateIdSt
  loc_C8C8B0: FFree1Ad var_C4
  loc_C8C8B3: FLdRfVar var_C8
  loc_C8C8B6: FLdPr Me
  loc_C8C8B9: MemLdPr global_68
  loc_C8C8BC:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.RecordCount
  loc_C8C8C1: ILdRf var_C8
  loc_C8C8C4: CR8I4
  loc_C8C8C5: CVarR4
  loc_C8C8C9: PopAdLdVar
  loc_C8C8CA: ImpAdLdRf MemVar_D93A7C
  loc_C8C8CD: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C8C8D0: VCallAd Control_ID_
  loc_C8C8D3: FStAdFunc var_C4
  loc_C8C8D6: FLdPr var_C4
  loc_C8C8D9: LateIdSt
  loc_C8C8DE: FFree1Ad var_C4
  loc_C8C8E1: LitI2_Byte 0
  loc_C8C8E3: CR8I2
  loc_C8C8E4: CVarR4
  loc_C8C8E8: PopAdLdVar
  loc_C8C8E9: ImpAdLdRf MemVar_D93A7C
  loc_C8C8EC: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C8C8EF: VCallAd Control_ID_
  loc_C8C8F2: FStAdFunc var_C4
  loc_C8C8F5: FLdPr var_C4
  loc_C8C8F8: LateIdSt
  loc_C8C8FD: FFree1Ad var_C4
  loc_C8C900: FLdRfVar var_CA
  loc_C8C903: FLdPr Me
  loc_C8C906: MemLdPr global_68
  loc_C8C909:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.EOF
  loc_C8C90E: FLdI2 var_CA
  loc_C8C911: NotI4
  loc_C8C912: BranchF loc_C8DEAA
  loc_C8C915: ILdRf var_90
  loc_C8C918: CR8I4
  loc_C8C919: CVarR4
  loc_C8C91D: PopAdLdVar
  loc_C8C91E: ImpAdLdRf MemVar_D93A7C
  loc_C8C921: NewIfNullPr frmCreditosManualesMasivosdePagosDuplicados
  loc_C8C924: VCallAd Control_ID_
  loc_C8C927: FStAdFunc var_C4
  loc_C8C92A: FLdPr var_C4
  loc_C8C92D: LateIdSt
  loc_C8C932: FFree1Ad var_C4
  loc_C8C935: ILdRf var_90
  loc_C8C938: LitI4 1
  loc_C8C93D: AddI4
  loc_C8C93E: FStR4 var_90
  loc_C8C941: LitStr "Municipalidad de Guaymallén"
  loc_C8C944: LitStr "Municipalidad de Guaymallén"
  loc_C8C947: EqStr
  loc_C8C949: BranchF loc_C8D432
  loc_C8C94C: FLdRfVar var_E0
  loc_C8C94F: FLdRfVar var_D0
  loc_C8C952: LitVarStr var_B0, "CodiConcDebi"
  loc_C8C957: PopAdLdVar
  loc_C8C958: FLdRfVar var_C4
  loc_C8C95B: FLdPr Me
  loc_C8C95E: MemLdPr global_68
  loc_C8C961:  = frmCreditosManualesMasivosdePagosDuplicados.Recordset15.Fields
  loc_C8C966: FLdPr var_C4
  loc_C8C969: from_stack_2 = Me.Item(from_stack_1)
  loc_C8C96E: FLdPr var_D0
  loc_C8C971:  = Me.Value
  loc_C8C976: FLdRfVar var_E0
  loc_C8C979: LitVarStr var_C0, "13030202"
  loc_C8C97E: HardType
  loc_C8C97F: NeVarBool
  loc_C8C981: FFreeAd var_C4 = ""
  loc_C8C988: FFree1Var var_E0 = ""
  loc_C8C98B: BranchF loc_C8D3F0
  loc_C8C98E: FLdRfVar var_E0
  loc_C8C991: FLdRfVar var_D0
  loc_C8C994: LitVarStr var_B0, "CodiOfic"
  loc_C8C999: PopAdLdVar
  loc_C8C99A: FLdRfVar var_C4
  loc_C8C99D: FLdPr Me
  loc_C8C9A0: MemLdPr global_68
  loc_C8C9A3:  = Me.Fields
  loc_C8C9A8: FLdPr var_C4
  loc_C8C9AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C8C9B0: FLdPr var_D0
  loc_C8C9B3:  = Me.Value
  loc_C8C9B8: FLdRfVar var_F0
  loc_C8C9BB: FLdRfVar var_F8
  loc_C8C9BE: LitVarStr var_C0, "CuenCtct"
  loc_C8C9C3: PopAdLdVar
  loc_C8C9C4: FLdRfVar var_F4
  loc_C8C9C7: FLdPr Me
  loc_C8C9CA: MemLdPr global_68
  loc_C8C9CD:  = Me.Fields
  loc_C8C9D2: FLdPr var_F4
  loc_C8C9D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C8C9DA: FLdPr var_F8
  loc_C8C9DD:  = Me.Value
  loc_C8C9E2: FLdRfVar var_154
  loc_C8C9E5: FLdRfVar var_110
  loc_C8C9E8: LitVarStr var_10C, "PeriCtct"
  loc_C8C9ED: PopAdLdVar
  loc_C8C9EE: FLdRfVar var_FC
  loc_C8C9F1: FLdPr Me
  loc_C8C9F4: MemLdPr global_68
  loc_C8C9F7:  = Me.Fields
  loc_C8C9FC: FLdPr var_FC
  loc_C8C9FF: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CA04: FLdPr var_110
  loc_C8CA07:  = Me.Value
  loc_C8CA0C: FLdRfVar var_164
  loc_C8CA0F: FLdRfVar var_128
  loc_C8CA12: LitVarStr var_124, "BimeCtct"
  loc_C8CA17: PopAdLdVar
  loc_C8CA18: FLdRfVar var_114
  loc_C8CA1B: FLdPr Me
  loc_C8CA1E: MemLdPr global_68
  loc_C8CA21:  = Me.Fields
  loc_C8CA26: FLdPr var_114
  loc_C8CA29: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CA2E: FLdPr var_128
  loc_C8CA31:  = Me.Value
  loc_C8CA36: FLdRfVar var_174
  loc_C8CA39: FLdRfVar var_140
  loc_C8CA3C: LitVarStr var_13C, "NumeCtct"
  loc_C8CA41: PopAdLdVar
  loc_C8CA42: FLdRfVar var_12C
  loc_C8CA45: FLdPr Me
  loc_C8CA48: MemLdPr global_68
  loc_C8CA4B:  = Me.Fields
  loc_C8CA50: FLdPr var_12C
  loc_C8CA53: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CA58: FLdPr var_140
  loc_C8CA5B:  = Me.Value
  loc_C8CA60: FLdRfVar var_CA
  loc_C8CA63: FLdRfVar var_174
  loc_C8CA66: CI4Var
  loc_C8CA68: FLdRfVar var_164
  loc_C8CA6B: CI2Var
  loc_C8CA6C: FLdRfVar var_154
  loc_C8CA6F: CI2Var
  loc_C8CA70: FLdRfVar var_F0
  loc_C8CA73: CStrVarTmp
  loc_C8CA74: FStStrNoPop var_144
  loc_C8CA77: FLdRfVar var_E0
  loc_C8CA7A: CI2Var
  loc_C8CA7B: FLdRfVar var_8C
  loc_C8CA7E: NewIfNullPr clsctacte
  loc_C8CA81: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C8CA86: FLdI2 var_CA
  loc_C8CA89: CStrUI1
  loc_C8CA8B: FStStr var_98
  loc_C8CA8E: FFree1Str var_144
  loc_C8CA91: FFreeAd var_C4 = "": var_F4 = "": var_FC = "": var_114 = "": var_12C = "": var_D0 = "": var_F8 = "": var_110 = "": var_128 = ""
  loc_C8CAA8: FFreeVar var_E0 = "": var_F0 = "": var_154 = "": var_164 = ""
  loc_C8CAB5: ILdRf var_98
  loc_C8CAB8: CR8Str
  loc_C8CABA: LitI2_Byte 0
  loc_C8CABC: CR8I2
  loc_C8CABD: GtR4
  loc_C8CABE: BranchF loc_C8CEC2
  loc_C8CAC1: ILdRf var_98
  loc_C8CAC4: CR8Str
  loc_C8CAC6: LitI2_Byte 1
  loc_C8CAC8: CR8I2
  loc_C8CAC9: AddR8
  loc_C8CACA: CStrR8
  loc_C8CACC: FStStr var_98
  loc_C8CACF: FLdRfVar var_5B4
  loc_C8CAD2: FLdRfVar var_5A4
  loc_C8CAD5: LitVarStr var_5A0, "SaldCtct"
  loc_C8CADA: PopAdLdVar
  loc_C8CADB: FLdRfVar var_590
  loc_C8CADE: FLdPr Me
  loc_C8CAE1: MemLdPr global_68
  loc_C8CAE4:  = Me.Fields
  loc_C8CAE9: FLdPr var_590
  loc_C8CAEC: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CAF1: FLdPr var_5A4
  loc_C8CAF4:  = Me.Value
  loc_C8CAF9: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_C8CAFC: LitStr " VALUES ("
  loc_C8CAFF: ConcatStr
  loc_C8CB00: CVarStr var_F0
  loc_C8CB03: FLdRfVar var_E0
  loc_C8CB06: FLdRfVar var_D0
  loc_C8CB09: LitVarStr var_B0, "CodiOfic"
  loc_C8CB0E: PopAdLdVar
  loc_C8CB0F: FLdRfVar var_C4
  loc_C8CB12: FLdPr Me
  loc_C8CB15: MemLdPr global_68
  loc_C8CB18:  = Me.Fields
  loc_C8CB1D: FLdPr var_C4
  loc_C8CB20: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CB25: FLdPr var_D0
  loc_C8CB28:  = Me.Value
  loc_C8CB2D: FLdRfVar var_E0
  loc_C8CB30: ConcatVar var_154
  loc_C8CB34: LitVarStr var_C0, ",'"
  loc_C8CB39: ConcatVar var_164
  loc_C8CB3D: FLdRfVar var_174
  loc_C8CB40: FLdRfVar var_F8
  loc_C8CB43: LitVarStr var_10C, "CuenCtct"
  loc_C8CB48: PopAdLdVar
  loc_C8CB49: FLdRfVar var_F4
  loc_C8CB4C: FLdPr Me
  loc_C8CB4F: MemLdPr global_68
  loc_C8CB52:  = Me.Fields
  loc_C8CB57: FLdPr var_F4
  loc_C8CB5A: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CB5F: FLdPr var_F8
  loc_C8CB62:  = Me.Value
  loc_C8CB67: FLdRfVar var_174
  loc_C8CB6A: ConcatVar var_184
  loc_C8CB6E: LitVarStr var_124, "',"
  loc_C8CB73: ConcatVar var_194
  loc_C8CB77: FLdRfVar var_1A4
  loc_C8CB7A: FLdRfVar var_110
  loc_C8CB7D: LitVarStr var_13C, "PeriCtct"
  loc_C8CB82: PopAdLdVar
  loc_C8CB83: FLdRfVar var_FC
  loc_C8CB86: FLdPr Me
  loc_C8CB89: MemLdPr global_68
  loc_C8CB8C:  = Me.Fields
  loc_C8CB91: FLdPr var_FC
  loc_C8CB94: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CB99: FLdPr var_110
  loc_C8CB9C:  = Me.Value
  loc_C8CBA1: FLdRfVar var_1A4
  loc_C8CBA4: ConcatVar var_1B4
  loc_C8CBA8: LitVarStr var_1C4, ","
  loc_C8CBAD: ConcatVar var_1D4
  loc_C8CBB1: FLdRfVar var_1F4
  loc_C8CBB4: FLdRfVar var_128
  loc_C8CBB7: LitVarStr var_1E4, "BimeCtct"
  loc_C8CBBC: PopAdLdVar
  loc_C8CBBD: FLdRfVar var_114
  loc_C8CBC0: FLdPr Me
  loc_C8CBC3: MemLdPr global_68
  loc_C8CBC6:  = Me.Fields
  loc_C8CBCB: FLdPr var_114
  loc_C8CBCE: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CBD3: FLdPr var_128
  loc_C8CBD6:  = Me.Value
  loc_C8CBDB: FLdRfVar var_1F4
  loc_C8CBDE: ConcatVar var_204
  loc_C8CBE2: LitVarStr var_214, ","
  loc_C8CBE7: ConcatVar var_224
  loc_C8CBEB: FLdRfVar var_244
  loc_C8CBEE: FLdRfVar var_140
  loc_C8CBF1: LitVarStr var_234, "NumeCtct"
  loc_C8CBF6: PopAdLdVar
  loc_C8CBF7: FLdRfVar var_12C
  loc_C8CBFA: FLdPr Me
  loc_C8CBFD: MemLdPr global_68
  loc_C8CC00:  = Me.Fields
  loc_C8CC05: FLdPr var_12C
  loc_C8CC08: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CC0D: FLdPr var_140
  loc_C8CC10:  = Me.Value
  loc_C8CC15: FLdRfVar var_244
  loc_C8CC18: ConcatVar var_254
  loc_C8CC1C: LitVarStr var_264, ","
  loc_C8CC21: ConcatVar var_274
  loc_C8CC25: ILdRf var_98
  loc_C8CC28: CVarStr var_284
  loc_C8CC2B: ConcatVar var_294
  loc_C8CC2F: LitVarStr var_2A4, ",0,0,0,0,'"
  loc_C8CC34: ConcatVar var_2B4
  loc_C8CC38: FLdRfVar var_2DC
  loc_C8CC3B: FLdRfVar var_2CC
  loc_C8CC3E: LitVarStr var_2C8, "TipoCtct"
  loc_C8CC43: PopAdLdVar
  loc_C8CC44: FLdRfVar var_2B8
  loc_C8CC47: FLdPr Me
  loc_C8CC4A: MemLdPr global_68
  loc_C8CC4D:  = Me.Fields
  loc_C8CC52: FLdPr var_2B8
  loc_C8CC55: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CC5A: FLdPr var_2CC
  loc_C8CC5D:  = Me.Value
  loc_C8CC62: FLdRfVar var_2DC
  loc_C8CC65: ConcatVar var_2EC
  loc_C8CC69: LitVarStr var_2FC, "','"
  loc_C8CC6E: ConcatVar var_30C
  loc_C8CC72: LitI4 1
  loc_C8CC77: LitI4 1
  loc_C8CC7C: LitVarStr var_32C, "yyyy-mm-dd"
  loc_C8CC81: FStVarCopyObj var_33C
  loc_C8CC84: FLdRfVar var_33C
  loc_C8CC87: FLdRfVar var_A0
  loc_C8CC8A: CVarRef
  loc_C8CC8F: ImpAdCallI2 Format$(, )
  loc_C8CC94: CVarStr var_34C
  loc_C8CC97: ConcatVar var_35C
  loc_C8CC9B: LitVarStr var_36C, "','"
  loc_C8CCA0: ConcatVar var_37C
  loc_C8CCA4: LitI4 1
  loc_C8CCA9: LitI4 1
  loc_C8CCAE: LitVarStr var_39C, "yyyy-mm-dd"
  loc_C8CCB3: FStVarCopyObj var_3AC
  loc_C8CCB6: FLdRfVar var_3AC
  loc_C8CCB9: FLdRfVar var_A0
  loc_C8CCBC: CVarRef
  loc_C8CCC1: ImpAdCallI2 Format$(, )
  loc_C8CCC6: CVarStr var_3BC
  loc_C8CCC9: ConcatVar var_3CC
  loc_C8CCCD: LitVarStr var_3DC, "',Null,0,"
  loc_C8CCD2: ConcatVar var_3EC
  loc_C8CCD6: FLdRfVar var_414
  loc_C8CCD9: FLdRfVar var_404
  loc_C8CCDC: LitVarStr var_400, "PeriInfo"
  loc_C8CCE1: PopAdLdVar
  loc_C8CCE2: FLdRfVar var_3F0
  loc_C8CCE5: FLdPr Me
  loc_C8CCE8: MemLdPr global_68
  loc_C8CCEB:  = Me.Fields
  loc_C8CCF0: FLdPr var_3F0
  loc_C8CCF3: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CCF8: FLdPr var_404
  loc_C8CCFB:  = Me.Value
  loc_C8CD00: FLdRfVar var_414
  loc_C8CD03: ConcatVar var_424
  loc_C8CD07: LitVarStr var_434, ",'"
  loc_C8CD0C: ConcatVar var_444
  loc_C8CD10: FLdRfVar var_46C
  loc_C8CD13: FLdRfVar var_45C
  loc_C8CD16: LitVarStr var_458, "CodiConc"
  loc_C8CD1B: PopAdLdVar
  loc_C8CD1C: FLdRfVar var_448
  loc_C8CD1F: FLdPr Me
  loc_C8CD22: MemLdPr global_68
  loc_C8CD25:  = Me.Fields
  loc_C8CD2A: FLdPr var_448
  loc_C8CD2D: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CD32: FLdPr var_45C
  loc_C8CD35:  = Me.Value
  loc_C8CD3A: FLdRfVar var_46C
  loc_C8CD3D: ConcatVar var_47C
  loc_C8CD41: LitVarStr var_48C, "',"
  loc_C8CD46: ConcatVar var_49C
  loc_C8CD4A: FLdRfVar var_4C4
  loc_C8CD4D: FLdRfVar var_4B4
  loc_C8CD50: LitVarStr var_4B0, "CodiFapa"
  loc_C8CD55: PopAdLdVar
  loc_C8CD56: FLdRfVar var_4A0
  loc_C8CD59: FLdPr Me
  loc_C8CD5C: MemLdPr global_68
  loc_C8CD5F:  = Me.Fields
  loc_C8CD64: FLdPr var_4A0
  loc_C8CD67: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CD6C: FLdPr var_4B4
  loc_C8CD6F:  = Me.Value
  loc_C8CD74: FLdRfVar var_4C4
  loc_C8CD77: ConcatVar var_4D4
  loc_C8CD7B: LitVarStr var_4E4, ",0,"
  loc_C8CD80: ConcatVar var_4F4
  loc_C8CD84: FLdRfVar var_51C
  loc_C8CD87: FLdRfVar var_50C
  loc_C8CD8A: LitVarStr var_508, "NumeApre"
  loc_C8CD8F: PopAdLdVar
  loc_C8CD90: FLdRfVar var_4F8
  loc_C8CD93: FLdPr Me
  loc_C8CD96: MemLdPr global_68
  loc_C8CD99:  = Me.Fields
  loc_C8CD9E: FLdPr var_4F8
  loc_C8CDA1: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CDA6: FLdPr var_50C
  loc_C8CDA9:  = Me.Value
  loc_C8CDAE: FLdRfVar var_51C
  loc_C8CDB1: ConcatVar var_52C
  loc_C8CDB5: LitVarStr var_53C, ",10,'"
  loc_C8CDBA: ConcatVar var_54C
  loc_C8CDBE: ILdRf var_88
  loc_C8CDC1: CVarStr var_55C
  loc_C8CDC4: ConcatVar var_56C
  loc_C8CDC8: LitVarStr var_57C, "','',0,0,'Debito Automatico',"
  loc_C8CDCD: ConcatVar var_58C
  loc_C8CDD1: LitI4 0
  loc_C8CDD6: LitI4 -1
  loc_C8CDDB: LitI4 1
  loc_C8CDE0: LitStr "."
  loc_C8CDE3: LitStr ","
  loc_C8CDE6: FLdRfVar var_5B4
  loc_C8CDE9: LitVarI2 var_5C4, -1
  loc_C8CDEE: MulVar var_5D4
  loc_C8CDF2: CStrVarVal var_144
  loc_C8CDF6: ImpAdCallI2 Replace(, , , , , )
  loc_C8CDFB: CVarStr var_5E4
  loc_C8CDFE: ConcatVar var_5F4
  loc_C8CE02: LitVarStr var_604, ",0,'"
  loc_C8CE07: ConcatVar var_614
  loc_C8CE0B: ImpAdLdI4 MemVar_D9302C
  loc_C8CE0E: CVarStr var_624
  loc_C8CE11: ConcatVar var_634
  loc_C8CE15: LitVarStr var_644, "');"
  loc_C8CE1A: ConcatVar var_654
  loc_C8CE1E: CStrVarVal var_658
  loc_C8CE22: Call Proc_261_10_A4592C()
  loc_C8CE27: FFreeStr var_144 = ""
  loc_C8CE2E: FFreeAd var_C4 = "": var_D0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_128 = "": var_12C = "": var_140 = "": var_2B8 = "": var_2CC = "": var_3F0 = "": var_404 = "": var_448 = "": var_45C = "": var_4A0 = "": var_4B4 = "": var_4F8 = "": var_50C = "": var_590 = ""
  loc_C8CE5D: FFreeVar var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_49C = "": var_4C4 = "": var_4D4 = "": var_4F4 = "": var_51C = "": var_52C = "": var_54C = "": var_56C = "": var_5B4 = "": var_58C = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_634 = "": var_654 = "": var_F0 = "": var_E0 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_33C = "": var_30C = "": var_34C = "": var_35C = "": var_3AC = "": var_37C = "": var_3BC = "": var_3CC = "": var_3EC = ""
  loc_C8CEC2: FLdRfVar var_E0
  loc_C8CEC5: FLdRfVar var_D0
  loc_C8CEC8: LitVarStr var_B0, "CodiOficDebi"
  loc_C8CECD: PopAdLdVar
  loc_C8CECE: FLdRfVar var_C4
  loc_C8CED1: FLdPr Me
  loc_C8CED4: MemLdPr global_68
  loc_C8CED7:  = Me.Fields
  loc_C8CEDC: FLdPr var_C4
  loc_C8CEDF: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CEE4: FLdPr var_D0
  loc_C8CEE7:  = Me.Value
  loc_C8CEEC: FLdRfVar var_F0
  loc_C8CEEF: FLdRfVar var_F8
  loc_C8CEF2: LitVarStr var_C0, "CuenCtctDebi"
  loc_C8CEF7: PopAdLdVar
  loc_C8CEF8: FLdRfVar var_F4
  loc_C8CEFB: FLdPr Me
  loc_C8CEFE: MemLdPr global_68
  loc_C8CF01:  = Me.Fields
  loc_C8CF06: FLdPr var_F4
  loc_C8CF09: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CF0E: FLdPr var_F8
  loc_C8CF11:  = Me.Value
  loc_C8CF16: FLdRfVar var_154
  loc_C8CF19: FLdRfVar var_110
  loc_C8CF1C: LitVarStr var_10C, "PeriCtctDebi"
  loc_C8CF21: PopAdLdVar
  loc_C8CF22: FLdRfVar var_FC
  loc_C8CF25: FLdPr Me
  loc_C8CF28: MemLdPr global_68
  loc_C8CF2B:  = Me.Fields
  loc_C8CF30: FLdPr var_FC
  loc_C8CF33: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CF38: FLdPr var_110
  loc_C8CF3B:  = Me.Value
  loc_C8CF40: FLdRfVar var_164
  loc_C8CF43: FLdRfVar var_128
  loc_C8CF46: LitVarStr var_124, "BimeCtctDebi"
  loc_C8CF4B: PopAdLdVar
  loc_C8CF4C: FLdRfVar var_114
  loc_C8CF4F: FLdPr Me
  loc_C8CF52: MemLdPr global_68
  loc_C8CF55:  = Me.Fields
  loc_C8CF5A: FLdPr var_114
  loc_C8CF5D: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CF62: FLdPr var_128
  loc_C8CF65:  = Me.Value
  loc_C8CF6A: FLdRfVar var_174
  loc_C8CF6D: FLdRfVar var_140
  loc_C8CF70: LitVarStr var_13C, "NumeCtctDebi"
  loc_C8CF75: PopAdLdVar
  loc_C8CF76: FLdRfVar var_12C
  loc_C8CF79: FLdPr Me
  loc_C8CF7C: MemLdPr global_68
  loc_C8CF7F:  = Me.Fields
  loc_C8CF84: FLdPr var_12C
  loc_C8CF87: from_stack_2 = Me.Item(from_stack_1)
  loc_C8CF8C: FLdPr var_140
  loc_C8CF8F:  = Me.Value
  loc_C8CF94: FLdRfVar var_CA
  loc_C8CF97: FLdRfVar var_174
  loc_C8CF9A: CI4Var
  loc_C8CF9C: FLdRfVar var_164
  loc_C8CF9F: CI2Var
  loc_C8CFA0: FLdRfVar var_154
  loc_C8CFA3: CI2Var
  loc_C8CFA4: FLdRfVar var_F0
  loc_C8CFA7: CStrVarTmp
  loc_C8CFA8: FStStrNoPop var_144
  loc_C8CFAB: FLdRfVar var_E0
  loc_C8CFAE: CI2Var
  loc_C8CFAF: FLdRfVar var_8C
  loc_C8CFB2: NewIfNullPr clsctacte
  loc_C8CFB5: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C8CFBA: FLdI2 var_CA
  loc_C8CFBD: CStrUI1
  loc_C8CFBF: FStStr var_98
  loc_C8CFC2: FFree1Str var_144
  loc_C8CFC5: FFreeAd var_C4 = "": var_F4 = "": var_FC = "": var_114 = "": var_12C = "": var_D0 = "": var_F8 = "": var_110 = "": var_128 = ""
  loc_C8CFDC: FFreeVar var_E0 = "": var_F0 = "": var_154 = "": var_164 = ""
  loc_C8CFE9: ILdRf var_98
  loc_C8CFEC: CR8Str
  loc_C8CFEE: LitI2_Byte 0
  loc_C8CFF0: CR8I2
  loc_C8CFF1: GtR4
  loc_C8CFF2: BranchF loc_C8D3ED
  loc_C8CFF5: ILdRf var_98
  loc_C8CFF8: CR8Str
  loc_C8CFFA: LitI2_Byte 1
  loc_C8CFFC: CR8I2
  loc_C8CFFD: AddR8
  loc_C8CFFE: CStrR8
  loc_C8D000: FStStr var_98
  loc_C8D003: FLdRfVar var_5B4
  loc_C8D006: FLdRfVar var_5A4
  loc_C8D009: LitVarStr var_5A0, "SaldCtctDebi"
  loc_C8D00E: PopAdLdVar
  loc_C8D00F: FLdRfVar var_590
  loc_C8D012: FLdPr Me
  loc_C8D015: MemLdPr global_68
  loc_C8D018:  = Me.Fields
  loc_C8D01D: FLdPr var_590
  loc_C8D020: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D025: FLdPr var_5A4
  loc_C8D028:  = Me.Value
  loc_C8D02D: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_C8D030: LitStr " VALUES ("
  loc_C8D033: ConcatStr
  loc_C8D034: CVarStr var_F0
  loc_C8D037: FLdRfVar var_E0
  loc_C8D03A: FLdRfVar var_D0
  loc_C8D03D: LitVarStr var_B0, "CodiOficDebi"
  loc_C8D042: PopAdLdVar
  loc_C8D043: FLdRfVar var_C4
  loc_C8D046: FLdPr Me
  loc_C8D049: MemLdPr global_68
  loc_C8D04C:  = Me.Fields
  loc_C8D051: FLdPr var_C4
  loc_C8D054: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D059: FLdPr var_D0
  loc_C8D05C:  = Me.Value
  loc_C8D061: FLdRfVar var_E0
  loc_C8D064: ConcatVar var_154
  loc_C8D068: LitVarStr var_C0, ",'"
  loc_C8D06D: ConcatVar var_164
  loc_C8D071: FLdRfVar var_174
  loc_C8D074: FLdRfVar var_F8
  loc_C8D077: LitVarStr var_10C, "CuenCtctDebi"
  loc_C8D07C: PopAdLdVar
  loc_C8D07D: FLdRfVar var_F4
  loc_C8D080: FLdPr Me
  loc_C8D083: MemLdPr global_68
  loc_C8D086:  = Me.Fields
  loc_C8D08B: FLdPr var_F4
  loc_C8D08E: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D093: FLdPr var_F8
  loc_C8D096:  = Me.Value
  loc_C8D09B: FLdRfVar var_174
  loc_C8D09E: ConcatVar var_184
  loc_C8D0A2: LitVarStr var_124, "',"
  loc_C8D0A7: ConcatVar var_194
  loc_C8D0AB: FLdRfVar var_1A4
  loc_C8D0AE: FLdRfVar var_110
  loc_C8D0B1: LitVarStr var_13C, "PeriCtctDebi"
  loc_C8D0B6: PopAdLdVar
  loc_C8D0B7: FLdRfVar var_FC
  loc_C8D0BA: FLdPr Me
  loc_C8D0BD: MemLdPr global_68
  loc_C8D0C0:  = Me.Fields
  loc_C8D0C5: FLdPr var_FC
  loc_C8D0C8: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D0CD: FLdPr var_110
  loc_C8D0D0:  = Me.Value
  loc_C8D0D5: FLdRfVar var_1A4
  loc_C8D0D8: ConcatVar var_1B4
  loc_C8D0DC: LitVarStr var_1C4, ","
  loc_C8D0E1: ConcatVar var_1D4
  loc_C8D0E5: FLdRfVar var_1F4
  loc_C8D0E8: FLdRfVar var_128
  loc_C8D0EB: LitVarStr var_1E4, "BimeCtctDebi"
  loc_C8D0F0: PopAdLdVar
  loc_C8D0F1: FLdRfVar var_114
  loc_C8D0F4: FLdPr Me
  loc_C8D0F7: MemLdPr global_68
  loc_C8D0FA:  = Me.Fields
  loc_C8D0FF: FLdPr var_114
  loc_C8D102: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D107: FLdPr var_128
  loc_C8D10A:  = Me.Value
  loc_C8D10F: FLdRfVar var_1F4
  loc_C8D112: ConcatVar var_204
  loc_C8D116: LitVarStr var_214, ","
  loc_C8D11B: ConcatVar var_224
  loc_C8D11F: FLdRfVar var_244
  loc_C8D122: FLdRfVar var_140
  loc_C8D125: LitVarStr var_234, "NumeCtctDebi"
  loc_C8D12A: PopAdLdVar
  loc_C8D12B: FLdRfVar var_12C
  loc_C8D12E: FLdPr Me
  loc_C8D131: MemLdPr global_68
  loc_C8D134:  = Me.Fields
  loc_C8D139: FLdPr var_12C
  loc_C8D13C: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D141: FLdPr var_140
  loc_C8D144:  = Me.Value
  loc_C8D149: FLdRfVar var_244
  loc_C8D14C: ConcatVar var_254
  loc_C8D150: LitVarStr var_264, ","
  loc_C8D155: ConcatVar var_274
  loc_C8D159: ILdRf var_98
  loc_C8D15C: CVarStr var_284
  loc_C8D15F: ConcatVar var_294
  loc_C8D163: LitVarStr var_2A4, ",0,0,0,0,'"
  loc_C8D168: ConcatVar var_2B4
  loc_C8D16C: FLdRfVar var_2DC
  loc_C8D16F: FLdRfVar var_2CC
  loc_C8D172: LitVarStr var_2C8, "TipoCtctDebi"
  loc_C8D177: PopAdLdVar
  loc_C8D178: FLdRfVar var_2B8
  loc_C8D17B: FLdPr Me
  loc_C8D17E: MemLdPr global_68
  loc_C8D181:  = Me.Fields
  loc_C8D186: FLdPr var_2B8
  loc_C8D189: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D18E: FLdPr var_2CC
  loc_C8D191:  = Me.Value
  loc_C8D196: FLdRfVar var_2DC
  loc_C8D199: ConcatVar var_2EC
  loc_C8D19D: LitVarStr var_2FC, "','"
  loc_C8D1A2: ConcatVar var_30C
  loc_C8D1A6: LitI4 1
  loc_C8D1AB: LitI4 1
  loc_C8D1B0: LitVarStr var_32C, "yyyy-mm-dd"
  loc_C8D1B5: FStVarCopyObj var_33C
  loc_C8D1B8: FLdRfVar var_33C
  loc_C8D1BB: FLdRfVar var_A0
  loc_C8D1BE: CVarRef
  loc_C8D1C3: ImpAdCallI2 Format$(, )
  loc_C8D1C8: CVarStr var_34C
  loc_C8D1CB: ConcatVar var_35C
  loc_C8D1CF: LitVarStr var_36C, "','"
  loc_C8D1D4: ConcatVar var_37C
  loc_C8D1D8: LitI4 1
  loc_C8D1DD: LitI4 1
  loc_C8D1E2: LitVarStr var_39C, "yyyy-mm-dd"
  loc_C8D1E7: FStVarCopyObj var_3AC
  loc_C8D1EA: FLdRfVar var_3AC
  loc_C8D1ED: FLdRfVar var_A0
  loc_C8D1F0: CVarRef
  loc_C8D1F5: ImpAdCallI2 Format$(, )
  loc_C8D1FA: CVarStr var_3BC
  loc_C8D1FD: ConcatVar var_3CC
  loc_C8D201: LitVarStr var_3DC, "',Null,0,"
  loc_C8D206: ConcatVar var_3EC
  loc_C8D20A: FLdRfVar var_414
  loc_C8D20D: FLdRfVar var_404
  loc_C8D210: LitVarStr var_400, "PeriInfoDebi"
  loc_C8D215: PopAdLdVar
  loc_C8D216: FLdRfVar var_3F0
  loc_C8D219: FLdPr Me
  loc_C8D21C: MemLdPr global_68
  loc_C8D21F:  = Me.Fields
  loc_C8D224: FLdPr var_3F0
  loc_C8D227: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D22C: FLdPr var_404
  loc_C8D22F:  = Me.Value
  loc_C8D234: FLdRfVar var_414
  loc_C8D237: ConcatVar var_424
  loc_C8D23B: LitVarStr var_434, ",'"
  loc_C8D240: ConcatVar var_444
  loc_C8D244: FLdRfVar var_46C
  loc_C8D247: FLdRfVar var_45C
  loc_C8D24A: LitVarStr var_458, "CodiConcDebi"
  loc_C8D24F: PopAdLdVar
  loc_C8D250: FLdRfVar var_448
  loc_C8D253: FLdPr Me
  loc_C8D256: MemLdPr global_68
  loc_C8D259:  = Me.Fields
  loc_C8D25E: FLdPr var_448
  loc_C8D261: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D266: FLdPr var_45C
  loc_C8D269:  = Me.Value
  loc_C8D26E: FLdRfVar var_46C
  loc_C8D271: ConcatVar var_47C
  loc_C8D275: LitVarStr var_48C, "',"
  loc_C8D27A: ConcatVar var_49C
  loc_C8D27E: FLdRfVar var_4C4
  loc_C8D281: FLdRfVar var_4B4
  loc_C8D284: LitVarStr var_4B0, "CodiFapaDebi"
  loc_C8D289: PopAdLdVar
  loc_C8D28A: FLdRfVar var_4A0
  loc_C8D28D: FLdPr Me
  loc_C8D290: MemLdPr global_68
  loc_C8D293:  = Me.Fields
  loc_C8D298: FLdPr var_4A0
  loc_C8D29B: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D2A0: FLdPr var_4B4
  loc_C8D2A3:  = Me.Value
  loc_C8D2A8: FLdRfVar var_4C4
  loc_C8D2AB: ConcatVar var_4D4
  loc_C8D2AF: LitVarStr var_4E4, ",0,"
  loc_C8D2B4: ConcatVar var_4F4
  loc_C8D2B8: FLdRfVar var_51C
  loc_C8D2BB: FLdRfVar var_50C
  loc_C8D2BE: LitVarStr var_508, "NumeApreDebi"
  loc_C8D2C3: PopAdLdVar
  loc_C8D2C4: FLdRfVar var_4F8
  loc_C8D2C7: FLdPr Me
  loc_C8D2CA: MemLdPr global_68
  loc_C8D2CD:  = Me.Fields
  loc_C8D2D2: FLdPr var_4F8
  loc_C8D2D5: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D2DA: FLdPr var_50C
  loc_C8D2DD:  = Me.Value
  loc_C8D2E2: FLdRfVar var_51C
  loc_C8D2E5: ConcatVar var_52C
  loc_C8D2E9: LitVarStr var_53C, ",11,'"
  loc_C8D2EE: ConcatVar var_54C
  loc_C8D2F2: ILdRf var_88
  loc_C8D2F5: CVarStr var_55C
  loc_C8D2F8: ConcatVar var_56C
  loc_C8D2FC: LitVarStr var_57C, "','',0,0,'Credito Automatico',0,"
  loc_C8D301: ConcatVar var_58C
  loc_C8D305: LitI4 0
  loc_C8D30A: LitI4 -1
  loc_C8D30F: LitI4 1
  loc_C8D314: LitStr "."
  loc_C8D317: LitStr ","
  loc_C8D31A: FLdRfVar var_5B4
  loc_C8D31D: CStrVarTmp
  loc_C8D31E: FStStrNoPop var_144
  loc_C8D321: ImpAdCallI2 Replace(, , , , , )
  loc_C8D326: CVarStr var_5D4
  loc_C8D329: ConcatVar var_5E4
  loc_C8D32D: LitVarStr var_5C4, ",'"
  loc_C8D332: ConcatVar var_5F4
  loc_C8D336: ImpAdLdI4 MemVar_D9302C
  loc_C8D339: CVarStr var_604
  loc_C8D33C: ConcatVar var_614
  loc_C8D340: LitVarStr var_624, "');"
  loc_C8D345: ConcatVar var_634
  loc_C8D349: CStrVarVal var_658
  loc_C8D34D: Call Proc_261_10_A4592C()
  loc_C8D352: FFreeStr var_144 = ""
  loc_C8D359: FFreeAd var_C4 = "": var_D0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_128 = "": var_12C = "": var_140 = "": var_2B8 = "": var_2CC = "": var_3F0 = "": var_404 = "": var_448 = "": var_45C = "": var_4A0 = "": var_4B4 = "": var_4F8 = "": var_50C = "": var_590 = ""
  loc_C8D388: FFreeVar var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_49C = "": var_4C4 = "": var_4D4 = "": var_4F4 = "": var_51C = "": var_52C = "": var_54C = "": var_56C = "": var_5B4 = "": var_58C = "": var_5D4 = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_634 = "": var_F0 = "": var_E0 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_33C = "": var_30C = "": var_34C = "": var_35C = "": var_3AC = "": var_37C = "": var_3BC = "": var_3CC = "": var_3EC = ""
  loc_C8D3ED: Branch loc_C8D432
  loc_C8D3F0: FLdRfVar var_E0
  loc_C8D3F3: FLdRfVar var_D0
  loc_C8D3F6: LitVarStr var_B0, "CodiConcDebi"
  loc_C8D3FB: PopAdLdVar
  loc_C8D3FC: FLdRfVar var_C4
  loc_C8D3FF: FLdPr Me
  loc_C8D402: MemLdPr global_68
  loc_C8D405:  = Me.Fields
  loc_C8D40A: FLdPr var_C4
  loc_C8D40D: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D412: FLdPr var_D0
  loc_C8D415:  = Me.Value
  loc_C8D41A: FLdRfVar var_E0
  loc_C8D41D: LitVarStr var_C0, "13030202"
  loc_C8D422: HardType
  loc_C8D423: EqVarBool
  loc_C8D425: FFreeAd var_C4 = ""
  loc_C8D42C: FFree1Var var_E0 = ""
  loc_C8D42F: BranchF loc_C8D432
  loc_C8D432: LitStr "Municipalidad de Guaymallén"
  loc_C8D435: LitStr "Municipalidad de Tunuyán"
  loc_C8D438: EqStr
  loc_C8D43A: BranchF loc_C8DE9C
  loc_C8D43D: FLdRfVar var_E0
  loc_C8D440: FLdRfVar var_D0
  loc_C8D443: LitVarStr var_B0, "CodiOfic"
  loc_C8D448: PopAdLdVar
  loc_C8D449: FLdRfVar var_C4
  loc_C8D44C: FLdPr Me
  loc_C8D44F: MemLdPr global_68
  loc_C8D452:  = Me.Fields
  loc_C8D457: FLdPr var_C4
  loc_C8D45A: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D45F: FLdPr var_D0
  loc_C8D462:  = Me.Value
  loc_C8D467: FLdRfVar var_F0
  loc_C8D46A: FLdRfVar var_F8
  loc_C8D46D: LitVarStr var_C0, "CuenCtct"
  loc_C8D472: PopAdLdVar
  loc_C8D473: FLdRfVar var_F4
  loc_C8D476: FLdPr Me
  loc_C8D479: MemLdPr global_68
  loc_C8D47C:  = Me.Fields
  loc_C8D481: FLdPr var_F4
  loc_C8D484: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D489: FLdPr var_F8
  loc_C8D48C:  = Me.Value
  loc_C8D491: FLdRfVar var_154
  loc_C8D494: FLdRfVar var_110
  loc_C8D497: LitVarStr var_10C, "PeriCtct"
  loc_C8D49C: PopAdLdVar
  loc_C8D49D: FLdRfVar var_FC
  loc_C8D4A0: FLdPr Me
  loc_C8D4A3: MemLdPr global_68
  loc_C8D4A6:  = Me.Fields
  loc_C8D4AB: FLdPr var_FC
  loc_C8D4AE: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D4B3: FLdPr var_110
  loc_C8D4B6:  = Me.Value
  loc_C8D4BB: FLdRfVar var_164
  loc_C8D4BE: FLdRfVar var_128
  loc_C8D4C1: LitVarStr var_124, "BimeCtct"
  loc_C8D4C6: PopAdLdVar
  loc_C8D4C7: FLdRfVar var_114
  loc_C8D4CA: FLdPr Me
  loc_C8D4CD: MemLdPr global_68
  loc_C8D4D0:  = Me.Fields
  loc_C8D4D5: FLdPr var_114
  loc_C8D4D8: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D4DD: FLdPr var_128
  loc_C8D4E0:  = Me.Value
  loc_C8D4E5: FLdRfVar var_174
  loc_C8D4E8: FLdRfVar var_140
  loc_C8D4EB: LitVarStr var_13C, "NumeCtct"
  loc_C8D4F0: PopAdLdVar
  loc_C8D4F1: FLdRfVar var_12C
  loc_C8D4F4: FLdPr Me
  loc_C8D4F7: MemLdPr global_68
  loc_C8D4FA:  = Me.Fields
  loc_C8D4FF: FLdPr var_12C
  loc_C8D502: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D507: FLdPr var_140
  loc_C8D50A:  = Me.Value
  loc_C8D50F: FLdRfVar var_CA
  loc_C8D512: FLdRfVar var_174
  loc_C8D515: CI4Var
  loc_C8D517: FLdRfVar var_164
  loc_C8D51A: CI2Var
  loc_C8D51B: FLdRfVar var_154
  loc_C8D51E: CI2Var
  loc_C8D51F: FLdRfVar var_F0
  loc_C8D522: CStrVarTmp
  loc_C8D523: FStStrNoPop var_144
  loc_C8D526: FLdRfVar var_E0
  loc_C8D529: CI2Var
  loc_C8D52A: FLdRfVar var_8C
  loc_C8D52D: NewIfNullPr clsctacte
  loc_C8D530: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C8D535: FLdI2 var_CA
  loc_C8D538: CStrUI1
  loc_C8D53A: FStStr var_98
  loc_C8D53D: FFree1Str var_144
  loc_C8D540: FFreeAd var_C4 = "": var_F4 = "": var_FC = "": var_114 = "": var_12C = "": var_D0 = "": var_F8 = "": var_110 = "": var_128 = ""
  loc_C8D557: FFreeVar var_E0 = "": var_F0 = "": var_154 = "": var_164 = ""
  loc_C8D564: ILdRf var_98
  loc_C8D567: CR8Str
  loc_C8D569: LitI2_Byte 0
  loc_C8D56B: CR8I2
  loc_C8D56C: GtR4
  loc_C8D56D: BranchF loc_C8D971
  loc_C8D570: ILdRf var_98
  loc_C8D573: CR8Str
  loc_C8D575: LitI2_Byte 1
  loc_C8D577: CR8I2
  loc_C8D578: AddR8
  loc_C8D579: CStrR8
  loc_C8D57B: FStStr var_98
  loc_C8D57E: FLdRfVar var_5B4
  loc_C8D581: FLdRfVar var_5A4
  loc_C8D584: LitVarStr var_5A0, "SaldCtct"
  loc_C8D589: PopAdLdVar
  loc_C8D58A: FLdRfVar var_590
  loc_C8D58D: FLdPr Me
  loc_C8D590: MemLdPr global_68
  loc_C8D593:  = Me.Fields
  loc_C8D598: FLdPr var_590
  loc_C8D59B: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D5A0: FLdPr var_5A4
  loc_C8D5A3:  = Me.Value
  loc_C8D5A8: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_C8D5AB: LitStr " VALUES ("
  loc_C8D5AE: ConcatStr
  loc_C8D5AF: CVarStr var_F0
  loc_C8D5B2: FLdRfVar var_E0
  loc_C8D5B5: FLdRfVar var_D0
  loc_C8D5B8: LitVarStr var_B0, "CodiOfic"
  loc_C8D5BD: PopAdLdVar
  loc_C8D5BE: FLdRfVar var_C4
  loc_C8D5C1: FLdPr Me
  loc_C8D5C4: MemLdPr global_68
  loc_C8D5C7:  = Me.Fields
  loc_C8D5CC: FLdPr var_C4
  loc_C8D5CF: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D5D4: FLdPr var_D0
  loc_C8D5D7:  = Me.Value
  loc_C8D5DC: FLdRfVar var_E0
  loc_C8D5DF: ConcatVar var_154
  loc_C8D5E3: LitVarStr var_C0, ",'"
  loc_C8D5E8: ConcatVar var_164
  loc_C8D5EC: FLdRfVar var_174
  loc_C8D5EF: FLdRfVar var_F8
  loc_C8D5F2: LitVarStr var_10C, "CuenCtct"
  loc_C8D5F7: PopAdLdVar
  loc_C8D5F8: FLdRfVar var_F4
  loc_C8D5FB: FLdPr Me
  loc_C8D5FE: MemLdPr global_68
  loc_C8D601:  = Me.Fields
  loc_C8D606: FLdPr var_F4
  loc_C8D609: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D60E: FLdPr var_F8
  loc_C8D611:  = Me.Value
  loc_C8D616: FLdRfVar var_174
  loc_C8D619: ConcatVar var_184
  loc_C8D61D: LitVarStr var_124, "',"
  loc_C8D622: ConcatVar var_194
  loc_C8D626: FLdRfVar var_1A4
  loc_C8D629: FLdRfVar var_110
  loc_C8D62C: LitVarStr var_13C, "PeriCtct"
  loc_C8D631: PopAdLdVar
  loc_C8D632: FLdRfVar var_FC
  loc_C8D635: FLdPr Me
  loc_C8D638: MemLdPr global_68
  loc_C8D63B:  = Me.Fields
  loc_C8D640: FLdPr var_FC
  loc_C8D643: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D648: FLdPr var_110
  loc_C8D64B:  = Me.Value
  loc_C8D650: FLdRfVar var_1A4
  loc_C8D653: ConcatVar var_1B4
  loc_C8D657: LitVarStr var_1C4, ","
  loc_C8D65C: ConcatVar var_1D4
  loc_C8D660: FLdRfVar var_1F4
  loc_C8D663: FLdRfVar var_128
  loc_C8D666: LitVarStr var_1E4, "BimeCtct"
  loc_C8D66B: PopAdLdVar
  loc_C8D66C: FLdRfVar var_114
  loc_C8D66F: FLdPr Me
  loc_C8D672: MemLdPr global_68
  loc_C8D675:  = Me.Fields
  loc_C8D67A: FLdPr var_114
  loc_C8D67D: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D682: FLdPr var_128
  loc_C8D685:  = Me.Value
  loc_C8D68A: FLdRfVar var_1F4
  loc_C8D68D: ConcatVar var_204
  loc_C8D691: LitVarStr var_214, ","
  loc_C8D696: ConcatVar var_224
  loc_C8D69A: FLdRfVar var_244
  loc_C8D69D: FLdRfVar var_140
  loc_C8D6A0: LitVarStr var_234, "NumeCtct"
  loc_C8D6A5: PopAdLdVar
  loc_C8D6A6: FLdRfVar var_12C
  loc_C8D6A9: FLdPr Me
  loc_C8D6AC: MemLdPr global_68
  loc_C8D6AF:  = Me.Fields
  loc_C8D6B4: FLdPr var_12C
  loc_C8D6B7: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D6BC: FLdPr var_140
  loc_C8D6BF:  = Me.Value
  loc_C8D6C4: FLdRfVar var_244
  loc_C8D6C7: ConcatVar var_254
  loc_C8D6CB: LitVarStr var_264, ","
  loc_C8D6D0: ConcatVar var_274
  loc_C8D6D4: ILdRf var_98
  loc_C8D6D7: CVarStr var_284
  loc_C8D6DA: ConcatVar var_294
  loc_C8D6DE: LitVarStr var_2A4, ",0,0,0,0,'"
  loc_C8D6E3: ConcatVar var_2B4
  loc_C8D6E7: FLdRfVar var_2DC
  loc_C8D6EA: FLdRfVar var_2CC
  loc_C8D6ED: LitVarStr var_2C8, "TipoCtct"
  loc_C8D6F2: PopAdLdVar
  loc_C8D6F3: FLdRfVar var_2B8
  loc_C8D6F6: FLdPr Me
  loc_C8D6F9: MemLdPr global_68
  loc_C8D6FC:  = Me.Fields
  loc_C8D701: FLdPr var_2B8
  loc_C8D704: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D709: FLdPr var_2CC
  loc_C8D70C:  = Me.Value
  loc_C8D711: FLdRfVar var_2DC
  loc_C8D714: ConcatVar var_2EC
  loc_C8D718: LitVarStr var_2FC, "','"
  loc_C8D71D: ConcatVar var_30C
  loc_C8D721: LitI4 1
  loc_C8D726: LitI4 1
  loc_C8D72B: LitVarStr var_32C, "yyyy-mm-dd"
  loc_C8D730: FStVarCopyObj var_33C
  loc_C8D733: FLdRfVar var_33C
  loc_C8D736: FLdRfVar var_A0
  loc_C8D739: CVarRef
  loc_C8D73E: ImpAdCallI2 Format$(, )
  loc_C8D743: CVarStr var_34C
  loc_C8D746: ConcatVar var_35C
  loc_C8D74A: LitVarStr var_36C, "','"
  loc_C8D74F: ConcatVar var_37C
  loc_C8D753: LitI4 1
  loc_C8D758: LitI4 1
  loc_C8D75D: LitVarStr var_39C, "yyyy-mm-dd"
  loc_C8D762: FStVarCopyObj var_3AC
  loc_C8D765: FLdRfVar var_3AC
  loc_C8D768: FLdRfVar var_A0
  loc_C8D76B: CVarRef
  loc_C8D770: ImpAdCallI2 Format$(, )
  loc_C8D775: CVarStr var_3BC
  loc_C8D778: ConcatVar var_3CC
  loc_C8D77C: LitVarStr var_3DC, "',Null,0,"
  loc_C8D781: ConcatVar var_3EC
  loc_C8D785: FLdRfVar var_414
  loc_C8D788: FLdRfVar var_404
  loc_C8D78B: LitVarStr var_400, "PeriInfo"
  loc_C8D790: PopAdLdVar
  loc_C8D791: FLdRfVar var_3F0
  loc_C8D794: FLdPr Me
  loc_C8D797: MemLdPr global_68
  loc_C8D79A:  = Me.Fields
  loc_C8D79F: FLdPr var_3F0
  loc_C8D7A2: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D7A7: FLdPr var_404
  loc_C8D7AA:  = Me.Value
  loc_C8D7AF: FLdRfVar var_414
  loc_C8D7B2: ConcatVar var_424
  loc_C8D7B6: LitVarStr var_434, ",'"
  loc_C8D7BB: ConcatVar var_444
  loc_C8D7BF: FLdRfVar var_46C
  loc_C8D7C2: FLdRfVar var_45C
  loc_C8D7C5: LitVarStr var_458, "CodiConc"
  loc_C8D7CA: PopAdLdVar
  loc_C8D7CB: FLdRfVar var_448
  loc_C8D7CE: FLdPr Me
  loc_C8D7D1: MemLdPr global_68
  loc_C8D7D4:  = Me.Fields
  loc_C8D7D9: FLdPr var_448
  loc_C8D7DC: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D7E1: FLdPr var_45C
  loc_C8D7E4:  = Me.Value
  loc_C8D7E9: FLdRfVar var_46C
  loc_C8D7EC: ConcatVar var_47C
  loc_C8D7F0: LitVarStr var_48C, "',"
  loc_C8D7F5: ConcatVar var_49C
  loc_C8D7F9: FLdRfVar var_4C4
  loc_C8D7FC: FLdRfVar var_4B4
  loc_C8D7FF: LitVarStr var_4B0, "CodiFapa"
  loc_C8D804: PopAdLdVar
  loc_C8D805: FLdRfVar var_4A0
  loc_C8D808: FLdPr Me
  loc_C8D80B: MemLdPr global_68
  loc_C8D80E:  = Me.Fields
  loc_C8D813: FLdPr var_4A0
  loc_C8D816: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D81B: FLdPr var_4B4
  loc_C8D81E:  = Me.Value
  loc_C8D823: FLdRfVar var_4C4
  loc_C8D826: ConcatVar var_4D4
  loc_C8D82A: LitVarStr var_4E4, ",0,"
  loc_C8D82F: ConcatVar var_4F4
  loc_C8D833: FLdRfVar var_51C
  loc_C8D836: FLdRfVar var_50C
  loc_C8D839: LitVarStr var_508, "NumeApre"
  loc_C8D83E: PopAdLdVar
  loc_C8D83F: FLdRfVar var_4F8
  loc_C8D842: FLdPr Me
  loc_C8D845: MemLdPr global_68
  loc_C8D848:  = Me.Fields
  loc_C8D84D: FLdPr var_4F8
  loc_C8D850: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D855: FLdPr var_50C
  loc_C8D858:  = Me.Value
  loc_C8D85D: FLdRfVar var_51C
  loc_C8D860: ConcatVar var_52C
  loc_C8D864: LitVarStr var_53C, ",10,'"
  loc_C8D869: ConcatVar var_54C
  loc_C8D86D: ILdRf var_88
  loc_C8D870: CVarStr var_55C
  loc_C8D873: ConcatVar var_56C
  loc_C8D877: LitVarStr var_57C, "',0,0,'Debito Automatico',"
  loc_C8D87C: ConcatVar var_58C
  loc_C8D880: LitI4 0
  loc_C8D885: LitI4 -1
  loc_C8D88A: LitI4 1
  loc_C8D88F: LitStr "."
  loc_C8D892: LitStr ","
  loc_C8D895: FLdRfVar var_5B4
  loc_C8D898: LitVarI2 var_5C4, -1
  loc_C8D89D: MulVar var_5D4
  loc_C8D8A1: CStrVarVal var_144
  loc_C8D8A5: ImpAdCallI2 Replace(, , , , , )
  loc_C8D8AA: CVarStr var_5E4
  loc_C8D8AD: ConcatVar var_5F4
  loc_C8D8B1: LitVarStr var_604, ",0,'"
  loc_C8D8B6: ConcatVar var_614
  loc_C8D8BA: ImpAdLdI4 MemVar_D9302C
  loc_C8D8BD: CVarStr var_624
  loc_C8D8C0: ConcatVar var_634
  loc_C8D8C4: LitVarStr var_644, "');"
  loc_C8D8C9: ConcatVar var_654
  loc_C8D8CD: CStrVarVal var_658
  loc_C8D8D1: Call Proc_261_10_A4592C()
  loc_C8D8D6: FFreeStr var_144 = ""
  loc_C8D8DD: FFreeAd var_C4 = "": var_D0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_128 = "": var_12C = "": var_140 = "": var_2B8 = "": var_2CC = "": var_3F0 = "": var_404 = "": var_448 = "": var_45C = "": var_4A0 = "": var_4B4 = "": var_4F8 = "": var_50C = "": var_590 = ""
  loc_C8D90C: FFreeVar var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_49C = "": var_4C4 = "": var_4D4 = "": var_4F4 = "": var_51C = "": var_52C = "": var_54C = "": var_56C = "": var_5B4 = "": var_58C = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_634 = "": var_654 = "": var_F0 = "": var_E0 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_33C = "": var_30C = "": var_34C = "": var_35C = "": var_3AC = "": var_37C = "": var_3BC = "": var_3CC = "": var_3EC = ""
  loc_C8D971: FLdRfVar var_E0
  loc_C8D974: FLdRfVar var_D0
  loc_C8D977: LitVarStr var_B0, "CodiOficDebi"
  loc_C8D97C: PopAdLdVar
  loc_C8D97D: FLdRfVar var_C4
  loc_C8D980: FLdPr Me
  loc_C8D983: MemLdPr global_68
  loc_C8D986:  = Me.Fields
  loc_C8D98B: FLdPr var_C4
  loc_C8D98E: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D993: FLdPr var_D0
  loc_C8D996:  = Me.Value
  loc_C8D99B: FLdRfVar var_F0
  loc_C8D99E: FLdRfVar var_F8
  loc_C8D9A1: LitVarStr var_C0, "CuenCtctDebi"
  loc_C8D9A6: PopAdLdVar
  loc_C8D9A7: FLdRfVar var_F4
  loc_C8D9AA: FLdPr Me
  loc_C8D9AD: MemLdPr global_68
  loc_C8D9B0:  = Me.Fields
  loc_C8D9B5: FLdPr var_F4
  loc_C8D9B8: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D9BD: FLdPr var_F8
  loc_C8D9C0:  = Me.Value
  loc_C8D9C5: FLdRfVar var_154
  loc_C8D9C8: FLdRfVar var_110
  loc_C8D9CB: LitVarStr var_10C, "PeriCtctDebi"
  loc_C8D9D0: PopAdLdVar
  loc_C8D9D1: FLdRfVar var_FC
  loc_C8D9D4: FLdPr Me
  loc_C8D9D7: MemLdPr global_68
  loc_C8D9DA:  = Me.Fields
  loc_C8D9DF: FLdPr var_FC
  loc_C8D9E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C8D9E7: FLdPr var_110
  loc_C8D9EA:  = Me.Value
  loc_C8D9EF: FLdRfVar var_164
  loc_C8D9F2: FLdRfVar var_128
  loc_C8D9F5: LitVarStr var_124, "BimeCtctDebi"
  loc_C8D9FA: PopAdLdVar
  loc_C8D9FB: FLdRfVar var_114
  loc_C8D9FE: FLdPr Me
  loc_C8DA01: MemLdPr global_68
  loc_C8DA04:  = Me.Fields
  loc_C8DA09: FLdPr var_114
  loc_C8DA0C: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DA11: FLdPr var_128
  loc_C8DA14:  = Me.Value
  loc_C8DA19: FLdRfVar var_174
  loc_C8DA1C: FLdRfVar var_140
  loc_C8DA1F: LitVarStr var_13C, "NumeCtctDebi"
  loc_C8DA24: PopAdLdVar
  loc_C8DA25: FLdRfVar var_12C
  loc_C8DA28: FLdPr Me
  loc_C8DA2B: MemLdPr global_68
  loc_C8DA2E:  = Me.Fields
  loc_C8DA33: FLdPr var_12C
  loc_C8DA36: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DA3B: FLdPr var_140
  loc_C8DA3E:  = Me.Value
  loc_C8DA43: FLdRfVar var_CA
  loc_C8DA46: FLdRfVar var_174
  loc_C8DA49: CI4Var
  loc_C8DA4B: FLdRfVar var_164
  loc_C8DA4E: CI2Var
  loc_C8DA4F: FLdRfVar var_154
  loc_C8DA52: CI2Var
  loc_C8DA53: FLdRfVar var_F0
  loc_C8DA56: CStrVarTmp
  loc_C8DA57: FStStrNoPop var_144
  loc_C8DA5A: FLdRfVar var_E0
  loc_C8DA5D: CI2Var
  loc_C8DA5E: FLdRfVar var_8C
  loc_C8DA61: NewIfNullPr clsctacte
  loc_C8DA64: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_C8DA69: FLdI2 var_CA
  loc_C8DA6C: CStrUI1
  loc_C8DA6E: FStStr var_98
  loc_C8DA71: FFree1Str var_144
  loc_C8DA74: FFreeAd var_C4 = "": var_F4 = "": var_FC = "": var_114 = "": var_12C = "": var_D0 = "": var_F8 = "": var_110 = "": var_128 = ""
  loc_C8DA8B: FFreeVar var_E0 = "": var_F0 = "": var_154 = "": var_164 = ""
  loc_C8DA98: ILdRf var_98
  loc_C8DA9B: CR8Str
  loc_C8DA9D: LitI2_Byte 0
  loc_C8DA9F: CR8I2
  loc_C8DAA0: GtR4
  loc_C8DAA1: BranchF loc_C8DE9C
  loc_C8DAA4: ILdRf var_98
  loc_C8DAA7: CR8Str
  loc_C8DAA9: LitI2_Byte 1
  loc_C8DAAB: CR8I2
  loc_C8DAAC: AddR8
  loc_C8DAAD: CStrR8
  loc_C8DAAF: FStStr var_98
  loc_C8DAB2: FLdRfVar var_5B4
  loc_C8DAB5: FLdRfVar var_5A4
  loc_C8DAB8: LitVarStr var_5A0, "SaldCtctDebi"
  loc_C8DABD: PopAdLdVar
  loc_C8DABE: FLdRfVar var_590
  loc_C8DAC1: FLdPr Me
  loc_C8DAC4: MemLdPr global_68
  loc_C8DAC7:  = Me.Fields
  loc_C8DACC: FLdPr var_590
  loc_C8DACF: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DAD4: FLdPr var_5A4
  loc_C8DAD7:  = Me.Value
  loc_C8DADC: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, CodiUsua) "
  loc_C8DADF: LitStr " VALUES ("
  loc_C8DAE2: ConcatStr
  loc_C8DAE3: CVarStr var_F0
  loc_C8DAE6: FLdRfVar var_E0
  loc_C8DAE9: FLdRfVar var_D0
  loc_C8DAEC: LitVarStr var_B0, "CodiOficDebi"
  loc_C8DAF1: PopAdLdVar
  loc_C8DAF2: FLdRfVar var_C4
  loc_C8DAF5: FLdPr Me
  loc_C8DAF8: MemLdPr global_68
  loc_C8DAFB:  = Me.Fields
  loc_C8DB00: FLdPr var_C4
  loc_C8DB03: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DB08: FLdPr var_D0
  loc_C8DB0B:  = Me.Value
  loc_C8DB10: FLdRfVar var_E0
  loc_C8DB13: ConcatVar var_154
  loc_C8DB17: LitVarStr var_C0, ",'"
  loc_C8DB1C: ConcatVar var_164
  loc_C8DB20: FLdRfVar var_174
  loc_C8DB23: FLdRfVar var_F8
  loc_C8DB26: LitVarStr var_10C, "CuenCtctDebi"
  loc_C8DB2B: PopAdLdVar
  loc_C8DB2C: FLdRfVar var_F4
  loc_C8DB2F: FLdPr Me
  loc_C8DB32: MemLdPr global_68
  loc_C8DB35:  = Me.Fields
  loc_C8DB3A: FLdPr var_F4
  loc_C8DB3D: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DB42: FLdPr var_F8
  loc_C8DB45:  = Me.Value
  loc_C8DB4A: FLdRfVar var_174
  loc_C8DB4D: ConcatVar var_184
  loc_C8DB51: LitVarStr var_124, "',"
  loc_C8DB56: ConcatVar var_194
  loc_C8DB5A: FLdRfVar var_1A4
  loc_C8DB5D: FLdRfVar var_110
  loc_C8DB60: LitVarStr var_13C, "PeriCtctDebi"
  loc_C8DB65: PopAdLdVar
  loc_C8DB66: FLdRfVar var_FC
  loc_C8DB69: FLdPr Me
  loc_C8DB6C: MemLdPr global_68
  loc_C8DB6F:  = Me.Fields
  loc_C8DB74: FLdPr var_FC
  loc_C8DB77: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DB7C: FLdPr var_110
  loc_C8DB7F:  = Me.Value
  loc_C8DB84: FLdRfVar var_1A4
  loc_C8DB87: ConcatVar var_1B4
  loc_C8DB8B: LitVarStr var_1C4, ","
  loc_C8DB90: ConcatVar var_1D4
  loc_C8DB94: FLdRfVar var_1F4
  loc_C8DB97: FLdRfVar var_128
  loc_C8DB9A: LitVarStr var_1E4, "BimeCtctDebi"
  loc_C8DB9F: PopAdLdVar
  loc_C8DBA0: FLdRfVar var_114
  loc_C8DBA3: FLdPr Me
  loc_C8DBA6: MemLdPr global_68
  loc_C8DBA9:  = Me.Fields
  loc_C8DBAE: FLdPr var_114
  loc_C8DBB1: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DBB6: FLdPr var_128
  loc_C8DBB9:  = Me.Value
  loc_C8DBBE: FLdRfVar var_1F4
  loc_C8DBC1: ConcatVar var_204
  loc_C8DBC5: LitVarStr var_214, ","
  loc_C8DBCA: ConcatVar var_224
  loc_C8DBCE: FLdRfVar var_244
  loc_C8DBD1: FLdRfVar var_140
  loc_C8DBD4: LitVarStr var_234, "NumeCtctDebi"
  loc_C8DBD9: PopAdLdVar
  loc_C8DBDA: FLdRfVar var_12C
  loc_C8DBDD: FLdPr Me
  loc_C8DBE0: MemLdPr global_68
  loc_C8DBE3:  = Me.Fields
  loc_C8DBE8: FLdPr var_12C
  loc_C8DBEB: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DBF0: FLdPr var_140
  loc_C8DBF3:  = Me.Value
  loc_C8DBF8: FLdRfVar var_244
  loc_C8DBFB: ConcatVar var_254
  loc_C8DBFF: LitVarStr var_264, ","
  loc_C8DC04: ConcatVar var_274
  loc_C8DC08: ILdRf var_98
  loc_C8DC0B: CVarStr var_284
  loc_C8DC0E: ConcatVar var_294
  loc_C8DC12: LitVarStr var_2A4, ",0,0,0,0,'"
  loc_C8DC17: ConcatVar var_2B4
  loc_C8DC1B: FLdRfVar var_2DC
  loc_C8DC1E: FLdRfVar var_2CC
  loc_C8DC21: LitVarStr var_2C8, "TipoCtctDebi"
  loc_C8DC26: PopAdLdVar
  loc_C8DC27: FLdRfVar var_2B8
  loc_C8DC2A: FLdPr Me
  loc_C8DC2D: MemLdPr global_68
  loc_C8DC30:  = Me.Fields
  loc_C8DC35: FLdPr var_2B8
  loc_C8DC38: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DC3D: FLdPr var_2CC
  loc_C8DC40:  = Me.Value
  loc_C8DC45: FLdRfVar var_2DC
  loc_C8DC48: ConcatVar var_2EC
  loc_C8DC4C: LitVarStr var_2FC, "','"
  loc_C8DC51: ConcatVar var_30C
  loc_C8DC55: LitI4 1
  loc_C8DC5A: LitI4 1
  loc_C8DC5F: LitVarStr var_32C, "yyyy-mm-dd"
  loc_C8DC64: FStVarCopyObj var_33C
  loc_C8DC67: FLdRfVar var_33C
  loc_C8DC6A: FLdRfVar var_A0
  loc_C8DC6D: CVarRef
  loc_C8DC72: ImpAdCallI2 Format$(, )
  loc_C8DC77: CVarStr var_34C
  loc_C8DC7A: ConcatVar var_35C
  loc_C8DC7E: LitVarStr var_36C, "','"
  loc_C8DC83: ConcatVar var_37C
  loc_C8DC87: LitI4 1
  loc_C8DC8C: LitI4 1
  loc_C8DC91: LitVarStr var_39C, "yyyy-mm-dd"
  loc_C8DC96: FStVarCopyObj var_3AC
  loc_C8DC99: FLdRfVar var_3AC
  loc_C8DC9C: FLdRfVar var_A0
  loc_C8DC9F: CVarRef
  loc_C8DCA4: ImpAdCallI2 Format$(, )
  loc_C8DCA9: CVarStr var_3BC
  loc_C8DCAC: ConcatVar var_3CC
  loc_C8DCB0: LitVarStr var_3DC, "',Null,0,"
  loc_C8DCB5: ConcatVar var_3EC
  loc_C8DCB9: FLdRfVar var_414
  loc_C8DCBC: FLdRfVar var_404
  loc_C8DCBF: LitVarStr var_400, "PeriInfoDebi"
  loc_C8DCC4: PopAdLdVar
  loc_C8DCC5: FLdRfVar var_3F0
  loc_C8DCC8: FLdPr Me
  loc_C8DCCB: MemLdPr global_68
  loc_C8DCCE:  = Me.Fields
  loc_C8DCD3: FLdPr var_3F0
  loc_C8DCD6: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DCDB: FLdPr var_404
  loc_C8DCDE:  = Me.Value
  loc_C8DCE3: FLdRfVar var_414
  loc_C8DCE6: ConcatVar var_424
  loc_C8DCEA: LitVarStr var_434, ",'"
  loc_C8DCEF: ConcatVar var_444
  loc_C8DCF3: FLdRfVar var_46C
  loc_C8DCF6: FLdRfVar var_45C
  loc_C8DCF9: LitVarStr var_458, "CodiConcDebi"
  loc_C8DCFE: PopAdLdVar
  loc_C8DCFF: FLdRfVar var_448
  loc_C8DD02: FLdPr Me
  loc_C8DD05: MemLdPr global_68
  loc_C8DD08:  = Me.Fields
  loc_C8DD0D: FLdPr var_448
  loc_C8DD10: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DD15: FLdPr var_45C
  loc_C8DD18:  = Me.Value
  loc_C8DD1D: FLdRfVar var_46C
  loc_C8DD20: ConcatVar var_47C
  loc_C8DD24: LitVarStr var_48C, "',"
  loc_C8DD29: ConcatVar var_49C
  loc_C8DD2D: FLdRfVar var_4C4
  loc_C8DD30: FLdRfVar var_4B4
  loc_C8DD33: LitVarStr var_4B0, "CodiFapaDebi"
  loc_C8DD38: PopAdLdVar
  loc_C8DD39: FLdRfVar var_4A0
  loc_C8DD3C: FLdPr Me
  loc_C8DD3F: MemLdPr global_68
  loc_C8DD42:  = Me.Fields
  loc_C8DD47: FLdPr var_4A0
  loc_C8DD4A: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DD4F: FLdPr var_4B4
  loc_C8DD52:  = Me.Value
  loc_C8DD57: FLdRfVar var_4C4
  loc_C8DD5A: ConcatVar var_4D4
  loc_C8DD5E: LitVarStr var_4E4, ",0,"
  loc_C8DD63: ConcatVar var_4F4
  loc_C8DD67: FLdRfVar var_51C
  loc_C8DD6A: FLdRfVar var_50C
  loc_C8DD6D: LitVarStr var_508, "NumeApreDebi"
  loc_C8DD72: PopAdLdVar
  loc_C8DD73: FLdRfVar var_4F8
  loc_C8DD76: FLdPr Me
  loc_C8DD79: MemLdPr global_68
  loc_C8DD7C:  = Me.Fields
  loc_C8DD81: FLdPr var_4F8
  loc_C8DD84: from_stack_2 = Me.Item(from_stack_1)
  loc_C8DD89: FLdPr var_50C
  loc_C8DD8C:  = Me.Value
  loc_C8DD91: FLdRfVar var_51C
  loc_C8DD94: ConcatVar var_52C
  loc_C8DD98: LitVarStr var_53C, ",11,'"
  loc_C8DD9D: ConcatVar var_54C
  loc_C8DDA1: ILdRf var_88
  loc_C8DDA4: CVarStr var_55C
  loc_C8DDA7: ConcatVar var_56C
  loc_C8DDAB: LitVarStr var_57C, "',0,0,'Credito Automatico',0,"
  loc_C8DDB0: ConcatVar var_58C
  loc_C8DDB4: LitI4 0
  loc_C8DDB9: LitI4 -1
  loc_C8DDBE: LitI4 1
  loc_C8DDC3: LitStr "."
  loc_C8DDC6: LitStr ","
  loc_C8DDC9: FLdRfVar var_5B4
  loc_C8DDCC: CStrVarTmp
  loc_C8DDCD: FStStrNoPop var_144
  loc_C8DDD0: ImpAdCallI2 Replace(, , , , , )
  loc_C8DDD5: CVarStr var_5D4
  loc_C8DDD8: ConcatVar var_5E4
  loc_C8DDDC: LitVarStr var_5C4, ",'"
  loc_C8DDE1: ConcatVar var_5F4
  loc_C8DDE5: ImpAdLdI4 MemVar_D9302C
  loc_C8DDE8: CVarStr var_604
  loc_C8DDEB: ConcatVar var_614
  loc_C8DDEF: LitVarStr var_624, "');"
  loc_C8DDF4: ConcatVar var_634
  loc_C8DDF8: CStrVarVal var_658
  loc_C8DDFC: Call Proc_261_10_A4592C()
  loc_C8DE01: FFreeStr var_144 = ""
  loc_C8DE08: FFreeAd var_C4 = "": var_D0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_110 = "": var_114 = "": var_128 = "": var_12C = "": var_140 = "": var_2B8 = "": var_2CC = "": var_3F0 = "": var_404 = "": var_448 = "": var_45C = "": var_4A0 = "": var_4B4 = "": var_4F8 = "": var_50C = "": var_590 = ""
  loc_C8DE37: FFreeVar var_424 = "": var_444 = "": var_46C = "": var_47C = "": var_49C = "": var_4C4 = "": var_4D4 = "": var_4F4 = "": var_51C = "": var_52C = "": var_54C = "": var_56C = "": var_5B4 = "": var_58C = "": var_5D4 = "": var_5E4 = "": var_5F4 = "": var_614 = "": var_634 = "": var_F0 = "": var_E0 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1D4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_244 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_33C = "": var_30C = "": var_34C = "": var_35C = "": var_3AC = "": var_37C = "": var_3BC = "": var_3CC = "": var_3EC = ""
  loc_C8DE9C: FLdPr Me
  loc_C8DE9F: MemLdPr global_68
  loc_C8DEA2: Me.MoveNext
  loc_C8DEA7: Branch loc_C8C900
  loc_C8DEAA: ExitProcHresult
End Sub

Public Sub ContracargosRevertirBoleto(iPeriBole, lNumeBole, sExpeCtct, iIdEpagos, lNumeCont) 'D25778
  'Data Table: 410564
  loc_D21C88: ILdRf sExpeCtct
  loc_D21C8B: FStStrCopy var_88
  loc_D21C8E: LitI2_Byte 0
  loc_D21C90: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_D21C95: FStFPR8 var_A0
  loc_D21C98: FLdFPR8 var_A0
  loc_D21C9B: CStrDate
  loc_D21C9D: FStStr var_B8
  loc_D21CA0: LitI2 150
  loc_D21CA3: CUI1I2
  loc_D21CA5: FStUI1 var_BA
  loc_D21CA9: LitStr "SELECT IFNULL(MAX(NumeAcpa),0) as NumeAcpa FROM ingrrent "
  loc_D21CAC: LitStr " WHERE FechInre = '"
  loc_D21CAF: ConcatStr
  loc_D21CB0: FStStrNoPop var_104
  loc_D21CB3: LitI4 1
  loc_D21CB8: LitI4 1
  loc_D21CBD: LitVarStr var_F0, "yyyy-mm-dd"
  loc_D21CC2: FStVarCopyObj var_100
  loc_D21CC5: FLdRfVar var_100
  loc_D21CC8: FLdRfVar var_B8
  loc_D21CCB: CVarRef
  loc_D21CD0: ImpAdCallI2 Format$(, )
  loc_D21CD5: FStStrNoPop var_108
  loc_D21CD8: ConcatStr
  loc_D21CD9: FStStrNoPop var_10C
  loc_D21CDC: LitStr "' ANd IdContra > 0 ORDER BY FechInre"
  loc_D21CDF: ConcatStr
  loc_D21CE0: FStStrNoPop var_110
  loc_D21CE3: Call Proc_261_10_A4592C()
  loc_D21CE8: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_D21CF3: FFree1Var var_100 = ""
  loc_D21CF6: FLdRfVar var_114
  loc_D21CF9: FLdPr Me
  loc_D21CFC: MemLdPr global_64
  loc_D21CFF:  = Me.RecordCount
  loc_D21D04: ILdRf var_114
  loc_D21D07: LitI4 0
  loc_D21D0C: GtI4
  loc_D21D0D: BranchF loc_D21DA7
  loc_D21D10: FLdRfVar var_100
  loc_D21D13: FLdRfVar var_11C
  loc_D21D16: LitVarStr var_E0, "NumeAcpa"
  loc_D21D1B: PopAdLdVar
  loc_D21D1C: FLdRfVar var_118
  loc_D21D1F: FLdPr Me
  loc_D21D22: MemLdPr global_64
  loc_D21D25:  = Me.Fields
  loc_D21D2A: FLdPr var_118
  loc_D21D2D: from_stack_2 = Me.Item(from_stack_1)
  loc_D21D32: FLdPr var_11C
  loc_D21D35:  = Me.Value
  loc_D21D3A: FLdRfVar var_100
  loc_D21D3D: FnCIntVar
  loc_D21D3F: LitI2_Byte 0
  loc_D21D41: EqI2
  loc_D21D42: FFreeAd var_118 = ""
  loc_D21D49: FFree1Var var_100 = ""
  loc_D21D4C: BranchF loc_D21D5A
  loc_D21D4F: LitI2_Byte &H64
  loc_D21D51: CUI1I2
  loc_D21D53: FStUI1 var_B2
  loc_D21D57: Branch loc_D21DA4
  loc_D21D5A: FLdRfVar var_100
  loc_D21D5D: FLdRfVar var_11C
  loc_D21D60: LitVarStr var_E0, "NumeAcpa"
  loc_D21D65: PopAdLdVar
  loc_D21D66: FLdRfVar var_118
  loc_D21D69: FLdPr Me
  loc_D21D6C: MemLdPr global_64
  loc_D21D6F:  = Me.Fields
  loc_D21D74: FLdPr var_118
  loc_D21D77: from_stack_2 = Me.Item(from_stack_1)
  loc_D21D7C: FLdPr var_11C
  loc_D21D7F:  = Me.Value
  loc_D21D84: FLdRfVar var_100
  loc_D21D87: LitVarI2 var_F0, 1
  loc_D21D8C: AddVar var_12C
  loc_D21D90: CUI1Var
  loc_D21D92: FStUI1 var_B2
  loc_D21D96: FFreeAd var_118 = ""
  loc_D21D9D: FFreeVar var_100 = ""
  loc_D21DA4: Branch loc_D21DAF
  loc_D21DA7: LitI2_Byte &H64
  loc_D21DA9: CUI1I2
  loc_D21DAB: FStUI1 var_B2
  loc_D21DAF: LitStr "SELECT * FROM boleto WHERE PeriBole = "
  loc_D21DB2: FLdI2 iPeriBole
  loc_D21DB5: CStrUI1
  loc_D21DB7: FStStrNoPop var_104
  loc_D21DBA: ConcatStr
  loc_D21DBB: FStStrNoPop var_108
  loc_D21DBE: LitStr " ANd NumeBole = "
  loc_D21DC1: ConcatStr
  loc_D21DC2: FStStrNoPop var_10C
  loc_D21DC5: ILdRf lNumeBole
  loc_D21DC8: CStrI4
  loc_D21DCA: FStStrNoPop var_110
  loc_D21DCD: ConcatStr
  loc_D21DCE: FStStrNoPop var_130
  loc_D21DD1: Call Proc_261_11_A45814()
  loc_D21DD6: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_D21DE3: FLdRfVar var_114
  loc_D21DE6: FLdPr Me
  loc_D21DE9: MemLdPr global_68
  loc_D21DEC:  = Me.RecordCount
  loc_D21DF1: ILdRf var_114
  loc_D21DF4: LitI4 1
  loc_D21DF9: EqI4
  loc_D21DFA: BranchF loc_D25776
  loc_D21DFD: LitStr " INSERT INTO contracargo (PeriBole, NumeBole, NumeExpe, IdEpagos, NumeCont, AltaUsua) "
  loc_D21E00: LitStr " VALUES ("
  loc_D21E03: ConcatStr
  loc_D21E04: FStStrNoPop var_104
  loc_D21E07: FLdI2 iPeriBole
  loc_D21E0A: CStrUI1
  loc_D21E0C: FStStrNoPop var_108
  loc_D21E0F: ConcatStr
  loc_D21E10: FStStrNoPop var_10C
  loc_D21E13: LitStr ","
  loc_D21E16: ConcatStr
  loc_D21E17: FStStrNoPop var_110
  loc_D21E1A: ILdRf lNumeBole
  loc_D21E1D: CStrI4
  loc_D21E1F: FStStrNoPop var_130
  loc_D21E22: ConcatStr
  loc_D21E23: FStStrNoPop var_134
  loc_D21E26: LitStr ",'"
  loc_D21E29: ConcatStr
  loc_D21E2A: FStStrNoPop var_138
  loc_D21E2D: ILdRf var_88
  loc_D21E30: ConcatStr
  loc_D21E31: FStStrNoPop var_13C
  loc_D21E34: LitStr "',"
  loc_D21E37: ConcatStr
  loc_D21E38: FStStrNoPop var_140
  loc_D21E3B: ILdRf iIdEpagos
  loc_D21E3E: CStrI4
  loc_D21E40: FStStrNoPop var_144
  loc_D21E43: ConcatStr
  loc_D21E44: FStStrNoPop var_148
  loc_D21E47: LitStr ","
  loc_D21E4A: ConcatStr
  loc_D21E4B: FStStrNoPop var_14C
  loc_D21E4E: ILdRf lNumeCont
  loc_D21E51: CStrI4
  loc_D21E53: FStStrNoPop var_150
  loc_D21E56: ConcatStr
  loc_D21E57: FStStrNoPop var_154
  loc_D21E5A: LitStr ",'"
  loc_D21E5D: ConcatStr
  loc_D21E5E: FStStrNoPop var_158
  loc_D21E61: ImpAdLdI4 MemVar_D9302C
  loc_D21E64: ConcatStr
  loc_D21E65: FStStrNoPop var_15C
  loc_D21E68: LitStr "');"
  loc_D21E6B: ConcatStr
  loc_D21E6C: FStStrNoPop var_160
  loc_D21E6F: Call Proc_261_10_A4592C()
  loc_D21E74: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_D21E99: LitStr " SELECT * FROM contracargo WHERE PeriBole = "
  loc_D21E9C: FLdI2 iPeriBole
  loc_D21E9F: CStrUI1
  loc_D21EA1: FStStrNoPop var_104
  loc_D21EA4: ConcatStr
  loc_D21EA5: FStStrNoPop var_108
  loc_D21EA8: LitStr " AND NumeBole = "
  loc_D21EAB: ConcatStr
  loc_D21EAC: FStStrNoPop var_10C
  loc_D21EAF: ILdRf lNumeBole
  loc_D21EB2: CStrI4
  loc_D21EB4: FStStrNoPop var_110
  loc_D21EB7: ConcatStr
  loc_D21EB8: FStStrNoPop var_130
  loc_D21EBB: LitStr " AND NumeExpe = '"
  loc_D21EBE: ConcatStr
  loc_D21EBF: FStStrNoPop var_134
  loc_D21EC2: ILdRf var_88
  loc_D21EC5: ConcatStr
  loc_D21EC6: FStStrNoPop var_138
  loc_D21EC9: LitStr "'"
  loc_D21ECC: ConcatStr
  loc_D21ECD: FStStrNoPop var_13C
  loc_D21ED0: LitStr " AND IdEpagos = "
  loc_D21ED3: ConcatStr
  loc_D21ED4: FStStrNoPop var_140
  loc_D21ED7: ILdRf iIdEpagos
  loc_D21EDA: CStrI4
  loc_D21EDC: FStStrNoPop var_144
  loc_D21EDF: ConcatStr
  loc_D21EE0: FStStrNoPop var_148
  loc_D21EE3: LitStr " ANd NumeCont = "
  loc_D21EE6: ConcatStr
  loc_D21EE7: FStStrNoPop var_14C
  loc_D21EEA: ILdRf lNumeCont
  loc_D21EED: CStrI4
  loc_D21EEF: FStStrNoPop var_150
  loc_D21EF2: ConcatStr
  loc_D21EF3: FStStrNoPop var_154
  loc_D21EF6: Call Proc_261_10_A4592C()
  loc_D21EFB: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = ""
  loc_D21F1A: FLdRfVar var_100
  loc_D21F1D: FLdRfVar var_11C
  loc_D21F20: LitVarStr var_E0, "idcontra"
  loc_D21F25: PopAdLdVar
  loc_D21F26: FLdRfVar var_118
  loc_D21F29: FLdPr Me
  loc_D21F2C: MemLdPr global_64
  loc_D21F2F:  = Me.Fields
  loc_D21F34: FLdPr var_118
  loc_D21F37: from_stack_2 = Me.Item(from_stack_1)
  loc_D21F3C: FLdPr var_11C
  loc_D21F3F:  = Me.Value
  loc_D21F44: FLdRfVar var_100
  loc_D21F47: CI2Var
  loc_D21F48: FStI2 var_B4
  loc_D21F4B: FFreeAd var_118 = ""
  loc_D21F52: FFree1Var var_100 = ""
  loc_D21F55: LitStr "SELECT * FROM detabole WHERE PeriBole = "
  loc_D21F58: FLdI2 iPeriBole
  loc_D21F5B: CStrUI1
  loc_D21F5D: FStStrNoPop var_104
  loc_D21F60: ConcatStr
  loc_D21F61: FStStrNoPop var_108
  loc_D21F64: LitStr " ANd NumeBole = "
  loc_D21F67: ConcatStr
  loc_D21F68: FStStrNoPop var_10C
  loc_D21F6B: ILdRf lNumeBole
  loc_D21F6E: CStrI4
  loc_D21F70: FStStrNoPop var_110
  loc_D21F73: ConcatStr
  loc_D21F74: FStStrNoPop var_130
  loc_D21F77: Call Proc_261_12_A45788()
  loc_D21F7C: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_D21F89: FLdRfVar var_114
  loc_D21F8C: FLdPr Me
  loc_D21F8F: MemLdPr global_72
  loc_D21F92:  = Me.RecordCount
  loc_D21F97: ILdRf var_114
  loc_D21F9A: LitI4 0
  loc_D21F9F: GtI4
  loc_D21FA0: BranchF loc_D23903
  loc_D21FA3: FLdRfVar var_162
  loc_D21FA6: FLdPr Me
  loc_D21FA9: MemLdPr global_72
  loc_D21FAC:  = Me.EOF
  loc_D21FB1: FLdI2 var_162
  loc_D21FB4: NotI4
  loc_D21FB5: BranchF loc_D23903
  loc_D21FB8: FLdRfVar var_100
  loc_D21FBB: FLdRfVar var_11C
  loc_D21FBE: LitVarStr var_E0, "CapiDebo"
  loc_D21FC3: PopAdLdVar
  loc_D21FC4: FLdRfVar var_118
  loc_D21FC7: FLdPr Me
  loc_D21FCA: MemLdPr global_72
  loc_D21FCD:  = Me.Fields
  loc_D21FD2: FLdPr var_118
  loc_D21FD5: from_stack_2 = Me.Item(from_stack_1)
  loc_D21FDA: FLdPr var_11C
  loc_D21FDD:  = Me.Value
  loc_D21FE2: FLdRfVar var_100
  loc_D21FE5: FnCDblVar
  loc_D21FE7: LitI2_Byte 0
  loc_D21FE9: CR8I2
  loc_D21FEA: GtR4
  loc_D21FEB: FFreeAd var_118 = ""
  loc_D21FF2: FFree1Var var_100 = ""
  loc_D21FF5: BranchF loc_D23325
  loc_D21FF8: FLdRfVar var_100
  loc_D21FFB: FLdRfVar var_11C
  loc_D21FFE: LitVarStr var_E0, "CodiOfic"
  loc_D22003: PopAdLdVar
  loc_D22004: FLdRfVar var_118
  loc_D22007: FLdPr Me
  loc_D2200A: MemLdPr global_72
  loc_D2200D:  = Me.Fields
  loc_D22012: FLdPr var_118
  loc_D22015: from_stack_2 = Me.Item(from_stack_1)
  loc_D2201A: FLdPr var_11C
  loc_D2201D:  = Me.Value
  loc_D22022: FLdRfVar var_100
  loc_D22025: LitVarI2 var_F0, 0
  loc_D2202A: HardType
  loc_D2202B: NeVar var_12C
  loc_D2202F: FLdRfVar var_18C
  loc_D22032: FLdRfVar var_17C
  loc_D22035: LitVarStr var_178, "CuenCtct"
  loc_D2203A: PopAdLdVar
  loc_D2203B: FLdRfVar var_168
  loc_D2203E: FLdPr Me
  loc_D22041: MemLdPr global_72
  loc_D22044:  = Me.Fields
  loc_D22049: FLdPr var_168
  loc_D2204C: from_stack_2 = Me.Item(from_stack_1)
  loc_D22051: FLdPr var_17C
  loc_D22054:  = Me.Value
  loc_D22059: FLdRfVar var_18C
  loc_D2205C: LitVarStr var_19C, vbNullString
  loc_D22061: HardType
  loc_D22062: NeVar var_1AC
  loc_D22066: AndVar var_1BC
  loc_D2206A: CBoolVarNull
  loc_D2206C: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D22077: FFreeVar var_100 = ""
  loc_D2207E: BranchF loc_D22FDA
  loc_D22081: FLdRfVar var_100
  loc_D22084: FLdRfVar var_11C
  loc_D22087: LitVarStr var_E0, "CodiFapa"
  loc_D2208C: PopAdLdVar
  loc_D2208D: FLdRfVar var_118
  loc_D22090: FLdPr Me
  loc_D22093: MemLdPr global_72
  loc_D22096:  = Me.Fields
  loc_D2209B: FLdPr var_118
  loc_D2209E: from_stack_2 = Me.Item(from_stack_1)
  loc_D220A3: FLdPr var_11C
  loc_D220A6:  = Me.Value
  loc_D220AB: FLdRfVar var_100
  loc_D220AE: FnCLngVar
  loc_D220B0: LitI4 0
  loc_D220B5: NeI4
  loc_D220B6: FFreeAd var_118 = ""
  loc_D220BD: FFree1Var var_100 = ""
  loc_D220C0: BranchF loc_D2236F
  loc_D220C3: FLdRfVar var_100
  loc_D220C6: FLdRfVar var_11C
  loc_D220C9: LitVarStr var_E0, "CodiFapa"
  loc_D220CE: PopAdLdVar
  loc_D220CF: FLdRfVar var_118
  loc_D220D2: FLdPr Me
  loc_D220D5: MemLdPr global_72
  loc_D220D8:  = Me.Fields
  loc_D220DD: FLdPr var_118
  loc_D220E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D220E5: FLdPr var_11C
  loc_D220E8:  = Me.Value
  loc_D220ED: FLdRfVar var_100
  loc_D220F0: FnCLngVar
  loc_D220F2: ImpAdCallUI1 Proc_270_146_A802BC()
  loc_D220F8: FStUI1 var_BC
  loc_D220FC: FFreeAd var_118 = ""
  loc_D22103: FFree1Var var_100 = ""
  loc_D22106: FLdUI1
  loc_D2210A: CI2UI1
  loc_D2210C: LitI2_Byte 0
  loc_D2210E: EqI2
  loc_D2210F: BranchF loc_D2236F
  loc_D22112: FLdRfVar var_100
  loc_D22115: FLdRfVar var_11C
  loc_D22118: LitVarStr var_E0, "CapiDebo"
  loc_D2211D: PopAdLdVar
  loc_D2211E: FLdRfVar var_118
  loc_D22121: FLdPr Me
  loc_D22124: MemLdPr global_72
  loc_D22127:  = Me.Fields
  loc_D2212C: FLdPr var_118
  loc_D2212F: from_stack_2 = Me.Item(from_stack_1)
  loc_D22134: FLdPr var_11C
  loc_D22137:  = Me.Value
  loc_D2213C: LitStr " UPDATE facictacte SET SaldFacc = SaldFacc + '"
  loc_D2213F: LitI4 0
  loc_D22144: LitI4 -1
  loc_D22149: LitI4 1
  loc_D2214E: LitStr "."
  loc_D22151: LitStr ","
  loc_D22154: FLdRfVar var_100
  loc_D22157: FnCDblVar
  loc_D22159: CStrR8
  loc_D2215B: FStStrNoPop var_104
  loc_D2215E: ImpAdCallI2 Replace(, , , , , )
  loc_D22163: FStStrNoPop var_108
  loc_D22166: ConcatStr
  loc_D22167: FStStrNoPop var_10C
  loc_D2216A: LitStr "' WHERE CodiFapa = "
  loc_D2216D: ConcatStr
  loc_D2216E: CVarStr var_18C
  loc_D22171: FLdRfVar var_12C
  loc_D22174: FLdRfVar var_17C
  loc_D22177: LitVarStr var_F0, "CodiFapa"
  loc_D2217C: PopAdLdVar
  loc_D2217D: FLdRfVar var_168
  loc_D22180: FLdPr Me
  loc_D22183: MemLdPr global_72
  loc_D22186:  = Me.Fields
  loc_D2218B: FLdPr var_168
  loc_D2218E: from_stack_2 = Me.Item(from_stack_1)
  loc_D22193: FLdPr var_17C
  loc_D22196:  = Me.Value
  loc_D2219B: FLdRfVar var_12C
  loc_D2219E: ConcatVar var_1AC
  loc_D221A2: LitVarStr var_178, " AND CuotDefa = "
  loc_D221A7: ConcatVar var_1BC
  loc_D221AB: FLdRfVar var_1D4
  loc_D221AE: FLdRfVar var_1C4
  loc_D221B1: LitVarStr var_19C, "CuotDefa"
  loc_D221B6: PopAdLdVar
  loc_D221B7: FLdRfVar var_1C0
  loc_D221BA: FLdPr Me
  loc_D221BD: MemLdPr global_72
  loc_D221C0:  = Me.Fields
  loc_D221C5: FLdPr var_1C0
  loc_D221C8: from_stack_2 = Me.Item(from_stack_1)
  loc_D221CD: FLdPr var_1C4
  loc_D221D0:  = Me.Value
  loc_D221D5: FLdRfVar var_1D4
  loc_D221D8: ConcatVar var_1E4
  loc_D221DC: LitVarStr var_1F4, " AND CodiOfic = "
  loc_D221E1: ConcatVar var_204
  loc_D221E5: FLdRfVar var_22C
  loc_D221E8: FLdRfVar var_21C
  loc_D221EB: LitVarStr var_218, "CodiOfic"
  loc_D221F0: PopAdLdVar
  loc_D221F1: FLdRfVar var_208
  loc_D221F4: FLdPr Me
  loc_D221F7: MemLdPr global_72
  loc_D221FA:  = Me.Fields
  loc_D221FF: FLdPr var_208
  loc_D22202: from_stack_2 = Me.Item(from_stack_1)
  loc_D22207: FLdPr var_21C
  loc_D2220A:  = Me.Value
  loc_D2220F: FLdRfVar var_22C
  loc_D22212: ConcatVar var_23C
  loc_D22216: LitVarStr var_24C, " AND CuenCtct = '"
  loc_D2221B: ConcatVar var_25C
  loc_D2221F: FLdRfVar var_284
  loc_D22222: FLdRfVar var_274
  loc_D22225: LitVarStr var_270, "CuenCtct"
  loc_D2222A: PopAdLdVar
  loc_D2222B: FLdRfVar var_260
  loc_D2222E: FLdPr Me
  loc_D22231: MemLdPr global_72
  loc_D22234:  = Me.Fields
  loc_D22239: FLdPr var_260
  loc_D2223C: from_stack_2 = Me.Item(from_stack_1)
  loc_D22241: FLdPr var_274
  loc_D22244:  = Me.Value
  loc_D22249: FLdRfVar var_284
  loc_D2224C: ConcatVar var_294
  loc_D22250: LitVarStr var_2A4, "' AND PeriCtct = "
  loc_D22255: ConcatVar var_2B4
  loc_D22259: FLdRfVar var_2DC
  loc_D2225C: FLdRfVar var_2CC
  loc_D2225F: LitVarStr var_2C8, "PeriCtct"
  loc_D22264: PopAdLdVar
  loc_D22265: FLdRfVar var_2B8
  loc_D22268: FLdPr Me
  loc_D2226B: MemLdPr global_72
  loc_D2226E:  = Me.Fields
  loc_D22273: FLdPr var_2B8
  loc_D22276: from_stack_2 = Me.Item(from_stack_1)
  loc_D2227B: FLdPr var_2CC
  loc_D2227E:  = Me.Value
  loc_D22283: FLdRfVar var_2DC
  loc_D22286: ConcatVar var_2EC
  loc_D2228A: LitVarStr var_2FC, " AND BimeCtct = "
  loc_D2228F: ConcatVar var_30C
  loc_D22293: FLdRfVar var_334
  loc_D22296: FLdRfVar var_324
  loc_D22299: LitVarStr var_320, "BimeCtct"
  loc_D2229E: PopAdLdVar
  loc_D2229F: FLdRfVar var_310
  loc_D222A2: FLdPr Me
  loc_D222A5: MemLdPr global_72
  loc_D222A8:  = Me.Fields
  loc_D222AD: FLdPr var_310
  loc_D222B0: from_stack_2 = Me.Item(from_stack_1)
  loc_D222B5: FLdPr var_324
  loc_D222B8:  = Me.Value
  loc_D222BD: FLdRfVar var_334
  loc_D222C0: ConcatVar var_344
  loc_D222C4: LitVarStr var_354, " AND NumeCtct = "
  loc_D222C9: ConcatVar var_364
  loc_D222CD: FLdRfVar var_38C
  loc_D222D0: FLdRfVar var_37C
  loc_D222D3: LitVarStr var_378, "NumeCtct"
  loc_D222D8: PopAdLdVar
  loc_D222D9: FLdRfVar var_368
  loc_D222DC: FLdPr Me
  loc_D222DF: MemLdPr global_72
  loc_D222E2:  = Me.Fields
  loc_D222E7: FLdPr var_368
  loc_D222EA: from_stack_2 = Me.Item(from_stack_1)
  loc_D222EF: FLdPr var_37C
  loc_D222F2:  = Me.Value
  loc_D222F7: FLdRfVar var_38C
  loc_D222FA: ConcatVar var_39C
  loc_D222FE: LitVarStr var_3AC, " AND MoviCtct = 1;"
  loc_D22303: ConcatVar var_3BC
  loc_D22307: CStrVarVal var_110
  loc_D2230B: Call Proc_261_10_A4592C()
  loc_D22310: FFreeStr var_104 = "": var_108 = "": var_10C = ""
  loc_D2231B: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_324 = "": var_368 = ""
  loc_D2233E: FFreeVar var_100 = "": var_18C = "": var_12C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_38C = "": var_39C = ""
  loc_D2236F: LitVarStr var_F0, "SELECT * FROM ctacte WHERE CodiOfic = "
  loc_D22374: FLdRfVar var_100
  loc_D22377: FLdRfVar var_11C
  loc_D2237A: LitVarStr var_E0, "CodiOfic"
  loc_D2237F: PopAdLdVar
  loc_D22380: FLdRfVar var_118
  loc_D22383: FLdPr Me
  loc_D22386: MemLdPr global_72
  loc_D22389:  = Me.Fields
  loc_D2238E: FLdPr var_118
  loc_D22391: from_stack_2 = Me.Item(from_stack_1)
  loc_D22396: FLdPr var_11C
  loc_D22399:  = Me.Value
  loc_D2239E: FLdRfVar var_100
  loc_D223A1: ConcatVar var_12C
  loc_D223A5: LitVarStr var_178, " AND CuenCtct = '"
  loc_D223AA: ConcatVar var_18C
  loc_D223AE: FLdRfVar var_1AC
  loc_D223B1: FLdRfVar var_17C
  loc_D223B4: LitVarStr var_19C, "CuenCtct"
  loc_D223B9: PopAdLdVar
  loc_D223BA: FLdRfVar var_168
  loc_D223BD: FLdPr Me
  loc_D223C0: MemLdPr global_72
  loc_D223C3:  = Me.Fields
  loc_D223C8: FLdPr var_168
  loc_D223CB: from_stack_2 = Me.Item(from_stack_1)
  loc_D223D0: FLdPr var_17C
  loc_D223D3:  = Me.Value
  loc_D223D8: FLdRfVar var_1AC
  loc_D223DB: ConcatVar var_1BC
  loc_D223DF: LitVarStr var_1F4, "'"
  loc_D223E4: ConcatVar var_1D4
  loc_D223E8: LitVarStr var_218, " AND PeriCtct = "
  loc_D223ED: ConcatVar var_1E4
  loc_D223F1: FLdRfVar var_204
  loc_D223F4: FLdRfVar var_1C4
  loc_D223F7: LitVarStr var_24C, "PeriCtct"
  loc_D223FC: PopAdLdVar
  loc_D223FD: FLdRfVar var_1C0
  loc_D22400: FLdPr Me
  loc_D22403: MemLdPr global_72
  loc_D22406:  = Me.Fields
  loc_D2240B: FLdPr var_1C0
  loc_D2240E: from_stack_2 = Me.Item(from_stack_1)
  loc_D22413: FLdPr var_1C4
  loc_D22416:  = Me.Value
  loc_D2241B: FLdRfVar var_204
  loc_D2241E: ConcatVar var_22C
  loc_D22422: LitVarStr var_270, " AND BimeCtct = "
  loc_D22427: ConcatVar var_23C
  loc_D2242B: FLdRfVar var_25C
  loc_D2242E: FLdRfVar var_21C
  loc_D22431: LitVarStr var_2A4, "BimeCtct"
  loc_D22436: PopAdLdVar
  loc_D22437: FLdRfVar var_208
  loc_D2243A: FLdPr Me
  loc_D2243D: MemLdPr global_72
  loc_D22440:  = Me.Fields
  loc_D22445: FLdPr var_208
  loc_D22448: from_stack_2 = Me.Item(from_stack_1)
  loc_D2244D: FLdPr var_21C
  loc_D22450:  = Me.Value
  loc_D22455: FLdRfVar var_25C
  loc_D22458: ConcatVar var_284
  loc_D2245C: LitVarStr var_2C8, " AND NumeCtct = "
  loc_D22461: ConcatVar var_294
  loc_D22465: FLdRfVar var_2B4
  loc_D22468: FLdRfVar var_274
  loc_D2246B: LitVarStr var_2FC, "NumeCtct"
  loc_D22470: PopAdLdVar
  loc_D22471: FLdRfVar var_260
  loc_D22474: FLdPr Me
  loc_D22477: MemLdPr global_72
  loc_D2247A:  = Me.Fields
  loc_D2247F: FLdPr var_260
  loc_D22482: from_stack_2 = Me.Item(from_stack_1)
  loc_D22487: FLdPr var_274
  loc_D2248A:  = Me.Value
  loc_D2248F: FLdRfVar var_2B4
  loc_D22492: ConcatVar var_2DC
  loc_D22496: LitVarStr var_320, " ORDER BY PeriBole, NumeBole, CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct"
  loc_D2249B: ConcatVar var_2EC
  loc_D2249F: CStrVarVal var_104
  loc_D224A3: Call Proc_261_13_A48A64()
  loc_D224A8: FFree1Str var_104
  loc_D224AB: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = ""
  loc_D224C2: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = ""
  loc_D224E5: FLdRfVar var_114
  loc_D224E8: FLdPr Me
  loc_D224EB: MemLdPr global_76
  loc_D224EE:  = Me.RecordCount
  loc_D224F3: ILdRf var_114
  loc_D224F6: LitI4 0
  loc_D224FB: GtI4
  loc_D224FC: BranchF loc_D22FDA
  loc_D224FF: FLdRfVar var_100
  loc_D22502: FLdRfVar var_11C
  loc_D22505: LitVarStr var_E0, "CodiOfic"
  loc_D2250A: PopAdLdVar
  loc_D2250B: FLdRfVar var_118
  loc_D2250E: FLdPr Me
  loc_D22511: MemLdPr global_76
  loc_D22514:  = Me.Fields
  loc_D22519: FLdPr var_118
  loc_D2251C: from_stack_2 = Me.Item(from_stack_1)
  loc_D22521: FLdPr var_11C
  loc_D22524:  = Me.Value
  loc_D22529: FLdRfVar var_12C
  loc_D2252C: FLdRfVar var_17C
  loc_D2252F: LitVarStr var_F0, "CuenCtct"
  loc_D22534: PopAdLdVar
  loc_D22535: FLdRfVar var_168
  loc_D22538: FLdPr Me
  loc_D2253B: MemLdPr global_76
  loc_D2253E:  = Me.Fields
  loc_D22543: FLdPr var_168
  loc_D22546: from_stack_2 = Me.Item(from_stack_1)
  loc_D2254B: FLdPr var_17C
  loc_D2254E:  = Me.Value
  loc_D22553: FLdRfVar var_18C
  loc_D22556: FLdRfVar var_1C4
  loc_D22559: LitVarStr var_178, "PeriCtct"
  loc_D2255E: PopAdLdVar
  loc_D2255F: FLdRfVar var_1C0
  loc_D22562: FLdPr Me
  loc_D22565: MemLdPr global_76
  loc_D22568:  = Me.Fields
  loc_D2256D: FLdPr var_1C0
  loc_D22570: from_stack_2 = Me.Item(from_stack_1)
  loc_D22575: FLdPr var_1C4
  loc_D22578:  = Me.Value
  loc_D2257D: FLdRfVar var_1AC
  loc_D22580: FLdRfVar var_21C
  loc_D22583: LitVarStr var_19C, "BimeCtct"
  loc_D22588: PopAdLdVar
  loc_D22589: FLdRfVar var_208
  loc_D2258C: FLdPr Me
  loc_D2258F: MemLdPr global_76
  loc_D22592:  = Me.Fields
  loc_D22597: FLdPr var_208
  loc_D2259A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2259F: FLdPr var_21C
  loc_D225A2:  = Me.Value
  loc_D225A7: FLdRfVar var_1BC
  loc_D225AA: FLdRfVar var_274
  loc_D225AD: LitVarStr var_1F4, "NumeCtct"
  loc_D225B2: PopAdLdVar
  loc_D225B3: FLdRfVar var_260
  loc_D225B6: FLdPr Me
  loc_D225B9: MemLdPr global_76
  loc_D225BC:  = Me.Fields
  loc_D225C1: FLdPr var_260
  loc_D225C4: from_stack_2 = Me.Item(from_stack_1)
  loc_D225C9: FLdPr var_274
  loc_D225CC:  = Me.Value
  loc_D225D1: FLdRfVar var_162
  loc_D225D4: FLdRfVar var_1BC
  loc_D225D7: CI4Var
  loc_D225D9: FLdRfVar var_1AC
  loc_D225DC: CI2Var
  loc_D225DD: FLdRfVar var_18C
  loc_D225E0: CI2Var
  loc_D225E1: FLdRfVar var_12C
  loc_D225E4: CStrVarTmp
  loc_D225E5: FStStrNoPop var_104
  loc_D225E8: FLdRfVar var_100
  loc_D225EB: CI2Var
  loc_D225EC: FLdRfVar var_8C
  loc_D225EF: NewIfNullPr clsctacte
  loc_D225F2: from_stack_6v = clsctacte.BuscaMoviCtct(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_D225F7: FLdI2 var_162
  loc_D225FA: FStI2 var_96
  loc_D225FD: FFree1Str var_104
  loc_D22600: FFreeAd var_118 = "": var_168 = "": var_1C0 = "": var_208 = "": var_260 = "": var_11C = "": var_17C = "": var_1C4 = "": var_21C = ""
  loc_D22617: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = ""
  loc_D22624: FLdI2 var_96
  loc_D22627: LitI2_Byte 0
  loc_D22629: GtI2
  loc_D2262A: BranchF loc_D22FDA
  loc_D2262D: FLdRfVar var_12C
  loc_D22630: FLdRfVar var_17C
  loc_D22633: LitVarStr var_F0, "DecaDebo"
  loc_D22638: PopAdLdVar
  loc_D22639: FLdRfVar var_168
  loc_D2263C: FLdPr Me
  loc_D2263F: MemLdPr global_72
  loc_D22642:  = Me.Fields
  loc_D22647: FLdPr var_168
  loc_D2264A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2264F: FLdPr var_17C
  loc_D22652:  = Me.Value
  loc_D22657: FLdRfVar var_100
  loc_D2265A: FLdRfVar var_11C
  loc_D2265D: LitVarStr var_E0, "CapiDebo"
  loc_D22662: PopAdLdVar
  loc_D22663: FLdRfVar var_118
  loc_D22666: FLdPr Me
  loc_D22669: MemLdPr global_72
  loc_D2266C:  = Me.Fields
  loc_D22671: FLdPr var_118
  loc_D22674: from_stack_2 = Me.Item(from_stack_1)
  loc_D22679: FLdPr var_11C
  loc_D2267C:  = Me.Value
  loc_D22681: FLdRfVar var_100
  loc_D22684: FnCDblVar
  loc_D22686: FLdRfVar var_12C
  loc_D22689: FnCDblVar
  loc_D2268B: SubR4
  loc_D2268C: CR8R8
  loc_D2268D: LitI2_Byte 0
  loc_D2268F: CR8I2
  loc_D22690: GtR4
  loc_D22691: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D2269C: FFreeVar var_100 = ""
  loc_D226A3: BranchF loc_D22B3B
  loc_D226A6: FLdI2 var_96
  loc_D226A9: LitI2_Byte 1
  loc_D226AB: AddI2
  loc_D226AC: FStI2 var_96
  loc_D226AF: FLdRfVar var_324
  loc_D226B2: LitVarStr var_48C, "FeveCtct"
  loc_D226B7: PopAdLdVar
  loc_D226B8: FLdRfVar var_310
  loc_D226BB: FLdPr Me
  loc_D226BE: MemLdPr global_76
  loc_D226C1:  = Me.Fields
  loc_D226C6: FLdPr var_310
  loc_D226C9: from_stack_2 = Me.Item(from_stack_1)
  loc_D226CE: FLdRfVar var_6FC
  loc_D226D1: FLdRfVar var_6EC
  loc_D226D4: LitVarStr var_6E8, "CapiDebo"
  loc_D226D9: PopAdLdVar
  loc_D226DA: FLdRfVar var_6D8
  loc_D226DD: FLdPr Me
  loc_D226E0: MemLdPr global_72
  loc_D226E3:  = Me.Fields
  loc_D226E8: FLdPr var_6D8
  loc_D226EB: from_stack_2 = Me.Item(from_stack_1)
  loc_D226F0: FLdPr var_6EC
  loc_D226F3:  = Me.Value
  loc_D226F8: FLdRfVar var_724
  loc_D226FB: FLdRfVar var_714
  loc_D226FE: LitVarStr var_710, "DecaDebo"
  loc_D22703: PopAdLdVar
  loc_D22704: FLdRfVar var_700
  loc_D22707: FLdPr Me
  loc_D2270A: MemLdPr global_72
  loc_D2270D:  = Me.Fields
  loc_D22712: FLdPr var_700
  loc_D22715: from_stack_2 = Me.Item(from_stack_1)
  loc_D2271A: FLdPr var_714
  loc_D2271D:  = Me.Value
  loc_D22722: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D22725: LitStr " VALUES ("
  loc_D22728: ConcatStr
  loc_D22729: CVarStr var_12C
  loc_D2272C: FLdRfVar var_100
  loc_D2272F: FLdRfVar var_11C
  loc_D22732: LitVarStr var_E0, "CodiOfic"
  loc_D22737: PopAdLdVar
  loc_D22738: FLdRfVar var_118
  loc_D2273B: FLdPr Me
  loc_D2273E: MemLdPr global_76
  loc_D22741:  = Me.Fields
  loc_D22746: FLdPr var_118
  loc_D22749: from_stack_2 = Me.Item(from_stack_1)
  loc_D2274E: FLdPr var_11C
  loc_D22751:  = Me.Value
  loc_D22756: FLdRfVar var_100
  loc_D22759: ConcatVar var_18C
  loc_D2275D: LitVarStr var_F0, ",'"
  loc_D22762: ConcatVar var_1AC
  loc_D22766: FLdRfVar var_1BC
  loc_D22769: FLdRfVar var_17C
  loc_D2276C: LitVarStr var_178, "CuenCtct"
  loc_D22771: PopAdLdVar
  loc_D22772: FLdRfVar var_168
  loc_D22775: FLdPr Me
  loc_D22778: MemLdPr global_76
  loc_D2277B:  = Me.Fields
  loc_D22780: FLdPr var_168
  loc_D22783: from_stack_2 = Me.Item(from_stack_1)
  loc_D22788: FLdPr var_17C
  loc_D2278B:  = Me.Value
  loc_D22790: FLdRfVar var_1BC
  loc_D22793: ConcatVar var_1D4
  loc_D22797: LitVarStr var_19C, "',"
  loc_D2279C: ConcatVar var_1E4
  loc_D227A0: FLdRfVar var_204
  loc_D227A3: FLdRfVar var_1C4
  loc_D227A6: LitVarStr var_1F4, "PeriCtct"
  loc_D227AB: PopAdLdVar
  loc_D227AC: FLdRfVar var_1C0
  loc_D227AF: FLdPr Me
  loc_D227B2: MemLdPr global_76
  loc_D227B5:  = Me.Fields
  loc_D227BA: FLdPr var_1C0
  loc_D227BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D227C2: FLdPr var_1C4
  loc_D227C5:  = Me.Value
  loc_D227CA: FLdRfVar var_204
  loc_D227CD: ConcatVar var_22C
  loc_D227D1: LitVarStr var_218, ","
  loc_D227D6: ConcatVar var_23C
  loc_D227DA: FLdRfVar var_25C
  loc_D227DD: FLdRfVar var_21C
  loc_D227E0: LitVarStr var_24C, "BimeCtct"
  loc_D227E5: PopAdLdVar
  loc_D227E6: FLdRfVar var_208
  loc_D227E9: FLdPr Me
  loc_D227EC: MemLdPr global_76
  loc_D227EF:  = Me.Fields
  loc_D227F4: FLdPr var_208
  loc_D227F7: from_stack_2 = Me.Item(from_stack_1)
  loc_D227FC: FLdPr var_21C
  loc_D227FF:  = Me.Value
  loc_D22804: FLdRfVar var_25C
  loc_D22807: ConcatVar var_284
  loc_D2280B: LitVarStr var_270, ","
  loc_D22810: ConcatVar var_294
  loc_D22814: FLdRfVar var_2B4
  loc_D22817: FLdRfVar var_274
  loc_D2281A: LitVarStr var_2A4, "NumeCtct"
  loc_D2281F: PopAdLdVar
  loc_D22820: FLdRfVar var_260
  loc_D22823: FLdPr Me
  loc_D22826: MemLdPr global_76
  loc_D22829:  = Me.Fields
  loc_D2282E: FLdPr var_260
  loc_D22831: from_stack_2 = Me.Item(from_stack_1)
  loc_D22836: FLdPr var_274
  loc_D22839:  = Me.Value
  loc_D2283E: FLdRfVar var_2B4
  loc_D22841: ConcatVar var_2DC
  loc_D22845: LitVarStr var_2C8, ","
  loc_D2284A: ConcatVar var_2EC
  loc_D2284E: FLdI2 var_96
  loc_D22851: CVarI2 var_2FC
  loc_D22854: ConcatVar var_30C
  loc_D22858: LitVarStr var_320, ",0,0,"
  loc_D2285D: ConcatVar var_334
  loc_D22861: FLdI2 iPeriBole
  loc_D22864: CVarI2 var_354
  loc_D22867: ConcatVar var_344
  loc_D2286B: LitVarStr var_378, ","
  loc_D22870: ConcatVar var_364
  loc_D22874: ILdRf lNumeBole
  loc_D22877: CVarI4
  loc_D2287B: ConcatVar var_38C
  loc_D2287F: LitVarStr var_3CC, ",'"
  loc_D22884: ConcatVar var_39C
  loc_D22888: FLdRfVar var_3BC
  loc_D2288B: FLdRfVar var_2CC
  loc_D2288E: LitVarStr var_3DC, "TipoCtct"
  loc_D22893: PopAdLdVar
  loc_D22894: FLdRfVar var_2B8
  loc_D22897: FLdPr Me
  loc_D2289A: MemLdPr global_76
  loc_D2289D:  = Me.Fields
  loc_D228A2: FLdPr var_2B8
  loc_D228A5: from_stack_2 = Me.Item(from_stack_1)
  loc_D228AA: FLdPr var_2CC
  loc_D228AD:  = Me.Value
  loc_D228B2: FLdRfVar var_3BC
  loc_D228B5: ConcatVar var_3EC
  loc_D228B9: LitVarStr var_3FC, "','"
  loc_D228BE: ConcatVar var_40C
  loc_D228C2: LitI4 1
  loc_D228C7: LitI4 1
  loc_D228CC: LitVarStr var_42C, "yyyy-mm-dd"
  loc_D228D1: FStVarCopyObj var_43C
  loc_D228D4: FLdRfVar var_43C
  loc_D228D7: FLdRfVar var_A0
  loc_D228DA: CVarRef
  loc_D228DF: ImpAdCallI2 Format$(, )
  loc_D228E4: CVarStr var_44C
  loc_D228E7: ConcatVar var_45C
  loc_D228EB: LitVarStr var_46C, "','"
  loc_D228F0: ConcatVar var_47C
  loc_D228F4: LitI4 1
  loc_D228F9: LitI4 1
  loc_D228FE: LitVarStr var_4AC, "yyyy-mm-dd"
  loc_D22903: FStVarCopyObj var_4BC
  loc_D22906: FLdRfVar var_4BC
  loc_D22909: FLdZeroAd var_324
  loc_D2290C: CVarAd
  loc_D22910: ImpAdCallI2 Format$(, )
  loc_D22915: CVarStr var_4CC
  loc_D22918: ConcatVar var_4DC
  loc_D2291C: LitVarStr var_4EC, "',Null,0,"
  loc_D22921: ConcatVar var_4FC
  loc_D22925: FLdRfVar var_51C
  loc_D22928: FLdRfVar var_37C
  loc_D2292B: LitVarStr var_50C, "PeriInfo"
  loc_D22930: PopAdLdVar
  loc_D22931: FLdRfVar var_368
  loc_D22934: FLdPr Me
  loc_D22937: MemLdPr global_76
  loc_D2293A:  = Me.Fields
  loc_D2293F: FLdPr var_368
  loc_D22942: from_stack_2 = Me.Item(from_stack_1)
  loc_D22947: FLdPr var_37C
  loc_D2294A:  = Me.Value
  loc_D2294F: FLdRfVar var_51C
  loc_D22952: ConcatVar var_52C
  loc_D22956: LitVarStr var_53C, ",'"
  loc_D2295B: ConcatVar var_54C
  loc_D2295F: FLdRfVar var_574
  loc_D22962: FLdRfVar var_564
  loc_D22965: LitVarStr var_560, "CodiConc"
  loc_D2296A: PopAdLdVar
  loc_D2296B: FLdRfVar var_550
  loc_D2296E: FLdPr Me
  loc_D22971: MemLdPr global_76
  loc_D22974:  = Me.Fields
  loc_D22979: FLdPr var_550
  loc_D2297C: from_stack_2 = Me.Item(from_stack_1)
  loc_D22981: FLdPr var_564
  loc_D22984:  = Me.Value
  loc_D22989: FLdRfVar var_574
  loc_D2298C: ConcatVar var_584
  loc_D22990: LitVarStr var_594, "',"
  loc_D22995: ConcatVar var_5A4
  loc_D22999: FLdRfVar var_5CC
  loc_D2299C: FLdRfVar var_5BC
  loc_D2299F: LitVarStr var_5B8, "CodiFapa"
  loc_D229A4: PopAdLdVar
  loc_D229A5: FLdRfVar var_5A8
  loc_D229A8: FLdPr Me
  loc_D229AB: MemLdPr global_76
  loc_D229AE:  = Me.Fields
  loc_D229B3: FLdPr var_5A8
  loc_D229B6: from_stack_2 = Me.Item(from_stack_1)
  loc_D229BB: FLdPr var_5BC
  loc_D229BE:  = Me.Value
  loc_D229C3: FLdRfVar var_5CC
  loc_D229C6: ConcatVar var_5DC
  loc_D229CA: LitVarStr var_5EC, ",0,"
  loc_D229CF: ConcatVar var_5FC
  loc_D229D3: FLdRfVar var_624
  loc_D229D6: FLdRfVar var_614
  loc_D229D9: LitVarStr var_610, "NumeApre"
  loc_D229DE: PopAdLdVar
  loc_D229DF: FLdRfVar var_600
  loc_D229E2: FLdPr Me
  loc_D229E5: MemLdPr global_76
  loc_D229E8:  = Me.Fields
  loc_D229ED: FLdPr var_600
  loc_D229F0: from_stack_2 = Me.Item(from_stack_1)
  loc_D229F5: FLdPr var_614
  loc_D229F8:  = Me.Value
  loc_D229FD: FLdRfVar var_624
  loc_D22A00: ConcatVar var_634
  loc_D22A04: LitVarStr var_644, ",27,'"
  loc_D22A09: ConcatVar var_654
  loc_D22A0D: ILdRf var_88
  loc_D22A10: CVarStr var_664
  loc_D22A13: ConcatVar var_674
  loc_D22A17: LitVarStr var_684, "','"
  loc_D22A1C: ConcatVar var_694
  loc_D22A20: ILdRf lNumeCont
  loc_D22A23: CVarI4
  loc_D22A27: ConcatVar var_6B4
  loc_D22A2B: LitVarStr var_6C4, "',0,0,'Debitos de Contracargo',"
  loc_D22A30: ConcatVar var_6D4
  loc_D22A34: LitI4 0
  loc_D22A39: LitI4 -1
  loc_D22A3E: LitI4 1
  loc_D22A43: LitStr "."
  loc_D22A46: LitStr ","
  loc_D22A49: FLdRfVar var_6FC
  loc_D22A4C: FnCDblVar
  loc_D22A4E: FLdRfVar var_724
  loc_D22A51: FnCDblVar
  loc_D22A53: SubR4
  loc_D22A54: CStrR8
  loc_D22A56: FStStrNoPop var_104
  loc_D22A59: ImpAdCallI2 Replace(, , , , , )
  loc_D22A5E: CVarStr var_734
  loc_D22A61: ConcatVar var_744
  loc_D22A65: LitVarStr var_754, ",0,'"
  loc_D22A6A: ConcatVar var_764
  loc_D22A6E: ImpAdLdI4 MemVar_D9302C
  loc_D22A71: CVarStr var_774
  loc_D22A74: ConcatVar var_784
  loc_D22A78: LitVarStr var_794, "');"
  loc_D22A7D: ConcatVar var_7A4
  loc_D22A81: CStrVarVal var_108
  loc_D22A85: Call Proc_261_10_A4592C()
  loc_D22A8A: FFreeStr var_104 = ""
  loc_D22A91: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_368 = "": var_37C = "": var_550 = "": var_564 = "": var_5A8 = "": var_5BC = "": var_600 = "": var_614 = "": var_6D8 = "": var_6EC = "": var_700 = ""
  loc_D22AC6: FFreeVar var_47C = "": var_4CC = "": var_4DC = "": var_4FC = "": var_51C = "": var_52C = "": var_54C = "": var_574 = "": var_584 = "": var_5A4 = "": var_5CC = "": var_5DC = "": var_5FC = "": var_624 = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6B4 = "": var_6FC = "": var_724 = "": var_6D4 = "": var_734 = "": var_744 = "": var_764 = "": var_784 = "": var_7A4 = "": var_12C = "": var_100 = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_38C = "": var_39C = "": var_3BC = "": var_3EC = "": var_43C = "": var_40C = "": var_44C = "": var_45C = "": var_49C = ""
  loc_D22B3B: FLdRfVar var_100
  loc_D22B3E: FLdRfVar var_11C
  loc_D22B41: LitVarStr var_E0, "DecaDebo"
  loc_D22B46: PopAdLdVar
  loc_D22B47: FLdRfVar var_118
  loc_D22B4A: FLdPr Me
  loc_D22B4D: MemLdPr global_72
  loc_D22B50:  = Me.Fields
  loc_D22B55: FLdPr var_118
  loc_D22B58: from_stack_2 = Me.Item(from_stack_1)
  loc_D22B5D: FLdPr var_11C
  loc_D22B60:  = Me.Value
  loc_D22B65: FLdRfVar var_100
  loc_D22B68: FnCDblVar
  loc_D22B6A: LitI2_Byte 0
  loc_D22B6C: CR8I2
  loc_D22B6D: GtR4
  loc_D22B6E: FFreeAd var_118 = ""
  loc_D22B75: FFree1Var var_100 = ""
  loc_D22B78: BranchF loc_D22FDA
  loc_D22B7B: FLdI2 var_96
  loc_D22B7E: LitI2_Byte 1
  loc_D22B80: AddI2
  loc_D22B81: FStI2 var_96
  loc_D22B84: FLdRfVar var_324
  loc_D22B87: LitVarStr var_48C, "FeveCtct"
  loc_D22B8C: PopAdLdVar
  loc_D22B8D: FLdRfVar var_310
  loc_D22B90: FLdPr Me
  loc_D22B93: MemLdPr global_76
  loc_D22B96:  = Me.Fields
  loc_D22B9B: FLdPr var_310
  loc_D22B9E: from_stack_2 = Me.Item(from_stack_1)
  loc_D22BA3: FLdRfVar var_6FC
  loc_D22BA6: FLdRfVar var_6EC
  loc_D22BA9: LitVarStr var_6E8, "DecaDebo"
  loc_D22BAE: PopAdLdVar
  loc_D22BAF: FLdRfVar var_6D8
  loc_D22BB2: FLdPr Me
  loc_D22BB5: MemLdPr global_72
  loc_D22BB8:  = Me.Fields
  loc_D22BBD: FLdPr var_6D8
  loc_D22BC0: from_stack_2 = Me.Item(from_stack_1)
  loc_D22BC5: FLdPr var_6EC
  loc_D22BC8:  = Me.Value
  loc_D22BCD: LitStr " INSERT INTO ctacte (CodiOfic, CuenCtct, PeriCtct, BimeCtct, NumeCtct, MoviCtct, CodiTili, NumeLiqu, PeriBole, NumeBole, TipoCtct, FealCtct, FeveCtct, FeenAcpa, NumeAcpa, PeriInfo, CodiConc, CodiFapa, CuotDefa, NumeApre, CodiTimo, ExpeCtct, CompCtct, SufaCtct, NufaCtct, DetaCtct, DebeCtct, CredCtct, AltaUsua) "
  loc_D22BD0: LitStr " VALUES ("
  loc_D22BD3: ConcatStr
  loc_D22BD4: CVarStr var_12C
  loc_D22BD7: FLdRfVar var_100
  loc_D22BDA: FLdRfVar var_11C
  loc_D22BDD: LitVarStr var_E0, "CodiOfic"
  loc_D22BE2: PopAdLdVar
  loc_D22BE3: FLdRfVar var_118
  loc_D22BE6: FLdPr Me
  loc_D22BE9: MemLdPr global_76
  loc_D22BEC:  = Me.Fields
  loc_D22BF1: FLdPr var_118
  loc_D22BF4: from_stack_2 = Me.Item(from_stack_1)
  loc_D22BF9: FLdPr var_11C
  loc_D22BFC:  = Me.Value
  loc_D22C01: FLdRfVar var_100
  loc_D22C04: ConcatVar var_18C
  loc_D22C08: LitVarStr var_F0, ",'"
  loc_D22C0D: ConcatVar var_1AC
  loc_D22C11: FLdRfVar var_1BC
  loc_D22C14: FLdRfVar var_17C
  loc_D22C17: LitVarStr var_178, "CuenCtct"
  loc_D22C1C: PopAdLdVar
  loc_D22C1D: FLdRfVar var_168
  loc_D22C20: FLdPr Me
  loc_D22C23: MemLdPr global_76
  loc_D22C26:  = Me.Fields
  loc_D22C2B: FLdPr var_168
  loc_D22C2E: from_stack_2 = Me.Item(from_stack_1)
  loc_D22C33: FLdPr var_17C
  loc_D22C36:  = Me.Value
  loc_D22C3B: FLdRfVar var_1BC
  loc_D22C3E: ConcatVar var_1D4
  loc_D22C42: LitVarStr var_19C, "',"
  loc_D22C47: ConcatVar var_1E4
  loc_D22C4B: FLdRfVar var_204
  loc_D22C4E: FLdRfVar var_1C4
  loc_D22C51: LitVarStr var_1F4, "PeriCtct"
  loc_D22C56: PopAdLdVar
  loc_D22C57: FLdRfVar var_1C0
  loc_D22C5A: FLdPr Me
  loc_D22C5D: MemLdPr global_76
  loc_D22C60:  = Me.Fields
  loc_D22C65: FLdPr var_1C0
  loc_D22C68: from_stack_2 = Me.Item(from_stack_1)
  loc_D22C6D: FLdPr var_1C4
  loc_D22C70:  = Me.Value
  loc_D22C75: FLdRfVar var_204
  loc_D22C78: ConcatVar var_22C
  loc_D22C7C: LitVarStr var_218, ","
  loc_D22C81: ConcatVar var_23C
  loc_D22C85: FLdRfVar var_25C
  loc_D22C88: FLdRfVar var_21C
  loc_D22C8B: LitVarStr var_24C, "BimeCtct"
  loc_D22C90: PopAdLdVar
  loc_D22C91: FLdRfVar var_208
  loc_D22C94: FLdPr Me
  loc_D22C97: MemLdPr global_76
  loc_D22C9A:  = Me.Fields
  loc_D22C9F: FLdPr var_208
  loc_D22CA2: from_stack_2 = Me.Item(from_stack_1)
  loc_D22CA7: FLdPr var_21C
  loc_D22CAA:  = Me.Value
  loc_D22CAF: FLdRfVar var_25C
  loc_D22CB2: ConcatVar var_284
  loc_D22CB6: LitVarStr var_270, ","
  loc_D22CBB: ConcatVar var_294
  loc_D22CBF: FLdRfVar var_2B4
  loc_D22CC2: FLdRfVar var_274
  loc_D22CC5: LitVarStr var_2A4, "NumeCtct"
  loc_D22CCA: PopAdLdVar
  loc_D22CCB: FLdRfVar var_260
  loc_D22CCE: FLdPr Me
  loc_D22CD1: MemLdPr global_76
  loc_D22CD4:  = Me.Fields
  loc_D22CD9: FLdPr var_260
  loc_D22CDC: from_stack_2 = Me.Item(from_stack_1)
  loc_D22CE1: FLdPr var_274
  loc_D22CE4:  = Me.Value
  loc_D22CE9: FLdRfVar var_2B4
  loc_D22CEC: ConcatVar var_2DC
  loc_D22CF0: LitVarStr var_2C8, ","
  loc_D22CF5: ConcatVar var_2EC
  loc_D22CF9: FLdI2 var_96
  loc_D22CFC: CVarI2 var_2FC
  loc_D22CFF: ConcatVar var_30C
  loc_D22D03: LitVarStr var_320, ",0,0,"
  loc_D22D08: ConcatVar var_334
  loc_D22D0C: FLdI2 iPeriBole
  loc_D22D0F: CVarI2 var_354
  loc_D22D12: ConcatVar var_344
  loc_D22D16: LitVarStr var_378, ","
  loc_D22D1B: ConcatVar var_364
  loc_D22D1F: ILdRf lNumeBole
  loc_D22D22: CVarI4
  loc_D22D26: ConcatVar var_38C
  loc_D22D2A: LitVarStr var_3CC, ",'"
  loc_D22D2F: ConcatVar var_39C
  loc_D22D33: FLdRfVar var_3BC
  loc_D22D36: FLdRfVar var_2CC
  loc_D22D39: LitVarStr var_3DC, "TipoCtct"
  loc_D22D3E: PopAdLdVar
  loc_D22D3F: FLdRfVar var_2B8
  loc_D22D42: FLdPr Me
  loc_D22D45: MemLdPr global_76
  loc_D22D48:  = Me.Fields
  loc_D22D4D: FLdPr var_2B8
  loc_D22D50: from_stack_2 = Me.Item(from_stack_1)
  loc_D22D55: FLdPr var_2CC
  loc_D22D58:  = Me.Value
  loc_D22D5D: FLdRfVar var_3BC
  loc_D22D60: ConcatVar var_3EC
  loc_D22D64: LitVarStr var_3FC, "','"
  loc_D22D69: ConcatVar var_40C
  loc_D22D6D: LitI4 1
  loc_D22D72: LitI4 1
  loc_D22D77: LitVarStr var_42C, "yyyy-mm-dd"
  loc_D22D7C: FStVarCopyObj var_43C
  loc_D22D7F: FLdRfVar var_43C
  loc_D22D82: FLdRfVar var_A0
  loc_D22D85: CVarRef
  loc_D22D8A: ImpAdCallI2 Format$(, )
  loc_D22D8F: CVarStr var_44C
  loc_D22D92: ConcatVar var_45C
  loc_D22D96: LitVarStr var_46C, "','"
  loc_D22D9B: ConcatVar var_47C
  loc_D22D9F: LitI4 1
  loc_D22DA4: LitI4 1
  loc_D22DA9: LitVarStr var_4AC, "yyyy-mm-dd"
  loc_D22DAE: FStVarCopyObj var_4BC
  loc_D22DB1: FLdRfVar var_4BC
  loc_D22DB4: FLdZeroAd var_324
  loc_D22DB7: CVarAd
  loc_D22DBB: ImpAdCallI2 Format$(, )
  loc_D22DC0: CVarStr var_4CC
  loc_D22DC3: ConcatVar var_4DC
  loc_D22DC7: LitVarStr var_4EC, "',Null,0,"
  loc_D22DCC: ConcatVar var_4FC
  loc_D22DD0: FLdRfVar var_51C
  loc_D22DD3: FLdRfVar var_37C
  loc_D22DD6: LitVarStr var_50C, "PeriInfo"
  loc_D22DDB: PopAdLdVar
  loc_D22DDC: FLdRfVar var_368
  loc_D22DDF: FLdPr Me
  loc_D22DE2: MemLdPr global_76
  loc_D22DE5:  = Me.Fields
  loc_D22DEA: FLdPr var_368
  loc_D22DED: from_stack_2 = Me.Item(from_stack_1)
  loc_D22DF2: FLdPr var_37C
  loc_D22DF5:  = Me.Value
  loc_D22DFA: FLdRfVar var_51C
  loc_D22DFD: ConcatVar var_52C
  loc_D22E01: LitVarStr var_53C, ",'"
  loc_D22E06: ConcatVar var_54C
  loc_D22E0A: FLdRfVar var_574
  loc_D22E0D: FLdRfVar var_564
  loc_D22E10: LitVarStr var_560, "CodiConc"
  loc_D22E15: PopAdLdVar
  loc_D22E16: FLdRfVar var_550
  loc_D22E19: FLdPr Me
  loc_D22E1C: MemLdPr global_76
  loc_D22E1F:  = Me.Fields
  loc_D22E24: FLdPr var_550
  loc_D22E27: from_stack_2 = Me.Item(from_stack_1)
  loc_D22E2C: FLdPr var_564
  loc_D22E2F:  = Me.Value
  loc_D22E34: FLdRfVar var_574
  loc_D22E37: ConcatVar var_584
  loc_D22E3B: LitVarStr var_594, "',"
  loc_D22E40: ConcatVar var_5A4
  loc_D22E44: FLdRfVar var_5CC
  loc_D22E47: FLdRfVar var_5BC
  loc_D22E4A: LitVarStr var_5B8, "CodiFapa"
  loc_D22E4F: PopAdLdVar
  loc_D22E50: FLdRfVar var_5A8
  loc_D22E53: FLdPr Me
  loc_D22E56: MemLdPr global_76
  loc_D22E59:  = Me.Fields
  loc_D22E5E: FLdPr var_5A8
  loc_D22E61: from_stack_2 = Me.Item(from_stack_1)
  loc_D22E66: FLdPr var_5BC
  loc_D22E69:  = Me.Value
  loc_D22E6E: FLdRfVar var_5CC
  loc_D22E71: ConcatVar var_5DC
  loc_D22E75: LitVarStr var_5EC, ",0,"
  loc_D22E7A: ConcatVar var_5FC
  loc_D22E7E: FLdRfVar var_624
  loc_D22E81: FLdRfVar var_614
  loc_D22E84: LitVarStr var_610, "NumeApre"
  loc_D22E89: PopAdLdVar
  loc_D22E8A: FLdRfVar var_600
  loc_D22E8D: FLdPr Me
  loc_D22E90: MemLdPr global_76
  loc_D22E93:  = Me.Fields
  loc_D22E98: FLdPr var_600
  loc_D22E9B: from_stack_2 = Me.Item(from_stack_1)
  loc_D22EA0: FLdPr var_614
  loc_D22EA3:  = Me.Value
  loc_D22EA8: FLdRfVar var_624
  loc_D22EAB: ConcatVar var_634
  loc_D22EAF: LitVarStr var_644, ",28,'"
  loc_D22EB4: ConcatVar var_654
  loc_D22EB8: ILdRf var_88
  loc_D22EBB: CVarStr var_664
  loc_D22EBE: ConcatVar var_674
  loc_D22EC2: LitVarStr var_684, "','"
  loc_D22EC7: ConcatVar var_694
  loc_D22ECB: ILdRf lNumeCont
  loc_D22ECE: CVarI4
  loc_D22ED2: ConcatVar var_6B4
  loc_D22ED6: LitVarStr var_6C4, "',0,0,'Debitos de Contracargo',"
  loc_D22EDB: ConcatVar var_6D4
  loc_D22EDF: LitI4 0
  loc_D22EE4: LitI4 -1
  loc_D22EE9: LitI4 1
  loc_D22EEE: LitStr "."
  loc_D22EF1: LitStr ","
  loc_D22EF4: FLdRfVar var_6FC
  loc_D22EF7: FnCDblVar
  loc_D22EF9: CStrR8
  loc_D22EFB: FStStrNoPop var_104
  loc_D22EFE: ImpAdCallI2 Replace(, , , , , )
  loc_D22F03: CVarStr var_724
  loc_D22F06: ConcatVar var_734
  loc_D22F0A: LitVarStr var_710, ",0,'"
  loc_D22F0F: ConcatVar var_744
  loc_D22F13: ImpAdLdI4 MemVar_D9302C
  loc_D22F16: CVarStr var_754
  loc_D22F19: ConcatVar var_764
  loc_D22F1D: LitVarStr var_774, "');"
  loc_D22F22: ConcatVar var_784
  loc_D22F26: CStrVarVal var_108
  loc_D22F2A: Call Proc_261_10_A4592C()
  loc_D22F2F: FFreeStr var_104 = ""
  loc_D22F36: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = "": var_2CC = "": var_310 = "": var_368 = "": var_37C = "": var_550 = "": var_564 = "": var_5A8 = "": var_5BC = "": var_600 = "": var_614 = "": var_6D8 = ""
  loc_D22F67: FFreeVar var_47C = "": var_4CC = "": var_4DC = "": var_4FC = "": var_51C = "": var_52C = "": var_54C = "": var_574 = "": var_584 = "": var_5A4 = "": var_5CC = "": var_5DC = "": var_5FC = "": var_624 = "": var_634 = "": var_654 = "": var_674 = "": var_694 = "": var_6B4 = "": var_6FC = "": var_6D4 = "": var_724 = "": var_734 = "": var_744 = "": var_764 = "": var_784 = "": var_12C = "": var_100 = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = "": var_334 = "": var_344 = "": var_364 = "": var_38C = "": var_39C = "": var_3BC = "": var_3EC = "": var_43C = "": var_40C = "": var_44C = "": var_45C = "": var_49C = ""
  loc_D22FDA: FLdRfVar var_100
  loc_D22FDD: FLdRfVar var_11C
  loc_D22FE0: LitVarStr var_E0, "CodiConc"
  loc_D22FE5: PopAdLdVar
  loc_D22FE6: FLdRfVar var_118
  loc_D22FE9: FLdPr Me
  loc_D22FEC: MemLdPr global_72
  loc_D22FEF:  = Me.Fields
  loc_D22FF4: FLdPr var_118
  loc_D22FF7: from_stack_2 = Me.Item(from_stack_1)
  loc_D22FFC: FLdPr var_11C
  loc_D22FFF:  = Me.Value
  loc_D23004: FLdRfVar var_100
  loc_D23007: CStrVarTmp
  loc_D23008: FStStr var_A4
  loc_D2300B: FFreeAd var_118 = ""
  loc_D23012: FFree1Var var_100 = ""
  loc_D23015: FLdRfVar var_B8
  loc_D23018: CVarRef
  loc_D2301D: FLdRfVar var_100
  loc_D23020: ImpAdCallFPR4  = Year()
  loc_D23025: ILdRf var_A4
  loc_D23028: FLdRfVar var_100
  loc_D2302B: CI2Var
  loc_D2302C: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D23031: FStStr var_A8
  loc_D23034: FFree1Var var_100 = ""
  loc_D23037: FLdRfVar var_100
  loc_D2303A: FLdRfVar var_11C
  loc_D2303D: LitVarStr var_E0, "CapiDebo"
  loc_D23042: PopAdLdVar
  loc_D23043: FLdRfVar var_118
  loc_D23046: FLdPr Me
  loc_D23049: MemLdPr global_72
  loc_D2304C:  = Me.Fields
  loc_D23051: FLdPr var_118
  loc_D23054: from_stack_2 = Me.Item(from_stack_1)
  loc_D23059: FLdPr var_11C
  loc_D2305C:  = Me.Value
  loc_D23061: FLdRfVar var_12C
  loc_D23064: FLdRfVar var_17C
  loc_D23067: LitVarStr var_F0, "DecaDebo"
  loc_D2306C: PopAdLdVar
  loc_D2306D: FLdRfVar var_168
  loc_D23070: FLdPr Me
  loc_D23073: MemLdPr global_72
  loc_D23076:  = Me.Fields
  loc_D2307B: FLdPr var_168
  loc_D2307E: from_stack_2 = Me.Item(from_stack_1)
  loc_D23083: FLdPr var_17C
  loc_D23086:  = Me.Value
  loc_D2308B: FLdRfVar var_18C
  loc_D2308E: FLdRfVar var_1C4
  loc_D23091: LitVarStr var_178, "ExenDebo"
  loc_D23096: PopAdLdVar
  loc_D23097: FLdRfVar var_1C0
  loc_D2309A: FLdPr Me
  loc_D2309D: MemLdPr global_72
  loc_D230A0:  = Me.Fields
  loc_D230A5: FLdPr var_1C0
  loc_D230A8: from_stack_2 = Me.Item(from_stack_1)
  loc_D230AD: FLdPr var_1C4
  loc_D230B0:  = Me.Value
  loc_D230B5: LitI4 2
  loc_D230BA: FLdRfVar var_100
  loc_D230BD: FnCDblVar
  loc_D230BF: FLdRfVar var_12C
  loc_D230C2: FnCDblVar
  loc_D230C4: SubR4
  loc_D230C5: FLdRfVar var_18C
  loc_D230C8: FnCDblVar
  loc_D230CA: SubR4
  loc_D230CB: CVarR8
  loc_D230CF: FLdRfVar var_1BC
  loc_D230D2: ImpAdCallFPR4  = Round(, )
  loc_D230D7: FLdRfVar var_1BC
  loc_D230DA: CR4Var
  loc_D230DB: FStFPR8 var_B0
  loc_D230DE: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = ""
  loc_D230ED: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = ""
  loc_D230FA: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_D230FD: LitI4 1
  loc_D23102: LitI4 1
  loc_D23107: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D2310C: FStVarCopyObj var_100
  loc_D2310F: FLdRfVar var_100
  loc_D23112: FLdRfVar var_B8
  loc_D23115: CVarRef
  loc_D2311A: ImpAdCallI2 Format$(, )
  loc_D2311F: FStStrNoPop var_104
  loc_D23122: ConcatStr
  loc_D23123: FStStrNoPop var_108
  loc_D23126: LitStr " AND NumeAcpa = "
  loc_D23129: ConcatStr
  loc_D2312A: FStStrNoPop var_10C
  loc_D2312D: FLdUI1
  loc_D23131: CStrI2
  loc_D23133: FStStrNoPop var_110
  loc_D23136: ConcatStr
  loc_D23137: FStStrNoPop var_130
  loc_D2313A: LitStr " AND CodiConc = '"
  loc_D2313D: ConcatStr
  loc_D2313E: FStStrNoPop var_134
  loc_D23141: ILdRf var_A4
  loc_D23144: ConcatStr
  loc_D23145: FStStrNoPop var_138
  loc_D23148: LitStr "'"
  loc_D2314B: ConcatStr
  loc_D2314C: FStStrNoPop var_13C
  loc_D2314F: Call Proc_261_14_A45670()
  loc_D23154: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D23167: FFree1Var var_100 = ""
  loc_D2316A: FLdRfVar var_114
  loc_D2316D: FLdPr Me
  loc_D23170: MemLdPr global_80
  loc_D23173:  = Me.RecordCount
  loc_D23178: ILdRf var_114
  loc_D2317B: LitI4 0
  loc_D23180: GtI4
  loc_D23181: BranchF loc_D2322F
  loc_D23184: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_D23187: LitI4 0
  loc_D2318C: LitI4 -1
  loc_D23191: LitI4 1
  loc_D23196: LitStr "."
  loc_D23199: LitStr ","
  loc_D2319C: FLdFPR8 var_B0
  loc_D2319F: CStrR8
  loc_D231A1: FStStrNoPop var_104
  loc_D231A4: ImpAdCallI2 Replace(, , , , , )
  loc_D231A9: FStStrNoPop var_108
  loc_D231AC: ConcatStr
  loc_D231AD: FStStrNoPop var_10C
  loc_D231B0: LitStr " WHERE FechInre = "
  loc_D231B3: ConcatStr
  loc_D231B4: FStStrNoPop var_110
  loc_D231B7: LitI4 1
  loc_D231BC: LitI4 1
  loc_D231C1: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D231C6: FStVarCopyObj var_100
  loc_D231C9: FLdRfVar var_100
  loc_D231CC: FLdRfVar var_B8
  loc_D231CF: CVarRef
  loc_D231D4: ImpAdCallI2 Format$(, )
  loc_D231D9: FStStrNoPop var_130
  loc_D231DC: ConcatStr
  loc_D231DD: FStStrNoPop var_134
  loc_D231E0: LitStr " AND NumeAcpa = "
  loc_D231E3: ConcatStr
  loc_D231E4: FStStrNoPop var_138
  loc_D231E7: FLdUI1
  loc_D231EB: CStrI2
  loc_D231ED: FStStrNoPop var_13C
  loc_D231F0: ConcatStr
  loc_D231F1: FStStrNoPop var_140
  loc_D231F4: LitStr " AND CodiConc = '"
  loc_D231F7: ConcatStr
  loc_D231F8: FStStrNoPop var_144
  loc_D231FB: ILdRf var_A4
  loc_D231FE: ConcatStr
  loc_D231FF: FStStrNoPop var_148
  loc_D23202: LitStr "'"
  loc_D23205: ConcatStr
  loc_D23206: FStStrNoPop var_14C
  loc_D23209: Call Proc_261_10_A4592C()
  loc_D2320E: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D23229: FFree1Var var_100 = ""
  loc_D2322C: Branch loc_D23325
  loc_D2322F: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir, IdContra) "
  loc_D23232: LitStr " VALUES ("
  loc_D23235: ConcatStr
  loc_D23236: FStStrNoPop var_104
  loc_D23239: LitI4 1
  loc_D2323E: LitI4 1
  loc_D23243: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D23248: FStVarCopyObj var_100
  loc_D2324B: FLdRfVar var_100
  loc_D2324E: FLdRfVar var_B8
  loc_D23251: CVarRef
  loc_D23256: ImpAdCallI2 Format$(, )
  loc_D2325B: FStStrNoPop var_108
  loc_D2325E: ConcatStr
  loc_D2325F: FStStrNoPop var_10C
  loc_D23262: LitStr ","
  loc_D23265: ConcatStr
  loc_D23266: FStStrNoPop var_110
  loc_D23269: FLdUI1
  loc_D2326D: CStrI2
  loc_D2326F: FStStrNoPop var_130
  loc_D23272: ConcatStr
  loc_D23273: FStStrNoPop var_134
  loc_D23276: LitStr ",'"
  loc_D23279: ConcatStr
  loc_D2327A: FStStrNoPop var_138
  loc_D2327D: ILdRf var_A4
  loc_D23280: ConcatStr
  loc_D23281: FStStrNoPop var_13C
  loc_D23284: LitStr "','"
  loc_D23287: ConcatStr
  loc_D23288: FStStrNoPop var_140
  loc_D2328B: ILdRf var_A8
  loc_D2328E: ConcatStr
  loc_D2328F: FStStrNoPop var_144
  loc_D23292: LitStr "',"
  loc_D23295: ConcatStr
  loc_D23296: FStStrNoPop var_148
  loc_D23299: FLdUI1
  loc_D2329D: CStrI2
  loc_D2329F: FStStrNoPop var_14C
  loc_D232A2: ConcatStr
  loc_D232A3: FStStrNoPop var_150
  loc_D232A6: LitStr ","
  loc_D232A9: ConcatStr
  loc_D232AA: FStStrNoPop var_158
  loc_D232AD: LitI4 0
  loc_D232B2: LitI4 -1
  loc_D232B7: LitI4 1
  loc_D232BC: LitStr "."
  loc_D232BF: LitStr ","
  loc_D232C2: FLdFPR8 var_B0
  loc_D232C5: CStrR8
  loc_D232C7: FStStrNoPop var_154
  loc_D232CA: ImpAdCallI2 Replace(, , , , , )
  loc_D232CF: FStStrNoPop var_15C
  loc_D232D2: ConcatStr
  loc_D232D3: FStStrNoPop var_160
  loc_D232D6: LitStr ","
  loc_D232D9: ConcatStr
  loc_D232DA: FStStrNoPop var_7A8
  loc_D232DD: FLdI2 var_B4
  loc_D232E0: CStrUI1
  loc_D232E2: FStStrNoPop var_7AC
  loc_D232E5: ConcatStr
  loc_D232E6: FStStrNoPop var_7B0
  loc_D232E9: LitStr ")"
  loc_D232EC: ConcatStr
  loc_D232ED: FStStrNoPop var_7B4
  loc_D232F0: Call Proc_261_10_A4592C()
  loc_D232F5: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_7A8 = "": var_7AC = "": var_7B0 = ""
  loc_D23322: FFree1Var var_100 = ""
  loc_D23325: FLdRfVar var_100
  loc_D23328: FLdRfVar var_11C
  loc_D2332B: LitVarStr var_E0, "RecaDebo"
  loc_D23330: PopAdLdVar
  loc_D23331: FLdRfVar var_118
  loc_D23334: FLdPr Me
  loc_D23337: MemLdPr global_72
  loc_D2333A:  = Me.Fields
  loc_D2333F: FLdPr var_118
  loc_D23342: from_stack_2 = Me.Item(from_stack_1)
  loc_D23347: FLdPr var_11C
  loc_D2334A:  = Me.Value
  loc_D2334F: FLdRfVar var_100
  loc_D23352: FnCDblVar
  loc_D23354: LitI2_Byte 0
  loc_D23356: CR8I2
  loc_D23357: GtR4
  loc_D23358: FFreeAd var_118 = ""
  loc_D2335F: FFree1Var var_100 = ""
  loc_D23362: BranchF loc_D2360D
  loc_D23365: FLdRfVar var_B8
  loc_D23368: CVarRef
  loc_D2336D: FLdRfVar var_100
  loc_D23370: ImpAdCallFPR4  = Year()
  loc_D23375: FLdRfVar var_100
  loc_D23378: CI2Var
  loc_D23379: ImpAdCallI2 Proc_270_53_A7BDC0()
  loc_D2337E: FStStr var_A4
  loc_D23381: FFree1Var var_100 = ""
  loc_D23384: FLdRfVar var_B8
  loc_D23387: CVarRef
  loc_D2338C: FLdRfVar var_100
  loc_D2338F: ImpAdCallFPR4  = Year()
  loc_D23394: ILdRf var_A4
  loc_D23397: FLdRfVar var_100
  loc_D2339A: CI2Var
  loc_D2339B: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D233A0: FStStr var_A8
  loc_D233A3: FFree1Var var_100 = ""
  loc_D233A6: FLdRfVar var_100
  loc_D233A9: FLdRfVar var_11C
  loc_D233AC: LitVarStr var_E0, "RecaDebo"
  loc_D233B1: PopAdLdVar
  loc_D233B2: FLdRfVar var_118
  loc_D233B5: FLdPr Me
  loc_D233B8: MemLdPr global_72
  loc_D233BB:  = Me.Fields
  loc_D233C0: FLdPr var_118
  loc_D233C3: from_stack_2 = Me.Item(from_stack_1)
  loc_D233C8: FLdPr var_11C
  loc_D233CB:  = Me.Value
  loc_D233D0: FLdRfVar var_100
  loc_D233D3: FnCDblVar
  loc_D233D5: FStFPR8 var_B0
  loc_D233D8: FFreeAd var_118 = ""
  loc_D233DF: FFree1Var var_100 = ""
  loc_D233E2: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_D233E5: LitI4 1
  loc_D233EA: LitI4 1
  loc_D233EF: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D233F4: FStVarCopyObj var_100
  loc_D233F7: FLdRfVar var_100
  loc_D233FA: FLdRfVar var_B8
  loc_D233FD: CVarRef
  loc_D23402: ImpAdCallI2 Format$(, )
  loc_D23407: FStStrNoPop var_104
  loc_D2340A: ConcatStr
  loc_D2340B: FStStrNoPop var_108
  loc_D2340E: LitStr " AND NumeAcpa = "
  loc_D23411: ConcatStr
  loc_D23412: FStStrNoPop var_10C
  loc_D23415: FLdUI1
  loc_D23419: CStrI2
  loc_D2341B: FStStrNoPop var_110
  loc_D2341E: ConcatStr
  loc_D2341F: FStStrNoPop var_130
  loc_D23422: LitStr " AND CodiConc = '"
  loc_D23425: ConcatStr
  loc_D23426: FStStrNoPop var_134
  loc_D23429: ILdRf var_A4
  loc_D2342C: ConcatStr
  loc_D2342D: FStStrNoPop var_138
  loc_D23430: LitStr "'"
  loc_D23433: ConcatStr
  loc_D23434: FStStrNoPop var_13C
  loc_D23437: Call Proc_261_14_A45670()
  loc_D2343C: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D2344F: FFree1Var var_100 = ""
  loc_D23452: FLdRfVar var_114
  loc_D23455: FLdPr Me
  loc_D23458: MemLdPr global_80
  loc_D2345B:  = Me.RecordCount
  loc_D23460: ILdRf var_114
  loc_D23463: LitI4 0
  loc_D23468: GtI4
  loc_D23469: BranchF loc_D23517
  loc_D2346C: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_D2346F: LitI4 0
  loc_D23474: LitI4 -1
  loc_D23479: LitI4 1
  loc_D2347E: LitStr "."
  loc_D23481: LitStr ","
  loc_D23484: FLdFPR8 var_B0
  loc_D23487: CStrR8
  loc_D23489: FStStrNoPop var_104
  loc_D2348C: ImpAdCallI2 Replace(, , , , , )
  loc_D23491: FStStrNoPop var_108
  loc_D23494: ConcatStr
  loc_D23495: FStStrNoPop var_10C
  loc_D23498: LitStr " WHERE FechInre = "
  loc_D2349B: ConcatStr
  loc_D2349C: FStStrNoPop var_110
  loc_D2349F: LitI4 1
  loc_D234A4: LitI4 1
  loc_D234A9: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D234AE: FStVarCopyObj var_100
  loc_D234B1: FLdRfVar var_100
  loc_D234B4: FLdRfVar var_B8
  loc_D234B7: CVarRef
  loc_D234BC: ImpAdCallI2 Format$(, )
  loc_D234C1: FStStrNoPop var_130
  loc_D234C4: ConcatStr
  loc_D234C5: FStStrNoPop var_134
  loc_D234C8: LitStr " AND NumeAcpa = "
  loc_D234CB: ConcatStr
  loc_D234CC: FStStrNoPop var_138
  loc_D234CF: FLdUI1
  loc_D234D3: CStrI2
  loc_D234D5: FStStrNoPop var_13C
  loc_D234D8: ConcatStr
  loc_D234D9: FStStrNoPop var_140
  loc_D234DC: LitStr " AND CodiConc = '"
  loc_D234DF: ConcatStr
  loc_D234E0: FStStrNoPop var_144
  loc_D234E3: ILdRf var_A4
  loc_D234E6: ConcatStr
  loc_D234E7: FStStrNoPop var_148
  loc_D234EA: LitStr "'"
  loc_D234ED: ConcatStr
  loc_D234EE: FStStrNoPop var_14C
  loc_D234F1: Call Proc_261_10_A4592C()
  loc_D234F6: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D23511: FFree1Var var_100 = ""
  loc_D23514: Branch loc_D2360D
  loc_D23517: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir, IdContra) "
  loc_D2351A: LitStr " VALUES ("
  loc_D2351D: ConcatStr
  loc_D2351E: FStStrNoPop var_104
  loc_D23521: LitI4 1
  loc_D23526: LitI4 1
  loc_D2352B: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D23530: FStVarCopyObj var_100
  loc_D23533: FLdRfVar var_100
  loc_D23536: FLdRfVar var_B8
  loc_D23539: CVarRef
  loc_D2353E: ImpAdCallI2 Format$(, )
  loc_D23543: FStStrNoPop var_108
  loc_D23546: ConcatStr
  loc_D23547: FStStrNoPop var_10C
  loc_D2354A: LitStr ","
  loc_D2354D: ConcatStr
  loc_D2354E: FStStrNoPop var_110
  loc_D23551: FLdUI1
  loc_D23555: CStrI2
  loc_D23557: FStStrNoPop var_130
  loc_D2355A: ConcatStr
  loc_D2355B: FStStrNoPop var_134
  loc_D2355E: LitStr ",'"
  loc_D23561: ConcatStr
  loc_D23562: FStStrNoPop var_138
  loc_D23565: ILdRf var_A4
  loc_D23568: ConcatStr
  loc_D23569: FStStrNoPop var_13C
  loc_D2356C: LitStr "','"
  loc_D2356F: ConcatStr
  loc_D23570: FStStrNoPop var_140
  loc_D23573: ILdRf var_A8
  loc_D23576: ConcatStr
  loc_D23577: FStStrNoPop var_144
  loc_D2357A: LitStr "',"
  loc_D2357D: ConcatStr
  loc_D2357E: FStStrNoPop var_148
  loc_D23581: FLdUI1
  loc_D23585: CStrI2
  loc_D23587: FStStrNoPop var_14C
  loc_D2358A: ConcatStr
  loc_D2358B: FStStrNoPop var_150
  loc_D2358E: LitStr ","
  loc_D23591: ConcatStr
  loc_D23592: FStStrNoPop var_158
  loc_D23595: LitI4 0
  loc_D2359A: LitI4 -1
  loc_D2359F: LitI4 1
  loc_D235A4: LitStr "."
  loc_D235A7: LitStr ","
  loc_D235AA: FLdFPR8 var_B0
  loc_D235AD: CStrR8
  loc_D235AF: FStStrNoPop var_154
  loc_D235B2: ImpAdCallI2 Replace(, , , , , )
  loc_D235B7: FStStrNoPop var_15C
  loc_D235BA: ConcatStr
  loc_D235BB: FStStrNoPop var_160
  loc_D235BE: LitStr ","
  loc_D235C1: ConcatStr
  loc_D235C2: FStStrNoPop var_7A8
  loc_D235C5: FLdI2 var_B4
  loc_D235C8: CStrUI1
  loc_D235CA: FStStrNoPop var_7AC
  loc_D235CD: ConcatStr
  loc_D235CE: FStStrNoPop var_7B0
  loc_D235D1: LitStr ")"
  loc_D235D4: ConcatStr
  loc_D235D5: FStStrNoPop var_7B4
  loc_D235D8: Call Proc_261_10_A4592C()
  loc_D235DD: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_7A8 = "": var_7AC = "": var_7B0 = ""
  loc_D2360A: FFree1Var var_100 = ""
  loc_D2360D: FLdRfVar var_100
  loc_D23610: FLdRfVar var_11C
  loc_D23613: LitVarStr var_E0, "InteDebo"
  loc_D23618: PopAdLdVar
  loc_D23619: FLdRfVar var_118
  loc_D2361C: FLdPr Me
  loc_D2361F: MemLdPr global_72
  loc_D23622:  = Me.Fields
  loc_D23627: FLdPr var_118
  loc_D2362A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2362F: FLdPr var_11C
  loc_D23632:  = Me.Value
  loc_D23637: FLdRfVar var_100
  loc_D2363A: FnCDblVar
  loc_D2363C: LitI2_Byte 0
  loc_D2363E: CR8I2
  loc_D2363F: GtR4
  loc_D23640: FFreeAd var_118 = ""
  loc_D23647: FFree1Var var_100 = ""
  loc_D2364A: BranchF loc_D238F5
  loc_D2364D: FLdRfVar var_B8
  loc_D23650: CVarRef
  loc_D23655: FLdRfVar var_100
  loc_D23658: ImpAdCallFPR4  = Year()
  loc_D2365D: FLdRfVar var_100
  loc_D23660: CI2Var
  loc_D23661: ImpAdCallI2 Proc_270_54_A799D0()
  loc_D23666: FStStr var_A4
  loc_D23669: FFree1Var var_100 = ""
  loc_D2366C: FLdRfVar var_B8
  loc_D2366F: CVarRef
  loc_D23674: FLdRfVar var_100
  loc_D23677: ImpAdCallFPR4  = Year()
  loc_D2367C: ILdRf var_A4
  loc_D2367F: FLdRfVar var_100
  loc_D23682: CI2Var
  loc_D23683: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D23688: FStStr var_A8
  loc_D2368B: FFree1Var var_100 = ""
  loc_D2368E: FLdRfVar var_100
  loc_D23691: FLdRfVar var_11C
  loc_D23694: LitVarStr var_E0, "InteDebo"
  loc_D23699: PopAdLdVar
  loc_D2369A: FLdRfVar var_118
  loc_D2369D: FLdPr Me
  loc_D236A0: MemLdPr global_72
  loc_D236A3:  = Me.Fields
  loc_D236A8: FLdPr var_118
  loc_D236AB: from_stack_2 = Me.Item(from_stack_1)
  loc_D236B0: FLdPr var_11C
  loc_D236B3:  = Me.Value
  loc_D236B8: FLdRfVar var_100
  loc_D236BB: FnCDblVar
  loc_D236BD: FStFPR8 var_B0
  loc_D236C0: FFreeAd var_118 = ""
  loc_D236C7: FFree1Var var_100 = ""
  loc_D236CA: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_D236CD: LitI4 1
  loc_D236D2: LitI4 1
  loc_D236D7: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D236DC: FStVarCopyObj var_100
  loc_D236DF: FLdRfVar var_100
  loc_D236E2: FLdRfVar var_B8
  loc_D236E5: CVarRef
  loc_D236EA: ImpAdCallI2 Format$(, )
  loc_D236EF: FStStrNoPop var_104
  loc_D236F2: ConcatStr
  loc_D236F3: FStStrNoPop var_108
  loc_D236F6: LitStr " AND NumeAcpa = "
  loc_D236F9: ConcatStr
  loc_D236FA: FStStrNoPop var_10C
  loc_D236FD: FLdUI1
  loc_D23701: CStrI2
  loc_D23703: FStStrNoPop var_110
  loc_D23706: ConcatStr
  loc_D23707: FStStrNoPop var_130
  loc_D2370A: LitStr " AND CodiConc = '"
  loc_D2370D: ConcatStr
  loc_D2370E: FStStrNoPop var_134
  loc_D23711: ILdRf var_A4
  loc_D23714: ConcatStr
  loc_D23715: FStStrNoPop var_138
  loc_D23718: LitStr "'"
  loc_D2371B: ConcatStr
  loc_D2371C: FStStrNoPop var_13C
  loc_D2371F: Call Proc_261_14_A45670()
  loc_D23724: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D23737: FFree1Var var_100 = ""
  loc_D2373A: FLdRfVar var_114
  loc_D2373D: FLdPr Me
  loc_D23740: MemLdPr global_80
  loc_D23743:  = Me.RecordCount
  loc_D23748: ILdRf var_114
  loc_D2374B: LitI4 0
  loc_D23750: GtI4
  loc_D23751: BranchF loc_D237FF
  loc_D23754: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_D23757: LitI4 0
  loc_D2375C: LitI4 -1
  loc_D23761: LitI4 1
  loc_D23766: LitStr "."
  loc_D23769: LitStr ","
  loc_D2376C: FLdFPR8 var_B0
  loc_D2376F: CStrR8
  loc_D23771: FStStrNoPop var_104
  loc_D23774: ImpAdCallI2 Replace(, , , , , )
  loc_D23779: FStStrNoPop var_108
  loc_D2377C: ConcatStr
  loc_D2377D: FStStrNoPop var_10C
  loc_D23780: LitStr " WHERE FechInre = "
  loc_D23783: ConcatStr
  loc_D23784: FStStrNoPop var_110
  loc_D23787: LitI4 1
  loc_D2378C: LitI4 1
  loc_D23791: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D23796: FStVarCopyObj var_100
  loc_D23799: FLdRfVar var_100
  loc_D2379C: FLdRfVar var_B8
  loc_D2379F: CVarRef
  loc_D237A4: ImpAdCallI2 Format$(, )
  loc_D237A9: FStStrNoPop var_130
  loc_D237AC: ConcatStr
  loc_D237AD: FStStrNoPop var_134
  loc_D237B0: LitStr " AND NumeAcpa = "
  loc_D237B3: ConcatStr
  loc_D237B4: FStStrNoPop var_138
  loc_D237B7: FLdUI1
  loc_D237BB: CStrI2
  loc_D237BD: FStStrNoPop var_13C
  loc_D237C0: ConcatStr
  loc_D237C1: FStStrNoPop var_140
  loc_D237C4: LitStr " AND CodiConc = '"
  loc_D237C7: ConcatStr
  loc_D237C8: FStStrNoPop var_144
  loc_D237CB: ILdRf var_A4
  loc_D237CE: ConcatStr
  loc_D237CF: FStStrNoPop var_148
  loc_D237D2: LitStr "'"
  loc_D237D5: ConcatStr
  loc_D237D6: FStStrNoPop var_14C
  loc_D237D9: Call Proc_261_10_A4592C()
  loc_D237DE: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D237F9: FFree1Var var_100 = ""
  loc_D237FC: Branch loc_D238F5
  loc_D237FF: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir, IdContra) "
  loc_D23802: LitStr " VALUES ("
  loc_D23805: ConcatStr
  loc_D23806: FStStrNoPop var_104
  loc_D23809: LitI4 1
  loc_D2380E: LitI4 1
  loc_D23813: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D23818: FStVarCopyObj var_100
  loc_D2381B: FLdRfVar var_100
  loc_D2381E: FLdRfVar var_B8
  loc_D23821: CVarRef
  loc_D23826: ImpAdCallI2 Format$(, )
  loc_D2382B: FStStrNoPop var_108
  loc_D2382E: ConcatStr
  loc_D2382F: FStStrNoPop var_10C
  loc_D23832: LitStr ","
  loc_D23835: ConcatStr
  loc_D23836: FStStrNoPop var_110
  loc_D23839: FLdUI1
  loc_D2383D: CStrI2
  loc_D2383F: FStStrNoPop var_130
  loc_D23842: ConcatStr
  loc_D23843: FStStrNoPop var_134
  loc_D23846: LitStr ",'"
  loc_D23849: ConcatStr
  loc_D2384A: FStStrNoPop var_138
  loc_D2384D: ILdRf var_A4
  loc_D23850: ConcatStr
  loc_D23851: FStStrNoPop var_13C
  loc_D23854: LitStr "','"
  loc_D23857: ConcatStr
  loc_D23858: FStStrNoPop var_140
  loc_D2385B: ILdRf var_A8
  loc_D2385E: ConcatStr
  loc_D2385F: FStStrNoPop var_144
  loc_D23862: LitStr "',"
  loc_D23865: ConcatStr
  loc_D23866: FStStrNoPop var_148
  loc_D23869: FLdUI1
  loc_D2386D: CStrI2
  loc_D2386F: FStStrNoPop var_14C
  loc_D23872: ConcatStr
  loc_D23873: FStStrNoPop var_150
  loc_D23876: LitStr ","
  loc_D23879: ConcatStr
  loc_D2387A: FStStrNoPop var_158
  loc_D2387D: LitI4 0
  loc_D23882: LitI4 -1
  loc_D23887: LitI4 1
  loc_D2388C: LitStr "."
  loc_D2388F: LitStr ","
  loc_D23892: FLdFPR8 var_B0
  loc_D23895: CStrR8
  loc_D23897: FStStrNoPop var_154
  loc_D2389A: ImpAdCallI2 Replace(, , , , , )
  loc_D2389F: FStStrNoPop var_15C
  loc_D238A2: ConcatStr
  loc_D238A3: FStStrNoPop var_160
  loc_D238A6: LitStr ","
  loc_D238A9: ConcatStr
  loc_D238AA: FStStrNoPop var_7A8
  loc_D238AD: FLdI2 var_B4
  loc_D238B0: CStrUI1
  loc_D238B2: FStStrNoPop var_7AC
  loc_D238B5: ConcatStr
  loc_D238B6: FStStrNoPop var_7B0
  loc_D238B9: LitStr ")"
  loc_D238BC: ConcatStr
  loc_D238BD: FStStrNoPop var_7B4
  loc_D238C0: Call Proc_261_10_A4592C()
  loc_D238C5: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_7A8 = "": var_7AC = "": var_7B0 = ""
  loc_D238F2: FFree1Var var_100 = ""
  loc_D238F5: FLdPr Me
  loc_D238F8: MemLdPr global_72
  loc_D238FB: Me.MoveNext
  loc_D23900: Branch loc_D21FA3
  loc_D23903: LitVarStr var_F0, "SELECT * FROM detabole WHERE PeriBole = "
  loc_D23908: FLdRfVar var_100
  loc_D2390B: FLdRfVar var_11C
  loc_D2390E: LitVarStr var_E0, "PeriBole"
  loc_D23913: PopAdLdVar
  loc_D23914: FLdRfVar var_118
  loc_D23917: FLdPr Me
  loc_D2391A: MemLdPr global_68
  loc_D2391D:  = Me.Fields
  loc_D23922: FLdPr var_118
  loc_D23925: from_stack_2 = Me.Item(from_stack_1)
  loc_D2392A: FLdPr var_11C
  loc_D2392D:  = Me.Value
  loc_D23932: FLdRfVar var_100
  loc_D23935: ConcatVar var_12C
  loc_D23939: LitVarStr var_178, " AND NumeBole = "
  loc_D2393E: ConcatVar var_18C
  loc_D23942: FLdRfVar var_1AC
  loc_D23945: FLdRfVar var_17C
  loc_D23948: LitVarStr var_19C, "NumeBole"
  loc_D2394D: PopAdLdVar
  loc_D2394E: FLdRfVar var_168
  loc_D23951: FLdPr Me
  loc_D23954: MemLdPr global_68
  loc_D23957:  = Me.Fields
  loc_D2395C: FLdPr var_168
  loc_D2395F: from_stack_2 = Me.Item(from_stack_1)
  loc_D23964: FLdPr var_17C
  loc_D23967:  = Me.Value
  loc_D2396C: FLdRfVar var_1AC
  loc_D2396F: ConcatVar var_1BC
  loc_D23973: LitVarStr var_1F4, " AND CodiFapa > 0 "
  loc_D23978: ConcatVar var_1D4
  loc_D2397C: LitVarStr var_218, " GROUP BY  PeriBole, NumeBole, CodiFapa, CuotDefa"
  loc_D23981: ConcatVar var_1E4
  loc_D23985: CStrVarVal var_104
  loc_D23989: Call Proc_261_12_A45788()
  loc_D2398E: FFree1Str var_104
  loc_D23991: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D2399C: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = ""
  loc_D239AD: FLdRfVar var_114
  loc_D239B0: FLdPr Me
  loc_D239B3: MemLdPr global_72
  loc_D239B6:  = Me.RecordCount
  loc_D239BB: ILdRf var_114
  loc_D239BE: LitI4 0
  loc_D239C3: GtI4
  loc_D239C4: BranchF loc_D23DB9
  loc_D239C7: FLdPr Me
  loc_D239CA: MemLdPr global_72
  loc_D239CD: Me.MoveFirst
  loc_D239D2: FLdRfVar var_162
  loc_D239D5: FLdPr Me
  loc_D239D8: MemLdPr global_72
  loc_D239DB:  = Me.EOF
  loc_D239E0: FLdI2 var_162
  loc_D239E3: NotI4
  loc_D239E4: BranchF loc_D23DB9
  loc_D239E7: FLdRfVar var_100
  loc_D239EA: FLdRfVar var_11C
  loc_D239ED: LitVarStr var_E0, "CodiFapa"
  loc_D239F2: PopAdLdVar
  loc_D239F3: FLdRfVar var_118
  loc_D239F6: FLdPr Me
  loc_D239F9: MemLdPr global_72
  loc_D239FC:  = Me.Fields
  loc_D23A01: FLdPr var_118
  loc_D23A04: from_stack_2 = Me.Item(from_stack_1)
  loc_D23A09: FLdPr var_11C
  loc_D23A0C:  = Me.Value
  loc_D23A11: FLdRfVar var_100
  loc_D23A14: FnCLngVar
  loc_D23A16: ImpAdCallUI1 Proc_270_146_A802BC()
  loc_D23A1C: FStUI1 var_BC
  loc_D23A20: FFreeAd var_118 = ""
  loc_D23A27: FFree1Var var_100 = ""
  loc_D23A2A: FLdUI1
  loc_D23A2E: CI2UI1
  loc_D23A30: LitI2_Byte 0
  loc_D23A32: EqI2
  loc_D23A33: BranchF loc_D23C07
  loc_D23A36: FLdRfVar var_100
  loc_D23A39: FLdRfVar var_11C
  loc_D23A3C: LitVarStr var_E0, "CodiFapa"
  loc_D23A41: PopAdLdVar
  loc_D23A42: FLdRfVar var_118
  loc_D23A45: FLdPr Me
  loc_D23A48: MemLdPr global_72
  loc_D23A4B:  = Me.Fields
  loc_D23A50: FLdPr var_118
  loc_D23A53: from_stack_2 = Me.Item(from_stack_1)
  loc_D23A58: FLdPr var_11C
  loc_D23A5B:  = Me.Value
  loc_D23A60: FLdRfVar var_12C
  loc_D23A63: FLdRfVar var_17C
  loc_D23A66: LitVarStr var_F0, "CuotDefa"
  loc_D23A6B: PopAdLdVar
  loc_D23A6C: FLdRfVar var_168
  loc_D23A6F: FLdPr Me
  loc_D23A72: MemLdPr global_72
  loc_D23A75:  = Me.Fields
  loc_D23A7A: FLdPr var_168
  loc_D23A7D: from_stack_2 = Me.Item(from_stack_1)
  loc_D23A82: FLdPr var_17C
  loc_D23A85:  = Me.Value
  loc_D23A8A: FLdRfVar var_12C
  loc_D23A8D: CI2Var
  loc_D23A8E: FLdRfVar var_100
  loc_D23A91: CI4Var
  loc_D23A93: ImpAdCallFPR4 Proc_270_126_A9405C(, )
  loc_D23A98: FStFPR8 var_C4
  loc_D23A9B: FFreeAd var_118 = "": var_168 = "": var_11C = ""
  loc_D23AA6: FFreeVar var_100 = ""
  loc_D23AAD: FLdFPR8 var_C4
  loc_D23AB0: LitI2_Byte 0
  loc_D23AB2: CR8I2
  loc_D23AB3: GtR4
  loc_D23AB4: BranchF loc_D23B59
  loc_D23AB7: LitVarStr var_F0, " UPDATE detafapa SET EstaDefa = 'Emitida', FepaDefa = Null WHERE CodiFapa = "
  loc_D23ABC: FLdRfVar var_100
  loc_D23ABF: FLdRfVar var_11C
  loc_D23AC2: LitVarStr var_E0, "CodiFapa"
  loc_D23AC7: PopAdLdVar
  loc_D23AC8: FLdRfVar var_118
  loc_D23ACB: FLdPr Me
  loc_D23ACE: MemLdPr global_72
  loc_D23AD1:  = Me.Fields
  loc_D23AD6: FLdPr var_118
  loc_D23AD9: from_stack_2 = Me.Item(from_stack_1)
  loc_D23ADE: FLdPr var_11C
  loc_D23AE1:  = Me.Value
  loc_D23AE6: FLdRfVar var_100
  loc_D23AE9: ConcatVar var_12C
  loc_D23AED: LitVarStr var_178, " AND CuotDefa = "
  loc_D23AF2: ConcatVar var_18C
  loc_D23AF6: FLdRfVar var_1AC
  loc_D23AF9: FLdRfVar var_17C
  loc_D23AFC: LitVarStr var_19C, "CuotDefa"
  loc_D23B01: PopAdLdVar
  loc_D23B02: FLdRfVar var_168
  loc_D23B05: FLdPr Me
  loc_D23B08: MemLdPr global_72
  loc_D23B0B:  = Me.Fields
  loc_D23B10: FLdPr var_168
  loc_D23B13: from_stack_2 = Me.Item(from_stack_1)
  loc_D23B18: FLdPr var_17C
  loc_D23B1B:  = Me.Value
  loc_D23B20: FLdRfVar var_1AC
  loc_D23B23: ConcatVar var_1BC
  loc_D23B27: LitVarStr var_1F4, ";"
  loc_D23B2C: ConcatVar var_1D4
  loc_D23B30: CStrVarVal var_104
  loc_D23B34: Call Proc_261_10_A4592C()
  loc_D23B39: FFree1Str var_104
  loc_D23B3C: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D23B47: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = ""
  loc_D23B56: Branch loc_D23B59
  loc_D23B59: FLdRfVar var_162
  loc_D23B5C: FLdRfVar var_100
  loc_D23B5F: FLdRfVar var_11C
  loc_D23B62: LitVarStr var_E0, "CodiFapa"
  loc_D23B67: PopAdLdVar
  loc_D23B68: FLdRfVar var_118
  loc_D23B6B: FLdPr Me
  loc_D23B6E: MemLdPr global_72
  loc_D23B71:  = Me.Fields
  loc_D23B76: FLdPr var_118
  loc_D23B79: from_stack_2 = Me.Item(from_stack_1)
  loc_D23B7E: FLdPr var_11C
  loc_D23B81:  = Me.Value
  loc_D23B86: FLdRfVar var_100
  loc_D23B89: CI4Var
  loc_D23B8B: FLdRfVar var_90
  loc_D23B8E: NewIfNullPr clsdetafapa
  loc_D23B91: from_stack_2v = clsdetafapa.BuscaCuotasImpagas(from_stack_1v)
  loc_D23B96: FLdI2 var_162
  loc_D23B99: LitI2_Byte 0
  loc_D23B9B: EqI2
  loc_D23B9C: FFreeAd var_118 = ""
  loc_D23BA3: FFree1Var var_100 = ""
  loc_D23BA6: BranchF loc_D23C04
  loc_D23BA9: LitVarStr var_F0, " UPDATE facipago SET EstaFapa = 'Activa', FepaFapa = Null WHERE CodiFapa = "
  loc_D23BAE: FLdRfVar var_100
  loc_D23BB1: FLdRfVar var_11C
  loc_D23BB4: LitVarStr var_E0, "CodiFapa"
  loc_D23BB9: PopAdLdVar
  loc_D23BBA: FLdRfVar var_118
  loc_D23BBD: FLdPr Me
  loc_D23BC0: MemLdPr global_72
  loc_D23BC3:  = Me.Fields
  loc_D23BC8: FLdPr var_118
  loc_D23BCB: from_stack_2 = Me.Item(from_stack_1)
  loc_D23BD0: FLdPr var_11C
  loc_D23BD3:  = Me.Value
  loc_D23BD8: FLdRfVar var_100
  loc_D23BDB: ConcatVar var_12C
  loc_D23BDF: LitVarStr var_178, ";"
  loc_D23BE4: ConcatVar var_18C
  loc_D23BE8: CStrVarVal var_104
  loc_D23BEC: Call Proc_261_10_A4592C()
  loc_D23BF1: FFree1Str var_104
  loc_D23BF4: FFreeAd var_118 = ""
  loc_D23BFB: FFreeVar var_100 = "": var_12C = ""
  loc_D23C04: Branch loc_D23DAB
  loc_D23C07: FLdRfVar var_11C
  loc_D23C0A: LitVarStr var_E0, "FepaPago"
  loc_D23C0F: PopAdLdVar
  loc_D23C10: FLdRfVar var_118
  loc_D23C13: FLdPr Me
  loc_D23C16: MemLdPr global_68
  loc_D23C19:  = Me.Fields
  loc_D23C1E: FLdPr var_118
  loc_D23C21: from_stack_2 = Me.Item(from_stack_1)
  loc_D23C26: LitStr " UPDATE detafapa SET EstaDefa = 'Pagada', FepaDefa = '"
  loc_D23C29: LitI4 1
  loc_D23C2E: LitI4 1
  loc_D23C33: LitVarStr var_F0, "yyyy-mm-dd"
  loc_D23C38: FStVarCopyObj var_12C
  loc_D23C3B: FLdRfVar var_12C
  loc_D23C3E: FLdZeroAd var_11C
  loc_D23C41: CVarAd
  loc_D23C45: ImpAdCallI2 Format$(, )
  loc_D23C4A: FStStrNoPop var_104
  loc_D23C4D: ConcatStr
  loc_D23C4E: FStStrNoPop var_108
  loc_D23C51: LitStr "' WHERE CodiFapa = "
  loc_D23C54: ConcatStr
  loc_D23C55: CVarStr var_1AC
  loc_D23C58: FLdRfVar var_18C
  loc_D23C5B: FLdRfVar var_17C
  loc_D23C5E: LitVarStr var_178, "CodiFapa"
  loc_D23C63: PopAdLdVar
  loc_D23C64: FLdRfVar var_168
  loc_D23C67: FLdPr Me
  loc_D23C6A: MemLdPr global_72
  loc_D23C6D:  = Me.Fields
  loc_D23C72: FLdPr var_168
  loc_D23C75: from_stack_2 = Me.Item(from_stack_1)
  loc_D23C7A: FLdPr var_17C
  loc_D23C7D:  = Me.Value
  loc_D23C82: FLdRfVar var_18C
  loc_D23C85: ConcatVar var_1BC
  loc_D23C89: LitVarStr var_19C, " AND CuotDefa = "
  loc_D23C8E: ConcatVar var_1D4
  loc_D23C92: FLdRfVar var_1E4
  loc_D23C95: FLdRfVar var_1C4
  loc_D23C98: LitVarStr var_1F4, "CuotDefa"
  loc_D23C9D: PopAdLdVar
  loc_D23C9E: FLdRfVar var_1C0
  loc_D23CA1: FLdPr Me
  loc_D23CA4: MemLdPr global_72
  loc_D23CA7:  = Me.Fields
  loc_D23CAC: FLdPr var_1C0
  loc_D23CAF: from_stack_2 = Me.Item(from_stack_1)
  loc_D23CB4: FLdPr var_1C4
  loc_D23CB7:  = Me.Value
  loc_D23CBC: FLdRfVar var_1E4
  loc_D23CBF: ConcatVar var_204
  loc_D23CC3: LitVarStr var_218, ";"
  loc_D23CC8: ConcatVar var_22C
  loc_D23CCC: CStrVarVal var_10C
  loc_D23CD0: Call Proc_261_10_A4592C()
  loc_D23CD5: FFreeStr var_104 = "": var_108 = ""
  loc_D23CDE: FFreeAd var_118 = "": var_168 = "": var_17C = "": var_1C0 = ""
  loc_D23CEB: FFreeVar var_100 = "": var_12C = "": var_1AC = "": var_18C = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = ""
  loc_D23D00: FLdRfVar var_162
  loc_D23D03: FLdRfVar var_100
  loc_D23D06: FLdRfVar var_11C
  loc_D23D09: LitVarStr var_E0, "CodiFapa"
  loc_D23D0E: PopAdLdVar
  loc_D23D0F: FLdRfVar var_118
  loc_D23D12: FLdPr Me
  loc_D23D15: MemLdPr global_72
  loc_D23D18:  = Me.Fields
  loc_D23D1D: FLdPr var_118
  loc_D23D20: from_stack_2 = Me.Item(from_stack_1)
  loc_D23D25: FLdPr var_11C
  loc_D23D28:  = Me.Value
  loc_D23D2D: FLdRfVar var_100
  loc_D23D30: CI4Var
  loc_D23D32: FLdRfVar var_90
  loc_D23D35: NewIfNullPr clsdetafapa
  loc_D23D38: from_stack_2v = clsdetafapa.BuscaCuotasImpagas(from_stack_1v)
  loc_D23D3D: FLdI2 var_162
  loc_D23D40: LitI2_Byte 0
  loc_D23D42: EqI2
  loc_D23D43: FFreeAd var_118 = ""
  loc_D23D4A: FFree1Var var_100 = ""
  loc_D23D4D: BranchF loc_D23DAB
  loc_D23D50: LitVarStr var_F0, " UPDATE facipago SET EstaFapa = 'Activa', FepaFapa = Null WHERE CodiFapa = "
  loc_D23D55: FLdRfVar var_100
  loc_D23D58: FLdRfVar var_11C
  loc_D23D5B: LitVarStr var_E0, "CodiFapa"
  loc_D23D60: PopAdLdVar
  loc_D23D61: FLdRfVar var_118
  loc_D23D64: FLdPr Me
  loc_D23D67: MemLdPr global_72
  loc_D23D6A:  = Me.Fields
  loc_D23D6F: FLdPr var_118
  loc_D23D72: from_stack_2 = Me.Item(from_stack_1)
  loc_D23D77: FLdPr var_11C
  loc_D23D7A:  = Me.Value
  loc_D23D7F: FLdRfVar var_100
  loc_D23D82: ConcatVar var_12C
  loc_D23D86: LitVarStr var_178, ";"
  loc_D23D8B: ConcatVar var_18C
  loc_D23D8F: CStrVarVal var_104
  loc_D23D93: Call Proc_261_10_A4592C()
  loc_D23D98: FFree1Str var_104
  loc_D23D9B: FFreeAd var_118 = ""
  loc_D23DA2: FFreeVar var_100 = "": var_12C = ""
  loc_D23DAB: FLdPr Me
  loc_D23DAE: MemLdPr global_72
  loc_D23DB1: Me.MoveNext
  loc_D23DB6: Branch loc_D239D2
  loc_D23DB9: LitStr "SELECT PeriBole, NumeBole, CodiOfic, CuenCtct, CodiFapa FROM detabole "
  loc_D23DBC: LitStr " WHERE PeriBole = "
  loc_D23DBF: ConcatStr
  loc_D23DC0: CVarStr var_12C
  loc_D23DC3: FLdRfVar var_100
  loc_D23DC6: FLdRfVar var_11C
  loc_D23DC9: LitVarStr var_E0, "PeriBole"
  loc_D23DCE: PopAdLdVar
  loc_D23DCF: FLdRfVar var_118
  loc_D23DD2: FLdPr Me
  loc_D23DD5: MemLdPr global_68
  loc_D23DD8:  = Me.Fields
  loc_D23DDD: FLdPr var_118
  loc_D23DE0: from_stack_2 = Me.Item(from_stack_1)
  loc_D23DE5: FLdPr var_11C
  loc_D23DE8:  = Me.Value
  loc_D23DED: FLdRfVar var_100
  loc_D23DF0: ConcatVar var_18C
  loc_D23DF4: LitVarStr var_F0, " AND NumeBole = "
  loc_D23DF9: ConcatVar var_1AC
  loc_D23DFD: FLdRfVar var_1BC
  loc_D23E00: FLdRfVar var_17C
  loc_D23E03: LitVarStr var_178, "NumeBole"
  loc_D23E08: PopAdLdVar
  loc_D23E09: FLdRfVar var_168
  loc_D23E0C: FLdPr Me
  loc_D23E0F: MemLdPr global_68
  loc_D23E12:  = Me.Fields
  loc_D23E17: FLdPr var_168
  loc_D23E1A: from_stack_2 = Me.Item(from_stack_1)
  loc_D23E1F: FLdPr var_17C
  loc_D23E22:  = Me.Value
  loc_D23E27: FLdRfVar var_1BC
  loc_D23E2A: ConcatVar var_1D4
  loc_D23E2E: LitVarStr var_19C, " AND NumeApre <> 0"
  loc_D23E33: ConcatVar var_1E4
  loc_D23E37: LitVarStr var_1F4, " GROUP BY PeriBole, NumeBole, NumeApre, CodiFapa"
  loc_D23E3C: ConcatVar var_204
  loc_D23E40: CStrVarVal var_104
  loc_D23E44: Call Proc_261_12_A45788()
  loc_D23E49: FFree1Str var_104
  loc_D23E4C: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D23E57: FFreeVar var_12C = "": var_100 = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = ""
  loc_D23E6A: FLdRfVar var_114
  loc_D23E6D: FLdPr Me
  loc_D23E70: MemLdPr global_72
  loc_D23E73:  = Me.RecordCount
  loc_D23E78: ILdRf var_114
  loc_D23E7B: LitI4 0
  loc_D23E80: GtI4
  loc_D23E81: BranchF loc_D242BE
  loc_D23E84: FLdPr Me
  loc_D23E87: MemLdPr global_72
  loc_D23E8A: Me.MoveFirst
  loc_D23E8F: FLdRfVar var_162
  loc_D23E92: FLdPr Me
  loc_D23E95: MemLdPr global_72
  loc_D23E98:  = Me.EOF
  loc_D23E9D: FLdI2 var_162
  loc_D23EA0: NotI4
  loc_D23EA1: BranchF loc_D242BE
  loc_D23EA4: LitVarStr var_F0, "SELECT * FROM boleapre WHERE PeriBole = "
  loc_D23EA9: FLdRfVar var_100
  loc_D23EAC: FLdRfVar var_11C
  loc_D23EAF: LitVarStr var_E0, "PeriBole"
  loc_D23EB4: PopAdLdVar
  loc_D23EB5: FLdRfVar var_118
  loc_D23EB8: FLdPr Me
  loc_D23EBB: MemLdPr global_72
  loc_D23EBE:  = Me.Fields
  loc_D23EC3: FLdPr var_118
  loc_D23EC6: from_stack_2 = Me.Item(from_stack_1)
  loc_D23ECB: FLdPr var_11C
  loc_D23ECE:  = Me.Value
  loc_D23ED3: FLdRfVar var_100
  loc_D23ED6: ConcatVar var_12C
  loc_D23EDA: LitVarStr var_178, " AND NumeBole = "
  loc_D23EDF: ConcatVar var_18C
  loc_D23EE3: FLdRfVar var_1AC
  loc_D23EE6: FLdRfVar var_17C
  loc_D23EE9: LitVarStr var_19C, "NumeBole"
  loc_D23EEE: PopAdLdVar
  loc_D23EEF: FLdRfVar var_168
  loc_D23EF2: FLdPr Me
  loc_D23EF5: MemLdPr global_72
  loc_D23EF8:  = Me.Fields
  loc_D23EFD: FLdPr var_168
  loc_D23F00: from_stack_2 = Me.Item(from_stack_1)
  loc_D23F05: FLdPr var_17C
  loc_D23F08:  = Me.Value
  loc_D23F0D: FLdRfVar var_1AC
  loc_D23F10: ConcatVar var_1BC
  loc_D23F14: LitVarStr var_1F4, " ORDER BY PeriBole, NumeBole, NumeApre"
  loc_D23F19: ConcatVar var_1D4
  loc_D23F1D: CStrVarVal var_104
  loc_D23F21: Call Proc_261_13_A48A64()
  loc_D23F26: FFree1Str var_104
  loc_D23F29: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D23F34: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = ""
  loc_D23F43: FLdRfVar var_114
  loc_D23F46: FLdPr Me
  loc_D23F49: MemLdPr global_76
  loc_D23F4C:  = Me.RecordCount
  loc_D23F51: ILdRf var_114
  loc_D23F54: LitI4 0
  loc_D23F59: GtI4
  loc_D23F5A: BranchF loc_D242B0
  loc_D23F5D: FLdPr Me
  loc_D23F60: MemLdPr global_76
  loc_D23F63: Me.MoveFirst
  loc_D23F68: FLdRfVar var_162
  loc_D23F6B: FLdPr Me
  loc_D23F6E: MemLdPr global_76
  loc_D23F71:  = Me.EOF
  loc_D23F76: FLdI2 var_162
  loc_D23F79: NotI4
  loc_D23F7A: BranchF loc_D242B0
  loc_D23F7D: FLdRfVar var_100
  loc_D23F80: FLdRfVar var_11C
  loc_D23F83: LitVarStr var_E0, "CodiFapa"
  loc_D23F88: PopAdLdVar
  loc_D23F89: FLdRfVar var_118
  loc_D23F8C: FLdPr Me
  loc_D23F8F: MemLdPr global_72
  loc_D23F92:  = Me.Fields
  loc_D23F97: FLdPr var_118
  loc_D23F9A: from_stack_2 = Me.Item(from_stack_1)
  loc_D23F9F: FLdPr var_11C
  loc_D23FA2:  = Me.Value
  loc_D23FA7: FLdRfVar var_100
  loc_D23FAA: FnCLngVar
  loc_D23FAC: LitI4 0
  loc_D23FB1: NeI4
  loc_D23FB2: FFreeAd var_118 = ""
  loc_D23FB9: FFree1Var var_100 = ""
  loc_D23FBC: BranchF loc_D24098
  loc_D23FBF: FLdRfVar var_100
  loc_D23FC2: FLdRfVar var_11C
  loc_D23FC5: LitVarStr var_E0, "CodiFapa"
  loc_D23FCA: PopAdLdVar
  loc_D23FCB: FLdRfVar var_118
  loc_D23FCE: FLdPr Me
  loc_D23FD1: MemLdPr global_72
  loc_D23FD4:  = Me.Fields
  loc_D23FD9: FLdPr var_118
  loc_D23FDC: from_stack_2 = Me.Item(from_stack_1)
  loc_D23FE1: FLdPr var_11C
  loc_D23FE4:  = Me.Value
  loc_D23FE9: FLdRfVar var_12C
  loc_D23FEC: FLdRfVar var_17C
  loc_D23FEF: LitVarStr var_F0, "NumeApre"
  loc_D23FF4: PopAdLdVar
  loc_D23FF5: FLdRfVar var_168
  loc_D23FF8: FLdPr Me
  loc_D23FFB: MemLdPr global_76
  loc_D23FFE:  = Me.Fields
  loc_D24003: FLdPr var_168
  loc_D24006: from_stack_2 = Me.Item(from_stack_1)
  loc_D2400B: FLdPr var_17C
  loc_D2400E:  = Me.Value
  loc_D24013: FLdRfVar var_12C
  loc_D24016: CI4Var
  loc_D24018: FLdRfVar var_100
  loc_D2401B: CI4Var
  loc_D2401D: ImpAdCallI2 Proc_270_140_A88DAC(, )
  loc_D24022: LitI2_Byte 0
  loc_D24024: EqI2
  loc_D24025: FFreeAd var_118 = "": var_168 = "": var_11C = ""
  loc_D24030: FFreeVar var_100 = ""
  loc_D24037: BranchF loc_D24095
  loc_D2403A: LitVarStr var_F0, " UPDATE apremio SET EstaApre = 1 WHERE NumeApre = "
  loc_D2403F: FLdRfVar var_100
  loc_D24042: FLdRfVar var_11C
  loc_D24045: LitVarStr var_E0, "NumeApre"
  loc_D2404A: PopAdLdVar
  loc_D2404B: FLdRfVar var_118
  loc_D2404E: FLdPr Me
  loc_D24051: MemLdPr global_76
  loc_D24054:  = Me.Fields
  loc_D24059: FLdPr var_118
  loc_D2405C: from_stack_2 = Me.Item(from_stack_1)
  loc_D24061: FLdPr var_11C
  loc_D24064:  = Me.Value
  loc_D24069: FLdRfVar var_100
  loc_D2406C: ConcatVar var_12C
  loc_D24070: LitVarStr var_178, ";"
  loc_D24075: ConcatVar var_18C
  loc_D24079: CStrVarVal var_104
  loc_D2407D: Call Proc_261_10_A4592C()
  loc_D24082: FFree1Str var_104
  loc_D24085: FFreeAd var_118 = ""
  loc_D2408C: FFreeVar var_100 = "": var_12C = ""
  loc_D24095: Branch loc_D240F3
  loc_D24098: LitVarStr var_F0, " UPDATE apremio SET EstaApre = 1 WHERE NumeApre = "
  loc_D2409D: FLdRfVar var_100
  loc_D240A0: FLdRfVar var_11C
  loc_D240A3: LitVarStr var_E0, "NumeApre"
  loc_D240A8: PopAdLdVar
  loc_D240A9: FLdRfVar var_118
  loc_D240AC: FLdPr Me
  loc_D240AF: MemLdPr global_76
  loc_D240B2:  = Me.Fields
  loc_D240B7: FLdPr var_118
  loc_D240BA: from_stack_2 = Me.Item(from_stack_1)
  loc_D240BF: FLdPr var_11C
  loc_D240C2:  = Me.Value
  loc_D240C7: FLdRfVar var_100
  loc_D240CA: ConcatVar var_12C
  loc_D240CE: LitVarStr var_178, ";"
  loc_D240D3: ConcatVar var_18C
  loc_D240D7: CStrVarVal var_104
  loc_D240DB: Call Proc_261_10_A4592C()
  loc_D240E0: FFree1Str var_104
  loc_D240E3: FFreeAd var_118 = ""
  loc_D240EA: FFreeVar var_100 = "": var_12C = ""
  loc_D240F3: LitVarStr var_F0, " UPDATE boleapre SET EstaBoap = 'Contracargo' WHERE PeriBole = "
  loc_D240F8: FLdRfVar var_100
  loc_D240FB: FLdRfVar var_11C
  loc_D240FE: LitVarStr var_E0, "PeriBole"
  loc_D24103: PopAdLdVar
  loc_D24104: FLdRfVar var_118
  loc_D24107: FLdPr Me
  loc_D2410A: MemLdPr global_76
  loc_D2410D:  = Me.Fields
  loc_D24112: FLdPr var_118
  loc_D24115: from_stack_2 = Me.Item(from_stack_1)
  loc_D2411A: FLdPr var_11C
  loc_D2411D:  = Me.Value
  loc_D24122: FLdRfVar var_100
  loc_D24125: ConcatVar var_12C
  loc_D24129: LitVarStr var_178, " AND NumeBole = "
  loc_D2412E: ConcatVar var_18C
  loc_D24132: FLdRfVar var_1AC
  loc_D24135: FLdRfVar var_17C
  loc_D24138: LitVarStr var_19C, "NumeBole"
  loc_D2413D: PopAdLdVar
  loc_D2413E: FLdRfVar var_168
  loc_D24141: FLdPr Me
  loc_D24144: MemLdPr global_76
  loc_D24147:  = Me.Fields
  loc_D2414C: FLdPr var_168
  loc_D2414F: from_stack_2 = Me.Item(from_stack_1)
  loc_D24154: FLdPr var_17C
  loc_D24157:  = Me.Value
  loc_D2415C: FLdRfVar var_1AC
  loc_D2415F: ConcatVar var_1BC
  loc_D24163: LitVarStr var_1F4, " AND NumeApre = "
  loc_D24168: ConcatVar var_1D4
  loc_D2416C: FLdRfVar var_1E4
  loc_D2416F: FLdRfVar var_1C4
  loc_D24172: LitVarStr var_218, "NumeApre"
  loc_D24177: PopAdLdVar
  loc_D24178: FLdRfVar var_1C0
  loc_D2417B: FLdPr Me
  loc_D2417E: MemLdPr global_76
  loc_D24181:  = Me.Fields
  loc_D24186: FLdPr var_1C0
  loc_D24189: from_stack_2 = Me.Item(from_stack_1)
  loc_D2418E: FLdPr var_1C4
  loc_D24191:  = Me.Value
  loc_D24196: FLdRfVar var_1E4
  loc_D24199: ConcatVar var_204
  loc_D2419D: LitVarStr var_24C, " AND CodiFapa = "
  loc_D241A2: ConcatVar var_22C
  loc_D241A6: FLdRfVar var_23C
  loc_D241A9: FLdRfVar var_21C
  loc_D241AC: LitVarStr var_270, "CodiFapa"
  loc_D241B1: PopAdLdVar
  loc_D241B2: FLdRfVar var_208
  loc_D241B5: FLdPr Me
  loc_D241B8: MemLdPr global_76
  loc_D241BB:  = Me.Fields
  loc_D241C0: FLdPr var_208
  loc_D241C3: from_stack_2 = Me.Item(from_stack_1)
  loc_D241C8: FLdPr var_21C
  loc_D241CB:  = Me.Value
  loc_D241D0: FLdRfVar var_23C
  loc_D241D3: ConcatVar var_25C
  loc_D241D7: LitVarStr var_2A4, " AND CuotDefa = "
  loc_D241DC: ConcatVar var_284
  loc_D241E0: FLdRfVar var_294
  loc_D241E3: FLdRfVar var_274
  loc_D241E6: LitVarStr var_2C8, "CuotDefa"
  loc_D241EB: PopAdLdVar
  loc_D241EC: FLdRfVar var_260
  loc_D241EF: FLdPr Me
  loc_D241F2: MemLdPr global_76
  loc_D241F5:  = Me.Fields
  loc_D241FA: FLdPr var_260
  loc_D241FD: from_stack_2 = Me.Item(from_stack_1)
  loc_D24202: FLdPr var_274
  loc_D24205:  = Me.Value
  loc_D2420A: FLdRfVar var_294
  loc_D2420D: ConcatVar var_2B4
  loc_D24211: LitVarStr var_2FC, " AND CodiInju = "
  loc_D24216: ConcatVar var_2DC
  loc_D2421A: FLdRfVar var_2EC
  loc_D2421D: FLdRfVar var_2CC
  loc_D24220: LitVarStr var_320, "CodiInju"
  loc_D24225: PopAdLdVar
  loc_D24226: FLdRfVar var_2B8
  loc_D24229: FLdPr Me
  loc_D2422C: MemLdPr global_76
  loc_D2422F:  = Me.Fields
  loc_D24234: FLdPr var_2B8
  loc_D24237: from_stack_2 = Me.Item(from_stack_1)
  loc_D2423C: FLdPr var_2CC
  loc_D2423F:  = Me.Value
  loc_D24244: FLdRfVar var_2EC
  loc_D24247: ConcatVar var_30C
  loc_D2424B: LitVarStr var_354, ";"
  loc_D24250: ConcatVar var_334
  loc_D24254: CStrVarVal var_104
  loc_D24258: Call Proc_261_10_A4592C()
  loc_D2425D: FFree1Str var_104
  loc_D24260: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = ""
  loc_D2427B: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_2EC = "": var_30C = ""
  loc_D242A2: FLdPr Me
  loc_D242A5: MemLdPr global_76
  loc_D242A8: Me.MoveNext
  loc_D242AD: Branch loc_D23F68
  loc_D242B0: FLdPr Me
  loc_D242B3: MemLdPr global_72
  loc_D242B6: Me.MoveNext
  loc_D242BB: Branch loc_D23E8F
  loc_D242BE: LitVarStr var_F0, "SELECT * FROM detabole WHERE PeriBole = "
  loc_D242C3: FLdRfVar var_100
  loc_D242C6: FLdRfVar var_11C
  loc_D242C9: LitVarStr var_E0, "PeriBole"
  loc_D242CE: PopAdLdVar
  loc_D242CF: FLdRfVar var_118
  loc_D242D2: FLdPr Me
  loc_D242D5: MemLdPr global_68
  loc_D242D8:  = Me.Fields
  loc_D242DD: FLdPr var_118
  loc_D242E0: from_stack_2 = Me.Item(from_stack_1)
  loc_D242E5: FLdPr var_11C
  loc_D242E8:  = Me.Value
  loc_D242ED: FLdRfVar var_100
  loc_D242F0: ConcatVar var_12C
  loc_D242F4: LitVarStr var_178, " AND NumeBole = "
  loc_D242F9: ConcatVar var_18C
  loc_D242FD: FLdRfVar var_1AC
  loc_D24300: FLdRfVar var_17C
  loc_D24303: LitVarStr var_19C, "NumeBole"
  loc_D24308: PopAdLdVar
  loc_D24309: FLdRfVar var_168
  loc_D2430C: FLdPr Me
  loc_D2430F: MemLdPr global_68
  loc_D24312:  = Me.Fields
  loc_D24317: FLdPr var_168
  loc_D2431A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2431F: FLdPr var_17C
  loc_D24322:  = Me.Value
  loc_D24327: FLdRfVar var_1AC
  loc_D2432A: ConcatVar var_1BC
  loc_D2432E: LitVarStr var_1F4, " AND NumeApre <> 0"
  loc_D24333: ConcatVar var_1D4
  loc_D24337: LitVarStr var_218, " GROUP BY PeriBole, NumeBole, NumeApre"
  loc_D2433C: ConcatVar var_1E4
  loc_D24340: CStrVarVal var_104
  loc_D24344: Call Proc_261_12_A45788()
  loc_D24349: FFree1Str var_104
  loc_D2434C: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D24357: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = ""
  loc_D24368: FLdRfVar var_114
  loc_D2436B: FLdPr Me
  loc_D2436E: MemLdPr global_72
  loc_D24371:  = Me.RecordCount
  loc_D24376: ILdRf var_114
  loc_D24379: LitI4 0
  loc_D2437E: GtI4
  loc_D2437F: BranchF loc_D244C0
  loc_D24382: FLdPr Me
  loc_D24385: MemLdPr global_72
  loc_D24388: Me.MoveFirst
  loc_D2438D: FLdRfVar var_162
  loc_D24390: FLdPr Me
  loc_D24393: MemLdPr global_72
  loc_D24396:  = Me.EOF
  loc_D2439B: FLdI2 var_162
  loc_D2439E: NotI4
  loc_D2439F: BranchF loc_D244C0
  loc_D243A2: FLdRfVar var_100
  loc_D243A5: FLdRfVar var_11C
  loc_D243A8: LitVarStr var_E0, "CodiOfic"
  loc_D243AD: PopAdLdVar
  loc_D243AE: FLdRfVar var_118
  loc_D243B1: FLdPr Me
  loc_D243B4: MemLdPr global_72
  loc_D243B7:  = Me.Fields
  loc_D243BC: FLdPr var_118
  loc_D243BF: from_stack_2 = Me.Item(from_stack_1)
  loc_D243C4: FLdPr var_11C
  loc_D243C7:  = Me.Value
  loc_D243CC: FLdRfVar var_12C
  loc_D243CF: FLdRfVar var_17C
  loc_D243D2: LitVarStr var_F0, "CuenCtct"
  loc_D243D7: PopAdLdVar
  loc_D243D8: FLdRfVar var_168
  loc_D243DB: FLdPr Me
  loc_D243DE: MemLdPr global_72
  loc_D243E1:  = Me.Fields
  loc_D243E6: FLdPr var_168
  loc_D243E9: from_stack_2 = Me.Item(from_stack_1)
  loc_D243EE: FLdPr var_17C
  loc_D243F1:  = Me.Value
  loc_D243F6: FLdRfVar var_18C
  loc_D243F9: FLdRfVar var_1C4
  loc_D243FC: LitVarStr var_178, "NumeApre"
  loc_D24401: PopAdLdVar
  loc_D24402: FLdRfVar var_1C0
  loc_D24405: FLdPr Me
  loc_D24408: MemLdPr global_72
  loc_D2440B:  = Me.Fields
  loc_D24410: FLdPr var_1C0
  loc_D24413: from_stack_2 = Me.Item(from_stack_1)
  loc_D24418: FLdPr var_1C4
  loc_D2441B:  = Me.Value
  loc_D24420: FLdRfVar var_18C
  loc_D24423: CI4Var
  loc_D24425: FLdRfVar var_12C
  loc_D24428: CStrVarTmp
  loc_D24429: FStStrNoPop var_104
  loc_D2442C: FLdRfVar var_100
  loc_D2442F: CUI1Var
  loc_D24431: ImpAdCallI2 Proc_270_133_AEB914(, , )
  loc_D24436: LitI2_Byte &HFF
  loc_D24438: EqI2
  loc_D24439: FFree1Str var_104
  loc_D2443C: FFreeAd var_118 = "": var_168 = "": var_1C0 = "": var_11C = "": var_17C = ""
  loc_D2444B: FFreeVar var_100 = "": var_12C = ""
  loc_D24454: BranchF loc_D244B2
  loc_D24457: LitVarStr var_F0, " UPDATE apremio SET EstaApre = 1, CancApre = 0, FeenAcpa = Null, NumeAcpa = 0, PeriBole = 0, NumeBole = 0 WHERE NumeApre = "
  loc_D2445C: FLdRfVar var_100
  loc_D2445F: FLdRfVar var_11C
  loc_D24462: LitVarStr var_E0, "NumeApre"
  loc_D24467: PopAdLdVar
  loc_D24468: FLdRfVar var_118
  loc_D2446B: FLdPr Me
  loc_D2446E: MemLdPr global_72
  loc_D24471:  = Me.Fields
  loc_D24476: FLdPr var_118
  loc_D24479: from_stack_2 = Me.Item(from_stack_1)
  loc_D2447E: FLdPr var_11C
  loc_D24481:  = Me.Value
  loc_D24486: FLdRfVar var_100
  loc_D24489: ConcatVar var_12C
  loc_D2448D: LitVarStr var_178, ";"
  loc_D24492: ConcatVar var_18C
  loc_D24496: CStrVarVal var_104
  loc_D2449A: Call Proc_261_10_A4592C()
  loc_D2449F: FFree1Str var_104
  loc_D244A2: FFreeAd var_118 = ""
  loc_D244A9: FFreeVar var_100 = "": var_12C = ""
  loc_D244B2: FLdPr Me
  loc_D244B5: MemLdPr global_72
  loc_D244B8: Me.MoveNext
  loc_D244BD: Branch loc_D2438D
  loc_D244C0: FLdRfVar var_100
  loc_D244C3: FLdRfVar var_11C
  loc_D244C6: LitVarStr var_E0, "ApreBole"
  loc_D244CB: PopAdLdVar
  loc_D244CC: FLdRfVar var_118
  loc_D244CF: FLdPr Me
  loc_D244D2: MemLdPr global_68
  loc_D244D5:  = Me.Fields
  loc_D244DA: FLdPr var_118
  loc_D244DD: from_stack_2 = Me.Item(from_stack_1)
  loc_D244E2: FLdPr var_11C
  loc_D244E5:  = Me.Value
  loc_D244EA: FLdRfVar var_100
  loc_D244ED: FnCDblVar
  loc_D244EF: LitI2_Byte 0
  loc_D244F1: CR8I2
  loc_D244F2: GtR4
  loc_D244F3: FFreeAd var_118 = ""
  loc_D244FA: FFree1Var var_100 = ""
  loc_D244FD: BranchF loc_D252AA
  loc_D24500: LitVarStr var_F0, "SELECT * FROM boleapre WHERE PeriBole = "
  loc_D24505: FLdRfVar var_100
  loc_D24508: FLdRfVar var_11C
  loc_D2450B: LitVarStr var_E0, "PeriBole"
  loc_D24510: PopAdLdVar
  loc_D24511: FLdRfVar var_118
  loc_D24514: FLdPr Me
  loc_D24517: MemLdPr global_68
  loc_D2451A:  = Me.Fields
  loc_D2451F: FLdPr var_118
  loc_D24522: from_stack_2 = Me.Item(from_stack_1)
  loc_D24527: FLdPr var_11C
  loc_D2452A:  = Me.Value
  loc_D2452F: FLdRfVar var_100
  loc_D24532: ConcatVar var_12C
  loc_D24536: LitVarStr var_178, " AND NumeBole = "
  loc_D2453B: ConcatVar var_18C
  loc_D2453F: FLdRfVar var_1AC
  loc_D24542: FLdRfVar var_17C
  loc_D24545: LitVarStr var_19C, "NumeBole"
  loc_D2454A: PopAdLdVar
  loc_D2454B: FLdRfVar var_168
  loc_D2454E: FLdPr Me
  loc_D24551: MemLdPr global_68
  loc_D24554:  = Me.Fields
  loc_D24559: FLdPr var_168
  loc_D2455C: from_stack_2 = Me.Item(from_stack_1)
  loc_D24561: FLdPr var_17C
  loc_D24564:  = Me.Value
  loc_D24569: FLdRfVar var_1AC
  loc_D2456C: ConcatVar var_1BC
  loc_D24570: LitVarStr var_1F4, " ORDER BY PeriBole, NumeBole, NumeApre"
  loc_D24575: ConcatVar var_1D4
  loc_D24579: CStrVarVal var_104
  loc_D2457D: Call Proc_261_13_A48A64()
  loc_D24582: FFree1Str var_104
  loc_D24585: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D24590: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = ""
  loc_D2459F: FLdRfVar var_114
  loc_D245A2: FLdPr Me
  loc_D245A5: MemLdPr global_76
  loc_D245A8:  = Me.RecordCount
  loc_D245AD: ILdRf var_114
  loc_D245B0: LitI4 0
  loc_D245B5: GtI4
  loc_D245B6: BranchF loc_D252AA
  loc_D245B9: FLdPr Me
  loc_D245BC: MemLdPr global_76
  loc_D245BF: Me.MoveFirst
  loc_D245C4: FLdRfVar var_162
  loc_D245C7: FLdPr Me
  loc_D245CA: MemLdPr global_76
  loc_D245CD:  = Me.EOF
  loc_D245D2: FLdI2 var_162
  loc_D245D5: NotI4
  loc_D245D6: BranchF loc_D252AA
  loc_D245D9: FLdRfVar var_100
  loc_D245DC: FLdRfVar var_11C
  loc_D245DF: LitVarStr var_E0, "CoadBoap"
  loc_D245E4: PopAdLdVar
  loc_D245E5: FLdRfVar var_118
  loc_D245E8: FLdPr Me
  loc_D245EB: MemLdPr global_76
  loc_D245EE:  = Me.Fields
  loc_D245F3: FLdPr var_118
  loc_D245F6: from_stack_2 = Me.Item(from_stack_1)
  loc_D245FB: FLdPr var_11C
  loc_D245FE:  = Me.Value
  loc_D24603: FLdRfVar var_12C
  loc_D24606: FLdRfVar var_17C
  loc_D24609: LitVarStr var_F0, "IcomBoap"
  loc_D2460E: PopAdLdVar
  loc_D2460F: FLdRfVar var_168
  loc_D24612: FLdPr Me
  loc_D24615: MemLdPr global_76
  loc_D24618:  = Me.Fields
  loc_D2461D: FLdPr var_168
  loc_D24620: from_stack_2 = Me.Item(from_stack_1)
  loc_D24625: FLdPr var_17C
  loc_D24628:  = Me.Value
  loc_D2462D: LitI4 2
  loc_D24632: FLdRfVar var_100
  loc_D24635: FnCDblVar
  loc_D24637: FLdRfVar var_12C
  loc_D2463A: FnCDblVar
  loc_D2463C: AddR8
  loc_D2463D: CVarR8
  loc_D24641: FLdRfVar var_1AC
  loc_D24644: ImpAdCallFPR4  = Round(, )
  loc_D24649: FLdRfVar var_1AC
  loc_D2464C: LitVarI2 var_19C, 0
  loc_D24651: HardType
  loc_D24652: GtVarBool
  loc_D24654: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D2465F: FFreeVar var_100 = "": var_12C = "": var_18C = ""
  loc_D2466A: BranchF loc_D24966
  loc_D2466D: FLdRfVar var_B8
  loc_D24670: CVarRef
  loc_D24675: FLdRfVar var_100
  loc_D24678: ImpAdCallFPR4  = Year()
  loc_D2467D: FLdRfVar var_100
  loc_D24680: CI2Var
  loc_D24681: ImpAdCallI2 Proc_270_55_A79A88()
  loc_D24686: FStStr var_A4
  loc_D24689: FFree1Var var_100 = ""
  loc_D2468C: FLdRfVar var_B8
  loc_D2468F: CVarRef
  loc_D24694: FLdRfVar var_100
  loc_D24697: ImpAdCallFPR4  = Year()
  loc_D2469C: ILdRf var_A4
  loc_D2469F: FLdRfVar var_100
  loc_D246A2: CI2Var
  loc_D246A3: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D246A8: FStStr var_A8
  loc_D246AB: FFree1Var var_100 = ""
  loc_D246AE: FLdRfVar var_100
  loc_D246B1: FLdRfVar var_11C
  loc_D246B4: LitVarStr var_E0, "CoadBoap"
  loc_D246B9: PopAdLdVar
  loc_D246BA: FLdRfVar var_118
  loc_D246BD: FLdPr Me
  loc_D246C0: MemLdPr global_76
  loc_D246C3:  = Me.Fields
  loc_D246C8: FLdPr var_118
  loc_D246CB: from_stack_2 = Me.Item(from_stack_1)
  loc_D246D0: FLdPr var_11C
  loc_D246D3:  = Me.Value
  loc_D246D8: FLdRfVar var_12C
  loc_D246DB: FLdRfVar var_17C
  loc_D246DE: LitVarStr var_F0, "IcomBoap"
  loc_D246E3: PopAdLdVar
  loc_D246E4: FLdRfVar var_168
  loc_D246E7: FLdPr Me
  loc_D246EA: MemLdPr global_76
  loc_D246ED:  = Me.Fields
  loc_D246F2: FLdPr var_168
  loc_D246F5: from_stack_2 = Me.Item(from_stack_1)
  loc_D246FA: FLdPr var_17C
  loc_D246FD:  = Me.Value
  loc_D24702: LitI4 2
  loc_D24707: FLdRfVar var_100
  loc_D2470A: FnCDblVar
  loc_D2470C: FLdRfVar var_12C
  loc_D2470F: FnCDblVar
  loc_D24711: AddR8
  loc_D24712: CVarR8
  loc_D24716: FLdRfVar var_1AC
  loc_D24719: ImpAdCallFPR4  = Round(, )
  loc_D2471E: FLdRfVar var_1AC
  loc_D24721: CR4Var
  loc_D24722: FStFPR8 var_B0
  loc_D24725: FFreeAd var_118 = "": var_11C = "": var_168 = ""
  loc_D24730: FFreeVar var_100 = "": var_12C = "": var_18C = ""
  loc_D2473B: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_D2473E: LitI4 1
  loc_D24743: LitI4 1
  loc_D24748: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D2474D: FStVarCopyObj var_100
  loc_D24750: FLdRfVar var_100
  loc_D24753: FLdRfVar var_B8
  loc_D24756: CVarRef
  loc_D2475B: ImpAdCallI2 Format$(, )
  loc_D24760: FStStrNoPop var_104
  loc_D24763: ConcatStr
  loc_D24764: FStStrNoPop var_108
  loc_D24767: LitStr " AND NumeAcpa = "
  loc_D2476A: ConcatStr
  loc_D2476B: FStStrNoPop var_10C
  loc_D2476E: FLdUI1
  loc_D24772: CStrI2
  loc_D24774: FStStrNoPop var_110
  loc_D24777: ConcatStr
  loc_D24778: FStStrNoPop var_130
  loc_D2477B: LitStr " AND CodiConc = '"
  loc_D2477E: ConcatStr
  loc_D2477F: FStStrNoPop var_134
  loc_D24782: ILdRf var_A4
  loc_D24785: ConcatStr
  loc_D24786: FStStrNoPop var_138
  loc_D24789: LitStr "'"
  loc_D2478C: ConcatStr
  loc_D2478D: FStStrNoPop var_13C
  loc_D24790: Call Proc_261_14_A45670()
  loc_D24795: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D247A8: FFree1Var var_100 = ""
  loc_D247AB: FLdRfVar var_114
  loc_D247AE: FLdPr Me
  loc_D247B1: MemLdPr global_80
  loc_D247B4:  = Me.RecordCount
  loc_D247B9: ILdRf var_114
  loc_D247BC: LitI4 0
  loc_D247C1: GtI4
  loc_D247C2: BranchF loc_D24870
  loc_D247C5: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_D247C8: LitI4 0
  loc_D247CD: LitI4 -1
  loc_D247D2: LitI4 1
  loc_D247D7: LitStr "."
  loc_D247DA: LitStr ","
  loc_D247DD: FLdFPR8 var_B0
  loc_D247E0: CStrR8
  loc_D247E2: FStStrNoPop var_104
  loc_D247E5: ImpAdCallI2 Replace(, , , , , )
  loc_D247EA: FStStrNoPop var_108
  loc_D247ED: ConcatStr
  loc_D247EE: FStStrNoPop var_10C
  loc_D247F1: LitStr " WHERE FechInre = "
  loc_D247F4: ConcatStr
  loc_D247F5: FStStrNoPop var_110
  loc_D247F8: LitI4 1
  loc_D247FD: LitI4 1
  loc_D24802: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D24807: FStVarCopyObj var_100
  loc_D2480A: FLdRfVar var_100
  loc_D2480D: FLdRfVar var_B8
  loc_D24810: CVarRef
  loc_D24815: ImpAdCallI2 Format$(, )
  loc_D2481A: FStStrNoPop var_130
  loc_D2481D: ConcatStr
  loc_D2481E: FStStrNoPop var_134
  loc_D24821: LitStr " AND NumeAcpa = "
  loc_D24824: ConcatStr
  loc_D24825: FStStrNoPop var_138
  loc_D24828: FLdUI1
  loc_D2482C: CStrI2
  loc_D2482E: FStStrNoPop var_13C
  loc_D24831: ConcatStr
  loc_D24832: FStStrNoPop var_140
  loc_D24835: LitStr " AND CodiConc = '"
  loc_D24838: ConcatStr
  loc_D24839: FStStrNoPop var_144
  loc_D2483C: ILdRf var_A4
  loc_D2483F: ConcatStr
  loc_D24840: FStStrNoPop var_148
  loc_D24843: LitStr "'"
  loc_D24846: ConcatStr
  loc_D24847: FStStrNoPop var_14C
  loc_D2484A: Call Proc_261_10_A4592C()
  loc_D2484F: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D2486A: FFree1Var var_100 = ""
  loc_D2486D: Branch loc_D24966
  loc_D24870: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir, IdContra) "
  loc_D24873: LitStr " VALUES ("
  loc_D24876: ConcatStr
  loc_D24877: FStStrNoPop var_104
  loc_D2487A: LitI4 1
  loc_D2487F: LitI4 1
  loc_D24884: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D24889: FStVarCopyObj var_100
  loc_D2488C: FLdRfVar var_100
  loc_D2488F: FLdRfVar var_B8
  loc_D24892: CVarRef
  loc_D24897: ImpAdCallI2 Format$(, )
  loc_D2489C: FStStrNoPop var_108
  loc_D2489F: ConcatStr
  loc_D248A0: FStStrNoPop var_10C
  loc_D248A3: LitStr ","
  loc_D248A6: ConcatStr
  loc_D248A7: FStStrNoPop var_110
  loc_D248AA: FLdUI1
  loc_D248AE: CStrI2
  loc_D248B0: FStStrNoPop var_130
  loc_D248B3: ConcatStr
  loc_D248B4: FStStrNoPop var_134
  loc_D248B7: LitStr ",'"
  loc_D248BA: ConcatStr
  loc_D248BB: FStStrNoPop var_138
  loc_D248BE: ILdRf var_A4
  loc_D248C1: ConcatStr
  loc_D248C2: FStStrNoPop var_13C
  loc_D248C5: LitStr "','"
  loc_D248C8: ConcatStr
  loc_D248C9: FStStrNoPop var_140
  loc_D248CC: ILdRf var_A8
  loc_D248CF: ConcatStr
  loc_D248D0: FStStrNoPop var_144
  loc_D248D3: LitStr "',"
  loc_D248D6: ConcatStr
  loc_D248D7: FStStrNoPop var_148
  loc_D248DA: FLdUI1
  loc_D248DE: CStrI2
  loc_D248E0: FStStrNoPop var_14C
  loc_D248E3: ConcatStr
  loc_D248E4: FStStrNoPop var_150
  loc_D248E7: LitStr ","
  loc_D248EA: ConcatStr
  loc_D248EB: FStStrNoPop var_158
  loc_D248EE: LitI4 0
  loc_D248F3: LitI4 -1
  loc_D248F8: LitI4 1
  loc_D248FD: LitStr "."
  loc_D24900: LitStr ","
  loc_D24903: FLdFPR8 var_B0
  loc_D24906: CStrR8
  loc_D24908: FStStrNoPop var_154
  loc_D2490B: ImpAdCallI2 Replace(, , , , , )
  loc_D24910: FStStrNoPop var_15C
  loc_D24913: ConcatStr
  loc_D24914: FStStrNoPop var_160
  loc_D24917: LitStr ","
  loc_D2491A: ConcatStr
  loc_D2491B: FStStrNoPop var_7A8
  loc_D2491E: FLdI2 var_B4
  loc_D24921: CStrUI1
  loc_D24923: FStStrNoPop var_7AC
  loc_D24926: ConcatStr
  loc_D24927: FStStrNoPop var_7B0
  loc_D2492A: LitStr ")"
  loc_D2492D: ConcatStr
  loc_D2492E: FStStrNoPop var_7B4
  loc_D24931: Call Proc_261_10_A4592C()
  loc_D24936: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_7A8 = "": var_7AC = "": var_7B0 = ""
  loc_D24963: FFree1Var var_100 = ""
  loc_D24966: FLdRfVar var_100
  loc_D24969: FLdRfVar var_11C
  loc_D2496C: LitVarStr var_E0, "ApleBoap"
  loc_D24971: PopAdLdVar
  loc_D24972: FLdRfVar var_118
  loc_D24975: FLdPr Me
  loc_D24978: MemLdPr global_76
  loc_D2497B:  = Me.Fields
  loc_D24980: FLdPr var_118
  loc_D24983: from_stack_2 = Me.Item(from_stack_1)
  loc_D24988: FLdPr var_11C
  loc_D2498B:  = Me.Value
  loc_D24990: FLdRfVar var_12C
  loc_D24993: FLdRfVar var_17C
  loc_D24996: LitVarStr var_F0, "DefiBoap"
  loc_D2499B: PopAdLdVar
  loc_D2499C: FLdRfVar var_168
  loc_D2499F: FLdPr Me
  loc_D249A2: MemLdPr global_76
  loc_D249A5:  = Me.Fields
  loc_D249AA: FLdPr var_168
  loc_D249AD: from_stack_2 = Me.Item(from_stack_1)
  loc_D249B2: FLdPr var_17C
  loc_D249B5:  = Me.Value
  loc_D249BA: FLdRfVar var_18C
  loc_D249BD: FLdRfVar var_1C4
  loc_D249C0: LitVarStr var_178, "ReseBoap"
  loc_D249C5: PopAdLdVar
  loc_D249C6: FLdRfVar var_1C0
  loc_D249C9: FLdPr Me
  loc_D249CC: MemLdPr global_76
  loc_D249CF:  = Me.Fields
  loc_D249D4: FLdPr var_1C0
  loc_D249D7: from_stack_2 = Me.Item(from_stack_1)
  loc_D249DC: FLdPr var_1C4
  loc_D249DF:  = Me.Value
  loc_D249E4: LitI4 2
  loc_D249E9: FLdRfVar var_100
  loc_D249EC: FnCDblVar
  loc_D249EE: FLdRfVar var_12C
  loc_D249F1: FnCDblVar
  loc_D249F3: AddR8
  loc_D249F4: FLdRfVar var_18C
  loc_D249F7: FnCDblVar
  loc_D249F9: AddR8
  loc_D249FA: CVarR8
  loc_D249FE: FLdRfVar var_1BC
  loc_D24A01: ImpAdCallFPR4  = Round(, )
  loc_D24A06: FLdRfVar var_1BC
  loc_D24A09: LitVarI2 var_1F4, 0
  loc_D24A0E: HardType
  loc_D24A0F: GtVarBool
  loc_D24A11: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = ""
  loc_D24A20: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = ""
  loc_D24A2D: BranchF loc_D24D5F
  loc_D24A30: FLdRfVar var_B8
  loc_D24A33: CVarRef
  loc_D24A38: FLdRfVar var_100
  loc_D24A3B: ImpAdCallFPR4  = Year()
  loc_D24A40: FLdRfVar var_100
  loc_D24A43: CI2Var
  loc_D24A44: ImpAdCallI2 Proc_270_57_A7A100()
  loc_D24A49: FStStr var_A4
  loc_D24A4C: FFree1Var var_100 = ""
  loc_D24A4F: FLdRfVar var_B8
  loc_D24A52: CVarRef
  loc_D24A57: FLdRfVar var_100
  loc_D24A5A: ImpAdCallFPR4  = Year()
  loc_D24A5F: ILdRf var_A4
  loc_D24A62: FLdRfVar var_100
  loc_D24A65: CI2Var
  loc_D24A66: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D24A6B: FStStr var_A8
  loc_D24A6E: FFree1Var var_100 = ""
  loc_D24A71: FLdRfVar var_100
  loc_D24A74: FLdRfVar var_11C
  loc_D24A77: LitVarStr var_E0, "ApleBoap"
  loc_D24A7C: PopAdLdVar
  loc_D24A7D: FLdRfVar var_118
  loc_D24A80: FLdPr Me
  loc_D24A83: MemLdPr global_76
  loc_D24A86:  = Me.Fields
  loc_D24A8B: FLdPr var_118
  loc_D24A8E: from_stack_2 = Me.Item(from_stack_1)
  loc_D24A93: FLdPr var_11C
  loc_D24A96:  = Me.Value
  loc_D24A9B: FLdRfVar var_12C
  loc_D24A9E: FLdRfVar var_17C
  loc_D24AA1: LitVarStr var_F0, "DefiBoap"
  loc_D24AA6: PopAdLdVar
  loc_D24AA7: FLdRfVar var_168
  loc_D24AAA: FLdPr Me
  loc_D24AAD: MemLdPr global_76
  loc_D24AB0:  = Me.Fields
  loc_D24AB5: FLdPr var_168
  loc_D24AB8: from_stack_2 = Me.Item(from_stack_1)
  loc_D24ABD: FLdPr var_17C
  loc_D24AC0:  = Me.Value
  loc_D24AC5: FLdRfVar var_18C
  loc_D24AC8: FLdRfVar var_1C4
  loc_D24ACB: LitVarStr var_178, "ReseBoap"
  loc_D24AD0: PopAdLdVar
  loc_D24AD1: FLdRfVar var_1C0
  loc_D24AD4: FLdPr Me
  loc_D24AD7: MemLdPr global_76
  loc_D24ADA:  = Me.Fields
  loc_D24ADF: FLdPr var_1C0
  loc_D24AE2: from_stack_2 = Me.Item(from_stack_1)
  loc_D24AE7: FLdPr var_1C4
  loc_D24AEA:  = Me.Value
  loc_D24AEF: LitI4 2
  loc_D24AF4: FLdRfVar var_100
  loc_D24AF7: FnCDblVar
  loc_D24AF9: FLdRfVar var_12C
  loc_D24AFC: FnCDblVar
  loc_D24AFE: AddR8
  loc_D24AFF: FLdRfVar var_18C
  loc_D24B02: FnCDblVar
  loc_D24B04: AddR8
  loc_D24B05: CVarR8
  loc_D24B09: FLdRfVar var_1BC
  loc_D24B0C: ImpAdCallFPR4  = Round(, )
  loc_D24B11: FLdRfVar var_1BC
  loc_D24B14: CR4Var
  loc_D24B15: FStFPR8 var_B0
  loc_D24B18: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = ""
  loc_D24B27: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = ""
  loc_D24B34: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_D24B37: LitI4 1
  loc_D24B3C: LitI4 1
  loc_D24B41: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D24B46: FStVarCopyObj var_100
  loc_D24B49: FLdRfVar var_100
  loc_D24B4C: FLdRfVar var_B8
  loc_D24B4F: CVarRef
  loc_D24B54: ImpAdCallI2 Format$(, )
  loc_D24B59: FStStrNoPop var_104
  loc_D24B5C: ConcatStr
  loc_D24B5D: FStStrNoPop var_108
  loc_D24B60: LitStr " AND NumeAcpa = "
  loc_D24B63: ConcatStr
  loc_D24B64: FStStrNoPop var_10C
  loc_D24B67: FLdUI1
  loc_D24B6B: CStrI2
  loc_D24B6D: FStStrNoPop var_110
  loc_D24B70: ConcatStr
  loc_D24B71: FStStrNoPop var_130
  loc_D24B74: LitStr " AND CodiConc = '"
  loc_D24B77: ConcatStr
  loc_D24B78: FStStrNoPop var_134
  loc_D24B7B: ILdRf var_A4
  loc_D24B7E: ConcatStr
  loc_D24B7F: FStStrNoPop var_138
  loc_D24B82: LitStr "'"
  loc_D24B85: ConcatStr
  loc_D24B86: FStStrNoPop var_13C
  loc_D24B89: Call Proc_261_14_A45670()
  loc_D24B8E: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D24BA1: FFree1Var var_100 = ""
  loc_D24BA4: FLdRfVar var_114
  loc_D24BA7: FLdPr Me
  loc_D24BAA: MemLdPr global_80
  loc_D24BAD:  = Me.RecordCount
  loc_D24BB2: ILdRf var_114
  loc_D24BB5: LitI4 0
  loc_D24BBA: GtI4
  loc_D24BBB: BranchF loc_D24C69
  loc_D24BBE: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_D24BC1: LitI4 0
  loc_D24BC6: LitI4 -1
  loc_D24BCB: LitI4 1
  loc_D24BD0: LitStr "."
  loc_D24BD3: LitStr ","
  loc_D24BD6: FLdFPR8 var_B0
  loc_D24BD9: CStrR8
  loc_D24BDB: FStStrNoPop var_104
  loc_D24BDE: ImpAdCallI2 Replace(, , , , , )
  loc_D24BE3: FStStrNoPop var_108
  loc_D24BE6: ConcatStr
  loc_D24BE7: FStStrNoPop var_10C
  loc_D24BEA: LitStr " WHERE FechInre = "
  loc_D24BED: ConcatStr
  loc_D24BEE: FStStrNoPop var_110
  loc_D24BF1: LitI4 1
  loc_D24BF6: LitI4 1
  loc_D24BFB: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D24C00: FStVarCopyObj var_100
  loc_D24C03: FLdRfVar var_100
  loc_D24C06: FLdRfVar var_B8
  loc_D24C09: CVarRef
  loc_D24C0E: ImpAdCallI2 Format$(, )
  loc_D24C13: FStStrNoPop var_130
  loc_D24C16: ConcatStr
  loc_D24C17: FStStrNoPop var_134
  loc_D24C1A: LitStr " AND NumeAcpa = "
  loc_D24C1D: ConcatStr
  loc_D24C1E: FStStrNoPop var_138
  loc_D24C21: FLdUI1
  loc_D24C25: CStrI2
  loc_D24C27: FStStrNoPop var_13C
  loc_D24C2A: ConcatStr
  loc_D24C2B: FStStrNoPop var_140
  loc_D24C2E: LitStr " AND CodiConc = '"
  loc_D24C31: ConcatStr
  loc_D24C32: FStStrNoPop var_144
  loc_D24C35: ILdRf var_A4
  loc_D24C38: ConcatStr
  loc_D24C39: FStStrNoPop var_148
  loc_D24C3C: LitStr "'"
  loc_D24C3F: ConcatStr
  loc_D24C40: FStStrNoPop var_14C
  loc_D24C43: Call Proc_261_10_A4592C()
  loc_D24C48: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D24C63: FFree1Var var_100 = ""
  loc_D24C66: Branch loc_D24D5F
  loc_D24C69: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir, IdContra) "
  loc_D24C6C: LitStr " VALUES ("
  loc_D24C6F: ConcatStr
  loc_D24C70: FStStrNoPop var_104
  loc_D24C73: LitI4 1
  loc_D24C78: LitI4 1
  loc_D24C7D: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D24C82: FStVarCopyObj var_100
  loc_D24C85: FLdRfVar var_100
  loc_D24C88: FLdRfVar var_B8
  loc_D24C8B: CVarRef
  loc_D24C90: ImpAdCallI2 Format$(, )
  loc_D24C95: FStStrNoPop var_108
  loc_D24C98: ConcatStr
  loc_D24C99: FStStrNoPop var_10C
  loc_D24C9C: LitStr ","
  loc_D24C9F: ConcatStr
  loc_D24CA0: FStStrNoPop var_110
  loc_D24CA3: FLdUI1
  loc_D24CA7: CStrI2
  loc_D24CA9: FStStrNoPop var_130
  loc_D24CAC: ConcatStr
  loc_D24CAD: FStStrNoPop var_134
  loc_D24CB0: LitStr ",'"
  loc_D24CB3: ConcatStr
  loc_D24CB4: FStStrNoPop var_138
  loc_D24CB7: ILdRf var_A4
  loc_D24CBA: ConcatStr
  loc_D24CBB: FStStrNoPop var_13C
  loc_D24CBE: LitStr "','"
  loc_D24CC1: ConcatStr
  loc_D24CC2: FStStrNoPop var_140
  loc_D24CC5: ILdRf var_A8
  loc_D24CC8: ConcatStr
  loc_D24CC9: FStStrNoPop var_144
  loc_D24CCC: LitStr "',"
  loc_D24CCF: ConcatStr
  loc_D24CD0: FStStrNoPop var_148
  loc_D24CD3: FLdUI1
  loc_D24CD7: CStrI2
  loc_D24CD9: FStStrNoPop var_14C
  loc_D24CDC: ConcatStr
  loc_D24CDD: FStStrNoPop var_150
  loc_D24CE0: LitStr ","
  loc_D24CE3: ConcatStr
  loc_D24CE4: FStStrNoPop var_158
  loc_D24CE7: LitI4 0
  loc_D24CEC: LitI4 -1
  loc_D24CF1: LitI4 1
  loc_D24CF6: LitStr "."
  loc_D24CF9: LitStr ","
  loc_D24CFC: FLdFPR8 var_B0
  loc_D24CFF: CStrR8
  loc_D24D01: FStStrNoPop var_154
  loc_D24D04: ImpAdCallI2 Replace(, , , , , )
  loc_D24D09: FStStrNoPop var_15C
  loc_D24D0C: ConcatStr
  loc_D24D0D: FStStrNoPop var_160
  loc_D24D10: LitStr ","
  loc_D24D13: ConcatStr
  loc_D24D14: FStStrNoPop var_7A8
  loc_D24D17: FLdI2 var_B4
  loc_D24D1A: CStrUI1
  loc_D24D1C: FStStrNoPop var_7AC
  loc_D24D1F: ConcatStr
  loc_D24D20: FStStrNoPop var_7B0
  loc_D24D23: LitStr ")"
  loc_D24D26: ConcatStr
  loc_D24D27: FStStrNoPop var_7B4
  loc_D24D2A: Call Proc_261_10_A4592C()
  loc_D24D2F: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_7A8 = "": var_7AC = "": var_7B0 = ""
  loc_D24D5C: FFree1Var var_100 = ""
  loc_D24D5F: FLdRfVar var_100
  loc_D24D62: FLdRfVar var_11C
  loc_D24D65: LitVarStr var_E0, "HoreBoap"
  loc_D24D6A: PopAdLdVar
  loc_D24D6B: FLdRfVar var_118
  loc_D24D6E: FLdPr Me
  loc_D24D71: MemLdPr global_76
  loc_D24D74:  = Me.Fields
  loc_D24D79: FLdPr var_118
  loc_D24D7C: from_stack_2 = Me.Item(from_stack_1)
  loc_D24D81: FLdPr var_11C
  loc_D24D84:  = Me.Value
  loc_D24D89: FLdRfVar var_12C
  loc_D24D8C: FLdRfVar var_17C
  loc_D24D8F: LitVarStr var_F0, "HoofBoap"
  loc_D24D94: PopAdLdVar
  loc_D24D95: FLdRfVar var_168
  loc_D24D98: FLdPr Me
  loc_D24D9B: MemLdPr global_76
  loc_D24D9E:  = Me.Fields
  loc_D24DA3: FLdPr var_168
  loc_D24DA6: from_stack_2 = Me.Item(from_stack_1)
  loc_D24DAB: FLdPr var_17C
  loc_D24DAE:  = Me.Value
  loc_D24DB3: FLdRfVar var_18C
  loc_D24DB6: FLdRfVar var_1C4
  loc_D24DB9: LitVarStr var_178, "MoreBoap"
  loc_D24DBE: PopAdLdVar
  loc_D24DBF: FLdRfVar var_1C0
  loc_D24DC2: FLdPr Me
  loc_D24DC5: MemLdPr global_76
  loc_D24DC8:  = Me.Fields
  loc_D24DCD: FLdPr var_1C0
  loc_D24DD0: from_stack_2 = Me.Item(from_stack_1)
  loc_D24DD5: FLdPr var_1C4
  loc_D24DD8:  = Me.Value
  loc_D24DDD: FLdRfVar var_1AC
  loc_D24DE0: FLdRfVar var_21C
  loc_D24DE3: LitVarStr var_19C, "MoofBoap"
  loc_D24DE8: PopAdLdVar
  loc_D24DE9: FLdRfVar var_208
  loc_D24DEC: FLdPr Me
  loc_D24DEF: MemLdPr global_76
  loc_D24DF2:  = Me.Fields
  loc_D24DF7: FLdPr var_208
  loc_D24DFA: from_stack_2 = Me.Item(from_stack_1)
  loc_D24DFF: FLdPr var_21C
  loc_D24E02:  = Me.Value
  loc_D24E07: FLdRfVar var_1BC
  loc_D24E0A: FLdRfVar var_274
  loc_D24E0D: LitVarStr var_1F4, "IrecBoap"
  loc_D24E12: PopAdLdVar
  loc_D24E13: FLdRfVar var_260
  loc_D24E16: FLdPr Me
  loc_D24E19: MemLdPr global_76
  loc_D24E1C:  = Me.Fields
  loc_D24E21: FLdPr var_260
  loc_D24E24: from_stack_2 = Me.Item(from_stack_1)
  loc_D24E29: FLdPr var_274
  loc_D24E2C:  = Me.Value
  loc_D24E31: FLdRfVar var_1D4
  loc_D24E34: FLdRfVar var_2CC
  loc_D24E37: LitVarStr var_218, "IofiBoap"
  loc_D24E3C: PopAdLdVar
  loc_D24E3D: FLdRfVar var_2B8
  loc_D24E40: FLdPr Me
  loc_D24E43: MemLdPr global_76
  loc_D24E46:  = Me.Fields
  loc_D24E4B: FLdPr var_2B8
  loc_D24E4E: from_stack_2 = Me.Item(from_stack_1)
  loc_D24E53: FLdPr var_2CC
  loc_D24E56:  = Me.Value
  loc_D24E5B: LitI4 2
  loc_D24E60: FLdRfVar var_100
  loc_D24E63: FnCDblVar
  loc_D24E65: FLdRfVar var_12C
  loc_D24E68: FnCDblVar
  loc_D24E6A: AddR8
  loc_D24E6B: FLdRfVar var_18C
  loc_D24E6E: FnCDblVar
  loc_D24E70: AddR8
  loc_D24E71: FLdRfVar var_1AC
  loc_D24E74: FnCDblVar
  loc_D24E76: AddR8
  loc_D24E77: FLdRfVar var_1BC
  loc_D24E7A: FnCDblVar
  loc_D24E7C: AddR8
  loc_D24E7D: FLdRfVar var_1D4
  loc_D24E80: FnCDblVar
  loc_D24E82: AddR8
  loc_D24E83: CVarR8
  loc_D24E87: FLdRfVar var_204
  loc_D24E8A: ImpAdCallFPR4  = Round(, )
  loc_D24E8F: FLdRfVar var_204
  loc_D24E92: LitVarI2 var_270, 0
  loc_D24E97: HardType
  loc_D24E98: GtVarBool
  loc_D24E9A: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = ""
  loc_D24EB5: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = ""
  loc_D24EC8: BranchF loc_D2529C
  loc_D24ECB: FLdRfVar var_B8
  loc_D24ECE: CVarRef
  loc_D24ED3: FLdRfVar var_100
  loc_D24ED6: ImpAdCallFPR4  = Year()
  loc_D24EDB: FLdRfVar var_100
  loc_D24EDE: CI2Var
  loc_D24EDF: ImpAdCallI2 Proc_270_56_A7A778()
  loc_D24EE4: FStStr var_A4
  loc_D24EE7: FFree1Var var_100 = ""
  loc_D24EEA: FLdRfVar var_B8
  loc_D24EED: CVarRef
  loc_D24EF2: FLdRfVar var_100
  loc_D24EF5: ImpAdCallFPR4  = Year()
  loc_D24EFA: ILdRf var_A4
  loc_D24EFD: FLdRfVar var_100
  loc_D24F00: CI2Var
  loc_D24F01: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_D24F06: FStStr var_A8
  loc_D24F09: FFree1Var var_100 = ""
  loc_D24F0C: FLdRfVar var_100
  loc_D24F0F: FLdRfVar var_11C
  loc_D24F12: LitVarStr var_E0, "HoreBoap"
  loc_D24F17: PopAdLdVar
  loc_D24F18: FLdRfVar var_118
  loc_D24F1B: FLdPr Me
  loc_D24F1E: MemLdPr global_76
  loc_D24F21:  = Me.Fields
  loc_D24F26: FLdPr var_118
  loc_D24F29: from_stack_2 = Me.Item(from_stack_1)
  loc_D24F2E: FLdPr var_11C
  loc_D24F31:  = Me.Value
  loc_D24F36: FLdRfVar var_12C
  loc_D24F39: FLdRfVar var_17C
  loc_D24F3C: LitVarStr var_F0, "HoofBoap"
  loc_D24F41: PopAdLdVar
  loc_D24F42: FLdRfVar var_168
  loc_D24F45: FLdPr Me
  loc_D24F48: MemLdPr global_76
  loc_D24F4B:  = Me.Fields
  loc_D24F50: FLdPr var_168
  loc_D24F53: from_stack_2 = Me.Item(from_stack_1)
  loc_D24F58: FLdPr var_17C
  loc_D24F5B:  = Me.Value
  loc_D24F60: FLdRfVar var_18C
  loc_D24F63: FLdRfVar var_1C4
  loc_D24F66: LitVarStr var_178, "MoreBoap"
  loc_D24F6B: PopAdLdVar
  loc_D24F6C: FLdRfVar var_1C0
  loc_D24F6F: FLdPr Me
  loc_D24F72: MemLdPr global_76
  loc_D24F75:  = Me.Fields
  loc_D24F7A: FLdPr var_1C0
  loc_D24F7D: from_stack_2 = Me.Item(from_stack_1)
  loc_D24F82: FLdPr var_1C4
  loc_D24F85:  = Me.Value
  loc_D24F8A: FLdRfVar var_1AC
  loc_D24F8D: FLdRfVar var_21C
  loc_D24F90: LitVarStr var_19C, "MoofBoap"
  loc_D24F95: PopAdLdVar
  loc_D24F96: FLdRfVar var_208
  loc_D24F99: FLdPr Me
  loc_D24F9C: MemLdPr global_76
  loc_D24F9F:  = Me.Fields
  loc_D24FA4: FLdPr var_208
  loc_D24FA7: from_stack_2 = Me.Item(from_stack_1)
  loc_D24FAC: FLdPr var_21C
  loc_D24FAF:  = Me.Value
  loc_D24FB4: FLdRfVar var_1BC
  loc_D24FB7: FLdRfVar var_274
  loc_D24FBA: LitVarStr var_1F4, "IrecBoap"
  loc_D24FBF: PopAdLdVar
  loc_D24FC0: FLdRfVar var_260
  loc_D24FC3: FLdPr Me
  loc_D24FC6: MemLdPr global_76
  loc_D24FC9:  = Me.Fields
  loc_D24FCE: FLdPr var_260
  loc_D24FD1: from_stack_2 = Me.Item(from_stack_1)
  loc_D24FD6: FLdPr var_274
  loc_D24FD9:  = Me.Value
  loc_D24FDE: FLdRfVar var_1D4
  loc_D24FE1: FLdRfVar var_2CC
  loc_D24FE4: LitVarStr var_218, "IofiBoap"
  loc_D24FE9: PopAdLdVar
  loc_D24FEA: FLdRfVar var_2B8
  loc_D24FED: FLdPr Me
  loc_D24FF0: MemLdPr global_76
  loc_D24FF3:  = Me.Fields
  loc_D24FF8: FLdPr var_2B8
  loc_D24FFB: from_stack_2 = Me.Item(from_stack_1)
  loc_D25000: FLdPr var_2CC
  loc_D25003:  = Me.Value
  loc_D25008: LitI4 2
  loc_D2500D: FLdRfVar var_100
  loc_D25010: FnCDblVar
  loc_D25012: FLdRfVar var_12C
  loc_D25015: FnCDblVar
  loc_D25017: AddR8
  loc_D25018: FLdRfVar var_18C
  loc_D2501B: FnCDblVar
  loc_D2501D: AddR8
  loc_D2501E: FLdRfVar var_1AC
  loc_D25021: FnCDblVar
  loc_D25023: AddR8
  loc_D25024: FLdRfVar var_1BC
  loc_D25027: FnCDblVar
  loc_D25029: AddR8
  loc_D2502A: FLdRfVar var_1D4
  loc_D2502D: FnCDblVar
  loc_D2502F: AddR8
  loc_D25030: CVarR8
  loc_D25034: FLdRfVar var_204
  loc_D25037: ImpAdCallFPR4  = Round(, )
  loc_D2503C: FLdRfVar var_204
  loc_D2503F: CR4Var
  loc_D25040: FStFPR8 var_B0
  loc_D25043: FFreeAd var_118 = "": var_11C = "": var_168 = "": var_17C = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = ""
  loc_D2505E: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1AC = "": var_1BC = "": var_1D4 = "": var_1E4 = ""
  loc_D25071: LitStr "SELECT FechInre FROM detainre WHERE FechInre = "
  loc_D25074: LitI4 1
  loc_D25079: LitI4 1
  loc_D2507E: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D25083: FStVarCopyObj var_100
  loc_D25086: FLdRfVar var_100
  loc_D25089: FLdRfVar var_B8
  loc_D2508C: CVarRef
  loc_D25091: ImpAdCallI2 Format$(, )
  loc_D25096: FStStrNoPop var_104
  loc_D25099: ConcatStr
  loc_D2509A: FStStrNoPop var_108
  loc_D2509D: LitStr " AND NumeAcpa = "
  loc_D250A0: ConcatStr
  loc_D250A1: FStStrNoPop var_10C
  loc_D250A4: FLdUI1
  loc_D250A8: CStrI2
  loc_D250AA: FStStrNoPop var_110
  loc_D250AD: ConcatStr
  loc_D250AE: FStStrNoPop var_130
  loc_D250B1: LitStr " AND CodiConc = '"
  loc_D250B4: ConcatStr
  loc_D250B5: FStStrNoPop var_134
  loc_D250B8: ILdRf var_A4
  loc_D250BB: ConcatStr
  loc_D250BC: FStStrNoPop var_138
  loc_D250BF: LitStr "'"
  loc_D250C2: ConcatStr
  loc_D250C3: FStStrNoPop var_13C
  loc_D250C6: Call Proc_261_14_A45670()
  loc_D250CB: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D250DE: FFree1Var var_100 = ""
  loc_D250E1: FLdRfVar var_114
  loc_D250E4: FLdPr Me
  loc_D250E7: MemLdPr global_80
  loc_D250EA:  = Me.RecordCount
  loc_D250EF: ILdRf var_114
  loc_D250F2: LitI4 0
  loc_D250F7: GtI4
  loc_D250F8: BranchF loc_D251A6
  loc_D250FB: LitStr "UPDATE detainre SET TotaDeir =  TotaDeir + "
  loc_D250FE: LitI4 0
  loc_D25103: LitI4 -1
  loc_D25108: LitI4 1
  loc_D2510D: LitStr "."
  loc_D25110: LitStr ","
  loc_D25113: FLdFPR8 var_B0
  loc_D25116: CStrR8
  loc_D25118: FStStrNoPop var_104
  loc_D2511B: ImpAdCallI2 Replace(, , , , , )
  loc_D25120: FStStrNoPop var_108
  loc_D25123: ConcatStr
  loc_D25124: FStStrNoPop var_10C
  loc_D25127: LitStr " WHERE FechInre = "
  loc_D2512A: ConcatStr
  loc_D2512B: FStStrNoPop var_110
  loc_D2512E: LitI4 1
  loc_D25133: LitI4 1
  loc_D25138: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D2513D: FStVarCopyObj var_100
  loc_D25140: FLdRfVar var_100
  loc_D25143: FLdRfVar var_B8
  loc_D25146: CVarRef
  loc_D2514B: ImpAdCallI2 Format$(, )
  loc_D25150: FStStrNoPop var_130
  loc_D25153: ConcatStr
  loc_D25154: FStStrNoPop var_134
  loc_D25157: LitStr " AND NumeAcpa = "
  loc_D2515A: ConcatStr
  loc_D2515B: FStStrNoPop var_138
  loc_D2515E: FLdUI1
  loc_D25162: CStrI2
  loc_D25164: FStStrNoPop var_13C
  loc_D25167: ConcatStr
  loc_D25168: FStStrNoPop var_140
  loc_D2516B: LitStr " AND CodiConc = '"
  loc_D2516E: ConcatStr
  loc_D2516F: FStStrNoPop var_144
  loc_D25172: ILdRf var_A4
  loc_D25175: ConcatStr
  loc_D25176: FStStrNoPop var_148
  loc_D25179: LitStr "'"
  loc_D2517C: ConcatStr
  loc_D2517D: FStStrNoPop var_14C
  loc_D25180: Call Proc_261_10_A4592C()
  loc_D25185: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_D251A0: FFree1Var var_100 = ""
  loc_D251A3: Branch loc_D2529C
  loc_D251A6: LitStr "INSERT INTO detainre (FechInre, NumeAcpa, CodiConc, CodiCuco, CodiEnre, TotaDeir, IdContra) "
  loc_D251A9: LitStr " VALUES ("
  loc_D251AC: ConcatStr
  loc_D251AD: FStStrNoPop var_104
  loc_D251B0: LitI4 1
  loc_D251B5: LitI4 1
  loc_D251BA: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D251BF: FStVarCopyObj var_100
  loc_D251C2: FLdRfVar var_100
  loc_D251C5: FLdRfVar var_B8
  loc_D251C8: CVarRef
  loc_D251CD: ImpAdCallI2 Format$(, )
  loc_D251D2: FStStrNoPop var_108
  loc_D251D5: ConcatStr
  loc_D251D6: FStStrNoPop var_10C
  loc_D251D9: LitStr ","
  loc_D251DC: ConcatStr
  loc_D251DD: FStStrNoPop var_110
  loc_D251E0: FLdUI1
  loc_D251E4: CStrI2
  loc_D251E6: FStStrNoPop var_130
  loc_D251E9: ConcatStr
  loc_D251EA: FStStrNoPop var_134
  loc_D251ED: LitStr ",'"
  loc_D251F0: ConcatStr
  loc_D251F1: FStStrNoPop var_138
  loc_D251F4: ILdRf var_A4
  loc_D251F7: ConcatStr
  loc_D251F8: FStStrNoPop var_13C
  loc_D251FB: LitStr "','"
  loc_D251FE: ConcatStr
  loc_D251FF: FStStrNoPop var_140
  loc_D25202: ILdRf var_A8
  loc_D25205: ConcatStr
  loc_D25206: FStStrNoPop var_144
  loc_D25209: LitStr "',"
  loc_D2520C: ConcatStr
  loc_D2520D: FStStrNoPop var_148
  loc_D25210: FLdUI1
  loc_D25214: CStrI2
  loc_D25216: FStStrNoPop var_14C
  loc_D25219: ConcatStr
  loc_D2521A: FStStrNoPop var_150
  loc_D2521D: LitStr ","
  loc_D25220: ConcatStr
  loc_D25221: FStStrNoPop var_158
  loc_D25224: LitI4 0
  loc_D25229: LitI4 -1
  loc_D2522E: LitI4 1
  loc_D25233: LitStr "."
  loc_D25236: LitStr ","
  loc_D25239: FLdFPR8 var_B0
  loc_D2523C: CStrR8
  loc_D2523E: FStStrNoPop var_154
  loc_D25241: ImpAdCallI2 Replace(, , , , , )
  loc_D25246: FStStrNoPop var_15C
  loc_D25249: ConcatStr
  loc_D2524A: FStStrNoPop var_160
  loc_D2524D: LitStr ","
  loc_D25250: ConcatStr
  loc_D25251: FStStrNoPop var_7A8
  loc_D25254: FLdI2 var_B4
  loc_D25257: CStrUI1
  loc_D25259: FStStrNoPop var_7AC
  loc_D2525C: ConcatStr
  loc_D2525D: FStStrNoPop var_7B0
  loc_D25260: LitStr ")"
  loc_D25263: ConcatStr
  loc_D25264: FStStrNoPop var_7B4
  loc_D25267: Call Proc_261_10_A4592C()
  loc_D2526C: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = "": var_7A8 = "": var_7AC = "": var_7B0 = ""
  loc_D25299: FFree1Var var_100 = ""
  loc_D2529C: FLdPr Me
  loc_D2529F: MemLdPr global_76
  loc_D252A2: Me.MoveNext
  loc_D252A7: Branch loc_D245C4
  loc_D252AA: LitI2_Byte 0
  loc_D252AC: CR8I2
  loc_D252AD: FStFPR8 var_D0
  loc_D252B0: LitStr "SELECT FechInre, CodiCuco, CodiConc, CodiEnre, SUM(TotaDeir) as TotaDeirFora FROM detainre "
  loc_D252B3: LitStr " WHERE FechInre = '"
  loc_D252B6: ConcatStr
  loc_D252B7: FStStrNoPop var_104
  loc_D252BA: LitI4 1
  loc_D252BF: LitI4 1
  loc_D252C4: LitVarStr var_F0, "yyyy-mm-dd"
  loc_D252C9: FStVarCopyObj var_100
  loc_D252CC: FLdRfVar var_100
  loc_D252CF: FLdRfVar var_B8
  loc_D252D2: CVarRef
  loc_D252D7: ImpAdCallI2 Format$(, )
  loc_D252DC: FStStrNoPop var_108
  loc_D252DF: ConcatStr
  loc_D252E0: FStStrNoPop var_10C
  loc_D252E3: LitStr "'"
  loc_D252E6: ConcatStr
  loc_D252E7: FStStrNoPop var_110
  loc_D252EA: LitStr " AND NumeAcpa = "
  loc_D252ED: ConcatStr
  loc_D252EE: FStStrNoPop var_130
  loc_D252F1: FLdUI1
  loc_D252F5: CStrI2
  loc_D252F7: FStStrNoPop var_134
  loc_D252FA: ConcatStr
  loc_D252FB: FStStrNoPop var_138
  loc_D252FE: LitStr " GROUP BY FechInre, CodiCuco, CodiConc, CodiEnre"
  loc_D25301: ConcatStr
  loc_D25302: FStStrNoPop var_13C
  loc_D25305: Call Proc_261_12_A45788()
  loc_D2530A: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D2531D: FFree1Var var_100 = ""
  loc_D25320: FLdRfVar var_114
  loc_D25323: FLdPr Me
  loc_D25326: MemLdPr global_72
  loc_D25329:  = Me.RecordCount
  loc_D2532E: ILdRf var_114
  loc_D25331: LitI4 0
  loc_D25336: GtI4
  loc_D25337: BranchF loc_D25776
  loc_D2533A: FLdPr Me
  loc_D2533D: MemLdPr global_72
  loc_D25340: Me.MoveFirst
  loc_D25345: FLdRfVar var_162
  loc_D25348: FLdPr Me
  loc_D2534B: MemLdPr global_72
  loc_D2534E:  = Me.EOF
  loc_D25353: FLdI2 var_162
  loc_D25356: NotI4
  loc_D25357: BranchF loc_D256F6
  loc_D2535A: FLdRfVar var_162
  loc_D2535D: FLdRfVar var_100
  loc_D25360: FLdRfVar var_11C
  loc_D25363: LitVarStr var_E0, "FechInre"
  loc_D25368: PopAdLdVar
  loc_D25369: FLdRfVar var_118
  loc_D2536C: FLdPr Me
  loc_D2536F: MemLdPr global_72
  loc_D25372:  = Me.Fields
  loc_D25377: FLdPr var_118
  loc_D2537A: from_stack_2 = Me.Item(from_stack_1)
  loc_D2537F: FLdPr var_11C
  loc_D25382:  = Me.Value
  loc_D25387: FLdRfVar var_100
  loc_D2538A: CStrVarTmp
  loc_D2538B: FStStrNoPop var_104
  loc_D2538E: FLdRfVar var_94
  loc_D25391: NewIfNullPr clsingreso
  loc_D25394: from_stack_2v = clsingreso.UltimoRegistro(from_stack_1v)
  loc_D25399: FLdI2 var_162
  loc_D2539C: FStI2 var_C6
  loc_D2539F: FFree1Str var_104
  loc_D253A2: FFreeAd var_118 = ""
  loc_D253A9: FFree1Var var_100 = ""
  loc_D253AC: FLdRfVar var_11C
  loc_D253AF: LitVarStr var_E0, "FechInre"
  loc_D253B4: PopAdLdVar
  loc_D253B5: FLdRfVar var_118
  loc_D253B8: FLdPr Me
  loc_D253BB: MemLdPr global_72
  loc_D253BE:  = Me.Fields
  loc_D253C3: FLdPr var_118
  loc_D253C6: from_stack_2 = Me.Item(from_stack_1)
  loc_D253CB: LitStr "SELECT FechIngr, NumeIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr  FROM contpres.ingreso "
  loc_D253CE: LitStr " WHERE FechIngr = '"
  loc_D253D1: ConcatStr
  loc_D253D2: CVarStr var_1AC
  loc_D253D5: LitI4 1
  loc_D253DA: LitI4 1
  loc_D253DF: LitVarStr var_F0, "yyyy-mm-dd"
  loc_D253E4: FStVarCopyObj var_12C
  loc_D253E7: FLdRfVar var_12C
  loc_D253EA: FLdZeroAd var_11C
  loc_D253ED: CVarAd
  loc_D253F1: FLdRfVar var_18C
  loc_D253F4: ImpAdCallFPR4  = Format(, )
  loc_D253F9: FLdRfVar var_18C
  loc_D253FC: ConcatVar var_1BC
  loc_D25400: LitVarStr var_178, "'"
  loc_D25405: ConcatVar var_1D4
  loc_D25409: LitVarStr var_19C, " AND NumeIngr = "
  loc_D2540E: ConcatVar var_1E4
  loc_D25412: FLdI2 var_C6
  loc_D25415: CVarI2 var_1F4
  loc_D25418: ConcatVar var_204
  loc_D2541C: LitVarStr var_218, " ORDER BY FechIngr, NumeIngr"
  loc_D25421: ConcatVar var_22C
  loc_D25425: CStrVarVal var_104
  loc_D25429: Call Proc_261_10_A4592C()
  loc_D2542E: FFree1Str var_104
  loc_D25431: FFree1Ad var_118
  loc_D25434: FFreeVar var_100 = "": var_12C = "": var_1AC = "": var_18C = "": var_1BC = "": var_1D4 = "": var_1E4 = "": var_204 = ""
  loc_D25449: FLdRfVar var_114
  loc_D2544C: FLdPr Me
  loc_D2544F: MemLdPr global_64
  loc_D25452:  = Me.RecordCount
  loc_D25457: ILdRf var_114
  loc_D2545A: LitI4 0
  loc_D2545F: EqI4
  loc_D25460: BranchF loc_D256E8
  loc_D25463: FLdRfVar var_100
  loc_D25466: FLdRfVar var_11C
  loc_D25469: LitVarStr var_E0, "TotaDeirFora"
  loc_D2546E: PopAdLdVar
  loc_D2546F: FLdRfVar var_118
  loc_D25472: FLdPr Me
  loc_D25475: MemLdPr global_72
  loc_D25478:  = Me.Fields
  loc_D2547D: FLdPr var_118
  loc_D25480: from_stack_2 = Me.Item(from_stack_1)
  loc_D25485: FLdPr var_11C
  loc_D25488:  = Me.Value
  loc_D2548D: FLdFPR8 var_D0
  loc_D25490: FLdRfVar var_100
  loc_D25493: FnCDblVar
  loc_D25495: AddR8
  loc_D25496: FStFPR8 var_D0
  loc_D25499: FFreeAd var_118 = ""
  loc_D254A0: FFree1Var var_100 = ""
  loc_D254A3: FLdRfVar var_11C
  loc_D254A6: LitVarStr var_E0, "FechInre"
  loc_D254AB: PopAdLdVar
  loc_D254AC: FLdRfVar var_118
  loc_D254AF: FLdPr Me
  loc_D254B2: MemLdPr global_72
  loc_D254B5:  = Me.Fields
  loc_D254BA: FLdPr var_118
  loc_D254BD: from_stack_2 = Me.Item(from_stack_1)
  loc_D254C2: FLdRfVar var_30C
  loc_D254C5: FLdRfVar var_2CC
  loc_D254C8: LitVarStr var_2FC, "TotaDeirFora"
  loc_D254CD: PopAdLdVar
  loc_D254CE: FLdRfVar var_2B8
  loc_D254D1: FLdPr Me
  loc_D254D4: MemLdPr global_72
  loc_D254D7:  = Me.Fields
  loc_D254DC: FLdPr var_2B8
  loc_D254DF: from_stack_2 = Me.Item(from_stack_1)
  loc_D254E4: FLdPr var_2CC
  loc_D254E7:  = Me.Value
  loc_D254EC: LitStr " INSERT INTO contpres.ingreso (FechIngr, NumeIngr, PeriInfo, CodiCuco, CodiConc, CodiEnre, ImpoIngr, AutoIngr, IdContra, AltaUsua) "
  loc_D254EF: LitStr " VALUES ("
  loc_D254F2: ConcatStr
  loc_D254F3: FStStrNoPop var_104
  loc_D254F6: LitI4 1
  loc_D254FB: LitI4 1
  loc_D25500: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D25505: FStVarCopyObj var_12C
  loc_D25508: FLdRfVar var_12C
  loc_D2550B: FLdZeroAd var_11C
  loc_D2550E: CVarAd
  loc_D25512: ImpAdCallI2 Format$(, )
  loc_D25517: FStStrNoPop var_108
  loc_D2551A: ConcatStr
  loc_D2551B: FStStrNoPop var_10C
  loc_D2551E: LitStr ","
  loc_D25521: ConcatStr
  loc_D25522: FStStrNoPop var_110
  loc_D25525: FLdI2 var_C6
  loc_D25528: CStrUI1
  loc_D2552A: FStStrNoPop var_130
  loc_D2552D: ConcatStr
  loc_D2552E: FStStrNoPop var_134
  loc_D25531: LitStr ","
  loc_D25534: ConcatStr
  loc_D25535: CVarStr var_1BC
  loc_D25538: FLdRfVar var_17C
  loc_D2553B: LitVarStr var_178, "FechInre"
  loc_D25540: PopAdLdVar
  loc_D25541: FLdRfVar var_168
  loc_D25544: FLdPr Me
  loc_D25547: MemLdPr global_72
  loc_D2554A:  = Me.Fields
  loc_D2554F: FLdPr var_168
  loc_D25552: from_stack_2 = Me.Item(from_stack_1)
  loc_D25557: FLdZeroAd var_17C
  loc_D2555A: CVarAd
  loc_D2555E: FLdRfVar var_1AC
  loc_D25561: ImpAdCallFPR4  = Year()
  loc_D25566: FLdRfVar var_1AC
  loc_D25569: ConcatVar var_1D4
  loc_D2556D: LitVarStr var_19C, ",'"
  loc_D25572: ConcatVar var_1E4
  loc_D25576: FLdRfVar var_204
  loc_D25579: FLdRfVar var_1C4
  loc_D2557C: LitVarStr var_1F4, "CodiCuco"
  loc_D25581: PopAdLdVar
  loc_D25582: FLdRfVar var_1C0
  loc_D25585: FLdPr Me
  loc_D25588: MemLdPr global_72
  loc_D2558B:  = Me.Fields
  loc_D25590: FLdPr var_1C0
  loc_D25593: from_stack_2 = Me.Item(from_stack_1)
  loc_D25598: FLdPr var_1C4
  loc_D2559B:  = Me.Value
  loc_D255A0: FLdRfVar var_204
  loc_D255A3: ConcatVar var_22C
  loc_D255A7: LitVarStr var_218, "','"
  loc_D255AC: ConcatVar var_23C
  loc_D255B0: FLdRfVar var_25C
  loc_D255B3: FLdRfVar var_21C
  loc_D255B6: LitVarStr var_24C, "CodiConc"
  loc_D255BB: PopAdLdVar
  loc_D255BC: FLdRfVar var_208
  loc_D255BF: FLdPr Me
  loc_D255C2: MemLdPr global_72
  loc_D255C5:  = Me.Fields
  loc_D255CA: FLdPr var_208
  loc_D255CD: from_stack_2 = Me.Item(from_stack_1)
  loc_D255D2: FLdPr var_21C
  loc_D255D5:  = Me.Value
  loc_D255DA: FLdRfVar var_25C
  loc_D255DD: ConcatVar var_284
  loc_D255E1: LitVarStr var_270, "',"
  loc_D255E6: ConcatVar var_294
  loc_D255EA: FLdRfVar var_2B4
  loc_D255ED: FLdRfVar var_274
  loc_D255F0: LitVarStr var_2A4, "CodiEnre"
  loc_D255F5: PopAdLdVar
  loc_D255F6: FLdRfVar var_260
  loc_D255F9: FLdPr Me
  loc_D255FC: MemLdPr global_72
  loc_D255FF:  = Me.Fields
  loc_D25604: FLdPr var_260
  loc_D25607: from_stack_2 = Me.Item(from_stack_1)
  loc_D2560C: FLdPr var_274
  loc_D2560F:  = Me.Value
  loc_D25614: FLdRfVar var_2B4
  loc_D25617: ConcatVar var_2DC
  loc_D2561B: LitVarStr var_2C8, ","
  loc_D25620: ConcatVar var_2EC
  loc_D25624: LitI4 0
  loc_D25629: LitI4 -1
  loc_D2562E: LitI4 1
  loc_D25633: LitStr "."
  loc_D25636: LitStr ","
  loc_D25639: FLdRfVar var_30C
  loc_D2563C: FnCDblVar
  loc_D2563E: LitI2_Byte &HFF
  loc_D25640: CR8I2
  loc_D25641: MulR8
  loc_D25642: CStrR8
  loc_D25644: FStStrNoPop var_138
  loc_D25647: ImpAdCallI2 Replace(, , , , , )
  loc_D2564C: CVarStr var_334
  loc_D2564F: ConcatVar var_344
  loc_D25653: LitVarStr var_320, ",2,"
  loc_D25658: ConcatVar var_364
  loc_D2565C: FLdI2 var_B4
  loc_D2565F: CVarI2 var_354
  loc_D25662: ConcatVar var_38C
  loc_D25666: LitVarStr var_378, ",'"
  loc_D2566B: ConcatVar var_39C
  loc_D2566F: ImpAdLdI4 MemVar_D9302C
  loc_D25672: CVarStr var_3AC
  loc_D25675: ConcatVar var_3BC
  loc_D25679: LitVarStr var_3CC, "')"
  loc_D2567E: ConcatVar var_3EC
  loc_D25682: CStrVarVal var_13C
  loc_D25686: Call Proc_261_10_A4592C()
  loc_D2568B: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = ""
  loc_D2569E: FFreeAd var_118 = "": var_168 = "": var_1C0 = "": var_1C4 = "": var_208 = "": var_21C = "": var_260 = "": var_274 = "": var_2B8 = ""
  loc_D256B5: FFreeVar var_100 = "": var_12C = "": var_18C = "": var_1BC = "": var_1AC = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_22C = "": var_23C = "": var_25C = "": var_284 = "": var_294 = "": var_2B4 = "": var_2DC = "": var_30C = "": var_2EC = "": var_334 = "": var_344 = "": var_364 = "": var_38C = "": var_39C = "": var_3BC = ""
  loc_D256E8: FLdPr Me
  loc_D256EB: MemLdPr global_72
  loc_D256EE: Me.MoveNext
  loc_D256F3: Branch loc_D25345
  loc_D256F6: LitStr " INSERT INTO ingrrent (FechInre, NumeAcpa, ActuInre, IdContra) "
  loc_D256F9: LitStr " VALUES ("
  loc_D256FC: ConcatStr
  loc_D256FD: FStStrNoPop var_104
  loc_D25700: LitI4 1
  loc_D25705: LitI4 1
  loc_D2570A: LitVarStr var_F0, "'yyyy-mm-dd'"
  loc_D2570F: FStVarCopyObj var_100
  loc_D25712: FLdRfVar var_100
  loc_D25715: FLdRfVar var_B8
  loc_D25718: CVarRef
  loc_D2571D: ImpAdCallI2 Format$(, )
  loc_D25722: FStStrNoPop var_108
  loc_D25725: ConcatStr
  loc_D25726: FStStrNoPop var_10C
  loc_D25729: LitStr ","
  loc_D2572C: ConcatStr
  loc_D2572D: FStStrNoPop var_110
  loc_D25730: FLdUI1
  loc_D25734: CStrI2
  loc_D25736: FStStrNoPop var_130
  loc_D25739: ConcatStr
  loc_D2573A: FStStrNoPop var_134
  loc_D2573D: LitStr ",'Si',"
  loc_D25740: ConcatStr
  loc_D25741: FStStrNoPop var_138
  loc_D25744: FLdI2 var_B4
  loc_D25747: CStrUI1
  loc_D25749: FStStrNoPop var_13C
  loc_D2574C: ConcatStr
  loc_D2574D: FStStrNoPop var_140
  loc_D25750: LitStr ")"
  loc_D25753: ConcatStr
  loc_D25754: FStStrNoPop var_144
  loc_D25757: Call Proc_261_10_A4592C()
  loc_D2575C: FFreeStr var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_D25773: FFree1Var var_100 = ""
  loc_D25776: ExitProcHresult
End Sub

Private Function Proc_261_9_9F1290() '9F1290
  'Data Table: 410564
  loc_9F126C: LitStr "Primary"
  loc_9F126F: FLdPr Me
  loc_9F1272: LateIdLdVar var_94 DispID_4 0
  loc_9F1279: CastAdVar Me
  loc_9F127D: FStAdFunc var_98
  loc_9F1280: FLdPr var_98
  loc_9F1288: FFree1Ad var_98
  loc_9F128B: FFree1Var var_94 = ""
  loc_9F128E: ExitProcHresult
End Function

Private Function Proc_261_10_A4592C(arg_C) 'A4592C
  'Data Table: 410564
  loc_A458D8: ILdRf arg_C
  loc_A458DB: FStStrCopy var_88
  loc_A458DE: LitNothing
  loc_A458E0: CastAd
  loc_A458E3: FStAdFuncNoPop
  loc_A458E6: FLdPr Me
  loc_A458E9: MemStAd
  loc_A458ED: FFree1Ad var_8C
  loc_A458F0: New Recordset
  loc_A458F4: FStAdFuncNoPop
  loc_A458F7: FLdPr Me
  loc_A458FA: MemStAd
  loc_A458FE: FFree1Ad var_8C
  loc_A45901: LitI4 -1
  loc_A45906: LitI4 3
  loc_A4590B: LitI4 3
  loc_A45910: ImpAdLdI4 MemVar_D9301C
  loc_A45913: CVarAd
  loc_A45917: PopAdLdVar
  loc_A45918: ILdRf var_88
  loc_A4591B: CVarStr var_9C
  loc_A4591E: PopAdLdVar
  loc_A4591F: FLdPr Me
  loc_A45922: MemLdPr global_64
  loc_A45925: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4592A: ExitProcHresult
End Function

Private Function Proc_261_11_A45814(arg_C) 'A45814
  'Data Table: 410564
  loc_A457C0: ILdRf arg_C
  loc_A457C3: FStStrCopy var_88
  loc_A457C6: LitNothing
  loc_A457C8: CastAd
  loc_A457CB: FStAdFuncNoPop
  loc_A457CE: FLdPr Me
  loc_A457D1: MemStAd
  loc_A457D5: FFree1Ad var_8C
  loc_A457D8: New Recordset
  loc_A457DC: FStAdFuncNoPop
  loc_A457DF: FLdPr Me
  loc_A457E2: MemStAd
  loc_A457E6: FFree1Ad var_8C
  loc_A457E9: LitI4 -1
  loc_A457EE: LitI4 3
  loc_A457F3: LitI4 3
  loc_A457F8: ImpAdLdI4 MemVar_D9301C
  loc_A457FB: CVarAd
  loc_A457FF: PopAdLdVar
  loc_A45800: ILdRf var_88
  loc_A45803: CVarStr var_9C
  loc_A45806: PopAdLdVar
  loc_A45807: FLdPr Me
  loc_A4580A: MemLdPr global_68
  loc_A4580D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A45812: ExitProcHresult
End Function

Private Function Proc_261_12_A45788(arg_C) 'A45788
  'Data Table: 410564
  loc_A45734: ILdRf arg_C
  loc_A45737: FStStrCopy var_88
  loc_A4573A: LitNothing
  loc_A4573C: CastAd
  loc_A4573F: FStAdFuncNoPop
  loc_A45742: FLdPr Me
  loc_A45745: MemStAd
  loc_A45749: FFree1Ad var_8C
  loc_A4574C: New Recordset
  loc_A45750: FStAdFuncNoPop
  loc_A45753: FLdPr Me
  loc_A45756: MemStAd
  loc_A4575A: FFree1Ad var_8C
  loc_A4575D: LitI4 -1
  loc_A45762: LitI4 3
  loc_A45767: LitI4 3
  loc_A4576C: ImpAdLdI4 MemVar_D9301C
  loc_A4576F: CVarAd
  loc_A45773: PopAdLdVar
  loc_A45774: ILdRf var_88
  loc_A45777: CVarStr var_9C
  loc_A4577A: PopAdLdVar
  loc_A4577B: FLdPr Me
  loc_A4577E: MemLdPr global_72
  loc_A45781: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A45786: ExitProcHresult
End Function

Private Function Proc_261_13_A48A64(arg_C) 'A48A64
  'Data Table: 410564
  loc_A48A10: ILdRf arg_C
  loc_A48A13: FStStrCopy var_88
  loc_A48A16: LitNothing
  loc_A48A18: CastAd
  loc_A48A1B: FStAdFuncNoPop
  loc_A48A1E: FLdPr Me
  loc_A48A21: MemStAd
  loc_A48A25: FFree1Ad var_8C
  loc_A48A28: New Recordset
  loc_A48A2C: FStAdFuncNoPop
  loc_A48A2F: FLdPr Me
  loc_A48A32: MemStAd
  loc_A48A36: FFree1Ad var_8C
  loc_A48A39: LitI4 -1
  loc_A48A3E: LitI4 3
  loc_A48A43: LitI4 3
  loc_A48A48: ImpAdLdI4 MemVar_D9301C
  loc_A48A4B: CVarAd
  loc_A48A4F: PopAdLdVar
  loc_A48A50: ILdRf var_88
  loc_A48A53: CVarStr var_9C
  loc_A48A56: PopAdLdVar
  loc_A48A57: FLdPr Me
  loc_A48A5A: MemLdPr global_76
  loc_A48A5D: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A48A62: ExitProcHresult
End Function

Private Function Proc_261_14_A45670(arg_C) 'A45670
  'Data Table: 410564
  loc_A4561C: ILdRf arg_C
  loc_A4561F: FStStrCopy var_88
  loc_A45622: LitNothing
  loc_A45624: CastAd
  loc_A45627: FStAdFuncNoPop
  loc_A4562A: FLdPr Me
  loc_A4562D: MemStAd
  loc_A45631: FFree1Ad var_8C
  loc_A45634: New Recordset
  loc_A45638: FStAdFuncNoPop
  loc_A4563B: FLdPr Me
  loc_A4563E: MemStAd
  loc_A45642: FFree1Ad var_8C
  loc_A45645: LitI4 -1
  loc_A4564A: LitI4 3
  loc_A4564F: LitI4 3
  loc_A45654: ImpAdLdI4 MemVar_D9301C
  loc_A45657: CVarAd
  loc_A4565B: PopAdLdVar
  loc_A4565C: ILdRf var_88
  loc_A4565F: CVarStr var_9C
  loc_A45662: PopAdLdVar
  loc_A45663: FLdPr Me
  loc_A45666: MemLdPr global_80
  loc_A45669: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A4566E: ExitProcHresult
End Function

Private Function Proc_261_15_A455E4(arg_C) 'A455E4
  'Data Table: 410564
  loc_A45590: ILdRf arg_C
  loc_A45593: FStStrCopy var_88
  loc_A45596: LitNothing
  loc_A45598: CastAd
  loc_A4559B: FStAdFuncNoPop
  loc_A4559E: FLdPr Me
  loc_A455A1: MemStAd
  loc_A455A5: FFree1Ad var_8C
  loc_A455A8: New Recordset
  loc_A455AC: FStAdFuncNoPop
  loc_A455AF: FLdPr Me
  loc_A455B2: MemStAd
  loc_A455B6: FFree1Ad var_8C
  loc_A455B9: LitI4 -1
  loc_A455BE: LitI4 3
  loc_A455C3: LitI4 3
  loc_A455C8: ImpAdLdI4 MemVar_D9301C
  loc_A455CB: CVarAd
  loc_A455CF: PopAdLdVar
  loc_A455D0: ILdRf var_88
  loc_A455D3: CVarStr var_9C
  loc_A455D6: PopAdLdVar
  loc_A455D7: FLdPr Me
  loc_A455DA: MemLdPr global_84
  loc_A455DD: Recordset.Recordset15.Open from_stack_1, from_stack_2, from_stack_3
  loc_A455E2: ExitProcHresult
End Function

Private Function Proc_261_16_9E1BDC(arg_C) '9E1BDC
  'Data Table: 410564
  loc_9E1BC0: ILdI4 arg_C
  loc_9E1BC3: FStStrCopy var_88
  loc_9E1BC6: ILdRf var_88
  loc_9E1BC9: LitStr "Primary"
  loc_9E1BCC: EqStr
  loc_9E1BCE: BranchF loc_9E1BDB
  loc_9E1BD1: FLdPr Me
  loc_9E1BD4: MemLdStr RsFrm
  loc_9E1BD7: IStAd
  loc_9E1BDB: ExitProcHresult
End Function
