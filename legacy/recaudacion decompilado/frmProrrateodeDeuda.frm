VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmProrrateodeDeuda
  Caption = "Prorrateo de Deuda"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15252
  ClientHeight = 10152
  Begin VB.CommandButton ConfirmarCmd
    Left = 4080
    Top = 5160
    Width = 2055
    Height = 525
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmProrrateodeDeuda.frx":0000
    Style = 1
  End
  Begin VB.CommandButton SalirCmd
    Left = 12720
    Top = 240
    Width = 735
    Height = 615
    TabIndex = 10
    Picture = "frmProrrateodeDeuda.frx":032E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox CodiInmuMsk
    Left = 3240
    Top = 600
    Width = 1215
    Height = 360
    TabIndex = 1
    OleObjectBlob = "frmProrrateodeDeuda.frx":0580
  End
  Begin MSFlexGridLib.MSFlexGrid InmuebleFlex
    Left = 720
    Top = 2760
    Width = 12255
    Height = 2295
    TabIndex = 8
    OleObjectBlob = "frmProrrateodeDeuda.frx":0618
  End
  Begin VB.Label Label2
    Caption = "CUIL:"
    Left = 2505
    Top = 1200
    Width = 615
    Height = 300
    TabIndex = 2
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 7200
    Top = 1200
    Width = 6135
    Height = 315
    TabIndex = 5
    DataField = "DetaPers"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 3360
    Top = 1200
    Width = 1695
    Height = 315
    TabIndex = 3
    DataField = "CucuPers"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 3360
    Top = 1680
    Width = 7935
    Height = 315
    TabIndex = 7
    DataField = "DetaCall"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Apellido y Nombre:"
    Index = 0
    Left = 5160
    Top = 1200
    Width = 1965
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label9
    Caption = "Direccion:"
    Left = 2070
    Top = 1680
    Width = 1050
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label8
    Caption = "Cuenta:"
    Left = 2280
    Top = 600
    Width = 840
    Height = 300
    TabIndex = 0
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmProrrateodeDeuda"


Private Sub ConfirmarCmd_Click() 'AF9C00
  'Data Table: 43FD64
  loc_AF9A3C: Call Proc_334_12_AAF218()
  loc_AF9A41: LitI4 2
  loc_AF9A46: FLdPr Me
  loc_AF9A49: MemLdRfVar from_stack_1.global_68
  loc_AF9A4C: CVarRef
  loc_AF9A51: FLdRfVar var_A8
  loc_AF9A54: ImpAdCallFPR4  = Round(, )
  loc_AF9A59: FLdRfVar var_A8
  loc_AF9A5C: LitVarI2 var_B8, 100
  loc_AF9A61: HardType
  loc_AF9A62: NeVarBool
  loc_AF9A64: FFree1Var var_A8 = ""
  loc_AF9A67: BranchF loc_AF9A97
  loc_AF9A6A: LitStr "El TOTAL del PORCENTAJE debe ser 100. Verifique..."
  loc_AF9A6D: FLdPr Me
  loc_AF9A70: MemStStrCopy
  loc_AF9A74: FLdPr Me
  loc_AF9A77: MemLdStr global_76
  loc_AF9A7A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AF9A7F: FLdPr Me
  loc_AF9A82: VCallAd Control_ID_InmuebleFlex
  loc_AF9A85: FStAdFunc var_CC
  loc_AF9A88: FLdPr var_CC
  loc_AF9A8B: LateIdCall
  loc_AF9A93: FFree1Ad var_CC
  loc_AF9A96: ExitProcHresult
  loc_AF9A97: FLdPr Me
  loc_AF9A9A: VCallAd Control_ID_InmuebleFlex
  loc_AF9A9D: FStAdFunc var_CC
  loc_AF9AA0: FLdPr var_CC
  loc_AF9AA3: LateIdLdVar var_A8 DispID_4 0
  loc_AF9AAA: CI4Var
  loc_AF9AAC: LitI4 1
  loc_AF9AB1: LeI4
  loc_AF9AB2: FFree1Ad var_CC
  loc_AF9AB5: FFree1Var var_A8 = ""
  loc_AF9AB8: BranchF loc_AF9AED
  loc_AF9ABB: LitVar_Missing var_10C
  loc_AF9ABE: LitVar_Missing var_EC
  loc_AF9AC1: LitVarStr var_B8, "InfoGov"
  loc_AF9AC6: FStVarCopyObj var_C8
  loc_AF9AC9: FLdRfVar var_C8
  loc_AF9ACC: LitI4 &H30
  loc_AF9AD1: LitVarStr var_98, "No existe ninguna cuenta para realizar el prorrateo"
  loc_AF9AD6: FStVarCopyObj var_A8
  loc_AF9AD9: FLdRfVar var_A8
  loc_AF9ADC: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AF9AE1: FFreeVar var_A8 = "": var_C8 = "": var_EC = ""
  loc_AF9AEC: ExitProcHresult
  loc_AF9AED: LitVar_Missing var_10C
  loc_AF9AF0: LitVar_Missing var_EC
  loc_AF9AF3: LitVarStr var_B8, "InfoGov"
  loc_AF9AF8: FStVarCopyObj var_C8
  loc_AF9AFB: FLdRfVar var_C8
  loc_AF9AFE: LitI4 4
  loc_AF9B03: LitVarStr var_98, "¿Esta seguro que desea realizar la Prorroga?"
  loc_AF9B08: FStVarCopyObj var_A8
  loc_AF9B0B: FLdRfVar var_A8
  loc_AF9B0E: ImpAdCallI2 MsgBox(, , , , )
  loc_AF9B13: LitI4 6
  loc_AF9B18: EqI4
  loc_AF9B19: FFreeVar var_A8 = "": var_C8 = "": var_EC = ""
  loc_AF9B24: BranchF loc_AF9BFE
  loc_AF9B27: LitI2_Byte &HB
  loc_AF9B29: FLdPr Me
  loc_AF9B2C: Me.MousePointer = from_stack_1
  loc_AF9B31: FLdPr Me
  loc_AF9B34: VCallAd Control_ID_CodiInmuMsk
  loc_AF9B37: FStAdFunc var_CC
  loc_AF9B3A: FLdPr var_CC
  loc_AF9B3D: LateIdLdVar var_A8 DispID_22 0
  loc_AF9B44: CStrVarTmp
  loc_AF9B45: FStStrNoPop var_110
  loc_AF9B48: CI4Str
  loc_AF9B49: FLdPr Me
  loc_AF9B4C: MemLdRfVar from_stack_1.global_64
  loc_AF9B4F: NewIfNullPr clsctacte
  loc_AF9B52: Call clsctacte.ProrrateodeDeuda(from_stack_1v)
  loc_AF9B57: FFree1Str var_110
  loc_AF9B5A: FFree1Ad var_CC
  loc_AF9B5D: FFree1Var var_A8 = ""
  loc_AF9B60: LitI2_Byte 0
  loc_AF9B62: FLdPr Me
  loc_AF9B65: Me.MousePointer = from_stack_1
  loc_AF9B6A: LitVar_Missing var_10C
  loc_AF9B6D: LitVar_Missing var_EC
  loc_AF9B70: LitVarStr var_B8, "InfoGov"
  loc_AF9B75: FStVarCopyObj var_C8
  loc_AF9B78: FLdRfVar var_C8
  loc_AF9B7B: LitI4 &H30
  loc_AF9B80: LitVarStr var_98, "Proceso terminado. Por favor revise la información generada."
  loc_AF9B85: FStVarCopyObj var_A8
  loc_AF9B88: FLdRfVar var_A8
  loc_AF9B8B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AF9B90: FFreeVar var_A8 = "": var_C8 = "": var_EC = ""
  loc_AF9B9B: ILdRf Me
  loc_AF9B9E: CastAd
  loc_AF9BA1: FStAdFunc var_CC
  loc_AF9BA4: FLdRfVar var_CC
  loc_AF9BA7: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_AF9BAC: FFree1Ad var_CC
  loc_AF9BAF: Call Proc_334_11_AE664C()
  loc_AF9BB4: LitI4 0
  loc_AF9BB9: LitI4 0
  loc_AF9BBE: FLdRfVar var_114
  loc_AF9BC1: Redim
  loc_AF9BCB: FLdPr Me
  loc_AF9BCE: VCallAd Control_ID_ConfirmarCmd
  loc_AF9BD1: CVarAd
  loc_AF9BD5: ParmAry1St
  loc_AF9BDB: FLdRfVar var_114
  loc_AF9BDE: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AF9BE3: FLdRfVar var_114
  loc_AF9BE6: Erase
  loc_AF9BE7: FLdPr Me
  loc_AF9BEA: VCallAd Control_ID_CodiInmuMsk
  loc_AF9BED: FStAdFunc var_CC
  loc_AF9BF0: FLdPr var_CC
  loc_AF9BF3: LateIdCall
  loc_AF9BFB: FFree1Ad var_CC
  loc_AF9BFE: ExitProcHresult
End Sub

Private Sub SalirCmd_Click() '9D2504
  'Data Table: 43FD64
  loc_9D24EC: ILdRf Me
  loc_9D24EF: FStAdNoPop
  loc_9D24F3: ImpAdLdRf MemVar_D9C5D8
  loc_9D24F6: NewIfNullPr Global
  loc_9D24F9: Global.Unload from_stack_1
  loc_9D24FE: FFree1Ad var_88
  loc_9D2501: ExitProcHresult
  loc_9D2502: CVarI2 var_1303
