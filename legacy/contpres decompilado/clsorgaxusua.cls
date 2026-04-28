VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsorgaxusua"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40C3F8
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40C407
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40C416
  RsFrm = Value
End Sub

Public Sub MoveFirst() '97059C
  'Data Table: 40C230
  loc_970574: FLdRfVar var_88
  loc_970577: FLdPr Me
  loc_97057A: MemLdPr RsFrm
  loc_97057D:  = Me.RecordCount
  loc_970582: ILdRf var_88
  loc_970585: LitI4 0
  loc_97058A: GtI4
  loc_97058B: BranchF loc_970599
  loc_97058E: FLdPr Me
  loc_970591: MemLdPr RsFrm
  loc_970594: Me.MoveFirst
  loc_970599: ExitProcHresult
End Sub

Public Sub MoveLast() '97043C
  'Data Table: 40C230
  loc_970414: FLdRfVar var_88
  loc_970417: FLdPr Me
  loc_97041A: MemLdPr RsFrm
  loc_97041D:  = Me.RecordCount
  loc_970422: ILdRf var_88
  loc_970425: LitI4 0
  loc_97042A: GtI4
  loc_97042B: BranchF loc_970439
  loc_97042E: FLdPr Me
  loc_970431: MemLdPr RsFrm
  loc_970434: Me.MoveLast
  loc_970439: ExitProcHresult
End Sub

Public Sub MoveNext() '99E078
  'Data Table: 40C230
  loc_99E000: FLdRfVar var_86
  loc_99E003: FLdPr Me
  loc_99E006: MemLdPr RsFrm
  loc_99E009:  = Me.EOF
  loc_99E00E: FLdI2 var_86
  loc_99E011: NotI4
  loc_99E012: FLdRfVar var_8C
  loc_99E015: FLdPr Me
  loc_99E018: MemLdPr RsFrm
  loc_99E01B:  = Me.RecordCount
  loc_99E020: ILdRf var_8C
  loc_99E023: LitI4 0
  loc_99E028: GtI4
  loc_99E029: AndI4
  loc_99E02A: BranchF loc_99E038
  loc_99E02D: FLdPr Me
  loc_99E030: MemLdPr RsFrm
  loc_99E033: Me.MoveNext
  loc_99E038: FLdRfVar var_86
  loc_99E03B: FLdPr Me
  loc_99E03E: MemLdPr RsFrm
  loc_99E041:  = Me.EOF
  loc_99E046: FLdI2 var_86
  loc_99E049: FLdRfVar var_8C
  loc_99E04C: FLdPr Me
  loc_99E04F: MemLdPr RsFrm
  loc_99E052:  = Me.RecordCount
  loc_99E057: ILdRf var_8C
  loc_99E05A: LitI4 0
  loc_99E05F: GtI4
  loc_99E060: AndI4
  loc_99E061: BranchF loc_99E074
  loc_99E064: ImpAdCallFPR4 Beep()
  loc_99E069: FLdPr Me
  loc_99E06C: MemLdPr RsFrm
  loc_99E06F: Me.MoveLast
  loc_99E074: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '942110
  'Data Table: 40C230
  loc_942104: FLdPr Me
  loc_942107: MemLdPr RsFrm
  loc_94210A: Me.MoveNext
  loc_94210F: ExitProcHresult
End Sub

Public Sub Move(iValor) '947EC8
  'Data Table: 40C230
  loc_947EB4: LitVar_Missing var_94
  loc_947EB7: PopAdLdVar
  loc_947EB8: ILdI2 iValor
  loc_947EBB: CI4UI1
  loc_947EBC: FLdPr Me
  loc_947EBF: MemLdPr RsFrm
  loc_947EC2: Me.Move from_stack_1, from_stack_2
  loc_947EC7: ExitProcHresult
End Sub

