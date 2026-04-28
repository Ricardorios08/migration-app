VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscTipoAsiento
  Caption = "Buscar Tipo de Asiento por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscTipoAsiento.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10965
  ClientHeight = 5910
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscTipoAsiento.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 10695
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscTipoAsiento.frx":092A
  End
End

Attribute VB_Name = "bscTipoAsiento"

Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9CFE08
  'Data Table: 418010
  loc_9CFD1C: LitVarStr var_94, vbNullString
  loc_9CFD21: PopAdLdVar
  loc_9CFD22: FLdPr Me
  loc_9CFD25: VCallAd Control_ID_FiltroMsk
  loc_9CFD28: FStAdFunc var_A8
  loc_9CFD2B: FLdPr var_A8
  loc_9CFD2E: LateIdSt
  loc_9CFD33: FFree1Ad var_A8
  loc_9CFD36: FLdRfVar var_AA
  loc_9CFD39: FLdPr Me
  loc_9CFD3C: VCallAd Control_ID_FiltroCbo
  loc_9CFD3F: FStAdFunc var_A8
  loc_9CFD42: FLdPr var_A8
  loc_9CFD45:  = Me.ListIndex
  loc_9CFD4A: FLdI2 var_AA
  loc_9CFD4D: FStI2 var_AC
  loc_9CFD50: FFree1Ad var_A8
  loc_9CFD53: FLdI2 var_AC
  loc_9CFD56: LitI2_Byte 0
  loc_9CFD58: EqI2
  loc_9CFD59: BranchF loc_9CFD93
  loc_9CFD5C: LitVarStr var_94, "##"
  loc_9CFD61: PopAdLdVar
  loc_9CFD62: FLdPr Me
  loc_9CFD65: VCallAd Control_ID_FiltroMsk
  loc_9CFD68: FStAdFunc var_A8
  loc_9CFD6B: FLdPr var_A8
  loc_9CFD6E: LateIdSt
  loc_9CFD73: FFree1Ad var_A8
  loc_9CFD76: LitStr "CodiTias"
  loc_9CFD79: FStStrCopy var_B0
  loc_9CFD7C: FLdRfVar var_B0
  loc_9CFD7F: FLdPr Me
  loc_9CFD82: MemLdRfVar from_stack_1.BuscarCLS
  loc_9CFD85: NewIfNullPr clsbase
  loc_9CFD88: Call clsbase.Sort(from_stack_1v)
  loc_9CFD8D: FFree1Str var_B0
  loc_9CFD90: Branch loc_9CFE07
  loc_9CFD93: FLdI2 var_AC
  loc_9CFD96: LitI2_Byte 1
  loc_9CFD98: EqI2
  loc_9CFD99: BranchF loc_9CFDD3
  loc_9CFD9C: LitVarStr var_94, vbNullString
  loc_9CFDA1: PopAdLdVar
  loc_9CFDA2: FLdPr Me
  loc_9CFDA5: VCallAd Control_ID_FiltroMsk
  loc_9CFDA8: FStAdFunc var_A8
  loc_9CFDAB: FLdPr var_A8
  loc_9CFDAE: LateIdSt
  loc_9CFDB3: FFree1Ad var_A8
  loc_9CFDB6: LitStr "DetaTias"
  loc_9CFDB9: FStStrCopy var_B0
  loc_9CFDBC: FLdRfVar var_B0
  loc_9CFDBF: FLdPr Me
  loc_9CFDC2: MemLdRfVar from_stack_1.BuscarCLS
  loc_9CFDC5: NewIfNullPr clsbase
  loc_9CFDC8: Call clsbase.Sort(from_stack_1v)
  loc_9CFDCD: FFree1Str var_B0
  loc_9CFDD0: Branch loc_9CFE07
  loc_9CFDD3: LitVarStr var_94, vbNullString
  loc_9CFDD8: PopAdLdVar
  loc_9CFDD9: FLdPr Me
  loc_9CFDDC: VCallAd Control_ID_FiltroMsk
  loc_9CFDDF: FStAdFunc var_A8
  loc_9CFDE2: FLdPr var_A8
  loc_9CFDE5: LateIdSt
  loc_9CFDEA: FFree1Ad var_A8
  loc_9CFDED: LitStr "CodiTias"
  loc_9CFDF0: FStStrCopy var_B0
  loc_9CFDF3: FLdRfVar var_B0
  loc_9CFDF6: FLdPr Me
  loc_9CFDF9: MemLdRfVar from_stack_1.BuscarCLS
  loc_9CFDFC: NewIfNullPr clsbase
  loc_9CFDFF: Call clsbase.Sort(from_stack_1v)
  loc_9CFE04: FFree1Str var_B0
  loc_9CFE07: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94D370
  'Data Table: 418010
  loc_94D35C: FLdPr Me
  loc_94D35F: VCallAd Control_ID_FiltroMsk
  loc_94D362: CVarAd
  loc_94D366: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D36B: FFree1Var var_94 = ""
  loc_94D36E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4DAB8
  'Data Table: 418010
  loc_A4D81C: ILdRf Me
  loc_A4D81F: CastAd
  loc_A4D822: FStAdFunc var_88
  loc_A4D825: FLdRfVar var_88
  loc_A4D828: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4D82D: FFree1Ad var_88
  loc_A4D830: FLdPr Me
  loc_A4D833: VCallAd Control_ID_FiltroMsk
  loc_A4D836: FStAdFunc var_88
  loc_A4D839: FLdPr var_88
  loc_A4D83C: LateIdLdVar var_98 DispID_22 0
  loc_A4D843: CStrVarTmp
  loc_A4D844: FStStrNoPop var_9C
  loc_A4D847: ImpAdCallI2 Trim$()
  loc_A4D84C: FStStrNoPop var_A0
  loc_A4D84F: LitStr vbNullString
  loc_A4D852: NeStr
  loc_A4D854: FFreeStr var_9C = ""
  loc_A4D85B: FFree1Ad var_88
  loc_A4D85E: FFree1Var var_98 = ""
  loc_A4D861: BranchF loc_A4D994
  loc_A4D864: FLdRfVar var_A2
  loc_A4D867: FLdPr Me
  loc_A4D86A: VCallAd Control_ID_FiltroCbo
  loc_A4D86D: FStAdFunc var_88
  loc_A4D870: FLdPr var_88
  loc_A4D873:  = Me.ListIndex
  loc_A4D878: FLdI2 var_A2
  loc_A4D87B: LitI2_Byte 0
  loc_A4D87D: EqI2
  loc_A4D87E: FFree1Ad var_88
  loc_A4D881: BranchF loc_A4D8F3
  loc_A4D884: LitStr "CodiTias = "
  loc_A4D887: FLdPr Me
  loc_A4D88A: VCallAd Control_ID_FiltroMsk
  loc_A4D88D: FStAdFunc var_88
  loc_A4D890: FLdPr var_88
  loc_A4D893: LateIdLdVar var_98 DispID_22 0
  loc_A4D89A: CStrVarTmp
  loc_A4D89B: FStStrNoPop var_9C
  loc_A4D89E: ConcatStr
  loc_A4D89F: PopTmpLdAdStr
  loc_A4D8A3: FLdPr Me
  loc_A4D8A6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D8A9: NewIfNullPr clsbase
  loc_A4D8AC: Call clsbase.Filter(from_stack_1v)
  loc_A4D8B1: FFreeStr var_9C = ""
  loc_A4D8B8: FFree1Ad var_88
  loc_A4D8BB: FFree1Var var_98 = ""
  loc_A4D8BE: LitStr "código sea igual a "
  loc_A4D8C1: FLdPr Me
  loc_A4D8C4: VCallAd Control_ID_FiltroMsk
  loc_A4D8C7: FStAdFunc var_88
  loc_A4D8CA: FLdPr var_88
  loc_A4D8CD: LateIdLdVar var_98 DispID_22 0
  loc_A4D8D4: CStrVarTmp
  loc_A4D8D5: FStStrNoPop var_9C
  loc_A4D8D8: ConcatStr
  loc_A4D8D9: FStStrNoPop var_A0
  loc_A4D8DC: FLdPr Me
  loc_A4D8DF: MemStStrCopy
  loc_A4D8E3: FFreeStr var_9C = ""
  loc_A4D8EA: FFree1Ad var_88
  loc_A4D8ED: FFree1Var var_98 = ""
  loc_A4D8F0: Branch loc_A4D991
  loc_A4D8F3: FLdRfVar var_A2
  loc_A4D8F6: FLdPr Me
  loc_A4D8F9: VCallAd Control_ID_FiltroCbo
  loc_A4D8FC: FStAdFunc var_88
  loc_A4D8FF: FLdPr var_88
  loc_A4D902:  = Me.ListIndex
  loc_A4D907: FLdI2 var_A2
  loc_A4D90A: LitI2_Byte 1
  loc_A4D90C: EqI2
  loc_A4D90D: FFree1Ad var_88
  loc_A4D910: BranchF loc_A4D991
  loc_A4D913: LitStr "DetaTias LIKE '" & Chr(37)
  loc_A4D916: FLdPr Me
  loc_A4D919: VCallAd Control_ID_FiltroMsk
  loc_A4D91C: FStAdFunc var_88
  loc_A4D91F: FLdPr var_88
  loc_A4D922: LateIdLdVar var_98 DispID_22 0
  loc_A4D929: CStrVarTmp
  loc_A4D92A: FStStrNoPop var_9C
  loc_A4D92D: ConcatStr
  loc_A4D92E: FStStrNoPop var_A0
  loc_A4D931: LitStr Chr(37) & "'"
  loc_A4D934: ConcatStr
  loc_A4D935: PopTmpLdAdStr
  loc_A4D939: FLdPr Me
  loc_A4D93C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D93F: NewIfNullPr clsbase
  loc_A4D942: Call clsbase.Filter(from_stack_1v)
  loc_A4D947: FFreeStr var_9C = "": var_A0 = ""
  loc_A4D950: FFree1Ad var_88
  loc_A4D953: FFree1Var var_98 = ""
  loc_A4D956: LitStr "detalle que contiene "
  loc_A4D959: FLdPr Me
  loc_A4D95C: VCallAd Control_ID_FiltroMsk
  loc_A4D95F: FStAdFunc var_88
  loc_A4D962: FLdPr var_88
  loc_A4D965: LateIdLdVar var_98 DispID_22 0
  loc_A4D96C: CStrVarTmp
  loc_A4D96D: FStStrNoPop var_9C
  loc_A4D970: ConcatStr
  loc_A4D971: FStStrNoPop var_A0
  loc_A4D974: LitStr vbNullString
  loc_A4D977: ConcatStr
  loc_A4D978: FStStrNoPop var_A8
  loc_A4D97B: FLdPr Me
  loc_A4D97E: MemStStrCopy
  loc_A4D982: FFreeStr var_9C = "": var_A0 = ""
  loc_A4D98B: FFree1Ad var_88
  loc_A4D98E: FFree1Var var_98 = ""
  loc_A4D991: Branch loc_A4D9B8
  loc_A4D994: LitStr vbNullString
  loc_A4D997: FStStrCopy var_9C
  loc_A4D99A: FLdRfVar var_9C
  loc_A4D99D: FLdPr Me
  loc_A4D9A0: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D9A3: NewIfNullPr clsbase
  loc_A4D9A6: Call clsbase.Filter(from_stack_1v)
  loc_A4D9AB: FFree1Str var_9C
  loc_A4D9AE: LitStr vbNullString
  loc_A4D9B1: FLdPr Me
  loc_A4D9B4: MemStStrCopy
  loc_A4D9B8: FLdRfVar var_AC
  loc_A4D9BB: FLdPr Me
  loc_A4D9BE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D9C1: NewIfNullPr clsbase
  loc_A4D9C4: from_stack_1 = clsbase.RecordCount
  loc_A4D9C9: ILdRf var_AC
  loc_A4D9CC: LitI4 0
  loc_A4D9D1: GtI4
  loc_A4D9D2: BranchF loc_A4DA70
  loc_A4D9D5: FLdPr Me
  loc_A4D9D8: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4D9DB: NewIfNullAd
  loc_A4D9DE: FStAd var_B0 
  loc_A4D9E2: FLdRfVar var_B0
  loc_A4D9E5: CVarRef
  loc_A4D9EA: ILdRf Me
  loc_A4D9ED: CastAd
  loc_A4D9F0: FStAdFunc var_88
  loc_A4D9F3: FLdRfVar var_88
  loc_A4D9F6: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4D9FB: ILdRf var_B0
  loc_A4D9FE: CastAd
  loc_A4DA01: FLdPr Me
  loc_A4DA04: MemStAdFunc
  loc_A4DA08: FFreeAd var_88 = ""
  loc_A4DA0F: LitI4 0
  loc_A4DA14: LitI4 1
  loc_A4DA19: FLdRfVar var_C4
  loc_A4DA1C: Redim
  loc_A4DA26: FLdPr Me
  loc_A4DA29: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DA2C: NewIfNullAd
  loc_A4DA2F: FStAd var_88 
  loc_A4DA33: FLdRfVar var_88
  loc_A4DA36: CVarRef
  loc_A4DA3B: ParmAry1St
  loc_A4DA41: FLdPr Me
  loc_A4DA44: VCallAd Control_ID_dgdABMS
  loc_A4DA47: CVarAd
  loc_A4DA4B: ParmAry1St
  loc_A4DA51: FLdRfVar var_C4
  loc_A4DA54: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4DA59: ILdRf var_88
  loc_A4DA5C: CastAd
  loc_A4DA5F: FLdPr Me
  loc_A4DA62: MemStAdFunc
  loc_A4DA66: FLdRfVar var_C4
  loc_A4DA69: Erase
  loc_A4DA6A: FFree1Ad var_88
  loc_A4DA6D: Branch loc_A4DA84
  loc_A4DA70: ILdRf Me
  loc_A4DA73: CastAd
  loc_A4DA76: FStAdFunc var_88
  loc_A4DA79: FLdRfVar var_88
  loc_A4DA7C: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4DA81: FFree1Ad var_88
  loc_A4DA84: FLdPr Me
  loc_A4DA87: VCallAd Control_ID_dgdABMS
  loc_A4DA8A: FStAdFunc var_B0
  loc_A4DA8D: LitI4 0
  loc_A4DA92: FStStrCopy var_9C
  loc_A4DA95: FLdRfVar var_9C
  loc_A4DA98: FLdPr Me
  loc_A4DA9B: MemLdStr sFiltro
  loc_A4DA9E: FLdZeroAd var_B0
  loc_A4DAA1: FStAdFunc var_88
  loc_A4DAA4: FLdRfVar var_88
  loc_A4DAA7: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4DAAC: FFree1Str var_9C
  loc_A4DAAF: FFreeAd var_88 = ""
  loc_A4DAB6: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997264
  'Data Table: 418010
  loc_997200: ILdI2 KeyAscii
  loc_997203: LitI2_Byte &H27
  loc_997205: EqI2
  loc_997206: BranchF loc_99720E
  loc_997209: LitI2_Byte 0
  loc_99720B: IStI2 KeyAscii
  loc_99720E: FLdRfVar var_88
  loc_997211: FLdPr Me
  loc_997214: MemLdRfVar from_stack_1.BuscarCLS
  loc_997217: NewIfNullPr clsbase
  loc_99721A: from_stack_1 = clsbase.RecordCount
  loc_99721F: ILdRf var_88
  loc_997222: LitI4 0
  loc_997227: EqI4
  loc_997228: ILdI2 KeyAscii
  loc_99722B: CI4UI1
  loc_99722C: LitI4 8
  loc_997231: NeI4
  loc_997232: AndI4
  loc_997233: FLdPr Me
  loc_997236: VCallAd Control_ID_FiltroMsk
  loc_997239: FStAdFunc var_8C
  loc_99723C: FLdPr var_8C
  loc_99723F: LateIdLdVar var_9C DispID_16 0
  loc_997246: CStrVarTmp
  loc_997247: FStStrNoPop var_A0
  loc_99724A: LitStr vbNullString
  loc_99724D: EqStr
  loc_99724F: AndI4
  loc_997250: FFree1Str var_A0
  loc_997253: FFree1Ad var_8C
  loc_997256: FFree1Var var_9C = ""
  loc_997259: BranchF loc_997261
  loc_99725C: LitI2_Byte 0
  loc_99725E: IStI2 KeyAscii
  loc_997261: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '966B0C
  'Data Table: 418010
  loc_966AF4: FLdPr Me
  loc_966AF7: VCallAd Control_ID_dgdABMS
  loc_966AFA: FStAdFunc var_88
  loc_966AFD: FLdRfVar var_88
  loc_966B00: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_966B05: FFree1Ad var_88
  loc_966B08: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '958B34
  'Data Table: 418010
  loc_958B1C: FLdPr Me
  loc_958B1F: VCallAd Control_ID_dgdABMS
  loc_958B22: FStAdFunc var_88
  loc_958B25: FLdRfVar var_88
  loc_958B28: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_958B2D: FFree1Ad var_88
  loc_958B30: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '958DE0
  'Data Table: 418010
  loc_958DC8: ILdRf Me
  loc_958DCB: FStAdNoPop
  loc_958DCF: ImpAdLdRf MemVar_C44F9C
  loc_958DD2: NewIfNullPr Me
  loc_958DD5: Me.Global.Unload from_stack_1
  loc_958DDA: FFree1Ad var_88
  loc_958DDD: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B7F4
  'Data Table: 418010
  loc_99B798: FLdRfVar var_B4
  loc_99B79B: FLdRfVar var_B0
  loc_99B79E: FLdI2 ColIndex
  loc_99B7A1: CVarI2 var_A8
  loc_99B7A4: PopAdLdVar
  loc_99B7A5: FLdPr Me
  loc_99B7A8: VCallAd Control_ID_dgdABMS
  loc_99B7AB: FStAdFunc var_88
  loc_99B7AE: FLdPr var_88
  loc_99B7B1: LateIdLdVar var_98 DispID_105 0
  loc_99B7B8: CastAdVar Me
  loc_99B7BC: FStAdFunc var_AC
  loc_99B7BF: FLdPr var_AC
  loc_99B7C2: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B7C7: FLdPr var_B0
  loc_99B7CA:  = Me.DataField
  loc_99B7CF: FLdZeroAd var_B4
  loc_99B7D2: PopTmpLdAdStr
  loc_99B7D6: FLdPr Me
  loc_99B7D9: MemLdRfVar from_stack_1.BuscarCLS
  loc_99B7DC: NewIfNullPr clsbase
  loc_99B7DF: Call clsbase.Sort(from_stack_1v)
  loc_99B7E4: FFree1Str var_B8
  loc_99B7E7: FFreeAd var_88 = "": var_AC = ""
  loc_99B7F0: FFree1Var var_98 = ""
  loc_99B7F3: ExitProcHresult