End Sub

Private Sub CodiInmuMsk_UnknownEvent_0 'A53DA8
  'Data Table: 43FD64
  loc_A53D50: LitStr vbNullString
  loc_A53D53: FLdPr Me
  loc_A53D56: VCallAd Control_ID_CucuPersLbl
  loc_A53D59: FStAdFunc var_88
  loc_A53D5C: FLdPr var_88
  loc_A53D5F: Me.Caption = from_stack_1
  loc_A53D64: FFree1Ad var_88
  loc_A53D67: LitStr vbNullString
  loc_A53D6A: FLdPr Me
  loc_A53D6D: VCallAd Control_ID_DetaPersLbl
  loc_A53D70: FStAdFunc var_88
  loc_A53D73: FLdPr var_88
  loc_A53D76: Me.Caption = from_stack_1
  loc_A53D7B: FFree1Ad var_88
  loc_A53D7E: LitStr vbNullString
  loc_A53D81: FLdPr Me
  loc_A53D84: VCallAd Control_ID_DomiPersLbl
  loc_A53D87: FStAdFunc var_88
  loc_A53D8A: FLdPr var_88
  loc_A53D8D: Me.Caption = from_stack_1
  loc_A53D92: FFree1Ad var_88
  loc_A53D95: FLdPr Me
  loc_A53D98: VCallAd Control_ID_CodiInmuMsk
  loc_A53D9B: CVarAd
  loc_A53D9F: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_A53DA4: FFree1Var var_98 = ""
  loc_A53DA7: ExitProcHresult
End Sub

Private Function CodiInmuMsk_UnknownEvent_8(arg_C) 'B56AF4
  'Data Table: 43FD64
  loc_B56748: FLdPr Me
  loc_B5674B: VCallAd Control_ID_CodiInmuMsk
  loc_B5674E: FStAdFunc var_88
  loc_B56751: FLdPr var_88
  loc_B56754: LateIdLdVar var_98 DispID_13 -32767
  loc_B5675B: CBoolVar
  loc_B5675D: FFree1Ad var_88
  loc_B56760: FFree1Var var_98 = ""
  loc_B56763: BranchF loc_B56AAE
  loc_B56766: FLdPr Me
  loc_B56769: VCallAd Control_ID_CodiInmuMsk
  loc_B5676C: FStAdFunc var_88
  loc_B5676F: FLdPr var_88
  loc_B56772: LateIdLdVar var_98 DispID_22 0
  loc_B56779: CStrVarTmp
  loc_B5677A: FStStrNoPop var_9C
  loc_B5677D: LitStr "el numero de cuenta"
  loc_B56780: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_B56785: FStStrNoPop var_A0
  loc_B56788: FLdPr Me
  loc_B5678B: MemStStrCopy
  loc_B5678F: FFreeStr var_9C = ""
  loc_B56796: FFree1Ad var_88
  loc_B56799: FFree1Var var_98 = ""
  loc_B5679C: FLdPr Me
  loc_B5679F: MemLdStr global_76
  loc_B567A2: LitStr vbNullString
  loc_B567A5: NeStr
  loc_B567A7: BranchF loc_B567CD
  loc_B567AA: FLdPr Me
  loc_B567AD: MemLdStr global_76
  loc_B567B0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B567B5: FLdPr Me
  loc_B567B8: VCallAd Control_ID_CodiInmuMsk
  loc_B567BB: CVarAd
  loc_B567BF: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B567C4: FFree1Var var_98 = ""
  loc_B567C7: LitI2_Byte &HFF
  loc_B567C9: IStI2 arg_C
  loc_B567CC: ExitProcHresult
  loc_B567CD: FLdPr Me
  loc_B567D0: VCallAd Control_ID_CodiInmuMsk
  loc_B567D3: FStAdFunc var_88
  loc_B567D6: FLdPr var_88
  loc_B567D9: LateIdLdVar var_98 DispID_22 0
  loc_B567E0: PopAd
  loc_B567E2: FLdPr Me
  loc_B567E5: MemLdRfVar from_stack_1.global_56
  loc_B567E8: NewIfNullRf
  loc_B567EC: LitStr "Titular"
  loc_B567EF: FLdRfVar var_98
  loc_B567F2: CStrVarTmp
  loc_B567F3: FStStrNoPop var_A0
  loc_B567F6: LitI2_Byte 1
  loc_B567F8: CStrUI1
  loc_B567FA: FStStrNoPop var_9C
  loc_B567FD: ImpAdCallI2  = Proc_270_12_C7FB3C(, , )
  loc_B56802: FFreeStr var_9C = ""
  loc_B56809: FFree1Ad var_88
  loc_B5680C: FFree1Var var_98 = ""
  loc_B5680F: BranchF loc_B5695E
  loc_B56812: FLdRfVar var_9C
  loc_B56815: FLdPr Me
  loc_B56818: MemLdRfVar from_stack_1.global_56
  loc_B5681B: NewIfNullPr tblPersona
  loc_B5681E: from_stack_1v = tblPersona.CucuPersGet()
  loc_B56823: ILdRf var_9C
  loc_B56826: FLdPr Me
  loc_B56829: VCallAd Control_ID_CucuPersLbl
  loc_B5682C: FStAdFunc var_88
  loc_B5682F: FLdPr var_88
  loc_B56832: Me.Caption = from_stack_1
  loc_B56837: FFree1Str var_9C
  loc_B5683A: FFree1Ad var_88
  loc_B5683D: FLdRfVar var_9C
  loc_B56840: FLdPr Me
  loc_B56843: MemLdRfVar from_stack_1.global_56
  loc_B56846: NewIfNullPr tblPersona
  loc_B56849: from_stack_1v = tblPersona.DetaPersGet()
  loc_B5684E: ILdRf var_9C
  loc_B56851: FLdPr Me
  loc_B56854: VCallAd Control_ID_DetaPersLbl
  loc_B56857: FStAdFunc var_88
  loc_B5685A: FLdPr var_88
  loc_B5685D: Me.Caption = from_stack_1
  loc_B56862: FFree1Str var_9C
  loc_B56865: FFree1Ad var_88
  loc_B56868: FLdRfVar var_A0
  loc_B5686B: FLdPr Me
  loc_B5686E: MemLdRfVar from_stack_1.global_56
  loc_B56871: NewIfNullPr tblPersona
  loc_B56874: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B56879: FLdRfVar var_A4
  loc_B5687C: FLdPr Me
  loc_B5687F: MemLdRfVar from_stack_1.global_56
  loc_B56882: NewIfNullPr tblPersona
  loc_B56885: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B5688A: FLdRfVar var_9C
  loc_B5688D: FLdPr Me
  loc_B56890: MemLdRfVar from_stack_1.global_56
  loc_B56893: NewIfNullPr tblPersona
  loc_B56896: from_stack_1v = tblPersona.DetaCallGet()
  loc_B5689B: ILdRf var_9C
  loc_B5689E: LitStr " "
  loc_B568A1: ConcatStr
  loc_B568A2: CVarStr var_F4
  loc_B568A5: LitVarStr var_C4, vbNullString
  loc_B568AA: FStVarCopyObj var_D4
  loc_B568AD: FLdRfVar var_D4
  loc_B568B0: LitStr "Nro: "
  loc_B568B3: ILdRf var_A4
  loc_B568B6: ConcatStr
  loc_B568B7: CVarStr var_98
  loc_B568BA: ILdRf var_A0
  loc_B568BD: LitStr "0"
  loc_B568C0: NeStr
  loc_B568C2: CVarBoolI2 var_B4
  loc_B568C6: FLdRfVar var_E4
  loc_B568C9: ImpAdCallFPR4  = IIf(, , )
  loc_B568CE: FLdRfVar var_E4
  loc_B568D1: ConcatVar var_104
  loc_B568D5: LitVarStr var_114, " "
  loc_B568DA: ConcatVar var_124
  loc_B568DE: FLdRfVar var_128
  loc_B568E1: FLdPr Me
  loc_B568E4: MemLdRfVar from_stack_1.global_56
  loc_B568E7: NewIfNullPr tblPersona
  loc_B568EA: from_stack_1v = tblPersona.UbicPersGet()
  loc_B568EF: FLdZeroAd var_128
  loc_B568F2: CVarStr var_138
  loc_B568F5: ConcatVar var_148
  loc_B568F9: LitVarStr var_158, " "
  loc_B568FE: ConcatVar var_168
  loc_B56902: FLdRfVar var_16C
  loc_B56905: FLdPr Me
  loc_B56908: MemLdRfVar from_stack_1.global_56
  loc_B5690B: NewIfNullPr tblPersona
  loc_B5690E: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B56913: FLdZeroAd var_16C
  loc_B56916: CVarStr var_17C
  loc_B56919: ConcatVar var_18C
  loc_B5691D: CStrVarVal var_190
  loc_B56921: FLdPr Me
  loc_B56924: VCallAd Control_ID_DomiPersLbl
  loc_B56927: FStAdFunc var_88
  loc_B5692A: FLdPr var_88
  loc_B5692D: Me.Caption = from_stack_1
  loc_B56932: FFreeStr var_9C = "": var_A0 = "": var_A4 = ""
  loc_B5693D: FFree1Ad var_88
  loc_B56940: FFreeVar var_B4 = "": var_98 = "": var_D4 = "": var_F4 = "": var_E4 = "": var_104 = "": var_124 = "": var_138 = "": var_148 = "": var_168 = "": var_17C = ""
  loc_B5695B: Branch loc_B569D9
  loc_B5695E: FLdRfVar var_9C
  loc_B56961: FLdPr Me
  loc_B56964: MemLdRfVar from_stack_1.global_56
  loc_B56967: NewIfNullPr tblPersona
  loc_B5696A: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B5696F: ILdRf var_9C
  loc_B56972: FLdPr Me
  loc_B56975: MemStStrCopy
  loc_B56979: FFree1Str var_9C
  loc_B5697C: LitStr vbNullString
  loc_B5697F: FLdPr Me
  loc_B56982: VCallAd Control_ID_CucuPersLbl
  loc_B56985: FStAdFunc var_88
  loc_B56988: FLdPr var_88
  loc_B5698B: Me.Caption = from_stack_1
  loc_B56990: FFree1Ad var_88
  loc_B56993: LitStr vbNullString
  loc_B56996: FLdPr Me
  loc_B56999: VCallAd Control_ID_DetaPersLbl
  loc_B5699C: FStAdFunc var_88
  loc_B5699F: FLdPr var_88
  loc_B569A2: Me.Caption = from_stack_1
  loc_B569A7: FFree1Ad var_88
  loc_B569AA: LitStr vbNullString
  loc_B569AD: FLdPr Me
  loc_B569B0: VCallAd Control_ID_DomiPersLbl
  loc_B569B3: FStAdFunc var_88
  loc_B569B6: FLdPr var_88
  loc_B569B9: Me.Caption = from_stack_1
  loc_B569BE: FFree1Ad var_88
  loc_B569C1: FLdPr Me
  loc_B569C4: VCallAd Control_ID_CodiInmuMsk
  loc_B569C7: CVarAd
  loc_B569CB: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B569D0: FFree1Var var_98 = ""
  loc_B569D3: LitI2_Byte &HFF
  loc_B569D5: IStI2 arg_C
  loc_B569D8: ExitProcHresult
  loc_B569D9: FLdPr Me
  loc_B569DC: VCallAd Control_ID_CodiInmuMsk
  loc_B569DF: FStAdFunc var_88
  loc_B569E2: FLdPr var_88
  loc_B569E5: LateIdLdVar var_98 DispID_22 0
  loc_B569EC: CStrVarTmp
  loc_B569ED: FStStrNoPop var_9C
  loc_B569F0: LitI2_Byte 1
  loc_B569F2: CUI1I2
  loc_B569F4: ImpAdCallI2  = Proc_18_118_B1A424()
  loc_B569F9: FStStrNoPop var_A0
  loc_B569FC: FLdPr Me
  loc_B569FF: MemStStrCopy
  loc_B56A03: FFreeStr var_9C = ""
  loc_B56A0A: FFree1Ad var_88
  loc_B56A0D: FFree1Var var_98 = ""
  loc_B56A10: FLdPr Me
  loc_B56A13: MemLdStr global_76
  loc_B56A16: LitStr vbNullString
  loc_B56A19: NeStr
  loc_B56A1B: BranchF loc_B56A41
  loc_B56A1E: FLdPr Me
  loc_B56A21: MemLdStr global_76
  loc_B56A24: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B56A29: FLdPr Me
  loc_B56A2C: VCallAd Control_ID_CodiInmuMsk
  loc_B56A2F: CVarAd
  loc_B56A33: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B56A38: FFree1Var var_98 = ""
  loc_B56A3B: LitI2_Byte &HFF
  loc_B56A3D: IStI2 arg_C
  loc_B56A40: ExitProcHresult
  loc_B56A41: FLdPr Me
  loc_B56A44: VCallAd Control_ID_CodiInmuMsk
  loc_B56A47: FStAdFunc var_88
  loc_B56A4A: FLdPr var_88
  loc_B56A4D: LateIdLdVar var_98 DispID_22 0
  loc_B56A54: PopAd
  loc_B56A56: FLdRfVar var_198
  loc_B56A59: LitI4 0
  loc_B56A5E: LitStr vbNullString
  loc_B56A61: FLdRfVar var_98
  loc_B56A64: CStrVarTmp
  loc_B56A65: FStStrNoPop var_9C
  loc_B56A68: LitI2_Byte 1
  loc_B56A6A: FLdPr Me
  loc_B56A6D: MemLdRfVar from_stack_1.global_64
  loc_B56A70: NewIfNullPr clsctacte
  loc_B56A73: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B56A78: FLdFPR8 var_198
  loc_B56A7B: LitI2_Byte 0
  loc_B56A7D: CR8I2
  loc_B56A7E: EqR4
  loc_B56A7F: FFree1Str var_9C
  loc_B56A82: FFree1Ad var_88
  loc_B56A85: FFree1Var var_98 = ""
  loc_B56A88: BranchF loc_B56AAB
  loc_B56A8B: LitStr "La cuenta no tiene deuda no se puede realizar la prorroga"
  loc_B56A8E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B56A93: FLdPr Me
  loc_B56A96: VCallAd Control_ID_CodiInmuMsk
  loc_B56A99: CVarAd
  loc_B56A9D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B56AA2: FFree1Var var_98 = ""
  loc_B56AA5: LitI2_Byte &HFF
  loc_B56AA7: IStI2 arg_C
  loc_B56AAA: ExitProcHresult
  loc_B56AAB: Branch loc_B56AF3
  loc_B56AAE: LitStr vbNullString
  loc_B56AB1: FLdPr Me
  loc_B56AB4: VCallAd Control_ID_CucuPersLbl
  loc_B56AB7: FStAdFunc var_88
  loc_B56ABA: FLdPr var_88
  loc_B56ABD: Me.Caption = from_stack_1
  loc_B56AC2: FFree1Ad var_88
  loc_B56AC5: LitStr vbNullString
  loc_B56AC8: FLdPr Me
  loc_B56ACB: VCallAd Control_ID_DetaPersLbl
  loc_B56ACE: FStAdFunc var_88
  loc_B56AD1: FLdPr var_88
  loc_B56AD4: Me.Caption = from_stack_1
  loc_B56AD9: FFree1Ad var_88
  loc_B56ADC: LitStr vbNullString
  loc_B56ADF: FLdPr Me
  loc_B56AE2: VCallAd Control_ID_DomiPersLbl
  loc_B56AE5: FStAdFunc var_88
  loc_B56AE8: FLdPr var_88
  loc_B56AEB: Me.Caption = from_stack_1
  loc_B56AF0: FFree1Ad var_88
  loc_B56AF3: ExitProcHresult
