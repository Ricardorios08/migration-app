VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmExtractoBancario
  Caption = "Extracto Bancario"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmExtractoBancario.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 13770
  ClientHeight = 9165
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmExtractoBancario.frx":08CA
    End
  End
  Begin VB.Frame fraABMS
    Caption = " Extracto Bancario "
    Left = 120
    Top = 4800
    Width = 10935
    Height = 4215
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox HabeMobaTxt
      ForeColor = &HFF0000&
      Left = 5805
      Top = 2400
      Width = 1815
      Height = 360
      TabIndex = 19
      Alignment = 1 'Right Justify
      MaxLength = 14
      DataField = "HabeMoba"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DetaMobaTxt
      Left = 2640
      Top = 3000
      Width = 8055
      Height = 375
      TabIndex = 21
      MaxLength = 100
      DataField = "DetaMoba"
    End
    Begin VB.TextBox DebeMobaTxt
      ForeColor = &HFF0000&
      Left = 2640
      Top = 2400
      Width = 1815
      Height = 360
      TabIndex = 17
      Alignment = 1 'Right Justify
      MaxLength = 14
      DataField = "DebeMoba"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 2640
      Top = 360
      Width = 735
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmExtractoBancario.frx":0952
      DataField = "CodiBanc"
    End
    Begin MSMask.MaskEdBox NumeMobaMsk
      Left = 2640
      Top = 1320
      Width = 1815
      Height = 360
      TabIndex = 13
      OleObjectBlob = "frmExtractoBancario.frx":09E0
      DataField = "NumeMoba"
    End
    Begin MSMask.MaskEdBox FechMobaMsk
      Left = 2640
      Top = 840
      Width = 1335
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmExtractoBancario.frx":0A68
      DataField = "FechMoba"
    End
    Begin MSMask.MaskEdBox FecoMobaMsk
      Left = 2640
      Top = 1800
      Width = 1335
      Height = 360
      TabIndex = 15
      OleObjectBlob = "frmExtractoBancario.frx":0B18
      DataField = "FecoMoba"
    End
    Begin VB.Label Label2
      Caption = "Crédito:"
      Left = 4800
      Top = 2400
      Width = 825
      Height = 300
      TabIndex = 18
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
    Begin VB.Label Label6
      Caption = "Detalle del Movimiento:"
      Left = 120
      Top = 3000
      Width = 2445
      Height = 300
      TabIndex = 20
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
    Begin VB.Label Label4
      Caption = "Fecha de conciliación:"
      Left = 180
      Top = 1800
      Width = 2340
      Height = 300
      TabIndex = 14
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
    Begin VB.Label DetaBancLbl
      Left = 3600
      Top = 360
      Width = 6735
      Height = 360
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "DetaBanc"
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
    Begin VB.Label Label7
      Caption = "Débito:"
      Left = 1635
      Top = 2400
      Width = 765
      Height = 300
      TabIndex = 16
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
    Begin VB.Label Label5
      Caption = "Fecha:"
      Left = 1785
      Top = 840
      Width = 735
      Height = 300
      TabIndex = 10
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
    Begin VB.Label Label3
      Caption = "Número:"
      Left = 1680
      Top = 1320
      Width = 900
      Height = 300
      TabIndex = 12
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
    Begin VB.Label Label1
      Caption = "Banco:"
      Left = 1770
      Top = 360
      Width = 750
      Height = 300
      TabIndex = 7
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 10935
    Height = 3015
    TabIndex = 5
    OleObjectBlob = "frmExtractoBancario.frx":0BC8
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmExtractoBancario.frx":1072
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13770
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmExtractoBancario.frx":8BF0
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmExtractoBancario.frx":914C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmExtractoBancario"


Private Sub FechMobaMsk_UnknownEvent_0 '94E888
  'Data Table: 48A940
  loc_94E874: FLdPr Me
  loc_94E877: VCallAd Control_ID_FechMobaMsk
  loc_94E87A: CVarAd
  loc_94E87E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E883: FFree1Var var_94 = ""
  loc_94E886: ExitProcHresult
End Sub

Private Sub FechMobaMsk_UnknownEvent_8 '9CA8A8
  'Data Table: 48A940
  loc_9CA7D4: FLdRfVar var_8A
  loc_9CA7D7: FLdPr Me
  loc_9CA7DA: VCallAd Control_ID_cmdCancelar
  loc_9CA7DD: FStAdFunc var_88
  loc_9CA7E0: FLdPr var_88
  loc_9CA7E3:  = Me.Value
  loc_9CA7E8: FLdI2 var_8A
  loc_9CA7EB: NotI4
  loc_9CA7EC: FLdPr Me
  loc_9CA7EF: VCallAd Control_ID_FechMobaMsk
  loc_9CA7F2: FStAdFunc var_90
  loc_9CA7F5: FLdPr var_90
  loc_9CA7F8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9CA7FF: CBoolVar
  loc_9CA801: AndI4
  loc_9CA802: FFreeAd var_88 = ""
  loc_9CA809: FFree1Var var_A0 = ""
  loc_9CA80C: BranchF loc_9CA8A7
  loc_9CA80F: FLdPr Me
  loc_9CA812: VCallAd Control_ID_FechMobaMsk
  loc_9CA815: FStAdFunc var_88
  loc_9CA818: FLdPr var_88
  loc_9CA81B: LateIdLdVar var_A0 DispID_15 0
  loc_9CA822: PopAd
  loc_9CA824: FLdPr Me
  loc_9CA827: VCallAd Control_ID_FechMobaMsk
  loc_9CA82A: FStAdFunc var_AC
  loc_9CA82D: LitI2_Byte &HFF
  loc_9CA82F: PopTmpLdAd2 var_8A
  loc_9CA832: FLdZeroAd var_AC
  loc_9CA835: FStAdFunc var_90
  loc_9CA838: FLdRfVar var_90
  loc_9CA83B: LitStr "01/01/2018"
  loc_9CA83E: LitI2_Byte &HFF
  loc_9CA840: LitI2_Byte &HFF
  loc_9CA842: FLdRfVar var_A0
  loc_9CA845: CStrVarTmp
  loc_9CA846: FStStrNoPop var_A4
  loc_9CA849: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CA84E: FStStrNoPop var_A8
  loc_9CA851: FLdPr Me
  loc_9CA854: MemStStrCopy
  loc_9CA858: FFreeStr var_A4 = ""
  loc_9CA85F: FFreeAd var_88 = "": var_90 = ""
  loc_9CA868: FFree1Var var_A0 = ""
  loc_9CA86B: FLdPr Me
  loc_9CA86E: VCallAd Control_ID_FechMobaMsk
  loc_9CA871: FStAdFunc var_B0
  loc_9CA874: LitNothing
  loc_9CA876: CastAd
  loc_9CA879: FStAdFunc var_AC
  loc_9CA87C: FLdRfVar var_AC
  loc_9CA87F: FLdZeroAd var_B0
  loc_9CA882: FStAdFuncNoPop
  loc_9CA885: CastAd
  loc_9CA888: FStAdFunc var_90
  loc_9CA88B: FLdRfVar var_90
  loc_9CA88E: FLdPr Me
  loc_9CA891: MemLdRfVar from_stack_1.global_60
  loc_9CA894: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CA899: IStI2 KeyCode
  loc_9CA89C: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9CA8A7: ExitProcHresult
End Sub

Private Sub FechMobaMsk_KeyPress(KeyAscii As Integer) '988210
  'Data Table: 48A940
  loc_9881CC: ILdI2 KeyAscii
  loc_9881CF: CI4UI1
  loc_9881D0: LitI4 &H20
  loc_9881D5: EqI4
  loc_9881D6: BranchF loc_98820C
  loc_9881D9: LitVar_Missing var_A4
  loc_9881DC: PopAdLdVar
  loc_9881DD: LitVarI4
  loc_9881E5: PopAdLdVar
  loc_9881E6: ImpAdLdRf MemVar_C3D9A8
  loc_9881E9: NewIfNullPr frmCalendario
  loc_9881EC: frmCalendario.Show from_stack_1, from_stack_2
  loc_9881F1: ImpAdLdRf MemVar_C3D038
  loc_9881F4: CDargRef
  loc_9881F8: FLdPr Me
  loc_9881FB: VCallAd Control_ID_FechMobaMsk
  loc_9881FE: FStAdFunc var_A8
  loc_988201: FLdPr var_A8
  loc_988204: LateIdSt
  loc_988209: FFree1Ad var_A8
  loc_98820C: ExitProcHresult
  loc_98820D: FLdFPR8 var_C8
End Sub