End Sub

Private Sub OKButton_Click() '958298
  'Data Table: 418010
  loc_958280: ILdRf Me
  loc_958283: FStAdNoPop
  loc_958287: ImpAdLdRf MemVar_C44F9C
  loc_95828A: NewIfNullPr Me
  loc_95828D: Me.Global.Unload from_stack_1
  loc_958292: FFree1Ad var_88
  loc_958295: ExitProcHresult
End Sub

Private Sub Form_Load() '9C0E0C
  'Data Table: 418010
  loc_9C0D4C: LitStr "SELECT * FROM tipoasiento WHERE FijoTias = 0 ORDER BY CodiTias"
  loc_9C0D4F: FLdPr Me
  loc_9C0D52: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C0D55: NewIfNullPr clsbase
  loc_9C0D58: Call clsbase.RedefineRS(from_stack_1v)
  loc_9C0D5D: LitVarI2 var_94, 0
  loc_9C0D62: PopAdLdVar
  loc_9C0D63: LitStr "Tipo de Asiento (Código)"
  loc_9C0D66: FLdPr Me
  loc_9C0D69: VCallAd Control_ID_FiltroCbo
  loc_9C0D6C: FStAdFunc var_98
  loc_9C0D6F: FLdPr var_98
  loc_9C0D72: Me.AddItem from_stack_1, from_stack_2
  loc_9C0D77: FFree1Ad var_98
  loc_9C0D7A: LitVarI2 var_94, 1
  loc_9C0D7F: PopAdLdVar
  loc_9C0D80: LitStr "Tipo de Asiento (Detalle)"
  loc_9C0D83: FLdPr Me
  loc_9C0D86: VCallAd Control_ID_FiltroCbo
  loc_9C0D89: FStAdFunc var_98
  loc_9C0D8C: FLdPr var_98
  loc_9C0D8F: Me.AddItem from_stack_1, from_stack_2
  loc_9C0D94: FFree1Ad var_98
  loc_9C0D97: LitI2_Byte 1
  loc_9C0D99: FLdPr Me
  loc_9C0D9C: VCallAd Control_ID_FiltroCbo
  loc_9C0D9F: FStAdFunc var_98
  loc_9C0DA2: FLdPr var_98
  loc_9C0DA5: Me.ListIndex = from_stack_1
  loc_9C0DAA: FFree1Ad var_98
  loc_9C0DAD: LitI4 0
  loc_9C0DB2: LitI4 1
  loc_9C0DB7: FLdRfVar var_9C
  loc_9C0DBA: Redim
  loc_9C0DC4: FLdPr Me
  loc_9C0DC7: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C0DCA: NewIfNullAd
  loc_9C0DCD: FStAd var_98 
  loc_9C0DD1: FLdRfVar var_98
  loc_9C0DD4: CVarRef
  loc_9C0DD9: ParmAry1St
  loc_9C0DDF: FLdPr Me
  loc_9C0DE2: VCallAd Control_ID_dgdABMS
  loc_9C0DE5: CVarAd
  loc_9C0DE9: ParmAry1St
  loc_9C0DEF: FLdRfVar var_9C
  loc_9C0DF2: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9C0DF7: ILdRf var_98
  loc_9C0DFA: CastAd
  loc_9C0DFD: FLdPr Me
  loc_9C0E00: MemStAdFunc
  loc_9C0E04: FLdRfVar var_9C
  loc_9C0E07: Erase
  loc_9C0E08: FFree1Ad var_98
  loc_9C0E0B: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9584AC
  'Data Table: 418010
  loc_958494: ILdRf Me
  loc_958497: FStAdNoPop
  loc_95849B: ImpAdLdRf MemVar_C44F9C
  loc_95849E: NewIfNullPr Me
  loc_9584A1: Me.Global.Unload from_stack_1
  loc_9584A6: FFree1Ad var_88
  loc_9584A9: ExitProcHresult
End Sub

Private Sub Form_Activate() '9510C0
  'Data Table: 418010
  loc_9510AC: FLdPr Me
  loc_9510AF: VCallAd Control_ID_FiltroMsk
  loc_9510B2: CVarAd
  loc_9510B6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9510BB: FFree1Var var_94 = ""
  loc_9510BE: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94966C
  'Data Table: 418010
  loc_949658: ILdI2 KeyAscii
  loc_94965B: CI4UI1
  loc_94965C: LitI4 &HD
  loc_949661: EqI4
  loc_949662: BranchF loc_94966A
  loc_949665: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94966A: ExitProcHresult
End Sub

Public Function global_4292624Get() '4184C0
  global_4292624Get = global_4292624
End Function

Public Sub global_4292624Put(Value) '4184DA
  global_4292624 = Value
End Sub

Public Sub global_4292624Set(Value) '4184F4
  global_4292624 = Value
End Sub

Public Function sFiltroGet() '41850E
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41851D
  sFiltro = Value
End Sub