Public Sub MovePrevious() '99DFD0
  'Data Table: 40C230
  loc_99DF58: FLdRfVar var_86
  loc_99DF5B: FLdPr Me
  loc_99DF5E: MemLdPr RsFrm
  loc_99DF61:  = Me.BOF
  loc_99DF66: FLdI2 var_86
  loc_99DF69: NotI4
  loc_99DF6A: FLdRfVar var_8C
  loc_99DF6D: FLdPr Me
  loc_99DF70: MemLdPr RsFrm
  loc_99DF73:  = Me.RecordCount
  loc_99DF78: ILdRf var_8C
  loc_99DF7B: LitI4 0
  loc_99DF80: GtI4
  loc_99DF81: AndI4
  loc_99DF82: BranchF loc_99DF90
  loc_99DF85: FLdPr Me
  loc_99DF88: MemLdPr RsFrm
  loc_99DF8B: Me.MovePrevious
  loc_99DF90: FLdRfVar var_86
  loc_99DF93: FLdPr Me
  loc_99DF96: MemLdPr RsFrm
  loc_99DF99:  = Me.BOF
  loc_99DF9E: FLdI2 var_86
  loc_99DFA1: FLdRfVar var_8C
  loc_99DFA4: FLdPr Me
  loc_99DFA7: MemLdPr RsFrm
  loc_99DFAA:  = Me.RecordCount
  loc_99DFAF: ILdRf var_8C
  loc_99DFB2: LitI4 0
  loc_99DFB7: GtI4
  loc_99DFB8: AndI4
  loc_99DFB9: BranchF loc_99DFCC
  loc_99DFBC: ImpAdCallFPR4 Beep()
  loc_99DFC1: FLdPr Me
  loc_99DFC4: MemLdPr RsFrm
  loc_99DFC7: Me.MoveFirst
  loc_99DFCC: ExitProcHresult
End Sub

Public Property Get EOF() '961414
  'Data Table: 40C230
  loc_9613F8: FLdRfVar var_88
  loc_9613FB: FLdPr Me
  loc_9613FE: MemLdPr RsFrm
  loc_961401:  = Me.EOF
  loc_961406: FLdI2 var_88
  loc_961409: FStI2 var_86
  loc_96140C: ExitProcCbHresult
End Sub

Public Property Get BOF() '96170C
  'Data Table: 40C230
  loc_9616F0: FLdRfVar var_88
  loc_9616F3: FLdPr Me
  loc_9616F6: MemLdPr RsFrm
  loc_9616F9:  = Me.BOF
  loc_9616FE: FLdI2 var_88
  loc_961701: FStI2 var_86
  loc_961704: ExitProcCbHresult
End Sub

Public Sub Sort(sOrden) '943844
  'Data Table: 40C230
  loc_943834: ILdI4 sOrden
  loc_943837: FLdPr Me
  loc_94383A: MemLdPr RsFrm
  loc_94383D: Me.Sort = from_stack_1
  loc_943842: ExitProcHresult
End Sub

Public Sub Find(sFind) '968ED0
  'Data Table: 40C230
  loc_968EB0: LitVar_Missing var_94
  loc_968EB3: PopAdLdVar
  loc_968EB4: LitI4 1
  loc_968EB9: LitI4 0
  loc_968EBE: ILdI4 sFind
  loc_968EC1: FLdPr Me
  loc_968EC4: MemLdPr RsFrm
  loc_968EC7: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_968ECC: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '947FD8
  'Data Table: 40C230
  loc_947FC4: ILdI4 sCriterio
  loc_947FC7: CVarStr var_94
  loc_947FCA: PopAdLdVar
  loc_947FCB: FLdPr Me
  loc_947FCE: MemLdPr RsFrm
  loc_947FD1: Me.Filter = from_stack_1
  loc_947FD6: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '961C64
  'Data Table: 40C230
  loc_961C48: FLdRfVar var_8C
  loc_961C4B: FLdPr Me
  loc_961C4E: MemLdPr RsFrm
  loc_961C51:  = Me.AbsolutePosition
  loc_961C56: ILdRf var_8C
  loc_961C59: FStR4 var_88
  loc_961C5C: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '961CFC
  'Data Table: 40C230
  loc_961CE0: FLdRfVar var_8C
  loc_961CE3: FLdPr Me
  loc_961CE6: MemLdPr RsFrm
  loc_961CE9:  = Me.RecordCount
  loc_961CEE: ILdRf var_8C
  loc_961CF1: FStR4 var_88
  loc_961CF4: ExitProcCbHresult
