VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscTipoMoviBanco
  Caption = "Buscar Tipo de Movimiento Bancario por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscTipoMoviBanco.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
  ClientHeight = 5895
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
      OleObjectBlob = "bscTipoMoviBanco.frx":08CA
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
    OleObjectBlob = "bscTipoMoviBanco.frx":092A
  End
End

Attribute VB_Name = "bscTipoMoviBanco"

Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9E3954
  'Data Table: 419A80
  loc_9E3834: LitVarStr var_94, vbNullString
  loc_9E3839: PopAdLdVar
  loc_9E383A: FLdPr Me
  loc_9E383D: VCallAd Control_ID_FiltroMsk
  loc_9E3840: FStAdFunc var_A8
  loc_9E3843: FLdPr var_A8
  loc_9E3846: LateIdSt
  loc_9E384B: FFree1Ad var_A8
  loc_9E384E: FLdRfVar var_AA
  loc_9E3851: FLdPr Me
  loc_9E3854: VCallAd Control_ID_FiltroCbo
  loc_9E3857: FStAdFunc var_A8
  loc_9E385A: FLdPr var_A8
  loc_9E385D:  = Me.ListIndex
  loc_9E3862: FLdI2 var_AA
  loc_9E3865: FStI2 var_AC
  loc_9E3868: FFree1Ad var_A8
  loc_9E386B: FLdI2 var_AC
  loc_9E386E: LitI2_Byte 0
  loc_9E3870: EqI2
  loc_9E3871: BranchF loc_9E38AB
  loc_9E3874: LitVarStr var_94, "##"
  loc_9E3879: PopAdLdVar
  loc_9E387A: FLdPr Me
  loc_9E387D: VCallAd Control_ID_FiltroMsk
  loc_9E3880: FStAdFunc var_A8
  loc_9E3883: FLdPr var_A8
  loc_9E3886: LateIdSt
  loc_9E388B: FFree1Ad var_A8
  loc_9E388E: LitStr "CodiTimb"
  loc_9E3891: FStStrCopy var_B0
  loc_9E3894: FLdRfVar var_B0
  loc_9E3897: FLdPr Me
  loc_9E389A: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E389D: NewIfNullPr clsbase
  loc_9E38A0: Call clsbase.Sort(from_stack_1v)
  loc_9E38A5: FFree1Str var_B0
  loc_9E38A8: Branch loc_9E3953
  loc_9E38AB: FLdI2 var_AC
  loc_9E38AE: LitI2_Byte 1
  loc_9E38B0: EqI2
  loc_9E38B1: BranchF loc_9E3905
  loc_9E38B4: LitVarStr var_94, "&"
  loc_9E38B9: PopAdLdVar
  loc_9E38BA: FLdPr Me
  loc_9E38BD: VCallAd Control_ID_FiltroMsk
  loc_9E38C0: FStAdFunc var_A8
  loc_9E38C3: FLdPr var_A8
  loc_9E38C6: LateIdSt
  loc_9E38CB: FFree1Ad var_A8
  loc_9E38CE: LitVarStr var_94, vbNullString
  loc_9E38D3: PopAdLdVar
  loc_9E38D4: FLdPr Me
  loc_9E38D7: VCallAd Control_ID_FiltroMsk
  loc_9E38DA: FStAdFunc var_A8
  loc_9E38DD: FLdPr var_A8
  loc_9E38E0: LateIdSt
  loc_9E38E5: FFree1Ad var_A8
  loc_9E38E8: LitStr "DetaTimb"
  loc_9E38EB: FStStrCopy var_B0
  loc_9E38EE: FLdRfVar var_B0
  loc_9E38F1: FLdPr Me
  loc_9E38F4: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E38F7: NewIfNullPr clsbase
  loc_9E38FA: Call clsbase.Sort(from_stack_1v)
  loc_9E38FF: FFree1Str var_B0
  loc_9E3902: Branch loc_9E3953
  loc_9E3905: LitVarStr var_94, "&"
  loc_9E390A: PopAdLdVar
  loc_9E390B: FLdPr Me
  loc_9E390E: VCallAd Control_ID_FiltroMsk
  loc_9E3911: FStAdFunc var_A8
  loc_9E3914: FLdPr var_A8
  loc_9E3917: LateIdSt
  loc_9E391C: FFree1Ad var_A8
  loc_9E391F: LitVarStr var_94, vbNullString
  loc_9E3924: PopAdLdVar
  loc_9E3925: FLdPr Me
  loc_9E3928: VCallAd Control_ID_FiltroMsk
  loc_9E392B: FStAdFunc var_A8
  loc_9E392E: FLdPr var_A8
  loc_9E3931: LateIdSt
  loc_9E3936: FFree1Ad var_A8
  loc_9E3939: LitStr "CodiTimb"
  loc_9E393C: FStStrCopy var_B0
  loc_9E393F: FLdRfVar var_B0
  loc_9E3942: FLdPr Me
  loc_9E3945: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E3948: NewIfNullPr clsbase
  loc_9E394B: Call clsbase.Sort(from_stack_1v)
  loc_9E3950: FFree1Str var_B0
  loc_9E3953: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '952500
  'Data Table: 419A80
  loc_9524EC: FLdPr Me
  loc_9524EF: VCallAd Control_ID_FiltroMsk
  loc_9524F2: CVarAd
  loc_9524F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9524FB: FFree1Var var_94 = ""
  loc_9524FE: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4E678
  'Data Table: 419A80
  loc_A4E3DC: ILdRf Me
  loc_A4E3DF: CastAd
  loc_A4E3E2: FStAdFunc var_88
  loc_A4E3E5: FLdRfVar var_88
  loc_A4E3E8: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4E3ED: FFree1Ad var_88
  loc_A4E3F0: FLdPr Me
  loc_A4E3F3: VCallAd Control_ID_FiltroMsk
  loc_A4E3F6: FStAdFunc var_88
  loc_A4E3F9: FLdPr var_88
  loc_A4E3FC: LateIdLdVar var_98 DispID_22 0
  loc_A4E403: CStrVarTmp
  loc_A4E404: FStStrNoPop var_9C
  loc_A4E407: ImpAdCallI2 Trim$()
  loc_A4E40C: FStStrNoPop var_A0
  loc_A4E40F: LitStr vbNullString
  loc_A4E412: NeStr
  loc_A4E414: FFreeStr var_9C = ""
  loc_A4E41B: FFree1Ad var_88
  loc_A4E41E: FFree1Var var_98 = ""
  loc_A4E421: BranchF loc_A4E554
  loc_A4E424: FLdRfVar var_A2
  loc_A4E427: FLdPr Me
  loc_A4E42A: VCallAd Control_ID_FiltroCbo
  loc_A4E42D: FStAdFunc var_88
  loc_A4E430: FLdPr var_88
  loc_A4E433:  = Me.ListIndex
  loc_A4E438: FLdI2 var_A2
  loc_A4E43B: LitI2_Byte 0
  loc_A4E43D: EqI2
  loc_A4E43E: FFree1Ad var_88
  loc_A4E441: BranchF loc_A4E4B3
  loc_A4E444: LitStr "CodiTimb = "
  loc_A4E447: FLdPr Me
  loc_A4E44A: VCallAd Control_ID_FiltroMsk
  loc_A4E44D: FStAdFunc var_88
  loc_A4E450: FLdPr var_88
  loc_A4E453: LateIdLdVar var_98 DispID_22 0
  loc_A4E45A: CStrVarTmp
  loc_A4E45B: FStStrNoPop var_9C
  loc_A4E45E: ConcatStr
  loc_A4E45F: PopTmpLdAdStr
  loc_A4E463: FLdPr Me
  loc_A4E466: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E469: NewIfNullPr clsbase
  loc_A4E46C: Call clsbase.Filter(from_stack_1v)
  loc_A4E471: FFreeStr var_9C = ""
  loc_A4E478: FFree1Ad var_88
  loc_A4E47B: FFree1Var var_98 = ""
  loc_A4E47E: LitStr "código sea igual a "
  loc_A4E481: FLdPr Me
  loc_A4E484: VCallAd Control_ID_FiltroMsk
  loc_A4E487: FStAdFunc var_88
  loc_A4E48A: FLdPr var_88
  loc_A4E48D: LateIdLdVar var_98 DispID_22 0
  loc_A4E494: CStrVarTmp
  loc_A4E495: FStStrNoPop var_9C
  loc_A4E498: ConcatStr
  loc_A4E499: FStStrNoPop var_A0
  loc_A4E49C: FLdPr Me
  loc_A4E49F: MemStStrCopy
  loc_A4E4A3: FFreeStr var_9C = ""
  loc_A4E4AA: FFree1Ad var_88
  loc_A4E4AD: FFree1Var var_98 = ""
  loc_A4E4B0: Branch loc_A4E551
  loc_A4E4B3: FLdRfVar var_A2
  loc_A4E4B6: FLdPr Me
  loc_A4E4B9: VCallAd Control_ID_FiltroCbo
  loc_A4E4BC: FStAdFunc var_88
  loc_A4E4BF: FLdPr var_88
  loc_A4E4C2:  = Me.ListIndex
  loc_A4E4C7: FLdI2 var_A2
  loc_A4E4CA: LitI2_Byte 1
  loc_A4E4CC: EqI2
  loc_A4E4CD: FFree1Ad var_88
  loc_A4E4D0: BranchF loc_A4E551
  loc_A4E4D3: LitStr "DetaTimb LIKE '" & Chr(37)
  loc_A4E4D6: FLdPr Me
  loc_A4E4D9: VCallAd Control_ID_FiltroMsk
  loc_A4E4DC: FStAdFunc var_88
  loc_A4E4DF: FLdPr var_88
  loc_A4E4E2: LateIdLdVar var_98 DispID_22 0
  loc_A4E4E9: CStrVarTmp
  loc_A4E4EA: FStStrNoPop var_9C
  loc_A4E4ED: ConcatStr
  loc_A4E4EE: FStStrNoPop var_A0
  loc_A4E4F1: LitStr Chr(37) & "'"
  loc_A4E4F4: ConcatStr
  loc_A4E4F5: PopTmpLdAdStr
  loc_A4E4F9: FLdPr Me
  loc_A4E4FC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E4FF: NewIfNullPr clsbase
  loc_A4E502: Call clsbase.Filter(from_stack_1v)
  loc_A4E507: FFreeStr var_9C = "": var_A0 = ""
  loc_A4E510: FFree1Ad var_88
  loc_A4E513: FFree1Var var_98 = ""
  loc_A4E516: LitStr "detalle que contiene "
  loc_A4E519: FLdPr Me
  loc_A4E51C: VCallAd Control_ID_FiltroMsk
  loc_A4E51F: FStAdFunc var_88
  loc_A4E522: FLdPr var_88
  loc_A4E525: LateIdLdVar var_98 DispID_22 0
  loc_A4E52C: CStrVarTmp
  loc_A4E52D: FStStrNoPop var_9C
  loc_A4E530: ConcatStr
  loc_A4E531: FStStrNoPop var_A0
  loc_A4E534: LitStr vbNullString
  loc_A4E537: ConcatStr
  loc_A4E538: FStStrNoPop var_A8
  loc_A4E53B: FLdPr Me
  loc_A4E53E: MemStStrCopy
  loc_A4E542: FFreeStr var_9C = "": var_A0 = ""
  loc_A4E54B: FFree1Ad var_88
  loc_A4E54E: FFree1Var var_98 = ""
  loc_A4E551: Branch loc_A4E578
  loc_A4E554: LitStr vbNullString
  loc_A4E557: FStStrCopy var_9C
  loc_A4E55A: FLdRfVar var_9C
  loc_A4E55D: FLdPr Me
  loc_A4E560: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E563: NewIfNullPr clsbase
  loc_A4E566: Call clsbase.Filter(from_stack_1v)
  loc_A4E56B: FFree1Str var_9C
  loc_A4E56E: LitStr vbNullString
  loc_A4E571: FLdPr Me
  loc_A4E574: MemStStrCopy
  loc_A4E578: FLdRfVar var_AC
  loc_A4E57B: FLdPr Me
  loc_A4E57E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E581: NewIfNullPr clsbase
  loc_A4E584: from_stack_1 = clsbase.RecordCount
  loc_A4E589: ILdRf var_AC
  loc_A4E58C: LitI4 0
  loc_A4E591: GtI4
  loc_A4E592: BranchF loc_A4E630
  loc_A4E595: LitI4 0
  loc_A4E59A: LitI4 1
  loc_A4E59F: FLdRfVar var_B0
  loc_A4E5A2: Redim
  loc_A4E5AC: FLdPr Me
  loc_A4E5AF: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E5B2: NewIfNullAd
  loc_A4E5B5: FStAd var_88 
  loc_A4E5B9: FLdRfVar var_88
  loc_A4E5BC: CVarRef
  loc_A4E5C1: ParmAry1St
  loc_A4E5C7: FLdPr Me
  loc_A4E5CA: VCallAd Control_ID_dgdABMS
  loc_A4E5CD: CVarAd
  loc_A4E5D1: ParmAry1St
  loc_A4E5D7: FLdRfVar var_B0
  loc_A4E5DA: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4E5DF: ILdRf var_88
  loc_A4E5E2: CastAd
  loc_A4E5E5: FLdPr Me
  loc_A4E5E8: MemStAdFunc
  loc_A4E5EC: FLdRfVar var_B0
  loc_A4E5EF: Erase
  loc_A4E5F0: FFree1Ad var_88
  loc_A4E5F3: FLdPr Me
  loc_A4E5F6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E5F9: NewIfNullAd
  loc_A4E5FC: FStAd var_C4 
  loc_A4E600: FLdRfVar var_C4
  loc_A4E603: CVarRef
  loc_A4E608: ILdRf Me
  loc_A4E60B: CastAd
  loc_A4E60E: FStAdFunc var_88
  loc_A4E611: FLdRfVar var_88
  loc_A4E614: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4E619: ILdRf var_C4
  loc_A4E61C: CastAd
  loc_A4E61F: FLdPr Me
  loc_A4E622: MemStAdFunc
  loc_A4E626: FFreeAd var_88 = ""
  loc_A4E62D: Branch loc_A4E644
  loc_A4E630: ILdRf Me
  loc_A4E633: CastAd
  loc_A4E636: FStAdFunc var_88
  loc_A4E639: FLdRfVar var_88
  loc_A4E63C: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4E641: FFree1Ad var_88
  loc_A4E644: FLdPr Me
  loc_A4E647: VCallAd Control_ID_dgdABMS
  loc_A4E64A: FStAdFunc var_C4
  loc_A4E64D: LitI4 0
  loc_A4E652: FStStrCopy var_9C
  loc_A4E655: FLdRfVar var_9C
  loc_A4E658: FLdPr Me
  loc_A4E65B: MemLdStr sFiltro
  loc_A4E65E: FLdZeroAd var_C4
  loc_A4E661: FStAdFunc var_88
  loc_A4E664: FLdRfVar var_88
  loc_A4E667: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4E66C: FFree1Str var_9C
  loc_A4E66F: FFreeAd var_88 = ""
  loc_A4E676: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996CC4
  'Data Table: 419A80
  loc_996C60: ILdI2 KeyAscii
  loc_996C63: LitI2_Byte &H27
  loc_996C65: EqI2
  loc_996C66: BranchF loc_996C6E
  loc_996C69: LitI2_Byte 0
  loc_996C6B: IStI2 KeyAscii
  loc_996C6E: FLdRfVar var_88
  loc_996C71: FLdPr Me
  loc_996C74: MemLdRfVar from_stack_1.BuscarCLS
  loc_996C77: NewIfNullPr clsbase
  loc_996C7A: from_stack_1 = clsbase.RecordCount
  loc_996C7F: ILdRf var_88
  loc_996C82: LitI4 0
  loc_996C87: EqI4
  loc_996C88: ILdI2 KeyAscii
  loc_996C8B: CI4UI1
  loc_996C8C: LitI4 8
  loc_996C91: NeI4
  loc_996C92: AndI4
  loc_996C93: FLdPr Me
  loc_996C96: VCallAd Control_ID_FiltroMsk
  loc_996C99: FStAdFunc var_8C
  loc_996C9C: FLdPr var_8C
  loc_996C9F: LateIdLdVar var_9C DispID_16 0
  loc_996CA6: CStrVarTmp
  loc_996CA7: FStStrNoPop var_A0
  loc_996CAA: LitStr vbNullString
  loc_996CAD: EqStr
  loc_996CAF: AndI4
  loc_996CB0: FFree1Str var_A0
  loc_996CB3: FFree1Ad var_8C
  loc_996CB6: FFree1Var var_9C = ""
  loc_996CB9: BranchF loc_996CC1
  loc_996CBC: LitI2_Byte 0
  loc_996CBE: IStI2 KeyAscii
  loc_996CC1: ExitProcHresult
  loc_996CC2: StFixedStr