Private Sub Form_Load() 'A220FC
  'Data Table: 48A940
  loc_A21F68: LitI2_Byte 0
  loc_A21F6A: CR8I2
  loc_A21F6B: PopFPR4
  loc_A21F6C: FLdPr Me
  loc_A21F6F: Me.Left = from_stack_1s
  loc_A21F74: LitI2_Byte 0
  loc_A21F76: CR8I2
  loc_A21F77: PopFPR4
  loc_A21F78: FLdPr Me
  loc_A21F7B: Me.Top = from_stack_1s
  loc_A21F80: LitStr "SELECT me.*, DetaBanc, '' DetaTimb, IF(DebeMoba != 0,'Debito','Credito') TipoTimb, IF(me.DebeMoba != 0, me.DebeMoba,me.HabeMoba) ImpoMoba"
  loc_A21F83: LitStr " FROM moviextracto me"
  loc_A21F86: ConcatStr
  loc_A21F87: FStStrNoPop var_88
  loc_A21F8A: LitStr " INNER JOIN banco b ON b.PeriInfo = me.PeriInfo AND b.CodiBanc = me.CodiBanc"
  loc_A21F8D: ConcatStr
  loc_A21F8E: FStStrNoPop var_8C
  loc_A21F91: LitStr " /* INNER JOIN tipomovibanco tmb ON tmb.PeriInfo = IF(me.PeriInfo <= 2018,2018,me.PeriInfo) AND tmb.CodiTimb = me.CodiTimb */"
  loc_A21F94: ConcatStr
  loc_A21F95: FStStrNoPop var_90
  loc_A21F98: LitStr " WHERE me.PeriInfo = "
  loc_A21F9B: ConcatStr
  loc_A21F9C: FStStrNoPop var_94
  loc_A21F9F: ImpAdLdI2 MemVar_C3D064
  loc_A21FA2: CStrUI1
  loc_A21FA4: FStStrNoPop var_98
  loc_A21FA7: ConcatStr
  loc_A21FA8: FStStrNoPop var_9C
  loc_A21FAB: LitStr ";"
  loc_A21FAE: ConcatStr
  loc_A21FAF: FStStrNoPop var_A0
  loc_A21FB2: FLdPr Me
  loc_A21FB5: MemLdRfVar from_stack_1.global_52
  loc_A21FB8: NewIfNullPr clsmoviextracto
  loc_A21FBB: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_A21FC0: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A21FD1: LitVarI2 var_B0, 0
  loc_A21FD6: PopAdLdVar
  loc_A21FD7: LitStr "Banco (Código)"
  loc_A21FDA: FLdPr Me
  loc_A21FDD: VCallAd Control_ID_FiltroCbo
  loc_A21FE0: FStAdFunc var_B4
  loc_A21FE3: FLdPr var_B4
  loc_A21FE6: Me.AddItem from_stack_1, from_stack_2
  loc_A21FEB: FFree1Ad var_B4
  loc_A21FEE: LitVarI2 var_B0, 1
  loc_A21FF3: PopAdLdVar
  loc_A21FF4: LitStr "Banco (Detalle)"
  loc_A21FF7: FLdPr Me
  loc_A21FFA: VCallAd Control_ID_FiltroCbo
  loc_A21FFD: FStAdFunc var_B4
  loc_A22000: FLdPr var_B4
  loc_A22003: Me.AddItem from_stack_1, from_stack_2
  loc_A22008: FFree1Ad var_B4
  loc_A2200B: LitVarI2 var_B0, 2
  loc_A22010: PopAdLdVar
  loc_A22011: LitStr "Número"
  loc_A22014: FLdPr Me
  loc_A22017: VCallAd Control_ID_FiltroCbo
  loc_A2201A: FStAdFunc var_B4
  loc_A2201D: FLdPr var_B4
  loc_A22020: Me.AddItem from_stack_1, from_stack_2
  loc_A22025: FFree1Ad var_B4
  loc_A22028: LitVarI2 var_B0, 3
  loc_A2202D: PopAdLdVar
  loc_A2202E: LitStr "Fecha de Mov.Bcrio."
  loc_A22031: FLdPr Me
  loc_A22034: VCallAd Control_ID_FiltroCbo
  loc_A22037: FStAdFunc var_B4
  loc_A2203A: FLdPr var_B4
  loc_A2203D: Me.AddItem from_stack_1, from_stack_2
  loc_A22042: FFree1Ad var_B4
  loc_A22045: LitVarI2 var_B0, 4
  loc_A2204A: PopAdLdVar
  loc_A2204B: LitStr "Fecha de Conciliación"
  loc_A2204E: FLdPr Me
  loc_A22051: VCallAd Control_ID_FiltroCbo
  loc_A22054: FStAdFunc var_B4
  loc_A22057: FLdPr var_B4
  loc_A2205A: Me.AddItem from_stack_1, from_stack_2
  loc_A2205F: FFree1Ad var_B4
  loc_A22062: LitVarI2 var_B0, 5
  loc_A22067: PopAdLdVar
  loc_A22068: LitStr "Importe (mayor o igual)"
  loc_A2206B: FLdPr Me
  loc_A2206E: VCallAd Control_ID_FiltroCbo
  loc_A22071: FStAdFunc var_B4
  loc_A22074: FLdPr var_B4
  loc_A22077: Me.AddItem from_stack_1, from_stack_2
  loc_A2207C: FFree1Ad var_B4
  loc_A2207F: LitI2_Byte 0
  loc_A22081: FLdPr Me
  loc_A22084: VCallAd Control_ID_FiltroCbo
  loc_A22087: FStAdFunc var_B4
  loc_A2208A: FLdPr var_B4
  loc_A2208D: Me.ListIndex = from_stack_1
  loc_A22092: FFree1Ad var_B4
  loc_A22095: Call cmdCancelar_Click()
  loc_A2209A: LitI4 0
  loc_A2209F: LitI4 1
  loc_A220A4: FLdRfVar var_B8
  loc_A220A7: Redim
  loc_A220B1: FLdPr Me
  loc_A220B4: MemLdRfVar from_stack_1.global_52
  loc_A220B7: NewIfNullAd
  loc_A220BA: FStAd var_B4 
  loc_A220BE: FLdRfVar var_B4
  loc_A220C1: CVarRef
  loc_A220C6: ParmAry1St
  loc_A220CC: FLdPr Me
  loc_A220CF: VCallAd Control_ID_dgdABMS
  loc_A220D2: CVarAd
  loc_A220D6: ParmAry1St
  loc_A220DC: FLdRfVar var_B8
  loc_A220DF: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A220E4: ILdRf var_B4
  loc_A220E7: CastAd
  loc_A220EA: FLdPr Me
  loc_A220ED: MemStAdFunc
  loc_A220F1: FLdRfVar var_B8
  loc_A220F4: Erase
  loc_A220F5: FFree1Ad var_B4
  loc_A220F8: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A10D4
  'Data Table: 48A940
  loc_9A1068: FLdRfVar var_C2
  loc_9A106B: FLdRfVar var_C0
  loc_9A106E: LitVarI2 var_B8, 1
  loc_9A1073: FLdPr Me
  loc_9A1076: VCallAd Control_ID_tlbABMS
  loc_9A1079: FStAdFunc var_88
  loc_9A107C: FLdPr var_88
  loc_9A107F: LateIdLdVar var_98 DispID_3 0
  loc_9A1086: CastAdVar Me
  loc_9A108A: FStAdFunc var_BC
  loc_9A108D: FLdPr var_BC
  loc_9A1090:  = Me.Buttons.ControlDefault
  loc_9A1095: FLdPr var_C0
  loc_9A1098:  = Me.Enabled
  loc_9A109D: FLdI2 var_C2
  loc_9A10A0: FFreeAd var_88 = "": var_BC = ""
  loc_9A10A9: FFreeVar var_98 = ""
  loc_9A10B0: BranchF loc_9A10D2
  loc_9A10B3: LitI4 0
  loc_9A10B8: LitI4 0
  loc_9A10BD: LitI4 0
  loc_9A10C2: LitI2_Byte 0
  loc_9A10C4: FLdPr Me
  loc_9A10C7: MemLdRfVar from_stack_1.global_52
  loc_9A10CA: NewIfNullPr clsmoviextracto
  loc_9A10CD: Call clsmoviextracto.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_9A10D2: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '961FA4
  'Data Table: 48A940
  loc_961F8C: ILdI2 KeyCode
  loc_961F8F: ILdRf Me
  loc_961F92: CastAd
  loc_961F95: FStAdFunc var_88
  loc_961F98: FLdRfVar var_88
  loc_961F9B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_961FA0: FFree1Ad var_88
  loc_961FA3: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B255D8
  'Data Table: 48A940
  loc_B24D04: ILdRf Button
  loc_B24D07: FStAd var_88 
  loc_B24D0B: FLdRfVar var_8C
  loc_B24D0E: FLdPr var_88
  loc_B24D11:  = Me.Key
  loc_B24D16: FLdZeroAd var_8C
  loc_B24D19: FStStr var_90
  loc_B24D1C: ILdRf var_90
  loc_B24D1F: LitStr "btnCrear"
  loc_B24D22: EqStr
  loc_B24D24: BranchF loc_B24EE2
  loc_B24D27: LitI2_Byte 1
  loc_B24D29: FLdPr Me
  loc_B24D2C: MemStUI1
  loc_B24D30: ILdRf Me
  loc_B24D33: CastAd
  loc_B24D36: FStAdFunc var_94
  loc_B24D39: FLdRfVar var_94
  loc_B24D3C: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B24D41: FFree1Ad var_94
  loc_B24D44: ILdRf Me
  loc_B24D47: CastAd
  loc_B24D4A: FStAdFunc var_94
  loc_B24D4D: FLdRfVar var_94
  loc_B24D50: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B24D55: FFree1Ad var_94
  loc_B24D58: LitI4 0
  loc_B24D5D: LitI4 0
  loc_B24D62: FLdRfVar var_98
  loc_B24D65: Redim
  loc_B24D6F: FLdPr Me
  loc_B24D72: VCallAd Control_ID_dgdABMS
  loc_B24D75: CVarAd
  loc_B24D79: ParmAry1St
  loc_B24D7F: FLdRfVar var_98
  loc_B24D82: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B24D87: FLdRfVar var_98
  loc_B24D8A: Erase
  loc_B24D8B: ILdRf Me
  loc_B24D8E: CastAd
  loc_B24D91: FStAdFunc var_94
  loc_B24D94: FLdRfVar var_94
  loc_B24D97: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_B24D9C: FFree1Ad var_94
  loc_B24D9F: LitI4 0
  loc_B24DA4: LitI4 6
  loc_B24DA9: FLdRfVar var_98
  loc_B24DAC: Redim
  loc_B24DB6: FLdPr Me
  loc_B24DB9: VCallAd Control_ID_CodiBancMsk
  loc_B24DBC: CVarAd
  loc_B24DC0: ParmAry1St
  loc_B24DC6: FLdPr Me
  loc_B24DC9: VCallAd Control_ID_NumeMobaMsk
  loc_B24DCC: CVarAd
  loc_B24DD0: ParmAry1St
  loc_B24DD6: FLdPr Me
  loc_B24DD9: VCallAd Control_ID_FechMobaMsk
  loc_B24DDC: CVarAd
  loc_B24DE0: ParmAry1St
  loc_B24DE6: FLdPr Me
  loc_B24DE9: VCallAd Control_ID_FecoMobaMsk
  loc_B24DEC: CVarAd
  loc_B24DF0: ParmAry1St
  loc_B24DF6: FLdPr Me
  loc_B24DF9: VCallAd Control_ID_DebeMobaTxt
  loc_B24DFC: CVarAd
  loc_B24E00: ParmAry1St
  loc_B24E06: FLdPr Me
  loc_B24E09: VCallAd Control_ID_HabeMobaTxt
  loc_B24E0C: CVarAd
  loc_B24E10: ParmAry1St
  loc_B24E16: FLdPr Me
  loc_B24E19: VCallAd Control_ID_DetaMobaTxt
  loc_B24E1C: CVarAd
  loc_B24E20: ParmAry1St
  loc_B24E26: FLdRfVar var_98
  loc_B24E29: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B24E2E: FLdRfVar var_98
  loc_B24E31: Erase
  loc_B24E32: LitI2_Byte 0
  loc_B24E34: CStrUI1
  loc_B24E36: CVarStr var_A8
  loc_B24E39: PopAdLdVar
  loc_B24E3A: FLdPr Me
  loc_B24E3D: VCallAd Control_ID_CodiBancMsk
  loc_B24E40: FStAdFunc var_94
  loc_B24E43: FLdPr var_94
  loc_B24E46: LateIdSt
  loc_B24E4B: FFree1Ad var_94
  loc_B24E4E: FFree1Var var_A8 = ""
  loc_B24E51: LitI2_Byte 0
  loc_B24E53: CStrUI1
  loc_B24E55: CVarStr var_A8
  loc_B24E58: PopAdLdVar
  loc_B24E59: FLdPr Me
  loc_B24E5C: VCallAd Control_ID_NumeMobaMsk
  loc_B24E5F: FStAdFunc var_94
  loc_B24E62: FLdPr var_94
  loc_B24E65: LateIdSt
  loc_B24E6A: FFree1Ad var_94
  loc_B24E6D: FFree1Var var_A8 = ""
  loc_B24E70: LitI2_Byte 0
  loc_B24E72: PopTmpLdAd2 var_11A
  loc_B24E75: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_B24E7A: CStrDate
  loc_B24E7C: CVarStr var_A8
  loc_B24E7F: PopAdLdVar
  loc_B24E80: FLdPr Me
  loc_B24E83: VCallAd Control_ID_FechMobaMsk
  loc_B24E86: FStAdFunc var_94
  loc_B24E89: FLdPr var_94
  loc_B24E8C: LateIdSt
  loc_B24E91: FFree1Ad var_94
  loc_B24E94: FFree1Var var_A8 = ""
  loc_B24E97: LitVarStr var_118, vbNullString
  loc_B24E9C: PopAdLdVar
  loc_B24E9D: FLdPr Me
  loc_B24EA0: VCallAd Control_ID_FecoMobaMsk
  loc_B24EA3: FStAdFunc var_94
  loc_B24EA6: FLdPr var_94
  loc_B24EA9: LateIdSt
  loc_B24EAE: FFree1Ad var_94
  loc_B24EB1: LitStr "0,00"
  loc_B24EB4: FLdPr Me
  loc_B24EB7: VCallAd Control_ID_DebeMobaTxt
  loc_B24EBA: FStAdFunc var_94
  loc_B24EBD: FLdPr var_94
  loc_B24EC0: Me.Text = from_stack_1
  loc_B24EC5: FFree1Ad var_94
  loc_B24EC8: LitStr "0,00"
  loc_B24ECB: FLdPr Me
  loc_B24ECE: VCallAd Control_ID_HabeMobaTxt
  loc_B24ED1: FStAdFunc var_94
  loc_B24ED4: FLdPr var_94
  loc_B24ED7: Me.Text = from_stack_1
  loc_B24EDC: FFree1Ad var_94
  loc_B24EDF: Branch loc_B255D7
  loc_B24EE2: ILdRf var_90
  loc_B24EE5: LitStr "btnModificar"
  loc_B24EE8: EqStr
  loc_B24EEA: BranchF loc_B2509D
  loc_B24EED: FLdRfVar var_130
  loc_B24EF0: FLdPr Me
  loc_B24EF3: MemLdRfVar from_stack_1.global_52
  loc_B24EF6: NewIfNullPr clsmoviextracto
  loc_B24EF9: from_stack_1 = clsmoviextracto.RecordCount
  loc_B24EFE: ILdRf var_130
  loc_B24F01: LitI4 0
  loc_B24F06: GtI4
  loc_B24F07: BranchF loc_B2509A
  loc_B24F0A: FLdRfVar var_A8
  loc_B24F0D: FLdRfVar var_138
  loc_B24F10: LitVarStr var_118, "FechMoba"
  loc_B24F15: PopAdLdVar
  loc_B24F16: FLdRfVar var_134
  loc_B24F19: FLdRfVar var_94
  loc_B24F1C: FLdPr Me
  loc_B24F1F: MemLdRfVar from_stack_1.global_52
  loc_B24F22: NewIfNullPr clsmoviextracto
  loc_B24F25: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_B24F2A: FLdPr var_94
  loc_B24F2D:  = Me.Fields
  loc_B24F32: FLdPr var_134
  loc_B24F35: from_stack_2 = Me.Item(from_stack_1)
  loc_B24F3A: FLdPr var_138
  loc_B24F3D:  = Me.Value
  loc_B24F42: LitI2_Byte &HFF
  loc_B24F44: PopTmpLdAd2 var_11A
  loc_B24F47: LitNothing
  loc_B24F49: CastAd
  loc_B24F4C: FStAdFunc var_13C
  loc_B24F4F: FLdRfVar var_13C
  loc_B24F52: LitStr "01/01/2018"
  loc_B24F55: LitI2_Byte &HFF
  loc_B24F57: LitI2_Byte &HFF
  loc_B24F59: FLdRfVar var_A8
  loc_B24F5C: CStrVarTmp
  loc_B24F5D: FStStrNoPop var_8C
  loc_B24F60: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_B24F65: FStStrNoPop var_140
  loc_B24F68: FLdPr Me
  loc_B24F6B: MemStStrCopy
  loc_B24F6F: FFreeStr var_8C = ""
  loc_B24F76: FFreeAd var_94 = "": var_134 = "": var_138 = ""
  loc_B24F81: FFree1Var var_A8 = ""
  loc_B24F84: FLdPr Me
  loc_B24F87: MemLdStr global_60
  loc_B24F8A: LitStr vbNullString
  loc_B24F8D: NeStr
  loc_B24F8F: BranchF loc_B24FA3
  loc_B24F92: LitI4 0
  loc_B24F97: FLdPr Me
  loc_B24F9A: MemLdStr global_60
  loc_B24F9D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B24FA2: ExitProcHresult
  loc_B24FA3: LitI2_Byte 2
  loc_B24FA5: FLdPr Me
  loc_B24FA8: MemStUI1
  loc_B24FAC: ILdRf Me
  loc_B24FAF: CastAd
  loc_B24FB2: FStAdFunc var_94
  loc_B24FB5: FLdRfVar var_94
  loc_B24FB8: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B24FBD: FFree1Ad var_94
  loc_B24FC0: ILdRf Me
  loc_B24FC3: CastAd
  loc_B24FC6: FStAdFunc var_94
  loc_B24FC9: FLdRfVar var_94
  loc_B24FCC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B24FD1: FFree1Ad var_94
  loc_B24FD4: LitI4 0
  loc_B24FD9: LitI4 0
  loc_B24FDE: FLdRfVar var_98
  loc_B24FE1: Redim
  loc_B24FEB: FLdPr Me
  loc_B24FEE: VCallAd Control_ID_dgdABMS
  loc_B24FF1: CVarAd
  loc_B24FF5: ParmAry1St
  loc_B24FFB: FLdRfVar var_98
  loc_B24FFE: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B25003: FLdRfVar var_98
  loc_B25006: Erase
  loc_B25007: LitI4 0
  loc_B2500C: LitI4 6
  loc_B25011: FLdRfVar var_98
  loc_B25014: Redim
  loc_B2501E: FLdPr Me
  loc_B25021: VCallAd Control_ID_CodiBancMsk
  loc_B25024: CVarAd
  loc_B25028: ParmAry1St
  loc_B2502E: FLdPr Me
  loc_B25031: VCallAd Control_ID_NumeMobaMsk
  loc_B25034: CVarAd
  loc_B25038: ParmAry1St
  loc_B2503E: FLdPr Me
  loc_B25041: VCallAd Control_ID_FechMobaMsk
  loc_B25044: CVarAd
  loc_B25048: ParmAry1St
  loc_B2504E: FLdPr Me
  loc_B25051: VCallAd Control_ID_FecoMobaMsk
  loc_B25054: CVarAd
  loc_B25058: ParmAry1St
  loc_B2505E: FLdPr Me
  loc_B25061: VCallAd Control_ID_DebeMobaTxt
  loc_B25064: CVarAd
  loc_B25068: ParmAry1St
  loc_B2506E: FLdPr Me
  loc_B25071: VCallAd Control_ID_HabeMobaTxt
  loc_B25074: CVarAd
  loc_B25078: ParmAry1St
  loc_B2507E: FLdPr Me
  loc_B25081: VCallAd Control_ID_DetaMobaTxt
  loc_B25084: CVarAd
  loc_B25088: ParmAry1St
  loc_B2508E: FLdRfVar var_98
  loc_B25091: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B25096: FLdRfVar var_98
  loc_B25099: Erase
  loc_B2509A: Branch loc_B255D7
  loc_B2509D: ILdRf var_90
  loc_B250A0: LitStr "btnEliminar"
  loc_B250A3: EqStr
  loc_B250A5: BranchF loc_B251AD
  loc_B250A8: FLdRfVar var_130
  loc_B250AB: FLdPr Me
  loc_B250AE: MemLdRfVar from_stack_1.global_52
  loc_B250B1: NewIfNullPr clsmoviextracto
  loc_B250B4: from_stack_1 = clsmoviextracto.RecordCount
  loc_B250B9: ILdRf var_130
  loc_B250BC: LitI4 0
  loc_B250C1: GtI4
  loc_B250C2: BranchF loc_B251AA
  loc_B250C5: FLdRfVar var_A8
  loc_B250C8: FLdRfVar var_138
  loc_B250CB: LitVarStr var_118, "FechMoba"
  loc_B250D0: PopAdLdVar
  loc_B250D1: FLdRfVar var_134
  loc_B250D4: FLdRfVar var_94
  loc_B250D7: FLdPr Me
  loc_B250DA: MemLdRfVar from_stack_1.global_52
  loc_B250DD: NewIfNullPr clsmoviextracto
  loc_B250E0: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_B250E5: FLdPr var_94
  loc_B250E8:  = Me.Fields
  loc_B250ED: FLdPr var_134
  loc_B250F0: from_stack_2 = Me.Item(from_stack_1)
  loc_B250F5: FLdPr var_138
  loc_B250F8:  = Me.Value
  loc_B250FD: LitI2_Byte &HFF
  loc_B250FF: PopTmpLdAd2 var_11A
  loc_B25102: LitNothing
  loc_B25104: CastAd
  loc_B25107: FStAdFunc var_13C
  loc_B2510A: FLdRfVar var_13C
  loc_B2510D: LitStr "01/01/2018"
  loc_B25110: LitI2_Byte &HFF
  loc_B25112: LitI2_Byte &HFF
  loc_B25114: FLdRfVar var_A8
  loc_B25117: CStrVarTmp
  loc_B25118: FStStrNoPop var_8C
  loc_B2511B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_B25120: FStStrNoPop var_140
  loc_B25123: FLdPr Me
  loc_B25126: MemStStrCopy
  loc_B2512A: FFreeStr var_8C = ""
  loc_B25131: FFreeAd var_94 = "": var_134 = "": var_138 = ""
  loc_B2513C: FFree1Var var_A8 = ""
  loc_B2513F: FLdPr Me
  loc_B25142: MemLdStr global_60
  loc_B25145: LitStr vbNullString
  loc_B25148: NeStr
  loc_B2514A: BranchF loc_B2515E
  loc_B2514D: LitI4 0
  loc_B25152: FLdPr Me
  loc_B25155: MemLdStr global_60
  loc_B25158: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B2515D: ExitProcHresult
  loc_B2515E: LitI2_Byte 0
  loc_B25160: PopTmpLdAd2 var_142
  loc_B25163: LitI2_Byte &HFF
  loc_B25165: PopTmpLdAd2 var_11A
  loc_B25168: LitStr "¿Desea ELIMINAR el registro?"
  loc_B2516B: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B25170: CI4UI1
  loc_B25171: LitI4 6
  loc_B25176: EqI4
  loc_B25177: BranchF loc_B251AA
  loc_B2517A: ILdRf Me
  loc_B2517D: CastAd
  loc_B25180: FStAdFunc var_94
  loc_B25183: FLdRfVar var_94
  loc_B25186: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_B2518B: FFree1Ad var_94
  loc_B2518E: FLdPr Me
  loc_B25191: MemLdRfVar from_stack_1.global_52
  loc_B25194: NewIfNullPr clsmoviextracto
  loc_B25197: Call clsmoviextracto.Eliminar()
  loc_B2519C: FLdPr Me
  loc_B2519F: MemLdRfVar from_stack_1.global_52
  loc_B251A2: NewIfNullPr clsmoviextracto
  loc_B251A5: Call clsmoviextracto.Requery()
  loc_B251AA: Branch loc_B255D7
  loc_B251AD: ILdRf var_90
  loc_B251B0: LitStr "btnGuardar"
  loc_B251B3: EqStr
  loc_B251B5: BranchF loc_B254D3
  loc_B251B8: LitStr vbNullString
  loc_B251BB: FLdPr Me
  loc_B251BE: MemStStrCopy
  loc_B251C2: LitI2_Byte 0
  loc_B251C4: PopTmpLdAd2 var_11A
  loc_B251C7: Call CodiBancMsk_UnknownEvent_8()
  loc_B251CC: FLdPr Me
  loc_B251CF: MemLdStr global_60
  loc_B251D2: LitStr vbNullString
  loc_B251D5: NeStr
  loc_B251D7: BranchF loc_B251DB
  loc_B251DA: ExitProcHresult
  loc_B251DB: LitI2_Byte 0
  loc_B251DD: PopTmpLdAd2 var_11A
  loc_B251E0: Call NumeMobaMsk_UnknownEvent_8()
  loc_B251E5: FLdPr Me
  loc_B251E8: MemLdStr global_60
  loc_B251EB: LitStr vbNullString
  loc_B251EE: NeStr
  loc_B251F0: BranchF loc_B251F4
  loc_B251F3: ExitProcHresult
  loc_B251F4: LitI2_Byte 0
  loc_B251F6: PopTmpLdAd2 var_11A
  loc_B251F9: Call FechMobaMsk_UnknownEvent_8()
  loc_B251FE: FLdPr Me
  loc_B25201: MemLdStr global_60
  loc_B25204: LitStr vbNullString
  loc_B25207: NeStr
  loc_B25209: BranchF loc_B2520D
  loc_B2520C: ExitProcHresult
  loc_B2520D: LitI2_Byte 0
  loc_B2520F: PopTmpLdAd2 var_11A
  loc_B25212: Call FecoMobaMsk_UnknownEvent_8()
  loc_B25217: FLdPr Me
  loc_B2521A: MemLdStr global_60
  loc_B2521D: LitStr vbNullString
  loc_B25220: NeStr
  loc_B25222: BranchF loc_B25226
  loc_B25225: ExitProcHresult
  loc_B25226: LitI2_Byte 0
  loc_B25228: PopTmpLdAd2 var_11A
  loc_B2522B: Call DebeMobaTxt_Validate(from_stack_1v)
  loc_B25230: FLdPr Me
  loc_B25233: MemLdStr global_60
  loc_B25236: LitStr vbNullString
  loc_B25239: NeStr
  loc_B2523B: BranchF loc_B2523F
  loc_B2523E: ExitProcHresult
  loc_B2523F: LitI2_Byte 0
  loc_B25241: PopTmpLdAd2 var_11A
  loc_B25244: Call HabeMobaTxt_Validate(from_stack_1v)
  loc_B25249: FLdPr Me
  loc_B2524C: MemLdStr global_60
  loc_B2524F: LitStr vbNullString
  loc_B25252: NeStr
  loc_B25254: BranchF loc_B25258
  loc_B25257: ExitProcHresult
  loc_B25258: LitI2_Byte 0
  loc_B2525A: PopTmpLdAd2 var_11A
  loc_B2525D: Call DetaMobaTxt_Validate(from_stack_1v)
  loc_B25262: FLdPr Me
  loc_B25265: MemLdStr global_60
  loc_B25268: LitStr vbNullString
  loc_B2526B: NeStr
  loc_B2526D: BranchF loc_B25271
  loc_B25270: ExitProcHresult
  loc_B25271: FLdPr Me
  loc_B25274: MemLdUI1 global_56
  loc_B25278: FStUI1 var_144
  loc_B2527C: FLdUI1
  loc_B25280: LitI2_Byte 1
  loc_B25282: EqI2
  loc_B25283: BranchF loc_B25384
  loc_B25286: FLdPr Me
  loc_B25289: VCallAd Control_ID_CodiBancMsk
  loc_B2528C: FStAdFunc var_13C
  loc_B2528F: FLdPr var_13C
  loc_B25292: LateIdLdVar var_C8 DispID_0 0
  loc_B25299: PopAd
  loc_B2529B: FLdPr Me
  loc_B2529E: VCallAd Control_ID_NumeMobaMsk
  loc_B252A1: FStAdFunc var_148
  loc_B252A4: FLdPr var_148
  loc_B252A7: LateIdLdVar var_D8 DispID_0 0
  loc_B252AE: PopAd
  loc_B252B0: FLdPr Me
  loc_B252B3: VCallAd Control_ID_FechMobaMsk
  loc_B252B6: FStAdFunc var_94
  loc_B252B9: FLdPr var_94
  loc_B252BC: LateIdLdVar var_A8 DispID_15 0
  loc_B252C3: PopAd
  loc_B252C5: FLdPr Me
  loc_B252C8: VCallAd Control_ID_FecoMobaMsk
  loc_B252CB: FStAdFunc var_134
  loc_B252CE: FLdPr var_134
  loc_B252D1: LateIdLdVar var_B8 DispID_15 0
  loc_B252D8: PopAd
  loc_B252DA: FLdRfVar var_15C
  loc_B252DD: FLdPr Me
  loc_B252E0: VCallAd Control_ID_DebeMobaTxt
  loc_B252E3: FStAdFunc var_158
  loc_B252E6: FLdPr var_158
  loc_B252E9:  = Me.Text
  loc_B252EE: FLdRfVar var_164
  loc_B252F1: FLdPr Me
  loc_B252F4: VCallAd Control_ID_HabeMobaTxt
  loc_B252F7: FStAdFunc var_160
  loc_B252FA: FLdPr var_160
  loc_B252FD:  = Me.Text
  loc_B25302: FLdRfVar var_8C
  loc_B25305: FLdPr Me
  loc_B25308: VCallAd Control_ID_DetaMobaTxt
  loc_B2530B: FStAdFunc var_138
  loc_B2530E: FLdPr var_138
  loc_B25311:  = Me.Text
  loc_B25316: ILdRf var_8C
  loc_B25319: ILdRf var_164
  loc_B2531C: CR8Str
  loc_B2531E: PopFPR8
  loc_B2531F: ILdRf var_15C
  loc_B25322: CR8Str
  loc_B25324: PopFPR8
  loc_B25325: FLdRfVar var_B8
  loc_B25328: CStrVarTmp
  loc_B25329: FStStrNoPop var_154
  loc_B2532C: FLdRfVar var_A8
  loc_B2532F: CStrVarTmp
  loc_B25330: FStStrNoPop var_150
  loc_B25333: FLdRfVar var_D8
  loc_B25336: CStrVarTmp
  loc_B25337: FStStrNoPop var_14C
  loc_B2533A: CI4Str
  loc_B2533B: FLdRfVar var_C8
  loc_B2533E: CStrVarTmp
  loc_B2533F: FStStrNoPop var_140
  loc_B25342: CI4Str
  loc_B25343: ImpAdLdI2 MemVar_C3D064
  loc_B25346: FLdPr Me
  loc_B25349: MemLdRfVar from_stack_1.global_52
  loc_B2534C: NewIfNullPr clsmoviextracto
  loc_B2534F: Call clsmoviextracto.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B25354: FFreeStr var_140 = "": var_14C = "": var_150 = "": var_154 = "": var_15C = "": var_164 = ""
  loc_B25365: FFreeAd var_94 = "": var_134 = "": var_138 = "": var_13C = "": var_148 = "": var_158 = ""
  loc_B25376: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_B25381: Branch loc_B254CB
  loc_B25384: FLdUI1
  loc_B25388: LitI2_Byte 2
  loc_B2538A: EqI2
  loc_B2538B: BranchF loc_B254CB
  loc_B2538E: FLdRfVar var_E8
  loc_B25391: FLdRfVar var_138
  loc_B25394: LitVarStr var_118, "IdMobaex"
  loc_B25399: PopAdLdVar
  loc_B2539A: FLdRfVar var_134
  loc_B2539D: FLdRfVar var_94
  loc_B253A0: FLdPr Me
  loc_B253A3: MemLdRfVar from_stack_1.global_52
  loc_B253A6: NewIfNullPr clsmoviextracto
  loc_B253A9: from_stack_1v = clsmoviextracto.RsFrmGet()
  loc_B253AE: FLdPr var_94
  loc_B253B1:  = Me.Fields
  loc_B253B6: FLdPr var_134
  loc_B253B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B253BE: FLdPr var_138
  loc_B253C1:  = Me.Value
  loc_B253C6: FLdPr Me
  loc_B253C9: VCallAd Control_ID_CodiBancMsk
  loc_B253CC: FStAdFunc var_13C
  loc_B253CF: FLdPr var_13C
  loc_B253D2: LateIdLdVar var_A8 DispID_22 0
  loc_B253D9: PopAd
  loc_B253DB: FLdPr Me
  loc_B253DE: VCallAd Control_ID_NumeMobaMsk
  loc_B253E1: FStAdFunc var_148
  loc_B253E4: FLdPr var_148
  loc_B253E7: LateIdLdVar var_B8 DispID_22 0
  loc_B253EE: PopAd
  loc_B253F0: FLdPr Me
  loc_B253F3: VCallAd Control_ID_FechMobaMsk
  loc_B253F6: FStAdFunc var_158
  loc_B253F9: FLdPr var_158
  loc_B253FC: LateIdLdVar var_C8 DispID_15 0
  loc_B25403: PopAd
  loc_B25405: FLdPr Me
  loc_B25408: VCallAd Control_ID_FecoMobaMsk
  loc_B2540B: FStAdFunc var_160
  loc_B2540E: FLdPr var_160
  loc_B25411: LateIdLdVar var_D8 DispID_15 0
  loc_B25418: PopAd
  loc_B2541A: FLdRfVar var_8C
  loc_B2541D: FLdPr Me
  loc_B25420: VCallAd Control_ID_DebeMobaTxt
  loc_B25423: FStAdFunc var_168
  loc_B25426: FLdPr var_168
  loc_B25429:  = Me.Text
  loc_B2542E: FLdRfVar var_140
  loc_B25431: FLdPr Me
  loc_B25434: VCallAd Control_ID_HabeMobaTxt
  loc_B25437: FStAdFunc var_16C
  loc_B2543A: FLdPr var_16C
  loc_B2543D:  = Me.Text
  loc_B25442: FLdRfVar var_14C
  loc_B25445: FLdPr Me
  loc_B25448: VCallAd Control_ID_DetaMobaTxt
  loc_B2544B: FStAdFunc var_170
  loc_B2544E: FLdPr var_170
  loc_B25451:  = Me.Text
  loc_B25456: ILdRf var_14C
  loc_B25459: ILdRf var_140
  loc_B2545C: CR8Str
  loc_B2545E: PopFPR8
  loc_B2545F: ILdRf var_8C
  loc_B25462: CR8Str
  loc_B25464: PopFPR8
  loc_B25465: FLdRfVar var_D8
  loc_B25468: CStrVarTmp
  loc_B25469: FStStrNoPop var_164
  loc_B2546C: FLdRfVar var_C8
  loc_B2546F: CStrVarTmp
  loc_B25470: FStStrNoPop var_15C
  loc_B25473: FLdRfVar var_B8
  loc_B25476: CStrVarTmp
  loc_B25477: FStStrNoPop var_154
  loc_B2547A: CI4Str
  loc_B2547B: FLdRfVar var_A8
  loc_B2547E: CStrVarTmp
  loc_B2547F: FStStrNoPop var_150
  loc_B25482: CI4Str
  loc_B25483: FLdRfVar var_E8
  loc_B25486: CR4Var
  loc_B25487: PopFPR8
  loc_B25488: FLdPr Me
  loc_B2548B: MemLdRfVar from_stack_1.global_52
  loc_B2548E: NewIfNullPr clsmoviextracto
  loc_B25491: Call clsmoviextracto.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B25496: FFreeStr var_150 = "": var_154 = "": var_15C = "": var_164 = "": var_8C = "": var_140 = ""
  loc_B254A7: FFreeAd var_94 = "": var_134 = "": var_13C = "": var_148 = "": var_158 = "": var_160 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_B254BE: FFreeVar var_A8 = "": var_B8 = "": var_C8 = "": var_D8 = ""
  loc_B254CB: Call cmdCancelar_Click()
  loc_B254D0: Branch loc_B255D7
  loc_B254D3: ILdRf var_90
  loc_B254D6: LitStr "btnCancelar"
  loc_B254D9: EqStr
  loc_B254DB: BranchF loc_B254E6
  loc_B254DE: Call cmdCancelar_Click()
  loc_B254E3: Branch loc_B255D7
  loc_B254E6: ILdRf var_90
  loc_B254E9: LitStr "btnPrimero"
  loc_B254EC: EqStr
  loc_B254EE: BranchF loc_B25502
  loc_B254F1: FLdPr Me
  loc_B254F4: MemLdRfVar from_stack_1.global_52
  loc_B254F7: NewIfNullPr clsmoviextracto
  loc_B254FA: Call clsmoviextracto.MoveFirst()
  loc_B254FF: Branch loc_B255D7
  loc_B25502: ILdRf var_90
  loc_B25505: LitStr "btnAnterior"
  loc_B25508: EqStr
  loc_B2550A: BranchF loc_B2551E
  loc_B2550D: FLdPr Me
  loc_B25510: MemLdRfVar from_stack_1.global_52
  loc_B25513: NewIfNullPr clsmoviextracto
  loc_B25516: Call clsmoviextracto.MovePrevious()
  loc_B2551B: Branch loc_B255D7
  loc_B2551E: ILdRf var_90
  loc_B25521: LitStr "btnSiguiente"
  loc_B25524: EqStr
  loc_B25526: BranchF loc_B2553A
  loc_B25529: FLdPr Me
  loc_B2552C: MemLdRfVar from_stack_1.global_52
  loc_B2552F: NewIfNullPr clsmoviextracto
  loc_B25532: Call clsmoviextracto.MoveNext()
  loc_B25537: Branch loc_B255D7
  loc_B2553A: ILdRf var_90
  loc_B2553D: LitStr "btnUltimo"
  loc_B25540: EqStr
  loc_B25542: BranchF loc_B25556
  loc_B25545: FLdPr Me
  loc_B25548: MemLdRfVar from_stack_1.global_52
  loc_B2554B: NewIfNullPr clsmoviextracto
  loc_B2554E: Call clsmoviextracto.MoveLast()
  loc_B25553: Branch loc_B255D7
  loc_B25556: ILdRf var_90
  loc_B25559: LitStr "btnFiltrar"
  loc_B2555C: EqStr
  loc_B2555E: BranchF loc_B25564
  loc_B25561: Branch loc_B255D7
  loc_B25564: ILdRf var_90
  loc_B25567: LitStr "btnBuscar"
  loc_B2556A: EqStr
  loc_B2556C: BranchF loc_B25572
  loc_B2556F: Branch loc_B255D7
  loc_B25572: ILdRf var_90
  loc_B25575: LitStr "btnImprimir"
  loc_B25578: EqStr
  loc_B2557A: BranchF loc_B25580
  loc_B2557D: Branch loc_B255D7
  loc_B25580: ILdRf var_90
  loc_B25583: LitStr "btnAyuda"
  loc_B25586: EqStr
  loc_B25588: BranchF loc_B255B7
  loc_B2558B: LitVar_Missing var_D8
  loc_B2558E: LitVar_Missing var_C8
  loc_B25591: LitVar_Missing var_B8
  loc_B25594: LitI4 0
  loc_B25599: LitVarStr var_118, "Opcion no disponible en esta version."
  loc_B2559E: FStVarCopyObj var_A8
  loc_B255A1: FLdRfVar var_A8
  loc_B255A4: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B255A9: FFreeVar var_A8 = "": var_B8 = "": var_C8 = ""
  loc_B255B4: Branch loc_B255D7
  loc_B255B7: ILdRf var_90
  loc_B255BA: LitStr "btnSalir"
  loc_B255BD: EqStr
  loc_B255BF: BranchF loc_B255D7
  loc_B255C2: ILdRf Me
  loc_B255C5: FStAdNoPop
  loc_B255C9: ImpAdLdRf MemVar_C44F9C
  loc_B255CC: NewIfNullPr Me
  loc_B255CF: Me.Global.Unload from_stack_1
  loc_B255D4: FFree1Ad var_94
  loc_B255D7: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9D1058
  'Data Table: 48A940
  loc_9D0F64: LitVarStr var_94, vbNullString
  loc_9D0F69: PopAdLdVar
  loc_9D0F6A: FLdPr Me
  loc_9D0F6D: VCallAd Control_ID_FiltroMsk
  loc_9D0F70: FStAdFunc var_A8
  loc_9D0F73: FLdPr var_A8
  loc_9D0F76: LateIdSt
  loc_9D0F7B: FFree1Ad var_A8
  loc_9D0F7E: FLdRfVar var_AA
  loc_9D0F81: FLdPr Me
  loc_9D0F84: VCallAd Control_ID_FiltroCbo
  loc_9D0F87: FStAdFunc var_A8
  loc_9D0F8A: FLdPr var_A8
  loc_9D0F8D:  = Me.ListIndex
  loc_9D0F92: FLdI2 var_AA
  loc_9D0F95: FStI2 var_AC
  loc_9D0F98: FFree1Ad var_A8
  loc_9D0F9B: FLdI2 var_AC
  loc_9D0F9E: LitI2_Byte 0
  loc_9D0FA0: EqI2
  loc_9D0FA1: BranchF loc_9D0FC1
  loc_9D0FA4: LitVarStr var_94, "###"
  loc_9D0FA9: PopAdLdVar
  loc_9D0FAA: FLdPr Me
  loc_9D0FAD: VCallAd Control_ID_FiltroMsk
  loc_9D0FB0: FStAdFunc var_A8
  loc_9D0FB3: FLdPr var_A8
  loc_9D0FB6: LateIdSt
  loc_9D0FBB: FFree1Ad var_A8
  loc_9D0FBE: Branch loc_9D1056
  loc_9D0FC1: FLdI2 var_AC
  loc_9D0FC4: LitI2_Byte 2
  loc_9D0FC6: EqI2
  loc_9D0FC7: BranchF loc_9D0FE7
  loc_9D0FCA: LitVarStr var_94, "########"
  loc_9D0FCF: PopAdLdVar
  loc_9D0FD0: FLdPr Me
  loc_9D0FD3: VCallAd Control_ID_FiltroMsk
  loc_9D0FD6: FStAdFunc var_A8
  loc_9D0FD9: FLdPr var_A8
  loc_9D0FDC: LateIdSt
  loc_9D0FE1: FFree1Ad var_A8
  loc_9D0FE4: Branch loc_9D1056
  loc_9D0FE7: FLdI2 var_AC
  loc_9D0FEA: LitI2_Byte 3
  loc_9D0FEC: EqI2
  loc_9D0FED: BranchT loc_9D0FF9
  loc_9D0FF0: FLdI2 var_AC
  loc_9D0FF3: LitI2_Byte 4
  loc_9D0FF5: EqI2
  loc_9D0FF6: BranchF loc_9D1016
  loc_9D0FF9: LitVarStr var_94, "##/##/####"
  loc_9D0FFE: PopAdLdVar
  loc_9D0FFF: FLdPr Me
  loc_9D1002: VCallAd Control_ID_FiltroMsk
  loc_9D1005: FStAdFunc var_A8
  loc_9D1008: FLdPr var_A8
  loc_9D100B: LateIdSt
  loc_9D1010: FFree1Ad var_A8
  loc_9D1013: Branch loc_9D1056
  loc_9D1016: FLdI2 var_AC
  loc_9D1019: LitI2_Byte 5
  loc_9D101B: EqI2
  loc_9D101C: BranchF loc_9D103C
  loc_9D101F: LitVarStr var_94, "########"
  loc_9D1024: PopAdLdVar
  loc_9D1025: FLdPr Me
  loc_9D1028: VCallAd Control_ID_FiltroMsk
  loc_9D102B: FStAdFunc var_A8
  loc_9D102E: FLdPr var_A8
  loc_9D1031: LateIdSt
  loc_9D1036: FFree1Ad var_A8
  loc_9D1039: Branch loc_9D1056
  loc_9D103C: LitVarStr var_94, "&"
  loc_9D1041: PopAdLdVar
  loc_9D1042: FLdPr Me
  loc_9D1045: VCallAd Control_ID_FiltroMsk
  loc_9D1048: FStAdFunc var_A8
  loc_9D104B: FLdPr var_A8
  loc_9D104E: LateIdSt
  loc_9D1053: FFree1Ad var_A8
  loc_9D1056: ExitProcHresult