End Function

Private Sub CodiInmuMsk_KeyPress(KeyAscii As Integer) 'AC0FBC
  'Data Table: 43FD64
  loc_AC0EC0: ILdI2 KeyAscii
  loc_AC0EC3: LitI2_Byte &H20
  loc_AC0EC5: EqI2
  loc_AC0EC6: BranchF loc_AC0FBB
  loc_AC0EC9: LitVar_Missing var_A4
  loc_AC0ECC: PopAdLdVar
  loc_AC0ECD: LitVarI4
  loc_AC0ED5: PopAdLdVar
  loc_AC0ED6: ImpAdLdRf MemVar_D9477C
  loc_AC0ED9: NewIfNullPr dlgBuscarInmueble
  loc_AC0EDC: dlgBuscarInmueble.Show from_stack_1, from_stack_2
  loc_AC0EE1: FLdRfVar var_AC
  loc_AC0EE4: FLdRfVar var_A8
  loc_AC0EE7: ImpAdLdRf MemVar_D9477C
  loc_AC0EEA: NewIfNullPr dlgBuscarInmueble
  loc_AC0EED: from_stack_1v = dlgBuscarInmueble.global_4308268Get()
  loc_AC0EF2: FLdPr var_A8
  loc_AC0EF5: from_stack_1 = clsInmueble.RecordCount
  loc_AC0EFA: ILdRf var_AC
  loc_AC0EFD: LitI4 0
  loc_AC0F02: GtI4
  loc_AC0F03: FFree1Ad var_A8
  loc_AC0F06: BranchF loc_AC0FBB
  loc_AC0F09: FLdRfVar var_AC
  loc_AC0F0C: FLdRfVar var_A8
  loc_AC0F0F: ImpAdLdRf MemVar_D9477C
  loc_AC0F12: NewIfNullPr dlgBuscarInmueble
  loc_AC0F15: from_stack_1v = dlgBuscarInmueble.global_4308268Get()
  loc_AC0F1A: FLdPr var_A8
  loc_AC0F1D: from_stack_1 = clsInmueble.CodiInmu
  loc_AC0F22: ILdRf var_AC
  loc_AC0F25: CStrI4
  loc_AC0F27: CVarStr var_BC
  loc_AC0F2A: PopAdLdVar
  loc_AC0F2B: FLdPr Me
  loc_AC0F2E: VCallAd Control_ID_CodiInmuMsk
  loc_AC0F31: FStAdFunc var_C0
  loc_AC0F34: FLdPr var_C0
  loc_AC0F37: LateIdSt
  loc_AC0F3C: FFreeAd var_A8 = ""
  loc_AC0F43: FFree1Var var_BC = ""
  loc_AC0F46: FLdRfVar var_C4
  loc_AC0F49: FLdRfVar var_A8
  loc_AC0F4C: ImpAdLdRf MemVar_D9477C
  loc_AC0F4F: NewIfNullPr dlgBuscarInmueble
  loc_AC0F52: from_stack_1v = dlgBuscarInmueble.global_4308268Get()
  loc_AC0F57: FLdPr var_A8
  loc_AC0F5A: from_stack_1 = clsInmueble.CucuPers
  loc_AC0F5F: ILdRf var_C4
  loc_AC0F62: FLdPr Me
  loc_AC0F65: VCallAd Control_ID_CucuPersLbl
  loc_AC0F68: FStAdFunc var_C0
  loc_AC0F6B: FLdPr var_C0
  loc_AC0F6E: Me.Caption = from_stack_1
  loc_AC0F73: FFree1Str var_C4
  loc_AC0F76: FFreeAd var_A8 = ""
  loc_AC0F7D: FLdRfVar var_BC
  loc_AC0F80: FLdRfVar var_A8
  loc_AC0F83: ImpAdLdRf MemVar_D9477C
  loc_AC0F86: NewIfNullPr dlgBuscarInmueble
  loc_AC0F89: from_stack_1v = dlgBuscarInmueble.global_4308268Get()
  loc_AC0F8E: FLdPr var_A8
  loc_AC0F91: from_stack_1 = clsInmueble.DetaPers
  loc_AC0F96: FLdRfVar var_BC
  loc_AC0F99: CStrVarVal var_C4
  loc_AC0F9D: FLdPr Me
  loc_AC0FA0: VCallAd Control_ID_DetaPersLbl
  loc_AC0FA3: FStAdFunc var_C0
  loc_AC0FA6: FLdPr var_C0
  loc_AC0FA9: Me.Caption = from_stack_1
  loc_AC0FAE: FFree1Str var_C4
  loc_AC0FB1: FFreeAd var_A8 = ""
  loc_AC0FB8: FFree1Var var_BC = ""
  loc_AC0FBB: ExitProcHresult