End Sub

Private Sub dgdABMS_UnknownEvent_0 '956404
  'Data Table: 419A80
  loc_9563EC: FLdPr Me
  loc_9563EF: VCallAd Control_ID_dgdABMS
  loc_9563F2: FStAdFunc var_88
  loc_9563F5: FLdRfVar var_88
  loc_9563F8: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9563FD: FFree1Ad var_88
  loc_956400: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '954278
  'Data Table: 419A80
  loc_954260: FLdPr Me
  loc_954263: VCallAd Control_ID_dgdABMS
  loc_954266: FStAdFunc var_88
  loc_954269: FLdRfVar var_88
  loc_95426C: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_954271: FFree1Ad var_88
  loc_954274: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '956534
  'Data Table: 419A80
  loc_95651C: ILdRf Me
  loc_95651F: FStAdNoPop
  loc_956523: ImpAdLdRf MemVar_C44F9C
  loc_956526: NewIfNullPr Me
  loc_956529: Me.Global.Unload from_stack_1
  loc_95652E: FFree1Ad var_88
  loc_956531: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999600
  'Data Table: 419A80
  loc_9995A4: FLdRfVar var_B4
  loc_9995A7: FLdRfVar var_B0
  loc_9995AA: FLdI2 ColIndex
  loc_9995AD: CVarI2 var_A8
  loc_9995B0: PopAdLdVar
  loc_9995B1: FLdPr Me
  loc_9995B4: VCallAd Control_ID_dgdABMS
  loc_9995B7: FStAdFunc var_88
  loc_9995BA: FLdPr var_88
  loc_9995BD: LateIdLdVar var_98 DispID_105 0
  loc_9995C4: CastAdVar Me
  loc_9995C8: FStAdFunc var_AC
  loc_9995CB: FLdPr var_AC
  loc_9995CE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_9995D3: FLdPr var_B0
  loc_9995D6:  = Me.DataField
  loc_9995DB: FLdZeroAd var_B4
  loc_9995DE: PopTmpLdAdStr
  loc_9995E2: FLdPr Me
  loc_9995E5: MemLdRfVar from_stack_1.BuscarCLS
  loc_9995E8: NewIfNullPr clsbase
  loc_9995EB: Call clsbase.Sort(from_stack_1v)
  loc_9995F0: FFree1Str var_B8
  loc_9995F3: FFreeAd var_88 = "": var_AC = ""
  loc_9995FC: FFree1Var var_98 = ""
  loc_9995FF: ExitProcHresult