End Sub

Public Sub AddNew(PeriInfo, CodiOrga, CodiUsua) '9BA734
  'Data Table: 40C230
  loc_9BA6A4: ILdRf CodiOrga
  loc_9BA6A7: FStStrCopy var_88
  loc_9BA6AA: ILdRf CodiUsua
  loc_9BA6AD: FStStrCopy var_8C
  loc_9BA6B0: LitStr "INSERT IGNORE INTO contpres.orgaxusua (PeriInfo, CodiOrga, CodiUsua, AltaUsua)"
  loc_9BA6B3: LitStr " SELECT PeriInfo, CodiOrga, '"
  loc_9BA6B6: ConcatStr
  loc_9BA6B7: FStStrNoPop var_90
  loc_9BA6BA: ILdRf var_8C
  loc_9BA6BD: ConcatStr
  loc_9BA6BE: FStStrNoPop var_94
  loc_9BA6C1: LitStr "', '"
  loc_9BA6C4: ConcatStr
  loc_9BA6C5: FStStrNoPop var_98
  loc_9BA6C8: ImpAdLdI4 MemVar_C3D03C
  loc_9BA6CB: ConcatStr
  loc_9BA6CC: FStStrNoPop var_9C
  loc_9BA6CF: LitStr "' AltaUsua"
  loc_9BA6D2: ConcatStr
  loc_9BA6D3: FStStrNoPop var_A0
  loc_9BA6D6: LitStr " FROM infogov.organigrama o"
  loc_9BA6D9: ConcatStr
  loc_9BA6DA: FStStrNoPop var_A4
  loc_9BA6DD: LitStr " WHERE o.PeriInfo = "
  loc_9BA6E0: ConcatStr
  loc_9BA6E1: FStStrNoPop var_A8
  loc_9BA6E4: FLdI2 PeriInfo
  loc_9BA6E7: CStrUI1
  loc_9BA6E9: FStStrNoPop var_AC
  loc_9BA6EC: ConcatStr
  loc_9BA6ED: FStStrNoPop var_B0
  loc_9BA6F0: LitStr " AND o.CodiOrga LIKE '"
  loc_9BA6F3: ConcatStr
  loc_9BA6F4: FStStrNoPop var_B4
  loc_9BA6F7: ILdRf var_88
  loc_9BA6FA: ConcatStr
  loc_9BA6FB: FStStrNoPop var_B8
  loc_9BA6FE: LitStr Chr(37) & "'"
  loc_9BA701: ConcatStr
  loc_9BA702: FStStrNoPop var_BC
  loc_9BA705: Call EjecutarRsCls(from_stack_1v)
  loc_9BA70A: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9BA725: ILdRf var_8C
  loc_9BA728: ILdRf var_88
  loc_9BA72B: FLdRfVar PeriInfo
  loc_9BA72E: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9BA733: ExitProcHresult
End Sub

Public Function ValidaModificar() '941644
  'Data Table: 40C230
  loc_94163C: ZeroRetVal
  loc_94163E: ExitProcCbHresult
End Function

Public Sub Modificar(DetaUnga, CodiInsu, CodiPart, CodiFifu, CucuPers, CucuProv) '97C3B8
  'Data Table: 40C230
  loc_97C398: ILdRf DetaUnga
  loc_97C39B: FStStrCopy var_88
  loc_97C39E: ILdRf CodiPart
  loc_97C3A1: FStStrCopy var_8C
  loc_97C3A4: ILdRf CodiFifu
  loc_97C3A7: FStStrCopy var_90
  loc_97C3AA: ILdRf CucuPers
  loc_97C3AD: FStStrCopy var_94
  loc_97C3B0: ILdRf CucuProv
  loc_97C3B3: FStStrCopy var_98
  loc_97C3B6: ExitProcHresult
End Sub