End Sub

Private Sub InmuebleFlex_UnknownEvent_8 'AE3BEC
  'Data Table: 43FD64
  loc_AE3A84: LitI2_Byte 1
  loc_AE3A86: FLdPr Me
  loc_AE3A89: MemLdRfVar from_stack_1.global_84
  loc_AE3A8C: FLdPr Me
  loc_AE3A8F: VCallAd Control_ID_InmuebleFlex
  loc_AE3A92: FStAdFunc var_88
  loc_AE3A95: FLdPr var_88
  loc_AE3A98: LateIdLdVar var_98 DispID_4 0
  loc_AE3A9F: CI4Var
  loc_AE3AA1: LitI4 1
  loc_AE3AA6: SubI4
  loc_AE3AA7: CI2I4
  loc_AE3AA8: FFree1Ad var_88
  loc_AE3AAB: FFree1Var var_98 = ""
  loc_AE3AAE: ForI2 var_9C
  loc_AE3AB4: FLdPr Me
  loc_AE3AB7: MemLdI2 global_84
  loc_AE3ABA: CI4UI1
  loc_AE3ABB: CVarI4
  loc_AE3ABF: PopAdLdVar
  loc_AE3AC0: LitVarI4
  loc_AE3AC8: PopAdLdVar
  loc_AE3AC9: FLdPr Me
  loc_AE3ACC: VCallAd Control_ID_InmuebleFlex
  loc_AE3ACF: FStAdFunc var_88
  loc_AE3AD2: FLdPr var_88
  loc_AE3AD5: LateIdCallLdVar
  loc_AE3ADF: CStrVarTmp
  loc_AE3AE0: CVarStr var_EC
  loc_AE3AE3: ImpAdCallI2 IsNumeric()
  loc_AE3AE8: FFree1Ad var_88
  loc_AE3AEB: FFreeVar var_98 = ""
  loc_AE3AF2: BranchF loc_AE3B82
  loc_AE3AF5: FLdPr Me
  loc_AE3AF8: VCallAd Control_ID_InmuebleFlex
  loc_AE3AFB: FStAdFunc var_88
  loc_AE3AFE: FLdPr var_88
  loc_AE3B01: LateIdLdVar var_98 DispID_10 0
  loc_AE3B08: CI4Var
  loc_AE3B0A: CVarI4
  loc_AE3B0E: PopAdLdVar
  loc_AE3B0F: LitVarI4
  loc_AE3B17: PopAdLdVar
  loc_AE3B18: FLdPr Me
  loc_AE3B1B: VCallAd Control_ID_InmuebleFlex
  loc_AE3B1E: FStAdFunc var_F0
  loc_AE3B21: FLdPr var_F0
  loc_AE3B24: LateIdCallLdVar
  loc_AE3B2E: PopAd
  loc_AE3B30: FLdPr Me
  loc_AE3B33: MemLdRfVar from_stack_1.global_60
  loc_AE3B36: NewIfNullRf
  loc_AE3B3A: FLdRfVar var_EC
  loc_AE3B3D: CStrVarTmp
  loc_AE3B3E: FStStrNoPop var_F4
  loc_AE3B41: ImpAdCallI2  = Proc_270_13_C86920()
  loc_AE3B46: LitI2_Byte 0
  loc_AE3B48: EqI2
  loc_AE3B49: FFree1Str var_F4
  loc_AE3B4C: FFreeAd var_88 = ""
  loc_AE3B53: FFreeVar var_98 = ""
  loc_AE3B5A: BranchF loc_AE3B82
  loc_AE3B5D: LitStr "NO existe el Padron, verifique...."
  loc_AE3B60: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE3B65: FLdPr Me
  loc_AE3B68: VCallAd Control_ID_InmuebleFlex
  loc_AE3B6B: FStAdFunc var_88
  loc_AE3B6E: FLdPr var_88
  loc_AE3B71: LateIdCall
  loc_AE3B79: FFree1Ad var_88
  loc_AE3B7C: LitI2_Byte &HFF
  loc_AE3B7E: IStI2 KeyAscii
  loc_AE3B81: ExitProcHresult
  loc_AE3B82: FLdPr Me
  loc_AE3B85: MemLdRfVar from_stack_1.global_84
  loc_AE3B88: NextI2 var_9C, loc_AE3AB4
  loc_AE3B8D: Call Proc_334_12_AAF218()
  loc_AE3B92: LitI4 2
  loc_AE3B97: FLdPr Me
  loc_AE3B9A: MemLdRfVar from_stack_1.global_68
  loc_AE3B9D: CVarRef
  loc_AE3BA2: FLdRfVar var_98
  loc_AE3BA5: ImpAdCallFPR4  = Round(, )
  loc_AE3BAA: FLdRfVar var_98
  loc_AE3BAD: LitVarI2 var_BC, 100
  loc_AE3BB2: HardType
  loc_AE3BB3: NeVarBool
  loc_AE3BB5: FFree1Var var_98 = ""
  loc_AE3BB8: BranchF loc_AE3BE8
  loc_AE3BBB: LitStr "El TOTAL del PORCENTAJE debe ser 100. Verifique..."
  loc_AE3BBE: FLdPr Me
  loc_AE3BC1: MemStStrCopy
  loc_AE3BC5: FLdPr Me
  loc_AE3BC8: MemLdStr global_76
  loc_AE3BCB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE3BD0: FLdPr Me
  loc_AE3BD3: VCallAd Control_ID_InmuebleFlex
  loc_AE3BD6: FStAdFunc var_88
  loc_AE3BD9: FLdPr var_88
  loc_AE3BDC: LateIdCall
  loc_AE3BE4: FFree1Ad var_88
  loc_AE3BE7: ExitProcHresult
  loc_AE3BE8: ExitProcHresult
End Sub

Private Sub InmuebleFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A884AC
  'Data Table: 43FD64
  loc_A88418: ILdI2 KeyCode
  loc_A8841B: CI4UI1
  loc_A8841C: LitI4 &H2E
  loc_A88421: EqI4
  loc_A88422: BranchF loc_A88484
  loc_A88425: FLdPr Me
  loc_A88428: VCallAd Control_ID_InmuebleFlex
  loc_A8842B: FStAdFunc var_88
  loc_A8842E: FLdPr var_88
  loc_A88431: LateIdLdVar var_98 DispID_4 0
  loc_A88438: CI4Var
  loc_A8843A: LitI4 1
  loc_A8843F: GtI4
  loc_A88440: FFree1Ad var_88
  loc_A88443: FFree1Var var_98 = ""
  loc_A88446: BranchF loc_A88484
  loc_A88449: OnErrorGoto loc_A88484
  loc_A8844C: FLdPr Me
  loc_A8844F: VCallAd Control_ID_InmuebleFlex
  loc_A88452: FStAdFunc var_88
  loc_A88455: FLdPr var_88
  loc_A88458: LateIdLdVar var_98 DispID_10 0
  loc_A8845F: CI4Var
  loc_A88461: CVarI4
  loc_A88465: PopAdLdVar
  loc_A88466: FLdPr Me
  loc_A88469: VCallAd Control_ID_InmuebleFlex
  loc_A8846C: FStAdFunc var_BC
  loc_A8846F: FLdPr var_BC
  loc_A88472: LateIdCall
  loc_A8847A: FFreeAd var_88 = ""
  loc_A88481: FFree1Var var_98 = ""
  loc_A88484: FLdRfVar var_C0
  loc_A88487: ImpAdCallI2 Err 'rtcErrObj
  loc_A8848C: FStAdFunc var_88
  loc_A8848F: FLdPr var_88
  loc_A88492:  = Err.Number
  loc_A88497: ILdRf var_C0
  loc_A8849A: LitI4 &H753F
  loc_A8849F: EqI4
  loc_A884A0: FFree1Ad var_88
  loc_A884A3: BranchF loc_A884AB
  loc_A884A6: Call Proc_334_11_AE664C()
  loc_A884AB: ExitProcHresult