End Sub

Private Sub OKButton_Click() '955B1C
  'Data Table: 419A80
  loc_955B04: ILdRf Me
  loc_955B07: FStAdNoPop
  loc_955B0B: ImpAdLdRf MemVar_C44F9C
  loc_955B0E: NewIfNullPr Me
  loc_955B11: Me.Global.Unload from_stack_1
  loc_955B16: FFree1Ad var_88
  loc_955B19: ExitProcHresult
End Sub

Private Sub Form_Load() '9D4E44
  'Data Table: 419A80
  loc_9D4D64: LitStr "SELECT CodiTimb, DetaTimb, IF(DeCreTimb=0,'Debito','Credito') TipoTimb"
  loc_9D4D67: LitStr " FROM tipomovibanco"
  loc_9D4D6A: ConcatStr
  loc_9D4D6B: FStStrNoPop var_88
  loc_9D4D6E: LitStr " WHERE CodiTimb >= 7"
  loc_9D4D71: ConcatStr
  loc_9D4D72: FStStrNoPop var_8C
  loc_9D4D75: LitStr " ORDER BY CodiTimb;"
  loc_9D4D78: ConcatStr
  loc_9D4D79: FStStrNoPop var_90
  loc_9D4D7C: FLdPr Me
  loc_9D4D7F: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D4D82: NewIfNullPr clsbase
  loc_9D4D85: Call clsbase.RedefineRS(from_stack_1v)
  loc_9D4D8A: FFreeStr var_88 = "": var_8C = ""
  loc_9D4D93: LitVarI2 var_A0, 0
  loc_9D4D98: PopAdLdVar
  loc_9D4D99: LitStr "Tipo de Movimiento Bancario (Código)"
  loc_9D4D9C: FLdPr Me
  loc_9D4D9F: VCallAd Control_ID_FiltroCbo
  loc_9D4DA2: FStAdFunc var_A4
  loc_9D4DA5: FLdPr var_A4
  loc_9D4DA8: Me.AddItem from_stack_1, from_stack_2
  loc_9D4DAD: FFree1Ad var_A4
  loc_9D4DB0: LitVarI2 var_A0, 1
  loc_9D4DB5: PopAdLdVar
  loc_9D4DB6: LitStr "Tipo de Movimiento Bancario (Detalle)"
  loc_9D4DB9: FLdPr Me
  loc_9D4DBC: VCallAd Control_ID_FiltroCbo
  loc_9D4DBF: FStAdFunc var_A4
  loc_9D4DC2: FLdPr var_A4
  loc_9D4DC5: Me.AddItem from_stack_1, from_stack_2
  loc_9D4DCA: FFree1Ad var_A4
  loc_9D4DCD: LitI2_Byte 1
  loc_9D4DCF: FLdPr Me
  loc_9D4DD2: VCallAd Control_ID_FiltroCbo
  loc_9D4DD5: FStAdFunc var_A4
  loc_9D4DD8: FLdPr var_A4
  loc_9D4DDB: Me.ListIndex = from_stack_1
  loc_9D4DE0: FFree1Ad var_A4
  loc_9D4DE3: LitI4 0
  loc_9D4DE8: LitI4 1
  loc_9D4DED: FLdRfVar var_A8
  loc_9D4DF0: Redim
  loc_9D4DFA: FLdPr Me
  loc_9D4DFD: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D4E00: NewIfNullAd
  loc_9D4E03: FStAd var_A4 
  loc_9D4E07: FLdRfVar var_A4
  loc_9D4E0A: CVarRef
  loc_9D4E0F: ParmAry1St
  loc_9D4E15: FLdPr Me
  loc_9D4E18: VCallAd Control_ID_dgdABMS
  loc_9D4E1B: CVarAd
  loc_9D4E1F: ParmAry1St
  loc_9D4E25: FLdRfVar var_A8
  loc_9D4E28: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9D4E2D: ILdRf var_A4
  loc_9D4E30: CastAd
  loc_9D4E33: FLdPr Me
  loc_9D4E36: MemStAdFunc
  loc_9D4E3A: FLdRfVar var_A8
  loc_9D4E3D: Erase
  loc_9D4E3E: FFree1Ad var_A4
  loc_9D4E41: ExitProcHresult
  loc_9D4E42: Ary1LdPr
