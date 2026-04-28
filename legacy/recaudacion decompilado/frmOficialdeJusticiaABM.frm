VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmOficialdeJusticiaABM
  Caption = "Oficial de Justicia"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmOficialdeJusticiaABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 12564
  ClientHeight = 10320
  Begin VB.Frame Frame1
    Left = 120
    Top = 5640
    Width = 12480
    Height = 1560
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox DetaOfjuTxt
      ForeColor = &HFF0000&
      Left = 1320
      Top = 840
      Width = 7035
      Height = 375
      TabIndex = 5
      MaxLength = 40
      DataField = "DetaOfju"
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
    Begin VB.TextBox CodiOfjuTxt
      ForeColor = &HFF0000&
      Left = 1320
      Top = 360
      Width = 555
      Height = 375
      TabIndex = 3
      MaxLength = 3
      DataField = "CodiOfju"
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
    Begin VB.Label Label3
      Caption = "Detalle:"
      Left = 480
      Top = 840
      Width = 810
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
    Begin VB.Label Label2
      Caption = "Código:"
      Left = 480
      Top = 360
      Width = 810
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
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 780
    Width = 8160
    Height = 4635
    TabIndex = 0
    OleObjectBlob = "frmOficialdeJusticiaABM.frx":324A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmOficialdeJusticiaABM.frx":3444
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 12564
    Height = 528
    TabIndex = 6
    OleObjectBlob = "frmOficialdeJusticiaABM.frx":AFC2
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 7
      TabStop = 0   'False
      Picture = "frmOficialdeJusticiaABM.frx":B51E
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmOficialdeJusticiaABM"


Private Sub CodiOfjuTxt_GotFocus() '9C39B0
  'Data Table: 42D8B0
  loc_9C399C: FLdPr Me
  loc_9C399F: VCallAd Control_ID_CodiOfjuTxt
  loc_9C39A2: CVarAd
  loc_9C39A6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C39AB: FFree1Var var_94 = ""
  loc_9C39AE: ExitProcHresult
End Sub

Private Sub CodiOfjuTxt_KeyPress(KeyAscii As Integer) '9CFA44
  'Data Table: 42D8B0
  loc_9CFA2C: LitStr "0123456789"
  loc_9CFA2F: FStStrCopy var_88
  loc_9CFA32: FLdRfVar var_88
  loc_9CFA35: ILdRf KeyAscii
  loc_9CFA38: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CFA3D: IStI2 KeyAscii
  loc_9CFA40: FFree1Str var_88
  loc_9CFA43: ExitProcHresult
End Sub