End Sub

Private Sub InmuebleFlex_KeyPress(KeyAscii As Integer) 'B3D978
  'Data Table: 43FD64
  loc_B3D668: ILdI2 KeyAscii
  loc_B3D66B: LitI2_Byte 8
  loc_B3D66D: EqI2
  loc_B3D66E: BranchF loc_B3D758
  loc_B3D671: FLdPr Me
  loc_B3D674: VCallAd Control_ID_InmuebleFlex
  loc_B3D677: FStAdFunc var_88
  loc_B3D67A: FLdPr var_88
  loc_B3D67D: LateIdLdVar var_98 DispID_11 0
  loc_B3D684: CI4Var
  loc_B3D686: LitI4 0
  loc_B3D68B: EqI4
  loc_B3D68C: FLdPr Me
  loc_B3D68F: VCallAd Control_ID_InmuebleFlex
  loc_B3D692: FStAdFunc var_9C
  loc_B3D695: FLdPr var_9C
  loc_B3D698: LateIdLdVar var_AC DispID_11 0
  loc_B3D69F: CI4Var
  loc_B3D6A1: LitI4 3
  loc_B3D6A6: EqI4
  loc_B3D6A7: OrI4
  loc_B3D6A8: FFreeAd var_88 = ""
  loc_B3D6AF: FFreeVar var_98 = ""
  loc_B3D6B6: BranchF loc_B3D755
  loc_B3D6B9: FLdPr Me
  loc_B3D6BC: VCallAd Control_ID_InmuebleFlex
  loc_B3D6BF: FStAdFunc var_88
  loc_B3D6C2: FLdPr var_88
  loc_B3D6C5: LateIdLdVar var_98 DispID_0 0
  loc_B3D6CC: CStrVarTmp
  loc_B3D6CD: FStStrNoPop var_B0
  loc_B3D6D0: LitStr vbNullString
  loc_B3D6D3: NeStr
  loc_B3D6D5: FFree1Str var_B0
  loc_B3D6D8: FFree1Ad var_88
  loc_B3D6DB: FFree1Var var_98 = ""
  loc_B3D6DE: BranchF loc_B3D755
  loc_B3D6E1: FLdPr Me
  loc_B3D6E4: VCallAd Control_ID_InmuebleFlex
  loc_B3D6E7: FStAdFunc var_88
  loc_B3D6EA: FLdPr var_88
  loc_B3D6ED: LateIdLdVar var_98 DispID_0 0
  loc_B3D6F4: PopAd
  loc_B3D6F6: FLdPr Me
  loc_B3D6F9: VCallAd Control_ID_InmuebleFlex
  loc_B3D6FC: FStAdFunc var_9C
  loc_B3D6FF: FLdPr var_9C
  loc_B3D702: LateIdLdVar var_AC DispID_0 0
  loc_B3D709: CStrVarTmp
  loc_B3D70A: FStStrNoPop var_B0
  loc_B3D70D: FnLenStr
  loc_B3D70E: LitI4 1
  loc_B3D713: SubI4
  loc_B3D714: FLdRfVar var_98
  loc_B3D717: CStrVarTmp
  loc_B3D718: CVarStr var_C0
  loc_B3D71B: FLdRfVar var_D0
  loc_B3D71E: ImpAdCallFPR4  = Left(, )
  loc_B3D723: FLdRfVar var_D0
  loc_B3D726: CStrVarTmp
  loc_B3D727: CVarStr var_E0
  loc_B3D72A: PopAdLdVar
  loc_B3D72B: FLdPr Me
  loc_B3D72E: VCallAd Control_ID_InmuebleFlex
  loc_B3D731: FStAdFunc var_F4
  loc_B3D734: FLdPr var_F4
  loc_B3D737: LateIdSt
  loc_B3D73C: FFree1Str var_B0
  loc_B3D73F: FFreeAd var_88 = "": var_9C = ""
  loc_B3D748: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = ""
  loc_B3D755: Branch loc_B3D976
  loc_B3D758: ILdI2 KeyAscii
  loc_B3D75B: LitI2_Byte &HD
  loc_B3D75D: EqI2
  loc_B3D75E: BranchF loc_B3D873
  loc_B3D761: LitVarStr var_F0, vbNullString
  loc_B3D766: LitI4 9
  loc_B3D76B: FLdRfVar var_98
  loc_B3D76E: ImpAdCallFPR4  = Chr()
  loc_B3D773: FLdRfVar var_98
  loc_B3D776: ConcatVar var_AC
  loc_B3D77A: LitVarStr var_104, vbNullString
  loc_B3D77F: ConcatVar var_C0
  loc_B3D783: LitI4 9
  loc_B3D788: FLdRfVar var_D0
  loc_B3D78B: ImpAdCallFPR4  = Chr()
  loc_B3D790: FLdRfVar var_D0
  loc_B3D793: ConcatVar var_E0
  loc_B3D797: LitVarStr var_114, vbNullString
  loc_B3D79C: ConcatVar var_124
  loc_B3D7A0: LitI4 9
  loc_B3D7A5: FLdRfVar var_134
  loc_B3D7A8: ImpAdCallFPR4  = Chr()
  loc_B3D7AD: FLdRfVar var_134
  loc_B3D7B0: ConcatVar var_144
  loc_B3D7B4: LitVarStr var_154, vbNullString
  loc_B3D7B9: ConcatVar var_164
  loc_B3D7BD: CStrVarTmp
  loc_B3D7BE: FStStrNoPop var_B0
  loc_B3D7C1: FLdPr Me
  loc_B3D7C4: MemStStrCopy
  loc_B3D7C8: FFree1Str var_B0
  loc_B3D7CB: FFreeVar var_98 = "": var_AC = "": var_C0 = "": var_D0 = "": var_E0 = "": var_124 = "": var_134 = "": var_144 = ""
  loc_B3D7E0: FLdPr Me
  loc_B3D7E3: MemLdRfVar from_stack_1.global_80
  loc_B3D7E6: CDargRef
  loc_B3D7EA: FLdPr Me
  loc_B3D7ED: VCallAd Control_ID_InmuebleFlex
  loc_B3D7F0: FStAdFunc var_88
  loc_B3D7F3: FLdPr var_88
  loc_B3D7F6: LateIdCall
  loc_B3D7FE: FFree1Ad var_88
  loc_B3D801: FLdPr Me
  loc_B3D804: VCallAd Control_ID_InmuebleFlex
  loc_B3D807: FStAdFunc var_88
  loc_B3D80A: FLdPr var_88
  loc_B3D80D: LateIdLdVar var_98 DispID_10 0
  loc_B3D814: CI4Var
  loc_B3D816: LitI4 1
  loc_B3D81B: AddI4
  loc_B3D81C: CVarI4
  loc_B3D820: PopAdLdVar
  loc_B3D821: FLdPr Me
  loc_B3D824: VCallAd Control_ID_InmuebleFlex
  loc_B3D827: FStAdFunc var_9C
  loc_B3D82A: FLdPr var_9C
  loc_B3D82D: LateIdSt
  loc_B3D832: FFreeAd var_88 = ""
  loc_B3D839: FFree1Var var_98 = ""
  loc_B3D83C: LitVarI4
  loc_B3D844: PopAdLdVar
  loc_B3D845: FLdPr Me
  loc_B3D848: VCallAd Control_ID_InmuebleFlex
  loc_B3D84B: FStAdFunc var_88
  loc_B3D84E: FLdPr var_88
  loc_B3D851: LateIdSt
  loc_B3D856: FFree1Ad var_88
  loc_B3D859: FLdPr Me
  loc_B3D85C: VCallAd Control_ID_InmuebleFlex
  loc_B3D85F: FStAdFunc var_88
  loc_B3D862: FLdPr var_88
  loc_B3D865: LateIdCall
  loc_B3D86D: FFree1Ad var_88
  loc_B3D870: Branch loc_B3D976
  loc_B3D873: ILdI2 KeyAscii
  loc_B3D876: LitI2_Byte &H20
  loc_B3D878: EqI2
  loc_B3D879: BranchF loc_B3D87F
  loc_B3D87C: Branch loc_B3D976
  loc_B3D87F: FLdPr Me
  loc_B3D882: VCallAd Control_ID_InmuebleFlex
  loc_B3D885: FStAdFunc var_88
  loc_B3D888: FLdPr var_88
  loc_B3D88B: LateIdLdVar var_98 DispID_11 0
  loc_B3D892: CI4Var
  loc_B3D894: LitI4 0
  loc_B3D899: EqI4
  loc_B3D89A: FLdPr Me
  loc_B3D89D: VCallAd Control_ID_InmuebleFlex
  loc_B3D8A0: FStAdFunc var_9C
  loc_B3D8A3: FLdPr var_9C
  loc_B3D8A6: LateIdLdVar var_AC DispID_11 0
  loc_B3D8AD: CI4Var
  loc_B3D8AF: LitI4 3
  loc_B3D8B4: EqI4
  loc_B3D8B5: OrI4
  loc_B3D8B6: FFreeAd var_88 = ""
  loc_B3D8BD: FFreeVar var_98 = ""
  loc_B3D8C4: BranchF loc_B3D976
  loc_B3D8C7: FLdPr Me
  loc_B3D8CA: VCallAd Control_ID_InmuebleFlex
  loc_B3D8CD: FStAdFunc var_88
  loc_B3D8D0: FLdPr var_88
  loc_B3D8D3: LateIdLdVar var_98 DispID_0 0
  loc_B3D8DA: CStrVarTmp
  loc_B3D8DB: FStStrNoPop var_B0
  loc_B3D8DE: FnLenStr
  loc_B3D8DF: LitI4 7
  loc_B3D8E4: LeI4
  loc_B3D8E5: FFree1Str var_B0
  loc_B3D8E8: FFree1Ad var_88
  loc_B3D8EB: FFree1Var var_98 = ""
  loc_B3D8EE: BranchF loc_B3D976
  loc_B3D8F1: LitStr "1234567890,."
  loc_B3D8F4: FStStrCopy var_B0
  loc_B3D8F7: FLdRfVar var_B0
  loc_B3D8FA: ILdRf KeyAscii
  loc_B3D8FD: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_B3D902: IStI2 KeyAscii
  loc_B3D905: FFree1Str var_B0
  loc_B3D908: ILdI2 KeyAscii
  loc_B3D90B: LitStr "."
  loc_B3D90E: ImpAdCallI2 Asc()
  loc_B3D913: EqI2
  loc_B3D914: BranchF loc_B3D922
  loc_B3D917: LitStr ","
  loc_B3D91A: ImpAdCallI2 Asc()
  loc_B3D91F: IStI2 KeyAscii
  loc_B3D922: FLdPr Me
  loc_B3D925: VCallAd Control_ID_InmuebleFlex
  loc_B3D928: FStAdFunc var_88
  loc_B3D92B: FLdPr var_88
  loc_B3D92E: LateIdLdVar var_98 DispID_0 0
  loc_B3D935: CStrVarTmp
  loc_B3D936: CVarStr var_C0
  loc_B3D939: ILdI2 KeyAscii
  loc_B3D93C: CI4UI1
  loc_B3D93D: FLdRfVar var_AC
  loc_B3D940: ImpAdCallFPR4  = Chr()
  loc_B3D945: FLdRfVar var_AC
  loc_B3D948: AddVar var_D0
  loc_B3D94C: CStrVarTmp
  loc_B3D94D: CVarStr var_E0
  loc_B3D950: PopAdLdVar
  loc_B3D951: FLdPr Me
  loc_B3D954: VCallAd Control_ID_InmuebleFlex
  loc_B3D957: FStAdFunc var_9C
  loc_B3D95A: FLdPr var_9C
  loc_B3D95D: LateIdSt
  loc_B3D962: FFreeAd var_88 = ""
  loc_B3D969: FFreeVar var_98 = "": var_C0 = "": var_AC = "": var_D0 = ""
  loc_B3D976: ExitProcHresult