End Sub

Private Sub Form_Unload(Cancel As Integer) '954148
  'Data Table: 419A80
  loc_954130: ILdRf Me
  loc_954133: FStAdNoPop
  loc_954137: ImpAdLdRf MemVar_C44F9C
  loc_95413A: NewIfNullPr Me
  loc_95413D: Me.Global.Unload from_stack_1
  loc_954142: FFree1Ad var_88
  loc_954145: ExitProcHresult
  loc_954146: FLdFPR4 Me00
End Sub

Private Sub Form_Activate() '9534C0
  'Data Table: 419A80
  loc_9534AC: FLdPr Me
  loc_9534AF: VCallAd Control_ID_FiltroMsk
  loc_9534B2: CVarAd
  loc_9534B6: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9534BB: FFree1Var var_94 = ""
  loc_9534BE: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9499E0
  'Data Table: 419A80
  loc_9499CC: ILdI2 KeyAscii
  loc_9499CF: CI4UI1
  loc_9499D0: LitI4 &HD
  loc_9499D5: EqI4
  loc_9499D6: BranchF loc_9499DE
  loc_9499D9: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9499DE: ExitProcHresult
End Sub

Public Function global_4299392Get() '419F40
  global_4299392Get = global_4299392
End Function

Public Sub global_4299392Put(Value) '419F5A
  global_4299392 = Value
End Sub

Public Sub global_4299392Set(Value) '419F74
  global_4299392 = Value
End Sub

Public Function sFiltroGet() '419F8E
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '419F9D
  sFiltro = Value
End Sub