End Sub

Private Sub DetaMobaTxt_Validate(Cancel As Boolean) '9CBF3C
  'Data Table: 48A940
  loc_9CBE60: FLdRfVar var_8A
  loc_9CBE63: FLdPr Me
  loc_9CBE66: VCallAd Control_ID_cmdCancelar
  loc_9CBE69: FStAdFunc var_88
  loc_9CBE6C: FLdPr var_88
  loc_9CBE6F:  = Me.Value
  loc_9CBE74: FLdI2 var_8A
  loc_9CBE77: NotI4
  loc_9CBE78: FLdRfVar var_92
  loc_9CBE7B: FLdPr Me
  loc_9CBE7E: VCallAd Control_ID_DetaMobaTxt
  loc_9CBE81: FStAdFunc var_90
  loc_9CBE84: FLdPr var_90
  loc_9CBE87:  = Me.Enabled
  loc_9CBE8C: FLdI2 var_92
  loc_9CBE8F: AndI4
  loc_9CBE90: FLdRfVar var_9C
  loc_9CBE93: FLdPr Me
  loc_9CBE96: VCallAd Control_ID_DetaMobaTxt
  loc_9CBE99: FStAdFunc var_98
  loc_9CBE9C: FLdPr var_98
  loc_9CBE9F:  = Me.Text
  loc_9CBEA4: ILdRf var_9C
  loc_9CBEA7: LitStr vbNullString
  loc_9CBEAA: NeStr
  loc_9CBEAC: AndI4
  loc_9CBEAD: FFree1Str var_9C
  loc_9CBEB0: FFreeAd var_88 = "": var_90 = ""
  loc_9CBEB9: BranchF loc_9CBF3A
  loc_9CBEBC: FLdRfVar var_9C
  loc_9CBEBF: FLdPr Me
  loc_9CBEC2: VCallAd Control_ID_DetaMobaTxt
  loc_9CBEC5: FStAdFunc var_88
  loc_9CBEC8: FLdPr var_88
  loc_9CBECB:  = Me.Text
  loc_9CBED0: LitI2_Byte 0
  loc_9CBED2: PopTmpLdAd2 var_9E
  loc_9CBED5: LitI2_Byte 0
  loc_9CBED7: PopTmpLdAd2 var_92
  loc_9CBEDA: LitI2_Byte 0
  loc_9CBEDC: PopTmpLdAd2 var_8A
  loc_9CBEDF: ILdRf var_9C
  loc_9CBEE2: LitStr "Detalle del Movimiento Bancario"
  loc_9CBEE5: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CBEEA: FStStrNoPop var_A4
  loc_9CBEED: FLdPr Me
  loc_9CBEF0: MemStStrCopy
  loc_9CBEF4: FFreeStr var_9C = ""
  loc_9CBEFB: FFree1Ad var_88
  loc_9CBEFE: FLdPr Me
  loc_9CBF01: VCallAd Control_ID_DetaMobaTxt
  loc_9CBF04: FStAdFunc var_A8
  loc_9CBF07: LitNothing
  loc_9CBF09: CastAd
  loc_9CBF0C: FStAdFunc var_98
  loc_9CBF0F: FLdRfVar var_98
  loc_9CBF12: FLdZeroAd var_A8
  loc_9CBF15: FStAdFuncNoPop
  loc_9CBF18: CastAd
  loc_9CBF1B: FStAdFunc var_90
  loc_9CBF1E: FLdRfVar var_90
  loc_9CBF21: FLdPr Me
  loc_9CBF24: MemLdRfVar from_stack_1.global_60
  loc_9CBF27: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CBF2C: IStI2 Cancel
  loc_9CBF2F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CBF3A: ExitProcHresult