Private Sub CodiOfjuTxt_Validate(Cancel As Boolean) 'A84B50
  'Data Table: 42D8B0
  loc_A84AC4: FLdRfVar var_8A
  loc_A84AC7: FLdPr Me
  loc_A84ACA: VCallAd Control_ID_CodiOfjuTxt
  loc_A84ACD: FStAdFunc var_88
  loc_A84AD0: FLdPr var_88
  loc_A84AD3:  = Me.Enabled
  loc_A84AD8: FLdI2 var_8A
  loc_A84ADB: LitI2_Byte &HFF
  loc_A84ADD: EqI2
  loc_A84ADE: FFree1Ad var_88
  loc_A84AE1: BranchF loc_A84B4C
  loc_A84AE4: FLdRfVar var_90
  loc_A84AE7: FLdPr Me
  loc_A84AEA: VCallAd Control_ID_CodiOfjuTxt
  loc_A84AED: FStAdFunc var_88
  loc_A84AF0: FLdPr var_88
  loc_A84AF3:  = Me.Text
  loc_A84AF8: LitI2_Byte 0
  loc_A84AFA: LitI2_Byte 0
  loc_A84AFC: ILdRf var_90
  loc_A84AFF: LitStr "codigo"
  loc_A84B02: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A84B07: FStStrNoPop var_94
  loc_A84B0A: FLdPr Me
  loc_A84B0D: MemStStrCopy
  loc_A84B11: FFreeStr var_90 = ""
  loc_A84B18: FFree1Ad var_88
  loc_A84B1B: FLdPr Me
  loc_A84B1E: MemLdStr global_60
  loc_A84B21: LitStr vbNullString
  loc_A84B24: NeStr
  loc_A84B26: BranchF loc_A84B4C
  loc_A84B29: FLdPr Me
  loc_A84B2C: MemLdStr global_60
  loc_A84B2F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A84B34: FLdPr Me
  loc_A84B37: VCallAd Control_ID_CodiOfjuTxt
  loc_A84B3A: CVarAd
  loc_A84B3E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A84B43: FFree1Var var_A4 = ""
  loc_A84B46: LitI2_Byte &HFF
  loc_A84B48: IStI2 Cancel
  loc_A84B4B: ExitProcHresult
  loc_A84B4C: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A932D0
  'Data Table: 42D8B0
  loc_A93230: LitI2_Byte 0
  loc_A93232: FLdPr Me
  loc_A93235: MemStI2 global_56
  loc_A93238: LitI2_Byte 0
  loc_A9323A: ILdRf Me
  loc_A9323D: CastAd
  loc_A93240: FStAdFunc var_88
  loc_A93243: FLdRfVar var_88
  loc_A93246: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_A9324B: FFree1Ad var_88
  loc_A9324E: LitI4 0
  loc_A93253: LitI4 0
  loc_A93258: FLdRfVar var_8C
  loc_A9325B: Redim
  loc_A93265: FLdPr Me
  loc_A93268: VCallAd Control_ID_dgdABMS
  loc_A9326B: CVarAd
  loc_A9326F: ParmAry1St
  loc_A93275: FLdRfVar var_8C
  loc_A93278: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A9327D: FLdRfVar var_8C
  loc_A93280: Erase
  loc_A93281: FLdPr Me
  loc_A93284: MemLdRfVar from_stack_1.global_52
  loc_A93287: NewIfNullAd
  loc_A9328A: FStAd var_A0 
  loc_A9328E: FLdRfVar var_A0
  loc_A93291: CVarRef
  loc_A93296: ILdRf Me
  loc_A93299: CastAd
  loc_A9329C: FStAdFunc var_88
  loc_A9329F: FLdRfVar var_88
  loc_A932A2: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_A932A7: ILdRf var_A0
  loc_A932AA: CastAd
  loc_A932AD: FLdPr Me
  loc_A932B0: MemStAdFunc
  loc_A932B4: FFreeAd var_88 = ""
  loc_A932BB: ILdRf Me
  loc_A932BE: CastAd
  loc_A932C1: FStAdFunc var_88
  loc_A932C4: FLdRfVar var_88
  loc_A932C7: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_A932CC: FFree1Ad var_88
  loc_A932CF: ExitProcHresult
End Sub

Private Sub DetaOfjuTxt_GotFocus() '9C3260
  'Data Table: 42D8B0
  loc_9C324C: FLdPr Me
  loc_9C324F: VCallAd Control_ID_DetaOfjuTxt
  loc_9C3252: CVarAd
  loc_9C3256: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C325B: FFree1Var var_94 = ""
  loc_9C325E: ExitProcHresult
End Sub