End Sub

Private Sub InmuebleFlex_LeaveCell() 'B45CC8
  'Data Table: 43FD64
  loc_B4597C: FLdPr Me
  loc_B4597F: VCallAd Control_ID_InmuebleFlex
  loc_B45982: FStAdFunc var_88
  loc_B45985: FLdPr var_88
  loc_B45988: LateIdLdVar var_98 DispID_11 0
  loc_B4598F: CI4Var
  loc_B45991: LitI4 0
  loc_B45996: EqI4
  loc_B45997: FFree1Ad var_88
  loc_B4599A: FFree1Var var_98 = ""
  loc_B4599D: BranchF loc_B45B94
  loc_B459A0: FLdPr Me
  loc_B459A3: VCallAd Control_ID_InmuebleFlex
  loc_B459A6: FStAdFunc var_88
  loc_B459A9: FLdPr var_88
  loc_B459AC: LateIdLdVar var_98 DispID_10 0
  loc_B459B3: CI4Var
  loc_B459B5: CVarI4
  loc_B459B9: PopAdLdVar
  loc_B459BA: LitVarI4
  loc_B459C2: PopAdLdVar
  loc_B459C3: FLdPr Me
  loc_B459C6: VCallAd Control_ID_InmuebleFlex
  loc_B459C9: FStAdFunc var_DC
  loc_B459CC: FLdPr var_DC
  loc_B459CF: LateIdCallLdVar
  loc_B459D9: CStrVarTmp
  loc_B459DA: CVarStr var_FC
  loc_B459DD: ImpAdCallI2 IsNumeric()
  loc_B459E2: FFreeAd var_88 = ""
  loc_B459E9: FFreeVar var_98 = "": var_EC = ""
  loc_B459F2: BranchF loc_B45B94
  loc_B459F5: FLdPr Me
  loc_B459F8: VCallAd Control_ID_InmuebleFlex
  loc_B459FB: FStAdFunc var_88
  loc_B459FE: FLdPr var_88
  loc_B45A01: LateIdLdVar var_98 DispID_10 0
  loc_B45A08: CI4Var
  loc_B45A0A: CVarI4
  loc_B45A0E: PopAdLdVar
  loc_B45A0F: LitVarI4
  loc_B45A17: PopAdLdVar
  loc_B45A18: FLdPr Me
  loc_B45A1B: VCallAd Control_ID_InmuebleFlex
  loc_B45A1E: FStAdFunc var_DC
  loc_B45A21: FLdPr var_DC
  loc_B45A24: LateIdCallLdVar
  loc_B45A2E: PopAd
  loc_B45A30: FLdPr Me
  loc_B45A33: MemLdRfVar from_stack_1.global_60
  loc_B45A36: NewIfNullRf
  loc_B45A3A: FLdRfVar var_EC
  loc_B45A3D: CStrVarTmp
  loc_B45A3E: FStStrNoPop var_100
  loc_B45A41: ImpAdCallI2  = Proc_270_13_C86920()
  loc_B45A46: FFree1Str var_100
  loc_B45A49: FFreeAd var_88 = ""
  loc_B45A50: FFreeVar var_98 = ""
  loc_B45A57: BranchF loc_B45B8C
  loc_B45A5A: FLdPr Me
  loc_B45A5D: VCallAd Control_ID_InmuebleFlex
  loc_B45A60: FStAdFunc var_88
  loc_B45A63: FLdPr var_88
  loc_B45A66: LateIdLdVar var_98 DispID_10 0
  loc_B45A6D: CI4Var
  loc_B45A6F: CVarI4
  loc_B45A73: PopAdLdVar
  loc_B45A74: LitVarI4
  loc_B45A7C: PopAdLdVar
  loc_B45A7D: FLdRfVar var_100
  loc_B45A80: FLdPr Me
  loc_B45A83: MemLdRfVar from_stack_1.global_60
  loc_B45A86: NewIfNullPr tblPersonaGIS
  loc_B45A89: from_stack_1v = tblPersonaGIS.CucuPersGet()
  loc_B45A8E: FLdZeroAd var_100
  loc_B45A91: CVarStr var_EC
  loc_B45A94: PopAdLdVar
  loc_B45A95: FLdPr Me
  loc_B45A98: VCallAd Control_ID_InmuebleFlex
  loc_B45A9B: FStAdFunc var_DC
  loc_B45A9E: FLdPr var_DC
  loc_B45AA1: LateIdCallSt
  loc_B45AA9: FFreeAd var_88 = ""
  loc_B45AB0: FFreeVar var_98 = ""
  loc_B45AB7: FLdPr Me
  loc_B45ABA: VCallAd Control_ID_InmuebleFlex
  loc_B45ABD: FStAdFunc var_88
  loc_B45AC0: FLdPr var_88
  loc_B45AC3: LateIdLdVar var_98 DispID_10 0
  loc_B45ACA: CI4Var
  loc_B45ACC: CVarI4
  loc_B45AD0: PopAdLdVar
  loc_B45AD1: LitVarI4
  loc_B45AD9: PopAdLdVar
  loc_B45ADA: FLdRfVar var_100
  loc_B45ADD: FLdPr Me
  loc_B45AE0: MemLdRfVar from_stack_1.global_60
  loc_B45AE3: NewIfNullPr tblPersonaGIS
  loc_B45AE6: from_stack_1v = tblPersonaGIS.DetaPersGet()
  loc_B45AEB: FLdZeroAd var_100
  loc_B45AEE: CVarStr var_EC
  loc_B45AF1: PopAdLdVar
  loc_B45AF2: FLdPr Me
  loc_B45AF5: VCallAd Control_ID_InmuebleFlex
  loc_B45AF8: FStAdFunc var_DC
  loc_B45AFB: FLdPr var_DC
  loc_B45AFE: LateIdCallSt
  loc_B45B06: FFreeAd var_88 = ""
  loc_B45B0D: FFreeVar var_98 = ""
  loc_B45B14: FLdPr Me
  loc_B45B17: VCallAd Control_ID_InmuebleFlex
  loc_B45B1A: FStAdFunc var_88
  loc_B45B1D: FLdPr var_88
  loc_B45B20: LateIdLdVar var_120 DispID_10 0
  loc_B45B27: CI4Var
  loc_B45B29: CVarI4
  loc_B45B2D: PopAdLdVar
  loc_B45B2E: LitVarI4
  loc_B45B36: PopAdLdVar
  loc_B45B37: LitI4 1
  loc_B45B3C: LitI4 1
  loc_B45B41: LitVarStr var_B8, "0.00"
  loc_B45B46: FStVarCopyObj var_EC
  loc_B45B49: FLdRfVar var_EC
  loc_B45B4C: LitVarI2 var_98, 0
  loc_B45B51: FLdRfVar var_FC
  loc_B45B54: ImpAdCallFPR4  = Format(, )
  loc_B45B59: FLdRfVar var_FC
  loc_B45B5C: CStrVarTmp
  loc_B45B5D: CVarStr var_140
  loc_B45B60: PopAdLdVar
  loc_B45B61: FLdPr Me
  loc_B45B64: VCallAd Control_ID_InmuebleFlex
  loc_B45B67: FStAdFunc var_DC
  loc_B45B6A: FLdPr var_DC
  loc_B45B6D: LateIdCallSt
  loc_B45B75: FFreeAd var_88 = ""
  loc_B45B7C: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_FC = ""
  loc_B45B89: Branch loc_B45B94
  loc_B45B8C: LitStr "NO existe el Padron"
  loc_B45B8F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B45B94: FLdPr Me
  loc_B45B97: VCallAd Control_ID_InmuebleFlex
  loc_B45B9A: FStAdFunc var_88
  loc_B45B9D: FLdPr var_88
  loc_B45BA0: LateIdLdVar var_98 DispID_11 0
  loc_B45BA7: CI4Var
  loc_B45BA9: LitI4 3
  loc_B45BAE: EqI4
  loc_B45BAF: FFree1Ad var_88
  loc_B45BB2: FFree1Var var_98 = ""
  loc_B45BB5: BranchF loc_B45CC7
  loc_B45BB8: FLdPr Me
  loc_B45BBB: VCallAd Control_ID_InmuebleFlex
  loc_B45BBE: FStAdFunc var_88
  loc_B45BC1: FLdPr var_88
  loc_B45BC4: LateIdLdVar var_98 DispID_10 0
  loc_B45BCB: CI4Var
  loc_B45BCD: CVarI4
  loc_B45BD1: PopAdLdVar
  loc_B45BD2: LitVarI4
  loc_B45BDA: PopAdLdVar
  loc_B45BDB: FLdPr Me
  loc_B45BDE: VCallAd Control_ID_InmuebleFlex
  loc_B45BE1: FStAdFunc var_DC
  loc_B45BE4: FLdPr var_DC
  loc_B45BE7: LateIdCallLdVar
  loc_B45BF1: CStrVarTmp
  loc_B45BF2: CVarStr var_FC
  loc_B45BF5: ImpAdCallI2 IsNumeric()
  loc_B45BFA: FFreeAd var_88 = ""
  loc_B45C01: FFreeVar var_98 = "": var_EC = ""
  loc_B45C0A: BranchF loc_B45CC7
  loc_B45C0D: FLdPr Me
  loc_B45C10: VCallAd Control_ID_InmuebleFlex
  loc_B45C13: FStAdFunc var_88
  loc_B45C16: FLdPr var_88
  loc_B45C19: LateIdLdVar var_98 DispID_10 0
  loc_B45C20: CI4Var
  loc_B45C22: CVarI4
  loc_B45C26: PopAdLdVar
  loc_B45C27: LitVarI4
  loc_B45C2F: PopAdLdVar
  loc_B45C30: FLdPr Me
  loc_B45C33: VCallAd Control_ID_InmuebleFlex
  loc_B45C36: FStAdFunc var_DC
  loc_B45C39: FLdPr var_DC
  loc_B45C3C: LateIdCallLdVar
  loc_B45C46: PopAd
  loc_B45C48: FLdPr Me
  loc_B45C4B: VCallAd Control_ID_InmuebleFlex
  loc_B45C4E: FStAdFunc var_154
  loc_B45C51: FLdPr var_154
  loc_B45C54: LateIdLdVar var_164 DispID_10 0
  loc_B45C5B: CI4Var
  loc_B45C5D: CVarI4
  loc_B45C61: PopAdLdVar
  loc_B45C62: LitVarI4
  loc_B45C6A: PopAdLdVar
  loc_B45C6B: LitI4 1
  loc_B45C70: LitI4 1
  loc_B45C75: LitVarStr var_110, "0.00"
  loc_B45C7A: FStVarCopyObj var_120
  loc_B45C7D: FLdRfVar var_120
  loc_B45C80: FLdRfVar var_EC
  loc_B45C83: CStrVarTmp
  loc_B45C84: CVarStr var_FC
  loc_B45C87: FLdRfVar var_140
  loc_B45C8A: ImpAdCallFPR4  = Format(, )
  loc_B45C8F: FLdRfVar var_140
  loc_B45C92: CStrVarTmp
  loc_B45C93: CVarStr var_194
  loc_B45C96: PopAdLdVar
  loc_B45C97: FLdPr Me
  loc_B45C9A: VCallAd Control_ID_InmuebleFlex
  loc_B45C9D: FStAdFunc var_1A8
  loc_B45CA0: FLdPr var_1A8
  loc_B45CA3: LateIdCallSt
  loc_B45CAB: FFreeAd var_88 = "": var_DC = "": var_154 = ""
  loc_B45CB6: FFreeVar var_98 = "": var_EC = "": var_FC = "": var_120 = "": var_164 = "": var_140 = ""
  loc_B45CC7: ExitProcHresult
