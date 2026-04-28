VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsbase"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '42E670
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '42E67F
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '42E68E
  RsFrm = Value
End Sub

Public Sub Mover(iCantidad) '975BDC
  'Data Table: 42DE78
  loc_975BAC: FLdRfVar var_88
  loc_975BAF: FLdPr Me
  loc_975BB2: MemLdPr RsFrm
  loc_975BB5:  = Me.RecordCount
  loc_975BBA: ILdRf var_88
  loc_975BBD: LitI4 0
  loc_975BC2: GtI4
  loc_975BC3: BranchF loc_975BD8
  loc_975BC6: LitVar_Missing var_98
  loc_975BC9: PopAdLdVar
  loc_975BCA: ILdI4 iCantidad
  loc_975BCD: FLdPr Me
  loc_975BD0: MemLdPr RsFrm
  loc_975BD3: Me.Move from_stack_1, from_stack_2
  loc_975BD8: ExitProcHresult
  loc_975BD9: FLdPr arg_F00
End Sub

Public Sub MoveFirst() '96ED34
  'Data Table: 42DE78
  loc_96ED0C: FLdRfVar var_88
  loc_96ED0F: FLdPr Me
  loc_96ED12: MemLdPr RsFrm
  loc_96ED15:  = Me.RecordCount
  loc_96ED1A: ILdRf var_88
  loc_96ED1D: LitI4 0
  loc_96ED22: GtI4
  loc_96ED23: BranchF loc_96ED31
  loc_96ED26: FLdPr Me
  loc_96ED29: MemLdPr RsFrm
  loc_96ED2C: Me.MoveFirst
  loc_96ED31: ExitProcHresult
End Sub

Public Sub MoveLast() '96ED8C
  'Data Table: 42DE78
  loc_96ED64: FLdRfVar var_88
  loc_96ED67: FLdPr Me
  loc_96ED6A: MemLdPr RsFrm
  loc_96ED6D:  = Me.RecordCount
  loc_96ED72: ILdRf var_88
  loc_96ED75: LitI4 0
  loc_96ED7A: GtI4
  loc_96ED7B: BranchF loc_96ED89
  loc_96ED7E: FLdPr Me
  loc_96ED81: MemLdPr RsFrm
  loc_96ED84: Me.MoveLast
  loc_96ED89: ExitProcHresult
  loc_96ED8A: SubCy
End Sub

Public Sub MoveNext() '99DF28
  'Data Table: 42DE78
  loc_99DEB0: FLdRfVar var_86
  loc_99DEB3: FLdPr Me
  loc_99DEB6: MemLdPr RsFrm
  loc_99DEB9:  = Me.EOF
  loc_99DEBE: FLdI2 var_86
  loc_99DEC1: NotI4
  loc_99DEC2: FLdRfVar var_8C
  loc_99DEC5: FLdPr Me
  loc_99DEC8: MemLdPr RsFrm
  loc_99DECB:  = Me.RecordCount
  loc_99DED0: ILdRf var_8C
  loc_99DED3: LitI4 0
  loc_99DED8: GtI4
  loc_99DED9: AndI4
  loc_99DEDA: BranchF loc_99DEE8
  loc_99DEDD: FLdPr Me
  loc_99DEE0: MemLdPr RsFrm
  loc_99DEE3: Me.MoveNext
  loc_99DEE8: FLdRfVar var_86
  loc_99DEEB: FLdPr Me
  loc_99DEEE: MemLdPr RsFrm
  loc_99DEF1:  = Me.EOF
  loc_99DEF6: FLdI2 var_86
  loc_99DEF9: FLdRfVar var_8C
  loc_99DEFC: FLdPr Me
  loc_99DEFF: MemLdPr RsFrm
  loc_99DF02:  = Me.RecordCount
  loc_99DF07: ILdRf var_8C
  loc_99DF0A: LitI4 0
  loc_99DF0F: GtI4
  loc_99DF10: AndI4
  loc_99DF11: BranchF loc_99DF24
  loc_99DF14: ImpAdCallFPR4 Beep()
  loc_99DF19: FLdPr Me
  loc_99DF1C: MemLdPr RsFrm
  loc_99DF1F: Me.MoveLast
  loc_99DF24: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '941A08
  'Data Table: 42DE78
  loc_9419FC: FLdPr Me
  loc_9419FF: MemLdPr RsFrm
  loc_941A02: Me.MoveNext
  loc_941A07: ExitProcHresult
End Sub

Public Sub Move(iValor) '948814
  'Data Table: 42DE78
  loc_948800: LitVar_Missing var_94
  loc_948803: PopAdLdVar
  loc_948804: ILdI2 iValor
  loc_948807: CI4UI1
  loc_948808: FLdPr Me
  loc_94880B: MemLdPr RsFrm
  loc_94880E: Me.Move from_stack_1, from_stack_2
  loc_948813: ExitProcHresult
End Sub

Public Sub MovePrevious() '99E1C8
  'Data Table: 42DE78
  loc_99E150: FLdRfVar var_86
  loc_99E153: FLdPr Me
  loc_99E156: MemLdPr RsFrm
  loc_99E159:  = Me.BOF
  loc_99E15E: FLdI2 var_86
  loc_99E161: NotI4
  loc_99E162: FLdRfVar var_8C
  loc_99E165: FLdPr Me
  loc_99E168: MemLdPr RsFrm
  loc_99E16B:  = Me.RecordCount
  loc_99E170: ILdRf var_8C
  loc_99E173: LitI4 0
  loc_99E178: GtI4
  loc_99E179: AndI4
  loc_99E17A: BranchF loc_99E188
  loc_99E17D: FLdPr Me
  loc_99E180: MemLdPr RsFrm
  loc_99E183: Me.MovePrevious
  loc_99E188: FLdRfVar var_86
  loc_99E18B: FLdPr Me
  loc_99E18E: MemLdPr RsFrm
  loc_99E191:  = Me.BOF
  loc_99E196: FLdI2 var_86
  loc_99E199: FLdRfVar var_8C
  loc_99E19C: FLdPr Me
  loc_99E19F: MemLdPr RsFrm
  loc_99E1A2:  = Me.RecordCount
  loc_99E1A7: ILdRf var_8C
  loc_99E1AA: LitI4 0
  loc_99E1AF: GtI4
  loc_99E1B0: AndI4
  loc_99E1B1: BranchF loc_99E1C4
  loc_99E1B4: ImpAdCallFPR4 Beep()
  loc_99E1B9: FLdPr Me
  loc_99E1BC: MemLdPr RsFrm
  loc_99E1BF: Me.MoveFirst
  loc_99E1C4: ExitProcHresult
End Sub

Public Property Get EOF() '9641CC
  'Data Table: 42DE78
  loc_9641B0: FLdRfVar var_88
  loc_9641B3: FLdPr Me
  loc_9641B6: MemLdPr RsFrm
  loc_9641B9:  = Me.EOF
  loc_9641BE: FLdI2 var_88
  loc_9641C1: FStI2 var_86
  loc_9641C4: ExitProcCbHresult
End Sub

Public Property Get BOF() '964134
  'Data Table: 42DE78
  loc_964118: FLdRfVar var_88
  loc_96411B: FLdPr Me
  loc_96411E: MemLdPr RsFrm
  loc_964121:  = Me.BOF
  loc_964126: FLdI2 var_88
  loc_964129: FStI2 var_86
  loc_96412C: ExitProcCbHresult
  loc_964132: GeI4
  loc_964133: FnAbsI4
End Sub

Public Sub Sort(sOrden) '944D04
  'Data Table: 42DE78
  loc_944CF4: ILdI4 sOrden
  loc_944CF7: FLdPr Me
  loc_944CFA: MemLdPr RsFrm
  loc_944CFD: Me.Sort = from_stack_1
  loc_944D02: ExitProcHresult
End Sub

Public Sub Find(sFind) '967530
  'Data Table: 42DE78
  loc_967510: LitVar_Missing var_94
  loc_967513: PopAdLdVar
  loc_967514: LitI4 1
  loc_967519: LitI4 0
  loc_96751E: ILdI4 sFind
  loc_967521: FLdPr Me
  loc_967524: MemLdPr RsFrm
  loc_967527: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_96752C: ExitProcHresult
  loc_96752D: MulCy
End Sub

Public Sub Filter(sCriterio) '963F6C
  'Data Table: 42DE78
  loc_963F50: OnErrorGoto loc_963F69
  loc_963F53: ILdI4 sCriterio
  loc_963F56: CVarStr var_94
  loc_963F59: PopAdLdVar
  loc_963F5A: FLdPr Me
  loc_963F5D: MemLdPr RsFrm
  loc_963F60: Me.Filter = from_stack_1
  loc_963F65: On Error GoTo 0
  loc_963F68: ExitProcHresult
  loc_963F69: ExitProcHresult
  loc_963F6A: FLdPr arg_20
End Sub

Public Property Get AbsolutePosition() '963ED4
  'Data Table: 42DE78
  loc_963EB8: FLdRfVar var_8C
  loc_963EBB: FLdPr Me
  loc_963EBE: MemLdPr RsFrm
  loc_963EC1:  = Me.AbsolutePosition
  loc_963EC6: ILdRf var_8C
  loc_963EC9: FStR4 var_88
  loc_963ECC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '963E3C
  'Data Table: 42DE78
  loc_963E20: FLdRfVar var_8C
  loc_963E23: FLdPr Me
  loc_963E26: MemLdPr RsFrm
  loc_963E29:  = Me.RecordCount
  loc_963E2E: ILdRf var_8C
  loc_963E31: FStR4 var_88
  loc_963E34: ExitProcCbHresult
  loc_963E3A: CR8I4
End Sub

Public Sub RedefineRS(sSelect) '971CE0
  'Data Table: 42DE78
  loc_971CB8: ILdRf sSelect
  loc_971CBB: FStStrCopy var_88
  loc_971CBE: FLdPr Me
  loc_971CC1: MemLdRfVar from_stack_1.RsFrm
  loc_971CC4: ILdRf var_88
  loc_971CC7: ImpAdCallFPR4 Proc_261_44_9A4454(, )
  loc_971CCC: LitVarStr var_98, "Primary"
  loc_971CD1: PopAdLdVar
  loc_971CD2: FLdPr Me
  loc_971CD5: LateIdCall
  loc_971CDD: ExitProcHresult
End Sub

Public Sub EjecutarRsCls(sSelect) '963DA0
  'Data Table: 42DE78
  loc_963D88: ILdRf sSelect
  loc_963D8B: FStStrCopy var_88
  loc_963D8E: FLdPr Me
  loc_963D91: MemLdRfVar from_stack_1.global_56
  loc_963D94: ILdRf var_88
  loc_963D97: ImpAdCallFPR4 Proc_261_46_9AA7A0(, )
  loc_963D9C: ExitProcHresult
End Sub

Public Sub Requery() '9675D0
  'Data Table: 42DE78
  loc_9675B0: FLdPr Me
  loc_9675B3: MemLdRfVar from_stack_1.RsFrm
  loc_9675B6: ImpAdCallFPR4 Proc_261_45_9C79FC()
  loc_9675BB: LitVarStr var_94, "Primary"
  loc_9675C0: PopAdLdVar
  loc_9675C1: FLdPr Me
  loc_9675C4: LateIdCall
  loc_9675CC: ExitProcHresult
  loc_9675CD: CVarI2 arg_7DCD
End Sub

Public Property Get DataSource() '971048
  'Data Table: 42DE78
  loc_971024: ZeroRetVal
  loc_971026: FLdRfVar var_8C
  loc_971029: FLdPr Me
  loc_97102C: MemLdPr RsFrm
  loc_97102F:  = Me.DataSource
  loc_971034: ILdRf var_8C
  loc_971037: CastAd
  loc_97103A: FStAdFunc var_88
  loc_97103D: FFree1Ad var_8C
  loc_971040: ExitProcCbHresult
  loc_971046: FLdPr arg_FF
End Sub

Public Function Anexos_IX_mensual(PeriInfo, Mes, EsMensual, whCodiTicu) 'C0F8EC
  'Data Table: 42DE78
  loc_C0CF6C: ILdRf whCodiTicu
  loc_C0CF6F: FStStrCopy var_8C
  loc_C0CF72: LitStr " <= "
  loc_C0CF75: FLdI2 Mes
  loc_C0CF78: CStrUI1
  loc_C0CF7A: FStStrNoPop var_A4
  loc_C0CF7D: ConcatStr
  loc_C0CF7E: CVarStr var_D4
  loc_C0CF81: LitStr " = "
  loc_C0CF84: FLdI2 Mes
  loc_C0CF87: CStrUI1
  loc_C0CF89: FStStrNoPop var_A0
  loc_C0CF8C: ConcatStr
  loc_C0CF8D: CVarStr var_C4
  loc_C0CF90: FLdRfVar EsMensual
  loc_C0CF93: CVarRef
  loc_C0CF98: FLdRfVar var_E4
  loc_C0CF9B: ImpAdCallFPR4  = IIf(, , )
  loc_C0CFA0: FLdRfVar var_E4
  loc_C0CFA3: CStrVarTmp
  loc_C0CFA4: FStStr Anexos_IX_mensual
  loc_C0CFA7: FFreeStr var_A0 = ""
  loc_C0CFAE: FFreeVar var_C4 = "": var_D4 = ""
  loc_C0CFB7: LitI2_Byte 1
  loc_C0CFB9: FLdI2 Mes
  loc_C0CFBC: LitI2_Byte 1
  loc_C0CFBE: AddI2
  loc_C0CFBF: FLdI2 PeriInfo
  loc_C0CFC2: FLdRfVar var_C4
  loc_C0CFC5: ImpAdCallFPR4  = DateSerial(, , )
  loc_C0CFCA: FLdRfVar var_C4
  loc_C0CFCD: FnCDateVar
  loc_C0CFCF: FStFPR8 var_9C
  loc_C0CFD2: FFree1Var var_C4 = ""
  loc_C0CFD5: FLdFPR8 var_9C
  loc_C0CFD8: LitI2_Byte 1
  loc_C0CFDA: CR8I2
  loc_C0CFDB: SubR4
  loc_C0CFDC: CDateR8
  loc_C0CFDD: FStFPR8 var_9C
  loc_C0CFE0: LitStr "Municipalidad de Guaymallén"
  loc_C0CFE3: LitStr "Municipalidad de Guaymallénnnnn"
  loc_C0CFE6: EqStr
  loc_C0CFE8: FLdI2 PeriInfo
  loc_C0CFEB: LitI2 2025
  loc_C0CFEE: EqI2
  loc_C0CFEF: AndI4
  loc_C0CFF0: BranchF loc_C0D00D
  loc_C0CFF3: LitI2_Byte &HA
  loc_C0CFF5: LitI2_Byte 2
  loc_C0CFF7: LitI2 2025
  loc_C0CFFA: FLdRfVar var_C4
  loc_C0CFFD: ImpAdCallFPR4  = DateSerial(, , )
  loc_C0D002: FLdRfVar var_C4
  loc_C0D005: FnCDateVar
  loc_C0D007: FStFPR8 var_9C
  loc_C0D00A: FFree1Var var_C4 = ""
  loc_C0D00D: LitStr "Municipalidad de Guaymallén"
  loc_C0D010: LitStr "Municipalidad de Santa Rosaaaaa"
  loc_C0D013: EqStr
  loc_C0D015: BranchF loc_C0D032
  loc_C0D018: LitI2_Byte 5
  loc_C0D01A: LitI2_Byte 2
  loc_C0D01C: LitI2 2024
  loc_C0D01F: FLdRfVar var_C4
  loc_C0D022: ImpAdCallFPR4  = DateSerial(, , )
  loc_C0D027: FLdRfVar var_C4
  loc_C0D02A: FnCDateVar
  loc_C0D02C: FStFPR8 var_9C
  loc_C0D02F: FFree1Var var_C4 = ""
  loc_C0D032: LitI2_Byte &HFF
  loc_C0D034: FStI2 var_86
  loc_C0D037: LitStr "SET @peri="
  loc_C0D03A: FLdI2 PeriInfo
  loc_C0D03D: CStrUI1
  loc_C0D03F: FStStrNoPop var_A0
  loc_C0D042: ConcatStr
  loc_C0D043: FStStrNoPop var_A4
  loc_C0D046: LitStr ", @mes="
  loc_C0D049: ConcatStr
  loc_C0D04A: FStStrNoPop var_E8
  loc_C0D04D: FLdI2 Mes
  loc_C0D050: CStrUI1
  loc_C0D052: FStStrNoPop var_EC
  loc_C0D055: ConcatStr
  loc_C0D056: FStStrNoPop var_F0
  loc_C0D059: LitStr ";"
  loc_C0D05C: ConcatStr
  loc_C0D05D: FStStrNoPop var_F4
  loc_C0D060: LitStr " DROP TEMPORARY TABLE IF EXISTS ttemp;"
  loc_C0D063: ConcatStr
  loc_C0D064: FStStrNoPop var_F8
  loc_C0D067: LitStr " CREATE TEMPORARY TABLE temp` ("
  loc_C0D06A: ConcatStr
  loc_C0D06B: FStStrNoPop var_FC
  loc_C0D06E: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_C0D071: ConcatStr
  loc_C0D072: FStStrNoPop var_100
  loc_C0D075: LitStr " odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_C0D078: ConcatStr
  loc_C0D079: FStStrNoPop var_104
  loc_C0D07C: LitStr " odiTicu` char(4) NOT NULL,"
  loc_C0D07F: ConcatStr
  loc_C0D080: FStStrNoPop var_108
  loc_C0D083: LitStr " odiTias` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_C0D086: ConcatStr
  loc_C0D087: FStStrNoPop var_10C
  loc_C0D08A: LitStr " aldIniD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_C0D08D: ConcatStr
  loc_C0D08E: FStStrNoPop var_110
  loc_C0D091: LitStr " aldIniH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_C0D094: ConcatStr
  loc_C0D095: FStStrNoPop var_114
  loc_C0D098: LitStr " oviEjeD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_C0D09B: ConcatStr
  loc_C0D09C: FStStrNoPop var_118
  loc_C0D09F: LitStr " oviEjeH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_C0D0A2: ConcatStr
  loc_C0D0A3: FStStrNoPop var_11C
  loc_C0D0A6: LitStr " oviFonD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_C0D0A9: ConcatStr
  loc_C0D0AA: FStStrNoPop var_120
  loc_C0D0AD: LitStr " oviFonH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_C0D0B0: ConcatStr
  loc_C0D0B1: FStStrNoPop var_124
  loc_C0D0B4: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_C0D0B7: ConcatStr
  loc_C0D0B8: FStStrNoPop var_128
  loc_C0D0BB: LitStr " );"
  loc_C0D0BE: ConcatStr
  loc_C0D0BF: FStStrNoPop var_12C
  loc_C0D0C2: Call EjecutarRsCls(from_stack_1v)
  loc_C0D0C7: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0D0F2: FLdI2 Mes
  loc_C0D0F5: LitI2_Byte 1
  loc_C0D0F7: EqI2
  loc_C0D0F8: FLdI2 EsMensual
  loc_C0D0FB: NotI4
  loc_C0D0FC: OrI4
  loc_C0D0FD: BranchF loc_C0D1CD
  loc_C0D100: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_C0D103: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D106: ConcatStr
  loc_C0D107: FStStrNoPop var_A0
  loc_C0D10A: LitStr ", IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0) SaldIniD"
  loc_C0D10D: ConcatStr
  loc_C0D10E: FStStrNoPop var_A4
  loc_C0D111: LitStr ", IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0) SaldIniH"
  loc_C0D114: ConcatStr
  loc_C0D115: FStStrNoPop var_E8
  loc_C0D118: LitStr " FROM asiento"
  loc_C0D11B: ConcatStr
  loc_C0D11C: FStStrNoPop var_EC
  loc_C0D11F: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_C0D122: ConcatStr
  loc_C0D123: FStStrNoPop var_F0
  loc_C0D126: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D129: ConcatStr
  loc_C0D12A: FStStrNoPop var_F4
  loc_C0D12D: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D130: ConcatStr
  loc_C0D131: FStStrNoPop var_F8
  loc_C0D134: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D137: ConcatStr
  loc_C0D138: FStStrNoPop var_FC
  loc_C0D13B: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D13E: ConcatStr
  loc_C0D13F: FStStrNoPop var_100
  loc_C0D142: ILdRf Anexos_IX_mensual
  loc_C0D145: ConcatStr
  loc_C0D146: FStStrNoPop var_104
  loc_C0D149: LitStr " AND asiento.FechAsie <= "
  loc_C0D14C: ConcatStr
  loc_C0D14D: CVarStr var_E4
  loc_C0D150: LitI4 1
  loc_C0D155: LitI4 1
  loc_C0D15A: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0D15F: FStVarCopyObj var_C4
  loc_C0D162: FLdRfVar var_C4
  loc_C0D165: FLdRfVar var_9C
  loc_C0D168: CVarRef
  loc_C0D16D: FLdRfVar var_D4
  loc_C0D170: ImpAdCallFPR4  = Format(, )
  loc_C0D175: FLdRfVar var_D4
  loc_C0D178: ConcatVar var_14C
  loc_C0D17C: LitVarStr var_15C, " AND CodiTias IN (17,18)"
  loc_C0D181: ConcatVar var_16C
  loc_C0D185: LitVarStr var_17C, " AND (CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "')"
  loc_C0D18A: ConcatVar var_18C
  loc_C0D18E: LitVarStr var_19C, " GROUP BY CodiCuco, CodiTias;"
  loc_C0D193: ConcatVar var_1AC
  loc_C0D197: CStrVarVal var_108
  loc_C0D19B: Call EjecutarRsCls(from_stack_1v)
  loc_C0D1A0: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C0D1B9: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = ""
  loc_C0D1CA: Branch loc_C0D2E4
  loc_C0D1CD: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_C0D1D0: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D1D3: ConcatStr
  loc_C0D1D4: FStStrNoPop var_A0
  loc_C0D1D7: LitStr ", CASE"
  loc_C0D1DA: ConcatStr
  loc_C0D1DB: FStStrNoPop var_A4
  loc_C0D1DE: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_C0D1E1: ConcatStr
  loc_C0D1E2: FStStrNoPop var_E8
  loc_C0D1E5: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN IF(CodiTias IN (2,24),IF(Sum(DebeMoas-HabeMoas)!=0,Sum(DebeMoas-HabeMoas),0),0)"
  loc_C0D1E8: ConcatStr
  loc_C0D1E9: FStStrNoPop var_EC
  loc_C0D1EC: LitStr " WHEN CodiTicu LIKE '5" & Chr(37) & "' OR CodiTicu LIKE '7" & Chr(37) & "' THEN IF(CodiTias IN (9,58),IF(SUM(DebeMoas-HabeMoas)>0, SUM(DebeMoas-HabeMoas),0),0)"
  loc_C0D1EF: ConcatStr
  loc_C0D1F0: FStStrNoPop var_F0
  loc_C0D1F3: LitStr " ELSE 0"
  loc_C0D1F6: ConcatStr
  loc_C0D1F7: FStStrNoPop var_F4
  loc_C0D1FA: LitStr " END SaldIniD"
  loc_C0D1FD: ConcatStr
  loc_C0D1FE: FStStrNoPop var_F8
  loc_C0D201: LitStr ", CASE"
  loc_C0D204: ConcatStr
  loc_C0D205: FStStrNoPop var_FC
  loc_C0D208: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_C0D20B: ConcatStr
  loc_C0D20C: FStStrNoPop var_100
  loc_C0D20F: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0)"
  loc_C0D212: ConcatStr
  loc_C0D213: FStStrNoPop var_104
  loc_C0D216: LitStr " ELSE 0"
  loc_C0D219: ConcatStr
  loc_C0D21A: FStStrNoPop var_108
  loc_C0D21D: LitStr " END SaldIniH"
  loc_C0D220: ConcatStr
  loc_C0D221: FStStrNoPop var_10C
  loc_C0D224: LitStr " FROM asiento"
  loc_C0D227: ConcatStr
  loc_C0D228: FStStrNoPop var_110
  loc_C0D22B: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_C0D22E: ConcatStr
  loc_C0D22F: FStStrNoPop var_114
  loc_C0D232: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D235: ConcatStr
  loc_C0D236: FStStrNoPop var_118
  loc_C0D239: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D23C: ConcatStr
  loc_C0D23D: FStStrNoPop var_11C
  loc_C0D240: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D243: ConcatStr
  loc_C0D244: FStStrNoPop var_120
  loc_C0D247: LitStr " AND Month(asiento.FechAsie) < "
  loc_C0D24A: ConcatStr
  loc_C0D24B: FStStrNoPop var_124
  loc_C0D24E: FLdI2 Mes
  loc_C0D251: CStrUI1
  loc_C0D253: FStStrNoPop var_128
  loc_C0D256: ConcatStr
  loc_C0D257: FStStrNoPop var_12C
  loc_C0D25A: LitStr " AND asiento.FechAsie <= "
  loc_C0D25D: ConcatStr
  loc_C0D25E: CVarStr var_E4
  loc_C0D261: LitI4 1
  loc_C0D266: LitI4 1
  loc_C0D26B: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0D270: FStVarCopyObj var_C4
  loc_C0D273: FLdRfVar var_C4
  loc_C0D276: FLdRfVar var_9C
  loc_C0D279: CVarRef
  loc_C0D27E: FLdRfVar var_D4
  loc_C0D281: ImpAdCallFPR4  = Format(, )
  loc_C0D286: FLdRfVar var_D4
  loc_C0D289: ConcatVar var_14C
  loc_C0D28D: LitVarStr var_15C, " AND CodiTias NOT IN (16,25,27)"
  loc_C0D292: ConcatVar var_16C
  loc_C0D296: LitVarStr var_17C, " GROUP BY CodiCuco, CodiTias;"
  loc_C0D29B: ConcatVar var_18C
  loc_C0D29F: CStrVarVal var_1B0
  loc_C0D2A3: Call EjecutarRsCls(from_stack_1v)
  loc_C0D2A8: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_C0D2D5: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = ""
  loc_C0D2E4: LitStr "Municipalidad de Guaymallén"
  loc_C0D2E7: LitStr "Municipalidad de Guaymallén"
  loc_C0D2EA: EqStr
  loc_C0D2EC: BranchF loc_C0D3FB
  loc_C0D2EF: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH)"
  loc_C0D2F2: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D2F5: ConcatStr
  loc_C0D2F6: FStStrNoPop var_A0
  loc_C0D2F9: LitStr ", CASE /* MoviEjeD */ "
  loc_C0D2FC: ConcatStr
  loc_C0D2FD: FStStrNoPop var_A4
  loc_C0D300: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN Sum(If(CodiTias IN (2,24),DebeMoas-HabeMoas,0)) /*gastos*/"
  loc_C0D303: ConcatStr
  loc_C0D304: FStStrNoPop var_E8
  loc_C0D307: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN 0"
  loc_C0D30A: ConcatStr
  loc_C0D30B: FStStrNoPop var_EC
  loc_C0D30E: LitStr " ELSE Sum(DebeMoas)"
  loc_C0D311: ConcatStr
  loc_C0D312: FStStrNoPop var_F0
  loc_C0D315: LitStr " END MoviEjeD"
  loc_C0D318: ConcatStr
  loc_C0D319: FStStrNoPop var_F4
  loc_C0D31C: LitStr ", CASE /* MoviEjeH */"
  loc_C0D31F: ConcatStr
  loc_C0D320: FStStrNoPop var_F8
  loc_C0D323: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9,58),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0D326: ConcatStr
  loc_C0D327: FStStrNoPop var_FC
  loc_C0D32A: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN 0"
  loc_C0D32D: ConcatStr
  loc_C0D32E: FStStrNoPop var_100
  loc_C0D331: LitStr " ELSE Sum(HabeMoas)"
  loc_C0D334: ConcatStr
  loc_C0D335: FStStrNoPop var_104
  loc_C0D338: LitStr " END MoviEjeH"
  loc_C0D33B: ConcatStr
  loc_C0D33C: FStStrNoPop var_108
  loc_C0D33F: LitStr " FROM asiento"
  loc_C0D342: ConcatStr
  loc_C0D343: FStStrNoPop var_10C
  loc_C0D346: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D349: ConcatStr
  loc_C0D34A: FStStrNoPop var_110
  loc_C0D34D: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D350: ConcatStr
  loc_C0D351: FStStrNoPop var_114
  loc_C0D354: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D357: ConcatStr
  loc_C0D358: FStStrNoPop var_118
  loc_C0D35B: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D35E: ConcatStr
  loc_C0D35F: FStStrNoPop var_11C
  loc_C0D362: ILdRf Anexos_IX_mensual
  loc_C0D365: ConcatStr
  loc_C0D366: FStStrNoPop var_120
  loc_C0D369: LitStr " AND asiento.FechAsie <= "
  loc_C0D36C: ConcatStr
  loc_C0D36D: CVarStr var_E4
  loc_C0D370: LitI4 1
  loc_C0D375: LitI4 1
  loc_C0D37A: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0D37F: FStVarCopyObj var_C4
  loc_C0D382: FLdRfVar var_C4
  loc_C0D385: FLdRfVar var_9C
  loc_C0D388: CVarRef
  loc_C0D38D: FLdRfVar var_D4
  loc_C0D390: ImpAdCallFPR4  = Format(, )
  loc_C0D395: FLdRfVar var_D4
  loc_C0D398: ConcatVar var_14C
  loc_C0D39C: LitVarStr var_15C, " AND CodiTias NOT IN (16,25,27)"
  loc_C0D3A1: ConcatVar var_16C
  loc_C0D3A5: LitVarStr var_17C, " AND CodiTias NOT IN (17,18)"
  loc_C0D3AA: ConcatVar var_18C
  loc_C0D3AE: LitVarStr var_19C, " GROUP BY CodiCuco, CodiTias;"
  loc_C0D3B3: ConcatVar var_1AC
  loc_C0D3B7: CStrVarVal var_124
  loc_C0D3BB: Call EjecutarRsCls(from_stack_1v)
  loc_C0D3C0: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_C0D3E7: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = ""
  loc_C0D3F8: Branch loc_C0D504
  loc_C0D3FB: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH)"
  loc_C0D3FE: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D401: ConcatStr
  loc_C0D402: FStStrNoPop var_A0
  loc_C0D405: LitStr ", CASE /* MoviEjeD */ "
  loc_C0D408: ConcatStr
  loc_C0D409: FStStrNoPop var_A4
  loc_C0D40C: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN Sum(If(CodiTias IN (2,24),DebeMoas-HabeMoas,0)) /*gastos*/"
  loc_C0D40F: ConcatStr
  loc_C0D410: FStStrNoPop var_E8
  loc_C0D413: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN 0"
  loc_C0D416: ConcatStr
  loc_C0D417: FStStrNoPop var_EC
  loc_C0D41A: LitStr " ELSE Sum(DebeMoas)"
  loc_C0D41D: ConcatStr
  loc_C0D41E: FStStrNoPop var_F0
  loc_C0D421: LitStr " END MoviEjeD"
  loc_C0D424: ConcatStr
  loc_C0D425: FStStrNoPop var_F4
  loc_C0D428: LitStr ", CASE /* MoviEjeH */"
  loc_C0D42B: ConcatStr
  loc_C0D42C: FStStrNoPop var_F8
  loc_C0D42F: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0D432: ConcatStr
  loc_C0D433: FStStrNoPop var_FC
  loc_C0D436: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN 0"
  loc_C0D439: ConcatStr
  loc_C0D43A: FStStrNoPop var_100
  loc_C0D43D: LitStr " ELSE Sum(HabeMoas)"
  loc_C0D440: ConcatStr
  loc_C0D441: FStStrNoPop var_104
  loc_C0D444: LitStr " END MoviEjeH"
  loc_C0D447: ConcatStr
  loc_C0D448: FStStrNoPop var_108
  loc_C0D44B: LitStr " FROM asiento"
  loc_C0D44E: ConcatStr
  loc_C0D44F: FStStrNoPop var_10C
  loc_C0D452: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D455: ConcatStr
  loc_C0D456: FStStrNoPop var_110
  loc_C0D459: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D45C: ConcatStr
  loc_C0D45D: FStStrNoPop var_114
  loc_C0D460: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D463: ConcatStr
  loc_C0D464: FStStrNoPop var_118
  loc_C0D467: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D46A: ConcatStr
  loc_C0D46B: FStStrNoPop var_11C
  loc_C0D46E: ILdRf Anexos_IX_mensual
  loc_C0D471: ConcatStr
  loc_C0D472: FStStrNoPop var_120
  loc_C0D475: LitStr " AND asiento.FechAsie <= "
  loc_C0D478: ConcatStr
  loc_C0D479: CVarStr var_E4
  loc_C0D47C: LitI4 1
  loc_C0D481: LitI4 1
  loc_C0D486: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0D48B: FStVarCopyObj var_C4
  loc_C0D48E: FLdRfVar var_C4
  loc_C0D491: FLdRfVar var_9C
  loc_C0D494: CVarRef
  loc_C0D499: FLdRfVar var_D4
  loc_C0D49C: ImpAdCallFPR4  = Format(, )
  loc_C0D4A1: FLdRfVar var_D4
  loc_C0D4A4: ConcatVar var_14C
  loc_C0D4A8: LitVarStr var_15C, " AND CodiTias NOT IN (16,25,27)"
  loc_C0D4AD: ConcatVar var_16C
  loc_C0D4B1: LitVarStr var_17C, " AND CodiTias NOT IN (17,18)"
  loc_C0D4B6: ConcatVar var_18C
  loc_C0D4BA: LitVarStr var_19C, " GROUP BY CodiCuco, CodiTias;"
  loc_C0D4BF: ConcatVar var_1AC
  loc_C0D4C3: CStrVarVal var_124
  loc_C0D4C7: Call EjecutarRsCls(from_stack_1v)
  loc_C0D4CC: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_C0D4F3: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = ""
  loc_C0D504: LitStr "Municipalidad de Guaymallén"
  loc_C0D507: FStStrCopy var_1B4
  loc_C0D50A: ILdRf var_1B4
  loc_C0D50D: LitStr "Municipalidad de Maipú"
  loc_C0D510: EqStr
  loc_C0D512: BranchF loc_C0D8CB
  loc_C0D515: FLdI2 Mes
  loc_C0D518: LitI2_Byte 1
  loc_C0D51A: EqI2
  loc_C0D51B: FLdI2 EsMensual
  loc_C0D51E: NotI4
  loc_C0D51F: OrI4
  loc_C0D520: BranchF loc_C0D6C5
  loc_C0D523: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0D526: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D529: ConcatStr
  loc_C0D52A: FStStrNoPop var_A0
  loc_C0D52D: LitStr ", CASE /*egresos MoviFonD*/"
  loc_C0D530: ConcatStr
  loc_C0D531: FStStrNoPop var_A4
  loc_C0D534: LitStr " WHEN ( (CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_C0D537: ConcatStr
  loc_C0D538: FStStrNoPop var_E8
  loc_C0D53B: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121' AND CodiTicu NOT LIKE '2210')"
  loc_C0D53E: ConcatStr
  loc_C0D53F: FStStrNoPop var_EC
  loc_C0D542: LitStr " OR (CodiTicu LIKE '1140') )"
  loc_C0D545: ConcatStr
  loc_C0D546: FStStrNoPop var_F0
  loc_C0D549: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_C0D54C: ConcatStr
  loc_C0D54D: FStStrNoPop var_F4
  loc_C0D550: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_C0D553: ConcatStr
  loc_C0D554: FStStrNoPop var_F8
  loc_C0D557: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(DebeMoas)"
  loc_C0D55A: ConcatStr
  loc_C0D55B: FStStrNoPop var_FC
  loc_C0D55E: LitStr " ELSE 0"
  loc_C0D561: ConcatStr
  loc_C0D562: FStStrNoPop var_100
  loc_C0D565: LitStr " END MoviFonD /*egresos*/"
  loc_C0D568: ConcatStr
  loc_C0D569: FStStr var_90
  loc_C0D56C: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C0D581: ILdRf var_90
  loc_C0D584: LitStr ", CASE /*ingresos*/"
  loc_C0D587: ConcatStr
  loc_C0D588: FStStrNoPop var_A0
  loc_C0D58B: LitStr " WHEN ( (CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_C0D58E: ConcatStr
  loc_C0D58F: FStStrNoPop var_A4
  loc_C0D592: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121' AND CodiTicu NOT LIKE '2210')"
  loc_C0D595: ConcatStr
  loc_C0D596: FStStrNoPop var_E8
  loc_C0D599: LitStr " OR (CodiTicu LIKE '1140') )"
  loc_C0D59C: ConcatStr
  loc_C0D59D: FStStrNoPop var_EC
  loc_C0D5A0: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_C0D5A3: ConcatStr
  loc_C0D5A4: FStStrNoPop var_F0
  loc_C0D5A7: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_C0D5AA: ConcatStr
  loc_C0D5AB: FStStrNoPop var_F4
  loc_C0D5AE: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(HabeMoas)"
  loc_C0D5B1: ConcatStr
  loc_C0D5B2: FStStrNoPop var_F8
  loc_C0D5B5: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0D5B8: ConcatStr
  loc_C0D5B9: FStStrNoPop var_FC
  loc_C0D5BC: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0D5BF: ConcatStr
  loc_C0D5C0: FStStrNoPop var_100
  loc_C0D5C3: LitStr " ELSE 0"
  loc_C0D5C6: ConcatStr
  loc_C0D5C7: FStStrNoPop var_104
  loc_C0D5CA: LitStr " END MoviFonH /*ingresos*/"
  loc_C0D5CD: ConcatStr
  loc_C0D5CE: FStStrNoPop var_108
  loc_C0D5D1: LitStr " FROM asiento"
  loc_C0D5D4: ConcatStr
  loc_C0D5D5: FStStrNoPop var_10C
  loc_C0D5D8: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_C0D5DB: ConcatStr
  loc_C0D5DC: FStStrNoPop var_110
  loc_C0D5DF: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D5E2: ConcatStr
  loc_C0D5E3: FStStrNoPop var_114
  loc_C0D5E6: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D5E9: ConcatStr
  loc_C0D5EA: FStStrNoPop var_118
  loc_C0D5ED: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D5F0: ConcatStr
  loc_C0D5F1: FStStrNoPop var_11C
  loc_C0D5F4: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D5F7: ConcatStr
  loc_C0D5F8: FStStrNoPop var_120
  loc_C0D5FB: ILdRf Anexos_IX_mensual
  loc_C0D5FE: ConcatStr
  loc_C0D5FF: FStStrNoPop var_124
  loc_C0D602: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0D605: ConcatStr
  loc_C0D606: FStStrNoPop var_128
  loc_C0D609: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0D60C: ConcatStr
  loc_C0D60D: FStStr var_90
  loc_C0D610: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C0D639: ILdRf var_90
  loc_C0D63C: Call EjecutarRsCls(from_stack_1v)
  loc_C0D641: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0D644: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D647: ConcatStr
  loc_C0D648: FStStrNoPop var_A0
  loc_C0D64B: LitStr ", IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_C0D64E: ConcatStr
  loc_C0D64F: FStStrNoPop var_A4
  loc_C0D652: LitStr ", IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_C0D655: ConcatStr
  loc_C0D656: FStStrNoPop var_E8
  loc_C0D659: LitStr " FROM asiento"
  loc_C0D65C: ConcatStr
  loc_C0D65D: FStStrNoPop var_EC
  loc_C0D660: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_C0D663: ConcatStr
  loc_C0D664: FStStrNoPop var_F0
  loc_C0D667: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D66A: ConcatStr
  loc_C0D66B: FStStrNoPop var_F4
  loc_C0D66E: LitStr " AND mv.CodiCuco = '2111070216'"
  loc_C0D671: ConcatStr
  loc_C0D672: FStStrNoPop var_F8
  loc_C0D675: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D678: ConcatStr
  loc_C0D679: FStStrNoPop var_FC
  loc_C0D67C: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D67F: ConcatStr
  loc_C0D680: FStStrNoPop var_100
  loc_C0D683: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D686: ConcatStr
  loc_C0D687: FStStrNoPop var_104
  loc_C0D68A: ILdRf Anexos_IX_mensual
  loc_C0D68D: ConcatStr
  loc_C0D68E: FStStrNoPop var_108
  loc_C0D691: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0D694: ConcatStr
  loc_C0D695: FStStrNoPop var_10C
  loc_C0D698: LitStr " GROUP BY CodiCuco;"
  loc_C0D69B: ConcatStr
  loc_C0D69C: FStStr var_90
  loc_C0D69F: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_C0D6BA: ILdRf var_90
  loc_C0D6BD: Call EjecutarRsCls(from_stack_1v)
  loc_C0D6C2: Branch loc_C0D863
  loc_C0D6C5: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0D6C8: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D6CB: ConcatStr
  loc_C0D6CC: FStStrNoPop var_A0
  loc_C0D6CF: LitStr ", CASE /*egresos MoviFonD*/"
  loc_C0D6D2: ConcatStr
  loc_C0D6D3: FStStrNoPop var_A4
  loc_C0D6D6: LitStr " WHEN ( (CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_C0D6D9: ConcatStr
  loc_C0D6DA: FStStrNoPop var_E8
  loc_C0D6DD: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121' AND CodiTicu NOT LIKE '2210')"
  loc_C0D6E0: ConcatStr
  loc_C0D6E1: FStStrNoPop var_EC
  loc_C0D6E4: LitStr " OR (CodiTicu LIKE '1140') )"
  loc_C0D6E7: ConcatStr
  loc_C0D6E8: FStStrNoPop var_F0
  loc_C0D6EB: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_C0D6EE: ConcatStr
  loc_C0D6EF: FStStrNoPop var_F4
  loc_C0D6F2: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_C0D6F5: ConcatStr
  loc_C0D6F6: FStStrNoPop var_F8
  loc_C0D6F9: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(DebeMoas)"
  loc_C0D6FC: ConcatStr
  loc_C0D6FD: FStStrNoPop var_FC
  loc_C0D700: LitStr " ELSE 0"
  loc_C0D703: ConcatStr
  loc_C0D704: FStStrNoPop var_100
  loc_C0D707: LitStr " END MoviFonD /*egresos*/"
  loc_C0D70A: ConcatStr
  loc_C0D70B: FStStr var_90
  loc_C0D70E: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C0D723: ILdRf var_90
  loc_C0D726: LitStr ", CASE /*ingresos MoviFonH*/"
  loc_C0D729: ConcatStr
  loc_C0D72A: FStStrNoPop var_A0
  loc_C0D72D: LitStr " WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_C0D730: ConcatStr
  loc_C0D731: FStStrNoPop var_A4
  loc_C0D734: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121' AND CodiTicu NOT LIKE '2210')"
  loc_C0D737: ConcatStr
  loc_C0D738: FStStrNoPop var_E8
  loc_C0D73B: LitStr " OR (CodiTicu LIKE '1140') )"
  loc_C0D73E: ConcatStr
  loc_C0D73F: FStStrNoPop var_EC
  loc_C0D742: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_C0D745: ConcatStr
  loc_C0D746: FStStrNoPop var_F0
  loc_C0D749: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_C0D74C: ConcatStr
  loc_C0D74D: FStStrNoPop var_F4
  loc_C0D750: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(HabeMoas)"
  loc_C0D753: ConcatStr
  loc_C0D754: FStStrNoPop var_F8
  loc_C0D757: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0D75A: ConcatStr
  loc_C0D75B: FStStrNoPop var_FC
  loc_C0D75E: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0D761: ConcatStr
  loc_C0D762: FStStrNoPop var_100
  loc_C0D765: LitStr " ELSE 0"
  loc_C0D768: ConcatStr
  loc_C0D769: FStStrNoPop var_104
  loc_C0D76C: LitStr " END MoviFonH /*ingresos*/"
  loc_C0D76F: ConcatStr
  loc_C0D770: FStStrNoPop var_108
  loc_C0D773: LitStr " FROM asiento"
  loc_C0D776: ConcatStr
  loc_C0D777: FStStrNoPop var_10C
  loc_C0D77A: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_C0D77D: ConcatStr
  loc_C0D77E: FStStrNoPop var_110
  loc_C0D781: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D784: ConcatStr
  loc_C0D785: FStStrNoPop var_114
  loc_C0D788: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D78B: ConcatStr
  loc_C0D78C: FStStrNoPop var_118
  loc_C0D78F: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D792: ConcatStr
  loc_C0D793: FStStrNoPop var_11C
  loc_C0D796: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D799: ConcatStr
  loc_C0D79A: FStStrNoPop var_120
  loc_C0D79D: ILdRf Anexos_IX_mensual
  loc_C0D7A0: ConcatStr
  loc_C0D7A1: FStStrNoPop var_124
  loc_C0D7A4: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0D7A7: ConcatStr
  loc_C0D7A8: FStStrNoPop var_128
  loc_C0D7AB: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0D7AE: ConcatStr
  loc_C0D7AF: FStStr var_90
  loc_C0D7B2: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C0D7DB: ILdRf var_90
  loc_C0D7DE: Call EjecutarRsCls(from_stack_1v)
  loc_C0D7E3: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0D7E6: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D7E9: ConcatStr
  loc_C0D7EA: FStStrNoPop var_A0
  loc_C0D7ED: LitStr ", IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_C0D7F0: ConcatStr
  loc_C0D7F1: FStStrNoPop var_A4
  loc_C0D7F4: LitStr ", IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_C0D7F7: ConcatStr
  loc_C0D7F8: FStStrNoPop var_E8
  loc_C0D7FB: LitStr " FROM asiento"
  loc_C0D7FE: ConcatStr
  loc_C0D7FF: FStStrNoPop var_EC
  loc_C0D802: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_C0D805: ConcatStr
  loc_C0D806: FStStrNoPop var_F0
  loc_C0D809: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0D80C: ConcatStr
  loc_C0D80D: FStStrNoPop var_F4
  loc_C0D810: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0D813: ConcatStr
  loc_C0D814: FStStrNoPop var_F8
  loc_C0D817: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0D81A: ConcatStr
  loc_C0D81B: FStStrNoPop var_FC
  loc_C0D81E: LitStr " AND mv.CodiCuco = '2111070216'"
  loc_C0D821: ConcatStr
  loc_C0D822: FStStrNoPop var_100
  loc_C0D825: LitStr " AND Month(asiento.FechAsie)"
  loc_C0D828: ConcatStr
  loc_C0D829: FStStrNoPop var_104
  loc_C0D82C: ILdRf Anexos_IX_mensual
  loc_C0D82F: ConcatStr
  loc_C0D830: FStStrNoPop var_108
  loc_C0D833: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0D836: ConcatStr
  loc_C0D837: FStStrNoPop var_10C
  loc_C0D83A: LitStr " GROUP BY CodiCuco;"
  loc_C0D83D: ConcatStr
  loc_C0D83E: FStStrNoPop var_110
  loc_C0D841: Call EjecutarRsCls(from_stack_1v)
  loc_C0D846: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_C0D863: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0D866: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0 CodiTias, Sum(PagaImpu), 0"
  loc_C0D869: ConcatStr
  loc_C0D86A: FStStrNoPop var_A0
  loc_C0D86D: LitStr " FROM infogov.cuentacontable cc"
  loc_C0D870: ConcatStr
  loc_C0D871: FStStrNoPop var_A4
  loc_C0D874: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0D877: ConcatStr
  loc_C0D878: FStStrNoPop var_E8
  loc_C0D87B: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0D87E: ConcatStr
  loc_C0D87F: FStStrNoPop var_EC
  loc_C0D882: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0D885: ConcatStr
  loc_C0D886: FStStrNoPop var_F0
  loc_C0D889: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0D88C: ConcatStr
  loc_C0D88D: FStStrNoPop var_F4
  loc_C0D890: ILdRf Anexos_IX_mensual
  loc_C0D893: ConcatStr
  loc_C0D894: FStStrNoPop var_F8
  loc_C0D897: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_C0D89A: ConcatStr
  loc_C0D89B: FStStrNoPop var_FC
  loc_C0D89E: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_C0D8A1: ConcatStr
  loc_C0D8A2: FStStrNoPop var_100
  loc_C0D8A5: LitStr " GROUP BY CodiCuco;"
  loc_C0D8A8: ConcatStr
  loc_C0D8A9: FStStrNoPop var_104
  loc_C0D8AC: Call EjecutarRsCls(from_stack_1v)
  loc_C0D8B1: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0D8C8: Branch loc_C0F7CA
  loc_C0D8CB: ILdRf var_1B4
  loc_C0D8CE: LitStr "Municipalidad de Malargüe"
  loc_C0D8D1: EqStr
  loc_C0D8D3: BranchF loc_C0DC00
  loc_C0D8D6: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0D8D9: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0D8DC: ConcatStr
  loc_C0D8DD: FStStrNoPop var_A0
  loc_C0D8E0: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0D8E3: ConcatStr
  loc_C0D8E4: FStStrNoPop var_A4
  loc_C0D8E7: LitStr " WHEN CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0D8EA: ConcatStr
  loc_C0D8EB: FStStrNoPop var_E8
  loc_C0D8EE: LitStr " WHEN CodiTicu IN ('1150') AND CodiTias IN (6,12) THEN SUM(DebeMoas-HabeMoas)"
  loc_C0D8F1: ConcatStr
  loc_C0D8F2: FStStrNoPop var_EC
  loc_C0D8F5: LitStr " WHEN CodiTicu IN ('1155') AND CodiTias IN (6,12,9) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0D8F8: ConcatStr
  loc_C0D8F9: FStStrNoPop var_F0
  loc_C0D8FC: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN (17,18,31,32,33,34) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0D8FF: ConcatStr
  loc_C0D900: FStStrNoPop var_F4
  loc_C0D903: LitStr " WHEN CodiTicu IN ('1140','1170','1210') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0)),0)"
  loc_C0D906: ConcatStr
  loc_C0D907: FStStrNoPop var_F8
  loc_C0D90A: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0D90D: ConcatStr
  loc_C0D90E: FStStrNoPop var_FC
  loc_C0D911: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0D914: ConcatStr
  loc_C0D915: FStStrNoPop var_100
  loc_C0D918: LitStr " WHEN CodiTicu = '2113' AND CodiTias IN (12,22) THEN Sum(DebeMoas-HabeMoas)"
  loc_C0D91B: ConcatStr
  loc_C0D91C: FStStrNoPop var_104
  loc_C0D91F: LitStr " WHEN CodiTicu IN ('2114','2115','2117') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_C0D922: ConcatStr
  loc_C0D923: FStStrNoPop var_108
  loc_C0D926: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0D929: ConcatStr
  loc_C0D92A: FStStrNoPop var_10C
  loc_C0D92D: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0D930: ConcatStr
  loc_C0D931: FStStrNoPop var_110
  loc_C0D934: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0D937: ConcatStr
  loc_C0D938: FStStrNoPop var_114
  loc_C0D93B: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0)),0)"
  loc_C0D93E: ConcatStr
  loc_C0D93F: FStStrNoPop var_118
  loc_C0D942: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0D945: ConcatStr
  loc_C0D946: FStStrNoPop var_11C
  loc_C0D949: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0D94C: ConcatStr
  loc_C0D94D: FStStrNoPop var_120
  loc_C0D950: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0D953: ConcatStr
  loc_C0D954: FStStrNoPop var_124
  loc_C0D957: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0D95A: ConcatStr
  loc_C0D95B: FStStrNoPop var_128
  loc_C0D95E: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0D961: ConcatStr
  loc_C0D962: FStStrNoPop var_12C
  loc_C0D965: LitStr " ELSE 0"
  loc_C0D968: ConcatStr
  loc_C0D969: FStStrNoPop var_1B0
  loc_C0D96C: LitStr " END MoviFonD /*egresos*/"
  loc_C0D96F: ConcatStr
  loc_C0D970: FStStr var_90
  loc_C0D973: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_C0D9A0: ILdRf var_90
  loc_C0D9A3: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0D9A6: ConcatStr
  loc_C0D9A7: FStStrNoPop var_A0
  loc_C0D9AA: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0D9AD: ConcatStr
  loc_C0D9AE: FStStrNoPop var_A4
  loc_C0D9B1: LitStr " WHEN CodiTicu IN ('1155') AND CodiTias IN (6,12,9) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0D9B4: ConcatStr
  loc_C0D9B5: FStStrNoPop var_E8
  loc_C0D9B8: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN(17,18,31,32,33,34) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0D9BB: ConcatStr
  loc_C0D9BC: FStStrNoPop var_EC
  loc_C0D9BF: LitStr " WHEN CodiTicu IN ('1140','1170','1210') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_C0D9C2: ConcatStr
  loc_C0D9C3: FStStrNoPop var_F0
  loc_C0D9C6: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0D9C9: ConcatStr
  loc_C0D9CA: FStStrNoPop var_F4
  loc_C0D9CD: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0D9D0: ConcatStr
  loc_C0D9D1: FStStrNoPop var_F8
  loc_C0D9D4: LitStr " WHEN CodiTicu = '2113' AND CodiTias IN (9,6,24) THEN Sum(HabeMoas-DebeMoas)"
  loc_C0D9D7: ConcatStr
  loc_C0D9D8: FStStrNoPop var_FC
  loc_C0D9DB: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24,13),HabeMoas-DebeMoas,0))"
  loc_C0D9DE: ConcatStr
  loc_C0D9DF: FStStrNoPop var_100
  loc_C0D9E2: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0D9E5: ConcatStr
  loc_C0D9E6: FStStrNoPop var_104
  loc_C0D9E9: LitStr " WHEN CodiTicu IN ('2117') THEN Sum(If(CodiTias IN (13,6),HabeMoas-DebeMoas,0))"
  loc_C0D9EC: ConcatStr
  loc_C0D9ED: FStStrNoPop var_108
  loc_C0D9F0: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9,24),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0D9F3: ConcatStr
  loc_C0D9F4: FStStrNoPop var_10C
  loc_C0D9F7: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0D9FA: ConcatStr
  loc_C0D9FB: FStStrNoPop var_110
  loc_C0D9FE: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0)),0)"
  loc_C0DA01: ConcatStr
  loc_C0DA02: FStStrNoPop var_114
  loc_C0DA05: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0DA08: ConcatStr
  loc_C0DA09: FStStrNoPop var_118
  loc_C0DA0C: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0DA0F: ConcatStr
  loc_C0DA10: FStStrNoPop var_11C
  loc_C0DA13: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0DA16: ConcatStr
  loc_C0DA17: FStStrNoPop var_120
  loc_C0DA1A: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0DA1D: ConcatStr
  loc_C0DA1E: FStStrNoPop var_124
  loc_C0DA21: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0DA24: ConcatStr
  loc_C0DA25: FStStrNoPop var_128
  loc_C0DA28: LitStr " ELSE 0"
  loc_C0DA2B: ConcatStr
  loc_C0DA2C: FStStrNoPop var_12C
  loc_C0DA2F: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0DA32: ConcatStr
  loc_C0DA33: FStStr var_90
  loc_C0DA36: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0DA61: ILdRf var_90
  loc_C0DA64: LitStr " FROM asiento"
  loc_C0DA67: ConcatStr
  loc_C0DA68: FStStrNoPop var_A0
  loc_C0DA6B: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0DA6E: ConcatStr
  loc_C0DA6F: FStStrNoPop var_A4
  loc_C0DA72: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0DA75: ConcatStr
  loc_C0DA76: CVarStr var_14C
  loc_C0DA79: LitVarStr var_15C, vbNullString
  loc_C0DA7E: FStVarCopyObj var_D4
  loc_C0DA81: FLdRfVar var_D4
  loc_C0DA84: LitVarStr var_13C, " AND cc.CodiCuco NOT IN ('','1132030000','1132040000','1132050000','1132060000','1132070000','1132080000')"
  loc_C0DA89: FStVarCopyObj var_C4
  loc_C0DA8C: FLdRfVar var_C4
  loc_C0DA8F: LitStr "Municipalidad de Guaymallén"
  loc_C0DA92: LitStr "Municipalidad de Malargüeeeee"
  loc_C0DA95: EqStr
  loc_C0DA97: CVarBoolI2 var_B4
  loc_C0DA9B: FLdRfVar var_E4
  loc_C0DA9E: ImpAdCallFPR4  = IIf(, , )
  loc_C0DAA3: FLdRfVar var_E4
  loc_C0DAA6: ConcatVar var_16C
  loc_C0DAAA: LitVarStr var_17C, " WHERE asiento.PeriInfo = @peri"
  loc_C0DAAF: ConcatVar var_18C
  loc_C0DAB3: LitVarStr var_19C, " AND Month(asiento.FechAsie)"
  loc_C0DAB8: ConcatVar var_1AC
  loc_C0DABC: ILdRf Anexos_IX_mensual
  loc_C0DABF: CVarStr var_1C4
  loc_C0DAC2: ConcatVar var_1D4
  loc_C0DAC6: LitVarStr var_1E4, " AND CodiTias NOT IN (16,25,27)"
  loc_C0DACB: ConcatVar var_1F4
  loc_C0DACF: LitVarStr var_204, " AND CodiTias < 30"
  loc_C0DAD4: ConcatVar var_214
  loc_C0DAD8: LitVarStr var_224, " AND CodiTicu NOT IN "
  loc_C0DADD: ConcatVar var_234
  loc_C0DAE1: ILdRf var_8C
  loc_C0DAE4: CVarStr var_244
  loc_C0DAE7: ConcatVar var_254
  loc_C0DAEB: LitVarStr var_264, " GROUP BY CodiCuco, CodiTias;"
  loc_C0DAF0: ConcatVar var_274
  loc_C0DAF4: CStrVarTmp
  loc_C0DAF5: FStStr var_90
  loc_C0DAF8: FFreeStr var_A0 = ""
  loc_C0DAFF: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_14C = "": var_E4 = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = ""
  loc_C0DB1E: ILdRf var_90
  loc_C0DB21: Call EjecutarRsCls(from_stack_1v)
  loc_C0DB26: LitStr "INSERT INTO ttemp "
  loc_C0DB29: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0DB2C: ConcatStr
  loc_C0DB2D: FStStrNoPop var_A0
  loc_C0DB30: LitStr ", Sum(PagaImpu)"
  loc_C0DB33: ConcatStr
  loc_C0DB34: FStStrNoPop var_A4
  loc_C0DB37: LitStr ", 0"
  loc_C0DB3A: ConcatStr
  loc_C0DB3B: FStStrNoPop var_E8
  loc_C0DB3E: LitStr " FROM infogov.cuentacontable cc"
  loc_C0DB41: ConcatStr
  loc_C0DB42: FStStrNoPop var_EC
  loc_C0DB45: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0DB48: ConcatStr
  loc_C0DB49: FStStrNoPop var_F0
  loc_C0DB4C: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0DB4F: ConcatStr
  loc_C0DB50: FStStrNoPop var_F4
  loc_C0DB53: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0DB56: ConcatStr
  loc_C0DB57: FStStrNoPop var_F8
  loc_C0DB5A: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0DB5D: ConcatStr
  loc_C0DB5E: FStStrNoPop var_FC
  loc_C0DB61: ILdRf Anexos_IX_mensual
  loc_C0DB64: ConcatStr
  loc_C0DB65: FStStrNoPop var_100
  loc_C0DB68: LitStr " AND imputacion.FechImpu <= "
  loc_C0DB6B: ConcatStr
  loc_C0DB6C: CVarStr var_E4
  loc_C0DB6F: LitI4 1
  loc_C0DB74: LitI4 1
  loc_C0DB79: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0DB7E: FStVarCopyObj var_C4
  loc_C0DB81: FLdRfVar var_C4
  loc_C0DB84: FLdRfVar var_9C
  loc_C0DB87: CVarRef
  loc_C0DB8C: FLdRfVar var_D4
  loc_C0DB8F: ImpAdCallFPR4  = Format(, )
  loc_C0DB94: FLdRfVar var_D4
  loc_C0DB97: ConcatVar var_14C
  loc_C0DB9B: LitVarStr var_15C, " AND (CodiTicu = '2113333'"
  loc_C0DBA0: ConcatVar var_16C
  loc_C0DBA4: LitVarStr var_17C, " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_C0DBA9: ConcatVar var_18C
  loc_C0DBAD: LitVarStr var_19C, " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_C0DBB2: ConcatVar var_1AC
  loc_C0DBB6: LitVarStr var_1C4, " OR CodiTicu = '2111')"
  loc_C0DBBB: ConcatVar var_1D4
  loc_C0DBBF: LitVarStr var_1E4, " GROUP BY CodiCuco;"
  loc_C0DBC4: ConcatVar var_1F4
  loc_C0DBC8: CStrVarVal var_104
  loc_C0DBCC: Call EjecutarRsCls(from_stack_1v)
  loc_C0DBD1: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0DBE8: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = ""
  loc_C0DBFD: Branch loc_C0F7CA
  loc_C0DC00: ILdRf var_1B4
  loc_C0DC03: LitStr "Municipalidad de San Carlos"
  loc_C0DC06: EqStr
  loc_C0DC08: BranchF loc_C0DEC4
  loc_C0DC0B: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0DC0E: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0DC11: ConcatStr
  loc_C0DC12: FStStrNoPop var_A0
  loc_C0DC15: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0DC18: ConcatStr
  loc_C0DC19: FStStrNoPop var_A4
  loc_C0DC1C: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0DC1F: ConcatStr
  loc_C0DC20: FStStrNoPop var_E8
  loc_C0DC23: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN (17,18,31,32,33,34) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0DC26: ConcatStr
  loc_C0DC27: FStStrNoPop var_EC
  loc_C0DC2A: LitStr " WHEN CodiTicu IN ('1140','1170') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0)),0)"
  loc_C0DC2D: ConcatStr
  loc_C0DC2E: FStStrNoPop var_F0
  loc_C0DC31: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0DC34: ConcatStr
  loc_C0DC35: FStStrNoPop var_F4
  loc_C0DC38: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0DC3B: ConcatStr
  loc_C0DC3C: FStStrNoPop var_F8
  loc_C0DC3F: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12,24),DebeMoas-HabeMoas,0))"
  loc_C0DC42: ConcatStr
  loc_C0DC43: FStStrNoPop var_FC
  loc_C0DC46: LitStr " WHEN CodiTicu IN ('2114','2115','2117') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_C0DC49: ConcatStr
  loc_C0DC4A: FStStrNoPop var_100
  loc_C0DC4D: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0DC50: ConcatStr
  loc_C0DC51: FStStrNoPop var_104
  loc_C0DC54: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0DC57: ConcatStr
  loc_C0DC58: FStStrNoPop var_108
  loc_C0DC5B: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0DC5E: ConcatStr
  loc_C0DC5F: FStStrNoPop var_10C
  loc_C0DC62: LitStr " WHEN CodiTicu IN ('2212') THEN Sum(If(CodiTias IN (9),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0DC65: ConcatStr
  loc_C0DC66: FStStrNoPop var_110
  loc_C0DC69: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0)),0)"
  loc_C0DC6C: ConcatStr
  loc_C0DC6D: FStStrNoPop var_114
  loc_C0DC70: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0DC73: ConcatStr
  loc_C0DC74: FStStrNoPop var_118
  loc_C0DC77: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0DC7A: ConcatStr
  loc_C0DC7B: FStStrNoPop var_11C
  loc_C0DC7E: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0DC81: ConcatStr
  loc_C0DC82: FStStrNoPop var_120
  loc_C0DC85: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0DC88: ConcatStr
  loc_C0DC89: FStStrNoPop var_124
  loc_C0DC8C: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0DC8F: ConcatStr
  loc_C0DC90: FStStrNoPop var_128
  loc_C0DC93: LitStr " ELSE 0"
  loc_C0DC96: ConcatStr
  loc_C0DC97: FStStrNoPop var_12C
  loc_C0DC9A: LitStr " END MoviFonD /*egresos*/"
  loc_C0DC9D: ConcatStr
  loc_C0DC9E: FStStr var_90
  loc_C0DCA1: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0DCCC: ILdRf var_90
  loc_C0DCCF: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0DCD2: ConcatStr
  loc_C0DCD3: FStStrNoPop var_A0
  loc_C0DCD6: LitStr " WHEN CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0DCD9: ConcatStr
  loc_C0DCDA: FStStrNoPop var_A4
  loc_C0DCDD: LitStr " WHEN CodiTicu IN ('1150') AND CodiTias IN(9) THEN  IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0DCE0: ConcatStr
  loc_C0DCE1: FStStrNoPop var_E8
  loc_C0DCE4: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN(17,18,31,32,33,34) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0DCE7: ConcatStr
  loc_C0DCE8: FStStrNoPop var_EC
  loc_C0DCEB: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_C0DCEE: ConcatStr
  loc_C0DCEF: FStStrNoPop var_F0
  loc_C0DCF2: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0DCF5: ConcatStr
  loc_C0DCF6: FStStrNoPop var_F4
  loc_C0DCF9: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0DCFC: ConcatStr
  loc_C0DCFD: FStStrNoPop var_F8
  loc_C0DD00: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9,6),HabeMoas-DebeMoas,0))"
  loc_C0DD03: ConcatStr
  loc_C0DD04: FStStrNoPop var_FC
  loc_C0DD07: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24,13),HabeMoas-DebeMoas,0))"
  loc_C0DD0A: ConcatStr
  loc_C0DD0B: FStStrNoPop var_100
  loc_C0DD0E: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0DD11: ConcatStr
  loc_C0DD12: FStStrNoPop var_104
  loc_C0DD15: LitStr " WHEN CodiTicu IN ('2117') THEN Sum(If(CodiTias IN (13,6),HabeMoas-DebeMoas,0))"
  loc_C0DD18: ConcatStr
  loc_C0DD19: FStStrNoPop var_108
  loc_C0DD1C: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0DD1F: ConcatStr
  loc_C0DD20: FStStrNoPop var_10C
  loc_C0DD23: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0DD26: ConcatStr
  loc_C0DD27: FStStrNoPop var_110
  loc_C0DD2A: LitStr " WHEN CodiTicu IN ('2212') THEN Sum(If(CodiTias IN (9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0DD2D: ConcatStr
  loc_C0DD2E: FStStrNoPop var_114
  loc_C0DD31: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0)),0)"
  loc_C0DD34: ConcatStr
  loc_C0DD35: FStStrNoPop var_118
  loc_C0DD38: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0DD3B: ConcatStr
  loc_C0DD3C: FStStrNoPop var_11C
  loc_C0DD3F: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0DD42: ConcatStr
  loc_C0DD43: FStStrNoPop var_120
  loc_C0DD46: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0DD49: ConcatStr
  loc_C0DD4A: FStStrNoPop var_124
  loc_C0DD4D: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0DD50: ConcatStr
  loc_C0DD51: FStStrNoPop var_128
  loc_C0DD54: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0DD57: ConcatStr
  loc_C0DD58: FStStrNoPop var_12C
  loc_C0DD5B: LitStr " ELSE 0"
  loc_C0DD5E: ConcatStr
  loc_C0DD5F: FStStrNoPop var_1B0
  loc_C0DD62: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0DD65: ConcatStr
  loc_C0DD66: FStStr var_90
  loc_C0DD69: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_C0DD96: ILdRf var_90
  loc_C0DD99: LitStr " FROM asiento"
  loc_C0DD9C: ConcatStr
  loc_C0DD9D: FStStrNoPop var_A0
  loc_C0DDA0: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0DDA3: ConcatStr
  loc_C0DDA4: FStStrNoPop var_A4
  loc_C0DDA7: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0DDAA: ConcatStr
  loc_C0DDAB: FStStrNoPop var_E8
  loc_C0DDAE: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0DDB1: ConcatStr
  loc_C0DDB2: FStStrNoPop var_EC
  loc_C0DDB5: LitStr " AND Month(asiento.FechAsie)"
  loc_C0DDB8: ConcatStr
  loc_C0DDB9: FStStrNoPop var_F0
  loc_C0DDBC: ILdRf Anexos_IX_mensual
  loc_C0DDBF: ConcatStr
  loc_C0DDC0: FStStrNoPop var_F4
  loc_C0DDC3: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0DDC6: ConcatStr
  loc_C0DDC7: FStStrNoPop var_F8
  loc_C0DDCA: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0DDCD: ConcatStr
  loc_C0DDCE: FStStr var_90
  loc_C0DDD1: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0DDE2: ILdRf var_90
  loc_C0DDE5: Call EjecutarRsCls(from_stack_1v)
  loc_C0DDEA: LitStr "INSERT INTO ttemp "
  loc_C0DDED: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0DDF0: ConcatStr
  loc_C0DDF1: FStStrNoPop var_A0
  loc_C0DDF4: LitStr ", Sum(PagaImpu)"
  loc_C0DDF7: ConcatStr
  loc_C0DDF8: FStStrNoPop var_A4
  loc_C0DDFB: LitStr ", 0"
  loc_C0DDFE: ConcatStr
  loc_C0DDFF: FStStrNoPop var_E8
  loc_C0DE02: LitStr " FROM infogov.cuentacontable cc"
  loc_C0DE05: ConcatStr
  loc_C0DE06: FStStrNoPop var_EC
  loc_C0DE09: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0DE0C: ConcatStr
  loc_C0DE0D: FStStrNoPop var_F0
  loc_C0DE10: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0DE13: ConcatStr
  loc_C0DE14: FStStrNoPop var_F4
  loc_C0DE17: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0DE1A: ConcatStr
  loc_C0DE1B: FStStrNoPop var_F8
  loc_C0DE1E: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0DE21: ConcatStr
  loc_C0DE22: FStStrNoPop var_FC
  loc_C0DE25: ILdRf Anexos_IX_mensual
  loc_C0DE28: ConcatStr
  loc_C0DE29: FStStrNoPop var_100
  loc_C0DE2C: LitStr " AND imputacion.FechImpu <= "
  loc_C0DE2F: ConcatStr
  loc_C0DE30: CVarStr var_E4
  loc_C0DE33: LitI4 1
  loc_C0DE38: LitI4 1
  loc_C0DE3D: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0DE42: FStVarCopyObj var_C4
  loc_C0DE45: FLdRfVar var_C4
  loc_C0DE48: FLdRfVar var_9C
  loc_C0DE4B: CVarRef
  loc_C0DE50: FLdRfVar var_D4
  loc_C0DE53: ImpAdCallFPR4  = Format(, )
  loc_C0DE58: FLdRfVar var_D4
  loc_C0DE5B: ConcatVar var_14C
  loc_C0DE5F: LitVarStr var_15C, " AND (CodiTicu = '2113'"
  loc_C0DE64: ConcatVar var_16C
  loc_C0DE68: LitVarStr var_17C, " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_C0DE6D: ConcatVar var_18C
  loc_C0DE71: LitVarStr var_19C, " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_C0DE76: ConcatVar var_1AC
  loc_C0DE7A: LitVarStr var_1C4, " OR CodiTicu = '2111')"
  loc_C0DE7F: ConcatVar var_1D4
  loc_C0DE83: LitVarStr var_1E4, " GROUP BY CodiCuco;"
  loc_C0DE88: ConcatVar var_1F4
  loc_C0DE8C: CStrVarVal var_104
  loc_C0DE90: Call EjecutarRsCls(from_stack_1v)
  loc_C0DE95: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0DEAC: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = ""
  loc_C0DEC1: Branch loc_C0F7CA
  loc_C0DEC4: ILdRf var_1B4
  loc_C0DEC7: LitStr "Municipalidad de Lavalle"
  loc_C0DECA: EqStr
  loc_C0DECC: BranchF loc_C0E188
  loc_C0DECF: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0DED2: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0DED5: ConcatStr
  loc_C0DED6: FStStrNoPop var_A0
  loc_C0DED9: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0DEDC: ConcatStr
  loc_C0DEDD: FStStrNoPop var_A4
  loc_C0DEE0: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0DEE3: ConcatStr
  loc_C0DEE4: FStStrNoPop var_E8
  loc_C0DEE7: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN (17,18,31,32,33,34) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0DEEA: ConcatStr
  loc_C0DEEB: FStStrNoPop var_EC
  loc_C0DEEE: LitStr " WHEN CodiTicu IN ('1140','1170') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0)),0)"
  loc_C0DEF1: ConcatStr
  loc_C0DEF2: FStStrNoPop var_F0
  loc_C0DEF5: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0DEF8: ConcatStr
  loc_C0DEF9: FStStrNoPop var_F4
  loc_C0DEFC: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0DEFF: ConcatStr
  loc_C0DF00: FStStrNoPop var_F8
  loc_C0DF03: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12,22),DebeMoas-HabeMoas,0))"
  loc_C0DF06: ConcatStr
  loc_C0DF07: FStStrNoPop var_FC
  loc_C0DF0A: LitStr " WHEN CodiTicu IN ('2114','2115','2117') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_C0DF0D: ConcatStr
  loc_C0DF0E: FStStrNoPop var_100
  loc_C0DF11: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0DF14: ConcatStr
  loc_C0DF15: FStStrNoPop var_104
  loc_C0DF18: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0DF1B: ConcatStr
  loc_C0DF1C: FStStrNoPop var_108
  loc_C0DF1F: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0DF22: ConcatStr
  loc_C0DF23: FStStrNoPop var_10C
  loc_C0DF26: LitStr " WHEN CodiTicu IN ('2212') THEN Sum(If(CodiTias IN (9),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0DF29: ConcatStr
  loc_C0DF2A: FStStrNoPop var_110
  loc_C0DF2D: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0)),0)"
  loc_C0DF30: ConcatStr
  loc_C0DF31: FStStrNoPop var_114
  loc_C0DF34: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0DF37: ConcatStr
  loc_C0DF38: FStStrNoPop var_118
  loc_C0DF3B: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0DF3E: ConcatStr
  loc_C0DF3F: FStStrNoPop var_11C
  loc_C0DF42: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0DF45: ConcatStr
  loc_C0DF46: FStStrNoPop var_120
  loc_C0DF49: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0DF4C: ConcatStr
  loc_C0DF4D: FStStrNoPop var_124
  loc_C0DF50: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0DF53: ConcatStr
  loc_C0DF54: FStStrNoPop var_128
  loc_C0DF57: LitStr " ELSE 0"
  loc_C0DF5A: ConcatStr
  loc_C0DF5B: FStStrNoPop var_12C
  loc_C0DF5E: LitStr " END MoviFonD /*egresos*/"
  loc_C0DF61: ConcatStr
  loc_C0DF62: FStStr var_90
  loc_C0DF65: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0DF90: ILdRf var_90
  loc_C0DF93: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0DF96: ConcatStr
  loc_C0DF97: FStStrNoPop var_A0
  loc_C0DF9A: LitStr " WHEN CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0DF9D: ConcatStr
  loc_C0DF9E: FStStrNoPop var_A4
  loc_C0DFA1: LitStr " WHEN CodiTicu IN ('1150') AND CodiTias IN(9) THEN  IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0DFA4: ConcatStr
  loc_C0DFA5: FStStrNoPop var_E8
  loc_C0DFA8: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN(17,18,31,32,33,34) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0DFAB: ConcatStr
  loc_C0DFAC: FStStrNoPop var_EC
  loc_C0DFAF: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_C0DFB2: ConcatStr
  loc_C0DFB3: FStStrNoPop var_F0
  loc_C0DFB6: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0DFB9: ConcatStr
  loc_C0DFBA: FStStrNoPop var_F4
  loc_C0DFBD: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0DFC0: ConcatStr
  loc_C0DFC1: FStStrNoPop var_F8
  loc_C0DFC4: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9,6,24),HabeMoas-DebeMoas,0))"
  loc_C0DFC7: ConcatStr
  loc_C0DFC8: FStStrNoPop var_FC
  loc_C0DFCB: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24,13),HabeMoas-DebeMoas,0))"
  loc_C0DFCE: ConcatStr
  loc_C0DFCF: FStStrNoPop var_100
  loc_C0DFD2: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0DFD5: ConcatStr
  loc_C0DFD6: FStStrNoPop var_104
  loc_C0DFD9: LitStr " WHEN CodiTicu IN ('2117') THEN Sum(If(CodiTias IN (13,6),HabeMoas-DebeMoas,0))"
  loc_C0DFDC: ConcatStr
  loc_C0DFDD: FStStrNoPop var_108
  loc_C0DFE0: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0DFE3: ConcatStr
  loc_C0DFE4: FStStrNoPop var_10C
  loc_C0DFE7: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0DFEA: ConcatStr
  loc_C0DFEB: FStStrNoPop var_110
  loc_C0DFEE: LitStr " WHEN CodiTicu IN ('2212') THEN Sum(If(CodiTias IN (9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0DFF1: ConcatStr
  loc_C0DFF2: FStStrNoPop var_114
  loc_C0DFF5: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0)),0)"
  loc_C0DFF8: ConcatStr
  loc_C0DFF9: FStStrNoPop var_118
  loc_C0DFFC: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0DFFF: ConcatStr
  loc_C0E000: FStStrNoPop var_11C
  loc_C0E003: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0E006: ConcatStr
  loc_C0E007: FStStrNoPop var_120
  loc_C0E00A: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0E00D: ConcatStr
  loc_C0E00E: FStStrNoPop var_124
  loc_C0E011: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0E014: ConcatStr
  loc_C0E015: FStStrNoPop var_128
  loc_C0E018: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0E01B: ConcatStr
  loc_C0E01C: FStStrNoPop var_12C
  loc_C0E01F: LitStr " ELSE 0"
  loc_C0E022: ConcatStr
  loc_C0E023: FStStrNoPop var_1B0
  loc_C0E026: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0E029: ConcatStr
  loc_C0E02A: FStStr var_90
  loc_C0E02D: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_C0E05A: ILdRf var_90
  loc_C0E05D: LitStr " FROM asiento"
  loc_C0E060: ConcatStr
  loc_C0E061: FStStrNoPop var_A0
  loc_C0E064: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0E067: ConcatStr
  loc_C0E068: FStStrNoPop var_A4
  loc_C0E06B: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0E06E: ConcatStr
  loc_C0E06F: FStStrNoPop var_E8
  loc_C0E072: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0E075: ConcatStr
  loc_C0E076: FStStrNoPop var_EC
  loc_C0E079: LitStr " AND Month(asiento.FechAsie)"
  loc_C0E07C: ConcatStr
  loc_C0E07D: FStStrNoPop var_F0
  loc_C0E080: ILdRf Anexos_IX_mensual
  loc_C0E083: ConcatStr
  loc_C0E084: FStStrNoPop var_F4
  loc_C0E087: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0E08A: ConcatStr
  loc_C0E08B: FStStrNoPop var_F8
  loc_C0E08E: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0E091: ConcatStr
  loc_C0E092: FStStr var_90
  loc_C0E095: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0E0A6: ILdRf var_90
  loc_C0E0A9: Call EjecutarRsCls(from_stack_1v)
  loc_C0E0AE: LitStr "INSERT INTO ttemp "
  loc_C0E0B1: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0E0B4: ConcatStr
  loc_C0E0B5: FStStrNoPop var_A0
  loc_C0E0B8: LitStr ", Sum(PagaImpu)"
  loc_C0E0BB: ConcatStr
  loc_C0E0BC: FStStrNoPop var_A4
  loc_C0E0BF: LitStr ", 0"
  loc_C0E0C2: ConcatStr
  loc_C0E0C3: FStStrNoPop var_E8
  loc_C0E0C6: LitStr " FROM infogov.cuentacontable cc"
  loc_C0E0C9: ConcatStr
  loc_C0E0CA: FStStrNoPop var_EC
  loc_C0E0CD: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0E0D0: ConcatStr
  loc_C0E0D1: FStStrNoPop var_F0
  loc_C0E0D4: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0E0D7: ConcatStr
  loc_C0E0D8: FStStrNoPop var_F4
  loc_C0E0DB: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0E0DE: ConcatStr
  loc_C0E0DF: FStStrNoPop var_F8
  loc_C0E0E2: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0E0E5: ConcatStr
  loc_C0E0E6: FStStrNoPop var_FC
  loc_C0E0E9: ILdRf Anexos_IX_mensual
  loc_C0E0EC: ConcatStr
  loc_C0E0ED: FStStrNoPop var_100
  loc_C0E0F0: LitStr " AND imputacion.FechImpu <= "
  loc_C0E0F3: ConcatStr
  loc_C0E0F4: CVarStr var_E4
  loc_C0E0F7: LitI4 1
  loc_C0E0FC: LitI4 1
  loc_C0E101: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E106: FStVarCopyObj var_C4
  loc_C0E109: FLdRfVar var_C4
  loc_C0E10C: FLdRfVar var_9C
  loc_C0E10F: CVarRef
  loc_C0E114: FLdRfVar var_D4
  loc_C0E117: ImpAdCallFPR4  = Format(, )
  loc_C0E11C: FLdRfVar var_D4
  loc_C0E11F: ConcatVar var_14C
  loc_C0E123: LitVarStr var_15C, " AND (CodiTicu = '2113333'"
  loc_C0E128: ConcatVar var_16C
  loc_C0E12C: LitVarStr var_17C, " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_C0E131: ConcatVar var_18C
  loc_C0E135: LitVarStr var_19C, " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_C0E13A: ConcatVar var_1AC
  loc_C0E13E: LitVarStr var_1C4, " OR CodiTicu = '2111')"
  loc_C0E143: ConcatVar var_1D4
  loc_C0E147: LitVarStr var_1E4, " GROUP BY CodiCuco;"
  loc_C0E14C: ConcatVar var_1F4
  loc_C0E150: CStrVarVal var_104
  loc_C0E154: Call EjecutarRsCls(from_stack_1v)
  loc_C0E159: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0E170: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = ""
  loc_C0E185: Branch loc_C0F7CA
  loc_C0E188: ILdRf var_1B4
  loc_C0E18B: LitStr "Municipalidad de General Alvear"
  loc_C0E18E: EqStr
  loc_C0E190: BranchT loc_C0E1B4
  loc_C0E193: ILdRf var_1B4
  loc_C0E196: LitStr "Municipalidad de Santa Rosa"
  loc_C0E199: EqStr
  loc_C0E19B: BranchT loc_C0E1B4
  loc_C0E19E: ILdRf var_1B4
  loc_C0E1A1: LitStr "Municipalidad de La Paz"
  loc_C0E1A4: EqStr
  loc_C0E1A6: BranchT loc_C0E1B4
  loc_C0E1A9: ILdRf var_1B4
  loc_C0E1AC: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C0E1AF: EqStr
  loc_C0E1B1: BranchF loc_C0ECAA
  loc_C0E1B4: FLdI2 PeriInfo
  loc_C0E1B7: LitI2 2018
  loc_C0E1BA: GeI2
  loc_C0E1BB: BranchF loc_C0E9FA
  loc_C0E1BE: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E1C1: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, Sum(PagaImpu), 0"
  loc_C0E1C4: ConcatStr
  loc_C0E1C5: FStStrNoPop var_A0
  loc_C0E1C8: LitStr " FROM imputacion i"
  loc_C0E1CB: ConcatStr
  loc_C0E1CC: FStStrNoPop var_A4
  loc_C0E1CF: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C0E1D2: ConcatStr
  loc_C0E1D3: FStStrNoPop var_E8
  loc_C0E1D6: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_C0E1D9: ConcatStr
  loc_C0E1DA: FStStrNoPop var_EC
  loc_C0E1DD: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0E1E0: ConcatStr
  loc_C0E1E1: FStStrNoPop var_F0
  loc_C0E1E4: LitStr " AND PagaImpu != 0"
  loc_C0E1E7: ConcatStr
  loc_C0E1E8: FStStrNoPop var_F4
  loc_C0E1EB: LitStr " AND AjusImpu = 0"
  loc_C0E1EE: ConcatStr
  loc_C0E1EF: FStStrNoPop var_F8
  loc_C0E1F2: LitStr " AND Month(i.FechImpu)"
  loc_C0E1F5: ConcatStr
  loc_C0E1F6: FStStrNoPop var_FC
  loc_C0E1F9: ILdRf Anexos_IX_mensual
  loc_C0E1FC: ConcatStr
  loc_C0E1FD: FStStrNoPop var_100
  loc_C0E200: LitStr " AND i.FechImpu <= "
  loc_C0E203: ConcatStr
  loc_C0E204: CVarStr var_E4
  loc_C0E207: LitI4 1
  loc_C0E20C: LitI4 1
  loc_C0E211: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E216: FStVarCopyObj var_C4
  loc_C0E219: FLdRfVar var_C4
  loc_C0E21C: FLdRfVar var_9C
  loc_C0E21F: CVarRef
  loc_C0E224: FLdRfVar var_D4
  loc_C0E227: ImpAdCallFPR4  = Format(, )
  loc_C0E22C: FLdRfVar var_D4
  loc_C0E22F: ConcatVar var_14C
  loc_C0E233: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E238: ConcatVar var_16C
  loc_C0E23C: CStrVarVal var_104
  loc_C0E240: Call EjecutarRsCls(from_stack_1v)
  loc_C0E245: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0E25C: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E269: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E26C: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, Sum(DeveImpu), 0"
  loc_C0E26F: ConcatStr
  loc_C0E270: FStStrNoPop var_A0
  loc_C0E273: LitStr " FROM imputacion i"
  loc_C0E276: ConcatStr
  loc_C0E277: FStStrNoPop var_A4
  loc_C0E27A: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C0E27D: ConcatStr
  loc_C0E27E: FStStrNoPop var_E8
  loc_C0E281: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_C0E284: ConcatStr
  loc_C0E285: FStStrNoPop var_EC
  loc_C0E288: LitStr "/* AND cc.CodiTicu NOT IN ('1120') */"
  loc_C0E28B: ConcatStr
  loc_C0E28C: FStStrNoPop var_F0
  loc_C0E28F: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_C0E292: ConcatStr
  loc_C0E293: FStStrNoPop var_F4
  loc_C0E296: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0E299: ConcatStr
  loc_C0E29A: FStStrNoPop var_F8
  loc_C0E29D: LitStr " AND AjusImpu > 0"
  loc_C0E2A0: ConcatStr
  loc_C0E2A1: FStStrNoPop var_FC
  loc_C0E2A4: LitStr " AND Month(i.FechImpu)"
  loc_C0E2A7: ConcatStr
  loc_C0E2A8: FStStrNoPop var_100
  loc_C0E2AB: ILdRf Anexos_IX_mensual
  loc_C0E2AE: ConcatStr
  loc_C0E2AF: FStStrNoPop var_104
  loc_C0E2B2: LitStr " AND i.FechImpu <= "
  loc_C0E2B5: ConcatStr
  loc_C0E2B6: CVarStr var_E4
  loc_C0E2B9: LitI4 1
  loc_C0E2BE: LitI4 1
  loc_C0E2C3: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E2C8: FStVarCopyObj var_C4
  loc_C0E2CB: FLdRfVar var_C4
  loc_C0E2CE: FLdRfVar var_9C
  loc_C0E2D1: CVarRef
  loc_C0E2D6: FLdRfVar var_D4
  loc_C0E2D9: ImpAdCallFPR4  = Format(, )
  loc_C0E2DE: FLdRfVar var_D4
  loc_C0E2E1: ConcatVar var_14C
  loc_C0E2E5: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E2EA: ConcatVar var_16C
  loc_C0E2EE: CStrVarVal var_108
  loc_C0E2F2: Call EjecutarRsCls(from_stack_1v)
  loc_C0E2F7: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C0E310: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E31D: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E320: LitStr " SELECT cc.PeriInfo, d.CodiCuco, CodiTicu, 0, 0, Sum(DeveImpu)"
  loc_C0E323: ConcatStr
  loc_C0E324: FStStrNoPop var_A0
  loc_C0E327: LitStr " FROM imputacion i"
  loc_C0E32A: ConcatStr
  loc_C0E32B: FStStrNoPop var_A4
  loc_C0E32E: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_C0E331: ConcatStr
  loc_C0E332: FStStrNoPop var_E8
  loc_C0E335: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = d.PeriInfo AND cc.CodiCuco = d.CodiCuco"
  loc_C0E338: ConcatStr
  loc_C0E339: FStStrNoPop var_EC
  loc_C0E33C: LitStr " AND cc.CodiTicu NOT IN ('1120')"
  loc_C0E33F: ConcatStr
  loc_C0E340: FStStrNoPop var_F0
  loc_C0E343: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0E346: ConcatStr
  loc_C0E347: FStStrNoPop var_F4
  loc_C0E34A: LitStr " AND AjusImpu > 0"
  loc_C0E34D: ConcatStr
  loc_C0E34E: FStStrNoPop var_F8
  loc_C0E351: LitStr " AND Month(i.FechImpu)"
  loc_C0E354: ConcatStr
  loc_C0E355: FStStrNoPop var_FC
  loc_C0E358: ILdRf Anexos_IX_mensual
  loc_C0E35B: ConcatStr
  loc_C0E35C: FStStrNoPop var_100
  loc_C0E35F: LitStr " AND i.FechImpu <= "
  loc_C0E362: ConcatStr
  loc_C0E363: CVarStr var_E4
  loc_C0E366: LitI4 1
  loc_C0E36B: LitI4 1
  loc_C0E370: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E375: FStVarCopyObj var_C4
  loc_C0E378: FLdRfVar var_C4
  loc_C0E37B: FLdRfVar var_9C
  loc_C0E37E: CVarRef
  loc_C0E383: FLdRfVar var_D4
  loc_C0E386: ImpAdCallFPR4  = Format(, )
  loc_C0E38B: FLdRfVar var_D4
  loc_C0E38E: ConcatVar var_14C
  loc_C0E392: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E397: ConcatVar var_16C
  loc_C0E39B: CStrVarVal var_104
  loc_C0E39F: Call EjecutarRsCls(from_stack_1v)
  loc_C0E3A4: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0E3BB: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E3C8: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E3CB: LitStr " SELECT tbl.PeriInfo, lqd.CodiCuco, CodiTicu, 0, Sum(ImpoImpu), 0"
  loc_C0E3CE: ConcatStr
  loc_C0E3CF: FStStrNoPop var_A0
  loc_C0E3D2: LitStr " FROM ("
  loc_C0E3D5: ConcatStr
  loc_C0E3D6: FStStrNoPop var_A4
  loc_C0E3D9: LitStr " SELECT PeriInfo, ExpeImpu, NumeLiqu, CucuPers"
  loc_C0E3DC: ConcatStr
  loc_C0E3DD: FStStrNoPop var_E8
  loc_C0E3E0: LitStr " FROM liquidaneto"
  loc_C0E3E3: ConcatStr
  loc_C0E3E4: FStStrNoPop var_EC
  loc_C0E3E7: LitStr " WHERE PeriInfo = @peri"
  loc_C0E3EA: ConcatStr
  loc_C0E3EB: FStStrNoPop var_F0
  loc_C0E3EE: LitStr " AND Month(FechCaja)"
  loc_C0E3F1: ConcatStr
  loc_C0E3F2: FStStrNoPop var_F4
  loc_C0E3F5: ILdRf Anexos_IX_mensual
  loc_C0E3F8: ConcatStr
  loc_C0E3F9: FStStrNoPop var_F8
  loc_C0E3FC: LitStr " AND FechCaja <= "
  loc_C0E3FF: ConcatStr
  loc_C0E400: CVarStr var_E4
  loc_C0E403: LitI4 1
  loc_C0E408: LitI4 1
  loc_C0E40D: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E412: FStVarCopyObj var_C4
  loc_C0E415: FLdRfVar var_C4
  loc_C0E418: FLdRfVar var_9C
  loc_C0E41B: CVarRef
  loc_C0E420: FLdRfVar var_D4
  loc_C0E423: ImpAdCallFPR4  = Format(, )
  loc_C0E428: FLdRfVar var_D4
  loc_C0E42B: ConcatVar var_14C
  loc_C0E42F: LitVarStr var_15C, " GROUP BY PeriInfo, ExpeImpu, NumeLiqu, CucuPers"
  loc_C0E434: ConcatVar var_16C
  loc_C0E438: LitVarStr var_17C, " ) AS tbl"
  loc_C0E43D: ConcatVar var_18C
  loc_C0E441: LitVarStr var_19C, " INNER JOIN liquidacion l on l.PeriInfo = tbl.PeriInfo AND l.ExpeImpu = tbl.ExpeImpu AND l.NumeLiqu = tbl.NumeLiqu"
  loc_C0E446: ConcatVar var_1AC
  loc_C0E44A: LitVarStr var_1C4, " AND l.TipoLiqu = 2"
  loc_C0E44F: ConcatVar var_1D4
  loc_C0E453: LitVarStr var_1E4, " INNER JOIN liquidadeta lqd ON lqd.PeriInfo = @peri AND lqd.ExpeImpu = l.ExpeImpu AND lqd.NumeLiqu = l.NumeLiqu"
  loc_C0E458: ConcatVar var_1F4
  loc_C0E45C: LitVarStr var_204, " AND lqd.CucuPers = tbl.CucuPers"
  loc_C0E461: ConcatVar var_214
  loc_C0E465: LitVarStr var_224, " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = lqd.PeriInfo AND cc.CodiCuco = lqd.CodiCuco"
  loc_C0E46A: ConcatVar var_234
  loc_C0E46E: LitVarStr var_244, " AND CodiTicu NOT IN "
  loc_C0E473: ConcatVar var_254
  loc_C0E477: ILdRf var_8C
  loc_C0E47A: CVarStr var_264
  loc_C0E47D: ConcatVar var_274
  loc_C0E481: LitVarStr var_284, " AND CodiTicu NOT LIKE '5" & Chr(37) & "'"
  loc_C0E486: ConcatVar var_294
  loc_C0E48A: LitVarStr var_2A4, " AND CodiTicu NOT LIKE '7" & Chr(37) & "'"
  loc_C0E48F: ConcatVar var_2B4
  loc_C0E493: LitVarStr var_2C4, " GROUP BY CodiCuco;"
  loc_C0E498: ConcatVar var_2D4
  loc_C0E49C: CStrVarVal var_FC
  loc_C0E4A0: Call EjecutarRsCls(from_stack_1v)
  loc_C0E4A5: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C0E4B8: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_254 = "": var_274 = "": var_294 = "": var_2B4 = ""
  loc_C0E4DB: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E4DE: LitStr " SELECT lqn.PeriInfo, lqn.CodiCuco, CodiTicu, 0, 0, Sum(ImpoLine)"
  loc_C0E4E1: ConcatStr
  loc_C0E4E2: FStStrNoPop var_A0
  loc_C0E4E5: LitStr " FROM liquidaneto lqn"
  loc_C0E4E8: ConcatStr
  loc_C0E4E9: FStStrNoPop var_A4
  loc_C0E4EC: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = lqn.PeriInfo AND cc.CodiCuco = lqn.CodiCuco"
  loc_C0E4EF: ConcatStr
  loc_C0E4F0: FStStrNoPop var_E8
  loc_C0E4F3: LitStr " WHERE lqn.PeriInfo = @peri"
  loc_C0E4F6: ConcatStr
  loc_C0E4F7: FStStrNoPop var_EC
  loc_C0E4FA: LitStr " AND Month(FechCaja)"
  loc_C0E4FD: ConcatStr
  loc_C0E4FE: FStStrNoPop var_F0
  loc_C0E501: ILdRf Anexos_IX_mensual
  loc_C0E504: ConcatStr
  loc_C0E505: FStStrNoPop var_F4
  loc_C0E508: LitStr " AND FechCaja <= "
  loc_C0E50B: ConcatStr
  loc_C0E50C: CVarStr var_E4
  loc_C0E50F: LitI4 1
  loc_C0E514: LitI4 1
  loc_C0E519: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E51E: FStVarCopyObj var_C4
  loc_C0E521: FLdRfVar var_C4
  loc_C0E524: FLdRfVar var_9C
  loc_C0E527: CVarRef
  loc_C0E52C: FLdRfVar var_D4
  loc_C0E52F: ImpAdCallFPR4  = Format(, )
  loc_C0E534: FLdRfVar var_D4
  loc_C0E537: ConcatVar var_14C
  loc_C0E53B: LitVarStr var_15C, " AND CodiTicu NOT IN ('1120','1140')"
  loc_C0E540: ConcatVar var_16C
  loc_C0E544: LitVarStr var_17C, " AND lqn.CodiRete > 0"
  loc_C0E549: ConcatVar var_18C
  loc_C0E54D: LitVarStr var_19C, " GROUP BY CodiCuco;"
  loc_C0E552: ConcatVar var_1AC
  loc_C0E556: CStrVarVal var_F8
  loc_C0E55A: Call EjecutarRsCls(from_stack_1v)
  loc_C0E55F: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0E570: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = ""
  loc_C0E581: LitStr "Municipalidad de Guaymallén"
  loc_C0E584: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C0E587: EqStr
  loc_C0E589: BranchF loc_C0E5E2
  loc_C0E58C: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E58F: LitStr " SELECT i.PeriInfo, i.CodiCuco, CodiTicu, 0, 0, Sum(ImpoIngr)"
  loc_C0E592: ConcatStr
  loc_C0E593: FStStrNoPop var_A0
  loc_C0E596: LitStr " FROM ingreso i"
  loc_C0E599: ConcatStr
  loc_C0E59A: FStStrNoPop var_A4
  loc_C0E59D: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = i.PeriInfo AND cc.CodiCuco = i.CodiCuco"
  loc_C0E5A0: ConcatStr
  loc_C0E5A1: FStStrNoPop var_E8
  loc_C0E5A4: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_C0E5A7: ConcatStr
  loc_C0E5A8: FStStrNoPop var_EC
  loc_C0E5AB: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0E5AE: ConcatStr
  loc_C0E5AF: FStStrNoPop var_F0
  loc_C0E5B2: LitStr " AND MONTH(FechIngr)"
  loc_C0E5B5: ConcatStr
  loc_C0E5B6: FStStrNoPop var_F4
  loc_C0E5B9: ILdRf Anexos_IX_mensual
  loc_C0E5BC: ConcatStr
  loc_C0E5BD: FStStrNoPop var_F8
  loc_C0E5C0: LitStr " and i.CodiCuco not in ('6120000000','6310400000') GROUP BY CodiCuco;"
  loc_C0E5C3: ConcatStr
  loc_C0E5C4: FStStrNoPop var_FC
  loc_C0E5C7: Call EjecutarRsCls(from_stack_1v)
  loc_C0E5CC: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C0E5DF: Branch loc_C0E67B
  loc_C0E5E2: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E5E5: LitStr " SELECT i.PeriInfo, i.CodiCuco, CodiTicu, 0, 0, Sum(ImpoIngr)"
  loc_C0E5E8: ConcatStr
  loc_C0E5E9: FStStrNoPop var_A0
  loc_C0E5EC: LitStr " FROM ingreso i"
  loc_C0E5EF: ConcatStr
  loc_C0E5F0: FStStrNoPop var_A4
  loc_C0E5F3: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = i.PeriInfo AND cc.CodiCuco = i.CodiCuco"
  loc_C0E5F6: ConcatStr
  loc_C0E5F7: FStStrNoPop var_E8
  loc_C0E5FA: LitStr " AND (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "')"
  loc_C0E5FD: ConcatStr
  loc_C0E5FE: FStStrNoPop var_EC
  loc_C0E601: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0E604: ConcatStr
  loc_C0E605: FStStrNoPop var_F0
  loc_C0E608: LitStr " AND Month(FechIngr)"
  loc_C0E60B: ConcatStr
  loc_C0E60C: FStStrNoPop var_F4
  loc_C0E60F: ILdRf Anexos_IX_mensual
  loc_C0E612: ConcatStr
  loc_C0E613: FStStrNoPop var_F8
  loc_C0E616: LitStr " AND FechIngr <= "
  loc_C0E619: ConcatStr
  loc_C0E61A: CVarStr var_E4
  loc_C0E61D: LitI4 1
  loc_C0E622: LitI4 1
  loc_C0E627: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E62C: FStVarCopyObj var_C4
  loc_C0E62F: FLdRfVar var_C4
  loc_C0E632: FLdRfVar var_9C
  loc_C0E635: CVarRef
  loc_C0E63A: FLdRfVar var_D4
  loc_C0E63D: ImpAdCallFPR4  = Format(, )
  loc_C0E642: FLdRfVar var_D4
  loc_C0E645: ConcatVar var_14C
  loc_C0E649: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E64E: ConcatVar var_16C
  loc_C0E652: CStrVarVal var_FC
  loc_C0E656: Call EjecutarRsCls(from_stack_1v)
  loc_C0E65B: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C0E66E: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E67B: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E67E: LitStr " SELECT i.PeriInfo, i.CodiCuco, CodiTicu, 0, IF(Sum(ImpoIngr)<0,Sum(ImpoIngr)*-1,0) MoviFonD, IF(Sum(ImpoIngr)>0,Sum(ImpoIngr),0) MoviFonH"
  loc_C0E681: ConcatStr
  loc_C0E682: FStStrNoPop var_A0
  loc_C0E685: LitStr " FROM ingreso i"
  loc_C0E688: ConcatStr
  loc_C0E689: FStStrNoPop var_A4
  loc_C0E68C: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = i.PeriInfo AND cc.CodiCuco = i.CodiCuco"
  loc_C0E68F: ConcatStr
  loc_C0E690: FStStrNoPop var_E8
  loc_C0E693: LitStr " AND NOT (CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' OR CodiTicu IN "
  loc_C0E696: ConcatStr
  loc_C0E697: FStStrNoPop var_EC
  loc_C0E69A: ILdRf var_8C
  loc_C0E69D: ConcatStr
  loc_C0E69E: FStStrNoPop var_F0
  loc_C0E6A1: LitStr " )"
  loc_C0E6A4: ConcatStr
  loc_C0E6A5: FStStrNoPop var_F4
  loc_C0E6A8: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0E6AB: ConcatStr
  loc_C0E6AC: FStStrNoPop var_F8
  loc_C0E6AF: LitStr " AND Month(FechIngr)"
  loc_C0E6B2: ConcatStr
  loc_C0E6B3: FStStrNoPop var_FC
  loc_C0E6B6: ILdRf Anexos_IX_mensual
  loc_C0E6B9: ConcatStr
  loc_C0E6BA: FStStrNoPop var_100
  loc_C0E6BD: LitStr " AND FechIngr <= "
  loc_C0E6C0: ConcatStr
  loc_C0E6C1: CVarStr var_E4
  loc_C0E6C4: LitI4 1
  loc_C0E6C9: LitI4 1
  loc_C0E6CE: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E6D3: FStVarCopyObj var_C4
  loc_C0E6D6: FLdRfVar var_C4
  loc_C0E6D9: FLdRfVar var_9C
  loc_C0E6DC: CVarRef
  loc_C0E6E1: FLdRfVar var_D4
  loc_C0E6E4: ImpAdCallFPR4  = Format(, )
  loc_C0E6E9: FLdRfVar var_D4
  loc_C0E6EC: ConcatVar var_14C
  loc_C0E6F0: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E6F5: ConcatVar var_16C
  loc_C0E6F9: CStrVarVal var_104
  loc_C0E6FD: Call EjecutarRsCls(from_stack_1v)
  loc_C0E702: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0E719: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E726: LitStr "Municipalidad de Guaymallén"
  loc_C0E729: LitStr "Municipalidad de General Alvear"
  loc_C0E72C: EqStr
  loc_C0E72E: BranchF loc_C0E7CD
  loc_C0E731: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E734: LitStr " SELECT mb.PeriInfo, mb.CodiCuco, CodiTicu, 0, IF(Sum(HabeMoba-DebeMoba)>0,Sum(HabeMoba-DebeMoba),0) MoviFonD, IF(Sum(DebeMoba-HabeMoba)>0,Sum(DebeMoba-HabeMoba),0) MoviFonH"
  loc_C0E737: ConcatStr
  loc_C0E738: FStStrNoPop var_A0
  loc_C0E73B: LitStr " FROM movibanco mb"
  loc_C0E73E: ConcatStr
  loc_C0E73F: FStStrNoPop var_A4
  loc_C0E742: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = mb.PeriInfo AND pc.CajaPaco != mb.CodiCuco"
  loc_C0E745: ConcatStr
  loc_C0E746: FStStrNoPop var_E8
  loc_C0E749: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mb.PeriInfo AND cc.CodiCuco = mb.CodiCuco"
  loc_C0E74C: ConcatStr
  loc_C0E74D: FStStrNoPop var_EC
  loc_C0E750: LitStr " WHERE mb.PeriInfo = @peri"
  loc_C0E753: ConcatStr
  loc_C0E754: FStStrNoPop var_F0
  loc_C0E757: LitStr " AND Month(FechMoba)"
  loc_C0E75A: ConcatStr
  loc_C0E75B: FStStrNoPop var_F4
  loc_C0E75E: ILdRf Anexos_IX_mensual
  loc_C0E761: ConcatStr
  loc_C0E762: FStStrNoPop var_F8
  loc_C0E765: LitStr " AND FechMoba <= "
  loc_C0E768: ConcatStr
  loc_C0E769: CVarStr var_E4
  loc_C0E76C: LitI4 1
  loc_C0E771: LitI4 1
  loc_C0E776: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E77B: FStVarCopyObj var_C4
  loc_C0E77E: FLdRfVar var_C4
  loc_C0E781: FLdRfVar var_9C
  loc_C0E784: CVarRef
  loc_C0E789: FLdRfVar var_D4
  loc_C0E78C: ImpAdCallFPR4  = Format(, )
  loc_C0E791: FLdRfVar var_D4
  loc_C0E794: ConcatVar var_14C
  loc_C0E798: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E79D: ConcatVar var_16C
  loc_C0E7A1: CStrVarVal var_FC
  loc_C0E7A5: Call EjecutarRsCls(from_stack_1v)
  loc_C0E7AA: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C0E7BD: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E7CA: Branch loc_C0E947
  loc_C0E7CD: LitStr "Municipalidad de Guaymallén"
  loc_C0E7D0: LitStr "Municipalidad de Santa Rosa"
  loc_C0E7D3: EqStr
  loc_C0E7D5: BranchF loc_C0E891
  loc_C0E7D8: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E7DB: LitStr " SELECT mb.PeriInfo, mb.CodiCuco, CodiTicu, 0, IF(Sum(HabeMoba-DebeMoba)>0,Sum(HabeMoba-DebeMoba),0) MoviFonD, IF(Sum(DebeMoba-HabeMoba)>0,Sum(DebeMoba-HabeMoba),0) MoviFonH"
  loc_C0E7DE: ConcatStr
  loc_C0E7DF: FStStrNoPop var_A0
  loc_C0E7E2: LitStr " FROM movibanco mb"
  loc_C0E7E5: ConcatStr
  loc_C0E7E6: FStStrNoPop var_A4
  loc_C0E7E9: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = mb.PeriInfo AND pc.CajaPaco != mb.CodiCuco"
  loc_C0E7EC: ConcatStr
  loc_C0E7ED: FStStrNoPop var_E8
  loc_C0E7F0: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mb.PeriInfo AND cc.CodiCuco = mb.CodiCuco"
  loc_C0E7F3: ConcatStr
  loc_C0E7F4: FStStrNoPop var_EC
  loc_C0E7F7: LitStr " AND cc.CodiTicu != '1140'"
  loc_C0E7FA: ConcatStr
  loc_C0E7FB: FStStrNoPop var_F0
  loc_C0E7FE: LitStr " AND cc.CodiTicu != '1120'"
  loc_C0E801: ConcatStr
  loc_C0E802: FStStrNoPop var_F4
  loc_C0E805: LitStr " WHERE mb.PeriInfo = @peri"
  loc_C0E808: ConcatStr
  loc_C0E809: FStStrNoPop var_F8
  loc_C0E80C: LitStr " AND Month(FechMoba)"
  loc_C0E80F: ConcatStr
  loc_C0E810: FStStrNoPop var_FC
  loc_C0E813: ILdRf Anexos_IX_mensual
  loc_C0E816: ConcatStr
  loc_C0E817: FStStrNoPop var_100
  loc_C0E81A: LitStr " AND FechMoba <= "
  loc_C0E81D: ConcatStr
  loc_C0E81E: CVarStr var_E4
  loc_C0E821: LitI4 1
  loc_C0E826: LitI4 1
  loc_C0E82B: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E830: FStVarCopyObj var_C4
  loc_C0E833: FLdRfVar var_C4
  loc_C0E836: FLdRfVar var_9C
  loc_C0E839: CVarRef
  loc_C0E83E: FLdRfVar var_D4
  loc_C0E841: ImpAdCallFPR4  = Format(, )
  loc_C0E846: FLdRfVar var_D4
  loc_C0E849: ConcatVar var_14C
  loc_C0E84D: LitVarStr var_15C, " AND mb.FechMoba != '2021-05-31'"
  loc_C0E852: ConcatVar var_16C
  loc_C0E856: LitVarStr var_17C, " GROUP BY CodiCuco;"
  loc_C0E85B: ConcatVar var_18C
  loc_C0E85F: CStrVarVal var_104
  loc_C0E863: Call EjecutarRsCls(from_stack_1v)
  loc_C0E868: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0E87F: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = ""
  loc_C0E88E: Branch loc_C0E947
  loc_C0E891: LitStr "Municipalidad de Guaymallén"
  loc_C0E894: LitStr "Municipalidad de La Paz"
  loc_C0E897: EqStr
  loc_C0E899: LitStr "Municipalidad de Guaymallén"
  loc_C0E89C: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C0E89F: EqStr
  loc_C0E8A1: OrI4
  loc_C0E8A2: BranchF loc_C0E947
  loc_C0E8A5: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E8A8: LitStr " SELECT mb.PeriInfo, mb.CodiCuco, CodiTicu, 0, IF(Sum(HabeMoba-DebeMoba)>0,Sum(HabeMoba-DebeMoba),0) MoviFonD, IF(Sum(DebeMoba-HabeMoba)>0,Sum(DebeMoba-HabeMoba),0) MoviFonH"
  loc_C0E8AB: ConcatStr
  loc_C0E8AC: FStStrNoPop var_A0
  loc_C0E8AF: LitStr " FROM movibanco mb"
  loc_C0E8B2: ConcatStr
  loc_C0E8B3: FStStrNoPop var_A4
  loc_C0E8B6: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = mb.PeriInfo AND pc.CajaPaco != mb.CodiCuco"
  loc_C0E8B9: ConcatStr
  loc_C0E8BA: FStStrNoPop var_E8
  loc_C0E8BD: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mb.PeriInfo AND cc.CodiCuco = mb.CodiCuco"
  loc_C0E8C0: ConcatStr
  loc_C0E8C1: FStStrNoPop var_EC
  loc_C0E8C4: LitStr "  AND cc.CodiTicu != '1140' "
  loc_C0E8C7: ConcatStr
  loc_C0E8C8: FStStrNoPop var_F0
  loc_C0E8CB: LitStr " WHERE mb.PeriInfo = @peri"
  loc_C0E8CE: ConcatStr
  loc_C0E8CF: FStStrNoPop var_F4
  loc_C0E8D2: LitStr " AND Month(FechMoba)"
  loc_C0E8D5: ConcatStr
  loc_C0E8D6: FStStrNoPop var_F8
  loc_C0E8D9: ILdRf Anexos_IX_mensual
  loc_C0E8DC: ConcatStr
  loc_C0E8DD: FStStrNoPop var_FC
  loc_C0E8E0: LitStr " AND FechMoba <= "
  loc_C0E8E3: ConcatStr
  loc_C0E8E4: CVarStr var_E4
  loc_C0E8E7: LitI4 1
  loc_C0E8EC: LitI4 1
  loc_C0E8F1: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E8F6: FStVarCopyObj var_C4
  loc_C0E8F9: FLdRfVar var_C4
  loc_C0E8FC: FLdRfVar var_9C
  loc_C0E8FF: CVarRef
  loc_C0E904: FLdRfVar var_D4
  loc_C0E907: ImpAdCallFPR4  = Format(, )
  loc_C0E90C: FLdRfVar var_D4
  loc_C0E90F: ConcatVar var_14C
  loc_C0E913: LitVarStr var_15C, " GROUP BY CodiCuco;"
  loc_C0E918: ConcatVar var_16C
  loc_C0E91C: CStrVarVal var_100
  loc_C0E920: Call EjecutarRsCls(from_stack_1v)
  loc_C0E925: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C0E93A: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E947: LitStr "Municipalidad de Guaymallén"
  loc_C0E94A: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_C0E94D: EqStr
  loc_C0E94F: BranchF loc_C0E955
  loc_C0E952: Branch loc_C0E9F7
  loc_C0E955: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E958: LitStr " SELECT mb.PeriInfo, b.CodiCuco, CodiTicu, 0, IF(Sum(DebeMoba-HabeMoba)>0,Sum(DebeMoba-HabeMoba),0) MoviFonD, IF(Sum(HabeMoba-DebeMoba)>0,Sum(HabeMoba-DebeMoba),0) MoviFonH"
  loc_C0E95B: ConcatStr
  loc_C0E95C: FStStrNoPop var_A0
  loc_C0E95F: LitStr " FROM banco b"
  loc_C0E962: ConcatStr
  loc_C0E963: FStStrNoPop var_A4
  loc_C0E966: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = b.PeriInfo AND cc.CodiCuco = b.CodiCuco"
  loc_C0E969: ConcatStr
  loc_C0E96A: FStStrNoPop var_E8
  loc_C0E96D: LitStr " AND CodiTicu = '1140'"
  loc_C0E970: ConcatStr
  loc_C0E971: FStStrNoPop var_EC
  loc_C0E974: LitStr " INNER JOIN movibanco mb ON mb.PeriInfo = b.PeriInfo AND mb.CodiBanc = b.CodiBanc"
  loc_C0E977: ConcatStr
  loc_C0E978: FStStrNoPop var_F0
  loc_C0E97B: LitStr " WHERE b.PeriInfo = @peri"
  loc_C0E97E: ConcatStr
  loc_C0E97F: FStStrNoPop var_F4
  loc_C0E982: LitStr " AND Month(FechMoba)"
  loc_C0E985: ConcatStr
  loc_C0E986: FStStrNoPop var_F8
  loc_C0E989: ILdRf Anexos_IX_mensual
  loc_C0E98C: ConcatStr
  loc_C0E98D: FStStrNoPop var_FC
  loc_C0E990: LitStr " AND FechMoba <= "
  loc_C0E993: ConcatStr
  loc_C0E994: CVarStr var_E4
  loc_C0E997: LitI4 1
  loc_C0E99C: LitI4 1
  loc_C0E9A1: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0E9A6: FStVarCopyObj var_C4
  loc_C0E9A9: FLdRfVar var_C4
  loc_C0E9AC: FLdRfVar var_9C
  loc_C0E9AF: CVarRef
  loc_C0E9B4: FLdRfVar var_D4
  loc_C0E9B7: ImpAdCallFPR4  = Format(, )
  loc_C0E9BC: FLdRfVar var_D4
  loc_C0E9BF: ConcatVar var_14C
  loc_C0E9C3: LitVarStr var_15C, " GROUP BY b.CodiBanc;"
  loc_C0E9C8: ConcatVar var_16C
  loc_C0E9CC: CStrVarVal var_100
  loc_C0E9D0: Call EjecutarRsCls(from_stack_1v)
  loc_C0E9D5: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C0E9EA: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = ""
  loc_C0E9F7: Branch loc_C0ECA7
  loc_C0E9FA: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0E9FD: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0EA00: ConcatStr
  loc_C0EA01: FStStrNoPop var_A0
  loc_C0EA04: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0EA07: ConcatStr
  loc_C0EA08: FStStrNoPop var_A4
  loc_C0EA0B: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0EA0E: ConcatStr
  loc_C0EA0F: FStStrNoPop var_E8
  loc_C0EA12: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN (17,18,31,32,33,34) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0EA15: ConcatStr
  loc_C0EA16: FStStrNoPop var_EC
  loc_C0EA19: LitStr " WHEN CodiTicu IN ('1140','1170') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0)),0)"
  loc_C0EA1C: ConcatStr
  loc_C0EA1D: FStStrNoPop var_F0
  loc_C0EA20: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_C0EA23: ConcatStr
  loc_C0EA24: FStStrNoPop var_F4
  loc_C0EA27: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0EA2A: ConcatStr
  loc_C0EA2B: FStStrNoPop var_F8
  loc_C0EA2E: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_C0EA31: ConcatStr
  loc_C0EA32: FStStrNoPop var_FC
  loc_C0EA35: LitStr " WHEN CodiTicu IN ('2114','2115') and month(asiento.FechAsie) = 12 AND mv.CodiCuco != '211070100' AND mv.CodiCuco != '211070200' THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_C0EA38: ConcatStr
  loc_C0EA39: FStStrNoPop var_100
  loc_C0EA3C: LitStr " WHEN CodiTicu IN ('2114','2115') and month(asiento.FechAsie) != 12 THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_C0EA3F: ConcatStr
  loc_C0EA40: FStStrNoPop var_104
  loc_C0EA43: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_C0EA46: ConcatStr
  loc_C0EA47: FStStrNoPop var_108
  loc_C0EA4A: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0EA4D: ConcatStr
  loc_C0EA4E: FStStrNoPop var_10C
  loc_C0EA51: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0EA54: ConcatStr
  loc_C0EA55: FStStrNoPop var_110
  loc_C0EA58: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0)),0)"
  loc_C0EA5B: ConcatStr
  loc_C0EA5C: FStStrNoPop var_114
  loc_C0EA5F: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0EA62: ConcatStr
  loc_C0EA63: FStStrNoPop var_118
  loc_C0EA66: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0EA69: ConcatStr
  loc_C0EA6A: FStStrNoPop var_11C
  loc_C0EA6D: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0EA70: ConcatStr
  loc_C0EA71: FStStrNoPop var_120
  loc_C0EA74: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0EA77: ConcatStr
  loc_C0EA78: FStStrNoPop var_124
  loc_C0EA7B: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0EA7E: ConcatStr
  loc_C0EA7F: FStStrNoPop var_128
  loc_C0EA82: LitStr " ELSE 0"
  loc_C0EA85: ConcatStr
  loc_C0EA86: FStStrNoPop var_12C
  loc_C0EA89: LitStr " END MoviFonD /*egresos*/"
  loc_C0EA8C: ConcatStr
  loc_C0EA8D: FStStr var_90
  loc_C0EA90: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0EABB: ILdRf var_90
  loc_C0EABE: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0EAC1: ConcatStr
  loc_C0EAC2: FStStrNoPop var_A0
  loc_C0EAC5: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0EAC8: ConcatStr
  loc_C0EAC9: FStStrNoPop var_A4
  loc_C0EACC: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN(17,18,31,32,33,34) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0EACF: ConcatStr
  loc_C0EAD0: FStStrNoPop var_E8
  loc_C0EAD3: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_C0EAD6: ConcatStr
  loc_C0EAD7: FStStrNoPop var_EC
  loc_C0EADA: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_C0EADD: ConcatStr
  loc_C0EADE: FStStrNoPop var_F0
  loc_C0EAE1: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0EAE4: ConcatStr
  loc_C0EAE5: FStStrNoPop var_F4
  loc_C0EAE8: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_C0EAEB: ConcatStr
  loc_C0EAEC: FStStrNoPop var_F8
  loc_C0EAEF: LitStr " WHEN CodiTicu IN ('2114','2115') and month(asiento.FechAsie) = 12 AND mv.CodiCuco != '211070100' AND mv.CodiCuco != '211070200' THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_C0EAF2: ConcatStr
  loc_C0EAF3: FStStrNoPop var_FC
  loc_C0EAF6: LitStr " WHEN CodiTicu IN ('2114','2115') and month(asiento.FechAsie) != 12 THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_C0EAF9: ConcatStr
  loc_C0EAFA: FStStrNoPop var_100
  loc_C0EAFD: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_C0EB00: ConcatStr
  loc_C0EB01: FStStrNoPop var_104
  loc_C0EB04: LitStr " WHEN CodiTicu IN ('2117') THEN Sum(If(CodiTias IN (13),HabeMoas-DebeMoas,0))"
  loc_C0EB07: ConcatStr
  loc_C0EB08: FStStrNoPop var_108
  loc_C0EB0B: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0EB0E: ConcatStr
  loc_C0EB0F: FStStrNoPop var_10C
  loc_C0EB12: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0EB15: ConcatStr
  loc_C0EB16: FStStrNoPop var_110
  loc_C0EB19: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0)),0)"
  loc_C0EB1C: ConcatStr
  loc_C0EB1D: FStStrNoPop var_114
  loc_C0EB20: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0EB23: ConcatStr
  loc_C0EB24: FStStrNoPop var_118
  loc_C0EB27: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0EB2A: ConcatStr
  loc_C0EB2B: FStStrNoPop var_11C
  loc_C0EB2E: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0EB31: ConcatStr
  loc_C0EB32: FStStrNoPop var_120
  loc_C0EB35: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0EB38: ConcatStr
  loc_C0EB39: FStStrNoPop var_124
  loc_C0EB3C: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0EB3F: ConcatStr
  loc_C0EB40: FStStrNoPop var_128
  loc_C0EB43: LitStr " ELSE 0"
  loc_C0EB46: ConcatStr
  loc_C0EB47: FStStrNoPop var_12C
  loc_C0EB4A: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0EB4D: ConcatStr
  loc_C0EB4E: FStStr var_90
  loc_C0EB51: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_C0EB7C: ILdRf var_90
  loc_C0EB7F: LitStr " FROM asiento"
  loc_C0EB82: ConcatStr
  loc_C0EB83: FStStrNoPop var_A0
  loc_C0EB86: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0EB89: ConcatStr
  loc_C0EB8A: FStStrNoPop var_A4
  loc_C0EB8D: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0EB90: ConcatStr
  loc_C0EB91: FStStrNoPop var_E8
  loc_C0EB94: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0EB97: ConcatStr
  loc_C0EB98: FStStrNoPop var_EC
  loc_C0EB9B: LitStr " AND Month(asiento.FechAsie)"
  loc_C0EB9E: ConcatStr
  loc_C0EB9F: FStStrNoPop var_F0
  loc_C0EBA2: ILdRf Anexos_IX_mensual
  loc_C0EBA5: ConcatStr
  loc_C0EBA6: FStStrNoPop var_F4
  loc_C0EBA9: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0EBAC: ConcatStr
  loc_C0EBAD: FStStrNoPop var_F8
  loc_C0EBB0: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0EBB3: ConcatStr
  loc_C0EBB4: FStStr var_90
  loc_C0EBB7: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0EBC8: ILdRf var_90
  loc_C0EBCB: Call EjecutarRsCls(from_stack_1v)
  loc_C0EBD0: LitStr "INSERT INTO ttemp "
  loc_C0EBD3: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0EBD6: ConcatStr
  loc_C0EBD7: FStStrNoPop var_A0
  loc_C0EBDA: LitStr ", Sum(PagaImpu)"
  loc_C0EBDD: ConcatStr
  loc_C0EBDE: FStStrNoPop var_A4
  loc_C0EBE1: LitStr ", 0"
  loc_C0EBE4: ConcatStr
  loc_C0EBE5: FStStrNoPop var_E8
  loc_C0EBE8: LitStr " FROM infogov.cuentacontable cc"
  loc_C0EBEB: ConcatStr
  loc_C0EBEC: FStStrNoPop var_EC
  loc_C0EBEF: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0EBF2: ConcatStr
  loc_C0EBF3: FStStrNoPop var_F0
  loc_C0EBF6: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0EBF9: ConcatStr
  loc_C0EBFA: FStStrNoPop var_F4
  loc_C0EBFD: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0EC00: ConcatStr
  loc_C0EC01: FStStrNoPop var_F8
  loc_C0EC04: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0EC07: ConcatStr
  loc_C0EC08: FStStrNoPop var_FC
  loc_C0EC0B: ILdRf Anexos_IX_mensual
  loc_C0EC0E: ConcatStr
  loc_C0EC0F: FStStrNoPop var_100
  loc_C0EC12: LitStr " AND imputacion.FechImpu <= "
  loc_C0EC15: ConcatStr
  loc_C0EC16: CVarStr var_E4
  loc_C0EC19: LitI4 1
  loc_C0EC1E: LitI4 1
  loc_C0EC23: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0EC28: FStVarCopyObj var_C4
  loc_C0EC2B: FLdRfVar var_C4
  loc_C0EC2E: FLdRfVar var_9C
  loc_C0EC31: CVarRef
  loc_C0EC36: FLdRfVar var_D4
  loc_C0EC39: ImpAdCallFPR4  = Format(, )
  loc_C0EC3E: FLdRfVar var_D4
  loc_C0EC41: ConcatVar var_14C
  loc_C0EC45: LitVarStr var_15C, " AND (CodiTicu = '2113'"
  loc_C0EC4A: ConcatVar var_16C
  loc_C0EC4E: LitVarStr var_17C, " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_C0EC53: ConcatVar var_18C
  loc_C0EC57: LitVarStr var_19C, " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_C0EC5C: ConcatVar var_1AC
  loc_C0EC60: LitVarStr var_1C4, " OR CodiTicu = '2111')"
  loc_C0EC65: ConcatVar var_1D4
  loc_C0EC69: LitVarStr var_1E4, " GROUP BY CodiCuco;"
  loc_C0EC6E: ConcatVar var_1F4
  loc_C0EC72: CStrVarVal var_104
  loc_C0EC76: Call EjecutarRsCls(from_stack_1v)
  loc_C0EC7B: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0EC92: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = ""
  loc_C0ECA7: Branch loc_C0F7CA
  loc_C0ECAA: ILdRf var_1B4
  loc_C0ECAD: LitStr "Municipalidad de Tunuyán"
  loc_C0ECB0: EqStr
  loc_C0ECB2: BranchF loc_C0EEF3
  loc_C0ECB5: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0ECB8: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0ECBB: ConcatStr
  loc_C0ECBC: FStStrNoPop var_A0
  loc_C0ECBF: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0ECC2: ConcatStr
  loc_C0ECC3: FStStrNoPop var_A4
  loc_C0ECC6: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_C0ECC9: ConcatStr
  loc_C0ECCA: FStStrNoPop var_E8
  loc_C0ECCD: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_C0ECD0: ConcatStr
  loc_C0ECD1: FStStrNoPop var_EC
  loc_C0ECD4: LitStr " WHEN CodiTicu IN ('1140') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),DebeMoas-HabeMoas,0)),0)"
  loc_C0ECD7: ConcatStr
  loc_C0ECD8: FStStrNoPop var_F0
  loc_C0ECDB: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_C0ECDE: ConcatStr
  loc_C0ECDF: FStStrNoPop var_F4
  loc_C0ECE2: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_C0ECE5: ConcatStr
  loc_C0ECE6: FStStrNoPop var_F8
  loc_C0ECE9: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0ECEC: ConcatStr
  loc_C0ECED: FStStrNoPop var_FC
  loc_C0ECF0: LitStr " WHEN CodiTicu IN ('2113') THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_C0ECF3: ConcatStr
  loc_C0ECF4: FStStrNoPop var_100
  loc_C0ECF7: LitStr " WHEN CodiTicu IN ('2114','2115','2123') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_C0ECFA: ConcatStr
  loc_C0ECFB: FStStrNoPop var_104
  loc_C0ECFE: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_C0ED01: ConcatStr
  loc_C0ED02: FStStrNoPop var_108
  loc_C0ED05: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0ED08: ConcatStr
  loc_C0ED09: FStStrNoPop var_10C
  loc_C0ED0C: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0ED0F: ConcatStr
  loc_C0ED10: FStStrNoPop var_110
  loc_C0ED13: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0ED16: ConcatStr
  loc_C0ED17: FStStrNoPop var_114
  loc_C0ED1A: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0ED1D: ConcatStr
  loc_C0ED1E: FStStrNoPop var_118
  loc_C0ED21: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0ED24: ConcatStr
  loc_C0ED25: FStStrNoPop var_11C
  loc_C0ED28: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0ED2B: ConcatStr
  loc_C0ED2C: FStStrNoPop var_120
  loc_C0ED2F: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0ED32: ConcatStr
  loc_C0ED33: FStStrNoPop var_124
  loc_C0ED36: LitStr " ELSE 0"
  loc_C0ED39: ConcatStr
  loc_C0ED3A: FStStrNoPop var_128
  loc_C0ED3D: LitStr " END MoviFonD /*egresos*/"
  loc_C0ED40: ConcatStr
  loc_C0ED41: FStStr var_90
  loc_C0ED44: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C0ED6D: ILdRf var_90
  loc_C0ED70: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0ED73: ConcatStr
  loc_C0ED74: FStStrNoPop var_A0
  loc_C0ED77: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_C0ED7A: ConcatStr
  loc_C0ED7B: FStStrNoPop var_A4
  loc_C0ED7E: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_C0ED81: ConcatStr
  loc_C0ED82: FStStrNoPop var_E8
  loc_C0ED85: LitStr " WHEN CodiTicu IN ('1140') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),HabeMoas-DebeMoas,0)),0)"
  loc_C0ED88: ConcatStr
  loc_C0ED89: FStStrNoPop var_EC
  loc_C0ED8C: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_C0ED8F: ConcatStr
  loc_C0ED90: FStStrNoPop var_F0
  loc_C0ED93: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_C0ED96: ConcatStr
  loc_C0ED97: FStStrNoPop var_F4
  loc_C0ED9A: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_C0ED9D: ConcatStr
  loc_C0ED9E: FStStrNoPop var_F8
  loc_C0EDA1: LitStr " WHEN CodiTicu IN ('2114','2115','2123') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_C0EDA4: ConcatStr
  loc_C0EDA5: FStStrNoPop var_FC
  loc_C0EDA8: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_C0EDAB: ConcatStr
  loc_C0EDAC: FStStrNoPop var_100
  loc_C0EDAF: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0EDB2: ConcatStr
  loc_C0EDB3: FStStrNoPop var_104
  loc_C0EDB6: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0EDB9: ConcatStr
  loc_C0EDBA: FStStrNoPop var_108
  loc_C0EDBD: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0EDC0: ConcatStr
  loc_C0EDC1: FStStrNoPop var_10C
  loc_C0EDC4: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0EDC7: ConcatStr
  loc_C0EDC8: FStStrNoPop var_110
  loc_C0EDCB: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0EDCE: ConcatStr
  loc_C0EDCF: FStStrNoPop var_114
  loc_C0EDD2: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0EDD5: ConcatStr
  loc_C0EDD6: FStStrNoPop var_118
  loc_C0EDD9: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0EDDC: ConcatStr
  loc_C0EDDD: FStStrNoPop var_11C
  loc_C0EDE0: LitStr " ELSE 0"
  loc_C0EDE3: ConcatStr
  loc_C0EDE4: FStStrNoPop var_120
  loc_C0EDE7: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0EDEA: ConcatStr
  loc_C0EDEB: FStStr var_90
  loc_C0EDEE: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_C0EE13: ILdRf var_90
  loc_C0EE16: LitStr " FROM asiento"
  loc_C0EE19: ConcatStr
  loc_C0EE1A: FStStrNoPop var_A0
  loc_C0EE1D: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0EE20: ConcatStr
  loc_C0EE21: FStStrNoPop var_A4
  loc_C0EE24: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0EE27: ConcatStr
  loc_C0EE28: FStStrNoPop var_E8
  loc_C0EE2B: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0EE2E: ConcatStr
  loc_C0EE2F: FStStrNoPop var_EC
  loc_C0EE32: LitStr " AND Month(asiento.FechAsie)"
  loc_C0EE35: ConcatStr
  loc_C0EE36: FStStrNoPop var_F0
  loc_C0EE39: ILdRf Anexos_IX_mensual
  loc_C0EE3C: ConcatStr
  loc_C0EE3D: FStStrNoPop var_F4
  loc_C0EE40: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0EE43: ConcatStr
  loc_C0EE44: FStStrNoPop var_F8
  loc_C0EE47: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0EE4A: ConcatStr
  loc_C0EE4B: FStStr var_90
  loc_C0EE4E: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0EE5F: ILdRf var_90
  loc_C0EE62: Call EjecutarRsCls(from_stack_1v)
  loc_C0EE67: LitStr "INSERT INTO ttemp "
  loc_C0EE6A: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0EE6D: ConcatStr
  loc_C0EE6E: FStStrNoPop var_A0
  loc_C0EE71: LitStr ", Sum(PagaImpu)"
  loc_C0EE74: ConcatStr
  loc_C0EE75: FStStrNoPop var_A4
  loc_C0EE78: LitStr ", 0"
  loc_C0EE7B: ConcatStr
  loc_C0EE7C: FStStrNoPop var_E8
  loc_C0EE7F: LitStr " FROM infogov.cuentacontable cc"
  loc_C0EE82: ConcatStr
  loc_C0EE83: FStStrNoPop var_EC
  loc_C0EE86: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0EE89: ConcatStr
  loc_C0EE8A: FStStrNoPop var_F0
  loc_C0EE8D: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0EE90: ConcatStr
  loc_C0EE91: FStStrNoPop var_F4
  loc_C0EE94: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0EE97: ConcatStr
  loc_C0EE98: FStStrNoPop var_F8
  loc_C0EE9B: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0EE9E: ConcatStr
  loc_C0EE9F: FStStrNoPop var_FC
  loc_C0EEA2: ILdRf Anexos_IX_mensual
  loc_C0EEA5: ConcatStr
  loc_C0EEA6: FStStrNoPop var_100
  loc_C0EEA9: LitStr " AND (CodiTicu = '2113'"
  loc_C0EEAC: ConcatStr
  loc_C0EEAD: FStStrNoPop var_104
  loc_C0EEB0: LitStr " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_C0EEB3: ConcatStr
  loc_C0EEB4: FStStrNoPop var_108
  loc_C0EEB7: LitStr " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_C0EEBA: ConcatStr
  loc_C0EEBB: FStStrNoPop var_10C
  loc_C0EEBE: LitStr " OR CodiTicu = '2111')"
  loc_C0EEC1: ConcatStr
  loc_C0EEC2: FStStrNoPop var_110
  loc_C0EEC5: LitStr " GROUP BY CodiCuco;"
  loc_C0EEC8: ConcatStr
  loc_C0EEC9: FStStrNoPop var_114
  loc_C0EECC: Call EjecutarRsCls(from_stack_1v)
  loc_C0EED1: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_C0EEF0: Branch loc_C0F7CA
  loc_C0EEF3: ILdRf var_1B4
  loc_C0EEF6: LitStr "Municipalidad de Rivadavia"
  loc_C0EEF9: EqStr
  loc_C0EEFB: BranchF loc_C0F1F8
  loc_C0EEFE: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0EF01: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0EF04: ConcatStr
  loc_C0EF05: FStStrNoPop var_A0
  loc_C0EF08: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0EF0B: ConcatStr
  loc_C0EF0C: FStStrNoPop var_A4
  loc_C0EF0F: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0EF12: ConcatStr
  loc_C0EF13: FStStrNoPop var_E8
  loc_C0EF16: LitStr " WHEN CodiTicu IN ('1170','1160') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_C0EF19: ConcatStr
  loc_C0EF1A: FStStrNoPop var_EC
  loc_C0EF1D: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_C0EF20: ConcatStr
  loc_C0EF21: FStStrNoPop var_F0
  loc_C0EF24: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0EF27: ConcatStr
  loc_C0EF28: FStStrNoPop var_F4
  loc_C0EF2B: LitStr " WHEN CodiTicu IN ('2113') THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_C0EF2E: ConcatStr
  loc_C0EF2F: FStStrNoPop var_F8
  loc_C0EF32: LitStr " WHEN CodiTicu IN ('2114','2115','2117') THEN Sum(If(CodiTias IN (9,12,13),DebeMoas-HabeMoas,0))"
  loc_C0EF35: ConcatStr
  loc_C0EF36: FStStrNoPop var_FC
  loc_C0EF39: LitStr " WHEN CodiTicu IN ('2116','21177','2121','2122','2123','2124') THEN 0"
  loc_C0EF3C: ConcatStr
  loc_C0EF3D: FStStrNoPop var_100
  loc_C0EF40: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_C0EF43: ConcatStr
  loc_C0EF44: FStStrNoPop var_104
  loc_C0EF47: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))"
  loc_C0EF4A: ConcatStr
  loc_C0EF4B: FStStrNoPop var_108
  loc_C0EF4E: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0EF51: ConcatStr
  loc_C0EF52: FStStrNoPop var_10C
  loc_C0EF55: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0EF58: ConcatStr
  loc_C0EF59: FStStrNoPop var_110
  loc_C0EF5C: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0EF5F: ConcatStr
  loc_C0EF60: FStStrNoPop var_114
  loc_C0EF63: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0EF66: ConcatStr
  loc_C0EF67: FStStrNoPop var_118
  loc_C0EF6A: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0EF6D: ConcatStr
  loc_C0EF6E: FStStrNoPop var_11C
  loc_C0EF71: LitStr " ELSE 0"
  loc_C0EF74: ConcatStr
  loc_C0EF75: FStStrNoPop var_120
  loc_C0EF78: LitStr " END MoviFonD /*egresos*/"
  loc_C0EF7B: ConcatStr
  loc_C0EF7C: FStStr var_90
  loc_C0EF7F: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_C0EFA4: ILdRf var_90
  loc_C0EFA7: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0EFAA: ConcatStr
  loc_C0EFAB: FStStrNoPop var_A0
  loc_C0EFAE: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_C0EFB1: ConcatStr
  loc_C0EFB2: FStStrNoPop var_A4
  loc_C0EFB5: LitStr " WHEN CodiTicu IN ('1160') THEN if(Sum(If(CodiTias IN (6,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,9),HabeMoas-DebeMoas,0)),0)"
  loc_C0EFB8: ConcatStr
  loc_C0EFB9: FStStrNoPop var_E8
  loc_C0EFBC: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_C0EFBF: ConcatStr
  loc_C0EFC0: FStStrNoPop var_EC
  loc_C0EFC3: LitStr " WHEN CodiTicu IN ('2111') THEN  Sum(If(CodiTias IN (6),HabeMoas-DebeMoas,0))"
  loc_C0EFC6: ConcatStr
  loc_C0EFC7: FStStrNoPop var_F0
  loc_C0EFCA: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_C0EFCD: ConcatStr
  loc_C0EFCE: FStStrNoPop var_F4
  loc_C0EFD1: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_C0EFD4: ConcatStr
  loc_C0EFD5: FStStrNoPop var_F8
  loc_C0EFD8: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_C0EFDB: ConcatStr
  loc_C0EFDC: FStStrNoPop var_FC
  loc_C0EFDF: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_C0EFE2: ConcatStr
  loc_C0EFE3: FStStrNoPop var_100
  loc_C0EFE6: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_C0EFE9: ConcatStr
  loc_C0EFEA: FStStrNoPop var_104
  loc_C0EFED: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_C0EFF0: ConcatStr
  loc_C0EFF1: FStStrNoPop var_108
  loc_C0EFF4: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0EFF7: ConcatStr
  loc_C0EFF8: FStStrNoPop var_10C
  loc_C0EFFB: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0EFFE: ConcatStr
  loc_C0EFFF: FStStrNoPop var_110
  loc_C0F002: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0F005: ConcatStr
  loc_C0F006: FStStrNoPop var_114
  loc_C0F009: LitStr " WHEN CodiTicu Like '71" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F00C: ConcatStr
  loc_C0F00D: FStStrNoPop var_118
  loc_C0F010: LitStr " WHEN CodiTicu Like '72" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F013: ConcatStr
  loc_C0F014: FStStrNoPop var_11C
  loc_C0F017: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F01A: ConcatStr
  loc_C0F01B: FStStrNoPop var_120
  loc_C0F01E: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_C0F021: ConcatStr
  loc_C0F022: FStStrNoPop var_124
  loc_C0F025: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F028: ConcatStr
  loc_C0F029: FStStrNoPop var_128
  loc_C0F02C: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0F02F: ConcatStr
  loc_C0F030: FStStrNoPop var_12C
  loc_C0F033: LitStr " ELSE 0"
  loc_C0F036: ConcatStr
  loc_C0F037: FStStrNoPop var_1B0
  loc_C0F03A: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0F03D: ConcatStr
  loc_C0F03E: FStStr var_90
  loc_C0F041: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_C0F06E: ILdRf var_90
  loc_C0F071: LitStr " FROM asiento"
  loc_C0F074: ConcatStr
  loc_C0F075: FStStrNoPop var_A0
  loc_C0F078: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0F07B: ConcatStr
  loc_C0F07C: FStStrNoPop var_A4
  loc_C0F07F: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_C0F082: ConcatStr
  loc_C0F083: FStStrNoPop var_E8
  loc_C0F086: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0F089: ConcatStr
  loc_C0F08A: FStStrNoPop var_EC
  loc_C0F08D: LitStr " AND Month(asiento.FechAsie)"
  loc_C0F090: ConcatStr
  loc_C0F091: FStStrNoPop var_F0
  loc_C0F094: ILdRf Anexos_IX_mensual
  loc_C0F097: ConcatStr
  loc_C0F098: FStStrNoPop var_F4
  loc_C0F09B: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0F09E: ConcatStr
  loc_C0F09F: FStStrNoPop var_F8
  loc_C0F0A2: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0F0A5: ConcatStr
  loc_C0F0A6: FStStr var_90
  loc_C0F0A9: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0F0BA: ILdRf var_90
  loc_C0F0BD: Call EjecutarRsCls(from_stack_1v)
  loc_C0F0C2: LitStr "INSERT INTO ttemp "
  loc_C0F0C5: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0F0C8: ConcatStr
  loc_C0F0C9: FStStrNoPop var_A0
  loc_C0F0CC: LitStr ", Sum(PagaImpu)"
  loc_C0F0CF: ConcatStr
  loc_C0F0D0: FStStrNoPop var_A4
  loc_C0F0D3: LitStr ", 0"
  loc_C0F0D6: ConcatStr
  loc_C0F0D7: FStStrNoPop var_E8
  loc_C0F0DA: LitStr " FROM infogov.cuentacontable cc"
  loc_C0F0DD: ConcatStr
  loc_C0F0DE: FStStrNoPop var_EC
  loc_C0F0E1: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0F0E4: ConcatStr
  loc_C0F0E5: FStStrNoPop var_F0
  loc_C0F0E8: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0F0EB: ConcatStr
  loc_C0F0EC: FStStrNoPop var_F4
  loc_C0F0EF: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0F0F2: ConcatStr
  loc_C0F0F3: FStStrNoPop var_F8
  loc_C0F0F6: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0F0F9: ConcatStr
  loc_C0F0FA: FStStrNoPop var_FC
  loc_C0F0FD: ILdRf Anexos_IX_mensual
  loc_C0F100: ConcatStr
  loc_C0F101: FStStrNoPop var_100
  loc_C0F104: LitStr " AND imputacion.FechImpu <= "
  loc_C0F107: ConcatStr
  loc_C0F108: CVarStr var_E4
  loc_C0F10B: LitI4 1
  loc_C0F110: LitI4 1
  loc_C0F115: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0F11A: FStVarCopyObj var_C4
  loc_C0F11D: FLdRfVar var_C4
  loc_C0F120: FLdRfVar var_9C
  loc_C0F123: CVarRef
  loc_C0F128: FLdRfVar var_D4
  loc_C0F12B: ImpAdCallFPR4  = Format(, )
  loc_C0F130: FLdRfVar var_D4
  loc_C0F133: ConcatVar var_14C
  loc_C0F137: LitVarStr var_15C, " AND (CodiTicu = '2113'"
  loc_C0F13C: ConcatVar var_16C
  loc_C0F140: LitVarStr var_17C, " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_C0F145: ConcatVar var_18C
  loc_C0F149: LitVarStr var_19C, " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_C0F14E: ConcatVar var_1AC
  loc_C0F152: LitVarStr var_1C4, " OR CodiTicu = '2111')"
  loc_C0F157: ConcatVar var_1D4
  loc_C0F15B: LitVarStr var_1E4, " GROUP BY CodiCuco;"
  loc_C0F160: ConcatVar var_1F4
  loc_C0F164: CStrVarVal var_104
  loc_C0F168: Call EjecutarRsCls(from_stack_1v)
  loc_C0F16D: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0F184: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = "": var_1AC = "": var_1D4 = ""
  loc_C0F199: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0F19C: LitStr " SELECT mb.PeriInfo, mb.CodiCuco, CodiTicu, 0, IF(Sum(HabeMoba-DebeMoba)>0,Sum(HabeMoba-DebeMoba),0) MoviFonD, IF(Sum(DebeMoba-HabeMoba)>0,Sum(DebeMoba-HabeMoba),0) MoviFonH"
  loc_C0F19F: ConcatStr
  loc_C0F1A0: FStStrNoPop var_A0
  loc_C0F1A3: LitStr " FROM movibanco mb"
  loc_C0F1A6: ConcatStr
  loc_C0F1A7: FStStrNoPop var_A4
  loc_C0F1AA: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = mb.PeriInfo AND pc.CajaPaco != mb.CodiCuco"
  loc_C0F1AD: ConcatStr
  loc_C0F1AE: FStStrNoPop var_E8
  loc_C0F1B1: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = mb.PeriInfo AND cc.CodiCuco = mb.CodiCuco"
  loc_C0F1B4: ConcatStr
  loc_C0F1B5: FStStrNoPop var_EC
  loc_C0F1B8: LitStr " AND cc.CodiTicu = '2113'"
  loc_C0F1BB: ConcatStr
  loc_C0F1BC: FStStrNoPop var_F0
  loc_C0F1BF: LitStr " WHERE mb.PeriInfo = @peri"
  loc_C0F1C2: ConcatStr
  loc_C0F1C3: FStStrNoPop var_F4
  loc_C0F1C6: LitStr " AND Month(FechMoba)"
  loc_C0F1C9: ConcatStr
  loc_C0F1CA: FStStrNoPop var_F8
  loc_C0F1CD: ILdRf Anexos_IX_mensual
  loc_C0F1D0: ConcatStr
  loc_C0F1D1: FStStrNoPop var_FC
  loc_C0F1D4: LitStr " GROUP BY CodiCuco;"
  loc_C0F1D7: ConcatStr
  loc_C0F1D8: FStStrNoPop var_100
  loc_C0F1DB: Call EjecutarRsCls(from_stack_1v)
  loc_C0F1E0: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_C0F1F5: Branch loc_C0F7CA
  loc_C0F1F8: ILdRf var_1B4
  loc_C0F1FB: LitStr "Municipalidad de Tupungato"
  loc_C0F1FE: EqStr
  loc_C0F200: BranchF loc_C0F528
  loc_C0F203: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0F206: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0F209: ConcatStr
  loc_C0F20A: FStStrNoPop var_A0
  loc_C0F20D: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0F210: ConcatStr
  loc_C0F211: FStStrNoPop var_A4
  loc_C0F214: LitStr " WHEN CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0F217: ConcatStr
  loc_C0F218: FStStrNoPop var_E8
  loc_C0F21B: LitStr " WHEN CodiTicu IN ('1140','2112', '1150','1151','1152','1153','1154','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_C0F21E: ConcatStr
  loc_C0F21F: FStStrNoPop var_EC
  loc_C0F222: LitStr " WHEN CodiTicu IN ('1155') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23),DebeMoas-HabeMoas,0)),0)"
  loc_C0F225: ConcatStr
  loc_C0F226: FStStrNoPop var_F0
  loc_C0F229: LitStr " WHEN cc.CodiCuco != '312000000000' AND CodiTicu = '3000' AND CodiTias IN (12,13,32,9) THEN IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0)"
  loc_C0F22C: ConcatStr
  loc_C0F22D: FStStrNoPop var_F4
  loc_C0F230: LitStr " WHEN cc.CodiCuco = '312000000000' AND CodiTicu = '3000' AND CodiTias IN (31,9) THEN IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0)"
  loc_C0F233: ConcatStr
  loc_C0F234: FStStrNoPop var_F8
  loc_C0F237: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0F23A: ConcatStr
  loc_C0F23B: FStStrNoPop var_FC
  loc_C0F23E: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_C0F241: ConcatStr
  loc_C0F242: FStStrNoPop var_100
  loc_C0F245: LitStr " WHEN CodiTicu Like '6499999" & Chr(37) & "' AND CodiTias IN (9) THEN Sum(DebeMoas-HabeMoas) /*gastos*/"
  loc_C0F248: ConcatStr
  loc_C0F249: FStStrNoPop var_104
  loc_C0F24C: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_C0F24F: ConcatStr
  loc_C0F250: FStStrNoPop var_108
  loc_C0F253: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0F256: ConcatStr
  loc_C0F257: FStStrNoPop var_10C
  loc_C0F25A: LitStr " ELSE 0"
  loc_C0F25D: ConcatStr
  loc_C0F25E: FStStrNoPop var_110
  loc_C0F261: LitStr " END MoviFonD /*egresos*/"
  loc_C0F264: ConcatStr
  loc_C0F265: FStStr var_90
  loc_C0F268: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = ""
  loc_C0F285: ILdRf var_90
  loc_C0F288: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0F28B: ConcatStr
  loc_C0F28C: FStStrNoPop var_A0
  loc_C0F28F: LitStr " WHEN  CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0F292: ConcatStr
  loc_C0F293: FStStrNoPop var_A4
  loc_C0F296: LitStr " WHEN CodiTicu IN ('1140','2112', '1150','1151','1152','1153','1154','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_C0F299: ConcatStr
  loc_C0F29A: FStStrNoPop var_E8
  loc_C0F29D: LitStr " WHEN CodiTicu IN ('1155') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23),HabeMoas-DebeMoas,0)),0)"
  loc_C0F2A0: ConcatStr
  loc_C0F2A1: FStStrNoPop var_EC
  loc_C0F2A4: LitStr " WHEN cc.CodiCuco != '312000000000' AND CodiTicu = '3000' AND CodiTias IN (32,9,12,13) THEN IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0)"
  loc_C0F2A7: ConcatStr
  loc_C0F2A8: FStStrNoPop var_F0
  loc_C0F2AB: LitStr " WHEN cc.CodiCuco = '312000000000' AND CodiTicu = '3000' AND CodiTias IN (31,9) THEN IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0)"
  loc_C0F2AE: ConcatStr
  loc_C0F2AF: FStStrNoPop var_F4
  loc_C0F2B2: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0F2B5: ConcatStr
  loc_C0F2B6: FStStrNoPop var_F8
  loc_C0F2B9: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9,6,12,10,2),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_C0F2BC: ConcatStr
  loc_C0F2BD: FStStrNoPop var_FC
  loc_C0F2C0: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0F2C3: ConcatStr
  loc_C0F2C4: FStStrNoPop var_100
  loc_C0F2C7: LitStr " WHEN CodiTicu Like '71" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F2CA: ConcatStr
  loc_C0F2CB: FStStrNoPop var_104
  loc_C0F2CE: LitStr " WHEN CodiTicu Like '72" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F2D1: ConcatStr
  loc_C0F2D2: FStStrNoPop var_108
  loc_C0F2D5: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F2D8: ConcatStr
  loc_C0F2D9: FStStrNoPop var_10C
  loc_C0F2DC: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_C0F2DF: ConcatStr
  loc_C0F2E0: FStStrNoPop var_110
  loc_C0F2E3: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F2E6: ConcatStr
  loc_C0F2E7: FStStrNoPop var_114
  loc_C0F2EA: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0F2ED: ConcatStr
  loc_C0F2EE: FStStrNoPop var_118
  loc_C0F2F1: LitStr " ELSE 0"
  loc_C0F2F4: ConcatStr
  loc_C0F2F5: FStStrNoPop var_11C
  loc_C0F2F8: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0F2FB: ConcatStr
  loc_C0F2FC: FStStr var_90
  loc_C0F2FF: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_C0F322: ILdRf var_90
  loc_C0F325: LitStr " FROM asiento"
  loc_C0F328: ConcatStr
  loc_C0F329: FStStrNoPop var_A0
  loc_C0F32C: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = asiento.PeriInfo"
  loc_C0F32F: ConcatStr
  loc_C0F330: FStStrNoPop var_A4
  loc_C0F333: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0F336: ConcatStr
  loc_C0F337: FStStrNoPop var_E8
  loc_C0F33A: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND cc.CodiCuco != DeexPaco and cc.CodiCuco != ProvPaco"
  loc_C0F33D: ConcatStr
  loc_C0F33E: FStStrNoPop var_EC
  loc_C0F341: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0F344: ConcatStr
  loc_C0F345: FStStrNoPop var_F0
  loc_C0F348: LitStr " AND Month(asiento.FechAsie)"
  loc_C0F34B: ConcatStr
  loc_C0F34C: FStStrNoPop var_F4
  loc_C0F34F: ILdRf Anexos_IX_mensual
  loc_C0F352: ConcatStr
  loc_C0F353: FStStrNoPop var_F8
  loc_C0F356: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_C0F359: ConcatStr
  loc_C0F35A: FStStrNoPop var_FC
  loc_C0F35D: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_C0F360: ConcatStr
  loc_C0F361: FStStr var_90
  loc_C0F364: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_C0F377: ILdRf var_90
  loc_C0F37A: Call EjecutarRsCls(from_stack_1v)
  loc_C0F37F: LitStr "INSERT INTO ttemp "
  loc_C0F382: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0F385: ConcatStr
  loc_C0F386: FStStrNoPop var_A0
  loc_C0F389: LitStr ", Sum(PagaImpu)"
  loc_C0F38C: ConcatStr
  loc_C0F38D: FStStrNoPop var_A4
  loc_C0F390: LitStr ", 0"
  loc_C0F393: ConcatStr
  loc_C0F394: FStStrNoPop var_E8
  loc_C0F397: LitStr " FROM infogov.cuentacontable cc"
  loc_C0F39A: ConcatStr
  loc_C0F39B: FStStrNoPop var_EC
  loc_C0F39E: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0F3A1: ConcatStr
  loc_C0F3A2: FStStrNoPop var_F0
  loc_C0F3A5: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0F3A8: ConcatStr
  loc_C0F3A9: FStStrNoPop var_F4
  loc_C0F3AC: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0F3AF: ConcatStr
  loc_C0F3B0: FStStrNoPop var_F8
  loc_C0F3B3: LitStr " AND PagaImpu != 0"
  loc_C0F3B6: ConcatStr
  loc_C0F3B7: FStStrNoPop var_FC
  loc_C0F3BA: LitStr "  AND AjusImpu = 0 "
  loc_C0F3BD: ConcatStr
  loc_C0F3BE: FStStrNoPop var_100
  loc_C0F3C1: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0F3C4: ConcatStr
  loc_C0F3C5: FStStrNoPop var_104
  loc_C0F3C8: ILdRf Anexos_IX_mensual
  loc_C0F3CB: ConcatStr
  loc_C0F3CC: FStStrNoPop var_108
  loc_C0F3CF: LitStr " AND imputacion.FechImpu <= "
  loc_C0F3D2: ConcatStr
  loc_C0F3D3: CVarStr var_E4
  loc_C0F3D6: LitI4 1
  loc_C0F3DB: LitI4 1
  loc_C0F3E0: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0F3E5: FStVarCopyObj var_C4
  loc_C0F3E8: FLdRfVar var_C4
  loc_C0F3EB: FLdRfVar var_9C
  loc_C0F3EE: CVarRef
  loc_C0F3F3: FLdRfVar var_D4
  loc_C0F3F6: ImpAdCallFPR4  = Format(, )
  loc_C0F3FB: FLdRfVar var_D4
  loc_C0F3FE: ConcatVar var_14C
  loc_C0F402: LitVarStr var_15C, " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_C0F407: ConcatVar var_16C
  loc_C0F40B: LitVarStr var_17C, " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_C0F410: ConcatVar var_18C
  loc_C0F414: LitVarStr var_19C, " GROUP BY CodiCuco;"
  loc_C0F419: ConcatVar var_1AC
  loc_C0F41D: CStrVarVal var_10C
  loc_C0F421: Call EjecutarRsCls(from_stack_1v)
  loc_C0F426: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_C0F441: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = ""
  loc_C0F452: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0F455: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, Sum(DeveImpu), 0"
  loc_C0F458: ConcatStr
  loc_C0F459: FStStrNoPop var_A0
  loc_C0F45C: LitStr " FROM imputacion i"
  loc_C0F45F: ConcatStr
  loc_C0F460: FStStrNoPop var_A4
  loc_C0F463: LitStr " INNER JOIN partida p ON p.PeriInfo = i.PeriInfo AND p.CodiPart = i.CodiPart"
  loc_C0F466: ConcatStr
  loc_C0F467: FStStrNoPop var_E8
  loc_C0F46A: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = p.PeriInfo AND cc.CodiCuco = p.CodiCuco"
  loc_C0F46D: ConcatStr
  loc_C0F46E: FStStrNoPop var_EC
  loc_C0F471: LitStr "/* AND cc.CodiTicu NOT IN ('1120') */"
  loc_C0F474: ConcatStr
  loc_C0F475: FStStrNoPop var_F0
  loc_C0F478: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_C0F47B: ConcatStr
  loc_C0F47C: FStStrNoPop var_F4
  loc_C0F47F: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0F482: ConcatStr
  loc_C0F483: FStStrNoPop var_F8
  loc_C0F486: LitStr " AND AjusImpu > 0"
  loc_C0F489: ConcatStr
  loc_C0F48A: FStStrNoPop var_FC
  loc_C0F48D: LitStr " AND Month(i.FechImpu)"
  loc_C0F490: ConcatStr
  loc_C0F491: FStStrNoPop var_100
  loc_C0F494: ILdRf Anexos_IX_mensual
  loc_C0F497: ConcatStr
  loc_C0F498: FStStrNoPop var_104
  loc_C0F49B: LitStr " GROUP BY CodiCuco;"
  loc_C0F49E: ConcatStr
  loc_C0F49F: FStStrNoPop var_108
  loc_C0F4A2: Call EjecutarRsCls(from_stack_1v)
  loc_C0F4A7: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_C0F4C0: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0F4C3: LitStr " SELECT cc.PeriInfo, d.CodiCuco, CodiTicu, 0, 0, Sum(DeveImpu)"
  loc_C0F4C6: ConcatStr
  loc_C0F4C7: FStStrNoPop var_A0
  loc_C0F4CA: LitStr " FROM imputacion i"
  loc_C0F4CD: ConcatStr
  loc_C0F4CE: FStStrNoPop var_A4
  loc_C0F4D1: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_C0F4D4: ConcatStr
  loc_C0F4D5: FStStrNoPop var_E8
  loc_C0F4D8: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = d.PeriInfo AND cc.CodiCuco = d.CodiCuco"
  loc_C0F4DB: ConcatStr
  loc_C0F4DC: FStStrNoPop var_EC
  loc_C0F4DF: LitStr " AND cc.CodiTicu NOT IN ('1120')"
  loc_C0F4E2: ConcatStr
  loc_C0F4E3: FStStrNoPop var_F0
  loc_C0F4E6: LitStr " WHERE i.PeriInfo = @peri"
  loc_C0F4E9: ConcatStr
  loc_C0F4EA: FStStrNoPop var_F4
  loc_C0F4ED: LitStr " AND AjusImpu > 0"
  loc_C0F4F0: ConcatStr
  loc_C0F4F1: FStStrNoPop var_F8
  loc_C0F4F4: LitStr " AND Month(i.FechImpu)"
  loc_C0F4F7: ConcatStr
  loc_C0F4F8: FStStrNoPop var_FC
  loc_C0F4FB: ILdRf Anexos_IX_mensual
  loc_C0F4FE: ConcatStr
  loc_C0F4FF: FStStrNoPop var_100
  loc_C0F502: LitStr " GROUP BY CodiCuco;"
  loc_C0F505: ConcatStr
  loc_C0F506: FStStrNoPop var_104
  loc_C0F509: Call EjecutarRsCls(from_stack_1v)
  loc_C0F50E: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0F525: Branch loc_C0F7CA
  loc_C0F528: ILdRf var_1B4
  loc_C0F52B: LitStr "Municipalidad de Guaymallén"
  loc_C0F52E: EqStr
  loc_C0F530: BranchF loc_C0F7B2
  loc_C0F533: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviFonD,MoviFonH)"
  loc_C0F536: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_C0F539: ConcatStr
  loc_C0F53A: FStStrNoPop var_A0
  loc_C0F53D: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_C0F540: ConcatStr
  loc_C0F541: FStStrNoPop var_A4
  loc_C0F544: LitStr " WHEN cc.CodiCuco = pc.TranPaco THEN IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0)"
  loc_C0F547: ConcatStr
  loc_C0F548: FStStrNoPop var_E8
  loc_C0F54B: LitStr " WHEN CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0F54E: ConcatStr
  loc_C0F54F: FStStrNoPop var_EC
  loc_C0F552: LitStr " WHEN CodiTicu NOT IN ('1110','1120','1130') AND (CodiTicu LIKE '1" & Chr(37) & "' OR CodiTicu LIKE '2" & Chr(37) & "') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,54),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,54),DebeMoas-HabeMoas,0)),0)"
  loc_C0F555: ConcatStr
  loc_C0F556: FStStrNoPop var_F0
  loc_C0F559: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13),DebeMoas-HabeMoas,0))"
  loc_C0F55C: ConcatStr
  loc_C0F55D: FStStrNoPop var_F4
  loc_C0F560: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0F563: ConcatStr
  loc_C0F564: FStStrNoPop var_F8
  loc_C0F567: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN If(Sum(If(CodiTias IN (9,12,58),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0)),0) /*recursos*/"
  loc_C0F56A: ConcatStr
  loc_C0F56B: FStStrNoPop var_FC
  loc_C0F56E: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0F571: ConcatStr
  loc_C0F572: FStStrNoPop var_100
  loc_C0F575: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN If(Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0)),0) /*recursos*/"
  loc_C0F578: ConcatStr
  loc_C0F579: FStStrNoPop var_104
  loc_C0F57C: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0F57F: ConcatStr
  loc_C0F580: FStStrNoPop var_108
  loc_C0F583: LitStr " ELSE 0"
  loc_C0F586: ConcatStr
  loc_C0F587: FStStrNoPop var_10C
  loc_C0F58A: LitStr " END MoviFonD /*egresos*/"
  loc_C0F58D: ConcatStr
  loc_C0F58E: FStStr var_90
  loc_C0F591: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_C0F5AC: ILdRf var_90
  loc_C0F5AF: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_C0F5B2: ConcatStr
  loc_C0F5B3: FStStrNoPop var_A0
  loc_C0F5B6: LitStr " WHEN cc.CodiCuco = pc.TranPaco THEN IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0)"
  loc_C0F5B9: ConcatStr
  loc_C0F5BA: FStStrNoPop var_A4
  loc_C0F5BD: LitStr " WHEN CodiTicu IN ('1110','1120','1130') THEN 0"
  loc_C0F5C0: ConcatStr
  loc_C0F5C1: FStStrNoPop var_E8
  loc_C0F5C4: LitStr " WHEN CodiTicu NOT IN ('1110','1120','1130','2114') AND (CodiTicu LIKE '1" & Chr(37) & "' OR CodiTicu LIKE '2" & Chr(37) & "') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,54),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,54),HabeMoas-DebeMoas,0)),0)"
  loc_C0F5C7: ConcatStr
  loc_C0F5C8: FStStrNoPop var_EC
  loc_C0F5CB: LitStr " WHEN CodiTicu = '2114' THEN if(Sum(If(CodiTias IN (4,6,12,9,13,22,23,24,54),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (4,6,12,9,13,22,23,24,54),HabeMoas-DebeMoas,0)),0)"
  loc_C0F5CE: ConcatStr
  loc_C0F5CF: FStStrNoPop var_F0
  loc_C0F5D2: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (32,9),HabeMoas-DebeMoas,0))"
  loc_C0F5D5: ConcatStr
  loc_C0F5D6: FStStrNoPop var_F4
  loc_C0F5D9: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_C0F5DC: ConcatStr
  loc_C0F5DD: FStStrNoPop var_F8
  loc_C0F5E0: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN If(Sum(If(CodiTias IN (9,12,6,4,58),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (9,12,6,4,58),HabeMoas-DebeMoas,0)),0) /*recursos*/"
  loc_C0F5E3: ConcatStr
  loc_C0F5E4: FStStrNoPop var_FC
  loc_C0F5E7: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_C0F5EA: ConcatStr
  loc_C0F5EB: FStStrNoPop var_100
  loc_C0F5EE: LitStr " WHEN CodiTicu LIKE '71" & Chr(37) & "' THEN If(SUM(If(CodiTias IN (9),HabeMoas-DebeMoas,0))>0, SUM(If(CodiTias IN (9),HabeMoas-DebeMoas,0)),0) /*fuentes de financiamiento*/"
  loc_C0F5F1: ConcatStr
  loc_C0F5F2: FStStrNoPop var_104
  loc_C0F5F5: LitStr " WHEN CodiTicu LIKE '72" & Chr(37) & "' THEN If(SUM(If(CodiTias IN (9),HabeMoas-DebeMoas,0))>0, SUM(If(CodiTias IN (9),HabeMoas-DebeMoas,0)),0) /*fuentes de financiamiento*/"
  loc_C0F5F8: ConcatStr
  loc_C0F5F9: FStStrNoPop var_108
  loc_C0F5FC: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F5FF: ConcatStr
  loc_C0F600: FStStrNoPop var_10C
  loc_C0F603: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_C0F606: ConcatStr
  loc_C0F607: FStStrNoPop var_110
  loc_C0F60A: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_C0F60D: ConcatStr
  loc_C0F60E: FStStrNoPop var_114
  loc_C0F611: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_C0F614: ConcatStr
  loc_C0F615: FStStrNoPop var_118
  loc_C0F618: LitStr " ELSE 0"
  loc_C0F61B: ConcatStr
  loc_C0F61C: FStStrNoPop var_11C
  loc_C0F61F: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_C0F622: ConcatStr
  loc_C0F623: FStStr var_90
  loc_C0F626: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_C0F649: ILdRf var_90
  loc_C0F64C: LitStr " FROM asiento"
  loc_C0F64F: ConcatStr
  loc_C0F650: FStStrNoPop var_A0
  loc_C0F653: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = asiento.PeriInfo"
  loc_C0F656: ConcatStr
  loc_C0F657: FStStrNoPop var_A4
  loc_C0F65A: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_C0F65D: ConcatStr
  loc_C0F65E: FStStrNoPop var_E8
  loc_C0F661: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND cc.CodiCuco != DeexPaco /*and cc.CodiCuco != ProvPaco*/"
  loc_C0F664: ConcatStr
  loc_C0F665: FStStrNoPop var_EC
  loc_C0F668: LitStr " WHERE asiento.PeriInfo = @peri"
  loc_C0F66B: ConcatStr
  loc_C0F66C: FStStrNoPop var_F0
  loc_C0F66F: LitStr " AND Month(asiento.FechAsie)"
  loc_C0F672: ConcatStr
  loc_C0F673: FStStrNoPop var_F4
  loc_C0F676: ILdRf Anexos_IX_mensual
  loc_C0F679: ConcatStr
  loc_C0F67A: FStStrNoPop var_F8
  loc_C0F67D: LitStr " AND asiento.FechAsie <= "
  loc_C0F680: ConcatStr
  loc_C0F681: CVarStr var_E4
  loc_C0F684: LitI4 1
  loc_C0F689: LitI4 1
  loc_C0F68E: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0F693: FStVarCopyObj var_C4
  loc_C0F696: FLdRfVar var_C4
  loc_C0F699: FLdRfVar var_9C
  loc_C0F69C: CVarRef
  loc_C0F6A1: FLdRfVar var_D4
  loc_C0F6A4: ImpAdCallFPR4  = Format(, )
  loc_C0F6A9: FLdRfVar var_D4
  loc_C0F6AC: ConcatVar var_14C
  loc_C0F6B0: LitVarStr var_15C, " AND CodiTias NOT IN (16,25,27)"
  loc_C0F6B5: ConcatVar var_16C
  loc_C0F6B9: LitVarStr var_17C, " GROUP BY CodiCuco, CodiTias;"
  loc_C0F6BE: ConcatVar var_18C
  loc_C0F6C2: CStrVarTmp
  loc_C0F6C3: FStStr var_90
  loc_C0F6C6: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_C0F6D7: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = ""
  loc_C0F6E6: ILdRf var_90
  loc_C0F6E9: Call EjecutarRsCls(from_stack_1v)
  loc_C0F6EE: LitStr "INSERT INTO ttemp "
  loc_C0F6F1: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_C0F6F4: ConcatStr
  loc_C0F6F5: FStStrNoPop var_A0
  loc_C0F6F8: LitStr ", Sum(PagaImpu)"
  loc_C0F6FB: ConcatStr
  loc_C0F6FC: FStStrNoPop var_A4
  loc_C0F6FF: LitStr ", 0"
  loc_C0F702: ConcatStr
  loc_C0F703: FStStrNoPop var_E8
  loc_C0F706: LitStr " FROM infogov.cuentacontable cc"
  loc_C0F709: ConcatStr
  loc_C0F70A: FStStrNoPop var_EC
  loc_C0F70D: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_C0F710: ConcatStr
  loc_C0F711: FStStrNoPop var_F0
  loc_C0F714: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_C0F717: ConcatStr
  loc_C0F718: FStStrNoPop var_F4
  loc_C0F71B: LitStr " WHERE cc.PeriInfo = @peri"
  loc_C0F71E: ConcatStr
  loc_C0F71F: FStStrNoPop var_F8
  loc_C0F722: LitStr " AND Month(imputacion.FechImpu)"
  loc_C0F725: ConcatStr
  loc_C0F726: FStStrNoPop var_FC
  loc_C0F729: ILdRf Anexos_IX_mensual
  loc_C0F72C: ConcatStr
  loc_C0F72D: FStStrNoPop var_100
  loc_C0F730: LitStr " AND imputacion.FechImpu <= "
  loc_C0F733: ConcatStr
  loc_C0F734: CVarStr var_E4
  loc_C0F737: LitI4 1
  loc_C0F73C: LitI4 1
  loc_C0F741: LitVarStr var_13C, "'yyyy-mm-dd'"
  loc_C0F746: FStVarCopyObj var_C4
  loc_C0F749: FLdRfVar var_C4
  loc_C0F74C: FLdRfVar var_9C
  loc_C0F74F: CVarRef
  loc_C0F754: FLdRfVar var_D4
  loc_C0F757: ImpAdCallFPR4  = Format(, )
  loc_C0F75C: FLdRfVar var_D4
  loc_C0F75F: ConcatVar var_14C
  loc_C0F763: LitVarStr var_15C, " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_C0F768: ConcatVar var_16C
  loc_C0F76C: LitVarStr var_17C, " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_C0F771: ConcatVar var_18C
  loc_C0F775: LitVarStr var_19C, " GROUP BY CodiCuco;"
  loc_C0F77A: ConcatVar var_1AC
  loc_C0F77E: CStrVarVal var_104
  loc_C0F782: Call EjecutarRsCls(from_stack_1v)
  loc_C0F787: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_C0F79E: FFreeVar var_C4 = "": var_E4 = "": var_D4 = "": var_14C = "": var_16C = "": var_18C = ""
  loc_C0F7AF: Branch loc_C0F7CA
  loc_C0F7B2: LitI4 0
  loc_C0F7B7: LitStr "Consulte con InfoGov..."
  loc_C0F7BA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0F7BF: LitI2_Byte 0
  loc_C0F7C1: FStI2 var_86
  loc_C0F7C4: ExitProcCbHresult
  loc_C0F7CA: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_C0F7CD: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_C0F7D0: ConcatStr
  loc_C0F7D1: FStStrNoPop var_A0
  loc_C0F7D4: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_C0F7D7: ConcatStr
  loc_C0F7D8: FStStrNoPop var_A4
  loc_C0F7DB: LitStr " odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_C0F7DE: ConcatStr
  loc_C0F7DF: FStStrNoPop var_E8
  loc_C0F7E2: LitStr " etaCuco` varchar(500) NOT NULL DEFAULT '',"
  loc_C0F7E5: ConcatStr
  loc_C0F7E6: FStStrNoPop var_EC
  loc_C0F7E9: LitStr " odiTicu` char(4) NOT NULL,"
  loc_C0F7EC: ConcatStr
  loc_C0F7ED: FStStrNoPop var_F0
  loc_C0F7F0: LitStr " aldIniD` decimal(15,2) DEFAULT NULL,"
  loc_C0F7F3: ConcatStr
  loc_C0F7F4: FStStrNoPop var_F4
  loc_C0F7F7: LitStr " aldIniH` decimal(15,2) DEFAULT NULL,"
  loc_C0F7FA: ConcatStr
  loc_C0F7FB: FStStrNoPop var_F8
  loc_C0F7FE: LitStr " oviEjeD` decimal(15,2) DEFAULT NULL,"
  loc_C0F801: ConcatStr
  loc_C0F802: FStStrNoPop var_FC
  loc_C0F805: LitStr " oviEjeH` decimal(15,2) DEFAULT NULL,"
  loc_C0F808: ConcatStr
  loc_C0F809: FStStrNoPop var_100
  loc_C0F80C: LitStr " oviFonD` decimal(15,2) DEFAULT NULL,"
  loc_C0F80F: ConcatStr
  loc_C0F810: FStStrNoPop var_104
  loc_C0F813: LitStr " oviFonH` decimal(15,2) DEFAULT NULL,"
  loc_C0F816: ConcatStr
  loc_C0F817: FStStrNoPop var_108
  loc_C0F81A: LitStr " arPatD` decimal(15,2) DEFAULT NULL,"
  loc_C0F81D: ConcatStr
  loc_C0F81E: FStStrNoPop var_10C
  loc_C0F821: LitStr " arPatH` decimal(15,2) DEFAULT NULL,"
  loc_C0F824: ConcatStr
  loc_C0F825: FStStrNoPop var_110
  loc_C0F828: LitStr " aldFinaD` decimal(15,2) DEFAULT NULL,"
  loc_C0F82B: ConcatStr
  loc_C0F82C: FStStrNoPop var_114
  loc_C0F82F: LitStr " aldFinaH` decimal(15,2) DEFAULT NULL,"
  loc_C0F832: ConcatStr
  loc_C0F833: FStStrNoPop var_118
  loc_C0F836: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_C0F839: ConcatStr
  loc_C0F83A: FStStrNoPop var_11C
  loc_C0F83D: LitStr " ) ;"
  loc_C0F840: ConcatStr
  loc_C0F841: FStStrNoPop var_120
  loc_C0F844: Call EjecutarRsCls(from_stack_1v)
  loc_C0F849: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_C0F86E: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, DetaCuco, CodiTicu, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH, MoviFonD, MoviFonH, VarPatD, VarPatH, SaldFinaD, SaldFinaH)"
  loc_C0F871: LitStr " SELECT ttemp.PeriInfo, ttemp.CodiCuco, DetaCuco, ttemp.CodiTicu"
  loc_C0F874: ConcatStr
  loc_C0F875: FStStrNoPop var_A0
  loc_C0F878: LitStr ", IF(Sum(SaldIniD)-Sum(SaldIniH)>0,Sum(SaldIniD)-Sum(SaldIniH),0) SaldIniD"
  loc_C0F87B: ConcatStr
  loc_C0F87C: FStStrNoPop var_A4
  loc_C0F87F: LitStr ", IF(Sum(SaldIniH)-Sum(SaldIniD)>0,Sum(SaldIniH)-Sum(SaldIniD),0) SaldIniH"
  loc_C0F882: ConcatStr
  loc_C0F883: FStStrNoPop var_E8
  loc_C0F886: LitStr ", Sum(MoviEjeD) MoviEjeD, Sum(MoviEjeH) MoviEjeH"
  loc_C0F889: ConcatStr
  loc_C0F88A: FStStrNoPop var_EC
  loc_C0F88D: LitStr ", IF(ttemp.CodiTicu IN ('1120'),IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0),Sum(MoviFonD))"
  loc_C0F890: ConcatStr
  loc_C0F891: FStStrNoPop var_F0
  loc_C0F894: LitStr ", IF(ttemp.CodiTicu IN ('1120'),IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0),Sum(MoviFonH))"
  loc_C0F897: ConcatStr
  loc_C0F898: FStStrNoPop var_F4
  loc_C0F89B: LitStr ", Sum(MoviEjeD)-Sum(MoviFonD), Sum(MoviEjeH)-Sum(MoviFonH)"
  loc_C0F89E: ConcatStr
  loc_C0F89F: FStStrNoPop var_F8
  loc_C0F8A2: LitStr ", If(Sum(SaldIniD)-Sum(SaldIniH)+Sum(MoviEjeD)-Sum(MoviEjeH)>0,Sum(SaldIniD)-Sum(SaldIniH)+Sum(MoviEjeD)-Sum(MoviEjeH),0)"
  loc_C0F8A5: ConcatStr
  loc_C0F8A6: FStStrNoPop var_FC
  loc_C0F8A9: LitStr ", If(Sum(SaldIniH)-Sum(SaldIniD)+Sum(MoviEjeH)-Sum(MoviEjeD)>0,Sum(SaldIniH)-Sum(SaldIniD)+Sum(MoviEjeH)-Sum(MoviEjeD),0)"
  loc_C0F8AC: ConcatStr
  loc_C0F8AD: FStStrNoPop var_100
  loc_C0F8B0: LitStr " FROM ttemp"
  loc_C0F8B3: ConcatStr
  loc_C0F8B4: FStStrNoPop var_104
  loc_C0F8B7: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ttemp.PeriInfo AND cc.CodiCuco = ttemp.CodiCuco"
  loc_C0F8BA: ConcatStr
  loc_C0F8BB: FStStrNoPop var_108
  loc_C0F8BE: LitStr " GROUP BY ttemp.CodiCuco;"
  loc_C0F8C1: ConcatStr
  loc_C0F8C2: FStStrNoPop var_10C
  loc_C0F8C5: Call EjecutarRsCls(from_stack_1v)
  loc_C0F8CA: FFreeStr var_A0 = "": var_A4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_C0F8E5: ExitProcCbHresult
End Function

Public Function Anexos_XIV_mensual(PeriInfo, Mes, EsMensual) 'BEE1C4
  'Data Table: 42DE78
  loc_BEC51C: LitI2_Byte &HFF
  loc_BEC51E: FStI2 var_86
  loc_BEC521: LitStr " <= "
  loc_BEC524: FLdI2 Mes
  loc_BEC527: CStrUI1
  loc_BEC529: FStStrNoPop var_98
  loc_BEC52C: ConcatStr
  loc_BEC52D: CVarStr var_C8
  loc_BEC530: LitStr " = "
  loc_BEC533: FLdI2 Mes
  loc_BEC536: CStrUI1
  loc_BEC538: FStStrNoPop Anexos_XIV_mensual
  loc_BEC53B: ConcatStr
  loc_BEC53C: CVarStr var_B8
  loc_BEC53F: FLdRfVar EsMensual
  loc_BEC542: CVarRef
  loc_BEC547: FLdRfVar var_D8
  loc_BEC54A: ImpAdCallFPR4  = IIf(, , )
  loc_BEC54F: FLdRfVar var_D8
  loc_BEC552: CStrVarTmp
  loc_BEC553: FStStr var_90
  loc_BEC556: FFreeStr Anexos_XIV_mensual = ""
  loc_BEC55D: FFreeVar var_B8 = "": var_C8 = ""
  loc_BEC566: LitStr "SET @periinfo="
  loc_BEC569: FLdI2 PeriInfo
  loc_BEC56C: CStrUI1
  loc_BEC56E: FStStrNoPop Anexos_XIV_mensual
  loc_BEC571: ConcatStr
  loc_BEC572: FStStrNoPop var_98
  loc_BEC575: LitStr ", @mes="
  loc_BEC578: ConcatStr
  loc_BEC579: FStStrNoPop var_DC
  loc_BEC57C: FLdI2 Mes
  loc_BEC57F: CStrUI1
  loc_BEC581: FStStrNoPop var_E0
  loc_BEC584: ConcatStr
  loc_BEC585: FStStrNoPop var_E4
  loc_BEC588: LitStr ";"
  loc_BEC58B: ConcatStr
  loc_BEC58C: FStStrNoPop var_E8
  loc_BEC58F: LitStr " DROP TEMPORARY TABLE IF EXISTS ttemp;"
  loc_BEC592: ConcatStr
  loc_BEC593: FStStrNoPop var_EC
  loc_BEC596: LitStr " CREATE TEMPORARY TABLE temp` ("
  loc_BEC599: ConcatStr
  loc_BEC59A: FStStrNoPop var_F0
  loc_BEC59D: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_BEC5A0: ConcatStr
  loc_BEC5A1: FStStrNoPop var_F4
  loc_BEC5A4: LitStr " odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_BEC5A7: ConcatStr
  loc_BEC5A8: FStStrNoPop var_F8
  loc_BEC5AB: LitStr " odiTicu` char(4) NOT NULL,"
  loc_BEC5AE: ConcatStr
  loc_BEC5AF: FStStrNoPop var_FC
  loc_BEC5B2: LitStr " odiTias` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_BEC5B5: ConcatStr
  loc_BEC5B6: FStStrNoPop var_100
  loc_BEC5B9: LitStr " aldIniD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_BEC5BC: ConcatStr
  loc_BEC5BD: FStStrNoPop var_104
  loc_BEC5C0: LitStr " aldIniH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_BEC5C3: ConcatStr
  loc_BEC5C4: FStStrNoPop var_108
  loc_BEC5C7: LitStr " oviEjeD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_BEC5CA: ConcatStr
  loc_BEC5CB: FStStrNoPop var_10C
  loc_BEC5CE: LitStr " oviEjeH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_BEC5D1: ConcatStr
  loc_BEC5D2: FStStrNoPop var_110
  loc_BEC5D5: LitStr " oviFonD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_BEC5D8: ConcatStr
  loc_BEC5D9: FStStrNoPop var_114
  loc_BEC5DC: LitStr " oviFonH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_BEC5DF: ConcatStr
  loc_BEC5E0: FStStrNoPop var_118
  loc_BEC5E3: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_BEC5E6: ConcatStr
  loc_BEC5E7: FStStrNoPop var_11C
  loc_BEC5EA: LitStr " ) ENGINE=InnoDB ;"
  loc_BEC5ED: ConcatStr
  loc_BEC5EE: FStStrNoPop var_120
  loc_BEC5F1: Call EjecutarRsCls(from_stack_1v)
  loc_BEC5F6: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BEC621: LitStr "Municipalidad de Guaymallén"
  loc_BEC624: FStStrCopy var_124
  loc_BEC627: ILdRf var_124
  loc_BEC62A: LitStr "Municipalidad de Maipú"
  loc_BEC62D: EqStr
  loc_BEC62F: BranchF loc_BECBD1
  loc_BEC632: FLdI2 Mes
  loc_BEC635: LitI2_Byte 1
  loc_BEC637: EqI2
  loc_BEC638: FLdI2 EsMensual
  loc_BEC63B: NotI4
  loc_BEC63C: OrI4
  loc_BEC63D: BranchF loc_BEC8A1
  loc_BEC640: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BEC643: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEC646: ConcatStr
  loc_BEC647: FStStrNoPop Anexos_XIV_mensual
  loc_BEC64A: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_BEC64D: ConcatStr
  loc_BEC64E: FStStrNoPop var_98
  loc_BEC651: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_BEC654: ConcatStr
  loc_BEC655: FStStrNoPop var_DC
  loc_BEC658: LitStr " FROM asiento"
  loc_BEC65B: ConcatStr
  loc_BEC65C: FStStrNoPop var_E0
  loc_BEC65F: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEC662: ConcatStr
  loc_BEC663: FStStrNoPop var_E4
  loc_BEC666: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEC669: ConcatStr
  loc_BEC66A: FStStrNoPop var_E8
  loc_BEC66D: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEC670: ConcatStr
  loc_BEC671: FStStrNoPop var_EC
  loc_BEC674: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEC677: ConcatStr
  loc_BEC678: FStStrNoPop var_F0
  loc_BEC67B: LitStr " AND Month(asiento.FechAsie)"
  loc_BEC67E: ConcatStr
  loc_BEC67F: FStStrNoPop var_F4
  loc_BEC682: ILdRf var_90
  loc_BEC685: ConcatStr
  loc_BEC686: FStStrNoPop var_F8
  loc_BEC689: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEC68C: ConcatStr
  loc_BEC68D: FStStrNoPop var_FC
  loc_BEC690: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEC693: ConcatStr
  loc_BEC694: FStStrNoPop var_100
  loc_BEC697: Call EjecutarRsCls(from_stack_1v)
  loc_BEC69C: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BEC6B7: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BEC6BA: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEC6BD: ConcatStr
  loc_BEC6BE: FStStrNoPop Anexos_XIV_mensual
  loc_BEC6C1: LitStr ", Sum(If(CodiTias NOT IN (17,18,14),DebeMoas,0)) MoviEjeD"
  loc_BEC6C4: ConcatStr
  loc_BEC6C5: FStStrNoPop var_98
  loc_BEC6C8: LitStr ", Sum(If(CodiTias NOT IN (17,18,14),HabeMoas,0)) MoviEjeH"
  loc_BEC6CB: ConcatStr
  loc_BEC6CC: FStStrNoPop var_DC
  loc_BEC6CF: LitStr ", CASE /*egresos*/"
  loc_BEC6D2: ConcatStr
  loc_BEC6D3: FStStrNoPop var_E0
  loc_BEC6D6: LitStr " WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_BEC6D9: ConcatStr
  loc_BEC6DA: FStStrNoPop var_E4
  loc_BEC6DD: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121'))"
  loc_BEC6E0: ConcatStr
  loc_BEC6E1: FStStrNoPop var_E8
  loc_BEC6E4: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_BEC6E7: ConcatStr
  loc_BEC6E8: FStStrNoPop var_EC
  loc_BEC6EB: LitStr " AND mv.CodiCuco != ProvPaco AND mv.CodiCuco != DeexPaco"
  loc_BEC6EE: ConcatStr
  loc_BEC6EF: FStStrNoPop var_F0
  loc_BEC6F2: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(DebeMoas)"
  loc_BEC6F5: ConcatStr
  loc_BEC6F6: FStStrNoPop var_F4
  loc_BEC6F9: LitStr " ELSE 0"
  loc_BEC6FC: ConcatStr
  loc_BEC6FD: FStStrNoPop var_F8
  loc_BEC700: LitStr " END MoviFonD /*egresos*/"
  loc_BEC703: ConcatStr
  loc_BEC704: FStStr var_8C
  loc_BEC707: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BEC71E: ILdRf var_8C
  loc_BEC721: LitStr ", CASE /*ingresos*/"
  loc_BEC724: ConcatStr
  loc_BEC725: FStStrNoPop Anexos_XIV_mensual
  loc_BEC728: LitStr " WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_BEC72B: ConcatStr
  loc_BEC72C: FStStrNoPop var_98
  loc_BEC72F: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121'))"
  loc_BEC732: ConcatStr
  loc_BEC733: FStStrNoPop var_DC
  loc_BEC736: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_BEC739: ConcatStr
  loc_BEC73A: FStStrNoPop var_E0
  loc_BEC73D: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_BEC740: ConcatStr
  loc_BEC741: FStStrNoPop var_E4
  loc_BEC744: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(HabeMoas)"
  loc_BEC747: ConcatStr
  loc_BEC748: FStStrNoPop var_E8
  loc_BEC74B: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BEC74E: ConcatStr
  loc_BEC74F: FStStrNoPop var_EC
  loc_BEC752: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEC755: ConcatStr
  loc_BEC756: FStStrNoPop var_F0
  loc_BEC759: LitStr " ELSE 0"
  loc_BEC75C: ConcatStr
  loc_BEC75D: FStStrNoPop var_F4
  loc_BEC760: LitStr " END MoviFonH /*ingresos*/"
  loc_BEC763: ConcatStr
  loc_BEC764: FStStrNoPop var_F8
  loc_BEC767: LitStr " FROM asiento"
  loc_BEC76A: ConcatStr
  loc_BEC76B: FStStrNoPop var_FC
  loc_BEC76E: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEC771: ConcatStr
  loc_BEC772: FStStrNoPop var_100
  loc_BEC775: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEC778: ConcatStr
  loc_BEC779: FStStrNoPop var_104
  loc_BEC77C: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEC77F: ConcatStr
  loc_BEC780: FStStrNoPop var_108
  loc_BEC783: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEC786: ConcatStr
  loc_BEC787: FStStrNoPop var_10C
  loc_BEC78A: LitStr " AND Month(asiento.FechAsie)"
  loc_BEC78D: ConcatStr
  loc_BEC78E: FStStrNoPop var_110
  loc_BEC791: ILdRf var_90
  loc_BEC794: ConcatStr
  loc_BEC795: FStStrNoPop var_114
  loc_BEC798: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEC79B: ConcatStr
  loc_BEC79C: FStStrNoPop var_118
  loc_BEC79F: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEC7A2: ConcatStr
  loc_BEC7A3: FStStr var_8C
  loc_BEC7A6: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BEC7CD: ILdRf var_8C
  loc_BEC7D0: Call EjecutarRsCls(from_stack_1v)
  loc_BEC7D5: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BEC7D8: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEC7DB: ConcatStr
  loc_BEC7DC: FStStrNoPop Anexos_XIV_mensual
  loc_BEC7DF: LitStr ", 0 MoviEjeD"
  loc_BEC7E2: ConcatStr
  loc_BEC7E3: FStStrNoPop var_98
  loc_BEC7E6: LitStr ", 0 MoviEjeH"
  loc_BEC7E9: ConcatStr
  loc_BEC7EA: FStStrNoPop var_DC
  loc_BEC7ED: LitStr ", CASE /*egresos*/"
  loc_BEC7F0: ConcatStr
  loc_BEC7F1: FStStrNoPop var_E0
  loc_BEC7F4: LitStr " WHEN mv.CodiCuco = '2111070216' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BEC7F7: ConcatStr
  loc_BEC7F8: FStStrNoPop var_E4
  loc_BEC7FB: LitStr " ELSE 0"
  loc_BEC7FE: ConcatStr
  loc_BEC7FF: FStStrNoPop var_E8
  loc_BEC802: LitStr " END MoviFonD /*egresos*/"
  loc_BEC805: ConcatStr
  loc_BEC806: FStStrNoPop var_EC
  loc_BEC809: LitStr ", CASE /*ingresos*/"
  loc_BEC80C: ConcatStr
  loc_BEC80D: FStStrNoPop var_F0
  loc_BEC810: LitStr " WHEN mv.CodiCuco = '2111070216' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BEC813: ConcatStr
  loc_BEC814: FStStrNoPop var_F4
  loc_BEC817: LitStr " ELSE 0"
  loc_BEC81A: ConcatStr
  loc_BEC81B: FStStrNoPop var_F8
  loc_BEC81E: LitStr " END MoviFonH /*ingresos*/"
  loc_BEC821: ConcatStr
  loc_BEC822: FStStrNoPop var_FC
  loc_BEC825: LitStr " FROM asiento"
  loc_BEC828: ConcatStr
  loc_BEC829: FStStrNoPop var_100
  loc_BEC82C: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEC82F: ConcatStr
  loc_BEC830: FStStrNoPop var_104
  loc_BEC833: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEC836: ConcatStr
  loc_BEC837: FStStrNoPop var_108
  loc_BEC83A: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEC83D: ConcatStr
  loc_BEC83E: FStStrNoPop var_10C
  loc_BEC841: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEC844: ConcatStr
  loc_BEC845: FStStrNoPop var_110
  loc_BEC848: LitStr " AND mv.CodiCuco = '2111070216'"
  loc_BEC84B: ConcatStr
  loc_BEC84C: FStStrNoPop var_114
  loc_BEC84F: LitStr " AND Month(asiento.FechAsie)"
  loc_BEC852: ConcatStr
  loc_BEC853: FStStrNoPop var_118
  loc_BEC856: ILdRf var_90
  loc_BEC859: ConcatStr
  loc_BEC85A: FStStrNoPop var_11C
  loc_BEC85D: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEC860: ConcatStr
  loc_BEC861: FStStrNoPop var_120
  loc_BEC864: LitStr " GROUP BY CodiCuco;"
  loc_BEC867: ConcatStr
  loc_BEC868: FStStr var_8C
  loc_BEC86B: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BEC896: ILdRf var_8C
  loc_BEC899: Call EjecutarRsCls(from_stack_1v)
  loc_BEC89E: Branch loc_BECB57
  loc_BEC8A1: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BEC8A4: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEC8A7: ConcatStr
  loc_BEC8A8: FStStrNoPop Anexos_XIV_mensual
  loc_BEC8AB: LitStr ", CASE"
  loc_BEC8AE: ConcatStr
  loc_BEC8AF: FStStrNoPop var_98
  loc_BEC8B2: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BEC8B5: ConcatStr
  loc_BEC8B6: FStStrNoPop var_DC
  loc_BEC8B9: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN IF(CodiTias IN (2,24),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BEC8BC: ConcatStr
  loc_BEC8BD: FStStrNoPop var_E0
  loc_BEC8C0: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BEC8C3: ConcatStr
  loc_BEC8C4: FStStrNoPop var_E4
  loc_BEC8C7: LitStr " ELSE 0"
  loc_BEC8CA: ConcatStr
  loc_BEC8CB: FStStrNoPop var_E8
  loc_BEC8CE: LitStr " END SaldIniD"
  loc_BEC8D1: ConcatStr
  loc_BEC8D2: FStStrNoPop var_EC
  loc_BEC8D5: LitStr ", CASE"
  loc_BEC8D8: ConcatStr
  loc_BEC8D9: FStStrNoPop var_F0
  loc_BEC8DC: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BEC8DF: ConcatStr
  loc_BEC8E0: FStStrNoPop var_F4
  loc_BEC8E3: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0)"
  loc_BEC8E6: ConcatStr
  loc_BEC8E7: FStStrNoPop var_F8
  loc_BEC8EA: LitStr " ELSE 0"
  loc_BEC8ED: ConcatStr
  loc_BEC8EE: FStStrNoPop var_FC
  loc_BEC8F1: LitStr " END SaldIniH"
  loc_BEC8F4: ConcatStr
  loc_BEC8F5: FStStrNoPop var_100
  loc_BEC8F8: LitStr " FROM asiento"
  loc_BEC8FB: ConcatStr
  loc_BEC8FC: FStStrNoPop var_104
  loc_BEC8FF: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEC902: ConcatStr
  loc_BEC903: FStStrNoPop var_108
  loc_BEC906: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEC909: ConcatStr
  loc_BEC90A: FStStrNoPop var_10C
  loc_BEC90D: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEC910: ConcatStr
  loc_BEC911: FStStrNoPop var_110
  loc_BEC914: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEC917: ConcatStr
  loc_BEC918: FStStrNoPop var_114
  loc_BEC91B: LitStr " AND Month(asiento.FechAsie) < "
  loc_BEC91E: ConcatStr
  loc_BEC91F: FStStrNoPop var_118
  loc_BEC922: FLdI2 Mes
  loc_BEC925: CStrUI1
  loc_BEC927: FStStrNoPop var_11C
  loc_BEC92A: ConcatStr
  loc_BEC92B: FStStrNoPop var_120
  loc_BEC92E: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEC931: ConcatStr
  loc_BEC932: FStStrNoPop var_128
  loc_BEC935: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEC938: ConcatStr
  loc_BEC939: FStStrNoPop var_12C
  loc_BEC93C: Call EjecutarRsCls(from_stack_1v)
  loc_BEC941: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = ""
  loc_BEC970: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BEC973: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEC976: ConcatStr
  loc_BEC977: FStStrNoPop Anexos_XIV_mensual
  loc_BEC97A: LitStr ", Sum(DebeMoas) MoviEjeD"
  loc_BEC97D: ConcatStr
  loc_BEC97E: FStStrNoPop var_98
  loc_BEC981: LitStr ", Sum(HabeMoas) MoviEjeH"
  loc_BEC984: ConcatStr
  loc_BEC985: FStStrNoPop var_DC
  loc_BEC988: LitStr ", CASE /*egresos*/"
  loc_BEC98B: ConcatStr
  loc_BEC98C: FStStrNoPop var_E0
  loc_BEC98F: LitStr " WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_BEC992: ConcatStr
  loc_BEC993: FStStrNoPop var_E4
  loc_BEC996: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121'))"
  loc_BEC999: ConcatStr
  loc_BEC99A: FStStrNoPop var_E8
  loc_BEC99D: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_BEC9A0: ConcatStr
  loc_BEC9A1: FStStrNoPop var_EC
  loc_BEC9A4: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_BEC9A7: ConcatStr
  loc_BEC9A8: FStStrNoPop var_F0
  loc_BEC9AB: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(DebeMoas)"
  loc_BEC9AE: ConcatStr
  loc_BEC9AF: FStStrNoPop var_F4
  loc_BEC9B2: LitStr " ELSE 0"
  loc_BEC9B5: ConcatStr
  loc_BEC9B6: FStStrNoPop var_F8
  loc_BEC9B9: LitStr " END MoviFonD /*egresos*/"
  loc_BEC9BC: ConcatStr
  loc_BEC9BD: FStStr var_8C
  loc_BEC9C0: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = ""
  loc_BEC9D7: ILdRf var_8C
  loc_BEC9DA: LitStr ", CASE /*ingresos*/"
  loc_BEC9DD: ConcatStr
  loc_BEC9DE: FStStrNoPop Anexos_XIV_mensual
  loc_BEC9E1: LitStr " WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1153')"
  loc_BEC9E4: ConcatStr
  loc_BEC9E5: FStStrNoPop var_98
  loc_BEC9E8: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT LIKE '2121'))"
  loc_BEC9EB: ConcatStr
  loc_BEC9EC: FStStrNoPop var_DC
  loc_BEC9EF: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_BEC9F2: ConcatStr
  loc_BEC9F3: FStStrNoPop var_E0
  loc_BEC9F6: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_BEC9F9: ConcatStr
  loc_BEC9FA: FStStrNoPop var_E4
  loc_BEC9FD: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216') THEN Sum(HabeMoas)"
  loc_BECA00: ConcatStr
  loc_BECA01: FStStrNoPop var_E8
  loc_BECA04: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BECA07: ConcatStr
  loc_BECA08: FStStrNoPop var_EC
  loc_BECA0B: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BECA0E: ConcatStr
  loc_BECA0F: FStStrNoPop var_F0
  loc_BECA12: LitStr " ELSE 0"
  loc_BECA15: ConcatStr
  loc_BECA16: FStStrNoPop var_F4
  loc_BECA19: LitStr " END MoviFonH /*ingresos*/"
  loc_BECA1C: ConcatStr
  loc_BECA1D: FStStrNoPop var_F8
  loc_BECA20: LitStr " FROM asiento"
  loc_BECA23: ConcatStr
  loc_BECA24: FStStrNoPop var_FC
  loc_BECA27: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BECA2A: ConcatStr
  loc_BECA2B: FStStrNoPop var_100
  loc_BECA2E: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BECA31: ConcatStr
  loc_BECA32: FStStrNoPop var_104
  loc_BECA35: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BECA38: ConcatStr
  loc_BECA39: FStStrNoPop var_108
  loc_BECA3C: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BECA3F: ConcatStr
  loc_BECA40: FStStrNoPop var_10C
  loc_BECA43: LitStr " AND Month(asiento.FechAsie)"
  loc_BECA46: ConcatStr
  loc_BECA47: FStStrNoPop var_110
  loc_BECA4A: ILdRf var_90
  loc_BECA4D: ConcatStr
  loc_BECA4E: FStStrNoPop var_114
  loc_BECA51: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BECA54: ConcatStr
  loc_BECA55: FStStrNoPop var_118
  loc_BECA58: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BECA5B: ConcatStr
  loc_BECA5C: FStStr var_8C
  loc_BECA5F: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BECA86: ILdRf var_8C
  loc_BECA89: Call EjecutarRsCls(from_stack_1v)
  loc_BECA8E: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BECA91: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BECA94: ConcatStr
  loc_BECA95: FStStrNoPop Anexos_XIV_mensual
  loc_BECA98: LitStr ", 0 MoviEjeD"
  loc_BECA9B: ConcatStr
  loc_BECA9C: FStStrNoPop var_98
  loc_BECA9F: LitStr ", 0 MoviEjeH"
  loc_BECAA2: ConcatStr
  loc_BECAA3: FStStrNoPop var_DC
  loc_BECAA6: LitStr ", CASE /*egresos*/"
  loc_BECAA9: ConcatStr
  loc_BECAAA: FStStrNoPop var_E0
  loc_BECAAD: LitStr " WHEN mv.CodiCuco = '2111070216' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BECAB0: ConcatStr
  loc_BECAB1: FStStrNoPop var_E4
  loc_BECAB4: LitStr " ELSE 0"
  loc_BECAB7: ConcatStr
  loc_BECAB8: FStStrNoPop var_E8
  loc_BECABB: LitStr " END MoviFonD /*egresos*/"
  loc_BECABE: ConcatStr
  loc_BECABF: FStStrNoPop var_EC
  loc_BECAC2: LitStr ", CASE /*ingresos*/"
  loc_BECAC5: ConcatStr
  loc_BECAC6: FStStrNoPop var_F0
  loc_BECAC9: LitStr " WHEN mv.CodiCuco = '2111070216' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BECACC: ConcatStr
  loc_BECACD: FStStrNoPop var_F4
  loc_BECAD0: LitStr " ELSE 0"
  loc_BECAD3: ConcatStr
  loc_BECAD4: FStStrNoPop var_F8
  loc_BECAD7: LitStr " END MoviFonH /*ingresos*/"
  loc_BECADA: ConcatStr
  loc_BECADB: FStStrNoPop var_FC
  loc_BECADE: LitStr " FROM asiento"
  loc_BECAE1: ConcatStr
  loc_BECAE2: FStStrNoPop var_100
  loc_BECAE5: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BECAE8: ConcatStr
  loc_BECAE9: FStStrNoPop var_104
  loc_BECAEC: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BECAEF: ConcatStr
  loc_BECAF0: FStStrNoPop var_108
  loc_BECAF3: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BECAF6: ConcatStr
  loc_BECAF7: FStStrNoPop var_10C
  loc_BECAFA: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BECAFD: ConcatStr
  loc_BECAFE: FStStrNoPop var_110
  loc_BECB01: LitStr " AND mv.CodiCuco = '2111070216'"
  loc_BECB04: ConcatStr
  loc_BECB05: FStStrNoPop var_114
  loc_BECB08: LitStr " AND Month(asiento.FechAsie)"
  loc_BECB0B: ConcatStr
  loc_BECB0C: FStStrNoPop var_118
  loc_BECB0F: ILdRf var_90
  loc_BECB12: ConcatStr
  loc_BECB13: FStStrNoPop var_11C
  loc_BECB16: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BECB19: ConcatStr
  loc_BECB1A: FStStrNoPop var_120
  loc_BECB1D: LitStr " GROUP BY CodiCuco;"
  loc_BECB20: ConcatStr
  loc_BECB21: FStStr var_8C
  loc_BECB24: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BECB4F: ILdRf var_8C
  loc_BECB52: Call EjecutarRsCls(from_stack_1v)
  loc_BECB57: LitStr "INSERT INTO ttemp "
  loc_BECB5A: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_BECB5D: ConcatStr
  loc_BECB5E: FStStrNoPop Anexos_XIV_mensual
  loc_BECB61: LitStr " , Sum(DeveImpu)"
  loc_BECB64: ConcatStr
  loc_BECB65: FStStrNoPop var_98
  loc_BECB68: LitStr " , 0"
  loc_BECB6B: ConcatStr
  loc_BECB6C: FStStrNoPop var_DC
  loc_BECB6F: LitStr " FROM infogov.cuentacontable cc"
  loc_BECB72: ConcatStr
  loc_BECB73: FStStrNoPop var_E0
  loc_BECB76: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_BECB79: ConcatStr
  loc_BECB7A: FStStrNoPop var_E4
  loc_BECB7D: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_BECB80: ConcatStr
  loc_BECB81: FStStrNoPop var_E8
  loc_BECB84: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_BECB87: ConcatStr
  loc_BECB88: FStStrNoPop var_EC
  loc_BECB8B: LitStr " AND Month(imputacion.FechImpu)"
  loc_BECB8E: ConcatStr
  loc_BECB8F: FStStrNoPop var_F0
  loc_BECB92: ILdRf var_90
  loc_BECB95: ConcatStr
  loc_BECB96: FStStrNoPop var_F4
  loc_BECB99: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_BECB9C: ConcatStr
  loc_BECB9D: FStStrNoPop var_F8
  loc_BECBA0: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_BECBA3: ConcatStr
  loc_BECBA4: FStStrNoPop var_FC
  loc_BECBA7: LitStr " GROUP BY CodiCuco;"
  loc_BECBAA: ConcatStr
  loc_BECBAB: FStStrNoPop var_100
  loc_BECBAE: Call EjecutarRsCls(from_stack_1v)
  loc_BECBB3: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BECBCE: Branch loc_BEE0A2
  loc_BECBD1: ILdRf var_124
  loc_BECBD4: LitStr "Municipalidad de San Carlos"
  loc_BECBD7: EqStr
  loc_BECBD9: BranchT loc_BECC08
  loc_BECBDC: ILdRf var_124
  loc_BECBDF: LitStr "Municipalidad de Malargüe"
  loc_BECBE2: EqStr
  loc_BECBE4: BranchT loc_BECC08
  loc_BECBE7: ILdRf var_124
  loc_BECBEA: LitStr "Municipalidad de Lavalle"
  loc_BECBED: EqStr
  loc_BECBEF: BranchT loc_BECC08
  loc_BECBF2: ILdRf var_124
  loc_BECBF5: LitStr "Municipalidad de General Alvear"
  loc_BECBF8: EqStr
  loc_BECBFA: BranchT loc_BECC08
  loc_BECBFD: ILdRf var_124
  loc_BECC00: LitStr "Municipalidad de Santa Rosa"
  loc_BECC03: EqStr
  loc_BECC05: BranchF loc_BED17B
  loc_BECC08: FLdI2 Mes
  loc_BECC0B: LitI2_Byte 1
  loc_BECC0D: EqI2
  loc_BECC0E: FLdI2 EsMensual
  loc_BECC11: NotI4
  loc_BECC12: OrI4
  loc_BECC13: BranchF loc_BECE73
  loc_BECC16: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BECC19: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BECC1C: ConcatStr
  loc_BECC1D: FStStrNoPop Anexos_XIV_mensual
  loc_BECC20: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_BECC23: ConcatStr
  loc_BECC24: FStStrNoPop var_98
  loc_BECC27: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_BECC2A: ConcatStr
  loc_BECC2B: FStStrNoPop var_DC
  loc_BECC2E: LitStr " FROM asiento"
  loc_BECC31: ConcatStr
  loc_BECC32: FStStrNoPop var_E0
  loc_BECC35: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BECC38: ConcatStr
  loc_BECC39: FStStrNoPop var_E4
  loc_BECC3C: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BECC3F: ConcatStr
  loc_BECC40: FStStrNoPop var_E8
  loc_BECC43: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BECC46: ConcatStr
  loc_BECC47: FStStrNoPop var_EC
  loc_BECC4A: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BECC4D: ConcatStr
  loc_BECC4E: FStStrNoPop var_F0
  loc_BECC51: LitStr " AND Month(asiento.FechAsie)"
  loc_BECC54: ConcatStr
  loc_BECC55: FStStrNoPop var_F4
  loc_BECC58: ILdRf var_90
  loc_BECC5B: ConcatStr
  loc_BECC5C: FStStrNoPop var_F8
  loc_BECC5F: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BECC62: ConcatStr
  loc_BECC63: FStStrNoPop var_FC
  loc_BECC66: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BECC69: ConcatStr
  loc_BECC6A: FStStrNoPop var_100
  loc_BECC6D: Call EjecutarRsCls(from_stack_1v)
  loc_BECC72: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BECC8D: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BECC90: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BECC93: ConcatStr
  loc_BECC94: FStStrNoPop Anexos_XIV_mensual
  loc_BECC97: LitStr ", Sum(If(CodiTias NOT IN (17,18,14),DebeMoas,0)) MoviEjeD"
  loc_BECC9A: ConcatStr
  loc_BECC9B: FStStrNoPop var_98
  loc_BECC9E: LitStr ", Sum(If(CodiTias NOT IN (17,18,14),HabeMoas,0)) MoviEjeH"
  loc_BECCA1: ConcatStr
  loc_BECCA2: FStStr var_8C
  loc_BECCA5: FFreeStr Anexos_XIV_mensual = ""
  loc_BECCAC: ILdRf var_8C
  loc_BECCAF: LitStr ", CASE /* egresos MoviFonD */"
  loc_BECCB2: ConcatStr
  loc_BECCB3: FStStrNoPop Anexos_XIV_mensual
  loc_BECCB6: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_BECCB9: ConcatStr
  loc_BECCBA: FStStrNoPop var_98
  loc_BECCBD: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN (17,18,31,32,33,34) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_BECCC0: ConcatStr
  loc_BECCC1: FStStrNoPop var_DC
  loc_BECCC4: LitStr " WHEN CodiTicu IN ('1140','1170') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0)),0)"
  loc_BECCC7: ConcatStr
  loc_BECCC8: FStStrNoPop var_E0
  loc_BECCCB: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(DebeMoas-HabeMoas)>0,SUM(DebeMoas-HabeMoas),0)"
  loc_BECCCE: ConcatStr
  loc_BECCCF: FStStrNoPop var_E4
  loc_BECCD2: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BECCD5: ConcatStr
  loc_BECCD6: FStStrNoPop var_E8
  loc_BECCD9: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_BECCDC: ConcatStr
  loc_BECCDD: FStStrNoPop var_EC
  loc_BECCE0: LitStr " WHEN CodiTicu IN ('2114','2115','2117') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_BECCE3: ConcatStr
  loc_BECCE4: FStStrNoPop var_F0
  loc_BECCE7: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_BECCEA: ConcatStr
  loc_BECCEB: FStStrNoPop var_F4
  loc_BECCEE: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BECCF1: ConcatStr
  loc_BECCF2: FStStrNoPop var_F8
  loc_BECCF5: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BECCF8: ConcatStr
  loc_BECCF9: FStStrNoPop var_FC
  loc_BECCFC: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),HabeMoas-DebeMoas,0)),0)"
  loc_BECCFF: ConcatStr
  loc_BECD00: FStStrNoPop var_100
  loc_BECD03: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BECD06: ConcatStr
  loc_BECD07: FStStrNoPop var_104
  loc_BECD0A: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BECD0D: ConcatStr
  loc_BECD0E: FStStrNoPop var_108
  loc_BECD11: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BECD14: ConcatStr
  loc_BECD15: FStStrNoPop var_10C
  loc_BECD18: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BECD1B: ConcatStr
  loc_BECD1C: FStStrNoPop var_110
  loc_BECD1F: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BECD22: ConcatStr
  loc_BECD23: FStStrNoPop var_114
  loc_BECD26: LitStr " ELSE 0"
  loc_BECD29: ConcatStr
  loc_BECD2A: FStStrNoPop var_118
  loc_BECD2D: LitStr " END MoviFonD /* FIN egresos MoviFonD */"
  loc_BECD30: ConcatStr
  loc_BECD31: FStStr var_8C
  loc_BECD34: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BECD5B: ILdRf var_8C
  loc_BECD5E: LitStr ", CASE /* ingresos MoviFonH */"
  loc_BECD61: ConcatStr
  loc_BECD62: FStStrNoPop Anexos_XIV_mensual
  loc_BECD65: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150') THEN 0"
  loc_BECD68: ConcatStr
  loc_BECD69: FStStrNoPop var_98
  loc_BECD6C: LitStr " WHEN CodiTicu IN ('1160') AND CodiTias NOT IN(17,18,31,32,33,34) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_BECD6F: ConcatStr
  loc_BECD70: FStStrNoPop var_DC
  loc_BECD73: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_BECD76: ConcatStr
  loc_BECD77: FStStrNoPop var_E0
  loc_BECD7A: LitStr " WHEN CodiTicu IN ('2111') AND CodiTias IN (12,13) THEN IF(SUM(HabeMoas-DebeMoas)>0,SUM(HabeMoas-DebeMoas),0)"
  loc_BECD7D: ConcatStr
  loc_BECD7E: FStStrNoPop var_E4
  loc_BECD81: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BECD84: ConcatStr
  loc_BECD85: FStStrNoPop var_E8
  loc_BECD88: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_BECD8B: ConcatStr
  loc_BECD8C: FStStrNoPop var_EC
  loc_BECD8F: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BECD92: ConcatStr
  loc_BECD93: FStStrNoPop var_F0
  loc_BECD96: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_BECD99: ConcatStr
  loc_BECD9A: FStStrNoPop var_F4
  loc_BECD9D: LitStr " WHEN CodiTicu IN ('2117') THEN Sum(If(CodiTias IN (13),HabeMoas-DebeMoas,0))"
  loc_BECDA0: ConcatStr
  loc_BECDA1: FStStrNoPop var_F8
  loc_BECDA4: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BECDA7: ConcatStr
  loc_BECDA8: FStStrNoPop var_FC
  loc_BECDAB: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BECDAE: ConcatStr
  loc_BECDAF: FStStrNoPop var_100
  loc_BECDB2: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_BECDB5: ConcatStr
  loc_BECDB6: FStStrNoPop var_104
  loc_BECDB9: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BECDBC: ConcatStr
  loc_BECDBD: FStStrNoPop var_108
  loc_BECDC0: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BECDC3: ConcatStr
  loc_BECDC4: FStStrNoPop var_10C
  loc_BECDC7: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BECDCA: ConcatStr
  loc_BECDCB: FStStrNoPop var_110
  loc_BECDCE: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BECDD1: ConcatStr
  loc_BECDD2: FStStrNoPop var_114
  loc_BECDD5: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BECDD8: ConcatStr
  loc_BECDD9: FStStrNoPop var_118
  loc_BECDDC: LitStr " ELSE 0"
  loc_BECDDF: ConcatStr
  loc_BECDE0: FStStrNoPop var_11C
  loc_BECDE3: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BECDE6: ConcatStr
  loc_BECDE7: FStStr var_8C
  loc_BECDEA: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_BECE13: ILdRf var_8C
  loc_BECE16: LitStr " FROM asiento"
  loc_BECE19: ConcatStr
  loc_BECE1A: FStStrNoPop Anexos_XIV_mensual
  loc_BECE1D: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BECE20: ConcatStr
  loc_BECE21: FStStrNoPop var_98
  loc_BECE24: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BECE27: ConcatStr
  loc_BECE28: FStStrNoPop var_DC
  loc_BECE2B: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BECE2E: ConcatStr
  loc_BECE2F: FStStrNoPop var_E0
  loc_BECE32: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BECE35: ConcatStr
  loc_BECE36: FStStrNoPop var_E4
  loc_BECE39: LitStr " AND Month(asiento.FechAsie)"
  loc_BECE3C: ConcatStr
  loc_BECE3D: FStStrNoPop var_E8
  loc_BECE40: ILdRf var_90
  loc_BECE43: ConcatStr
  loc_BECE44: FStStrNoPop var_EC
  loc_BECE47: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BECE4A: ConcatStr
  loc_BECE4B: FStStrNoPop var_F0
  loc_BECE4E: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BECE51: ConcatStr
  loc_BECE52: FStStr var_8C
  loc_BECE55: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BECE68: ILdRf var_8C
  loc_BECE6B: Call EjecutarRsCls(from_stack_1v)
  loc_BECE70: Branch loc_BED101
  loc_BECE73: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BECE76: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BECE79: ConcatStr
  loc_BECE7A: FStStrNoPop Anexos_XIV_mensual
  loc_BECE7D: LitStr ", CASE"
  loc_BECE80: ConcatStr
  loc_BECE81: FStStrNoPop var_98
  loc_BECE84: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BECE87: ConcatStr
  loc_BECE88: FStStrNoPop var_DC
  loc_BECE8B: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN IF(CodiTias IN (2,24),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BECE8E: ConcatStr
  loc_BECE8F: FStStrNoPop var_E0
  loc_BECE92: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BECE95: ConcatStr
  loc_BECE96: FStStrNoPop var_E4
  loc_BECE99: LitStr " ELSE 0"
  loc_BECE9C: ConcatStr
  loc_BECE9D: FStStrNoPop var_E8
  loc_BECEA0: LitStr " END SaldIniD"
  loc_BECEA3: ConcatStr
  loc_BECEA4: FStStrNoPop var_EC
  loc_BECEA7: LitStr ", CASE"
  loc_BECEAA: ConcatStr
  loc_BECEAB: FStStrNoPop var_F0
  loc_BECEAE: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BECEB1: ConcatStr
  loc_BECEB2: FStStrNoPop var_F4
  loc_BECEB5: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0)"
  loc_BECEB8: ConcatStr
  loc_BECEB9: FStStrNoPop var_F8
  loc_BECEBC: LitStr " ELSE 0"
  loc_BECEBF: ConcatStr
  loc_BECEC0: FStStrNoPop var_FC
  loc_BECEC3: LitStr " END SaldIniH"
  loc_BECEC6: ConcatStr
  loc_BECEC7: FStStrNoPop var_100
  loc_BECECA: LitStr " FROM asiento"
  loc_BECECD: ConcatStr
  loc_BECECE: FStStrNoPop var_104
  loc_BECED1: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BECED4: ConcatStr
  loc_BECED5: FStStrNoPop var_108
  loc_BECED8: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BECEDB: ConcatStr
  loc_BECEDC: FStStrNoPop var_10C
  loc_BECEDF: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BECEE2: ConcatStr
  loc_BECEE3: FStStrNoPop var_110
  loc_BECEE6: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BECEE9: ConcatStr
  loc_BECEEA: FStStrNoPop var_114
  loc_BECEED: LitStr " AND Month(asiento.FechAsie) < "
  loc_BECEF0: ConcatStr
  loc_BECEF1: FStStrNoPop var_118
  loc_BECEF4: FLdI2 Mes
  loc_BECEF7: CStrUI1
  loc_BECEF9: FStStrNoPop var_11C
  loc_BECEFC: ConcatStr
  loc_BECEFD: FStStrNoPop var_120
  loc_BECF00: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BECF03: ConcatStr
  loc_BECF04: FStStrNoPop var_128
  loc_BECF07: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BECF0A: ConcatStr
  loc_BECF0B: FStStrNoPop var_12C
  loc_BECF0E: Call EjecutarRsCls(from_stack_1v)
  loc_BECF13: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = ""
  loc_BECF42: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BECF45: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BECF48: ConcatStr
  loc_BECF49: FStStrNoPop Anexos_XIV_mensual
  loc_BECF4C: LitStr ", Sum(DebeMoas) MoviEjeD"
  loc_BECF4F: ConcatStr
  loc_BECF50: FStStrNoPop var_98
  loc_BECF53: LitStr ", Sum(HabeMoas) MoviEjeH"
  loc_BECF56: ConcatStr
  loc_BECF57: FStStr var_8C
  loc_BECF5A: FFreeStr Anexos_XIV_mensual = ""
  loc_BECF61: ILdRf var_8C
  loc_BECF64: LitStr ", CASE /* egresos MoviFonD */"
  loc_BECF67: ConcatStr
  loc_BECF68: FStStrNoPop Anexos_XIV_mensual
  loc_BECF6B: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_BECF6E: ConcatStr
  loc_BECF6F: FStStrNoPop var_98
  loc_BECF72: LitStr " WHEN CodiTicu IN ('1140') THEN Sum(If(CodiTias IN (6,12,10),DebeMoas-HabeMoas,0))"
  loc_BECF75: ConcatStr
  loc_BECF76: FStStrNoPop var_DC
  loc_BECF79: LitStr " WHEN CodiTicu IN ('1170') THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_BECF7C: ConcatStr
  loc_BECF7D: FStStrNoPop var_E0
  loc_BECF80: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_BECF83: ConcatStr
  loc_BECF84: FStStrNoPop var_E4
  loc_BECF87: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BECF8A: ConcatStr
  loc_BECF8B: FStStrNoPop var_E8
  loc_BECF8E: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12,22,24),DebeMoas-HabeMoas,0))"
  loc_BECF91: ConcatStr
  loc_BECF92: FStStrNoPop var_EC
  loc_BECF95: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_BECF98: ConcatStr
  loc_BECF99: FStStrNoPop var_F0
  loc_BECF9C: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_BECF9F: ConcatStr
  loc_BECFA0: FStStrNoPop var_F4
  loc_BECFA3: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BECFA6: ConcatStr
  loc_BECFA7: FStStrNoPop var_F8
  loc_BECFAA: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BECFAD: ConcatStr
  loc_BECFAE: FStStrNoPop var_FC
  loc_BECFB1: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))"
  loc_BECFB4: ConcatStr
  loc_BECFB5: FStStrNoPop var_100
  loc_BECFB8: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BECFBB: ConcatStr
  loc_BECFBC: FStStrNoPop var_104
  loc_BECFBF: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BECFC2: ConcatStr
  loc_BECFC3: FStStrNoPop var_108
  loc_BECFC6: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BECFC9: ConcatStr
  loc_BECFCA: FStStrNoPop var_10C
  loc_BECFCD: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BECFD0: ConcatStr
  loc_BECFD1: FStStrNoPop var_110
  loc_BECFD4: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BECFD7: ConcatStr
  loc_BECFD8: FStStrNoPop var_114
  loc_BECFDB: LitStr " ELSE 0"
  loc_BECFDE: ConcatStr
  loc_BECFDF: FStStrNoPop var_118
  loc_BECFE2: LitStr " END MoviFonD /* FIN egresos MoviFonD */"
  loc_BECFE5: ConcatStr
  loc_BECFE6: FStStr var_8C
  loc_BECFE9: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BED010: ILdRf var_8C
  loc_BED013: LitStr ", CASE /* ingresos MoviFonH */"
  loc_BED016: ConcatStr
  loc_BED017: FStStrNoPop Anexos_XIV_mensual
  loc_BED01A: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_BED01D: ConcatStr
  loc_BED01E: FStStrNoPop var_98
  loc_BED021: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_BED024: ConcatStr
  loc_BED025: FStStrNoPop var_DC
  loc_BED028: LitStr " WHEN CodiTicu IN (2111,2112) THEN 0"
  loc_BED02B: ConcatStr
  loc_BED02C: FStStrNoPop var_E0
  loc_BED02F: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_BED032: ConcatStr
  loc_BED033: FStStrNoPop var_E4
  loc_BED036: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BED039: ConcatStr
  loc_BED03A: FStStrNoPop var_E8
  loc_BED03D: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BED040: ConcatStr
  loc_BED041: FStStrNoPop var_EC
  loc_BED044: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BED047: ConcatStr
  loc_BED048: FStStrNoPop var_F0
  loc_BED04B: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_BED04E: ConcatStr
  loc_BED04F: FStStrNoPop var_F4
  loc_BED052: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED055: ConcatStr
  loc_BED056: FStStrNoPop var_F8
  loc_BED059: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BED05C: ConcatStr
  loc_BED05D: FStStrNoPop var_FC
  loc_BED060: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED063: ConcatStr
  loc_BED064: FStStrNoPop var_100
  loc_BED067: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BED06A: ConcatStr
  loc_BED06B: FStStrNoPop var_104
  loc_BED06E: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED071: ConcatStr
  loc_BED072: FStStrNoPop var_108
  loc_BED075: LitStr " ELSE 0"
  loc_BED078: ConcatStr
  loc_BED079: FStStrNoPop var_10C
  loc_BED07C: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BED07F: ConcatStr
  loc_BED080: FStStr var_8C
  loc_BED083: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = ""
  loc_BED0A4: ILdRf var_8C
  loc_BED0A7: LitStr " FROM asiento"
  loc_BED0AA: ConcatStr
  loc_BED0AB: FStStrNoPop Anexos_XIV_mensual
  loc_BED0AE: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED0B1: ConcatStr
  loc_BED0B2: FStStrNoPop var_98
  loc_BED0B5: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED0B8: ConcatStr
  loc_BED0B9: FStStrNoPop var_DC
  loc_BED0BC: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED0BF: ConcatStr
  loc_BED0C0: FStStrNoPop var_E0
  loc_BED0C3: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BED0C6: ConcatStr
  loc_BED0C7: FStStrNoPop var_E4
  loc_BED0CA: LitStr " AND Month(asiento.FechAsie)"
  loc_BED0CD: ConcatStr
  loc_BED0CE: FStStrNoPop var_E8
  loc_BED0D1: ILdRf var_90
  loc_BED0D4: ConcatStr
  loc_BED0D5: FStStrNoPop var_EC
  loc_BED0D8: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED0DB: ConcatStr
  loc_BED0DC: FStStrNoPop var_F0
  loc_BED0DF: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED0E2: ConcatStr
  loc_BED0E3: FStStr var_8C
  loc_BED0E6: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BED0F9: ILdRf var_8C
  loc_BED0FC: Call EjecutarRsCls(from_stack_1v)
  loc_BED101: LitStr "INSERT INTO ttemp "
  loc_BED104: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_BED107: ConcatStr
  loc_BED108: FStStrNoPop Anexos_XIV_mensual
  loc_BED10B: LitStr ", Sum(DeveImpu)/*, Sum(PagaImpu)*/"
  loc_BED10E: ConcatStr
  loc_BED10F: FStStrNoPop var_98
  loc_BED112: LitStr ", 0"
  loc_BED115: ConcatStr
  loc_BED116: FStStrNoPop var_DC
  loc_BED119: LitStr " FROM infogov.cuentacontable cc"
  loc_BED11C: ConcatStr
  loc_BED11D: FStStrNoPop var_E0
  loc_BED120: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_BED123: ConcatStr
  loc_BED124: FStStrNoPop var_E4
  loc_BED127: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_BED12A: ConcatStr
  loc_BED12B: FStStrNoPop var_E8
  loc_BED12E: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_BED131: ConcatStr
  loc_BED132: FStStrNoPop var_EC
  loc_BED135: LitStr " AND Month(imputacion.FechImpu)"
  loc_BED138: ConcatStr
  loc_BED139: FStStrNoPop var_F0
  loc_BED13C: ILdRf var_90
  loc_BED13F: ConcatStr
  loc_BED140: FStStrNoPop var_F4
  loc_BED143: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_BED146: ConcatStr
  loc_BED147: FStStrNoPop var_F8
  loc_BED14A: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_BED14D: ConcatStr
  loc_BED14E: FStStrNoPop var_FC
  loc_BED151: LitStr " GROUP BY CodiCuco;"
  loc_BED154: ConcatStr
  loc_BED155: FStStrNoPop var_100
  loc_BED158: Call EjecutarRsCls(from_stack_1v)
  loc_BED15D: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BED178: Branch loc_BEE0A2
  loc_BED17B: ILdRf var_124
  loc_BED17E: LitStr "Municipalidad de Tunuyán"
  loc_BED181: EqStr
  loc_BED183: BranchF loc_BED6BC
  loc_BED186: FLdI2 Mes
  loc_BED189: LitI2_Byte 1
  loc_BED18B: EqI2
  loc_BED18C: FLdI2 EsMensual
  loc_BED18F: NotI4
  loc_BED190: OrI4
  loc_BED191: BranchF loc_BED3C5
  loc_BED194: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BED197: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED19A: ConcatStr
  loc_BED19B: FStStrNoPop Anexos_XIV_mensual
  loc_BED19E: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_BED1A1: ConcatStr
  loc_BED1A2: FStStrNoPop var_98
  loc_BED1A5: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_BED1A8: ConcatStr
  loc_BED1A9: FStStrNoPop var_DC
  loc_BED1AC: LitStr " FROM asiento"
  loc_BED1AF: ConcatStr
  loc_BED1B0: FStStrNoPop var_E0
  loc_BED1B3: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED1B6: ConcatStr
  loc_BED1B7: FStStrNoPop var_E4
  loc_BED1BA: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED1BD: ConcatStr
  loc_BED1BE: FStStrNoPop var_E8
  loc_BED1C1: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED1C4: ConcatStr
  loc_BED1C5: FStStrNoPop var_EC
  loc_BED1C8: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BED1CB: ConcatStr
  loc_BED1CC: FStStrNoPop var_F0
  loc_BED1CF: LitStr " AND Month(asiento.FechAsie)"
  loc_BED1D2: ConcatStr
  loc_BED1D3: FStStrNoPop var_F4
  loc_BED1D6: ILdRf var_90
  loc_BED1D9: ConcatStr
  loc_BED1DA: FStStrNoPop var_F8
  loc_BED1DD: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED1E0: ConcatStr
  loc_BED1E1: FStStrNoPop var_FC
  loc_BED1E4: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED1E7: ConcatStr
  loc_BED1E8: FStStrNoPop var_100
  loc_BED1EB: Call EjecutarRsCls(from_stack_1v)
  loc_BED1F0: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BED20B: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BED20E: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED211: ConcatStr
  loc_BED212: FStStrNoPop Anexos_XIV_mensual
  loc_BED215: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_BED218: ConcatStr
  loc_BED219: FStStrNoPop var_98
  loc_BED21C: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_BED21F: ConcatStr
  loc_BED220: FStStrNoPop var_DC
  loc_BED223: LitStr ", CASE /* egresos MoviFonD */"
  loc_BED226: ConcatStr
  loc_BED227: FStStrNoPop var_E0
  loc_BED22A: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_BED22D: ConcatStr
  loc_BED22E: FStStrNoPop var_E4
  loc_BED231: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_BED234: ConcatStr
  loc_BED235: FStStrNoPop var_E8
  loc_BED238: LitStr " WHEN CodiTicu IN ('1140') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),DebeMoas-HabeMoas,0)),0)"
  loc_BED23B: ConcatStr
  loc_BED23C: FStStrNoPop var_EC
  loc_BED23F: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_BED242: ConcatStr
  loc_BED243: FStStrNoPop var_F0
  loc_BED246: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_BED249: ConcatStr
  loc_BED24A: FStStrNoPop var_F4
  loc_BED24D: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BED250: ConcatStr
  loc_BED251: FStStrNoPop var_F8
  loc_BED254: LitStr " WHEN CodiTicu IN ('2113') THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_BED257: ConcatStr
  loc_BED258: FStStrNoPop var_FC
  loc_BED25B: LitStr " WHEN CodiTicu IN ('2114','2115','2123') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_BED25E: ConcatStr
  loc_BED25F: FStStrNoPop var_100
  loc_BED262: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_BED265: ConcatStr
  loc_BED266: FStStrNoPop var_104
  loc_BED269: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BED26C: ConcatStr
  loc_BED26D: FStStrNoPop var_108
  loc_BED270: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BED273: ConcatStr
  loc_BED274: FStStrNoPop var_10C
  loc_BED277: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED27A: ConcatStr
  loc_BED27B: FStStrNoPop var_110
  loc_BED27E: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BED281: ConcatStr
  loc_BED282: FStStrNoPop var_114
  loc_BED285: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED288: ConcatStr
  loc_BED289: FStStrNoPop var_118
  loc_BED28C: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BED28F: ConcatStr
  loc_BED290: FStStrNoPop var_11C
  loc_BED293: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED296: ConcatStr
  loc_BED297: FStStrNoPop var_120
  loc_BED29A: LitStr " ELSE 0"
  loc_BED29D: ConcatStr
  loc_BED29E: FStStrNoPop var_128
  loc_BED2A1: LitStr " END MoviFonD /* FIN egresos MoviFonD */"
  loc_BED2A4: ConcatStr
  loc_BED2A5: FStStr var_8C
  loc_BED2A8: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_BED2D5: ILdRf var_8C
  loc_BED2D8: LitStr ", CASE /* ingresos MoviFonH */"
  loc_BED2DB: ConcatStr
  loc_BED2DC: FStStrNoPop Anexos_XIV_mensual
  loc_BED2DF: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_BED2E2: ConcatStr
  loc_BED2E3: FStStrNoPop var_98
  loc_BED2E6: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_BED2E9: ConcatStr
  loc_BED2EA: FStStrNoPop var_DC
  loc_BED2ED: LitStr " WHEN CodiTicu IN ('1140') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,4,10),HabeMoas-DebeMoas,0)),0)"
  loc_BED2F0: ConcatStr
  loc_BED2F1: FStStrNoPop var_E0
  loc_BED2F4: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_BED2F7: ConcatStr
  loc_BED2F8: FStStrNoPop var_E4
  loc_BED2FB: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_BED2FE: ConcatStr
  loc_BED2FF: FStStrNoPop var_E8
  loc_BED302: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_BED305: ConcatStr
  loc_BED306: FStStrNoPop var_EC
  loc_BED309: LitStr " WHEN CodiTicu IN ('2114','2115','2123') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BED30C: ConcatStr
  loc_BED30D: FStStrNoPop var_F0
  loc_BED310: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_BED313: ConcatStr
  loc_BED314: FStStrNoPop var_F4
  loc_BED317: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BED31A: ConcatStr
  loc_BED31B: FStStrNoPop var_F8
  loc_BED31E: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BED321: ConcatStr
  loc_BED322: FStStrNoPop var_FC
  loc_BED325: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED328: ConcatStr
  loc_BED329: FStStrNoPop var_100
  loc_BED32C: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BED32F: ConcatStr
  loc_BED330: FStStrNoPop var_104
  loc_BED333: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED336: ConcatStr
  loc_BED337: FStStrNoPop var_108
  loc_BED33A: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/   WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED33D: ConcatStr
  loc_BED33E: FStStrNoPop var_10C
  loc_BED341: LitStr " ELSE 0"
  loc_BED344: ConcatStr
  loc_BED345: FStStrNoPop var_110
  loc_BED348: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BED34B: ConcatStr
  loc_BED34C: FStStrNoPop var_114
  loc_BED34F: LitStr " FROM asiento"
  loc_BED352: ConcatStr
  loc_BED353: FStStrNoPop var_118
  loc_BED356: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED359: ConcatStr
  loc_BED35A: FStStrNoPop var_11C
  loc_BED35D: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED360: ConcatStr
  loc_BED361: FStStrNoPop var_120
  loc_BED364: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED367: ConcatStr
  loc_BED368: FStStrNoPop var_128
  loc_BED36B: LitStr " WHERE asiento.PeriInfo = @periinfo AND Month(asiento.FechAsie)"
  loc_BED36E: ConcatStr
  loc_BED36F: FStStrNoPop var_12C
  loc_BED372: ILdRf var_90
  loc_BED375: ConcatStr
  loc_BED376: FStStrNoPop var_130
  loc_BED379: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED37C: ConcatStr
  loc_BED37D: FStStrNoPop var_134
  loc_BED380: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED383: ConcatStr
  loc_BED384: FStStr var_8C
  loc_BED387: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BED3BA: ILdRf var_8C
  loc_BED3BD: Call EjecutarRsCls(from_stack_1v)
  loc_BED3C2: Branch loc_BED642
  loc_BED3C5: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BED3C8: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED3CB: ConcatStr
  loc_BED3CC: FStStrNoPop Anexos_XIV_mensual
  loc_BED3CF: LitStr ", CASE"
  loc_BED3D2: ConcatStr
  loc_BED3D3: FStStrNoPop var_98
  loc_BED3D6: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BED3D9: ConcatStr
  loc_BED3DA: FStStrNoPop var_DC
  loc_BED3DD: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN IF(CodiTias IN (2,24),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BED3E0: ConcatStr
  loc_BED3E1: FStStrNoPop var_E0
  loc_BED3E4: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BED3E7: ConcatStr
  loc_BED3E8: FStStrNoPop var_E4
  loc_BED3EB: LitStr " ELSE 0"
  loc_BED3EE: ConcatStr
  loc_BED3EF: FStStrNoPop var_E8
  loc_BED3F2: LitStr " END SaldIniD"
  loc_BED3F5: ConcatStr
  loc_BED3F6: FStStrNoPop var_EC
  loc_BED3F9: LitStr ", CASE"
  loc_BED3FC: ConcatStr
  loc_BED3FD: FStStrNoPop var_F0
  loc_BED400: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BED403: ConcatStr
  loc_BED404: FStStrNoPop var_F4
  loc_BED407: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0)"
  loc_BED40A: ConcatStr
  loc_BED40B: FStStrNoPop var_F8
  loc_BED40E: LitStr " ELSE 0"
  loc_BED411: ConcatStr
  loc_BED412: FStStrNoPop var_FC
  loc_BED415: LitStr " END SaldIniH"
  loc_BED418: ConcatStr
  loc_BED419: FStStrNoPop var_100
  loc_BED41C: LitStr " FROM asiento"
  loc_BED41F: ConcatStr
  loc_BED420: FStStrNoPop var_104
  loc_BED423: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED426: ConcatStr
  loc_BED427: FStStrNoPop var_108
  loc_BED42A: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED42D: ConcatStr
  loc_BED42E: FStStrNoPop var_10C
  loc_BED431: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED434: ConcatStr
  loc_BED435: FStStrNoPop var_110
  loc_BED438: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BED43B: ConcatStr
  loc_BED43C: FStStrNoPop var_114
  loc_BED43F: LitStr " AND Month(asiento.FechAsie) < "
  loc_BED442: ConcatStr
  loc_BED443: FStStrNoPop var_118
  loc_BED446: FLdI2 Mes
  loc_BED449: CStrUI1
  loc_BED44B: FStStrNoPop var_11C
  loc_BED44E: ConcatStr
  loc_BED44F: FStStrNoPop var_120
  loc_BED452: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED455: ConcatStr
  loc_BED456: FStStrNoPop var_128
  loc_BED459: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED45C: ConcatStr
  loc_BED45D: FStStrNoPop var_12C
  loc_BED460: Call EjecutarRsCls(from_stack_1v)
  loc_BED465: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = ""
  loc_BED494: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BED497: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED49A: ConcatStr
  loc_BED49B: FStStrNoPop Anexos_XIV_mensual
  loc_BED49E: LitStr ", Sum(DebeMoas) MoviEjeD"
  loc_BED4A1: ConcatStr
  loc_BED4A2: FStStrNoPop var_98
  loc_BED4A5: LitStr ", Sum(HabeMoas) MoviEjeH"
  loc_BED4A8: ConcatStr
  loc_BED4A9: FStStrNoPop var_DC
  loc_BED4AC: LitStr ", CASE /* egresos MoviFonD */"
  loc_BED4AF: ConcatStr
  loc_BED4B0: FStStrNoPop var_E0
  loc_BED4B3: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_BED4B6: ConcatStr
  loc_BED4B7: FStStrNoPop var_E4
  loc_BED4BA: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_BED4BD: ConcatStr
  loc_BED4BE: FStStrNoPop var_E8
  loc_BED4C1: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_BED4C4: ConcatStr
  loc_BED4C5: FStStrNoPop var_EC
  loc_BED4C8: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_BED4CB: ConcatStr
  loc_BED4CC: FStStrNoPop var_F0
  loc_BED4CF: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BED4D2: ConcatStr
  loc_BED4D3: FStStrNoPop var_F4
  loc_BED4D6: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_BED4D9: ConcatStr
  loc_BED4DA: FStStrNoPop var_F8
  loc_BED4DD: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_BED4E0: ConcatStr
  loc_BED4E1: FStStrNoPop var_FC
  loc_BED4E4: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BED4E7: ConcatStr
  loc_BED4E8: FStStrNoPop var_100
  loc_BED4EB: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BED4EE: ConcatStr
  loc_BED4EF: FStStrNoPop var_104
  loc_BED4F2: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BED4F5: ConcatStr
  loc_BED4F6: FStStrNoPop var_108
  loc_BED4F9: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED4FC: ConcatStr
  loc_BED4FD: FStStrNoPop var_10C
  loc_BED500: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BED503: ConcatStr
  loc_BED504: FStStrNoPop var_110
  loc_BED507: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED50A: ConcatStr
  loc_BED50B: FStStrNoPop var_114
  loc_BED50E: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BED511: ConcatStr
  loc_BED512: FStStrNoPop var_118
  loc_BED515: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED518: ConcatStr
  loc_BED519: FStStrNoPop var_11C
  loc_BED51C: LitStr " ELSE 0"
  loc_BED51F: ConcatStr
  loc_BED520: FStStrNoPop var_120
  loc_BED523: LitStr " END MoviFonD /* FIN egresos MoviFonD */"
  loc_BED526: ConcatStr
  loc_BED527: FStStr var_8C
  loc_BED52A: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = ""
  loc_BED555: ILdRf var_8C
  loc_BED558: LitStr ", CASE /* ingresos MoviFonH */"
  loc_BED55B: ConcatStr
  loc_BED55C: FStStrNoPop Anexos_XIV_mensual
  loc_BED55F: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_BED562: ConcatStr
  loc_BED563: FStStrNoPop var_98
  loc_BED566: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_BED569: ConcatStr
  loc_BED56A: FStStrNoPop var_DC
  loc_BED56D: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_BED570: ConcatStr
  loc_BED571: FStStrNoPop var_E0
  loc_BED574: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_BED577: ConcatStr
  loc_BED578: FStStrNoPop var_E4
  loc_BED57B: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_BED57E: ConcatStr
  loc_BED57F: FStStrNoPop var_E8
  loc_BED582: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BED585: ConcatStr
  loc_BED586: FStStrNoPop var_EC
  loc_BED589: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BED58C: ConcatStr
  loc_BED58D: FStStrNoPop var_F0
  loc_BED590: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BED593: ConcatStr
  loc_BED594: FStStrNoPop var_F4
  loc_BED597: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BED59A: ConcatStr
  loc_BED59B: FStStrNoPop var_F8
  loc_BED59E: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED5A1: ConcatStr
  loc_BED5A2: FStStrNoPop var_FC
  loc_BED5A5: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BED5A8: ConcatStr
  loc_BED5A9: FStStrNoPop var_100
  loc_BED5AC: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED5AF: ConcatStr
  loc_BED5B0: FStStrNoPop var_104
  loc_BED5B3: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BED5B6: ConcatStr
  loc_BED5B7: FStStrNoPop var_108
  loc_BED5BA: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED5BD: ConcatStr
  loc_BED5BE: FStStrNoPop var_10C
  loc_BED5C1: LitStr " ELSE 0"
  loc_BED5C4: ConcatStr
  loc_BED5C5: FStStrNoPop var_110
  loc_BED5C8: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BED5CB: ConcatStr
  loc_BED5CC: FStStrNoPop var_114
  loc_BED5CF: LitStr " FROM asiento"
  loc_BED5D2: ConcatStr
  loc_BED5D3: FStStrNoPop var_118
  loc_BED5D6: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED5D9: ConcatStr
  loc_BED5DA: FStStrNoPop var_11C
  loc_BED5DD: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED5E0: ConcatStr
  loc_BED5E1: FStStrNoPop var_120
  loc_BED5E4: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED5E7: ConcatStr
  loc_BED5E8: FStStrNoPop var_128
  loc_BED5EB: LitStr " WHERE asiento.PeriInfo = @periinfo AND Month(asiento.FechAsie)"
  loc_BED5EE: ConcatStr
  loc_BED5EF: FStStrNoPop var_12C
  loc_BED5F2: ILdRf var_90
  loc_BED5F5: ConcatStr
  loc_BED5F6: FStStrNoPop var_130
  loc_BED5F9: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED5FC: ConcatStr
  loc_BED5FD: FStStrNoPop var_134
  loc_BED600: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED603: ConcatStr
  loc_BED604: FStStr var_8C
  loc_BED607: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BED63A: ILdRf var_8C
  loc_BED63D: Call EjecutarRsCls(from_stack_1v)
  loc_BED642: LitStr "INSERT INTO ttemp "
  loc_BED645: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_BED648: ConcatStr
  loc_BED649: FStStrNoPop Anexos_XIV_mensual
  loc_BED64C: LitStr ", Sum(DeveImpu)/*, Sum(PagaImpu)*/"
  loc_BED64F: ConcatStr
  loc_BED650: FStStrNoPop var_98
  loc_BED653: LitStr ", 0"
  loc_BED656: ConcatStr
  loc_BED657: FStStrNoPop var_DC
  loc_BED65A: LitStr " FROM infogov.cuentacontable cc"
  loc_BED65D: ConcatStr
  loc_BED65E: FStStrNoPop var_E0
  loc_BED661: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_BED664: ConcatStr
  loc_BED665: FStStrNoPop var_E4
  loc_BED668: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_BED66B: ConcatStr
  loc_BED66C: FStStrNoPop var_E8
  loc_BED66F: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_BED672: ConcatStr
  loc_BED673: FStStrNoPop var_EC
  loc_BED676: LitStr " AND Month(imputacion.FechImpu)"
  loc_BED679: ConcatStr
  loc_BED67A: FStStrNoPop var_F0
  loc_BED67D: ILdRf var_90
  loc_BED680: ConcatStr
  loc_BED681: FStStrNoPop var_F4
  loc_BED684: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_BED687: ConcatStr
  loc_BED688: FStStrNoPop var_F8
  loc_BED68B: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_BED68E: ConcatStr
  loc_BED68F: FStStrNoPop var_FC
  loc_BED692: LitStr " GROUP BY CodiCuco;"
  loc_BED695: ConcatStr
  loc_BED696: FStStrNoPop var_100
  loc_BED699: Call EjecutarRsCls(from_stack_1v)
  loc_BED69E: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BED6B9: Branch loc_BEE0A2
  loc_BED6BC: ILdRf var_124
  loc_BED6BF: LitStr "Municipalidad de Rivadavia"
  loc_BED6C2: EqStr
  loc_BED6C4: BranchF loc_BEDBE2
  loc_BED6C7: FLdI2 Mes
  loc_BED6CA: LitI2_Byte 1
  loc_BED6CC: EqI2
  loc_BED6CD: FLdI2 EsMensual
  loc_BED6D0: NotI4
  loc_BED6D1: OrI4
  loc_BED6D2: BranchF loc_BED8F4
  loc_BED6D5: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BED6D8: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED6DB: ConcatStr
  loc_BED6DC: FStStrNoPop Anexos_XIV_mensual
  loc_BED6DF: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_BED6E2: ConcatStr
  loc_BED6E3: FStStrNoPop var_98
  loc_BED6E6: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_BED6E9: ConcatStr
  loc_BED6EA: FStStrNoPop var_DC
  loc_BED6ED: LitStr " FROM asiento"
  loc_BED6F0: ConcatStr
  loc_BED6F1: FStStrNoPop var_E0
  loc_BED6F4: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED6F7: ConcatStr
  loc_BED6F8: FStStrNoPop var_E4
  loc_BED6FB: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED6FE: ConcatStr
  loc_BED6FF: FStStrNoPop var_E8
  loc_BED702: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED705: ConcatStr
  loc_BED706: FStStrNoPop var_EC
  loc_BED709: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BED70C: ConcatStr
  loc_BED70D: FStStrNoPop var_F0
  loc_BED710: LitStr " AND Month(asiento.FechAsie)"
  loc_BED713: ConcatStr
  loc_BED714: FStStrNoPop var_F4
  loc_BED717: ILdRf var_90
  loc_BED71A: ConcatStr
  loc_BED71B: FStStrNoPop var_F8
  loc_BED71E: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED721: ConcatStr
  loc_BED722: FStStrNoPop var_FC
  loc_BED725: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED728: ConcatStr
  loc_BED729: FStStrNoPop var_100
  loc_BED72C: Call EjecutarRsCls(from_stack_1v)
  loc_BED731: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BED74C: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BED74F: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED752: ConcatStr
  loc_BED753: FStStrNoPop Anexos_XIV_mensual
  loc_BED756: LitStr ", Sum(If(CodiTias NOT IN (17,18,14),DebeMoas,0)) MoviEjeD"
  loc_BED759: ConcatStr
  loc_BED75A: FStStrNoPop var_98
  loc_BED75D: LitStr ", Sum(If(CodiTias NOT IN (17,18,14),HabeMoas,0)) MoviEjeH"
  loc_BED760: ConcatStr
  loc_BED761: FStStrNoPop var_DC
  loc_BED764: LitStr ", CASE /* egresos MoviFonD */"
  loc_BED767: ConcatStr
  loc_BED768: FStStrNoPop var_E0
  loc_BED76B: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_BED76E: ConcatStr
  loc_BED76F: FStStrNoPop var_E4
  loc_BED772: LitStr " WHEN CodiTicu IN ('1170') THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_BED775: ConcatStr
  loc_BED776: FStStrNoPop var_E8
  loc_BED779: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_BED77C: ConcatStr
  loc_BED77D: FStStrNoPop var_EC
  loc_BED780: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BED783: ConcatStr
  loc_BED784: FStStrNoPop var_F0
  loc_BED787: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12,22,24),DebeMoas-HabeMoas,0))"
  loc_BED78A: ConcatStr
  loc_BED78B: FStStrNoPop var_F4
  loc_BED78E: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_BED791: ConcatStr
  loc_BED792: FStStrNoPop var_F8
  loc_BED795: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BED798: ConcatStr
  loc_BED799: FStStrNoPop var_FC
  loc_BED79C: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BED79F: ConcatStr
  loc_BED7A0: FStStrNoPop var_100
  loc_BED7A3: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))"
  loc_BED7A6: ConcatStr
  loc_BED7A7: FStStrNoPop var_104
  loc_BED7AA: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED7AD: ConcatStr
  loc_BED7AE: FStStrNoPop var_108
  loc_BED7B1: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BED7B4: ConcatStr
  loc_BED7B5: FStStrNoPop var_10C
  loc_BED7B8: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED7BB: ConcatStr
  loc_BED7BC: FStStrNoPop var_110
  loc_BED7BF: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BED7C2: ConcatStr
  loc_BED7C3: FStStrNoPop var_114
  loc_BED7C6: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED7C9: ConcatStr
  loc_BED7CA: FStStrNoPop var_118
  loc_BED7CD: LitStr " ELSE 0"
  loc_BED7D0: ConcatStr
  loc_BED7D1: FStStrNoPop var_11C
  loc_BED7D4: LitStr " END MoviFonD /* FIN egresos MoviFonD */"
  loc_BED7D7: ConcatStr
  loc_BED7D8: FStStr var_8C
  loc_BED7DB: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_BED804: ILdRf var_8C
  loc_BED807: LitStr ", CASE /* ingresos MoviFonH */"
  loc_BED80A: ConcatStr
  loc_BED80B: FStStrNoPop Anexos_XIV_mensual
  loc_BED80E: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_BED811: ConcatStr
  loc_BED812: FStStrNoPop var_98
  loc_BED815: LitStr " WHEN CodiTicu IN ('1170') THEN Sum(If(CodiTias IN (9,13,6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BED818: ConcatStr
  loc_BED819: FStStrNoPop var_DC
  loc_BED81C: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_BED81F: ConcatStr
  loc_BED820: FStStrNoPop var_E0
  loc_BED823: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_BED826: ConcatStr
  loc_BED827: FStStrNoPop var_E4
  loc_BED82A: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BED82D: ConcatStr
  loc_BED82E: FStStrNoPop var_E8
  loc_BED831: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BED834: ConcatStr
  loc_BED835: FStStrNoPop var_EC
  loc_BED838: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BED83B: ConcatStr
  loc_BED83C: FStStrNoPop var_F0
  loc_BED83F: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_BED842: ConcatStr
  loc_BED843: FStStrNoPop var_F4
  loc_BED846: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BED849: ConcatStr
  loc_BED84A: FStStrNoPop var_F8
  loc_BED84D: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BED850: ConcatStr
  loc_BED851: FStStrNoPop var_FC
  loc_BED854: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BED857: ConcatStr
  loc_BED858: FStStrNoPop var_100
  loc_BED85B: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BED85E: ConcatStr
  loc_BED85F: FStStrNoPop var_104
  loc_BED862: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BED865: ConcatStr
  loc_BED866: FStStrNoPop var_108
  loc_BED869: LitStr " ELSE 0"
  loc_BED86C: ConcatStr
  loc_BED86D: FStStrNoPop var_10C
  loc_BED870: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BED873: ConcatStr
  loc_BED874: FStStrNoPop var_110
  loc_BED877: LitStr " FROM asiento"
  loc_BED87A: ConcatStr
  loc_BED87B: FStStrNoPop var_114
  loc_BED87E: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED881: ConcatStr
  loc_BED882: FStStrNoPop var_118
  loc_BED885: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED888: ConcatStr
  loc_BED889: FStStrNoPop var_11C
  loc_BED88C: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED88F: ConcatStr
  loc_BED890: FStStrNoPop var_120
  loc_BED893: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BED896: ConcatStr
  loc_BED897: FStStrNoPop var_128
  loc_BED89A: LitStr " AND Month(asiento.FechAsie)"
  loc_BED89D: ConcatStr
  loc_BED89E: FStStrNoPop var_12C
  loc_BED8A1: ILdRf var_90
  loc_BED8A4: ConcatStr
  loc_BED8A5: FStStrNoPop var_130
  loc_BED8A8: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED8AB: ConcatStr
  loc_BED8AC: FStStrNoPop var_134
  loc_BED8AF: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED8B2: ConcatStr
  loc_BED8B3: FStStr var_8C
  loc_BED8B6: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BED8E9: ILdRf var_8C
  loc_BED8EC: Call EjecutarRsCls(from_stack_1v)
  loc_BED8F1: Branch loc_BEDB68
  loc_BED8F4: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BED8F7: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED8FA: ConcatStr
  loc_BED8FB: FStStrNoPop Anexos_XIV_mensual
  loc_BED8FE: LitStr ", CASE"
  loc_BED901: ConcatStr
  loc_BED902: FStStrNoPop var_98
  loc_BED905: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BED908: ConcatStr
  loc_BED909: FStStrNoPop var_DC
  loc_BED90C: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN IF(CodiTias IN (2,24),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BED90F: ConcatStr
  loc_BED910: FStStrNoPop var_E0
  loc_BED913: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BED916: ConcatStr
  loc_BED917: FStStrNoPop var_E4
  loc_BED91A: LitStr " ELSE 0"
  loc_BED91D: ConcatStr
  loc_BED91E: FStStrNoPop var_E8
  loc_BED921: LitStr " END SaldIniD"
  loc_BED924: ConcatStr
  loc_BED925: FStStrNoPop var_EC
  loc_BED928: LitStr ", CASE"
  loc_BED92B: ConcatStr
  loc_BED92C: FStStrNoPop var_F0
  loc_BED92F: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BED932: ConcatStr
  loc_BED933: FStStrNoPop var_F4
  loc_BED936: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0)"
  loc_BED939: ConcatStr
  loc_BED93A: FStStrNoPop var_F8
  loc_BED93D: LitStr " ELSE 0"
  loc_BED940: ConcatStr
  loc_BED941: FStStrNoPop var_FC
  loc_BED944: LitStr " END SaldIniH"
  loc_BED947: ConcatStr
  loc_BED948: FStStrNoPop var_100
  loc_BED94B: LitStr " FROM asiento"
  loc_BED94E: ConcatStr
  loc_BED94F: FStStrNoPop var_104
  loc_BED952: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BED955: ConcatStr
  loc_BED956: FStStrNoPop var_108
  loc_BED959: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BED95C: ConcatStr
  loc_BED95D: FStStrNoPop var_10C
  loc_BED960: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BED963: ConcatStr
  loc_BED964: FStStrNoPop var_110
  loc_BED967: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BED96A: ConcatStr
  loc_BED96B: FStStrNoPop var_114
  loc_BED96E: LitStr " AND Month(asiento.FechAsie) < "
  loc_BED971: ConcatStr
  loc_BED972: FStStrNoPop var_118
  loc_BED975: FLdI2 Mes
  loc_BED978: CStrUI1
  loc_BED97A: FStStrNoPop var_11C
  loc_BED97D: ConcatStr
  loc_BED97E: FStStrNoPop var_120
  loc_BED981: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BED984: ConcatStr
  loc_BED985: FStStrNoPop var_128
  loc_BED988: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BED98B: ConcatStr
  loc_BED98C: FStStrNoPop var_12C
  loc_BED98F: Call EjecutarRsCls(from_stack_1v)
  loc_BED994: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = ""
  loc_BED9C3: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BED9C6: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BED9C9: ConcatStr
  loc_BED9CA: FStStrNoPop Anexos_XIV_mensual
  loc_BED9CD: LitStr ", Sum(DebeMoas) MoviEjeD"
  loc_BED9D0: ConcatStr
  loc_BED9D1: FStStrNoPop var_98
  loc_BED9D4: LitStr ", Sum(HabeMoas) MoviEjeH"
  loc_BED9D7: ConcatStr
  loc_BED9D8: FStStrNoPop var_DC
  loc_BED9DB: LitStr ", CASE /* egresos MoviFonD */"
  loc_BED9DE: ConcatStr
  loc_BED9DF: FStStrNoPop var_E0
  loc_BED9E2: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_BED9E5: ConcatStr
  loc_BED9E6: FStStrNoPop var_E4
  loc_BED9E9: LitStr " WHEN CodiTicu IN ('1170') THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_BED9EC: ConcatStr
  loc_BED9ED: FStStrNoPop var_E8
  loc_BED9F0: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_BED9F3: ConcatStr
  loc_BED9F4: FStStrNoPop var_EC
  loc_BED9F7: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_BED9FA: ConcatStr
  loc_BED9FB: FStStrNoPop var_F0
  loc_BED9FE: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12,22,24),DebeMoas-HabeMoas,0))"
  loc_BEDA01: ConcatStr
  loc_BEDA02: FStStrNoPop var_F4
  loc_BEDA05: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_BEDA08: ConcatStr
  loc_BEDA09: FStStrNoPop var_F8
  loc_BEDA0C: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BEDA0F: ConcatStr
  loc_BEDA10: FStStrNoPop var_FC
  loc_BEDA13: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_BEDA16: ConcatStr
  loc_BEDA17: FStStrNoPop var_100
  loc_BEDA1A: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))"
  loc_BEDA1D: ConcatStr
  loc_BEDA1E: FStStrNoPop var_104
  loc_BEDA21: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BEDA24: ConcatStr
  loc_BEDA25: FStStrNoPop var_108
  loc_BEDA28: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BEDA2B: ConcatStr
  loc_BEDA2C: FStStrNoPop var_10C
  loc_BEDA2F: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BEDA32: ConcatStr
  loc_BEDA33: FStStrNoPop var_110
  loc_BEDA36: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BEDA39: ConcatStr
  loc_BEDA3A: FStStrNoPop var_114
  loc_BEDA3D: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BEDA40: ConcatStr
  loc_BEDA41: FStStrNoPop var_118
  loc_BEDA44: LitStr " ELSE 0"
  loc_BEDA47: ConcatStr
  loc_BEDA48: FStStrNoPop var_11C
  loc_BEDA4B: LitStr " END MoviFonD /* FIN egresos MoviFonD */"
  loc_BEDA4E: ConcatStr
  loc_BEDA4F: FStStr var_8C
  loc_BEDA52: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = ""
  loc_BEDA7B: ILdRf var_8C
  loc_BEDA7E: LitStr ", CASE /* ingresos MoviFonH */"
  loc_BEDA81: ConcatStr
  loc_BEDA82: FStStrNoPop Anexos_XIV_mensual
  loc_BEDA85: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_BEDA88: ConcatStr
  loc_BEDA89: FStStrNoPop var_98
  loc_BEDA8C: LitStr " WHEN CodiTicu IN ('1170') THEN Sum(If(CodiTias IN (9,13,6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BEDA8F: ConcatStr
  loc_BEDA90: FStStrNoPop var_DC
  loc_BEDA93: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_BEDA96: ConcatStr
  loc_BEDA97: FStStrNoPop var_E0
  loc_BEDA9A: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_BEDA9D: ConcatStr
  loc_BEDA9E: FStStrNoPop var_E4
  loc_BEDAA1: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_BEDAA4: ConcatStr
  loc_BEDAA5: FStStrNoPop var_E8
  loc_BEDAA8: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_BEDAAB: ConcatStr
  loc_BEDAAC: FStStrNoPop var_EC
  loc_BEDAAF: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_BEDAB2: ConcatStr
  loc_BEDAB3: FStStrNoPop var_F0
  loc_BEDAB6: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_BEDAB9: ConcatStr
  loc_BEDABA: FStStrNoPop var_F4
  loc_BEDABD: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BEDAC0: ConcatStr
  loc_BEDAC1: FStStrNoPop var_F8
  loc_BEDAC4: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BEDAC7: ConcatStr
  loc_BEDAC8: FStStrNoPop var_FC
  loc_BEDACB: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BEDACE: ConcatStr
  loc_BEDACF: FStStrNoPop var_100
  loc_BEDAD2: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDAD5: ConcatStr
  loc_BEDAD6: FStStrNoPop var_104
  loc_BEDAD9: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BEDADC: ConcatStr
  loc_BEDADD: FStStrNoPop var_108
  loc_BEDAE0: LitStr " ELSE 0"
  loc_BEDAE3: ConcatStr
  loc_BEDAE4: FStStrNoPop var_10C
  loc_BEDAE7: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BEDAEA: ConcatStr
  loc_BEDAEB: FStStrNoPop var_110
  loc_BEDAEE: LitStr " FROM asiento"
  loc_BEDAF1: ConcatStr
  loc_BEDAF2: FStStrNoPop var_114
  loc_BEDAF5: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEDAF8: ConcatStr
  loc_BEDAF9: FStStrNoPop var_118
  loc_BEDAFC: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEDAFF: ConcatStr
  loc_BEDB00: FStStrNoPop var_11C
  loc_BEDB03: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEDB06: ConcatStr
  loc_BEDB07: FStStrNoPop var_120
  loc_BEDB0A: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEDB0D: ConcatStr
  loc_BEDB0E: FStStrNoPop var_128
  loc_BEDB11: LitStr " AND Month(asiento.FechAsie)"
  loc_BEDB14: ConcatStr
  loc_BEDB15: FStStrNoPop var_12C
  loc_BEDB18: ILdRf var_90
  loc_BEDB1B: ConcatStr
  loc_BEDB1C: FStStrNoPop var_130
  loc_BEDB1F: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEDB22: ConcatStr
  loc_BEDB23: FStStrNoPop var_134
  loc_BEDB26: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEDB29: ConcatStr
  loc_BEDB2A: FStStr var_8C
  loc_BEDB2D: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = ""
  loc_BEDB60: ILdRf var_8C
  loc_BEDB63: Call EjecutarRsCls(from_stack_1v)
  loc_BEDB68: LitStr "INSERT INTO ttemp "
  loc_BEDB6B: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_BEDB6E: ConcatStr
  loc_BEDB6F: FStStrNoPop Anexos_XIV_mensual
  loc_BEDB72: LitStr ", Sum(DeveImpu)/*, Sum(PagaImpu)*/"
  loc_BEDB75: ConcatStr
  loc_BEDB76: FStStrNoPop var_98
  loc_BEDB79: LitStr ", 0"
  loc_BEDB7C: ConcatStr
  loc_BEDB7D: FStStrNoPop var_DC
  loc_BEDB80: LitStr " FROM infogov.cuentacontable cc"
  loc_BEDB83: ConcatStr
  loc_BEDB84: FStStrNoPop var_E0
  loc_BEDB87: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_BEDB8A: ConcatStr
  loc_BEDB8B: FStStrNoPop var_E4
  loc_BEDB8E: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_BEDB91: ConcatStr
  loc_BEDB92: FStStrNoPop var_E8
  loc_BEDB95: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_BEDB98: ConcatStr
  loc_BEDB99: FStStrNoPop var_EC
  loc_BEDB9C: LitStr " AND Month(imputacion.FechImpu)"
  loc_BEDB9F: ConcatStr
  loc_BEDBA0: FStStrNoPop var_F0
  loc_BEDBA3: ILdRf var_90
  loc_BEDBA6: ConcatStr
  loc_BEDBA7: FStStrNoPop var_F4
  loc_BEDBAA: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_BEDBAD: ConcatStr
  loc_BEDBAE: FStStrNoPop var_F8
  loc_BEDBB1: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_BEDBB4: ConcatStr
  loc_BEDBB5: FStStrNoPop var_FC
  loc_BEDBB8: LitStr " GROUP BY CodiCuco;"
  loc_BEDBBB: ConcatStr
  loc_BEDBBC: FStStrNoPop var_100
  loc_BEDBBF: Call EjecutarRsCls(from_stack_1v)
  loc_BEDBC4: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BEDBDF: Branch loc_BEE0A2
  loc_BEDBE2: ILdRf var_124
  loc_BEDBE5: LitStr "Municipalidad de Tupungato"
  loc_BEDBE8: EqStr
  loc_BEDBEA: BranchF loc_BEE08A
  loc_BEDBED: FLdI2 Mes
  loc_BEDBF0: LitI2_Byte 1
  loc_BEDBF2: EqI2
  loc_BEDBF3: FLdI2 EsMensual
  loc_BEDBF6: NotI4
  loc_BEDBF7: OrI4
  loc_BEDBF8: BranchF loc_BEDDDB
  loc_BEDBFB: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BEDBFE: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEDC01: ConcatStr
  loc_BEDC02: FStStrNoPop Anexos_XIV_mensual
  loc_BEDC05: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_BEDC08: ConcatStr
  loc_BEDC09: FStStrNoPop var_98
  loc_BEDC0C: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_BEDC0F: ConcatStr
  loc_BEDC10: FStStrNoPop var_DC
  loc_BEDC13: LitStr " FROM asiento"
  loc_BEDC16: ConcatStr
  loc_BEDC17: FStStrNoPop var_E0
  loc_BEDC1A: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEDC1D: ConcatStr
  loc_BEDC1E: FStStrNoPop var_E4
  loc_BEDC21: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEDC24: ConcatStr
  loc_BEDC25: FStStrNoPop var_E8
  loc_BEDC28: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEDC2B: ConcatStr
  loc_BEDC2C: FStStrNoPop var_EC
  loc_BEDC2F: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEDC32: ConcatStr
  loc_BEDC33: FStStrNoPop var_F0
  loc_BEDC36: LitStr " AND Month(asiento.FechAsie)"
  loc_BEDC39: ConcatStr
  loc_BEDC3A: FStStrNoPop var_F4
  loc_BEDC3D: ILdRf var_90
  loc_BEDC40: ConcatStr
  loc_BEDC41: FStStrNoPop var_F8
  loc_BEDC44: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEDC47: ConcatStr
  loc_BEDC48: FStStrNoPop var_FC
  loc_BEDC4B: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEDC4E: ConcatStr
  loc_BEDC4F: FStStrNoPop var_100
  loc_BEDC52: Call EjecutarRsCls(from_stack_1v)
  loc_BEDC57: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BEDC72: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BEDC75: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEDC78: ConcatStr
  loc_BEDC79: FStStrNoPop Anexos_XIV_mensual
  loc_BEDC7C: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_BEDC7F: ConcatStr
  loc_BEDC80: FStStrNoPop var_98
  loc_BEDC83: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_BEDC86: ConcatStr
  loc_BEDC87: FStStrNoPop var_DC
  loc_BEDC8A: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_BEDC8D: ConcatStr
  loc_BEDC8E: FStStrNoPop var_E0
  loc_BEDC91: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1140','2112') THEN 0"
  loc_BEDC94: ConcatStr
  loc_BEDC95: FStStrNoPop var_E4
  loc_BEDC98: LitStr " WHEN CodiTicu IN ('1150','1151','1152','1153','1154','1155','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_BEDC9B: ConcatStr
  loc_BEDC9C: FStStrNoPop var_E8
  loc_BEDC9F: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13/*,9*/),DebeMoas-HabeMoas,0))"
  loc_BEDCA2: ConcatStr
  loc_BEDCA3: FStStrNoPop var_EC
  loc_BEDCA6: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BEDCA9: ConcatStr
  loc_BEDCAA: FStStrNoPop var_F0
  loc_BEDCAD: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BEDCB0: ConcatStr
  loc_BEDCB1: FStStrNoPop var_F4
  loc_BEDCB4: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BEDCB7: ConcatStr
  loc_BEDCB8: FStStrNoPop var_F8
  loc_BEDCBB: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BEDCBE: ConcatStr
  loc_BEDCBF: FStStrNoPop var_FC
  loc_BEDCC2: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BEDCC5: ConcatStr
  loc_BEDCC6: FStStrNoPop var_100
  loc_BEDCC9: LitStr " ELSE 0"
  loc_BEDCCC: ConcatStr
  loc_BEDCCD: FStStrNoPop var_104
  loc_BEDCD0: LitStr " END MoviFonD /*egresos*/"
  loc_BEDCD3: ConcatStr
  loc_BEDCD4: FStStr var_8C
  loc_BEDCD7: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_BEDCF4: ILdRf var_8C
  loc_BEDCF7: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_BEDCFA: ConcatStr
  loc_BEDCFB: FStStrNoPop Anexos_XIV_mensual
  loc_BEDCFE: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1140','2112') THEN 0"
  loc_BEDD01: ConcatStr
  loc_BEDD02: FStStrNoPop var_98
  loc_BEDD05: LitStr " WHEN CodiTicu IN ('1150','1151','1152','1153','1154','1155','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_BEDD08: ConcatStr
  loc_BEDD09: FStStrNoPop var_DC
  loc_BEDD0C: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (32,9) and Month(asiento.FechAsie)!=4,HabeMoas-DebeMoas,0))"
  loc_BEDD0F: ConcatStr
  loc_BEDD10: FStStrNoPop var_E0
  loc_BEDD13: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BEDD16: ConcatStr
  loc_BEDD17: FStStrNoPop var_E4
  loc_BEDD1A: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9,6,12,10,2),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BEDD1D: ConcatStr
  loc_BEDD1E: FStStrNoPop var_E8
  loc_BEDD21: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BEDD24: ConcatStr
  loc_BEDD25: FStStrNoPop var_EC
  loc_BEDD28: LitStr " WHEN CodiTicu Like '71" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDD2B: ConcatStr
  loc_BEDD2C: FStStrNoPop var_F0
  loc_BEDD2F: LitStr " WHEN CodiTicu Like '72" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDD32: ConcatStr
  loc_BEDD33: FStStrNoPop var_F4
  loc_BEDD36: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDD39: ConcatStr
  loc_BEDD3A: FStStrNoPop var_F8
  loc_BEDD3D: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_BEDD40: ConcatStr
  loc_BEDD41: FStStrNoPop var_FC
  loc_BEDD44: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDD47: ConcatStr
  loc_BEDD48: FStStrNoPop var_100
  loc_BEDD4B: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BEDD4E: ConcatStr
  loc_BEDD4F: FStStrNoPop var_104
  loc_BEDD52: LitStr " ELSE 0"
  loc_BEDD55: ConcatStr
  loc_BEDD56: FStStrNoPop var_108
  loc_BEDD59: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BEDD5C: ConcatStr
  loc_BEDD5D: FStStrNoPop var_10C
  loc_BEDD60: LitStr " FROM asiento"
  loc_BEDD63: ConcatStr
  loc_BEDD64: FStStrNoPop var_110
  loc_BEDD67: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEDD6A: ConcatStr
  loc_BEDD6B: FStStrNoPop var_114
  loc_BEDD6E: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEDD71: ConcatStr
  loc_BEDD72: FStStrNoPop var_118
  loc_BEDD75: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND cc.CodiCuco != DeexPaco and cc.CodiCuco != ProvPaco"
  loc_BEDD78: ConcatStr
  loc_BEDD79: FStStrNoPop var_11C
  loc_BEDD7C: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEDD7F: ConcatStr
  loc_BEDD80: FStStrNoPop var_120
  loc_BEDD83: LitStr " AND Month(asiento.FechAsie)"
  loc_BEDD86: ConcatStr
  loc_BEDD87: FStStrNoPop var_128
  loc_BEDD8A: ILdRf var_90
  loc_BEDD8D: ConcatStr
  loc_BEDD8E: FStStrNoPop var_12C
  loc_BEDD91: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEDD94: ConcatStr
  loc_BEDD95: FStStrNoPop var_130
  loc_BEDD98: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEDD9B: ConcatStr
  loc_BEDD9C: FStStr var_8C
  loc_BEDD9F: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = ""
  loc_BEDDD0: ILdRf var_8C
  loc_BEDDD3: Call EjecutarRsCls(from_stack_1v)
  loc_BEDDD8: Branch loc_BEE010
  loc_BEDDDB: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_BEDDDE: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEDDE1: ConcatStr
  loc_BEDDE2: FStStrNoPop Anexos_XIV_mensual
  loc_BEDDE5: LitStr ", CASE"
  loc_BEDDE8: ConcatStr
  loc_BEDDE9: FStStrNoPop var_98
  loc_BEDDEC: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_BEDDEF: ConcatStr
  loc_BEDDF0: FStStrNoPop var_DC
  loc_BEDDF3: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' OR CodiTicu Like '8" & Chr(37) & "' THEN IF(CodiTias IN (2,24),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BEDDF6: ConcatStr
  loc_BEDDF7: FStStrNoPop var_E0
  loc_BEDDFA: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0)"
  loc_BEDDFD: ConcatStr
  loc_BEDDFE: FStStrNoPop var_E4
  loc_BEDE01: LitStr " ELSE 0"
  loc_BEDE04: ConcatStr
  loc_BEDE05: FStStrNoPop var_E8
  loc_BEDE08: LitStr " END SaldIniD"
  loc_BEDE0B: ConcatStr
  loc_BEDE0C: FStStrNoPop var_EC
  loc_BEDE0F: LitStr ", CASE"
  loc_BEDE12: ConcatStr
  loc_BEDE13: FStStrNoPop var_F0
  loc_BEDE16: LitStr " WHEN CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "' OR CodiTicu Like '4" & Chr(37) & "' THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_BEDE19: ConcatStr
  loc_BEDE1A: FStStrNoPop var_F4
  loc_BEDE1D: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' OR CodiTicu Like '7" & Chr(37) & "' THEN IF(CodiTias IN (9),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0)"
  loc_BEDE20: ConcatStr
  loc_BEDE21: FStStrNoPop var_F8
  loc_BEDE24: LitStr " ELSE 0"
  loc_BEDE27: ConcatStr
  loc_BEDE28: FStStrNoPop var_FC
  loc_BEDE2B: LitStr " END SaldIniH"
  loc_BEDE2E: ConcatStr
  loc_BEDE2F: FStStrNoPop var_100
  loc_BEDE32: LitStr " FROM asiento"
  loc_BEDE35: ConcatStr
  loc_BEDE36: FStStrNoPop var_104
  loc_BEDE39: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEDE3C: ConcatStr
  loc_BEDE3D: FStStrNoPop var_108
  loc_BEDE40: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEDE43: ConcatStr
  loc_BEDE44: FStStrNoPop var_10C
  loc_BEDE47: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_BEDE4A: ConcatStr
  loc_BEDE4B: FStStrNoPop var_110
  loc_BEDE4E: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEDE51: ConcatStr
  loc_BEDE52: FStStrNoPop var_114
  loc_BEDE55: LitStr " AND Month(asiento.FechAsie) < "
  loc_BEDE58: ConcatStr
  loc_BEDE59: FStStrNoPop var_118
  loc_BEDE5C: FLdI2 Mes
  loc_BEDE5F: CStrUI1
  loc_BEDE61: FStStrNoPop var_11C
  loc_BEDE64: ConcatStr
  loc_BEDE65: FStStrNoPop var_120
  loc_BEDE68: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEDE6B: ConcatStr
  loc_BEDE6C: FStStrNoPop var_128
  loc_BEDE6F: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEDE72: ConcatStr
  loc_BEDE73: FStStrNoPop var_12C
  loc_BEDE76: Call EjecutarRsCls(from_stack_1v)
  loc_BEDE7B: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = ""
  loc_BEDEAA: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_BEDEAD: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_BEDEB0: ConcatStr
  loc_BEDEB1: FStStrNoPop Anexos_XIV_mensual
  loc_BEDEB4: LitStr ", Sum(DebeMoas) MoviEjeD"
  loc_BEDEB7: ConcatStr
  loc_BEDEB8: FStStrNoPop var_98
  loc_BEDEBB: LitStr ", Sum(HabeMoas) MoviEjeH"
  loc_BEDEBE: ConcatStr
  loc_BEDEBF: FStStrNoPop var_DC
  loc_BEDEC2: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_BEDEC5: ConcatStr
  loc_BEDEC6: FStStrNoPop var_E0
  loc_BEDEC9: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1140','2112') THEN 0"
  loc_BEDECC: ConcatStr
  loc_BEDECD: FStStrNoPop var_E4
  loc_BEDED0: LitStr " WHEN CodiTicu IN ('1150','1151','1152','1153','1154','1155','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_BEDED3: ConcatStr
  loc_BEDED4: FStStrNoPop var_E8
  loc_BEDED7: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13/*,9*/),DebeMoas-HabeMoas,0))"
  loc_BEDEDA: ConcatStr
  loc_BEDEDB: FStStrNoPop var_EC
  loc_BEDEDE: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BEDEE1: ConcatStr
  loc_BEDEE2: FStStrNoPop var_F0
  loc_BEDEE5: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_BEDEE8: ConcatStr
  loc_BEDEE9: FStStrNoPop var_F4
  loc_BEDEEC: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BEDEEF: ConcatStr
  loc_BEDEF0: FStStrNoPop var_F8
  loc_BEDEF3: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_BEDEF6: ConcatStr
  loc_BEDEF7: FStStrNoPop var_FC
  loc_BEDEFA: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BEDEFD: ConcatStr
  loc_BEDEFE: FStStrNoPop var_100
  loc_BEDF01: LitStr " ELSE 0"
  loc_BEDF04: ConcatStr
  loc_BEDF05: FStStrNoPop var_104
  loc_BEDF08: LitStr " END MoviFonD /*egresos*/"
  loc_BEDF0B: ConcatStr
  loc_BEDF0C: FStStr var_8C
  loc_BEDF0F: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_BEDF2C: ILdRf var_8C
  loc_BEDF2F: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_BEDF32: ConcatStr
  loc_BEDF33: FStStrNoPop Anexos_XIV_mensual
  loc_BEDF36: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1140','2112') THEN 0"
  loc_BEDF39: ConcatStr
  loc_BEDF3A: FStStrNoPop var_98
  loc_BEDF3D: LitStr " WHEN CodiTicu IN ('1150','1151','1152','1153','1154','1155','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_BEDF40: ConcatStr
  loc_BEDF41: FStStrNoPop var_DC
  loc_BEDF44: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (32,9) and Month(asiento.FechAsie)!=4,HabeMoas-DebeMoas,0))"
  loc_BEDF47: ConcatStr
  loc_BEDF48: FStStrNoPop var_E0
  loc_BEDF4B: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_BEDF4E: ConcatStr
  loc_BEDF4F: FStStrNoPop var_E4
  loc_BEDF52: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9,6,12,10,2),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_BEDF55: ConcatStr
  loc_BEDF56: FStStrNoPop var_E8
  loc_BEDF59: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_BEDF5C: ConcatStr
  loc_BEDF5D: FStStrNoPop var_EC
  loc_BEDF60: LitStr " WHEN CodiTicu Like '71" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDF63: ConcatStr
  loc_BEDF64: FStStrNoPop var_F0
  loc_BEDF67: LitStr " WHEN CodiTicu Like '72" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDF6A: ConcatStr
  loc_BEDF6B: FStStrNoPop var_F4
  loc_BEDF6E: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDF71: ConcatStr
  loc_BEDF72: FStStrNoPop var_F8
  loc_BEDF75: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_BEDF78: ConcatStr
  loc_BEDF79: FStStrNoPop var_FC
  loc_BEDF7C: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_BEDF7F: ConcatStr
  loc_BEDF80: FStStrNoPop var_100
  loc_BEDF83: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_BEDF86: ConcatStr
  loc_BEDF87: FStStrNoPop var_104
  loc_BEDF8A: LitStr " ELSE 0"
  loc_BEDF8D: ConcatStr
  loc_BEDF8E: FStStrNoPop var_108
  loc_BEDF91: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_BEDF94: ConcatStr
  loc_BEDF95: FStStrNoPop var_10C
  loc_BEDF98: LitStr " FROM asiento"
  loc_BEDF9B: ConcatStr
  loc_BEDF9C: FStStrNoPop var_110
  loc_BEDF9F: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_BEDFA2: ConcatStr
  loc_BEDFA3: FStStrNoPop var_114
  loc_BEDFA6: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_BEDFA9: ConcatStr
  loc_BEDFAA: FStStrNoPop var_118
  loc_BEDFAD: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND cc.CodiCuco != DeexPaco and cc.CodiCuco != ProvPaco"
  loc_BEDFB0: ConcatStr
  loc_BEDFB1: FStStrNoPop var_11C
  loc_BEDFB4: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_BEDFB7: ConcatStr
  loc_BEDFB8: FStStrNoPop var_120
  loc_BEDFBB: LitStr " AND Month(asiento.FechAsie)"
  loc_BEDFBE: ConcatStr
  loc_BEDFBF: FStStrNoPop var_128
  loc_BEDFC2: ILdRf var_90
  loc_BEDFC5: ConcatStr
  loc_BEDFC6: FStStrNoPop var_12C
  loc_BEDFC9: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_BEDFCC: ConcatStr
  loc_BEDFCD: FStStrNoPop var_130
  loc_BEDFD0: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_BEDFD3: ConcatStr
  loc_BEDFD4: FStStr var_8C
  loc_BEDFD7: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = ""
  loc_BEE008: ILdRf var_8C
  loc_BEE00B: Call EjecutarRsCls(from_stack_1v)
  loc_BEE010: LitStr "INSERT INTO ttemp "
  loc_BEE013: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_BEE016: ConcatStr
  loc_BEE017: FStStrNoPop Anexos_XIV_mensual
  loc_BEE01A: LitStr ", Sum(DeveImpu)/*, Sum(PagaImpu)*/"
  loc_BEE01D: ConcatStr
  loc_BEE01E: FStStrNoPop var_98
  loc_BEE021: LitStr ", 0"
  loc_BEE024: ConcatStr
  loc_BEE025: FStStrNoPop var_DC
  loc_BEE028: LitStr " FROM infogov.cuentacontable cc"
  loc_BEE02B: ConcatStr
  loc_BEE02C: FStStrNoPop var_E0
  loc_BEE02F: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_BEE032: ConcatStr
  loc_BEE033: FStStrNoPop var_E4
  loc_BEE036: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_BEE039: ConcatStr
  loc_BEE03A: FStStrNoPop var_E8
  loc_BEE03D: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_BEE040: ConcatStr
  loc_BEE041: FStStrNoPop var_EC
  loc_BEE044: LitStr " AND Month(imputacion.FechImpu)"
  loc_BEE047: ConcatStr
  loc_BEE048: FStStrNoPop var_F0
  loc_BEE04B: ILdRf var_90
  loc_BEE04E: ConcatStr
  loc_BEE04F: FStStrNoPop var_F4
  loc_BEE052: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_BEE055: ConcatStr
  loc_BEE056: FStStrNoPop var_F8
  loc_BEE059: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_BEE05C: ConcatStr
  loc_BEE05D: FStStrNoPop var_FC
  loc_BEE060: LitStr " GROUP BY CodiCuco;"
  loc_BEE063: ConcatStr
  loc_BEE064: FStStrNoPop var_100
  loc_BEE067: Call EjecutarRsCls(from_stack_1v)
  loc_BEE06C: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BEE087: Branch loc_BEE0A2
  loc_BEE08A: LitI4 0
  loc_BEE08F: LitStr "Consulte con InfoGov..."
  loc_BEE092: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BEE097: LitI2_Byte 0
  loc_BEE099: FStI2 var_86
  loc_BEE09C: ExitProcCbHresult
  loc_BEE0A2: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_BEE0A5: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_BEE0A8: ConcatStr
  loc_BEE0A9: FStStrNoPop Anexos_XIV_mensual
  loc_BEE0AC: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_BEE0AF: ConcatStr
  loc_BEE0B0: FStStrNoPop var_98
  loc_BEE0B3: LitStr " odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_BEE0B6: ConcatStr
  loc_BEE0B7: FStStrNoPop var_DC
  loc_BEE0BA: LitStr " etaCuco` varchar(500) NOT NULL DEFAULT '',"
  loc_BEE0BD: ConcatStr
  loc_BEE0BE: FStStrNoPop var_E0
  loc_BEE0C1: LitStr " odiTicu` char(4) NOT NULL,"
  loc_BEE0C4: ConcatStr
  loc_BEE0C5: FStStrNoPop var_E4
  loc_BEE0C8: LitStr " aldIniD` decimal(15,2) DEFAULT NULL,"
  loc_BEE0CB: ConcatStr
  loc_BEE0CC: FStStrNoPop var_E8
  loc_BEE0CF: LitStr " aldIniH` decimal(15,2) DEFAULT NULL,"
  loc_BEE0D2: ConcatStr
  loc_BEE0D3: FStStrNoPop var_EC
  loc_BEE0D6: LitStr " oviEjeD` decimal(15,2) DEFAULT NULL,"
  loc_BEE0D9: ConcatStr
  loc_BEE0DA: FStStrNoPop var_F0
  loc_BEE0DD: LitStr " oviEjeH` decimal(15,2) DEFAULT NULL,"
  loc_BEE0E0: ConcatStr
  loc_BEE0E1: FStStrNoPop var_F4
  loc_BEE0E4: LitStr " oviFonD` decimal(15,2) DEFAULT NULL,"
  loc_BEE0E7: ConcatStr
  loc_BEE0E8: FStStrNoPop var_F8
  loc_BEE0EB: LitStr " oviFonH` decimal(15,2) DEFAULT NULL,"
  loc_BEE0EE: ConcatStr
  loc_BEE0EF: FStStrNoPop var_FC
  loc_BEE0F2: LitStr " arPatD` decimal(15,2) DEFAULT NULL,"
  loc_BEE0F5: ConcatStr
  loc_BEE0F6: FStStrNoPop var_100
  loc_BEE0F9: LitStr " arPatH` decimal(15,2) DEFAULT NULL,"
  loc_BEE0FC: ConcatStr
  loc_BEE0FD: FStStrNoPop var_104
  loc_BEE100: LitStr " aldFinaD` decimal(15,2) DEFAULT NULL,"
  loc_BEE103: ConcatStr
  loc_BEE104: FStStrNoPop var_108
  loc_BEE107: LitStr " aldFinaH` decimal(15,2) DEFAULT NULL,"
  loc_BEE10A: ConcatStr
  loc_BEE10B: FStStrNoPop var_10C
  loc_BEE10E: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_BEE111: ConcatStr
  loc_BEE112: FStStrNoPop var_110
  loc_BEE115: LitStr " ) ENGINE=InnoDB ;"
  loc_BEE118: ConcatStr
  loc_BEE119: FStStrNoPop var_114
  loc_BEE11C: Call EjecutarRsCls(from_stack_1v)
  loc_BEE121: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BEE146: LitStr "INSERT INTO tmovi"
  loc_BEE149: LitStr " SELECT ttemp.PeriInfo, ttemp.CodiCuco, DetaCuco, ttemp.CodiTicu"
  loc_BEE14C: ConcatStr
  loc_BEE14D: FStStrNoPop Anexos_XIV_mensual
  loc_BEE150: LitStr ", IF(Sum(SaldIniD)-Sum(SaldIniH)>0,Sum(SaldIniD)-Sum(SaldIniH),0)"
  loc_BEE153: ConcatStr
  loc_BEE154: FStStrNoPop var_98
  loc_BEE157: LitStr ", IF(Sum(SaldIniH)-Sum(SaldIniD)>0,Sum(SaldIniH)-Sum(SaldIniD),0)"
  loc_BEE15A: ConcatStr
  loc_BEE15B: FStStrNoPop var_DC
  loc_BEE15E: LitStr ", Sum(MoviEjeD), Sum(MoviEjeH)"
  loc_BEE161: ConcatStr
  loc_BEE162: FStStrNoPop var_E0
  loc_BEE165: LitStr ", IF(ttemp.CodiTicu IN ('1120'),IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0),Sum(MoviFonD))"
  loc_BEE168: ConcatStr
  loc_BEE169: FStStrNoPop var_E4
  loc_BEE16C: LitStr ", IF(ttemp.CodiTicu IN ('1120'),IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0),Sum(MoviFonH))"
  loc_BEE16F: ConcatStr
  loc_BEE170: FStStrNoPop var_E8
  loc_BEE173: LitStr ", Sum(MoviEjeD)-Sum(MoviFonD), Sum(MoviEjeH)-Sum(MoviFonH)"
  loc_BEE176: ConcatStr
  loc_BEE177: FStStrNoPop var_EC
  loc_BEE17A: LitStr ", If(Sum(SaldIniD)-Sum(SaldIniH)+Sum(MoviEjeD)-Sum(MoviEjeH)>0,Sum(SaldIniD)-Sum(SaldIniH)+Sum(MoviEjeD)-Sum(MoviEjeH),0)"
  loc_BEE17D: ConcatStr
  loc_BEE17E: FStStrNoPop var_F0
  loc_BEE181: LitStr ", If(Sum(SaldIniH)-Sum(SaldIniD)+Sum(MoviEjeH)-Sum(MoviEjeD)>0,Sum(SaldIniH)-Sum(SaldIniD)+Sum(MoviEjeH)-Sum(MoviEjeD),0)"
  loc_BEE184: ConcatStr
  loc_BEE185: FStStrNoPop var_F4
  loc_BEE188: LitStr " FROM ttemp"
  loc_BEE18B: ConcatStr
  loc_BEE18C: FStStrNoPop var_F8
  loc_BEE18F: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ttemp.PeriInfo AND cc.CodiCuco = ttemp.CodiCuco"
  loc_BEE192: ConcatStr
  loc_BEE193: FStStrNoPop var_FC
  loc_BEE196: LitStr " GROUP BY ttemp.CodiCuco;"
  loc_BEE199: ConcatStr
  loc_BEE19A: FStStrNoPop var_100
  loc_BEE19D: Call EjecutarRsCls(from_stack_1v)
  loc_BEE1A2: FFreeStr Anexos_XIV_mensual = "": var_98 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_BEE1BD: ExitProcCbHresult
End Function

Public Sub Anexos_IX_VII_XIV(PeriInfo) 'B7C248
  'Data Table: 42DE78
  loc_B7B598: LitStr "SET @periinfo="
  loc_B7B59B: FLdI2 PeriInfo
  loc_B7B59E: CStrUI1
  loc_B7B5A0: FStStrNoPop var_8C
  loc_B7B5A3: ConcatStr
  loc_B7B5A4: FStStrNoPop var_90
  loc_B7B5A7: LitStr ";"
  loc_B7B5AA: ConcatStr
  loc_B7B5AB: FStStrNoPop var_94
  loc_B7B5AE: LitStr " DROP TEMPORARY TABLE IF EXISTS ttemp;"
  loc_B7B5B1: ConcatStr
  loc_B7B5B2: FStStrNoPop var_98
  loc_B7B5B5: LitStr " CREATE TEMPORARY TABLE temp` ("
  loc_B7B5B8: ConcatStr
  loc_B7B5B9: FStStrNoPop var_9C
  loc_B7B5BC: LitStr "  eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_B7B5BF: ConcatStr
  loc_B7B5C0: FStStrNoPop var_A0
  loc_B7B5C3: LitStr "  odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_B7B5C6: ConcatStr
  loc_B7B5C7: FStStrNoPop var_A4
  loc_B7B5CA: LitStr "  odiTicu` char(4) NOT NULL,"
  loc_B7B5CD: ConcatStr
  loc_B7B5CE: FStStrNoPop var_A8
  loc_B7B5D1: LitStr "  odiTias` tinyint(2) unsigned NOT NULL DEFAULT '0',"
  loc_B7B5D4: ConcatStr
  loc_B7B5D5: FStStrNoPop var_AC
  loc_B7B5D8: LitStr "  aldIniD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_B7B5DB: ConcatStr
  loc_B7B5DC: FStStrNoPop var_B0
  loc_B7B5DF: LitStr "  aldIniH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_B7B5E2: ConcatStr
  loc_B7B5E3: FStStrNoPop var_B4
  loc_B7B5E6: LitStr "  oviEjeD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_B7B5E9: ConcatStr
  loc_B7B5EA: FStStrNoPop var_B8
  loc_B7B5ED: LitStr "  oviEjeH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_B7B5F0: ConcatStr
  loc_B7B5F1: FStStrNoPop var_BC
  loc_B7B5F4: LitStr "  oviFonD` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_B7B5F7: ConcatStr
  loc_B7B5F8: FStStrNoPop var_C0
  loc_B7B5FB: LitStr "  oviFonH` decimal(15,2) NOT NULL DEFAULT '0',"
  loc_B7B5FE: ConcatStr
  loc_B7B5FF: FStStrNoPop var_C4
  loc_B7B602: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_B7B605: ConcatStr
  loc_B7B606: FStStrNoPop var_C8
  loc_B7B609: LitStr " ) ENGINE=InnoDB ;"
  loc_B7B60C: ConcatStr
  loc_B7B60D: FStStrNoPop var_CC
  loc_B7B610: Call EjecutarRsCls(from_stack_1v)
  loc_B7B615: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7B63A: LitStr "Municipalidad de Guaymallén"
  loc_B7B63D: FStStrCopy var_D0
  loc_B7B640: ILdRf var_D0
  loc_B7B643: LitStr "Municipalidad de Maipú"
  loc_B7B646: EqStr
  loc_B7B648: BranchF loc_B7B807
  loc_B7B64B: LitStr "INSERT INTO ttemp"
  loc_B7B64E: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_B7B651: ConcatStr
  loc_B7B652: FStStrNoPop var_8C
  loc_B7B655: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_B7B658: ConcatStr
  loc_B7B659: FStStrNoPop var_90
  loc_B7B65C: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_B7B65F: ConcatStr
  loc_B7B660: FStStrNoPop var_94
  loc_B7B663: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_B7B666: ConcatStr
  loc_B7B667: FStStrNoPop var_98
  loc_B7B66A: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_B7B66D: ConcatStr
  loc_B7B66E: FStStrNoPop var_9C
  loc_B7B671: LitStr ", CASE /*egresos*/"
  loc_B7B674: ConcatStr
  loc_B7B675: FStStrNoPop var_A0
  loc_B7B678: LitStr "   WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1152' AND CodiTicu NOT LIKE '1153')"
  loc_B7B67B: ConcatStr
  loc_B7B67C: FStStrNoPop var_A4
  loc_B7B67F: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT IN ('2121','2210')))"
  loc_B7B682: ConcatStr
  loc_B7B683: FStStrNoPop var_A8
  loc_B7B686: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_B7B689: ConcatStr
  loc_B7B68A: FStStrNoPop var_AC
  loc_B7B68D: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_B7B690: ConcatStr
  loc_B7B691: FStStrNoPop var_B0
  loc_B7B694: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216')"
  loc_B7B697: ConcatStr
  loc_B7B698: FStStrNoPop var_B4
  loc_B7B69B: LitStr " THEN Sum(DebeMoas)"
  loc_B7B69E: ConcatStr
  loc_B7B69F: FStStrNoPop var_B8
  loc_B7B6A2: LitStr "   WHEN CodiTicu LIKE '1152' AND CodiTias NOT IN (15,17,18)"
  loc_B7B6A5: ConcatStr
  loc_B7B6A6: FStStrNoPop var_BC
  loc_B7B6A9: LitStr " THEN IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0)"
  loc_B7B6AC: ConcatStr
  loc_B7B6AD: FStStrNoPop var_C0
  loc_B7B6B0: LitStr "   ELSE 0"
  loc_B7B6B3: ConcatStr
  loc_B7B6B4: FStStrNoPop var_C4
  loc_B7B6B7: LitStr "  END MoviFonD /*egresos*/"
  loc_B7B6BA: ConcatStr
  loc_B7B6BB: FStStr var_88
  loc_B7B6BE: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B7B6DF: ILdRf var_88
  loc_B7B6E2: LitStr ", CASE /*ingresos*/"
  loc_B7B6E5: ConcatStr
  loc_B7B6E6: FStStrNoPop var_8C
  loc_B7B6E9: LitStr "   WHEN ((CodiTicu LIKE '115" & Chr(37) & "' AND CodiTicu NOT LIKE '1152' AND CodiTicu NOT LIKE '1153')"
  loc_B7B6EC: ConcatStr
  loc_B7B6ED: FStStrNoPop var_90
  loc_B7B6F0: LitStr " OR (CodiTicu LIKE '2" & Chr(37) & "' AND CodiTicu NOT IN ('2121','2210')))"
  loc_B7B6F3: ConcatStr
  loc_B7B6F4: FStStrNoPop var_94
  loc_B7B6F7: LitStr " AND CodiTias NOT IN (15,17,18)"
  loc_B7B6FA: ConcatStr
  loc_B7B6FB: FStStrNoPop var_98
  loc_B7B6FE: LitStr " AND mv.CodiCuco <> ProvPaco AND mv.CodiCuco <> DeexPaco"
  loc_B7B701: ConcatStr
  loc_B7B702: FStStrNoPop var_9C
  loc_B7B705: LitStr " AND mv.CodiCuco NOT IN ('2111070218','2111070216')"
  loc_B7B708: ConcatStr
  loc_B7B709: FStStrNoPop var_A0
  loc_B7B70C: LitStr " THEN Sum(HabeMoas)"
  loc_B7B70F: ConcatStr
  loc_B7B710: FStStrNoPop var_A4
  loc_B7B713: LitStr "   WHEN CodiTicu LIKE '1152' AND CodiTias NOT IN (15,17,18)"
  loc_B7B716: ConcatStr
  loc_B7B717: FStStrNoPop var_A8
  loc_B7B71A: LitStr " THEN IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0)"
  loc_B7B71D: ConcatStr
  loc_B7B71E: FStStrNoPop var_AC
  loc_B7B721: LitStr "   WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_B7B724: ConcatStr
  loc_B7B725: FStStrNoPop var_B0
  loc_B7B728: LitStr "   WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7B72B: ConcatStr
  loc_B7B72C: FStStrNoPop var_B4
  loc_B7B72F: LitStr "   ELSE 0"
  loc_B7B732: ConcatStr
  loc_B7B733: FStStrNoPop var_B8
  loc_B7B736: LitStr "  END MoviFonH /*ingresos*/"
  loc_B7B739: ConcatStr
  loc_B7B73A: FStStrNoPop var_BC
  loc_B7B73D: LitStr " FROM asiento"
  loc_B7B740: ConcatStr
  loc_B7B741: FStStrNoPop var_C0
  loc_B7B744: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_B7B747: ConcatStr
  loc_B7B748: FStStrNoPop var_C4
  loc_B7B74B: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B7B74E: ConcatStr
  loc_B7B74F: FStStrNoPop var_C8
  loc_B7B752: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B7B755: ConcatStr
  loc_B7B756: FStStrNoPop var_CC
  loc_B7B759: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_B7B75C: ConcatStr
  loc_B7B75D: FStStrNoPop var_D4
  loc_B7B760: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_B7B763: ConcatStr
  loc_B7B764: FStStrNoPop var_D8
  loc_B7B767: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_B7B76A: ConcatStr
  loc_B7B76B: FStStr var_88
  loc_B7B76E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = ""
  loc_B7B797: ILdRf var_88
  loc_B7B79A: Call EjecutarRsCls(from_stack_1v)
  loc_B7B79F: LitStr "INSERT INTO ttemp "
  loc_B7B7A2: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_B7B7A5: ConcatStr
  loc_B7B7A6: FStStrNoPop var_8C
  loc_B7B7A9: LitStr " , Sum(PagaImpu)"
  loc_B7B7AC: ConcatStr
  loc_B7B7AD: FStStrNoPop var_90
  loc_B7B7B0: LitStr " , 0"
  loc_B7B7B3: ConcatStr
  loc_B7B7B4: FStStrNoPop var_94
  loc_B7B7B7: LitStr " FROM infogov.cuentacontable cc"
  loc_B7B7BA: ConcatStr
  loc_B7B7BB: FStStrNoPop var_98
  loc_B7B7BE: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_B7B7C1: ConcatStr
  loc_B7B7C2: FStStrNoPop var_9C
  loc_B7B7C5: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_B7B7C8: ConcatStr
  loc_B7B7C9: FStStrNoPop var_A0
  loc_B7B7CC: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_B7B7CF: ConcatStr
  loc_B7B7D0: FStStrNoPop var_A4
  loc_B7B7D3: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_B7B7D6: ConcatStr
  loc_B7B7D7: FStStrNoPop var_A8
  loc_B7B7DA: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_B7B7DD: ConcatStr
  loc_B7B7DE: FStStrNoPop var_AC
  loc_B7B7E1: LitStr " GROUP BY CodiCuco;"
  loc_B7B7E4: ConcatStr
  loc_B7B7E5: FStStrNoPop var_B0
  loc_B7B7E8: Call EjecutarRsCls(from_stack_1v)
  loc_B7B7ED: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B7B804: Branch loc_B7C12B
  loc_B7B807: ILdRf var_D0
  loc_B7B80A: LitStr "Municipalidad de San Carlos"
  loc_B7B80D: EqStr
  loc_B7B80F: BranchT loc_B7B828
  loc_B7B812: ILdRf var_D0
  loc_B7B815: LitStr "Municipalidad de Malargüe"
  loc_B7B818: EqStr
  loc_B7B81A: BranchT loc_B7B828
  loc_B7B81D: ILdRf var_D0
  loc_B7B820: LitStr "Municipalidad de Lavalle"
  loc_B7B823: EqStr
  loc_B7B825: BranchF loc_B7BA61
  loc_B7B828: LitStr "INSERT INTO ttemp"
  loc_B7B82B: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_B7B82E: ConcatStr
  loc_B7B82F: FStStrNoPop var_8C
  loc_B7B832: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_B7B835: ConcatStr
  loc_B7B836: FStStrNoPop var_90
  loc_B7B839: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_B7B83C: ConcatStr
  loc_B7B83D: FStStrNoPop var_94
  loc_B7B840: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_B7B843: ConcatStr
  loc_B7B844: FStStrNoPop var_98
  loc_B7B847: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_B7B84A: ConcatStr
  loc_B7B84B: FStStr var_88
  loc_B7B84E: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B7B859: ILdRf var_88
  loc_B7B85C: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_B7B85F: ConcatStr
  loc_B7B860: FStStrNoPop var_8C
  loc_B7B863: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_B7B866: ConcatStr
  loc_B7B867: FStStrNoPop var_90
  loc_B7B86A: LitStr " WHEN CodiTicu IN ('1140','1170') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),DebeMoas-HabeMoas,0)),0)"
  loc_B7B86D: ConcatStr
  loc_B7B86E: FStStrNoPop var_94
  loc_B7B871: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_B7B874: ConcatStr
  loc_B7B875: FStStrNoPop var_98
  loc_B7B878: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_B7B87B: ConcatStr
  loc_B7B87C: FStStrNoPop var_9C
  loc_B7B87F: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_B7B882: ConcatStr
  loc_B7B883: FStStrNoPop var_A0
  loc_B7B886: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_B7B889: ConcatStr
  loc_B7B88A: FStStrNoPop var_A4
  loc_B7B88D: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2124') THEN 0"
  loc_B7B890: ConcatStr
  loc_B7B891: FStStrNoPop var_A8
  loc_B7B894: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_B7B897: ConcatStr
  loc_B7B898: FStStrNoPop var_AC
  loc_B7B89B: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_B7B89E: ConcatStr
  loc_B7B89F: FStStrNoPop var_B0
  loc_B7B8A2: LitStr " WHEN CodiTicu = '3000' THEN If(Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (12,13,9),DebeMoas-HabeMoas,0)),0)"
  loc_B7B8A5: ConcatStr
  loc_B7B8A6: FStStrNoPop var_B4
  loc_B7B8A9: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7B8AC: ConcatStr
  loc_B7B8AD: FStStrNoPop var_B8
  loc_B7B8B0: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_B7B8B3: ConcatStr
  loc_B7B8B4: FStStrNoPop var_BC
  loc_B7B8B7: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7B8BA: ConcatStr
  loc_B7B8BB: FStStrNoPop var_C0
  loc_B7B8BE: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_B7B8C1: ConcatStr
  loc_B7B8C2: FStStrNoPop var_C4
  loc_B7B8C5: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7B8C8: ConcatStr
  loc_B7B8C9: FStStrNoPop var_C8
  loc_B7B8CC: LitStr " ELSE 0"
  loc_B7B8CF: ConcatStr
  loc_B7B8D0: FStStrNoPop var_CC
  loc_B7B8D3: LitStr " END MoviFonD /*egresos*/"
  loc_B7B8D6: ConcatStr
  loc_B7B8D7: FStStr var_88
  loc_B7B8DA: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7B8FF: ILdRf var_88
  loc_B7B902: LitStr ", CASE /*ingresos - MoviFonH*/"
  loc_B7B905: ConcatStr
  loc_B7B906: FStStrNoPop var_8C
  loc_B7B909: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_B7B90C: ConcatStr
  loc_B7B90D: FStStrNoPop var_90
  loc_B7B910: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24,10),HabeMoas-DebeMoas,0)),0)"
  loc_B7B913: ConcatStr
  loc_B7B914: FStStrNoPop var_94
  loc_B7B917: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_B7B91A: ConcatStr
  loc_B7B91B: FStStrNoPop var_98
  loc_B7B91E: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_B7B921: ConcatStr
  loc_B7B922: FStStrNoPop var_9C
  loc_B7B925: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_B7B928: ConcatStr
  loc_B7B929: FStStrNoPop var_A0
  loc_B7B92C: LitStr " WHEN CodiTicu IN ('2116','2121','2122','2124') THEN 0"
  loc_B7B92F: ConcatStr
  loc_B7B930: FStStrNoPop var_A4
  loc_B7B933: LitStr " WHEN CodiTicu IN ('2117') THEN Sum(If(CodiTias IN (13,6),HabeMoas-DebeMoas,0))"
  loc_B7B936: ConcatStr
  loc_B7B937: FStStrNoPop var_A8
  loc_B7B93A: LitStr " WHEN CodiTicu IN ('2123') THEN Sum(If(CodiTias IN (6,9),IF(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_B7B93D: ConcatStr
  loc_B7B93E: FStStrNoPop var_AC
  loc_B7B941: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_B7B944: ConcatStr
  loc_B7B945: FStStrNoPop var_B0
  loc_B7B948: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_B7B94B: ConcatStr
  loc_B7B94C: FStStrNoPop var_B4
  loc_B7B94F: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7B952: ConcatStr
  loc_B7B953: FStStrNoPop var_B8
  loc_B7B956: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_B7B959: ConcatStr
  loc_B7B95A: FStStrNoPop var_BC
  loc_B7B95D: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7B960: ConcatStr
  loc_B7B961: FStStrNoPop var_C0
  loc_B7B964: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7B967: ConcatStr
  loc_B7B968: FStStrNoPop var_C4
  loc_B7B96B: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7B96E: ConcatStr
  loc_B7B96F: FStStrNoPop var_C8
  loc_B7B972: LitStr " ELSE 0"
  loc_B7B975: ConcatStr
  loc_B7B976: FStStrNoPop var_CC
  loc_B7B979: LitStr " END MoviFonH /*ingresos*/"
  loc_B7B97C: ConcatStr
  loc_B7B97D: FStStr var_88
  loc_B7B980: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7B9A5: ILdRf var_88
  loc_B7B9A8: LitStr " FROM asiento"
  loc_B7B9AB: ConcatStr
  loc_B7B9AC: FStStrNoPop var_8C
  loc_B7B9AF: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B7B9B2: ConcatStr
  loc_B7B9B3: FStStrNoPop var_90
  loc_B7B9B6: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B7B9B9: ConcatStr
  loc_B7B9BA: FStStrNoPop var_94
  loc_B7B9BD: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_B7B9C0: ConcatStr
  loc_B7B9C1: FStStrNoPop var_98
  loc_B7B9C4: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_B7B9C7: ConcatStr
  loc_B7B9C8: FStStrNoPop var_9C
  loc_B7B9CB: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_B7B9CE: ConcatStr
  loc_B7B9CF: FStStr var_88
  loc_B7B9D2: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B7B9DF: ILdRf var_88
  loc_B7B9E2: Call EjecutarRsCls(from_stack_1v)
  loc_B7B9E7: LitStr "INSERT INTO ttemp "
  loc_B7B9EA: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_B7B9ED: ConcatStr
  loc_B7B9EE: FStStrNoPop var_8C
  loc_B7B9F1: LitStr " , Sum(PagaImpu)"
  loc_B7B9F4: ConcatStr
  loc_B7B9F5: FStStrNoPop var_90
  loc_B7B9F8: LitStr " , 0"
  loc_B7B9FB: ConcatStr
  loc_B7B9FC: FStStrNoPop var_94
  loc_B7B9FF: LitStr " FROM infogov.cuentacontable cc"
  loc_B7BA02: ConcatStr
  loc_B7BA03: FStStrNoPop var_98
  loc_B7BA06: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_B7BA09: ConcatStr
  loc_B7BA0A: FStStrNoPop var_9C
  loc_B7BA0D: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_B7BA10: ConcatStr
  loc_B7BA11: FStStrNoPop var_A0
  loc_B7BA14: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_B7BA17: ConcatStr
  loc_B7BA18: FStStrNoPop var_A4
  loc_B7BA1B: LitStr " AND (CodiTicu = '2113'"
  loc_B7BA1E: ConcatStr
  loc_B7BA1F: FStStrNoPop var_A8
  loc_B7BA22: LitStr " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_B7BA25: ConcatStr
  loc_B7BA26: FStStrNoPop var_AC
  loc_B7BA29: LitStr " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_B7BA2C: ConcatStr
  loc_B7BA2D: FStStrNoPop var_B0
  loc_B7BA30: LitStr " OR CodiTicu = '2111')"
  loc_B7BA33: ConcatStr
  loc_B7BA34: FStStrNoPop var_B4
  loc_B7BA37: LitStr " GROUP BY CodiCuco;"
  loc_B7BA3A: ConcatStr
  loc_B7BA3B: FStStrNoPop var_B8
  loc_B7BA3E: Call EjecutarRsCls(from_stack_1v)
  loc_B7BA43: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B7BA5E: Branch loc_B7C12B
  loc_B7BA61: ILdRf var_D0
  loc_B7BA64: LitStr "Municipalidad de Tunuyán"
  loc_B7BA67: EqStr
  loc_B7BA69: BranchF loc_B7BC9C
  loc_B7BA6C: LitStr "INSERT INTO ttemp"
  loc_B7BA6F: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_B7BA72: ConcatStr
  loc_B7BA73: FStStrNoPop var_8C
  loc_B7BA76: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_B7BA79: ConcatStr
  loc_B7BA7A: FStStrNoPop var_90
  loc_B7BA7D: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_B7BA80: ConcatStr
  loc_B7BA81: FStStrNoPop var_94
  loc_B7BA84: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_B7BA87: ConcatStr
  loc_B7BA88: FStStrNoPop var_98
  loc_B7BA8B: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_B7BA8E: ConcatStr
  loc_B7BA8F: FStStr var_88
  loc_B7BA92: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B7BA9D: ILdRf var_88
  loc_B7BAA0: LitStr ", CASE /* egresos MoviFonD */"
  loc_B7BAA3: ConcatStr
  loc_B7BAA4: FStStrNoPop var_8C
  loc_B7BAA7: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_B7BAAA: ConcatStr
  loc_B7BAAB: FStStrNoPop var_90
  loc_B7BAAE: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_B7BAB1: ConcatStr
  loc_B7BAB2: FStStrNoPop var_94
  loc_B7BAB5: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_B7BAB8: ConcatStr
  loc_B7BAB9: FStStrNoPop var_98
  loc_B7BABC: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_B7BABF: ConcatStr
  loc_B7BAC0: FStStrNoPop var_9C
  loc_B7BAC3: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_B7BAC6: ConcatStr
  loc_B7BAC7: FStStrNoPop var_A0
  loc_B7BACA: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (6,12),DebeMoas-HabeMoas,0))"
  loc_B7BACD: ConcatStr
  loc_B7BACE: FStStrNoPop var_A4
  loc_B7BAD1: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_B7BAD4: ConcatStr
  loc_B7BAD5: FStStrNoPop var_A8
  loc_B7BAD8: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_B7BADB: ConcatStr
  loc_B7BADC: FStStrNoPop var_AC
  loc_B7BADF: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_B7BAE2: ConcatStr
  loc_B7BAE3: FStStrNoPop var_B0
  loc_B7BAE6: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_B7BAE9: ConcatStr
  loc_B7BAEA: FStStrNoPop var_B4
  loc_B7BAED: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7BAF0: ConcatStr
  loc_B7BAF1: FStStrNoPop var_B8
  loc_B7BAF4: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_B7BAF7: ConcatStr
  loc_B7BAF8: FStStrNoPop var_BC
  loc_B7BAFB: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7BAFE: ConcatStr
  loc_B7BAFF: FStStrNoPop var_C0
  loc_B7BB02: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_B7BB05: ConcatStr
  loc_B7BB06: FStStrNoPop var_C4
  loc_B7BB09: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7BB0C: ConcatStr
  loc_B7BB0D: FStStrNoPop var_C8
  loc_B7BB10: LitStr " ELSE 0"
  loc_B7BB13: ConcatStr
  loc_B7BB14: FStStrNoPop var_CC
  loc_B7BB17: LitStr " END MoviFonD /*egresos*/"
  loc_B7BB1A: ConcatStr
  loc_B7BB1B: FStStr var_88
  loc_B7BB1E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7BB43: ILdRf var_88
  loc_B7BB46: LitStr ", CASE /*ingresos - MoviFonH*/"
  loc_B7BB49: ConcatStr
  loc_B7BB4A: FStStrNoPop var_8C
  loc_B7BB4D: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1160') THEN 0"
  loc_B7BB50: ConcatStr
  loc_B7BB51: FStStrNoPop var_90
  loc_B7BB54: LitStr " WHEN CodiTicu IN ('1150') THEN if(Sum(If(CodiTias IN (6,12,9),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_B7BB57: ConcatStr
  loc_B7BB58: FStStrNoPop var_94
  loc_B7BB5B: LitStr " WHEN CodiTicu IN ('1140','1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_B7BB5E: ConcatStr
  loc_B7BB5F: FStStrNoPop var_98
  loc_B7BB62: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_B7BB65: ConcatStr
  loc_B7BB66: FStStrNoPop var_9C
  loc_B7BB69: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_B7BB6C: ConcatStr
  loc_B7BB6D: FStStrNoPop var_A0
  loc_B7BB70: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_B7BB73: ConcatStr
  loc_B7BB74: FStStrNoPop var_A4
  loc_B7BB77: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_B7BB7A: ConcatStr
  loc_B7BB7B: FStStrNoPop var_A8
  loc_B7BB7E: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_B7BB81: ConcatStr
  loc_B7BB82: FStStrNoPop var_AC
  loc_B7BB85: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (13,9),If(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_B7BB88: ConcatStr
  loc_B7BB89: FStStrNoPop var_B0
  loc_B7BB8C: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7BB8F: ConcatStr
  loc_B7BB90: FStStrNoPop var_B4
  loc_B7BB93: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_B7BB96: ConcatStr
  loc_B7BB97: FStStrNoPop var_B8
  loc_B7BB9A: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7BB9D: ConcatStr
  loc_B7BB9E: FStStrNoPop var_BC
  loc_B7BBA1: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7BBA4: ConcatStr
  loc_B7BBA5: FStStrNoPop var_C0
  loc_B7BBA8: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7BBAB: ConcatStr
  loc_B7BBAC: FStStrNoPop var_C4
  loc_B7BBAF: LitStr " ELSE 0"
  loc_B7BBB2: ConcatStr
  loc_B7BBB3: FStStrNoPop var_C8
  loc_B7BBB6: LitStr " END MoviFonH /*ingresos*/"
  loc_B7BBB9: ConcatStr
  loc_B7BBBA: FStStr var_88
  loc_B7BBBD: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B7BBE0: ILdRf var_88
  loc_B7BBE3: LitStr " FROM asiento"
  loc_B7BBE6: ConcatStr
  loc_B7BBE7: FStStrNoPop var_8C
  loc_B7BBEA: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B7BBED: ConcatStr
  loc_B7BBEE: FStStrNoPop var_90
  loc_B7BBF1: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B7BBF4: ConcatStr
  loc_B7BBF5: FStStrNoPop var_94
  loc_B7BBF8: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_B7BBFB: ConcatStr
  loc_B7BBFC: FStStrNoPop var_98
  loc_B7BBFF: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_B7BC02: ConcatStr
  loc_B7BC03: FStStrNoPop var_9C
  loc_B7BC06: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_B7BC09: ConcatStr
  loc_B7BC0A: FStStr var_88
  loc_B7BC0D: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B7BC1A: ILdRf var_88
  loc_B7BC1D: Call EjecutarRsCls(from_stack_1v)
  loc_B7BC22: LitStr "INSERT INTO ttemp "
  loc_B7BC25: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_B7BC28: ConcatStr
  loc_B7BC29: FStStrNoPop var_8C
  loc_B7BC2C: LitStr " , Sum(PagaImpu)"
  loc_B7BC2F: ConcatStr
  loc_B7BC30: FStStrNoPop var_90
  loc_B7BC33: LitStr " , 0"
  loc_B7BC36: ConcatStr
  loc_B7BC37: FStStrNoPop var_94
  loc_B7BC3A: LitStr " FROM infogov.cuentacontable cc"
  loc_B7BC3D: ConcatStr
  loc_B7BC3E: FStStrNoPop var_98
  loc_B7BC41: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_B7BC44: ConcatStr
  loc_B7BC45: FStStrNoPop var_9C
  loc_B7BC48: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_B7BC4B: ConcatStr
  loc_B7BC4C: FStStrNoPop var_A0
  loc_B7BC4F: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_B7BC52: ConcatStr
  loc_B7BC53: FStStrNoPop var_A4
  loc_B7BC56: LitStr " AND (CodiTicu = '2113'"
  loc_B7BC59: ConcatStr
  loc_B7BC5A: FStStrNoPop var_A8
  loc_B7BC5D: LitStr " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_B7BC60: ConcatStr
  loc_B7BC61: FStStrNoPop var_AC
  loc_B7BC64: LitStr " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_B7BC67: ConcatStr
  loc_B7BC68: FStStrNoPop var_B0
  loc_B7BC6B: LitStr " OR CodiTicu = '2111')"
  loc_B7BC6E: ConcatStr
  loc_B7BC6F: FStStrNoPop var_B4
  loc_B7BC72: LitStr " GROUP BY CodiCuco;"
  loc_B7BC75: ConcatStr
  loc_B7BC76: FStStrNoPop var_B8
  loc_B7BC79: Call EjecutarRsCls(from_stack_1v)
  loc_B7BC7E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B7BC99: Branch loc_B7C12B
  loc_B7BC9C: ILdRf var_D0
  loc_B7BC9F: LitStr "Municipalidad de Rivadavia"
  loc_B7BCA2: EqStr
  loc_B7BCA4: BranchF loc_B7BEE9
  loc_B7BCA7: LitStr "INSERT INTO ttemp"
  loc_B7BCAA: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_B7BCAD: ConcatStr
  loc_B7BCAE: FStStrNoPop var_8C
  loc_B7BCB1: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_B7BCB4: ConcatStr
  loc_B7BCB5: FStStrNoPop var_90
  loc_B7BCB8: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_B7BCBB: ConcatStr
  loc_B7BCBC: FStStrNoPop var_94
  loc_B7BCBF: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_B7BCC2: ConcatStr
  loc_B7BCC3: FStStrNoPop var_98
  loc_B7BCC6: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_B7BCC9: ConcatStr
  loc_B7BCCA: FStStr var_88
  loc_B7BCCD: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B7BCD8: ILdRf var_88
  loc_B7BCDB: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_B7BCDE: ConcatStr
  loc_B7BCDF: FStStrNoPop var_8C
  loc_B7BCE2: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_B7BCE5: ConcatStr
  loc_B7BCE6: FStStrNoPop var_90
  loc_B7BCE9: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_B7BCEC: ConcatStr
  loc_B7BCED: FStStrNoPop var_94
  loc_B7BCF0: LitStr " WHEN CodiTicu = '2111' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_B7BCF3: ConcatStr
  loc_B7BCF4: FStStrNoPop var_98
  loc_B7BCF7: LitStr " WHEN CodiTicu IN ('2112') THEN 0"
  loc_B7BCFA: ConcatStr
  loc_B7BCFB: FStStrNoPop var_9C
  loc_B7BCFE: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (12),DebeMoas-HabeMoas,0))"
  loc_B7BD01: ConcatStr
  loc_B7BD02: FStStrNoPop var_A0
  loc_B7BD05: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (9,12),DebeMoas-HabeMoas,0))"
  loc_B7BD08: ConcatStr
  loc_B7BD09: FStStrNoPop var_A4
  loc_B7BD0C: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_B7BD0F: ConcatStr
  loc_B7BD10: FStStrNoPop var_A8
  loc_B7BD13: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(DebeMoas-HabeMoas>0,DebeMoas-HabeMoas,0),0))"
  loc_B7BD16: ConcatStr
  loc_B7BD17: FStStrNoPop var_AC
  loc_B7BD1A: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13/*,9*/),DebeMoas-HabeMoas,0))"
  loc_B7BD1D: ConcatStr
  loc_B7BD1E: FStStrNoPop var_B0
  loc_B7BD21: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7BD24: ConcatStr
  loc_B7BD25: FStStrNoPop var_B4
  loc_B7BD28: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_B7BD2B: ConcatStr
  loc_B7BD2C: FStStrNoPop var_B8
  loc_B7BD2F: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7BD32: ConcatStr
  loc_B7BD33: FStStrNoPop var_BC
  loc_B7BD36: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_B7BD39: ConcatStr
  loc_B7BD3A: FStStrNoPop var_C0
  loc_B7BD3D: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7BD40: ConcatStr
  loc_B7BD41: FStStrNoPop var_C4
  loc_B7BD44: LitStr " ELSE 0"
  loc_B7BD47: ConcatStr
  loc_B7BD48: FStStrNoPop var_C8
  loc_B7BD4B: LitStr " END MoviFonD /*egresos*/"
  loc_B7BD4E: ConcatStr
  loc_B7BD4F: FStStr var_88
  loc_B7BD52: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B7BD75: ILdRf var_88
  loc_B7BD78: LitStr ", CASE /*ingresos - MoviFonH*/"
  loc_B7BD7B: ConcatStr
  loc_B7BD7C: FStStrNoPop var_8C
  loc_B7BD7F: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1150','1160') THEN 0"
  loc_B7BD82: ConcatStr
  loc_B7BD83: FStStrNoPop var_90
  loc_B7BD86: LitStr " WHEN CodiTicu IN ('1170') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_B7BD89: ConcatStr
  loc_B7BD8A: FStStrNoPop var_94
  loc_B7BD8D: LitStr " WHEN CodiTicu IN ('2111','2112') THEN 0"
  loc_B7BD90: ConcatStr
  loc_B7BD91: FStStrNoPop var_98
  loc_B7BD94: LitStr " WHEN CodiTicu = '2113' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0))"
  loc_B7BD97: ConcatStr
  loc_B7BD98: FStStrNoPop var_9C
  loc_B7BD9B: LitStr " WHEN CodiTicu IN ('2114','2115') THEN Sum(If(CodiTias IN (6,22,23,24),HabeMoas-DebeMoas,0))"
  loc_B7BD9E: ConcatStr
  loc_B7BD9F: FStStrNoPop var_A0
  loc_B7BDA2: LitStr " WHEN CodiTicu IN ('2116','2117','2121','2122','2123','2124') THEN 0"
  loc_B7BDA5: ConcatStr
  loc_B7BDA6: FStStrNoPop var_A4
  loc_B7BDA9: LitStr " WHEN CodiTicu IN ('2210','2220') THEN Sum(If(CodiTias IN (13,12),if(HabeMoas-DebeMoas>0,HabeMoas-DebeMoas,0),0))"
  loc_B7BDAC: ConcatStr
  loc_B7BDAD: FStStrNoPop var_A8
  loc_B7BDB0: LitStr " WHEN CodiTicu = '3000' THEN 0"
  loc_B7BDB3: ConcatStr
  loc_B7BDB4: FStStrNoPop var_AC
  loc_B7BDB7: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7BDBA: ConcatStr
  loc_B7BDBB: FStStrNoPop var_B0
  loc_B7BDBE: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_B7BDC1: ConcatStr
  loc_B7BDC2: FStStrNoPop var_B4
  loc_B7BDC5: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7BDC8: ConcatStr
  loc_B7BDC9: FStStrNoPop var_B8
  loc_B7BDCC: LitStr " WHEN CodiTicu Like '71" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7BDCF: ConcatStr
  loc_B7BDD0: FStStrNoPop var_BC
  loc_B7BDD3: LitStr " WHEN CodiTicu Like '72" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7BDD6: ConcatStr
  loc_B7BDD7: FStStrNoPop var_C0
  loc_B7BDDA: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7BDDD: ConcatStr
  loc_B7BDDE: FStStrNoPop var_C4
  loc_B7BDE1: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_B7BDE4: ConcatStr
  loc_B7BDE5: FStStrNoPop var_C8
  loc_B7BDE8: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7BDEB: ConcatStr
  loc_B7BDEC: FStStrNoPop var_CC
  loc_B7BDEF: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7BDF2: ConcatStr
  loc_B7BDF3: FStStrNoPop var_D4
  loc_B7BDF6: LitStr " ELSE 0"
  loc_B7BDF9: ConcatStr
  loc_B7BDFA: FStStrNoPop var_D8
  loc_B7BDFD: LitStr " END MoviFonH /*ingresos*/"
  loc_B7BE00: ConcatStr
  loc_B7BE01: FStStr var_88
  loc_B7BE04: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D4 = ""
  loc_B7BE2D: ILdRf var_88
  loc_B7BE30: LitStr " FROM asiento"
  loc_B7BE33: ConcatStr
  loc_B7BE34: FStStrNoPop var_8C
  loc_B7BE37: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B7BE3A: ConcatStr
  loc_B7BE3B: FStStrNoPop var_90
  loc_B7BE3E: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B7BE41: ConcatStr
  loc_B7BE42: FStStrNoPop var_94
  loc_B7BE45: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_B7BE48: ConcatStr
  loc_B7BE49: FStStrNoPop var_98
  loc_B7BE4C: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_B7BE4F: ConcatStr
  loc_B7BE50: FStStrNoPop var_9C
  loc_B7BE53: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_B7BE56: ConcatStr
  loc_B7BE57: FStStr var_88
  loc_B7BE5A: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B7BE67: ILdRf var_88
  loc_B7BE6A: Call EjecutarRsCls(from_stack_1v)
  loc_B7BE6F: LitStr "INSERT INTO ttemp "
  loc_B7BE72: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_B7BE75: ConcatStr
  loc_B7BE76: FStStrNoPop var_8C
  loc_B7BE79: LitStr " , Sum(PagaImpu)"
  loc_B7BE7C: ConcatStr
  loc_B7BE7D: FStStrNoPop var_90
  loc_B7BE80: LitStr " , 0"
  loc_B7BE83: ConcatStr
  loc_B7BE84: FStStrNoPop var_94
  loc_B7BE87: LitStr " FROM infogov.cuentacontable cc"
  loc_B7BE8A: ConcatStr
  loc_B7BE8B: FStStrNoPop var_98
  loc_B7BE8E: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_B7BE91: ConcatStr
  loc_B7BE92: FStStrNoPop var_9C
  loc_B7BE95: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_B7BE98: ConcatStr
  loc_B7BE99: FStStrNoPop var_A0
  loc_B7BE9C: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_B7BE9F: ConcatStr
  loc_B7BEA0: FStStrNoPop var_A4
  loc_B7BEA3: LitStr " AND (CodiTicu = '2113'"
  loc_B7BEA6: ConcatStr
  loc_B7BEA7: FStStrNoPop var_A8
  loc_B7BEAA: LitStr " OR CodiTicu Like '6" & Chr(37) & "'"
  loc_B7BEAD: ConcatStr
  loc_B7BEAE: FStStrNoPop var_AC
  loc_B7BEB1: LitStr " OR CodiTicu Like '8" & Chr(37) & "'"
  loc_B7BEB4: ConcatStr
  loc_B7BEB5: FStStrNoPop var_B0
  loc_B7BEB8: LitStr " OR CodiTicu = '2111')"
  loc_B7BEBB: ConcatStr
  loc_B7BEBC: FStStrNoPop var_B4
  loc_B7BEBF: LitStr " GROUP BY CodiCuco;"
  loc_B7BEC2: ConcatStr
  loc_B7BEC3: FStStrNoPop var_B8
  loc_B7BEC6: Call EjecutarRsCls(from_stack_1v)
  loc_B7BECB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B7BEE6: Branch loc_B7C12B
  loc_B7BEE9: ILdRf var_D0
  loc_B7BEEC: LitStr "Municipalidad de Tupungato"
  loc_B7BEEF: EqStr
  loc_B7BEF1: BranchF loc_B7C11D
  loc_B7BEF4: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,SaldIniD,SaldIniH)"
  loc_B7BEF7: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_B7BEFA: ConcatStr
  loc_B7BEFB: FStStrNoPop var_8C
  loc_B7BEFE: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas)-Sum(HabeMoas)>0,Sum(DebeMoas)-Sum(HabeMoas),0),0) SaldIniD"
  loc_B7BF01: ConcatStr
  loc_B7BF02: FStStrNoPop var_90
  loc_B7BF05: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas)-Sum(DebeMoas)>0,Sum(HabeMoas)-Sum(DebeMoas),0),0) SaldIniH"
  loc_B7BF08: ConcatStr
  loc_B7BF09: FStStrNoPop var_94
  loc_B7BF0C: LitStr " FROM asiento"
  loc_B7BF0F: ConcatStr
  loc_B7BF10: FStStrNoPop var_98
  loc_B7BF13: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_B7BF16: ConcatStr
  loc_B7BF17: FStStrNoPop var_9C
  loc_B7BF1A: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B7BF1D: ConcatStr
  loc_B7BF1E: FStStrNoPop var_A0
  loc_B7BF21: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_B7BF24: ConcatStr
  loc_B7BF25: FStStrNoPop var_A4
  loc_B7BF28: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_B7BF2B: ConcatStr
  loc_B7BF2C: FStStrNoPop var_A8
  loc_B7BF2F: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_B7BF32: ConcatStr
  loc_B7BF33: FStStrNoPop var_AC
  loc_B7BF36: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_B7BF39: ConcatStr
  loc_B7BF3A: FStStrNoPop var_B0
  loc_B7BF3D: Call EjecutarRsCls(from_stack_1v)
  loc_B7BF42: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B7BF59: LitStr "INSERT INTO ttemp (PeriInfo,CodiCuco,CodiTicu,CodiTias,MoviEjeD,MoviEjeH,MoviFonD,MoviFonH)"
  loc_B7BF5C: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_B7BF5F: ConcatStr
  loc_B7BF60: FStStrNoPop var_8C
  loc_B7BF63: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_B7BF66: ConcatStr
  loc_B7BF67: FStStrNoPop var_90
  loc_B7BF6A: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_B7BF6D: ConcatStr
  loc_B7BF6E: FStStr var_88
  loc_B7BF71: FFreeStr var_8C = ""
  loc_B7BF78: ILdRf var_88
  loc_B7BF7B: LitStr ", CASE /*egresos - MoviFonD*/"
  loc_B7BF7E: ConcatStr
  loc_B7BF7F: FStStrNoPop var_8C
  loc_B7BF82: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1140','2112') THEN 0"
  loc_B7BF85: ConcatStr
  loc_B7BF86: FStStrNoPop var_90
  loc_B7BF89: LitStr " WHEN CodiTicu IN ('1150','1151','1152','1153','1154','1155','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN If(Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),DebeMoas-HabeMoas,0)),0)"
  loc_B7BF8C: ConcatStr
  loc_B7BF8D: FStStrNoPop var_94
  loc_B7BF90: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (12,13/*,9*/),DebeMoas-HabeMoas,0))"
  loc_B7BF93: ConcatStr
  loc_B7BF94: FStStrNoPop var_98
  loc_B7BF97: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7BF9A: ConcatStr
  loc_B7BF9B: FStStrNoPop var_9C
  loc_B7BF9E: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN 0 /*recursos*/"
  loc_B7BFA1: ConcatStr
  loc_B7BFA2: FStStrNoPop var_A0
  loc_B7BFA5: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7BFA8: ConcatStr
  loc_B7BFA9: FStStrNoPop var_A4
  loc_B7BFAC: LitStr " WHEN CodiTicu Like '7" & Chr(37) & "' THEN 0 /*fuentes de financiamiento*/"
  loc_B7BFAF: ConcatStr
  loc_B7BFB0: FStStrNoPop var_A8
  loc_B7BFB3: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7BFB6: ConcatStr
  loc_B7BFB7: FStStrNoPop var_AC
  loc_B7BFBA: LitStr " ELSE 0"
  loc_B7BFBD: ConcatStr
  loc_B7BFBE: FStStrNoPop var_B0
  loc_B7BFC1: LitStr " END MoviFonD /*egresos*/"
  loc_B7BFC4: ConcatStr
  loc_B7BFC5: FStStr var_88
  loc_B7BFC8: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B7BFDF: ILdRf var_88
  loc_B7BFE2: LitStr ", CASE /* ingresos - MoviFonH */"
  loc_B7BFE5: ConcatStr
  loc_B7BFE6: FStStrNoPop var_8C
  loc_B7BFE9: LitStr " WHEN CodiTicu IN ('1110','1120','1130','1140','2112') THEN 0"
  loc_B7BFEC: ConcatStr
  loc_B7BFED: FStStrNoPop var_90
  loc_B7BFF0: LitStr " WHEN CodiTicu IN ('1150','1151','1152','1153','1154','1155','1160','1170','1200','1210','1220','1230','2000','2100','2110','2111','2113','2114','2115','2116','2117','2120','2121','2122','2123','2124','2200','2210','2220') THEN if(Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0))>0,Sum(If(CodiTias IN (6,12,9,13,22,23,24),HabeMoas-DebeMoas,0)),0)"
  loc_B7BFF3: ConcatStr
  loc_B7BFF4: FStStrNoPop var_94
  loc_B7BFF7: LitStr " WHEN CodiTicu = '3000' THEN Sum(If(CodiTias IN (32,9) and Month(asiento.FechAsie)!=4,HabeMoas-DebeMoas,0))"
  loc_B7BFFA: ConcatStr
  loc_B7BFFB: FStStrNoPop var_98
  loc_B7BFFE: LitStr " WHEN CodiTicu = '4000' THEN 0 /*cuentas de orden*/"
  loc_B7C001: ConcatStr
  loc_B7C002: FStStrNoPop var_9C
  loc_B7C005: LitStr " WHEN CodiTicu Like '5" & Chr(37) & "' THEN Sum(If(CodiTias IN (9,6,12,10,2),HabeMoas-DebeMoas,0)) /*recursos*/"
  loc_B7C008: ConcatStr
  loc_B7C009: FStStrNoPop var_A0
  loc_B7C00C: LitStr " WHEN CodiTicu Like '6" & Chr(37) & "' THEN 0 /*gastos*/"
  loc_B7C00F: ConcatStr
  loc_B7C010: FStStrNoPop var_A4
  loc_B7C013: LitStr " WHEN CodiTicu Like '71" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7C016: ConcatStr
  loc_B7C017: FStStrNoPop var_A8
  loc_B7C01A: LitStr " WHEN CodiTicu Like '72" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7C01D: ConcatStr
  loc_B7C01E: FStStrNoPop var_AC
  loc_B7C021: LitStr " WHEN CodiTicu Like '73" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7C024: ConcatStr
  loc_B7C025: FStStrNoPop var_B0
  loc_B7C028: LitStr " WHEN CodiTicu Like '74" & Chr(37) & "' THEN 0 /*remanente del ejercicio anterior*/"
  loc_B7C02B: ConcatStr
  loc_B7C02C: FStStrNoPop var_B4
  loc_B7C02F: LitStr " WHEN CodiTicu Like '75" & Chr(37) & "' THEN Sum(If(CodiTias IN (9),HabeMoas-DebeMoas,0)) /*fuentes de financiamiento*/"
  loc_B7C032: ConcatStr
  loc_B7C033: FStStrNoPop var_B8
  loc_B7C036: LitStr " WHEN CodiTicu Like '8" & Chr(37) & "' THEN 0 /*aplicaciones financieras*/"
  loc_B7C039: ConcatStr
  loc_B7C03A: FStStrNoPop var_BC
  loc_B7C03D: LitStr " ELSE 0"
  loc_B7C040: ConcatStr
  loc_B7C041: FStStrNoPop var_C0
  loc_B7C044: LitStr " END MoviFonH /* FIN ingresos MoviFonH */"
  loc_B7C047: ConcatStr
  loc_B7C048: FStStr var_88
  loc_B7C04B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B7C06A: ILdRf var_88
  loc_B7C06D: LitStr " FROM asiento"
  loc_B7C070: ConcatStr
  loc_B7C071: FStStrNoPop var_8C
  loc_B7C074: LitStr " INNER JOIN paraconta pc ON pc.PeriInfo = asiento.PeriInfo"
  loc_B7C077: ConcatStr
  loc_B7C078: FStStrNoPop var_90
  loc_B7C07B: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_B7C07E: ConcatStr
  loc_B7C07F: FStStrNoPop var_94
  loc_B7C082: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco AND cc.CodiCuco != DeexPaco and cc.CodiCuco != ProvPaco"
  loc_B7C085: ConcatStr
  loc_B7C086: FStStrNoPop var_98
  loc_B7C089: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_B7C08C: ConcatStr
  loc_B7C08D: FStStrNoPop var_9C
  loc_B7C090: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_B7C093: ConcatStr
  loc_B7C094: FStStrNoPop var_A0
  loc_B7C097: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_B7C09A: ConcatStr
  loc_B7C09B: FStStr var_88
  loc_B7C09E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_B7C0AD: ILdRf var_88
  loc_B7C0B0: Call EjecutarRsCls(from_stack_1v)
  loc_B7C0B5: LitStr "INSERT INTO ttemp "
  loc_B7C0B8: LitStr " SELECT cc.PeriInfo, cc.CodiCuco, CodiTicu, 0, 0 SaldIniD, 0 SaldIniH, 0 MoviEjeD, 0 MoviEjeH"
  loc_B7C0BB: ConcatStr
  loc_B7C0BC: FStStrNoPop var_8C
  loc_B7C0BF: LitStr ", Sum(PagaImpu)"
  loc_B7C0C2: ConcatStr
  loc_B7C0C3: FStStrNoPop var_90
  loc_B7C0C6: LitStr ", 0"
  loc_B7C0C9: ConcatStr
  loc_B7C0CA: FStStrNoPop var_94
  loc_B7C0CD: LitStr " FROM infogov.cuentacontable cc"
  loc_B7C0D0: ConcatStr
  loc_B7C0D1: FStStrNoPop var_98
  loc_B7C0D4: LitStr " INNER JOIN partida ON partida.PeriInfo = cc.PeriInfo AND partida.CodiCuco = cc.CodiCuco"
  loc_B7C0D7: ConcatStr
  loc_B7C0D8: FStStrNoPop var_9C
  loc_B7C0DB: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = partida.PeriInfo AND imputacion.CodiPart = partida.CodiPart"
  loc_B7C0DE: ConcatStr
  loc_B7C0DF: FStStrNoPop var_A0
  loc_B7C0E2: LitStr " WHERE cc.PeriInfo = @periinfo"
  loc_B7C0E5: ConcatStr
  loc_B7C0E6: FStStrNoPop var_A4
  loc_B7C0E9: LitStr " AND (CodiTicu Like '6" & Chr(37) & "'"
  loc_B7C0EC: ConcatStr
  loc_B7C0ED: FStStrNoPop var_A8
  loc_B7C0F0: LitStr " OR CodiTicu Like '8" & Chr(37) & "')"
  loc_B7C0F3: ConcatStr
  loc_B7C0F4: FStStrNoPop var_AC
  loc_B7C0F7: LitStr " GROUP BY CodiCuco;"
  loc_B7C0FA: ConcatStr
  loc_B7C0FB: FStStrNoPop var_B0
  loc_B7C0FE: Call EjecutarRsCls(from_stack_1v)
  loc_B7C103: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_B7C11A: Branch loc_B7C12B
  loc_B7C11D: LitI4 0
  loc_B7C122: LitStr "Consulte el anexo XIV mensual-acumulado..."
  loc_B7C125: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7C12A: ExitProcHresult
  loc_B7C12B: LitStr " DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B7C12E: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_B7C131: ConcatStr
  loc_B7C132: FStStrNoPop var_8C
  loc_B7C135: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_B7C138: ConcatStr
  loc_B7C139: FStStrNoPop var_90
  loc_B7C13C: LitStr " odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_B7C13F: ConcatStr
  loc_B7C140: FStStrNoPop var_94
  loc_B7C143: LitStr " etaCuco` varchar(250) NOT NULL DEFAULT '',"
  loc_B7C146: ConcatStr
  loc_B7C147: FStStrNoPop var_98
  loc_B7C14A: LitStr " odiTicu` char(4) NOT NULL,"
  loc_B7C14D: ConcatStr
  loc_B7C14E: FStStrNoPop var_9C
  loc_B7C151: LitStr " aldIniD` decimal(15,2) DEFAULT NULL,"
  loc_B7C154: ConcatStr
  loc_B7C155: FStStrNoPop var_A0
  loc_B7C158: LitStr " aldIniH` decimal(15,2) DEFAULT NULL,"
  loc_B7C15B: ConcatStr
  loc_B7C15C: FStStrNoPop var_A4
  loc_B7C15F: LitStr " oviEjeD` decimal(15,2) DEFAULT NULL,"
  loc_B7C162: ConcatStr
  loc_B7C163: FStStrNoPop var_A8
  loc_B7C166: LitStr " oviEjeH` decimal(15,2) DEFAULT NULL,"
  loc_B7C169: ConcatStr
  loc_B7C16A: FStStrNoPop var_AC
  loc_B7C16D: LitStr " oviFonD` decimal(15,2) DEFAULT NULL,"
  loc_B7C170: ConcatStr
  loc_B7C171: FStStrNoPop var_B0
  loc_B7C174: LitStr " oviFonH` decimal(15,2) DEFAULT NULL,"
  loc_B7C177: ConcatStr
  loc_B7C178: FStStrNoPop var_B4
  loc_B7C17B: LitStr " arPatD` decimal(15,2) DEFAULT NULL,"
  loc_B7C17E: ConcatStr
  loc_B7C17F: FStStrNoPop var_B8
  loc_B7C182: LitStr " arPatH` decimal(15,2) DEFAULT NULL,"
  loc_B7C185: ConcatStr
  loc_B7C186: FStStrNoPop var_BC
  loc_B7C189: LitStr " aldFinaD` decimal(15,2) DEFAULT NULL,"
  loc_B7C18C: ConcatStr
  loc_B7C18D: FStStrNoPop var_C0
  loc_B7C190: LitStr " aldFinaH` decimal(15,2) DEFAULT NULL,"
  loc_B7C193: ConcatStr
  loc_B7C194: FStStrNoPop var_C4
  loc_B7C197: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_B7C19A: ConcatStr
  loc_B7C19B: FStStrNoPop var_C8
  loc_B7C19E: LitStr " ) ENGINE=InnoDB ;"
  loc_B7C1A1: ConcatStr
  loc_B7C1A2: FStStrNoPop var_CC
  loc_B7C1A5: Call EjecutarRsCls(from_stack_1v)
  loc_B7C1AA: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_B7C1CF: LitStr "INSERT INTO tmovi "
  loc_B7C1D2: LitStr "SELECT ttemp.PeriInfo, ttemp.CodiCuco, DetaCuco, ttemp.CodiTicu"
  loc_B7C1D5: ConcatStr
  loc_B7C1D6: FStStrNoPop var_8C
  loc_B7C1D9: LitStr ", IF(Sum(SaldIniD)-Sum(SaldIniH)>0,Sum(SaldIniD)-Sum(SaldIniH),0)"
  loc_B7C1DC: ConcatStr
  loc_B7C1DD: FStStrNoPop var_90
  loc_B7C1E0: LitStr ", IF(Sum(SaldIniH)-Sum(SaldIniD)>0,Sum(SaldIniH)-Sum(SaldIniD),0)"
  loc_B7C1E3: ConcatStr
  loc_B7C1E4: FStStrNoPop var_94
  loc_B7C1E7: LitStr ", Sum(MoviEjeD), Sum(MoviEjeH)"
  loc_B7C1EA: ConcatStr
  loc_B7C1EB: FStStrNoPop var_98
  loc_B7C1EE: LitStr ", IF(ttemp.CodiTicu IN ('1120'),IF(Sum(MoviFonD)-Sum(MoviFonH)>0,Sum(MoviFonD)-Sum(MoviFonH),0),Sum(MoviFonD))"
  loc_B7C1F1: ConcatStr
  loc_B7C1F2: FStStrNoPop var_9C
  loc_B7C1F5: LitStr ", IF(ttemp.CodiTicu IN ('1120'),IF(Sum(MoviFonH)-Sum(MoviFonD)>0,Sum(MoviFonH)-Sum(MoviFonD),0),Sum(MoviFonH))"
  loc_B7C1F8: ConcatStr
  loc_B7C1F9: FStStrNoPop var_A0
  loc_B7C1FC: LitStr ", Sum(MoviEjeD)-Sum(MoviFonD), Sum(MoviEjeH)-Sum(MoviFonH)"
  loc_B7C1FF: ConcatStr
  loc_B7C200: FStStrNoPop var_A4
  loc_B7C203: LitStr ", If(Sum(SaldIniD)-Sum(SaldIniH)+Sum(MoviEjeD)-Sum(MoviEjeH)>0,Sum(SaldIniD)-Sum(SaldIniH)+Sum(MoviEjeD)-Sum(MoviEjeH),0)"
  loc_B7C206: ConcatStr
  loc_B7C207: FStStrNoPop var_A8
  loc_B7C20A: LitStr ", If(Sum(SaldIniH)-Sum(SaldIniD)+Sum(MoviEjeH)-Sum(MoviEjeD)>0,Sum(SaldIniH)-Sum(SaldIniD)+Sum(MoviEjeH)-Sum(MoviEjeD),0)"
  loc_B7C20D: ConcatStr
  loc_B7C20E: FStStrNoPop var_AC
  loc_B7C211: LitStr " FROM ttemp"
  loc_B7C214: ConcatStr
  loc_B7C215: FStStrNoPop var_B0
  loc_B7C218: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = ttemp.PeriInfo AND cc.CodiCuco = ttemp.CodiCuco"
  loc_B7C21B: ConcatStr
  loc_B7C21C: FStStrNoPop var_B4
  loc_B7C21F: LitStr " GROUP BY ttemp.CodiCuco;"
  loc_B7C222: ConcatStr
  loc_B7C223: FStStrNoPop var_B8
  loc_B7C226: Call EjecutarRsCls(from_stack_1v)
  loc_B7C22B: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B7C246: ExitProcHresult
  loc_B7C247: ConcatStr
End Sub

Public Sub Anexos_X_6222(PeriInfo) 'A8EE04
  'Data Table: 42DE78
  loc_A8E9C4: LitStr "SET @periinfo="
  loc_A8E9C7: FLdI2 PeriInfo
  loc_A8E9CA: CStrUI1
  loc_A8E9CC: FStStrNoPop var_8C
  loc_A8E9CF: ConcatStr
  loc_A8E9D0: FStStrNoPop var_90
  loc_A8E9D3: LitStr ";"
  loc_A8E9D6: ConcatStr
  loc_A8E9D7: FStStrNoPop var_94
  loc_A8E9DA: LitStr " DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_A8E9DD: ConcatStr
  loc_A8E9DE: FStStrNoPop var_98
  loc_A8E9E1: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_A8E9E4: ConcatStr
  loc_A8E9E5: FStStrNoPop var_9C
  loc_A8E9E8: LitStr " eriInfo` year(4) NOT NULL DEFAULT '0000',"
  loc_A8E9EB: ConcatStr
  loc_A8E9EC: FStStrNoPop var_A0
  loc_A8E9EF: LitStr " odiCuco` char(12) NOT NULL DEFAULT '',"
  loc_A8E9F2: ConcatStr
  loc_A8E9F3: FStStrNoPop var_A4
  loc_A8E9F6: LitStr " odiTicu` char(4) NOT NULL,"
  loc_A8E9F9: ConcatStr
  loc_A8E9FA: FStStrNoPop var_A8
  loc_A8E9FD: LitStr " odiTias` smallint(3) unsigned NOT NULL DEFAULT '0',"
  loc_A8EA00: ConcatStr
  loc_A8EA01: FStStrNoPop var_AC
  loc_A8EA04: LitStr " aldIniD` decimal(17,2) NOT NULL DEFAULT '0',"
  loc_A8EA07: ConcatStr
  loc_A8EA08: FStStrNoPop var_B0
  loc_A8EA0B: LitStr " aldIniH` decimal(17,2) NOT NULL DEFAULT '0',"
  loc_A8EA0E: ConcatStr
  loc_A8EA0F: FStStrNoPop var_B4
  loc_A8EA12: LitStr " oviEjeD` decimal(17,2) NOT NULL DEFAULT '0',"
  loc_A8EA15: ConcatStr
  loc_A8EA16: FStStrNoPop var_B8
  loc_A8EA19: LitStr " oviEjeH` decimal(17,2) NOT NULL DEFAULT '0',"
  loc_A8EA1C: ConcatStr
  loc_A8EA1D: FStStrNoPop var_BC
  loc_A8EA20: LitStr " aldEjeD` decimal(17,2) NOT NULL DEFAULT '0',"
  loc_A8EA23: ConcatStr
  loc_A8EA24: FStStrNoPop var_C0
  loc_A8EA27: LitStr " aldEjeA` decimal(17,2) NOT NULL DEFAULT '0',"
  loc_A8EA2A: ConcatStr
  loc_A8EA2B: FStStrNoPop var_C4
  loc_A8EA2E: LitStr " KEY idxtmp (eriInfo`,`CodiCuco`)"
  loc_A8EA31: ConcatStr
  loc_A8EA32: FStStrNoPop var_C8
  loc_A8EA35: LitStr " ) ENGINE=InnoDB ;"
  loc_A8EA38: ConcatStr
  loc_A8EA39: FStStrNoPop var_CC
  loc_A8EA3C: Call EjecutarRsCls(from_stack_1v)
  loc_A8EA41: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_A8EA66: LitStr "Municipalidad de Guaymallén"
  loc_A8EA69: FStStrCopy var_D0
  loc_A8EA6C: ILdRf var_D0
  loc_A8EA6F: LitStr "Municipalidad de Maipú"
  loc_A8EA72: EqStr
  loc_A8EA74: BranchF loc_A8EAF1
  loc_A8EA77: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, CodiTicu, CodiTias, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH)"
  loc_A8EA7A: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_A8EA7D: ConcatStr
  loc_A8EA7E: FStStrNoPop var_8C
  loc_A8EA81: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0),0) SaldIniD"
  loc_A8EA84: ConcatStr
  loc_A8EA85: FStStrNoPop var_90
  loc_A8EA88: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0),0) SaldIniH"
  loc_A8EA8B: ConcatStr
  loc_A8EA8C: FStStrNoPop var_94
  loc_A8EA8F: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_A8EA92: ConcatStr
  loc_A8EA93: FStStrNoPop var_98
  loc_A8EA96: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_A8EA99: ConcatStr
  loc_A8EA9A: FStStrNoPop var_9C
  loc_A8EA9D: LitStr " FROM asiento"
  loc_A8EAA0: ConcatStr
  loc_A8EAA1: FStStrNoPop var_A0
  loc_A8EAA4: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_A8EAA7: ConcatStr
  loc_A8EAA8: FStStrNoPop var_A4
  loc_A8EAAB: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A8EAAE: ConcatStr
  loc_A8EAAF: FStStrNoPop var_A8
  loc_A8EAB2: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8EAB5: ConcatStr
  loc_A8EAB6: FStStrNoPop var_AC
  loc_A8EAB9: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A8EABC: ConcatStr
  loc_A8EABD: FStStrNoPop var_B0
  loc_A8EAC0: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A8EAC3: ConcatStr
  loc_A8EAC4: FStStrNoPop var_B4
  loc_A8EAC7: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_A8EACA: ConcatStr
  loc_A8EACB: FStStrNoPop var_B8
  loc_A8EACE: Call EjecutarRsCls(from_stack_1v)
  loc_A8EAD3: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8EAEE: Branch loc_A8EE02
  loc_A8EAF1: ILdRf var_D0
  loc_A8EAF4: LitStr "Municipalidad de Rivadavia"
  loc_A8EAF7: EqStr
  loc_A8EAF9: BranchF loc_A8EB7F
  loc_A8EAFC: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, CodiTicu, CodiTias, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH)"
  loc_A8EAFF: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_A8EB02: ConcatStr
  loc_A8EB03: FStStrNoPop var_8C
  loc_A8EB06: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0),0) SaldIniD"
  loc_A8EB09: ConcatStr
  loc_A8EB0A: FStStrNoPop var_90
  loc_A8EB0D: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0),0) SaldIniH"
  loc_A8EB10: ConcatStr
  loc_A8EB11: FStStrNoPop var_94
  loc_A8EB14: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_A8EB17: ConcatStr
  loc_A8EB18: FStStrNoPop var_98
  loc_A8EB1B: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_A8EB1E: ConcatStr
  loc_A8EB1F: FStStrNoPop var_9C
  loc_A8EB22: LitStr " FROM asiento"
  loc_A8EB25: ConcatStr
  loc_A8EB26: FStStrNoPop var_A0
  loc_A8EB29: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_A8EB2C: ConcatStr
  loc_A8EB2D: FStStrNoPop var_A4
  loc_A8EB30: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A8EB33: ConcatStr
  loc_A8EB34: FStStrNoPop var_A8
  loc_A8EB37: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8EB3A: ConcatStr
  loc_A8EB3B: FStStrNoPop var_AC
  loc_A8EB3E: LitStr " AND cc.CodiCuco NOT IN ('1131020000','1131090000','1211010000','1211020000','1211030000')"
  loc_A8EB41: ConcatStr
  loc_A8EB42: FStStrNoPop var_B0
  loc_A8EB45: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A8EB48: ConcatStr
  loc_A8EB49: FStStrNoPop var_B4
  loc_A8EB4C: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A8EB4F: ConcatStr
  loc_A8EB50: FStStrNoPop var_B8
  loc_A8EB53: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_A8EB56: ConcatStr
  loc_A8EB57: FStStrNoPop var_BC
  loc_A8EB5A: Call EjecutarRsCls(from_stack_1v)
  loc_A8EB5F: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A8EB7C: Branch loc_A8EE02
  loc_A8EB7F: ILdRf var_D0
  loc_A8EB82: LitStr "Municipalidad de San Carlos"
  loc_A8EB85: EqStr
  loc_A8EB87: BranchT loc_A8EBED
  loc_A8EB8A: ILdRf var_D0
  loc_A8EB8D: LitStr "Municipalidad de Malargüe"
  loc_A8EB90: EqStr
  loc_A8EB92: BranchT loc_A8EBED
  loc_A8EB95: ILdRf var_D0
  loc_A8EB98: LitStr "Municipalidad de Lavalle"
  loc_A8EB9B: EqStr
  loc_A8EB9D: BranchT loc_A8EBED
  loc_A8EBA0: ILdRf var_D0
  loc_A8EBA3: LitStr "Municipalidad de General Alvear"
  loc_A8EBA6: EqStr
  loc_A8EBA8: BranchT loc_A8EBED
  loc_A8EBAB: ILdRf var_D0
  loc_A8EBAE: LitStr "Municipalidad de Tunuyán"
  loc_A8EBB1: EqStr
  loc_A8EBB3: BranchT loc_A8EBED
  loc_A8EBB6: ILdRf var_D0
  loc_A8EBB9: LitStr "Municipalidad de Tupungato"
  loc_A8EBBC: EqStr
  loc_A8EBBE: BranchT loc_A8EBED
  loc_A8EBC1: ILdRf var_D0
  loc_A8EBC4: LitStr "Municipalidad de Santa Rosa"
  loc_A8EBC7: EqStr
  loc_A8EBC9: BranchT loc_A8EBED
  loc_A8EBCC: ILdRf var_D0
  loc_A8EBCF: LitStr "Municipalidad de La Paz"
  loc_A8EBD2: EqStr
  loc_A8EBD4: BranchT loc_A8EBED
  loc_A8EBD7: ILdRf var_D0
  loc_A8EBDA: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A8EBDD: EqStr
  loc_A8EBDF: BranchT loc_A8EBED
  loc_A8EBE2: ILdRf var_D0
  loc_A8EBE5: LitStr "Municipalidad de Guaymallénnnnn"
  loc_A8EBE8: EqStr
  loc_A8EBEA: BranchF loc_A8EC67
  loc_A8EBED: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, CodiTicu, CodiTias, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH)"
  loc_A8EBF0: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_A8EBF3: ConcatStr
  loc_A8EBF4: FStStrNoPop var_8C
  loc_A8EBF7: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0),0) SaldIniD"
  loc_A8EBFA: ConcatStr
  loc_A8EBFB: FStStrNoPop var_90
  loc_A8EBFE: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0),0) SaldIniH"
  loc_A8EC01: ConcatStr
  loc_A8EC02: FStStrNoPop var_94
  loc_A8EC05: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_A8EC08: ConcatStr
  loc_A8EC09: FStStrNoPop var_98
  loc_A8EC0C: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_A8EC0F: ConcatStr
  loc_A8EC10: FStStrNoPop var_9C
  loc_A8EC13: LitStr " FROM asiento"
  loc_A8EC16: ConcatStr
  loc_A8EC17: FStStrNoPop var_A0
  loc_A8EC1A: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_A8EC1D: ConcatStr
  loc_A8EC1E: FStStrNoPop var_A4
  loc_A8EC21: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A8EC24: ConcatStr
  loc_A8EC25: FStStrNoPop var_A8
  loc_A8EC28: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8EC2B: ConcatStr
  loc_A8EC2C: FStStrNoPop var_AC
  loc_A8EC2F: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A8EC32: ConcatStr
  loc_A8EC33: FStStrNoPop var_B0
  loc_A8EC36: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A8EC39: ConcatStr
  loc_A8EC3A: FStStrNoPop var_B4
  loc_A8EC3D: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_A8EC40: ConcatStr
  loc_A8EC41: FStStrNoPop var_B8
  loc_A8EC44: Call EjecutarRsCls(from_stack_1v)
  loc_A8EC49: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8EC64: Branch loc_A8EE02
  loc_A8EC67: ILdRf var_D0
  loc_A8EC6A: LitStr "Municipalidad de Guaymallén"
  loc_A8EC6D: EqStr
  loc_A8EC6F: BranchF loc_A8EDF4
  loc_A8EC72: FLdI2 PeriInfo
  loc_A8EC75: LitI2 2023
  loc_A8EC78: LeI2
  loc_A8EC79: BranchF loc_A8ECF6
  loc_A8EC7C: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, CodiTicu, CodiTias, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH)"
  loc_A8EC7F: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_A8EC82: ConcatStr
  loc_A8EC83: FStStrNoPop var_8C
  loc_A8EC86: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0),0) SaldIniD"
  loc_A8EC89: ConcatStr
  loc_A8EC8A: FStStrNoPop var_90
  loc_A8EC8D: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0),0) SaldIniH"
  loc_A8EC90: ConcatStr
  loc_A8EC91: FStStrNoPop var_94
  loc_A8EC94: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_A8EC97: ConcatStr
  loc_A8EC98: FStStrNoPop var_98
  loc_A8EC9B: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_A8EC9E: ConcatStr
  loc_A8EC9F: FStStrNoPop var_9C
  loc_A8ECA2: LitStr " FROM asiento"
  loc_A8ECA5: ConcatStr
  loc_A8ECA6: FStStrNoPop var_A0
  loc_A8ECA9: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_A8ECAC: ConcatStr
  loc_A8ECAD: FStStrNoPop var_A4
  loc_A8ECB0: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A8ECB3: ConcatStr
  loc_A8ECB4: FStStrNoPop var_A8
  loc_A8ECB7: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8ECBA: ConcatStr
  loc_A8ECBB: FStStrNoPop var_AC
  loc_A8ECBE: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A8ECC1: ConcatStr
  loc_A8ECC2: FStStrNoPop var_B0
  loc_A8ECC5: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A8ECC8: ConcatStr
  loc_A8ECC9: FStStrNoPop var_B4
  loc_A8ECCC: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_A8ECCF: ConcatStr
  loc_A8ECD0: FStStrNoPop var_B8
  loc_A8ECD3: Call EjecutarRsCls(from_stack_1v)
  loc_A8ECD8: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8ECF3: Branch loc_A8EDF1
  loc_A8ECF6: FLdI2 PeriInfo
  loc_A8ECF9: LitI2 2023
  loc_A8ECFC: EqI2
  loc_A8ECFD: BranchF loc_A8ED7A
  loc_A8ED00: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, CodiTicu, CodiTias, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH)"
  loc_A8ED03: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_A8ED06: ConcatStr
  loc_A8ED07: FStStrNoPop var_8C
  loc_A8ED0A: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0),0) SaldIniD"
  loc_A8ED0D: ConcatStr
  loc_A8ED0E: FStStrNoPop var_90
  loc_A8ED11: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0),0) SaldIniH"
  loc_A8ED14: ConcatStr
  loc_A8ED15: FStStrNoPop var_94
  loc_A8ED18: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_A8ED1B: ConcatStr
  loc_A8ED1C: FStStrNoPop var_98
  loc_A8ED1F: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_A8ED22: ConcatStr
  loc_A8ED23: FStStrNoPop var_9C
  loc_A8ED26: LitStr " FROM asiento"
  loc_A8ED29: ConcatStr
  loc_A8ED2A: FStStrNoPop var_A0
  loc_A8ED2D: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_A8ED30: ConcatStr
  loc_A8ED31: FStStrNoPop var_A4
  loc_A8ED34: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A8ED37: ConcatStr
  loc_A8ED38: FStStrNoPop var_A8
  loc_A8ED3B: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8ED3E: ConcatStr
  loc_A8ED3F: FStStrNoPop var_AC
  loc_A8ED42: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A8ED45: ConcatStr
  loc_A8ED46: FStStrNoPop var_B0
  loc_A8ED49: LitStr " AND CodiTias NOT IN (16,25,27)"
  loc_A8ED4C: ConcatStr
  loc_A8ED4D: FStStrNoPop var_B4
  loc_A8ED50: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_A8ED53: ConcatStr
  loc_A8ED54: FStStrNoPop var_B8
  loc_A8ED57: Call EjecutarRsCls(from_stack_1v)
  loc_A8ED5C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8ED77: Branch loc_A8EDF1
  loc_A8ED7A: LitStr "INSERT INTO tmovi (PeriInfo, CodiCuco, CodiTicu, CodiTias, SaldIniD, SaldIniH, MoviEjeD, MoviEjeH)"
  loc_A8ED7D: LitStr " SELECT asiento.PeriInfo, mv.CodiCuco, CodiTicu, CodiTias"
  loc_A8ED80: ConcatStr
  loc_A8ED81: FStStrNoPop var_8C
  loc_A8ED84: LitStr ", IF(CodiTias IN (17,18),IF(Sum(DebeMoas-HabeMoas)>0,Sum(DebeMoas-HabeMoas),0),0) SaldIniD"
  loc_A8ED87: ConcatStr
  loc_A8ED88: FStStrNoPop var_90
  loc_A8ED8B: LitStr ", IF(CodiTias IN (17,18),IF(Sum(HabeMoas-DebeMoas)>0,Sum(HabeMoas-DebeMoas),0),0) SaldIniH"
  loc_A8ED8E: ConcatStr
  loc_A8ED8F: FStStrNoPop var_94
  loc_A8ED92: LitStr ", Sum(If(CodiTias NOT IN (17,18),DebeMoas,0)) MoviEjeD"
  loc_A8ED95: ConcatStr
  loc_A8ED96: FStStrNoPop var_98
  loc_A8ED99: LitStr ", Sum(If(CodiTias NOT IN (17,18),HabeMoas,0)) MoviEjeH"
  loc_A8ED9C: ConcatStr
  loc_A8ED9D: FStStrNoPop var_9C
  loc_A8EDA0: LitStr " FROM asiento"
  loc_A8EDA3: ConcatStr
  loc_A8EDA4: FStStrNoPop var_A0
  loc_A8EDA7: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_A8EDAA: ConcatStr
  loc_A8EDAB: FStStrNoPop var_A4
  loc_A8EDAE: LitStr " INNER JOIN moviasiento mv on mv.PeriInfo = asiento.PeriInfo AND mv.CodiAsie = asiento.CodiAsie"
  loc_A8EDB1: ConcatStr
  loc_A8EDB2: FStStrNoPop var_A8
  loc_A8EDB5: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = mv.PeriInfo AND cc.CodiCuco = mv.CodiCuco"
  loc_A8EDB8: ConcatStr
  loc_A8EDB9: FStStrNoPop var_AC
  loc_A8EDBC: LitStr " WHERE asiento.PeriInfo = @periinfo"
  loc_A8EDBF: ConcatStr
  loc_A8EDC0: FStStrNoPop var_B0
  loc_A8EDC3: LitStr " AND CodiTias NOT IN (16,25,27,28)"
  loc_A8EDC6: ConcatStr
  loc_A8EDC7: FStStrNoPop var_B4
  loc_A8EDCA: LitStr " GROUP BY CodiCuco, CodiTias;"
  loc_A8EDCD: ConcatStr
  loc_A8EDCE: FStStrNoPop var_B8
  loc_A8EDD1: Call EjecutarRsCls(from_stack_1v)
  loc_A8EDD6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A8EDF1: Branch loc_A8EE02
  loc_A8EDF4: LitI4 0
  loc_A8EDF9: LitStr "Consulte con InfoGov..."
  loc_A8EDFC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8EE01: ExitProcHresult
  loc_A8EE02: ExitProcHresult
End Sub

Public Function AyudaPantalla(NombrePantalla) '9DC8D8
  'Data Table: 42DE78
  loc_9DC7E4: ILdRf NombrePantalla
  loc_9DC7E7: FStStrCopy var_8C
  loc_9DC7EA: ZeroRetVal
  loc_9DC7EC: LitStr "SELECT AyudaMenu FROM infogov.menu WHERE DetaMenu = '"
  loc_9DC7EF: LitI4 0
  loc_9DC7F4: LitI4 -1
  loc_9DC7F9: LitI4 1
  loc_9DC7FE: LitStr vbNullString
  loc_9DC801: LitStr "frm"
  loc_9DC804: ILdRf var_8C
  loc_9DC807: ImpAdCallI2 Replace(, , , , , )
  loc_9DC80C: FStStrNoPop var_90
  loc_9DC80F: ConcatStr
  loc_9DC810: FStStrNoPop AyudaPantalla
  loc_9DC813: LitStr "';"
  loc_9DC816: ConcatStr
  loc_9DC817: FStStrNoPop var_98
  loc_9DC81A: Call EjecutarRsCls(from_stack_1v)
  loc_9DC81F: FFreeStr var_90 = "": AyudaPantalla = ""
  loc_9DC828: FLdRfVar var_9C
  loc_9DC82B: FLdPr Me
  loc_9DC82E: MemLdPr global_56
  loc_9DC831:  = Me.RecordCount
  loc_9DC836: ILdRf var_9C
  loc_9DC839: LitI4 0
  loc_9DC83E: GtI4
  loc_9DC83F: BranchF loc_9DC8CC
  loc_9DC842: FLdRfVar var_C4
  loc_9DC845: FLdRfVar var_B4
  loc_9DC848: LitVarStr var_B0, "AyudaMenu"
  loc_9DC84D: PopAdLdVar
  loc_9DC84E: FLdRfVar var_A0
  loc_9DC851: FLdPr Me
  loc_9DC854: MemLdPr global_56
  loc_9DC857:  = Me.Fields
  loc_9DC85C: FLdPr var_A0
  loc_9DC85F: from_stack_2 = Me.Item(from_stack_1)
  loc_9DC864: FLdPr var_B4
  loc_9DC867:  = Me.Value
  loc_9DC86C: FLdRfVar var_C4
  loc_9DC86F: LitVarStr var_D4, vbNullString
  loc_9DC874: HardType
  loc_9DC875: EqVarBool
  loc_9DC877: FFreeAd var_A0 = ""
  loc_9DC87E: FFree1Var var_C4 = ""
  loc_9DC881: BranchF loc_9DC88D
  loc_9DC884: LitStr "Opcion no disponible en esta pantalla."
  loc_9DC887: FStStrCopy var_88
  loc_9DC88A: Branch loc_9DC8C9
  loc_9DC88D: FLdRfVar var_C4
  loc_9DC890: FLdRfVar var_B4
  loc_9DC893: LitVarStr var_B0, "AyudaMenu"
  loc_9DC898: PopAdLdVar
  loc_9DC899: FLdRfVar var_A0
  loc_9DC89C: FLdPr Me
  loc_9DC89F: MemLdPr global_56
  loc_9DC8A2:  = Me.Fields
  loc_9DC8A7: FLdPr var_A0
  loc_9DC8AA: from_stack_2 = Me.Item(from_stack_1)
  loc_9DC8AF: FLdPr var_B4
  loc_9DC8B2:  = Me.Value
  loc_9DC8B7: FLdRfVar var_C4
  loc_9DC8BA: FnCStrVar
  loc_9DC8BC: FStStr var_88
  loc_9DC8BF: FFreeAd var_A0 = ""
  loc_9DC8C6: FFree1Var var_C4 = ""
  loc_9DC8C9: Branch loc_9DC8D2
  loc_9DC8CC: LitStr "Consulte con el Administrador."
  loc_9DC8CF: FStStrCopy var_88
  loc_9DC8D2: ExitProcCbHresult
End Function

Private Function Proc_4_26_971E4C() '971E4C
  'Data Table: 42DE78
  loc_971E28: LitStr "Primary"
  loc_971E2B: FLdPr Me
  loc_971E2E: LateIdLdVar var_94 DispID_4 0
  loc_971E35: CastAdVar Me
  loc_971E39: FStAdFunc var_98
  loc_971E3C: FLdPr var_98
  loc_971E44: FFree1Ad var_98
  loc_971E47: FFree1Var var_94 = ""
  loc_971E4A: ExitProcHresult
  loc_971E4B: ConcatStr
End Function

Private Function Proc_4_27_952D2C(arg_C) '952D2C
  'Data Table: 42DE78
  loc_952D14: ILdI4 arg_C
  loc_952D17: LitStr "Primary"
  loc_952D1A: EqStr
  loc_952D1C: BranchF loc_952D29
  loc_952D1F: FLdPr Me
  loc_952D22: MemLdStr RsFrm
  loc_952D25: IStAd
  loc_952D29: ExitProcHresult
  loc_952D2A: GeI2
End Function