End Sub

Private Sub DebeMobaTxt_GotFocus() '94E690
  'Data Table: 48A940
  loc_94E67C: FLdPr Me
  loc_94E67F: VCallAd Control_ID_DebeMobaTxt
  loc_94E682: CVarAd
  loc_94E686: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E68B: FFree1Var var_94 = ""
  loc_94E68E: ExitProcHresult
End Sub

Private Sub DebeMobaTxt_KeyPress(KeyAscii As Integer) '97DEF8
  'Data Table: 48A940
  loc_97DEC4: LitStr "1234567890,."
  loc_97DEC7: FStStrCopy var_88
  loc_97DECA: FLdRfVar var_88
  loc_97DECD: ILdRf KeyAscii
  loc_97DED0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97DED5: IStI2 KeyAscii
  loc_97DED8: FFree1Str var_88
  loc_97DEDB: ILdI2 KeyAscii
  loc_97DEDE: LitStr "."
  loc_97DEE1: ImpAdCallI2 Asc()
  loc_97DEE6: EqI2
  loc_97DEE7: BranchF loc_97DEF5
  loc_97DEEA: LitStr ","
  loc_97DEED: ImpAdCallI2 Asc()
  loc_97DEF2: IStI2 KeyAscii
  loc_97DEF5: ExitProcHresult
End Sub