Private Sub DetaOfjuTxt_Validate(Cancel As Boolean) 'A91620
  'Data Table: 42D8B0
  loc_A91580: FLdRfVar var_8A
  loc_A91583: FLdPr Me
  loc_A91586: VCallAd Control_ID_cmdCancelar
  loc_A91589: FStAdFunc var_88
  loc_A9158C: FLdPr var_88
  loc_A9158F:  = Me.Value
  loc_A91594: FLdI2 var_8A
  loc_A91597: NotI4
  loc_A91598: FLdRfVar var_92
  loc_A9159B: FLdPr Me
  loc_A9159E: VCallAd Control_ID_DetaOfjuTxt
  loc_A915A1: FStAdFunc var_90
  loc_A915A4: FLdPr var_90
  loc_A915A7:  = Me.Enabled
  loc_A915AC: FLdI2 var_92
  loc_A915AF: AndI4
  loc_A915B0: FFreeAd var_88 = ""
  loc_A915B7: BranchF loc_A9161D
  loc_A915BA: FLdRfVar var_98
  loc_A915BD: FLdPr Me
  loc_A915C0: VCallAd Control_ID_DetaOfjuTxt
  loc_A915C3: FStAdFunc var_88
  loc_A915C6: FLdPr var_88
  loc_A915C9:  = Me.Text
  loc_A915CE: ILdRf var_98
  loc_A915D1: LitStr "Servicio de Cementerio"
  loc_A915D4: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A915D9: FStStrNoPop var_9C
  loc_A915DC: FLdPr Me
  loc_A915DF: MemStStrCopy
  loc_A915E3: FFreeStr var_98 = ""
  loc_A915EA: FFree1Ad var_88
  loc_A915ED: FLdPr Me
  loc_A915F0: MemLdStr global_60
  loc_A915F3: LitStr vbNullString
  loc_A915F6: NeStr
  loc_A915F8: BranchF loc_A9161D
  loc_A915FB: FLdPr Me
  loc_A915FE: MemLdStr global_60
  loc_A91601: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A91606: FLdPr Me
  loc_A91609: VCallAd Control_ID_DetaOfjuTxt
  loc_A9160C: CVarAd
  loc_A91610: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A91615: FFree1Var var_AC = ""
  loc_A91618: LitI2_Byte &HFF
  loc_A9161A: IStI2 Cancel
  loc_A9161D: ExitProcHresult
  loc_A9161E: AryUnlock
End Sub

Private Sub Form_Load() 'A89388
  'Data Table: 42D8B0
  loc_A892F8: LitI2_Byte 0
  loc_A892FA: CR8I2
  loc_A892FB: PopFPR4
  loc_A892FC: FLdPr Me
  loc_A892FF: Me.Left = from_stack_1s
  loc_A89304: LitI2_Byte 0
  loc_A89306: CR8I2
  loc_A89307: PopFPR4
  loc_A89308: FLdPr Me
  loc_A8930B: Me.Top = from_stack_1s
  loc_A89310: LitStr "SELECT * FROM oficjust ORDER BY CodiOfju"
  loc_A89313: FLdPr Me
  loc_A89316: MemLdRfVar from_stack_1.global_52
  loc_A89319: NewIfNullPr clsoficjust
  loc_A8931C: Call clsoficjust.RedefineRS(from_stack_1v)
  loc_A89321: LitI4 0
  loc_A89326: LitI4 1
  loc_A8932B: FLdRfVar var_88
  loc_A8932E: Redim
  loc_A89338: FLdPr Me
  loc_A8933B: MemLdRfVar from_stack_1.global_52
  loc_A8933E: NewIfNullAd
  loc_A89341: FStAd var_8C 
  loc_A89345: FLdRfVar var_8C
  loc_A89348: CVarRef
  loc_A8934D: ParmAry1St
  loc_A89353: FLdPr Me
  loc_A89356: VCallAd Control_ID_dgdABMS
  loc_A89359: CVarAd
  loc_A8935D: ParmAry1St
  loc_A89363: FLdRfVar var_88
  loc_A89366: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8936B: ILdRf var_8C
  loc_A8936E: CastAd
  loc_A89371: FLdPr Me
  loc_A89374: MemStAdFunc
  loc_A89378: FLdRfVar var_88
  loc_A8937B: Erase
  loc_A8937C: FFree1Ad var_8C
  loc_A8937F: Call cmdCancelar_Click()
  loc_A89384: ExitProcHresult
  loc_A89385: MemLdR8 global_818
End Sub