End Sub

Private Sub Form_Load() 'AFCA94
  'Data Table: 43FD64
  loc_AFC8D0: ILdRf Me
  loc_AFC8D3: CastAd
  loc_AFC8D6: FStAdFunc var_88
  loc_AFC8D9: FLdRfVar var_88
  loc_AFC8DC: ImpAdCallFPR4  = Proc_272_18_AE5BF0()
  loc_AFC8E1: FFree1Ad var_88
  loc_AFC8E4: FLdPr Me
  loc_AFC8E7: VCallAd Control_ID_InmuebleFlex
  loc_AFC8EA: FStAdFunc var_8C
  loc_AFC8ED: LitVarI4
  loc_AFC8F5: PopAdLdVar
  loc_AFC8F6: LitVarI4
  loc_AFC8FE: PopAdLdVar
  loc_AFC8FF: FLdPr var_8C
  loc_AFC902: LateIdCallSt
  loc_AFC90A: LitVarI4
  loc_AFC912: PopAdLdVar
  loc_AFC913: LitVarI4
  loc_AFC91B: PopAdLdVar
  loc_AFC91C: FLdPr var_8C
  loc_AFC91F: LateIdCallSt
  loc_AFC927: LitVarI4
  loc_AFC92F: PopAdLdVar
  loc_AFC930: LitVarI4
  loc_AFC938: PopAdLdVar
  loc_AFC939: FLdPr var_8C
  loc_AFC93C: LateIdCallSt
  loc_AFC944: LitVarI4
  loc_AFC94C: PopAdLdVar
  loc_AFC94D: LitVarI4
  loc_AFC955: PopAdLdVar
  loc_AFC956: FLdPr var_8C
  loc_AFC959: LateIdCallSt
  loc_AFC961: LitVarI4
  loc_AFC969: PopAdLdVar
  loc_AFC96A: LitVarI4
  loc_AFC972: PopAdLdVar
  loc_AFC973: LitVarStr var_DC, "Cuenta"
  loc_AFC978: PopAdLdVar
  loc_AFC979: FLdPr var_8C
  loc_AFC97C: LateIdCallSt
  loc_AFC984: LitVarI4
  loc_AFC98C: PopAdLdVar
  loc_AFC98D: LitVarI4
  loc_AFC995: PopAdLdVar
  loc_AFC996: LitVarStr var_DC, "C.U.I.L."
  loc_AFC99B: PopAdLdVar
  loc_AFC99C: FLdPr var_8C
  loc_AFC99F: LateIdCallSt
  loc_AFC9A7: LitVarI4
  loc_AFC9AF: PopAdLdVar
  loc_AFC9B0: LitVarI4
  loc_AFC9B8: PopAdLdVar
  loc_AFC9B9: LitVarStr var_DC, "Apellido y Nombre"
  loc_AFC9BE: PopAdLdVar
  loc_AFC9BF: FLdPr var_8C
  loc_AFC9C2: LateIdCallSt
  loc_AFC9CA: LitVarI4
  loc_AFC9D2: PopAdLdVar
  loc_AFC9D3: LitVarI4
  loc_AFC9DB: PopAdLdVar
  loc_AFC9DC: LitVarStr var_DC, "Porcentaje"
  loc_AFC9E1: PopAdLdVar
  loc_AFC9E2: FLdPr var_8C
  loc_AFC9E5: LateIdCallSt
  loc_AFC9ED: LitNothing
  loc_AFC9EF: FStAd var_8C 
  loc_AFC9F3: LitVarStr var_9C, vbNullString
  loc_AFC9F8: LitI4 9
  loc_AFC9FD: FLdRfVar var_FC
  loc_AFCA00: ImpAdCallFPR4  = Chr()
  loc_AFCA05: FLdRfVar var_FC
  loc_AFCA08: ConcatVar var_10C
  loc_AFCA0C: LitVarStr var_AC, vbNullString
  loc_AFCA11: ConcatVar var_11C
  loc_AFCA15: LitI4 9
  loc_AFCA1A: FLdRfVar var_12C
  loc_AFCA1D: ImpAdCallFPR4  = Chr()
  loc_AFCA22: FLdRfVar var_12C
  loc_AFCA25: ConcatVar var_13C
  loc_AFCA29: LitVarStr var_BC, vbNullString
  loc_AFCA2E: ConcatVar var_14C
  loc_AFCA32: LitI4 9
  loc_AFCA37: FLdRfVar var_15C
  loc_AFCA3A: ImpAdCallFPR4  = Chr()
  loc_AFCA3F: FLdRfVar var_15C
  loc_AFCA42: ConcatVar var_16C
  loc_AFCA46: LitVarStr var_CC, vbNullString
  loc_AFCA4B: ConcatVar var_17C
  loc_AFCA4F: CStrVarTmp
  loc_AFCA50: FStStrNoPop var_180
  loc_AFCA53: FLdPr Me
  loc_AFCA56: MemStStrCopy
  loc_AFCA5A: FFree1Str var_180
  loc_AFCA5D: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = ""
  loc_AFCA72: FLdPr Me
  loc_AFCA75: MemLdRfVar from_stack_1.global_80
  loc_AFCA78: CDargRef
  loc_AFCA7C: FLdPr Me
  loc_AFCA7F: VCallAd Control_ID_InmuebleFlex
  loc_AFCA82: FStAdFunc var_88
  loc_AFCA85: FLdPr var_88
  loc_AFCA88: LateIdCall
  loc_AFCA90: FFree1Ad var_88
  loc_AFCA93: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B911C
  'Data Table: 43FD64
  loc_9B9108: ILdI2 KeyCode
  loc_9B910B: CI4UI1
  loc_9B910C: LitI4 &H78
  loc_9B9111: EqI4
  loc_9B9112: BranchF loc_9B911A
  loc_9B9115: Call SalirCmd_Click()
  loc_9B911A: ExitProcHresult