Private Sub DebeMobaTxt_Validate(Cancel As Boolean) '9BCF90
  'Data Table: 48A940
  loc_9BCEDC: FLdRfVar var_8A
  loc_9BCEDF: FLdPr Me
  loc_9BCEE2: VCallAd Control_ID_cmdCancelar
  loc_9BCEE5: FStAdFunc var_88
  loc_9BCEE8: FLdPr var_88
  loc_9BCEEB:  = Me.Value
  loc_9BCEF0: FLdI2 var_8A
  loc_9BCEF3: NotI4
  loc_9BCEF4: FLdRfVar var_92
  loc_9BCEF7: FLdPr Me
  loc_9BCEFA: VCallAd Control_ID_DebeMobaTxt
  loc_9BCEFD: FStAdFunc var_90
  loc_9BCF00: FLdPr var_90
  loc_9BCF03:  = Me.Enabled
  loc_9BCF08: FLdI2 var_92
  loc_9BCF0B: AndI4
  loc_9BCF0C: FFreeAd var_88 = ""
  loc_9BCF13: BranchF loc_9BCF8E
  loc_9BCF16: FLdRfVar var_98
  loc_9BCF19: FLdPr Me
  loc_9BCF1C: VCallAd Control_ID_DebeMobaTxt
  loc_9BCF1F: FStAdFunc var_88
  loc_9BCF22: FLdPr var_88
  loc_9BCF25:  = Me.Text
  loc_9BCF2A: LitStr "0"
  loc_9BCF2D: LitI2_Byte &HFF
  loc_9BCF2F: LitI2_Byte &HFF
  loc_9BCF31: LitI2_Byte 0
  loc_9BCF33: ILdRf var_98
  loc_9BCF36: LitStr "Débito"
  loc_9BCF39: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BCF3E: FStStrNoPop var_9C
  loc_9BCF41: FLdPr Me
  loc_9BCF44: MemStStrCopy
  loc_9BCF48: FFreeStr var_98 = ""
  loc_9BCF4F: FFree1Ad var_88
  loc_9BCF52: FLdPr Me
  loc_9BCF55: VCallAd Control_ID_DebeMobaTxt
  loc_9BCF58: FStAdFunc var_A4
  loc_9BCF5B: LitNothing
  loc_9BCF5D: CastAd
  loc_9BCF60: FStAdFunc var_A0
  loc_9BCF63: FLdRfVar var_A0
  loc_9BCF66: FLdZeroAd var_A4
  loc_9BCF69: FStAdFuncNoPop
  loc_9BCF6C: CastAd
  loc_9BCF6F: FStAdFunc var_90
  loc_9BCF72: FLdRfVar var_90
  loc_9BCF75: FLdPr Me
  loc_9BCF78: MemLdRfVar from_stack_1.global_60
  loc_9BCF7B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BCF80: IStI2 Cancel
  loc_9BCF83: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BCF8E: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '961E74
  'Data Table: 48A940
  loc_961E5C: FLdPr Me
  loc_961E5F: VCallAd Control_ID_dgdABMS
  loc_961E62: FStAdFunc var_88
  loc_961E65: FLdRfVar var_88
  loc_961E68: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_961E6D: FFree1Ad var_88
  loc_961E70: ExitProcHresult
  loc_961E71: FLdFPR8 var_F0
End Sub

Private Sub dgdABMS_UnknownEvent_1 '961DDC
  'Data Table: 48A940
  loc_961DC4: FLdPr Me
  loc_961DC7: VCallAd Control_ID_dgdABMS
  loc_961DCA: FStAdFunc var_88
  loc_961DCD: FLdRfVar var_88
  loc_961DD0: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_961DD5: FFree1Ad var_88
  loc_961DD8: ExitProcHresult
  loc_961DD9: FLdPr var_A0
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BDB8
  'Data Table: 48A940
  loc_99BD5C: FLdRfVar var_B4
  loc_99BD5F: FLdRfVar var_B0
  loc_99BD62: FLdI2 ColIndex
  loc_99BD65: CVarI2 var_A8
  loc_99BD68: PopAdLdVar
  loc_99BD69: FLdPr Me
  loc_99BD6C: VCallAd Control_ID_dgdABMS
  loc_99BD6F: FStAdFunc var_88
  loc_99BD72: FLdPr var_88
  loc_99BD75: LateIdLdVar var_98 DispID_105 0
  loc_99BD7C: CastAdVar Me
  loc_99BD80: FStAdFunc var_AC
  loc_99BD83: FLdPr var_AC
  loc_99BD86: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BD8B: FLdPr var_B0
  loc_99BD8E:  = Me.DataField
  loc_99BD93: FLdZeroAd var_B4
  loc_99BD96: PopTmpLdAdStr
  loc_99BD9A: FLdPr Me
  loc_99BD9D: MemLdRfVar from_stack_1.global_52
  loc_99BDA0: NewIfNullPr clsmoviextracto
  loc_99BDA3: Call clsmoviextracto.Sort(from_stack_1v)
  loc_99BDA8: FFree1Str var_B8
  loc_99BDAB: FFreeAd var_88 = "": var_AC = ""
  loc_99BDB4: FFree1Var var_98 = ""
  loc_99BDB7: ExitProcHresult
End Sub

Private Sub NumeMobaMsk_UnknownEvent_0 '9AE5E4
  'Data Table: 48A940
  loc_9AE554: FLdPr Me
  loc_9AE557: VCallAd Control_ID_CodiBancMsk
  loc_9AE55A: FStAdFunc var_88
  loc_9AE55D: FLdPr var_88
  loc_9AE560: LateIdLdVar var_98 DispID_22 0
  loc_9AE567: PopAd
  loc_9AE569: FLdPr Me
  loc_9AE56C: VCallAd Control_ID_FechMobaMsk
  loc_9AE56F: FStAdFunc var_9C
  loc_9AE572: FLdPr var_9C
  loc_9AE575: LateIdLdVar var_AC DispID_15 0
  loc_9AE57C: PopAd
  loc_9AE57E: FLdRfVar var_B8
  loc_9AE581: FLdRfVar var_AC
  loc_9AE584: CStrVarTmp
  loc_9AE585: FStStrNoPop var_B4
  loc_9AE588: FLdRfVar var_98
  loc_9AE58B: CStrVarTmp
  loc_9AE58C: FStStrNoPop var_B0
  loc_9AE58F: CI4Str
  loc_9AE590: FLdPr Me
  loc_9AE593: MemLdRfVar from_stack_1.global_52
  loc_9AE596: NewIfNullPr clsmoviextracto
  loc_9AE599: from_stack_3v = clsmoviextracto.UltimoNroSegunTipo(from_stack_1v, from_stack_2v)
  loc_9AE59E: ILdRf var_B8
  loc_9AE5A1: CStrI4
  loc_9AE5A3: CVarStr var_C8
  loc_9AE5A6: PopAdLdVar
  loc_9AE5A7: FLdPr Me
  loc_9AE5AA: VCallAd Control_ID_NumeMobaMsk
  loc_9AE5AD: FStAdFunc var_DC
  loc_9AE5B0: FLdPr var_DC
  loc_9AE5B3: LateIdSt
  loc_9AE5B8: FFreeStr var_B0 = ""
  loc_9AE5BF: FFreeAd var_88 = "": var_9C = ""
  loc_9AE5C8: FFreeVar var_98 = "": var_AC = ""
  loc_9AE5D1: FLdPr Me
  loc_9AE5D4: VCallAd Control_ID_NumeMobaMsk
  loc_9AE5D7: CVarAd
  loc_9AE5DB: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9AE5E0: FFree1Var var_98 = ""
  loc_9AE5E3: ExitProcHresult
End Sub

Private Sub NumeMobaMsk_UnknownEvent_8 '9DCE00
  'Data Table: 48A940
  loc_9DCD04: FLdRfVar var_8A
  loc_9DCD07: FLdPr Me
  loc_9DCD0A: VCallAd Control_ID_cmdCancelar
  loc_9DCD0D: FStAdFunc var_88
  loc_9DCD10: FLdPr var_88
  loc_9DCD13:  = Me.Value
  loc_9DCD18: FLdI2 var_8A
  loc_9DCD1B: NotI4
  loc_9DCD1C: FLdPr Me
  loc_9DCD1F: VCallAd Control_ID_NumeMobaMsk
  loc_9DCD22: FStAdFunc var_90
  loc_9DCD25: FLdPr var_90
  loc_9DCD28: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DCD2F: CBoolVar
  loc_9DCD31: AndI4
  loc_9DCD32: FFreeAd var_88 = ""
  loc_9DCD39: FFree1Var var_A0 = ""
  loc_9DCD3C: BranchF loc_9DCDFC
  loc_9DCD3F: FLdPr Me
  loc_9DCD42: VCallAd Control_ID_NumeMobaMsk
  loc_9DCD45: FStAdFunc var_88
  loc_9DCD48: FLdPr var_88
  loc_9DCD4B: LateIdLdVar var_A0 DispID_22 0
  loc_9DCD52: CStrVarTmp
  loc_9DCD53: FStStrNoPop var_A4
  loc_9DCD56: LitStr vbNullString
  loc_9DCD59: EqStr
  loc_9DCD5B: FFree1Str var_A4
  loc_9DCD5E: FFree1Ad var_88
  loc_9DCD61: FFree1Var var_A0 = ""
  loc_9DCD64: BranchF loc_9DCD81
  loc_9DCD67: LitVarStr var_B4, "0"
  loc_9DCD6C: PopAdLdVar
  loc_9DCD6D: FLdPr Me
  loc_9DCD70: VCallAd Control_ID_NumeMobaMsk
  loc_9DCD73: FStAdFunc var_88
  loc_9DCD76: FLdPr var_88
  loc_9DCD79: LateIdSt
  loc_9DCD7E: FFree1Ad var_88
  loc_9DCD81: FLdPr Me
  loc_9DCD84: VCallAd Control_ID_NumeMobaMsk
  loc_9DCD87: FStAdFunc var_88
  loc_9DCD8A: FLdPr var_88
  loc_9DCD8D: LateIdLdVar var_A0 DispID_22 0
  loc_9DCD94: PopAd
  loc_9DCD96: LitI2_Byte 0
  loc_9DCD98: LitI2_Byte 0
  loc_9DCD9A: FLdRfVar var_A0
  loc_9DCD9D: CStrVarTmp
  loc_9DCD9E: FStStrNoPop var_A4
  loc_9DCDA1: LitStr "Número de movimiento"
  loc_9DCDA4: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_9DCDA9: FStStrNoPop var_C8
  loc_9DCDAC: FLdPr Me
  loc_9DCDAF: MemStStrCopy
  loc_9DCDB3: FFreeStr var_A4 = ""
  loc_9DCDBA: FFree1Ad var_88
  loc_9DCDBD: FFree1Var var_A0 = ""
  loc_9DCDC0: FLdPr Me
  loc_9DCDC3: VCallAd Control_ID_NumeMobaMsk
  loc_9DCDC6: FStAdFunc var_D0
  loc_9DCDC9: LitNothing
  loc_9DCDCB: CastAd
  loc_9DCDCE: FStAdFunc var_CC
  loc_9DCDD1: FLdRfVar var_CC
  loc_9DCDD4: FLdZeroAd var_D0
  loc_9DCDD7: FStAdFuncNoPop
  loc_9DCDDA: CastAd
  loc_9DCDDD: FStAdFunc var_90
  loc_9DCDE0: FLdRfVar var_90
  loc_9DCDE3: FLdPr Me
  loc_9DCDE6: MemLdRfVar from_stack_1.global_60
  loc_9DCDE9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DCDEE: IStI2 ColIndex
  loc_9DCDF1: FFreeAd var_88 = "": var_90 = "": var_CC = ""
  loc_9DCDFC: ExitProcHresult
End Sub

Private Sub NumeMobaMsk_KeyPress(KeyAscii As Integer) '961F0C
  'Data Table: 48A940
  loc_961EF4: LitStr "1234567890"
  loc_961EF7: FStStrCopy var_88
  loc_961EFA: FLdRfVar var_88
  loc_961EFD: ILdRf KeyAscii
  loc_961F00: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_961F05: IStI2 KeyAscii
  loc_961F08: FFree1Str var_88
  loc_961F0B: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '94E9A8
  'Data Table: 48A940
  loc_94E994: FLdPr Me
  loc_94E997: VCallAd Control_ID_CodiBancMsk
  loc_94E99A: CVarAd
  loc_94E99E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E9A3: FFree1Var var_94 = ""
  loc_94E9A6: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_8 '9E8E5C
  'Data Table: 48A940
  loc_9E8D44: FLdRfVar var_8A
  loc_9E8D47: FLdPr Me
  loc_9E8D4A: VCallAd Control_ID_cmdCancelar
  loc_9E8D4D: FStAdFunc var_88
  loc_9E8D50: FLdPr var_88
  loc_9E8D53:  = Me.Value
  loc_9E8D58: FLdI2 var_8A
  loc_9E8D5B: NotI4
  loc_9E8D5C: FLdPr Me
  loc_9E8D5F: VCallAd Control_ID_CodiBancMsk
  loc_9E8D62: FStAdFunc var_90
  loc_9E8D65: FLdPr var_90
  loc_9E8D68: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E8D6F: CBoolVar
  loc_9E8D71: AndI4
  loc_9E8D72: FFreeAd var_88 = ""
  loc_9E8D79: FFree1Var var_A0 = ""
  loc_9E8D7C: BranchF loc_9E8E58
  loc_9E8D7F: FLdPr Me
  loc_9E8D82: VCallAd Control_ID_CodiBancMsk
  loc_9E8D85: FStAdFunc var_88
  loc_9E8D88: FLdPr var_88
  loc_9E8D8B: LateIdLdVar var_A0 DispID_22 0
  loc_9E8D92: PopAd
  loc_9E8D94: LitI4 0
  loc_9E8D99: FStStrCopy var_AC
  loc_9E8D9C: FLdRfVar var_AC
  loc_9E8D9F: FLdPr Me
  loc_9E8DA2: MemLdRfVar from_stack_1.global_68
  loc_9E8DA5: NewIfNullRf
  loc_9E8DA9: FLdRfVar var_A0
  loc_9E8DAC: CStrVarTmp
  loc_9E8DAD: FStStrNoPop var_A8
  loc_9E8DB0: ImpAdLdI2 MemVar_C3D064
  loc_9E8DB3: CStrUI1
  loc_9E8DB5: FStStrNoPop var_A4
  loc_9E8DB8: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9E8DBD: FFreeStr var_A4 = "": var_A8 = ""
  loc_9E8DC6: FFree1Ad var_88
  loc_9E8DC9: FFree1Var var_A0 = ""
  loc_9E8DCC: BranchF loc_9E8DFD
  loc_9E8DCF: FLdRfVar var_A4
  loc_9E8DD2: FLdPr Me
  loc_9E8DD5: MemLdRfVar from_stack_1.global_68
  loc_9E8DD8: NewIfNullPr tblbanco
  loc_9E8DDB: from_stack_1v = tblbanco.DetaBancGet()
  loc_9E8DE0: ILdRf var_A4
  loc_9E8DE3: FLdPr Me
  loc_9E8DE6: VCallAd Control_ID_DetaBancLbl
  loc_9E8DE9: FStAdFunc var_88
  loc_9E8DEC: FLdPr var_88
  loc_9E8DEF: Me.Caption = from_stack_1
  loc_9E8DF4: FFree1Str var_A4
  loc_9E8DF7: FFree1Ad var_88
  loc_9E8DFA: Branch loc_9E8E58
  loc_9E8DFD: FLdRfVar var_A4
  loc_9E8E00: FLdPr Me
  loc_9E8E03: MemLdRfVar from_stack_1.global_68
  loc_9E8E06: NewIfNullPr tblbanco
  loc_9E8E09: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9E8E0E: ILdRf var_A4
  loc_9E8E11: FLdPr Me
  loc_9E8E14: MemStStrCopy
  loc_9E8E18: FFree1Str var_A4
  loc_9E8E1B: FLdPr Me
  loc_9E8E1E: VCallAd Control_ID_CodiBancMsk
  loc_9E8E21: FStAdFunc var_B4
  loc_9E8E24: FLdPr Me
  loc_9E8E27: VCallAd Control_ID_DetaBancLbl
  loc_9E8E2A: FStAdFunc var_B0
  loc_9E8E2D: FLdRfVar var_B0
  loc_9E8E30: FLdZeroAd var_B4
  loc_9E8E33: FStAdFuncNoPop
  loc_9E8E36: CastAd
  loc_9E8E39: FStAdFunc var_90
  loc_9E8E3C: FLdRfVar var_90
  loc_9E8E3F: FLdPr Me
  loc_9E8E42: MemLdRfVar from_stack_1.global_60
  loc_9E8E45: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E8E4A: IStI2 KeyAscii
  loc_9E8E4D: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9E8E58: ExitProcHresult
  loc_9E8E59: PopTmpLdAd8 arg_2FF