Public Sub Anular(BajaMoti) 'A386AC
  'Data Table: 40C230
  loc_A384D0: ILdRf BajaMoti
  loc_A384D3: FStStrCopy var_88
  loc_A384D6: LitStr "UPDATE contpres.orgaxusua"
  loc_A384D9: LitStr " SET BajaUsua = @sUsuario, BajaFeho = Now(), BajaMoti = '"
  loc_A384DC: ConcatStr
  loc_A384DD: FStStrNoPop var_8C
  loc_A384E0: ILdRf var_88
  loc_A384E3: ConcatStr
  loc_A384E4: FStStrNoPop var_90
  loc_A384E7: LitStr "'"
  loc_A384EA: ConcatStr
  loc_A384EB: FStStrNoPop var_94
  loc_A384EE: LitStr " WHERE PeriInfo = '"
  loc_A384F1: ConcatStr
  loc_A384F2: CVarStr var_CC
  loc_A384F5: FLdRfVar var_BC
  loc_A384F8: FLdRfVar var_AC
  loc_A384FB: LitVarStr var_A8, "PeriInfo"
  loc_A38500: PopAdLdVar
  loc_A38501: FLdRfVar var_98
  loc_A38504: FLdPr Me
  loc_A38507: MemLdPr RsFrm
  loc_A3850A:  = Me.Fields
  loc_A3850F: FLdPr var_98
  loc_A38512: from_stack_2 = Me.Item(from_stack_1)
  loc_A38517: FLdPr var_AC
  loc_A3851A:  = Me.Value
  loc_A3851F: FLdRfVar var_BC
  loc_A38522: ConcatVar var_DC
  loc_A38526: LitVarStr var_EC, "'"
  loc_A3852B: ConcatVar var_FC
  loc_A3852F: LitVarStr var_10C, " AND CodiOrga = '"
  loc_A38534: ConcatVar var_11C
  loc_A38538: FLdRfVar var_144
  loc_A3853B: FLdRfVar var_134
  loc_A3853E: LitVarStr var_130, "CodiOrga"
  loc_A38543: PopAdLdVar
  loc_A38544: FLdRfVar var_120
  loc_A38547: FLdPr Me
  loc_A3854A: MemLdPr RsFrm
  loc_A3854D:  = Me.Fields
  loc_A38552: FLdPr var_120
  loc_A38555: from_stack_2 = Me.Item(from_stack_1)
  loc_A3855A: FLdPr var_134
  loc_A3855D:  = Me.Value
  loc_A38562: FLdRfVar var_144
  loc_A38565: ConcatVar var_154
  loc_A38569: LitVarStr var_164, "'"
  loc_A3856E: ConcatVar var_174
  loc_A38572: LitVarStr var_184, " AND CodiUsua = '"
  loc_A38577: ConcatVar var_194
  loc_A3857B: FLdRfVar var_1BC
  loc_A3857E: FLdRfVar var_1AC
  loc_A38581: LitVarStr var_1A8, "CodiUsua"
  loc_A38586: PopAdLdVar
  loc_A38587: FLdRfVar var_198
  loc_A3858A: FLdPr Me
  loc_A3858D: MemLdPr RsFrm
  loc_A38590:  = Me.Fields
  loc_A38595: FLdPr var_198
  loc_A38598: from_stack_2 = Me.Item(from_stack_1)
  loc_A3859D: FLdPr var_1AC
  loc_A385A0:  = Me.Value
  loc_A385A5: FLdRfVar var_1BC
  loc_A385A8: ConcatVar var_1CC
  loc_A385AC: LitVarStr var_1DC, "';"
  loc_A385B1: ConcatVar var_1EC
  loc_A385B5: CStrVarVal var_1F0
  loc_A385B9: Call EjecutarRsCls(from_stack_1v)
  loc_A385BE: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A385C9: FFreeAd var_98 = "": var_AC = "": var_120 = "": var_134 = "": var_198 = ""
  loc_A385D8: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_11C = "": var_144 = "": var_154 = "": var_174 = "": var_194 = "": var_1BC = "": var_1CC = ""
  loc_A385F3: FLdRfVar var_BC
  loc_A385F6: FLdRfVar var_AC
  loc_A385F9: LitVarStr var_A8, "PeriInfo"
  loc_A385FE: PopAdLdVar
  loc_A385FF: FLdRfVar var_98
  loc_A38602: FLdPr Me
  loc_A38605: MemLdPr RsFrm
  loc_A38608:  = Me.Fields
  loc_A3860D: FLdPr var_98
  loc_A38610: from_stack_2 = Me.Item(from_stack_1)
  loc_A38615: FLdPr var_AC
  loc_A38618:  = Me.Value
  loc_A3861D: FLdRfVar var_CC
  loc_A38620: FLdRfVar var_134
  loc_A38623: LitVarStr var_EC, "CodiOrga"
  loc_A38628: PopAdLdVar
  loc_A38629: FLdRfVar var_120
  loc_A3862C: FLdPr Me
  loc_A3862F: MemLdPr RsFrm
  loc_A38632:  = Me.Fields
  loc_A38637: FLdPr var_120
  loc_A3863A: from_stack_2 = Me.Item(from_stack_1)
  loc_A3863F: FLdPr var_134
  loc_A38642:  = Me.Value
  loc_A38647: FLdRfVar var_DC
  loc_A3864A: FLdRfVar var_1AC
  loc_A3864D: LitVarStr var_10C, "CodiUsua"
  loc_A38652: PopAdLdVar
  loc_A38653: FLdRfVar var_198
  loc_A38656: FLdPr Me
  loc_A38659: MemLdPr RsFrm
  loc_A3865C:  = Me.Fields
  loc_A38661: FLdPr var_198
  loc_A38664: from_stack_2 = Me.Item(from_stack_1)
  loc_A38669: FLdPr var_1AC
  loc_A3866C:  = Me.Value
  loc_A38671: FLdRfVar var_DC
  loc_A38674: CStrVarTmp
  loc_A38675: FStStrNoPop var_90
  loc_A38678: FLdRfVar var_CC
  loc_A3867B: CStrVarTmp
  loc_A3867C: FStStrNoPop var_8C
  loc_A3867F: FLdRfVar var_BC
  loc_A38682: CI2Var
  loc_A38683: PopTmpLdAd2 var_1F2
  loc_A38686: Call Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A3868B: FFreeStr var_8C = ""
  loc_A38692: FFreeAd var_98 = "": var_120 = "": var_198 = "": var_AC = "": var_134 = ""
  loc_A386A1: FFreeVar var_BC = "": var_CC = ""
  loc_A386AA: ExitProcHresult