End Sub

Private Function Proc_334_11_AE664C() 'AE664C
  'Data Table: 43FD64
  loc_AE64F4: FLdPr Me
  loc_AE64F7: VCallAd Control_ID_InmuebleFlex
  loc_AE64FA: FStAdFunc var_88
  loc_AE64FD: FLdPr var_88
  loc_AE6500: LateIdCall
  loc_AE6508: LitVarI4
  loc_AE6510: PopAdLdVar
  loc_AE6511: FLdPr var_88
  loc_AE6514: LateIdSt
  loc_AE6519: LitVarI4
  loc_AE6521: PopAdLdVar
  loc_AE6522: LitVarI4
  loc_AE652A: PopAdLdVar
  loc_AE652B: LitVarStr var_D8, "Cuenta"
  loc_AE6530: PopAdLdVar
  loc_AE6531: FLdPr var_88
  loc_AE6534: LateIdCallSt
  loc_AE653C: LitVarI4
  loc_AE6544: PopAdLdVar
  loc_AE6545: LitVarI4
  loc_AE654D: PopAdLdVar
  loc_AE654E: LitVarStr var_D8, "C.U.I.L."
  loc_AE6553: PopAdLdVar
  loc_AE6554: FLdPr var_88
  loc_AE6557: LateIdCallSt
  loc_AE655F: LitVarI4
  loc_AE6567: PopAdLdVar
  loc_AE6568: LitVarI4
  loc_AE6570: PopAdLdVar
  loc_AE6571: LitVarStr var_D8, "Apellido y Nombre"
  loc_AE6576: PopAdLdVar
  loc_AE6577: FLdPr var_88
  loc_AE657A: LateIdCallSt
  loc_AE6582: LitVarI4
  loc_AE658A: PopAdLdVar
  loc_AE658B: LitVarI4
  loc_AE6593: PopAdLdVar
  loc_AE6594: LitVarStr var_D8, "Porcentaje"
  loc_AE6599: PopAdLdVar
  loc_AE659A: FLdPr var_88
  loc_AE659D: LateIdCallSt
  loc_AE65A5: LitNothing
  loc_AE65A7: FStAd var_88 
  loc_AE65AB: LitVarStr var_98, vbNullString
  loc_AE65B0: LitI4 9
  loc_AE65B5: FLdRfVar var_F8
  loc_AE65B8: ImpAdCallFPR4  = Chr()
  loc_AE65BD: FLdRfVar var_F8
  loc_AE65C0: ConcatVar var_108
  loc_AE65C4: LitVarStr var_A8, vbNullString
  loc_AE65C9: ConcatVar var_118
  loc_AE65CD: LitI4 9
  loc_AE65D2: FLdRfVar var_128
  loc_AE65D5: ImpAdCallFPR4  = Chr()
  loc_AE65DA: FLdRfVar var_128
  loc_AE65DD: ConcatVar var_138
  loc_AE65E1: LitVarStr var_B8, vbNullString
  loc_AE65E6: ConcatVar var_148
  loc_AE65EA: LitI4 9
  loc_AE65EF: FLdRfVar var_158
  loc_AE65F2: ImpAdCallFPR4  = Chr()
  loc_AE65F7: FLdRfVar var_158
  loc_AE65FA: ConcatVar var_168
  loc_AE65FE: LitVarStr var_C8, vbNullString
  loc_AE6603: ConcatVar var_178
  loc_AE6607: CStrVarTmp
  loc_AE6608: FStStrNoPop var_17C
  loc_AE660B: FLdPr Me
  loc_AE660E: MemStStrCopy
  loc_AE6612: FFree1Str var_17C
  loc_AE6615: FFreeVar var_F8 = "": var_108 = "": var_118 = "": var_128 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = ""
  loc_AE662A: FLdPr Me
  loc_AE662D: MemLdRfVar from_stack_1.global_80
  loc_AE6630: CDargRef
  loc_AE6634: FLdPr Me
  loc_AE6637: VCallAd Control_ID_InmuebleFlex
  loc_AE663A: FStAdFunc var_180
  loc_AE663D: FLdPr var_180
  loc_AE6640: LateIdCall
  loc_AE6648: FFree1Ad var_180
  loc_AE664B: ExitProcHresult
End Function

Private Function Proc_334_12_AAF218() 'AAF218
  'Data Table: 43FD64
  loc_AAF144: LitI2_Byte 0
  loc_AAF146: CR8I2
  loc_AAF147: FLdPr Me
  loc_AAF14A: MemStFPR8 global_68
  loc_AAF14D: LitI2_Byte 1
  loc_AAF14F: FLdPr Me
  loc_AAF152: MemLdRfVar from_stack_1.global_84
  loc_AAF155: FLdPr Me
  loc_AAF158: VCallAd Control_ID_InmuebleFlex
  loc_AAF15B: FStAdFunc var_88
  loc_AAF15E: FLdPr var_88
  loc_AAF161: LateIdLdVar var_98 DispID_4 0
  loc_AAF168: CI4Var
  loc_AAF16A: LitI4 1
  loc_AAF16F: SubI4
  loc_AAF170: CI2I4
  loc_AAF171: FFree1Ad var_88
  loc_AAF174: FFree1Var var_98 = ""
  loc_AAF177: ForI2 var_9C
  loc_AAF17D: FLdPr Me
  loc_AAF180: MemLdI2 global_84
  loc_AAF183: CI4UI1
  loc_AAF184: CVarI4
  loc_AAF188: PopAdLdVar
  loc_AAF189: LitVarI4
  loc_AAF191: PopAdLdVar
  loc_AAF192: FLdPr Me
  loc_AAF195: VCallAd Control_ID_InmuebleFlex
  loc_AAF198: FStAdFunc var_88
  loc_AAF19B: FLdPr var_88
  loc_AAF19E: LateIdCallLdVar
  loc_AAF1A8: CStrVarTmp
  loc_AAF1A9: CVarStr var_EC
  loc_AAF1AC: ImpAdCallI2 IsNumeric()
  loc_AAF1B1: FFree1Ad var_88
  loc_AAF1B4: FFreeVar var_98 = ""
  loc_AAF1BB: BranchF loc_AAF20A
  loc_AAF1BE: FLdPr Me
  loc_AAF1C1: MemLdI2 global_84
  loc_AAF1C4: CI4UI1
  loc_AAF1C5: CVarI4
  loc_AAF1C9: PopAdLdVar
  loc_AAF1CA: LitVarI4
  loc_AAF1D2: PopAdLdVar
  loc_AAF1D3: FLdPr Me
  loc_AAF1D6: VCallAd Control_ID_InmuebleFlex
  loc_AAF1D9: FStAdFunc var_88
  loc_AAF1DC: FLdPr var_88
  loc_AAF1DF: LateIdCallLdVar
  loc_AAF1E9: PopAd
  loc_AAF1EB: FLdPr Me
  loc_AAF1EE: MemLdFPR8 global_68
  loc_AAF1F1: FLdRfVar var_98
  loc_AAF1F4: CStrVarTmp
  loc_AAF1F5: FStStrNoPop var_F0
  loc_AAF1F8: CR8Str
  loc_AAF1FA: AddR8
  loc_AAF1FB: FLdPr Me
  loc_AAF1FE: MemStFPR8 global_68
  loc_AAF201: FFree1Str var_F0
  loc_AAF204: FFree1Ad var_88
  loc_AAF207: FFree1Var var_98 = ""
  loc_AAF20A: FLdPr Me
  loc_AAF20D: MemLdRfVar from_stack_1.global_84
  loc_AAF210: NextI2 var_9C, loc_AAF17D
  loc_AAF215: ExitProcHresult
End Function