End Sub

Private Sub CodiBancMsk_KeyPress(KeyAscii As Integer) '9F1954
  'Data Table: 48A940
  loc_9F182C: ILdI2 KeyAscii
  loc_9F182F: CI4UI1
  loc_9F1830: LitI4 &H20
  loc_9F1835: EqI4
  loc_9F1836: BranchF loc_9F1951
  loc_9F1839: LitVar_Missing var_A4
  loc_9F183C: PopAdLdVar
  loc_9F183D: LitVarI4
  loc_9F1845: PopAdLdVar
  loc_9F1846: ImpAdLdRf MemVar_C3D6AC
  loc_9F1849: NewIfNullPr bscBanco
  loc_9F184C: bscBanco.Show from_stack_1, from_stack_2
  loc_9F1851: FLdRfVar var_AC
  loc_9F1854: FLdRfVar var_A8
  loc_9F1857: ImpAdLdRf MemVar_C3D6AC
  loc_9F185A: NewIfNullPr bscBanco
  loc_9F185D: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F1862: FLdPr var_A8
  loc_9F1865: from_stack_1 = clsbase.RecordCount
  loc_9F186A: ILdRf var_AC
  loc_9F186D: LitI4 0
  loc_9F1872: GtI4
  loc_9F1873: FFree1Ad var_A8
  loc_9F1876: BranchF loc_9F1951
  loc_9F1879: FLdRfVar var_C8
  loc_9F187C: FLdRfVar var_B8
  loc_9F187F: LitVarStr var_94, "CodiBanc"
  loc_9F1884: PopAdLdVar
  loc_9F1885: FLdRfVar var_B4
  loc_9F1888: FLdRfVar var_B0
  loc_9F188B: FLdRfVar var_A8
  loc_9F188E: ImpAdLdRf MemVar_C3D6AC
  loc_9F1891: NewIfNullPr bscBanco
  loc_9F1894: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F1899: FLdPr var_A8
  loc_9F189C: from_stack_1v = clsbase.RsFrmGet()
  loc_9F18A1: FLdPr var_B0
  loc_9F18A4:  = Me.Fields
  loc_9F18A9: FLdPr var_B4
  loc_9F18AC: from_stack_2 = Me.Item(from_stack_1)
  loc_9F18B1: FLdPr var_B8
  loc_9F18B4:  = Me.Value
  loc_9F18B9: FLdRfVar var_C8
  loc_9F18BC: CStrVarTmp
  loc_9F18BD: CVarStr var_D8
  loc_9F18C0: PopAdLdVar
  loc_9F18C1: FLdPr Me
  loc_9F18C4: VCallAd Control_ID_CodiBancMsk
  loc_9F18C7: FStAdFunc var_DC
  loc_9F18CA: FLdPr var_DC
  loc_9F18CD: LateIdSt
  loc_9F18D2: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F18DF: FFreeVar var_C8 = ""
  loc_9F18E6: FLdRfVar var_C8
  loc_9F18E9: FLdRfVar var_B8
  loc_9F18EC: LitVarStr var_94, "DetaBanc"
  loc_9F18F1: PopAdLdVar
  loc_9F18F2: FLdRfVar var_B4
  loc_9F18F5: FLdRfVar var_B0
  loc_9F18F8: FLdRfVar var_A8
  loc_9F18FB: ImpAdLdRf MemVar_C3D6AC
  loc_9F18FE: NewIfNullPr bscBanco
  loc_9F1901: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F1906: FLdPr var_A8
  loc_9F1909: from_stack_1v = clsbase.RsFrmGet()
  loc_9F190E: FLdPr var_B0
  loc_9F1911:  = Me.Fields
  loc_9F1916: FLdPr var_B4
  loc_9F1919: from_stack_2 = Me.Item(from_stack_1)
  loc_9F191E: FLdPr var_B8
  loc_9F1921:  = Me.Value
  loc_9F1926: FLdRfVar var_C8
  loc_9F1929: CStrVarTmp
  loc_9F192A: FStStrNoPop var_E0
  loc_9F192D: FLdPr Me
  loc_9F1930: VCallAd Control_ID_DetaBancLbl
  loc_9F1933: FStAdFunc var_DC
  loc_9F1936: FLdPr var_DC
  loc_9F1939: Me.Caption = from_stack_1
  loc_9F193E: FFree1Str var_E0
  loc_9F1941: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F194E: FFree1Var var_C8 = ""
  loc_9F1951: ExitProcHresult
  loc_9F1952: FLdPr var_37F8
End Sub

Private Sub FecoMobaMsk_UnknownEvent_0 '94E840
  'Data Table: 48A940
  loc_94E82C: FLdPr Me
  loc_94E82F: VCallAd Control_ID_FecoMobaMsk
  loc_94E832: CVarAd
  loc_94E836: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E83B: FFree1Var var_94 = ""
  loc_94E83E: ExitProcHresult
End Sub

Private Sub FecoMobaMsk_UnknownEvent_8 '9DE7BC
  'Data Table: 48A940
  loc_9DE6C0: FLdRfVar var_8A
  loc_9DE6C3: FLdPr Me
  loc_9DE6C6: VCallAd Control_ID_cmdCancelar
  loc_9DE6C9: FStAdFunc var_88
  loc_9DE6CC: FLdPr var_88
  loc_9DE6CF:  = Me.Value
  loc_9DE6D4: FLdI2 var_8A
  loc_9DE6D7: NotI4
  loc_9DE6D8: FLdPr Me
  loc_9DE6DB: VCallAd Control_ID_FecoMobaMsk
  loc_9DE6DE: FStAdFunc var_90
  loc_9DE6E1: FLdPr var_90
  loc_9DE6E4: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DE6EB: CBoolVar
  loc_9DE6ED: AndI4
  loc_9DE6EE: FLdPr Me
  loc_9DE6F1: VCallAd Control_ID_FecoMobaMsk
  loc_9DE6F4: FStAdFunc var_A4
  loc_9DE6F7: FLdPr var_A4
  loc_9DE6FA: LateIdLdVar var_B4 DispID_20 0
  loc_9DE701: CStrVarTmp
  loc_9DE702: FStStrNoPop var_B8
  loc_9DE705: LitStr vbNullString
  loc_9DE708: NeStr
  loc_9DE70A: AndI4
  loc_9DE70B: FFree1Str var_B8
  loc_9DE70E: FFreeAd var_88 = "": var_90 = ""
  loc_9DE717: FFreeVar var_A0 = ""
  loc_9DE71E: BranchF loc_9DE7B9
  loc_9DE721: FLdPr Me
  loc_9DE724: VCallAd Control_ID_FecoMobaMsk
  loc_9DE727: FStAdFunc var_88
  loc_9DE72A: FLdPr var_88
  loc_9DE72D: LateIdLdVar var_A0 DispID_15 0
  loc_9DE734: PopAd
  loc_9DE736: FLdPr Me
  loc_9DE739: VCallAd Control_ID_FecoMobaMsk
  loc_9DE73C: FStAdFunc var_A4
  loc_9DE73F: LitI2_Byte &HFF
  loc_9DE741: PopTmpLdAd2 var_8A
  loc_9DE744: FLdZeroAd var_A4
  loc_9DE747: FStAdFunc var_90
  loc_9DE74A: FLdRfVar var_90
  loc_9DE74D: LitStr vbNullString
  loc_9DE750: LitI2_Byte &HFF
  loc_9DE752: LitI2_Byte &HFF
  loc_9DE754: FLdRfVar var_A0
  loc_9DE757: CStrVarTmp
  loc_9DE758: FStStrNoPop var_B8
  loc_9DE75B: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DE760: FStStrNoPop var_BC
  loc_9DE763: FLdPr Me
  loc_9DE766: MemStStrCopy
  loc_9DE76A: FFreeStr var_B8 = ""
  loc_9DE771: FFreeAd var_88 = "": var_90 = ""
  loc_9DE77A: FFree1Var var_A0 = ""
  loc_9DE77D: FLdPr Me
  loc_9DE780: VCallAd Control_ID_FecoMobaMsk
  loc_9DE783: FStAdFunc var_C0
  loc_9DE786: LitNothing
  loc_9DE788: CastAd
  loc_9DE78B: FStAdFunc var_A4
  loc_9DE78E: FLdRfVar var_A4
  loc_9DE791: FLdZeroAd var_C0
  loc_9DE794: FStAdFuncNoPop
  loc_9DE797: CastAd
  loc_9DE79A: FStAdFunc var_90
  loc_9DE79D: FLdRfVar var_90
  loc_9DE7A0: FLdPr Me
  loc_9DE7A3: MemLdRfVar from_stack_1.global_60
  loc_9DE7A6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DE7AB: IStI2 KeyAscii
  loc_9DE7AE: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9DE7B9: ExitProcHresult
End Sub