End Sub

Public Function ValidaEliminar() '941BE4
  'Data Table: 40C230
  loc_941BDC: ZeroRetVal
  loc_941BDE: ExitProcCbHresult
End Function

Public Sub Eliminar() 'A1293C
  'Data Table: 40C230
  loc_A127F4: LitStr "DELETE FROM contpres.orgaxusua"
  loc_A127F7: LitStr " WHERE PeriInfo = '"
  loc_A127FA: ConcatStr
  loc_A127FB: CVarStr var_BC
  loc_A127FE: FLdRfVar var_AC
  loc_A12801: FLdRfVar var_9C
  loc_A12804: LitVarStr var_98, "PeriInfo"
  loc_A12809: PopAdLdVar
  loc_A1280A: FLdRfVar var_88
  loc_A1280D: FLdPr Me
  loc_A12810: MemLdPr RsFrm
  loc_A12813:  = Me.Fields
  loc_A12818: FLdPr var_88
  loc_A1281B: from_stack_2 = Me.Item(from_stack_1)
  loc_A12820: FLdPr var_9C
  loc_A12823:  = Me.Value
  loc_A12828: FLdRfVar var_AC
  loc_A1282B: ConcatVar var_CC
  loc_A1282F: LitVarStr var_DC, "' AND CodiOrga = '"
  loc_A12834: ConcatVar var_EC
  loc_A12838: FLdRfVar var_114
  loc_A1283B: FLdRfVar var_104
  loc_A1283E: LitVarStr var_100, "CodiOrga"
  loc_A12843: PopAdLdVar
  loc_A12844: FLdRfVar var_F0
  loc_A12847: FLdPr Me
  loc_A1284A: MemLdPr RsFrm
  loc_A1284D:  = Me.Fields
  loc_A12852: FLdPr var_F0
  loc_A12855: from_stack_2 = Me.Item(from_stack_1)
  loc_A1285A: FLdPr var_104
  loc_A1285D:  = Me.Value
  loc_A12862: FLdRfVar var_114
  loc_A12865: ConcatVar var_124
  loc_A12869: LitVarStr var_134, "' AND CodiUsua = '"
  loc_A1286E: ConcatVar var_144
  loc_A12872: FLdRfVar var_16C
  loc_A12875: FLdRfVar var_15C
  loc_A12878: LitVarStr var_158, "CodiUsua"
  loc_A1287D: PopAdLdVar
  loc_A1287E: FLdRfVar var_148
  loc_A12881: FLdPr Me
  loc_A12884: MemLdPr RsFrm
  loc_A12887:  = Me.Fields
  loc_A1288C: FLdPr var_148
  loc_A1288F: from_stack_2 = Me.Item(from_stack_1)
  loc_A12894: FLdPr var_15C
  loc_A12897:  = Me.Value
  loc_A1289C: FLdRfVar var_16C
  loc_A1289F: ConcatVar var_17C
  loc_A128A3: LitVarStr var_18C, "';"
  loc_A128A8: ConcatVar var_19C
  loc_A128AC: CStrVarVal var_1A0
  loc_A128B0: Call EjecutarRsCls(from_stack_1v)
  loc_A128B5: FFree1Str var_1A0
  loc_A128B8: FFreeAd var_88 = "": var_9C = "": var_F0 = "": var_104 = "": var_148 = ""
  loc_A128C7: FFreeVar var_BC = "": var_AC = "": var_CC = "": var_EC = "": var_114 = "": var_124 = "": var_144 = "": var_16C = "": var_17C = ""
  loc_A128DE: FLdRfVar var_1A8
  loc_A128E1: FLdPr Me
  loc_A128E4: MemLdPr RsFrm
  loc_A128E7:  = Me.AbsolutePosition
  loc_A128EC: ILdRf var_1A8
  loc_A128EF: FStR4 var_1A4
  loc_A128F2: Call Requery()
  loc_A128F7: FLdRfVar var_1A8
  loc_A128FA: FLdPr Me
  loc_A128FD: MemLdPr RsFrm
  loc_A12900:  = Me.RecordCount
  loc_A12905: ILdRf var_1A8
  loc_A12908: LitI4 0
  loc_A1290D: GtI4
  loc_A1290E: BranchF loc_A1293A
  loc_A12911: Call MoveFirst()
  loc_A12916: ILdRf var_1A4
  loc_A12919: LitI4 1
  loc_A1291E: GtI4
  loc_A1291F: BranchF loc_A1293A
  loc_A12922: LitVar_Missing var_98
  loc_A12925: PopAdLdVar
  loc_A12926: ILdRf var_1A4
  loc_A12929: LitI4 2
  loc_A1292E: SubI4
  loc_A1292F: FLdPr Me
  loc_A12932: MemLdPr RsFrm
  loc_A12935: Me.Move from_stack_1, from_stack_2
  loc_A1293A: ExitProcHresult