Private Sub Form_Activate() 'A65DC0
  'Data Table: 42D8B0
  loc_A65D64: FLdRfVar var_C2
  loc_A65D67: FLdRfVar var_C0
  loc_A65D6A: LitVarI2 var_B8, 1
  loc_A65D6F: FLdPr Me
  loc_A65D72: VCallAd Control_ID_tlbABMS
  loc_A65D75: FStAdFunc var_88
  loc_A65D78: FLdPr var_88
  loc_A65D7B: LateIdLdVar var_98 DispID_3 0
  loc_A65D82: CastAdVar Me
  loc_A65D86: FStAdFunc var_BC
  loc_A65D89: FLdPr var_BC
  loc_A65D8C:  = Me.Buttons.ControlDefault
  loc_A65D91: FLdPr var_C0
  loc_A65D94:  = Me.Enabled
  loc_A65D99: FLdI2 var_C2
  loc_A65D9C: FFreeAd var_88 = "": var_BC = ""
  loc_A65DA5: FFreeVar var_98 = ""
  loc_A65DAC: BranchF loc_A65DBD
  loc_A65DAF: FLdPr Me
  loc_A65DB2: MemLdRfVar from_stack_1.global_52
  loc_A65DB5: NewIfNullPr clsoficjust
  loc_A65DB8: Call clsoficjust.Requery()
  loc_A65DBD: ExitProcHresult
  loc_A65DBE: AryLock
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9CFADC
  'Data Table: 42D8B0
  loc_9CFAC4: ILdI2 KeyAscii
  loc_9CFAC7: LitI2_Byte &HD
  loc_9CFAC9: EqI2
  loc_9CFACA: BranchF loc_9CFADB
  loc_9CFACD: LitVar_TRUE var_A4
  loc_9CFAD0: LitStr "{Tab}"
  loc_9CFAD3: ImpAdCallFPR4 SendKeys , 
  loc_9CFAD8: FFree1Var var_A4 = ""
  loc_9CFADB: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9CFB28
  'Data Table: 42D8B0
  loc_9CFB10: ILdI2 KeyCode
  loc_9CFB13: ILdRf Me
  loc_9CFB16: CastAd
  loc_9CFB19: FStAdFunc var_88
  loc_9CFB1C: FLdRfVar var_88
  loc_9CFB1F: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9CFB24: FFree1Ad var_88
  loc_9CFB27: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B5DE68
  'Data Table: 42D8B0
  loc_B5DA6C: ILdRf Button
  loc_B5DA6F: FStAd var_88 
  loc_B5DA73: FLdRfVar var_90
  loc_B5DA76: FLdPr var_88
  loc_B5DA79:  = Me.Key
  loc_B5DA7E: FLdZeroAd var_90
  loc_B5DA81: FStStr var_94
  loc_B5DA84: ILdRf var_94
  loc_B5DA87: LitStr "btnCrear"
  loc_B5DA8A: EqStr
  loc_B5DA8C: BranchF loc_B5DB48
  loc_B5DA8F: LitI2_Byte 1
  loc_B5DA91: FLdPr Me
  loc_B5DA94: MemStI2 global_56
  loc_B5DA97: ILdRf Me
  loc_B5DA9A: CastAd
  loc_B5DA9D: FStAdFunc var_98
  loc_B5DAA0: FLdRfVar var_98
  loc_B5DAA3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B5DAA8: FFree1Ad var_98
  loc_B5DAAB: LitI4 0
  loc_B5DAB0: LitI4 0
  loc_B5DAB5: FLdRfVar var_9C
  loc_B5DAB8: Redim
  loc_B5DAC2: FLdPr Me
  loc_B5DAC5: VCallAd Control_ID_dgdABMS
  loc_B5DAC8: CVarAd
  loc_B5DACC: ParmAry1St
  loc_B5DAD2: FLdRfVar var_9C
  loc_B5DAD5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B5DADA: FLdRfVar var_9C
  loc_B5DADD: Erase
  loc_B5DADE: ILdRf Me
  loc_B5DAE1: CastAd
  loc_B5DAE4: FStAdFunc var_98
  loc_B5DAE7: FLdRfVar var_98
  loc_B5DAEA: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B5DAEF: FFree1Ad var_98
  loc_B5DAF2: ILdRf Me
  loc_B5DAF5: CastAd
  loc_B5DAF8: FStAdFunc var_98
  loc_B5DAFB: FLdRfVar var_98
  loc_B5DAFE: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_B5DB03: FFree1Ad var_98
  loc_B5DB06: ILdRf Me
  loc_B5DB09: CastAd
  loc_B5DB0C: FStAdFunc var_98
  loc_B5DB0F: FLdRfVar var_98
  loc_B5DB12: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B5DB17: FFree1Ad var_98
  loc_B5DB1A: LitStr "0"
  loc_B5DB1D: FLdPr Me
  loc_B5DB20: VCallAd Control_ID_CodiOfjuTxt
  loc_B5DB23: FStAdFunc var_98
  loc_B5DB26: FLdPr var_98
  loc_B5DB29: Me.Text = from_stack_1
  loc_B5DB2E: FFree1Ad var_98
  loc_B5DB31: FLdPr Me
  loc_B5DB34: VCallAd Control_ID_CodiOfjuTxt
  loc_B5DB37: FStAdFunc var_98
  loc_B5DB3A: FLdPr var_98
  loc_B5DB3D: Me.SetFocus
  loc_B5DB42: FFree1Ad var_98
  loc_B5DB45: Branch loc_B5DE65
  loc_B5DB48: ILdRf var_94
  loc_B5DB4B: LitStr "btnModificar"
  loc_B5DB4E: EqStr
  loc_B5DB50: BranchF loc_B5DC31
  loc_B5DB53: FLdRfVar var_B0
  loc_B5DB56: FLdPr Me
  loc_B5DB59: MemLdRfVar from_stack_1.global_52
  loc_B5DB5C: NewIfNullPr clsoficjust
  loc_B5DB5F: from_stack_1 = clsoficjust.RecordCount
  loc_B5DB64: ILdRf var_B0
  loc_B5DB67: LitI4 0
  loc_B5DB6C: GtI4
  loc_B5DB6D: BranchF loc_B5DC2E
  loc_B5DB70: LitI2_Byte 2
  loc_B5DB72: FLdPr Me
  loc_B5DB75: MemStI2 global_56
  loc_B5DB78: ILdRf Me
  loc_B5DB7B: CastAd
  loc_B5DB7E: FStAdFunc var_98
  loc_B5DB81: FLdRfVar var_98
  loc_B5DB84: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_B5DB89: FFree1Ad var_98
  loc_B5DB8C: LitI4 0
  loc_B5DB91: LitI4 0
  loc_B5DB96: FLdRfVar var_9C
  loc_B5DB99: Redim
  loc_B5DBA3: FLdPr Me
  loc_B5DBA6: VCallAd Control_ID_dgdABMS
  loc_B5DBA9: CVarAd
  loc_B5DBAD: ParmAry1St
  loc_B5DBB3: FLdRfVar var_9C
  loc_B5DBB6: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B5DBBB: FLdRfVar var_9C
  loc_B5DBBE: Erase
  loc_B5DBBF: ILdRf Me
  loc_B5DBC2: CastAd
  loc_B5DBC5: FStAdFunc var_98
  loc_B5DBC8: FLdRfVar var_98
  loc_B5DBCB: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_B5DBD0: FFree1Ad var_98
  loc_B5DBD3: ILdRf Me
  loc_B5DBD6: CastAd
  loc_B5DBD9: FStAdFunc var_98
  loc_B5DBDC: FLdRfVar var_98
  loc_B5DBDF: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_B5DBE4: FFree1Ad var_98
  loc_B5DBE7: LitI4 0
  loc_B5DBEC: LitI4 0
  loc_B5DBF1: FLdRfVar var_9C
  loc_B5DBF4: Redim
  loc_B5DBFE: FLdPr Me
  loc_B5DC01: VCallAd Control_ID_CodiOfjuTxt
  loc_B5DC04: CVarAd
  loc_B5DC08: ParmAry1St
  loc_B5DC0E: FLdRfVar var_9C
  loc_B5DC11: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B5DC16: FLdRfVar var_9C
  loc_B5DC19: Erase
  loc_B5DC1A: FLdPr Me
  loc_B5DC1D: VCallAd Control_ID_DetaOfjuTxt
  loc_B5DC20: FStAdFunc var_98
  loc_B5DC23: FLdPr var_98
  loc_B5DC26: Me.SetFocus
  loc_B5DC2B: FFree1Ad var_98
  loc_B5DC2E: Branch loc_B5DE65
  loc_B5DC31: ILdRf var_94
  loc_B5DC34: LitStr "btnEliminar"
  loc_B5DC37: EqStr
  loc_B5DC39: BranchF loc_B5DC5C
  loc_B5DC3C: FLdRfVar var_B0
  loc_B5DC3F: FLdPr Me
  loc_B5DC42: MemLdRfVar from_stack_1.global_52
  loc_B5DC45: NewIfNullPr clsoficjust
  loc_B5DC48: from_stack_1 = clsoficjust.RecordCount
  loc_B5DC4D: ILdRf var_B0
  loc_B5DC50: LitI4 0
  loc_B5DC55: GtI4
  loc_B5DC56: BranchF loc_B5DC59
  loc_B5DC59: Branch loc_B5DE65
  loc_B5DC5C: ILdRf var_94
  loc_B5DC5F: LitStr "btnGuardar"
  loc_B5DC62: EqStr
  loc_B5DC64: BranchF loc_B5DD61
  loc_B5DC67: LitStr vbNullString
  loc_B5DC6A: FLdPr Me
  loc_B5DC6D: MemStStrCopy
  loc_B5DC71: LitI2_Byte 0
  loc_B5DC73: PopTmpLdAd2 var_B2
  loc_B5DC76: Call CodiOfjuTxt_Validate(from_stack_1v)
  loc_B5DC7B: FLdPr Me
  loc_B5DC7E: MemLdStr global_60
  loc_B5DC81: LitStr vbNullString
  loc_B5DC84: NeStr
  loc_B5DC86: BranchF loc_B5DC8A
  loc_B5DC89: ExitProcHresult
  loc_B5DC8A: LitI2_Byte 0
  loc_B5DC8C: PopTmpLdAd2 var_B2
  loc_B5DC8F: Call DetaOfjuTxt_Validate(from_stack_1v)
  loc_B5DC94: FLdPr Me
  loc_B5DC97: MemLdStr global_60
  loc_B5DC9A: LitStr vbNullString
  loc_B5DC9D: NeStr
  loc_B5DC9F: BranchF loc_B5DCA3
  loc_B5DCA2: ExitProcHresult
  loc_B5DCA3: FLdPr Me
  loc_B5DCA6: MemLdI2 global_56
  loc_B5DCA9: FStI2 var_B4
  loc_B5DCAC: FLdI2 var_B4
  loc_B5DCAF: LitI2_Byte 1
  loc_B5DCB1: EqI2
  loc_B5DCB2: BranchF loc_B5DD04
  loc_B5DCB5: FLdRfVar var_90
  loc_B5DCB8: FLdPr Me
  loc_B5DCBB: VCallAd Control_ID_CodiOfjuTxt
  loc_B5DCBE: FStAdFunc var_98
  loc_B5DCC1: FLdPr var_98
  loc_B5DCC4:  = Me.Text
  loc_B5DCC9: FLdRfVar var_BC
  loc_B5DCCC: FLdPr Me
  loc_B5DCCF: VCallAd Control_ID_DetaOfjuTxt
  loc_B5DCD2: FStAdFunc var_B8
  loc_B5DCD5: FLdPr var_B8
  loc_B5DCD8:  = Me.Text
  loc_B5DCDD: ILdRf var_BC
  loc_B5DCE0: ILdRf var_90
  loc_B5DCE3: CI2Str
  loc_B5DCE5: FLdPr Me
  loc_B5DCE8: MemLdRfVar from_stack_1.global_52
  loc_B5DCEB: NewIfNullPr clsoficjust
  loc_B5DCEE: Call clsoficjust.AddNew(from_stack_1v, from_stack_2v)
  loc_B5DCF3: FFreeStr var_90 = ""
  loc_B5DCFA: FFreeAd var_98 = ""
  loc_B5DD01: Branch loc_B5DD59
  loc_B5DD04: FLdI2 var_B4
  loc_B5DD07: LitI2_Byte 2
  loc_B5DD09: EqI2
  loc_B5DD0A: BranchF loc_B5DD59
  loc_B5DD0D: FLdRfVar var_90
  loc_B5DD10: FLdPr Me
  loc_B5DD13: VCallAd Control_ID_CodiOfjuTxt
  loc_B5DD16: FStAdFunc var_98
  loc_B5DD19: FLdPr var_98
  loc_B5DD1C:  = Me.Text
  loc_B5DD21: FLdRfVar var_BC
  loc_B5DD24: FLdPr Me
  loc_B5DD27: VCallAd Control_ID_DetaOfjuTxt
  loc_B5DD2A: FStAdFunc var_B8
  loc_B5DD2D: FLdPr var_B8
  loc_B5DD30:  = Me.Text
  loc_B5DD35: ILdRf var_BC
  loc_B5DD38: ILdRf var_90
  loc_B5DD3B: CI2Str
  loc_B5DD3D: FLdPr Me
  loc_B5DD40: MemLdRfVar from_stack_1.global_52
  loc_B5DD43: NewIfNullPr clsoficjust
  loc_B5DD46: Call clsoficjust.Modificar(from_stack_1v, from_stack_2v)
  loc_B5DD4B: FFreeStr var_90 = ""
  loc_B5DD52: FFreeAd var_98 = ""
  loc_B5DD59: Call cmdCancelar_Click()
  loc_B5DD5E: Branch loc_B5DE65
  loc_B5DD61: ILdRf var_94
  loc_B5DD64: LitStr "btnCancelar"
  loc_B5DD67: EqStr
  loc_B5DD69: BranchF loc_B5DD74
  loc_B5DD6C: Call cmdCancelar_Click()
  loc_B5DD71: Branch loc_B5DE65
  loc_B5DD74: ILdRf var_94
  loc_B5DD77: LitStr "btnPrimero"
  loc_B5DD7A: EqStr
  loc_B5DD7C: BranchF loc_B5DD90
  loc_B5DD7F: FLdPr Me
  loc_B5DD82: MemLdRfVar from_stack_1.global_52
  loc_B5DD85: NewIfNullPr clsoficjust
  loc_B5DD88: Call clsoficjust.MoveFirst()
  loc_B5DD8D: Branch loc_B5DE65
  loc_B5DD90: ILdRf var_94
  loc_B5DD93: LitStr "btnAnterior"
  loc_B5DD96: EqStr
  loc_B5DD98: BranchF loc_B5DDAC
  loc_B5DD9B: FLdPr Me
  loc_B5DD9E: MemLdRfVar from_stack_1.global_52
  loc_B5DDA1: NewIfNullPr clsoficjust
  loc_B5DDA4: Call clsoficjust.MovePrevious()
  loc_B5DDA9: Branch loc_B5DE65
  loc_B5DDAC: ILdRf var_94
  loc_B5DDAF: LitStr "btnSiguiente"
  loc_B5DDB2: EqStr
  loc_B5DDB4: BranchF loc_B5DDC8
  loc_B5DDB7: FLdPr Me
  loc_B5DDBA: MemLdRfVar from_stack_1.global_52
  loc_B5DDBD: NewIfNullPr clsoficjust
  loc_B5DDC0: Call clsoficjust.MoveNext()
  loc_B5DDC5: Branch loc_B5DE65
  loc_B5DDC8: ILdRf var_94
  loc_B5DDCB: LitStr "btnUltimo"
  loc_B5DDCE: EqStr
  loc_B5DDD0: BranchF loc_B5DDE4
  loc_B5DDD3: FLdPr Me
  loc_B5DDD6: MemLdRfVar from_stack_1.global_52
  loc_B5DDD9: NewIfNullPr clsoficjust
  loc_B5DDDC: Call clsoficjust.MoveLast()
  loc_B5DDE1: Branch loc_B5DE65
  loc_B5DDE4: ILdRf var_94
  loc_B5DDE7: LitStr "btnFiltrar"
  loc_B5DDEA: EqStr
  loc_B5DDEC: BranchF loc_B5DDF2
  loc_B5DDEF: Branch loc_B5DE65
  loc_B5DDF2: ILdRf var_94
  loc_B5DDF5: LitStr "btnBuscar"
  loc_B5DDF8: EqStr
  loc_B5DDFA: BranchF loc_B5DE00
  loc_B5DDFD: Branch loc_B5DE65
  loc_B5DE00: ILdRf var_94
  loc_B5DE03: LitStr "btnImprimir"
  loc_B5DE06: EqStr
  loc_B5DE08: BranchF loc_B5DE0E
  loc_B5DE0B: Branch loc_B5DE65
  loc_B5DE0E: ILdRf var_94
  loc_B5DE11: LitStr "btnAyuda"
  loc_B5DE14: EqStr
  loc_B5DE16: BranchF loc_B5DE45
  loc_B5DE19: LitVar_Missing var_12C
  loc_B5DE1C: LitVar_Missing var_10C
  loc_B5DE1F: LitVar_Missing var_EC
  loc_B5DE22: LitI4 0
  loc_B5DE27: LitVarStr var_CC, "Opcion no disponible en esta version."
  loc_B5DE2C: FStVarCopyObj var_AC
  loc_B5DE2F: FLdRfVar var_AC
  loc_B5DE32: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B5DE37: FFreeVar var_AC = "": var_EC = "": var_10C = ""
  loc_B5DE42: Branch loc_B5DE65
  loc_B5DE45: ILdRf var_94
  loc_B5DE48: LitStr "btnSalir"
  loc_B5DE4B: EqStr
  loc_B5DE4D: BranchF loc_B5DE65
  loc_B5DE50: ILdRf Me
  loc_B5DE53: FStAdNoPop
  loc_B5DE57: ImpAdLdRf MemVar_D9C5D8
  loc_B5DE5A: NewIfNullPr Global
  loc_B5DE5D: Global.Unload from_stack_1
  loc_B5DE62: FFree1Ad var_98
  loc_B5DE65: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A66FA8
  'Data Table: 42D8B0
  loc_A66F4C: FLdRfVar var_B4
  loc_A66F4F: FLdRfVar var_B0
  loc_A66F52: FLdI2 ColIndex
  loc_A66F55: CVarI2 var_A8
  loc_A66F58: PopAdLdVar
  loc_A66F59: FLdPr Me
  loc_A66F5C: VCallAd Control_ID_dgdABMS
  loc_A66F5F: FStAdFunc var_88
  loc_A66F62: FLdPr var_88
  loc_A66F65: LateIdLdVar var_98 DispID_105 0
  loc_A66F6C: CastAdVar Me
  loc_A66F70: FStAdFunc var_AC
  loc_A66F73: FLdPr var_AC
  loc_A66F76: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A66F7B: FLdPr var_B0
  loc_A66F7E:  = Me.DataField
  loc_A66F83: FLdZeroAd var_B4
  loc_A66F86: PopTmpLdAdStr
  loc_A66F8A: FLdPr Me
  loc_A66F8D: MemLdRfVar from_stack_1.global_52
  loc_A66F90: NewIfNullPr clsoficjust
  loc_A66F93: Call clsoficjust.Sort(from_stack_1v)
  loc_A66F98: FFree1Str var_B8
  loc_A66F9B: FFreeAd var_88 = "": var_AC = ""
  loc_A66FA4: FFree1Var var_98 = ""
  loc_A66FA7: ExitProcHresult
End Sub