Private Sub FecoMobaMsk_KeyPress(KeyAscii As Integer) '988288
  'Data Table: 48A940
  loc_988244: ILdI2 KeyAscii
  loc_988247: CI4UI1
  loc_988248: LitI4 &H20
  loc_98824D: EqI4
  loc_98824E: BranchF loc_988284
  loc_988251: LitVar_Missing var_A4
  loc_988254: PopAdLdVar
  loc_988255: LitVarI4
  loc_98825D: PopAdLdVar
  loc_98825E: ImpAdLdRf MemVar_C3D9A8
  loc_988261: NewIfNullPr frmCalendario
  loc_988264: frmCalendario.Show from_stack_1, from_stack_2
  loc_988269: ImpAdLdRf MemVar_C3D038
  loc_98826C: CDargRef
  loc_988270: FLdPr Me
  loc_988273: VCallAd Control_ID_FecoMobaMsk
  loc_988276: FStAdFunc var_A8
  loc_988279: FLdPr var_A8
  loc_98827C: LateIdSt
  loc_988281: FFree1Ad var_A8
  loc_988284: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9E1570
  'Data Table: 48A940
  loc_9E146C: LitI2_Byte 0
  loc_9E146E: CUI1I2
  loc_9E1470: FLdPr Me
  loc_9E1473: MemStUI1
  loc_9E1477: ILdRf Me
  loc_9E147A: CastAd
  loc_9E147D: FStAdFunc var_88
  loc_9E1480: FLdRfVar var_88
  loc_9E1483: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9E1488: FFree1Ad var_88
  loc_9E148B: LitI4 0
  loc_9E1490: LitI4 0
  loc_9E1495: FLdRfVar var_8C
  loc_9E1498: Redim
  loc_9E14A2: FLdPr Me
  loc_9E14A5: VCallAd Control_ID_dgdABMS
  loc_9E14A8: CVarAd
  loc_9E14AC: ParmAry1St
  loc_9E14B2: FLdRfVar var_8C
  loc_9E14B5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E14BA: FLdRfVar var_8C
  loc_9E14BD: Erase
  loc_9E14BE: FLdPr Me
  loc_9E14C1: MemLdRfVar from_stack_1.global_52
  loc_9E14C4: NewIfNullAd
  loc_9E14C7: FStAd var_A0 
  loc_9E14CB: FLdRfVar var_A0
  loc_9E14CE: CVarRef
  loc_9E14D3: ILdRf Me
  loc_9E14D6: CastAd
  loc_9E14D9: FStAdFunc var_88
  loc_9E14DC: FLdRfVar var_88
  loc_9E14DF: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9E14E4: ILdRf var_A0
  loc_9E14E7: CastAd
  loc_9E14EA: FLdPr Me
  loc_9E14ED: MemStAdFunc
  loc_9E14F1: FFreeAd var_88 = ""
  loc_9E14F8: FLdRfVar var_B4
  loc_9E14FB: FLdPr Me
  loc_9E14FE: MemLdRfVar from_stack_1.global_52
  loc_9E1501: NewIfNullPr clsmoviextracto
  loc_9E1504: from_stack_1 = clsmoviextracto.RecordCount
  loc_9E1509: ILdRf var_B4
  loc_9E150C: LitI4 0
  loc_9E1511: EqI4
  loc_9E1512: BranchF loc_9E1529
  loc_9E1515: ILdRf Me
  loc_9E1518: CastAd
  loc_9E151B: FStAdFunc var_88
  loc_9E151E: FLdRfVar var_88
  loc_9E1521: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9E1526: FFree1Ad var_88
  loc_9E1529: ILdRf Me
  loc_9E152C: CastAd
  loc_9E152F: FStAdFunc var_88
  loc_9E1532: FLdRfVar var_88
  loc_9E1535: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9E153A: FFree1Ad var_88
  loc_9E153D: FLdPr Me
  loc_9E1540: VCallAd Control_ID_dgdABMS
  loc_9E1543: FStAdFunc var_A0
  loc_9E1546: LitI4 0
  loc_9E154B: FStStrCopy var_B8
  loc_9E154E: FLdRfVar var_B8
  loc_9E1551: FLdPr Me
  loc_9E1554: MemLdStr global_64
  loc_9E1557: FLdZeroAd var_A0
  loc_9E155A: FStAdFunc var_88
  loc_9E155D: FLdRfVar var_88
  loc_9E1560: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9E1565: FFree1Str var_B8
  loc_9E1568: FFreeAd var_88 = ""
  loc_9E156F: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94E768
  'Data Table: 48A940
  loc_94E754: FLdPr Me
  loc_94E757: VCallAd Control_ID_FiltroMsk
  loc_94E75A: CVarAd
  loc_94E75E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E763: FFree1Var var_94 = ""
  loc_94E766: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'ABFFA0
  'Data Table: 48A940
  loc_ABF9D0: ILdRf Me
  loc_ABF9D3: CastAd
  loc_ABF9D6: FStAdFunc var_88
  loc_ABF9D9: FLdRfVar var_88
  loc_ABF9DC: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_ABF9E1: FFree1Ad var_88
  loc_ABF9E4: FLdPr Me
  loc_ABF9E7: VCallAd Control_ID_FiltroMsk
  loc_ABF9EA: FStAdFunc var_88
  loc_ABF9ED: FLdPr var_88
  loc_ABF9F0: LateIdLdVar var_98 DispID_22 0
  loc_ABF9F7: CStrVarTmp
  loc_ABF9F8: FStStrNoPop var_9C
  loc_ABF9FB: ImpAdCallI2 Trim$()
  loc_ABFA00: FStStrNoPop var_A0
  loc_ABFA03: LitStr vbNullString
  loc_ABFA06: NeStr
  loc_ABFA08: FFreeStr var_9C = ""
  loc_ABFA0F: FFree1Ad var_88
  loc_ABFA12: FFree1Var var_98 = ""
  loc_ABFA15: BranchF loc_ABFE7B
  loc_ABFA18: FLdRfVar var_A2
  loc_ABFA1B: FLdPr Me
  loc_ABFA1E: VCallAd Control_ID_FiltroCbo
  loc_ABFA21: FStAdFunc var_88
  loc_ABFA24: FLdPr var_88
  loc_ABFA27:  = Me.ListIndex
  loc_ABFA2C: FLdI2 var_A2
  loc_ABFA2F: LitI2_Byte 0
  loc_ABFA31: EqI2
  loc_ABFA32: FFree1Ad var_88
  loc_ABFA35: BranchF loc_ABFAC1
  loc_ABFA38: LitStr "CodiBanc = "
  loc_ABFA3B: FLdPr Me
  loc_ABFA3E: VCallAd Control_ID_FiltroMsk
  loc_ABFA41: FStAdFunc var_88
  loc_ABFA44: FLdPr var_88
  loc_ABFA47: LateIdLdVar var_98 DispID_22 0
  loc_ABFA4E: CStrVarTmp
  loc_ABFA4F: FStStrNoPop var_9C
  loc_ABFA52: ConcatStr
  loc_ABFA53: PopTmpLdAdStr
  loc_ABFA57: FLdPr Me
  loc_ABFA5A: MemLdRfVar from_stack_1.global_52
  loc_ABFA5D: NewIfNullPr clsmoviextracto
  loc_ABFA60: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFA65: FFreeStr var_9C = ""
  loc_ABFA6C: FFree1Ad var_88
  loc_ABFA6F: FFree1Var var_98 = ""
  loc_ABFA72: LitStr "CodiBanc"
  loc_ABFA75: FStStrCopy var_9C
  loc_ABFA78: FLdRfVar var_9C
  loc_ABFA7B: FLdPr Me
  loc_ABFA7E: MemLdRfVar from_stack_1.global_52
  loc_ABFA81: NewIfNullPr clsmoviextracto
  loc_ABFA84: Call clsmoviextracto.Sort(from_stack_1v)
  loc_ABFA89: FFree1Str var_9C
  loc_ABFA8C: LitStr "código de Banco es igual a: "
  loc_ABFA8F: FLdPr Me
  loc_ABFA92: VCallAd Control_ID_FiltroMsk
  loc_ABFA95: FStAdFunc var_88
  loc_ABFA98: FLdPr var_88
  loc_ABFA9B: LateIdLdVar var_98 DispID_22 0
  loc_ABFAA2: CStrVarTmp
  loc_ABFAA3: FStStrNoPop var_9C
  loc_ABFAA6: ConcatStr
  loc_ABFAA7: FStStrNoPop var_A0
  loc_ABFAAA: FLdPr Me
  loc_ABFAAD: MemStStrCopy
  loc_ABFAB1: FFreeStr var_9C = ""
  loc_ABFAB8: FFree1Ad var_88
  loc_ABFABB: FFree1Var var_98 = ""
  loc_ABFABE: Branch loc_ABFE78
  loc_ABFAC1: FLdRfVar var_A2
  loc_ABFAC4: FLdPr Me
  loc_ABFAC7: VCallAd Control_ID_FiltroCbo
  loc_ABFACA: FStAdFunc var_88
  loc_ABFACD: FLdPr var_88
  loc_ABFAD0:  = Me.ListIndex
  loc_ABFAD5: FLdI2 var_A2
  loc_ABFAD8: LitI2_Byte 1
  loc_ABFADA: EqI2
  loc_ABFADB: FFree1Ad var_88
  loc_ABFADE: BranchF loc_ABFB73
  loc_ABFAE1: LitStr "DetaBanc LIKE '" & Chr(37)
  loc_ABFAE4: FLdPr Me
  loc_ABFAE7: VCallAd Control_ID_FiltroMsk
  loc_ABFAEA: FStAdFunc var_88
  loc_ABFAED: FLdPr var_88
  loc_ABFAF0: LateIdLdVar var_98 DispID_22 0
  loc_ABFAF7: CStrVarTmp
  loc_ABFAF8: FStStrNoPop var_9C
  loc_ABFAFB: ConcatStr
  loc_ABFAFC: FStStrNoPop var_A0
  loc_ABFAFF: LitStr Chr(37) & "'"
  loc_ABFB02: ConcatStr
  loc_ABFB03: PopTmpLdAdStr
  loc_ABFB07: FLdPr Me
  loc_ABFB0A: MemLdRfVar from_stack_1.global_52
  loc_ABFB0D: NewIfNullPr clsmoviextracto
  loc_ABFB10: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFB15: FFreeStr var_9C = "": var_A0 = ""
  loc_ABFB1E: FFree1Ad var_88
  loc_ABFB21: FFree1Var var_98 = ""
  loc_ABFB24: LitStr "DetaBanc"
  loc_ABFB27: FStStrCopy var_9C
  loc_ABFB2A: FLdRfVar var_9C
  loc_ABFB2D: FLdPr Me
  loc_ABFB30: MemLdRfVar from_stack_1.global_52
  loc_ABFB33: NewIfNullPr clsmoviextracto
  loc_ABFB36: Call clsmoviextracto.Sort(from_stack_1v)
  loc_ABFB3B: FFree1Str var_9C
  loc_ABFB3E: LitStr "detalle del Banco contiene: "
  loc_ABFB41: FLdPr Me
  loc_ABFB44: VCallAd Control_ID_FiltroMsk
  loc_ABFB47: FStAdFunc var_88
  loc_ABFB4A: FLdPr var_88
  loc_ABFB4D: LateIdLdVar var_98 DispID_22 0
  loc_ABFB54: CStrVarTmp
  loc_ABFB55: FStStrNoPop var_9C
  loc_ABFB58: ConcatStr
  loc_ABFB59: FStStrNoPop var_A0
  loc_ABFB5C: FLdPr Me
  loc_ABFB5F: MemStStrCopy
  loc_ABFB63: FFreeStr var_9C = ""
  loc_ABFB6A: FFree1Ad var_88
  loc_ABFB6D: FFree1Var var_98 = ""
  loc_ABFB70: Branch loc_ABFE78
  loc_ABFB73: FLdRfVar var_A2
  loc_ABFB76: FLdPr Me
  loc_ABFB79: VCallAd Control_ID_FiltroCbo
  loc_ABFB7C: FStAdFunc var_88
  loc_ABFB7F: FLdPr var_88
  loc_ABFB82:  = Me.ListIndex
  loc_ABFB87: FLdI2 var_A2
  loc_ABFB8A: LitI2_Byte 2
  loc_ABFB8C: EqI2
  loc_ABFB8D: FFree1Ad var_88
  loc_ABFB90: BranchF loc_ABFC1C
  loc_ABFB93: LitStr "NumeMoba = "
  loc_ABFB96: FLdPr Me
  loc_ABFB99: VCallAd Control_ID_FiltroMsk
  loc_ABFB9C: FStAdFunc var_88
  loc_ABFB9F: FLdPr var_88
  loc_ABFBA2: LateIdLdVar var_98 DispID_22 0
  loc_ABFBA9: CStrVarTmp
  loc_ABFBAA: FStStrNoPop var_9C
  loc_ABFBAD: ConcatStr
  loc_ABFBAE: PopTmpLdAdStr
  loc_ABFBB2: FLdPr Me
  loc_ABFBB5: MemLdRfVar from_stack_1.global_52
  loc_ABFBB8: NewIfNullPr clsmoviextracto
  loc_ABFBBB: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFBC0: FFreeStr var_9C = ""
  loc_ABFBC7: FFree1Ad var_88
  loc_ABFBCA: FFree1Var var_98 = ""
  loc_ABFBCD: LitStr "NumeMoba"
  loc_ABFBD0: FStStrCopy var_9C
  loc_ABFBD3: FLdRfVar var_9C
  loc_ABFBD6: FLdPr Me
  loc_ABFBD9: MemLdRfVar from_stack_1.global_52
  loc_ABFBDC: NewIfNullPr clsmoviextracto
  loc_ABFBDF: Call clsmoviextracto.Sort(from_stack_1v)
  loc_ABFBE4: FFree1Str var_9C
  loc_ABFBE7: LitStr "número de movimiento es igual a: "
  loc_ABFBEA: FLdPr Me
  loc_ABFBED: VCallAd Control_ID_FiltroMsk
  loc_ABFBF0: FStAdFunc var_88
  loc_ABFBF3: FLdPr var_88
  loc_ABFBF6: LateIdLdVar var_98 DispID_22 0
  loc_ABFBFD: CStrVarTmp
  loc_ABFBFE: FStStrNoPop var_9C
  loc_ABFC01: ConcatStr
  loc_ABFC02: FStStrNoPop var_A0
  loc_ABFC05: FLdPr Me
  loc_ABFC08: MemStStrCopy
  loc_ABFC0C: FFreeStr var_9C = ""
  loc_ABFC13: FFree1Ad var_88
  loc_ABFC16: FFree1Var var_98 = ""
  loc_ABFC19: Branch loc_ABFE78
  loc_ABFC1C: FLdRfVar var_A2
  loc_ABFC1F: FLdPr Me
  loc_ABFC22: VCallAd Control_ID_FiltroCbo
  loc_ABFC25: FStAdFunc var_88
  loc_ABFC28: FLdPr var_88
  loc_ABFC2B:  = Me.ListIndex
  loc_ABFC30: FLdI2 var_A2
  loc_ABFC33: LitI2_Byte 3
  loc_ABFC35: EqI2
  loc_ABFC36: FFree1Ad var_88
  loc_ABFC39: BranchF loc_ABFCF7
  loc_ABFC3C: FLdPr Me
  loc_ABFC3F: VCallAd Control_ID_FiltroMsk
  loc_ABFC42: FStAdFunc var_88
  loc_ABFC45: FLdPr var_88
  loc_ABFC48: LateIdLdVar var_98 DispID_15 0
  loc_ABFC4F: CStrVarTmp
  loc_ABFC50: CVarStr var_B8
  loc_ABFC53: ImpAdCallI2 IsDate()
  loc_ABFC58: FFree1Ad var_88
  loc_ABFC5B: FFreeVar var_98 = ""
  loc_ABFC62: BranchF loc_ABFCF4
  loc_ABFC65: LitStr "FechMoba = #"
  loc_ABFC68: FLdPr Me
  loc_ABFC6B: VCallAd Control_ID_FiltroMsk
  loc_ABFC6E: FStAdFunc var_88
  loc_ABFC71: FLdPr var_88
  loc_ABFC74: LateIdLdVar var_98 DispID_15 0
  loc_ABFC7B: CStrVarTmp
  loc_ABFC7C: FStStrNoPop var_9C
  loc_ABFC7F: ConcatStr
  loc_ABFC80: FStStrNoPop var_A0
  loc_ABFC83: LitStr "#"
  loc_ABFC86: ConcatStr
  loc_ABFC87: PopTmpLdAdStr
  loc_ABFC8B: FLdPr Me
  loc_ABFC8E: MemLdRfVar from_stack_1.global_52
  loc_ABFC91: NewIfNullPr clsmoviextracto
  loc_ABFC94: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFC99: FFreeStr var_9C = "": var_A0 = ""
  loc_ABFCA2: FFree1Ad var_88
  loc_ABFCA5: FFree1Var var_98 = ""
  loc_ABFCA8: LitStr "FechMoba"
  loc_ABFCAB: FStStrCopy var_9C
  loc_ABFCAE: FLdRfVar var_9C
  loc_ABFCB1: FLdPr Me
  loc_ABFCB4: MemLdRfVar from_stack_1.global_52
  loc_ABFCB7: NewIfNullPr clsmoviextracto
  loc_ABFCBA: Call clsmoviextracto.Sort(from_stack_1v)
  loc_ABFCBF: FFree1Str var_9C
  loc_ABFCC2: LitStr "Fecha de Emisión es igual a: "
  loc_ABFCC5: FLdPr Me
  loc_ABFCC8: VCallAd Control_ID_FiltroMsk
  loc_ABFCCB: FStAdFunc var_88
  loc_ABFCCE: FLdPr var_88
  loc_ABFCD1: LateIdLdVar var_98 DispID_15 0
  loc_ABFCD8: CStrVarTmp
  loc_ABFCD9: FStStrNoPop var_9C
  loc_ABFCDC: ConcatStr
  loc_ABFCDD: FStStrNoPop var_A0
  loc_ABFCE0: FLdPr Me
  loc_ABFCE3: MemStStrCopy
  loc_ABFCE7: FFreeStr var_9C = ""
  loc_ABFCEE: FFree1Ad var_88
  loc_ABFCF1: FFree1Var var_98 = ""
  loc_ABFCF4: Branch loc_ABFE78
  loc_ABFCF7: FLdRfVar var_A2
  loc_ABFCFA: FLdPr Me
  loc_ABFCFD: VCallAd Control_ID_FiltroCbo
  loc_ABFD00: FStAdFunc var_88
  loc_ABFD03: FLdPr var_88
  loc_ABFD06:  = Me.ListIndex
  loc_ABFD0B: FLdI2 var_A2
  loc_ABFD0E: LitI2_Byte 4
  loc_ABFD10: EqI2
  loc_ABFD11: FFree1Ad var_88
  loc_ABFD14: BranchF loc_ABFDD2
  loc_ABFD17: FLdPr Me
  loc_ABFD1A: VCallAd Control_ID_FiltroMsk
  loc_ABFD1D: FStAdFunc var_88
  loc_ABFD20: FLdPr var_88
  loc_ABFD23: LateIdLdVar var_98 DispID_15 0
  loc_ABFD2A: CStrVarTmp
  loc_ABFD2B: CVarStr var_B8
  loc_ABFD2E: ImpAdCallI2 IsDate()
  loc_ABFD33: FFree1Ad var_88
  loc_ABFD36: FFreeVar var_98 = ""
  loc_ABFD3D: BranchF loc_ABFDCF
  loc_ABFD40: LitStr "FecoMoba = #"
  loc_ABFD43: FLdPr Me
  loc_ABFD46: VCallAd Control_ID_FiltroMsk
  loc_ABFD49: FStAdFunc var_88
  loc_ABFD4C: FLdPr var_88
  loc_ABFD4F: LateIdLdVar var_98 DispID_15 0
  loc_ABFD56: CStrVarTmp
  loc_ABFD57: FStStrNoPop var_9C
  loc_ABFD5A: ConcatStr
  loc_ABFD5B: FStStrNoPop var_A0
  loc_ABFD5E: LitStr "#"
  loc_ABFD61: ConcatStr
  loc_ABFD62: PopTmpLdAdStr
  loc_ABFD66: FLdPr Me
  loc_ABFD69: MemLdRfVar from_stack_1.global_52
  loc_ABFD6C: NewIfNullPr clsmoviextracto
  loc_ABFD6F: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFD74: FFreeStr var_9C = "": var_A0 = ""
  loc_ABFD7D: FFree1Ad var_88
  loc_ABFD80: FFree1Var var_98 = ""
  loc_ABFD83: LitStr "FecoMoba"
  loc_ABFD86: FStStrCopy var_9C
  loc_ABFD89: FLdRfVar var_9C
  loc_ABFD8C: FLdPr Me
  loc_ABFD8F: MemLdRfVar from_stack_1.global_52
  loc_ABFD92: NewIfNullPr clsmoviextracto
  loc_ABFD95: Call clsmoviextracto.Sort(from_stack_1v)
  loc_ABFD9A: FFree1Str var_9C
  loc_ABFD9D: LitStr "Fecha de Conciliación es igual a: "
  loc_ABFDA0: FLdPr Me
  loc_ABFDA3: VCallAd Control_ID_FiltroMsk
  loc_ABFDA6: FStAdFunc var_88
  loc_ABFDA9: FLdPr var_88
  loc_ABFDAC: LateIdLdVar var_98 DispID_15 0
  loc_ABFDB3: CStrVarTmp
  loc_ABFDB4: FStStrNoPop var_9C
  loc_ABFDB7: ConcatStr
  loc_ABFDB8: FStStrNoPop var_A0
  loc_ABFDBB: FLdPr Me
  loc_ABFDBE: MemStStrCopy
  loc_ABFDC2: FFreeStr var_9C = ""
  loc_ABFDC9: FFree1Ad var_88
  loc_ABFDCC: FFree1Var var_98 = ""
  loc_ABFDCF: Branch loc_ABFE78
  loc_ABFDD2: FLdRfVar var_A2
  loc_ABFDD5: FLdPr Me
  loc_ABFDD8: VCallAd Control_ID_FiltroCbo
  loc_ABFDDB: FStAdFunc var_88
  loc_ABFDDE: FLdPr var_88
  loc_ABFDE1:  = Me.ListIndex
  loc_ABFDE6: FLdI2 var_A2
  loc_ABFDE9: LitI2_Byte 5
  loc_ABFDEB: EqI2
  loc_ABFDEC: FFree1Ad var_88
  loc_ABFDEF: BranchF loc_ABFE78
  loc_ABFDF2: LitStr "ImpoMoba >= "
  loc_ABFDF5: FLdPr Me
  loc_ABFDF8: VCallAd Control_ID_FiltroMsk
  loc_ABFDFB: FStAdFunc var_88
  loc_ABFDFE: FLdPr var_88
  loc_ABFE01: LateIdLdVar var_98 DispID_22 0
  loc_ABFE08: CStrVarTmp
  loc_ABFE09: FStStrNoPop var_9C
  loc_ABFE0C: ConcatStr
  loc_ABFE0D: PopTmpLdAdStr
  loc_ABFE11: FLdPr Me
  loc_ABFE14: MemLdRfVar from_stack_1.global_52
  loc_ABFE17: NewIfNullPr clsmoviextracto
  loc_ABFE1A: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFE1F: FFreeStr var_9C = ""
  loc_ABFE26: FFree1Ad var_88
  loc_ABFE29: FFree1Var var_98 = ""
  loc_ABFE2C: LitStr "ImpoMoba"
  loc_ABFE2F: FStStrCopy var_9C
  loc_ABFE32: FLdRfVar var_9C
  loc_ABFE35: FLdPr Me
  loc_ABFE38: MemLdRfVar from_stack_1.global_52
  loc_ABFE3B: NewIfNullPr clsmoviextracto
  loc_ABFE3E: Call clsmoviextracto.Sort(from_stack_1v)
  loc_ABFE43: FFree1Str var_9C
  loc_ABFE46: LitStr "importe es mayor o igual a: "
  loc_ABFE49: FLdPr Me
  loc_ABFE4C: VCallAd Control_ID_FiltroMsk
  loc_ABFE4F: FStAdFunc var_88
  loc_ABFE52: FLdPr var_88
  loc_ABFE55: LateIdLdVar var_98 DispID_22 0
  loc_ABFE5C: CStrVarTmp
  loc_ABFE5D: FStStrNoPop var_9C
  loc_ABFE60: ConcatStr
  loc_ABFE61: FStStrNoPop var_A0
  loc_ABFE64: FLdPr Me
  loc_ABFE67: MemStStrCopy
  loc_ABFE6B: FFreeStr var_9C = ""
  loc_ABFE72: FFree1Ad var_88
  loc_ABFE75: FFree1Var var_98 = ""
  loc_ABFE78: Branch loc_ABFE9F
  loc_ABFE7B: LitStr vbNullString
  loc_ABFE7E: FStStrCopy var_9C
  loc_ABFE81: FLdRfVar var_9C
  loc_ABFE84: FLdPr Me
  loc_ABFE87: MemLdRfVar from_stack_1.global_52
  loc_ABFE8A: NewIfNullPr clsmoviextracto
  loc_ABFE8D: Call clsmoviextracto.Filter(from_stack_1v)
  loc_ABFE92: FFree1Str var_9C
  loc_ABFE95: LitStr vbNullString
  loc_ABFE98: FLdPr Me
  loc_ABFE9B: MemStStrCopy
  loc_ABFE9F: FLdRfVar var_BC
  loc_ABFEA2: FLdPr Me
  loc_ABFEA5: MemLdRfVar from_stack_1.global_52
  loc_ABFEA8: NewIfNullPr clsmoviextracto
  loc_ABFEAB: from_stack_1 = clsmoviextracto.RecordCount
  loc_ABFEB0: ILdRf var_BC
  loc_ABFEB3: LitI4 0
  loc_ABFEB8: GtI4
  loc_ABFEB9: BranchF loc_ABFF57
  loc_ABFEBC: FLdPr Me
  loc_ABFEBF: MemLdRfVar from_stack_1.global_52
  loc_ABFEC2: NewIfNullAd
  loc_ABFEC5: FStAd var_C0 
  loc_ABFEC9: FLdRfVar var_C0
  loc_ABFECC: CVarRef
  loc_ABFED1: ILdRf Me
  loc_ABFED4: CastAd
  loc_ABFED7: FStAdFunc var_88
  loc_ABFEDA: FLdRfVar var_88
  loc_ABFEDD: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_ABFEE2: ILdRf var_C0
  loc_ABFEE5: CastAd
  loc_ABFEE8: FLdPr Me
  loc_ABFEEB: MemStAdFunc
  loc_ABFEEF: FFreeAd var_88 = ""
  loc_ABFEF6: LitI4 0
  loc_ABFEFB: LitI4 1
  loc_ABFF00: FLdRfVar var_D4
  loc_ABFF03: Redim
  loc_ABFF0D: FLdPr Me
  loc_ABFF10: MemLdRfVar from_stack_1.global_52
  loc_ABFF13: NewIfNullAd
  loc_ABFF16: FStAd var_88 
  loc_ABFF1A: FLdRfVar var_88
  loc_ABFF1D: CVarRef
  loc_ABFF22: ParmAry1St
  loc_ABFF28: FLdPr Me
  loc_ABFF2B: VCallAd Control_ID_dgdABMS
  loc_ABFF2E: CVarAd
  loc_ABFF32: ParmAry1St
  loc_ABFF38: FLdRfVar var_D4
  loc_ABFF3B: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_ABFF40: ILdRf var_88
  loc_ABFF43: CastAd
  loc_ABFF46: FLdPr Me
  loc_ABFF49: MemStAdFunc
  loc_ABFF4D: FLdRfVar var_D4
  loc_ABFF50: Erase
  loc_ABFF51: FFree1Ad var_88
  loc_ABFF54: Branch loc_ABFF6B
  loc_ABFF57: ILdRf Me
  loc_ABFF5A: CastAd
  loc_ABFF5D: FStAdFunc var_88
  loc_ABFF60: FLdRfVar var_88
  loc_ABFF63: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_ABFF68: FFree1Ad var_88
  loc_ABFF6B: FLdPr Me
  loc_ABFF6E: VCallAd Control_ID_dgdABMS
  loc_ABFF71: FStAdFunc var_C0
  loc_ABFF74: LitI4 0
  loc_ABFF79: FStStrCopy var_9C
  loc_ABFF7C: FLdRfVar var_9C
  loc_ABFF7F: FLdPr Me
  loc_ABFF82: MemLdStr global_64
  loc_ABFF85: FLdZeroAd var_C0
  loc_ABFF88: FStAdFunc var_88
  loc_ABFF8B: FLdRfVar var_88
  loc_ABFF8E: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_ABFF93: FFree1Str var_9C
  loc_ABFF96: FFreeAd var_88 = ""
  loc_ABFF9D: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997B24
  'Data Table: 48A940
  loc_997AC0: ILdI2 KeyAscii
  loc_997AC3: LitI2_Byte &H27
  loc_997AC5: EqI2
  loc_997AC6: BranchF loc_997ACE
  loc_997AC9: LitI2_Byte 0
  loc_997ACB: IStI2 KeyAscii
  loc_997ACE: FLdRfVar var_88
  loc_997AD1: FLdPr Me
  loc_997AD4: MemLdRfVar from_stack_1.global_52
  loc_997AD7: NewIfNullPr clsmoviextracto
  loc_997ADA: from_stack_1 = clsmoviextracto.RecordCount
  loc_997ADF: ILdRf var_88
  loc_997AE2: LitI4 0
  loc_997AE7: EqI4
  loc_997AE8: ILdI2 KeyAscii
  loc_997AEB: CI4UI1
  loc_997AEC: LitI4 8
  loc_997AF1: NeI4
  loc_997AF2: AndI4
  loc_997AF3: FLdPr Me
  loc_997AF6: VCallAd Control_ID_FiltroMsk
  loc_997AF9: FStAdFunc var_8C
  loc_997AFC: FLdPr var_8C
  loc_997AFF: LateIdLdVar var_9C DispID_16 0
  loc_997B06: CStrVarTmp
  loc_997B07: FStStrNoPop var_A0
  loc_997B0A: LitStr vbNullString
  loc_997B0D: EqStr
  loc_997B0F: AndI4
  loc_997B10: FFree1Str var_A0
  loc_997B13: FFree1Ad var_8C
  loc_997B16: FFree1Var var_9C = ""
  loc_997B19: BranchF loc_997B21
  loc_997B1C: LitI2_Byte 0
  loc_997B1E: IStI2 KeyAscii
  loc_997B21: ExitProcHresult
  loc_997B22: LeCy