End Sub

Public Sub Encontrar(PeriInfo, CodiOrga, CodiUsua) 'A14E40
  'Data Table: 40C230
  loc_A14CCE: ILdRf CodiOrga
  loc_A14CD1: FStStrCopy var_88
  loc_A14CD4: ILdRf CodiUsua
  loc_A14CD7: FStStrCopy var_8C
  loc_A14CDC: On Error Resume Next
  loc_A14CE1: ILdI2 PeriInfo
  loc_A14CE4: LitI2_Byte 0
  loc_A14CE6: EqI2
  loc_A14CE7: ILdRf var_88
  loc_A14CEA: LitStr vbNullString
  loc_A14CED: EqStr
  loc_A14CEF: AndI4
  loc_A14CF0: ILdRf var_8C
  loc_A14CF3: LitStr vbNullString
  loc_A14CF6: EqStr
  loc_A14CF8: AndI4
  loc_A14CF9: FLdRfVar var_90
  loc_A14CFC: FLdPr Me
  loc_A14CFF: MemLdPr RsFrm
  loc_A14D02:  = Me.RecordCount
  loc_A14D07: ILdRf var_90
  loc_A14D0A: LitI4 0
  loc_A14D0F: GtI4
  loc_A14D10: AndI4
  loc_A14D11: BranchF loc_A14DCB
  loc_A14D16: FLdRfVar var_B8
  loc_A14D19: FLdRfVar var_A8
  loc_A14D1C: LitVarStr var_A4, "PeriInfo"
  loc_A14D21: PopAdLdVar
  loc_A14D22: FLdRfVar var_94
  loc_A14D25: FLdPr Me
  loc_A14D28: MemLdPr RsFrm
  loc_A14D2B:  = Me.Fields
  loc_A14D30: FLdPr var_94
  loc_A14D33: from_stack_2 = Me.Item(from_stack_1)
  loc_A14D38: FLdPr var_A8
  loc_A14D3B:  = Me.Value
  loc_A14D40: FLdRfVar var_B8
  loc_A14D43: CI2Var
  loc_A14D44: IStI2 PeriInfo
  loc_A14D47: FFreeAd var_94 = ""
  loc_A14D4E: FFree1Var var_B8 = ""
  loc_A14D53: FLdRfVar var_B8
  loc_A14D56: FLdRfVar var_A8
  loc_A14D59: LitVarStr var_A4, "CodiOrga"
  loc_A14D5E: PopAdLdVar
  loc_A14D5F: FLdRfVar var_94
  loc_A14D62: FLdPr Me
  loc_A14D65: MemLdPr RsFrm
  loc_A14D68:  = Me.Fields
  loc_A14D6D: FLdPr var_94
  loc_A14D70: from_stack_2 = Me.Item(from_stack_1)
  loc_A14D75: FLdPr var_A8
  loc_A14D78:  = Me.Value
  loc_A14D7D: FLdRfVar var_B8
  loc_A14D80: CStrVarTmp
  loc_A14D81: FStStr var_88
  loc_A14D84: FFreeAd var_94 = ""
  loc_A14D8B: FFree1Var var_B8 = ""
  loc_A14D90: FLdRfVar var_B8
  loc_A14D93: FLdRfVar var_A8
  loc_A14D96: LitVarStr var_A4, "CodiUsua"
  loc_A14D9B: PopAdLdVar
  loc_A14D9C: FLdRfVar var_94
  loc_A14D9F: FLdPr Me
  loc_A14DA2: MemLdPr RsFrm
  loc_A14DA5:  = Me.Fields
  loc_A14DAA: FLdPr var_94
  loc_A14DAD: from_stack_2 = Me.Item(from_stack_1)
  loc_A14DB2: FLdPr var_A8
  loc_A14DB5:  = Me.Value
  loc_A14DBA: FLdRfVar var_B8
  loc_A14DBD: CStrVarTmp
  loc_A14DBE: FStStr var_8C
  loc_A14DC1: FFreeAd var_94 = ""
  loc_A14DC8: FFree1Var var_B8 = ""
  loc_A14DCF: Call Requery()
  loc_A14DD6: LitStr "PeriInfo = '"
  loc_A14DD9: ILdI2 PeriInfo
  loc_A14DDC: CStrUI1
  loc_A14DDE: FStStrNoPop var_BC
  loc_A14DE1: ConcatStr
  loc_A14DE2: FStStrNoPop var_C0
  loc_A14DE5: LitStr "'"
  loc_A14DE8: ConcatStr
  loc_A14DE9: PopTmpLdAdStr
  loc_A14DED: Call Find(from_stack_1v)
  loc_A14DF2: FFreeStr var_BC = "": var_C0 = ""
  loc_A14DFD: LitStr "CodiOrga = '"
  loc_A14E00: ILdRf var_88
  loc_A14E03: ConcatStr
  loc_A14E04: FStStrNoPop var_BC
  loc_A14E07: LitStr "'"
  loc_A14E0A: ConcatStr
  loc_A14E0B: PopTmpLdAdStr
  loc_A14E0F: Call Find(from_stack_1v)
  loc_A14E14: FFreeStr var_BC = ""
  loc_A14E1D: LitStr "CodiUsua = '"
  loc_A14E20: ILdRf var_8C
  loc_A14E23: ConcatStr
  loc_A14E24: FStStrNoPop var_BC
  loc_A14E27: LitStr "'"
  loc_A14E2A: ConcatStr
  loc_A14E2B: PopTmpLdAdStr
  loc_A14E2F: Call Find(from_stack_1v)
  loc_A14E34: FFreeStr var_BC = ""
  loc_A14E3D: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '973F04
  'Data Table: 40C230
  loc_973EDC: ILdRf sSelect
  loc_973EDF: FStStrCopy var_88
  loc_973EE2: FLdPr Me
  loc_973EE5: MemLdRfVar from_stack_1.RsFrm
  loc_973EE8: ILdRf var_88
  loc_973EEB: ImpAdCallFPR4  = Proc_261_44_9A4454()
  loc_973EF0: LitVarStr var_98, "Primary"
  loc_973EF5: PopAdLdVar
  loc_973EF6: FLdPr Me
  loc_973EF9: LateIdCall
  loc_973F01: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '962088
  'Data Table: 40C230
  loc_962070: ILdRf sSelect
  loc_962073: FStStrCopy var_88
  loc_962076: FLdPr Me
  loc_962079: MemLdRfVar from_stack_1.global_56
  loc_96207C: ILdRf var_88
  loc_96207F: ImpAdCallFPR4  = Proc_261_46_9AA7A0()
  loc_962084: ExitProcHresult