End Sub

Private Sub HabeMobaTxt_GotFocus() '94E600
  'Data Table: 48A940
  loc_94E5EC: FLdPr Me
  loc_94E5EF: VCallAd Control_ID_HabeMobaTxt
  loc_94E5F2: CVarAd
  loc_94E5F6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94E5FB: FFree1Var var_94 = ""
  loc_94E5FE: ExitProcHresult
End Sub

Private Sub HabeMobaTxt_KeyPress(KeyAscii As Integer) '97DFC8
  'Data Table: 48A940
  loc_97DF94: LitStr "1234567890,."
  loc_97DF97: FStStrCopy var_88
  loc_97DF9A: FLdRfVar var_88
  loc_97DF9D: ILdRf KeyAscii
  loc_97DFA0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97DFA5: IStI2 KeyAscii
  loc_97DFA8: FFree1Str var_88
  loc_97DFAB: ILdI2 KeyAscii
  loc_97DFAE: LitStr "."
  loc_97DFB1: ImpAdCallI2 Asc()
  loc_97DFB6: EqI2
  loc_97DFB7: BranchF loc_97DFC5
  loc_97DFBA: LitStr ","
  loc_97DFBD: ImpAdCallI2 Asc()
  loc_97DFC2: IStI2 KeyAscii
  loc_97DFC5: ExitProcHresult
  loc_97DFC6: Ary1LdRf
End Sub

Private Sub HabeMobaTxt_Validate(Cancel As Boolean) '9BD47C
  'Data Table: 48A940
  loc_9BD3C8: FLdRfVar var_8A
  loc_9BD3CB: FLdPr Me
  loc_9BD3CE: VCallAd Control_ID_cmdCancelar
  loc_9BD3D1: FStAdFunc var_88
  loc_9BD3D4: FLdPr var_88
  loc_9BD3D7:  = Me.Value
  loc_9BD3DC: FLdI2 var_8A
  loc_9BD3DF: NotI4
  loc_9BD3E0: FLdRfVar var_92
  loc_9BD3E3: FLdPr Me
  loc_9BD3E6: VCallAd Control_ID_HabeMobaTxt
  loc_9BD3E9: FStAdFunc var_90
  loc_9BD3EC: FLdPr var_90
  loc_9BD3EF:  = Me.Enabled
  loc_9BD3F4: FLdI2 var_92
  loc_9BD3F7: AndI4
  loc_9BD3F8: FFreeAd var_88 = ""
  loc_9BD3FF: BranchF loc_9BD47A
  loc_9BD402: FLdRfVar var_98
  loc_9BD405: FLdPr Me
  loc_9BD408: VCallAd Control_ID_HabeMobaTxt
  loc_9BD40B: FStAdFunc var_88
  loc_9BD40E: FLdPr var_88
  loc_9BD411:  = Me.Text
  loc_9BD416: LitStr "0"
  loc_9BD419: LitI2_Byte &HFF
  loc_9BD41B: LitI2_Byte &HFF
  loc_9BD41D: LitI2_Byte 0
  loc_9BD41F: ILdRf var_98
  loc_9BD422: LitStr "Crédito"
  loc_9BD425: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BD42A: FStStrNoPop var_9C
  loc_9BD42D: FLdPr Me
  loc_9BD430: MemStStrCopy
  loc_9BD434: FFreeStr var_98 = ""
  loc_9BD43B: FFree1Ad var_88
  loc_9BD43E: FLdPr Me
  loc_9BD441: VCallAd Control_ID_HabeMobaTxt
  loc_9BD444: FStAdFunc var_A4
  loc_9BD447: LitNothing
  loc_9BD449: CastAd
  loc_9BD44C: FStAdFunc var_A0
  loc_9BD44F: FLdRfVar var_A0
  loc_9BD452: FLdZeroAd var_A4
  loc_9BD455: FStAdFuncNoPop
  loc_9BD458: CastAd
  loc_9BD45B: FStAdFunc var_90
  loc_9BD45E: FLdRfVar var_90
  loc_9BD461: FLdPr Me
  loc_9BD464: MemLdRfVar from_stack_1.global_60
  loc_9BD467: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BD46C: IStI2 Cancel
  loc_9BD46F: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BD47A: ExitProcHresult
End Sub