End Sub

Public Sub Requery() '968D90
  'Data Table: 40C230
  loc_968D70: FLdPr Me
  loc_968D73: MemLdRfVar from_stack_1.RsFrm
  loc_968D76: ImpAdCallFPR4  = Proc_261_45_9C79FC()
  loc_968D7B: LitVarStr var_94, "Primary"
  loc_968D80: PopAdLdVar
  loc_968D81: FLdPr Me
  loc_968D84: LateIdCall
  loc_968D8C: ExitProcHresult
End Sub

Public Property Get DataSource() '973D34
  'Data Table: 40C230
  loc_973D10: ZeroRetVal
  loc_973D12: FLdRfVar var_8C
  loc_973D15: FLdPr Me
  loc_973D18: MemLdPr RsFrm
  loc_973D1B:  = Me.DataSource
  loc_973D20: ILdRf var_8C
  loc_973D23: CastAd
  loc_973D26: FStAdFunc var_88
  loc_973D29: FFree1Ad var_8C
  loc_973D2C: ExitProcCbHresult
End Sub

Private Function Proc_273_27_973044() '973044
  'Data Table: 40C230
  loc_973020: LitStr "Primary"
  loc_973023: FLdPr Me
  loc_973026: LateIdLdVar var_94 DispID_4 0
  loc_97302D: CastAdVar Me
  loc_973031: FStAdFunc var_98
  loc_973034: FLdPr var_98
  loc_97303C: FFree1Ad var_98
  loc_97303F: FFree1Var var_94 = ""
  loc_973042: ExitProcHresult
End Function

Private Function Proc_273_28_94C99C(arg_C) '94C99C
  'Data Table: 40C230
  loc_94C984: ILdI4 arg_C
  loc_94C987: LitStr "Primary"
  loc_94C98A: EqStr
  loc_94C98C: BranchF loc_94C999
  loc_94C98F: FLdPr Me
  loc_94C992: MemLdStr RsFrm
  loc_94C995: IStAd
  loc_94C999: ExitProcHresult
End Function
