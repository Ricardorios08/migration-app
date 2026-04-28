VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmContracargos
  Caption = "Contra Cargos"
  WindowState = 2
  ScaleMode = 3
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmContracargos.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 17775
  ClientHeight = 8940
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 30
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
      TabIndex = 32
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
      TabIndex = 31
      OleObjectBlob = "frmContracargos.frx":324A
    End
  End
  Begin VB.Frame Frame1
    Caption = "Contra Cargos"
    Left = 120
    Top = 3960
    Width = 15360
    Height = 4320
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin MSMask.MaskEdBox FechIngrMsk
      Left = 2760
      Top = 2880
      Width = 1335
      Height = 360
      TabIndex = 23
      OleObjectBlob = "frmContracargos.frx":32D2
      DataField = "FechIngr"
    End
    Begin MSMask.MaskEdBox MskImpoComi
      Left = 7080
      Top = 2880
      Width = 2055
      Height = 360
      TabIndex = 25
      Verb = 14416
    End
    Begin VB.Label LabelccEnteRec
      Caption = "Cuenta:"
      Left = 11400
      Top = 480
      Width = 840
      Height = 300
      TabIndex = 8
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
    Begin VB.Label LabelccEnteRecdf
      Left = 12360
      Top = 480
      Width = 2535
      Height = 375
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "ccEnteRec"
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
    Begin VB.Label LabelCodiEnre
      Caption = "Ente cód.:"
      Left = 240
      Top = 1200
      Width = 1080
      Height = 300
      TabIndex = 10
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
    Begin VB.Label LabelCodiEnredf
      Left = 1440
      Top = 1170
      Width = 1320
      Height = 360
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "CodiEnre"
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
    Begin VB.Label LabelDetaEnredf
      Left = 4440
      Top = 1170
      Width = 2520
      Height = 360
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "DetaEnre"
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
    Begin VB.Label LabelDetaEnre
      Caption = "Ente Rec.:"
      Left = 3240
      Top = 1200
      Width = 1125
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
    Begin VB.Label LabelFechContdf
      Left = 1560
      Top = 2160
      Width = 1680
      Height = 360
      TabIndex = 17
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "FechCont"
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
    End
    Begin VB.Label LabelFechCont
      Caption = "Fecha CC:"
      Left = 360
      Top = 2160
      Width = 1125
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
    Begin VB.Label Labelhaberdf
      Left = 12360
      Top = 2160
      Width = 2160
      Height = 360
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "haber"
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
    End
    Begin VB.Label Labeldebedf
      Left = 7080
      Top = 2160
      Width = 2160
      Height = 360
      TabIndex = 19
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "debe"
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
    End
    Begin VB.Label Labelhaber
      Caption = "Recaudación HABER:"
      Left = 9840
      Top = 2160
      Width = 2385
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
    Begin VB.Label Labeldebe
      Caption = "Recaudación DEBE:"
      Left = 4800
      Top = 2160
      Width = 2205
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
    Begin VB.Label labelcomision
      Caption = "Comisión:"
      Left = 11160
      Top = 2880
      Width = 1035
      Height = 300
      TabIndex = 26
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
    Begin VB.Label labelcomisiondf
      Left = 12360
      Top = 2880
      Width = 2160
      Height = 360
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "comision"
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
    End
    Begin VB.Label LabelImpoComi
      Caption = "Importe comisión:"
      Left = 5040
      Top = 2880
      Width = 1875
      Height = 300
      TabIndex = 24
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
    Begin VB.Label labelFechIngr
      Caption = "Fecha Recaudación:"
      Left = 360
      Top = 2880
      Width = 2205
      Height = 300
      TabIndex = 22
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
    Begin VB.Label LabelIdEpagos
      Caption = "Id:"
      Left = 7800
      Top = 1200
      Width = 270
      Height = 300
      TabIndex = 14
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
    Begin VB.Label LabelccBoleto
      Caption = "Boleto:"
      Left = 7440
      Top = 480
      Width = 750
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
    Begin VB.Label LabelNumeExpe
      Caption = "Expediente:"
      Left = 3120
      Top = 480
      Width = 1260
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
    Begin VB.Label LabelIdEpagosdf
      Left = 8280
      Top = 1170
      Width = 2520
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      Alignment = 1 'Right Justify
      BackStyle = 0 'Transparent
      DataField = "IdEpagos"
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
    Begin VB.Label LabelccBoletodf
      Left = 8280
      Top = 480
      Width = 2520
      Height = 360
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "ccBoleto"
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
    Begin VB.Label LabelNumeExpedf
      Left = 4440
      Top = 480
      Width = 2520
      Height = 360
      TabIndex = 5
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "NumeExpe"
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
    Begin VB.Label LabelNumeContdf
      Left = 1200
      Top = 480
      Width = 1560
      Height = 360
      TabIndex = 3
      BorderStyle = 1 'Fixed Single
      BackStyle = 0 'Transparent
      DataField = "NumeCont"
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
    Begin VB.Label LabelNumeCont
      Caption = "Nro CC:"
      Left = 240
      Top = 480
      Width = 825
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
    Top = 1680
    Width = 15360
    Height = 2235
    TabIndex = 0
    OleObjectBlob = "frmContracargos.frx":3382
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmContracargos.frx":3BE8
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 17775
    Height = 660
    TabIndex = 28
    OleObjectBlob = "frmContracargos.frx":B766
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 29
      TabStop = 0   'False
      Picture = "frmContracargos.frx":BCC2
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmContracargos"


Private Sub cmdCancelar_Click() '9E9C8C
  'Data Table: 4B1374
  loc_9E9B6C: LitI2_Byte 0
  loc_9E9B6E: CUI1I2
  loc_9E9B70: FLdPr Me
  loc_9E9B73: MemStUI1
  loc_9E9B77: ILdRf Me
  loc_9E9B7A: CastAd
  loc_9E9B7D: FStAdFunc var_88
  loc_9E9B80: FLdRfVar var_88
  loc_9E9B83: ImpAdCallFPR4  = Proc_261_1_AC96D8()
  loc_9E9B88: FFree1Ad var_88
  loc_9E9B8B: LitI4 0
  loc_9E9B90: LitI4 0
  loc_9E9B95: FLdRfVar var_8C
  loc_9E9B98: Redim
  loc_9E9BA2: FLdPr Me
  loc_9E9BA5: VCallAd Control_ID_dgdABMS
  loc_9E9BA8: CVarAd
  loc_9E9BAC: ParmAry1St
  loc_9E9BB2: FLdRfVar var_8C
  loc_9E9BB5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E9BBA: FLdRfVar var_8C
  loc_9E9BBD: Erase
  loc_9E9BBE: FLdPr Me
  loc_9E9BC1: MemLdRfVar from_stack_1.global_52
  loc_9E9BC4: NewIfNullAd
  loc_9E9BC7: FStAd var_A0 
  loc_9E9BCB: FLdRfVar var_A0
  loc_9E9BCE: CVarRef
  loc_9E9BD3: ILdRf Me
  loc_9E9BD6: CastAd
  loc_9E9BD9: FStAdFunc var_88
  loc_9E9BDC: FLdRfVar var_88
  loc_9E9BDF: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_9E9BE4: ILdRf var_A0
  loc_9E9BE7: CastAd
  loc_9E9BEA: FLdPr Me
  loc_9E9BED: MemStAdFunc
  loc_9E9BF1: FFreeAd var_88 = ""
  loc_9E9BF8: FLdRfVar var_B4
  loc_9E9BFB: FLdPr Me
  loc_9E9BFE: MemLdRfVar from_stack_1.global_52
  loc_9E9C01: NewIfNullPr clscontracargos
  loc_9E9C04: from_stack_1 = clscontracargos.RecordCount
  loc_9E9C09: ILdRf var_B4
  loc_9E9C0C: LitI4 0
  loc_9E9C11: EqI4
  loc_9E9C12: BranchF loc_9E9C29
  loc_9E9C15: ILdRf Me
  loc_9E9C18: CastAd
  loc_9E9C1B: FStAdFunc var_88
  loc_9E9C1E: FLdRfVar var_88
  loc_9E9C21: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_9E9C26: FFree1Ad var_88
  loc_9E9C29: LitVarStr var_B0, vbNullString
  loc_9E9C2E: PopAdLdVar
  loc_9E9C2F: FLdPr Me
  loc_9E9C32: VCallAd Control_ID_MskImpoComi
  loc_9E9C35: FStAdFunc var_88
  loc_9E9C38: FLdPr var_88
  loc_9E9C3B: LateIdSt
  loc_9E9C40: FFree1Ad var_88
  loc_9E9C43: ILdRf Me
  loc_9E9C46: CastAd
  loc_9E9C49: FStAdFunc var_88
  loc_9E9C4C: FLdRfVar var_88
  loc_9E9C4F: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9E9C54: FFree1Ad var_88
  loc_9E9C57: FLdPr Me
  loc_9E9C5A: VCallAd Control_ID_dgdABMS
  loc_9E9C5D: FStAdFunc var_A0
  loc_9E9C60: LitI4 0
  loc_9E9C65: FStStrCopy var_C8
  loc_9E9C68: FLdRfVar var_C8
  loc_9E9C6B: FLdPr Me
  loc_9E9C6E: MemLdStr global_64
  loc_9E9C71: FLdZeroAd var_A0
  loc_9E9C74: FStAdFunc var_88
  loc_9E9C77: FLdRfVar var_88
  loc_9E9C7A: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_9E9C7F: FFree1Str var_C8
  loc_9E9C82: FFreeAd var_88 = ""
  loc_9E9C89: ExitProcHresult
  loc_9E9C8A: ImpAdStI2 MemVar_C3D1EC
End Sub

Private Sub FechIngrMsk_UnknownEvent_0 '94C7E8
  'Data Table: 4B1374
  loc_94C7D4: FLdPr Me
  loc_94C7D7: VCallAd Control_ID_FechIngrMsk
  loc_94C7DA: CVarAd
  loc_94C7DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C7E3: FFree1Var var_94 = ""
  loc_94C7E6: ExitProcHresult
End Sub

Private Function FechIngrMsk_UnknownEvent_8(arg_C) '9F2218
  'Data Table: 4B1374
  loc_9F20FC: FLdRfVar var_8A
  loc_9F20FF: FLdPr Me
  loc_9F2102: VCallAd Control_ID_cmdCancelar
  loc_9F2105: FStAdFunc var_88
  loc_9F2108: FLdPr var_88
  loc_9F210B:  = Me.Value
  loc_9F2110: FLdI2 var_8A
  loc_9F2113: NotI4
  loc_9F2114: FLdPr Me
  loc_9F2117: VCallAd Control_ID_FechIngrMsk
  loc_9F211A: FStAdFunc var_90
  loc_9F211D: FLdPr var_90
  loc_9F2120: LateIdLdVar var_A0 DispID_13 -32767
  loc_9F2127: CBoolVar
  loc_9F2129: AndI4
  loc_9F212A: FFreeAd var_88 = ""
  loc_9F2131: FFree1Var var_A0 = ""
  loc_9F2134: BranchF loc_9F2217
  loc_9F2137: FLdPr Me
  loc_9F213A: VCallAd Control_ID_FechIngrMsk
  loc_9F213D: FStAdFunc var_88
  loc_9F2140: FLdPr var_88
  loc_9F2143: LateIdLdVar var_A0 DispID_15 0
  loc_9F214A: PopAd
  loc_9F214C: FLdRfVar var_CC
  loc_9F214F: FLdRfVar var_B8
  loc_9F2152: LitVarStr var_B4, "FechCont"
  loc_9F2157: PopAdLdVar
  loc_9F2158: FLdRfVar var_A4
  loc_9F215B: FLdRfVar var_90
  loc_9F215E: FLdPr Me
  loc_9F2161: MemLdRfVar from_stack_1.global_52
  loc_9F2164: NewIfNullPr clscontracargos
  loc_9F2167: from_stack_1v = clscontracargos.RsFrmGet()
  loc_9F216C: FLdPr var_90
  loc_9F216F:  = Me.Fields
  loc_9F2174: FLdPr var_A4
  loc_9F2177: from_stack_2 = Me.Item(from_stack_1)
  loc_9F217C: FLdPr var_B8
  loc_9F217F:  = Me.Value
  loc_9F2184: FLdPr Me
  loc_9F2187: VCallAd Control_ID_FechIngrMsk
  loc_9F218A: FStAdFunc var_DC
  loc_9F218D: LitI2_Byte &HFF
  loc_9F218F: PopTmpLdAd2 var_8A
  loc_9F2192: FLdZeroAd var_DC
  loc_9F2195: FStAdFunc var_D4
  loc_9F2198: FLdRfVar var_D4
  loc_9F219B: FLdRfVar var_CC
  loc_9F219E: CStrVarTmp
  loc_9F219F: FStStrNoPop var_D0
  loc_9F21A2: LitI2_Byte &HFF
  loc_9F21A4: LitI2_Byte &HFF
  loc_9F21A6: FLdRfVar var_A0
  loc_9F21A9: CStrVarTmp
  loc_9F21AA: FStStrNoPop var_BC
  loc_9F21AD: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9F21B2: FStStrNoPop var_D8
  loc_9F21B5: FLdPr Me
  loc_9F21B8: MemStStrCopy
  loc_9F21BC: FFreeStr var_BC = "": var_D0 = ""
  loc_9F21C5: FFreeAd var_88 = "": var_90 = "": var_A4 = "": var_B8 = "": var_D4 = ""
  loc_9F21D4: FFreeVar var_A0 = ""
  loc_9F21DB: FLdPr Me
  loc_9F21DE: VCallAd Control_ID_FechIngrMsk
  loc_9F21E1: FStAdFunc var_B8
  loc_9F21E4: LitNothing
  loc_9F21E6: CastAd
  loc_9F21E9: FStAdFunc var_A4
  loc_9F21EC: FLdRfVar var_A4
  loc_9F21EF: FLdZeroAd var_B8
  loc_9F21F2: FStAdFuncNoPop
  loc_9F21F5: CastAd
  loc_9F21F8: FStAdFunc var_90
  loc_9F21FB: FLdRfVar var_90
  loc_9F21FE: FLdPr Me
  loc_9F2201: MemLdRfVar from_stack_1.global_60
  loc_9F2204: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9F2209: IStI2 arg_C
  loc_9F220C: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9F2217: ExitProcHresult
End Function

Private Sub MskImpoComi_UnknownEvent_0 '94C6C8
  'Data Table: 4B1374
  loc_94C6B4: FLdPr Me
  loc_94C6B7: VCallAd Control_ID_MskImpoComi
  loc_94C6BA: CVarAd
  loc_94C6BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C6C3: FFree1Var var_94 = ""
  loc_94C6C6: ExitProcHresult
End Sub

Private Function MskImpoComi_UnknownEvent_8(arg_C) 'A304D8
  'Data Table: 4B1374
  loc_A30320: FLdRfVar var_8A
  loc_A30323: FLdPr Me
  loc_A30326: VCallAd Control_ID_cmdCancelar
  loc_A30329: FStAdFunc var_88
  loc_A3032C: FLdPr var_88
  loc_A3032F:  = Me.Value
  loc_A30334: FLdI2 var_8A
  loc_A30337: NotI4
  loc_A30338: FLdPr Me
  loc_A3033B: VCallAd Control_ID_MskImpoComi
  loc_A3033E: FStAdFunc var_90
  loc_A30341: FLdPr var_90
  loc_A30344: LateIdLdVar var_A0 DispID_13 -32767
  loc_A3034B: CBoolVar
  loc_A3034D: AndI4
  loc_A3034E: FFreeAd var_88 = ""
  loc_A30355: FFree1Var var_A0 = ""
  loc_A30358: BranchF loc_A304D6
  loc_A3035B: FLdPr Me
  loc_A3035E: VCallAd Control_ID_MskImpoComi
  loc_A30361: FStAdFunc var_88
  loc_A30364: FLdPr var_88
  loc_A30367: LateIdLdVar var_A0 DispID_15 0
  loc_A3036E: PopAd
  loc_A30370: FLdPr Me
  loc_A30373: VCallAd Control_ID_MskImpoComi
  loc_A30376: FStAdFunc var_90
  loc_A30379: FLdPr var_90
  loc_A3037C: LateIdLdVar var_B4 DispID_15 0
  loc_A30383: CStrVarTmp
  loc_A30384: CVarStr var_F4
  loc_A30387: LitVarStr var_D4, "0"
  loc_A3038C: FStVarCopyObj var_E4
  loc_A3038F: FLdRfVar var_E4
  loc_A30392: FLdRfVar var_A0
  loc_A30395: CStrVarTmp
  loc_A30396: FStStrNoPop var_A4
  loc_A30399: LitStr vbNullString
  loc_A3039C: EqStr
  loc_A3039E: CVarBoolI2 var_C4
  loc_A303A2: FLdRfVar var_104
  loc_A303A5: ImpAdCallFPR4  = IIf(, , )
  loc_A303AA: FLdRfVar var_130
  loc_A303AD: FLdRfVar var_120
  loc_A303B0: LitVarStr var_11C, "CodiEnre"
  loc_A303B5: PopAdLdVar
  loc_A303B6: FLdRfVar var_10C
  loc_A303B9: FLdRfVar var_108
  loc_A303BC: FLdPr Me
  loc_A303BF: MemLdRfVar from_stack_1.global_52
  loc_A303C2: NewIfNullPr clscontracargos
  loc_A303C5: from_stack_1v = clscontracargos.RsFrmGet()
  loc_A303CA: FLdPr var_108
  loc_A303CD:  = Me.Fields
  loc_A303D2: FLdPr var_10C
  loc_A303D5: from_stack_2 = Me.Item(from_stack_1)
  loc_A303DA: FLdPr var_120
  loc_A303DD:  = Me.Value
  loc_A303E2: FLdRfVar var_15C
  loc_A303E5: FLdRfVar var_14C
  loc_A303E8: LitVarStr var_148, "CodiEnre"
  loc_A303ED: PopAdLdVar
  loc_A303EE: FLdRfVar var_138
  loc_A303F1: FLdRfVar var_134
  loc_A303F4: FLdPr Me
  loc_A303F7: MemLdRfVar from_stack_1.global_52
  loc_A303FA: NewIfNullPr clscontracargos
  loc_A303FD: from_stack_1v = clscontracargos.RsFrmGet()
  loc_A30402: FLdPr var_134
  loc_A30405:  = Me.Fields
  loc_A3040A: FLdPr var_138
  loc_A3040D: from_stack_2 = Me.Item(from_stack_1)
  loc_A30412: FLdPr var_14C
  loc_A30415:  = Me.Value
  loc_A3041A: LitVar_FALSE
  loc_A3041E: LitVar_TRUE var_18C
  loc_A30421: FLdRfVar var_130
  loc_A30424: FnCIntVar
  loc_A30426: LitI2_Byte &H41
  loc_A30428: EqI2
  loc_A30429: FLdRfVar var_15C
  loc_A3042C: FnCIntVar
  loc_A3042E: LitI2_Byte &H33
  loc_A30430: EqI2
  loc_A30431: OrI4
  loc_A30432: CVarBoolI2 var_16C
  loc_A30436: FLdRfVar var_1BC
  loc_A30439: ImpAdCallFPR4  = IIf(, , )
  loc_A3043E: LitStr "0"
  loc_A30441: LitI2_Byte &HFF
  loc_A30443: FLdRfVar var_1BC
  loc_A30446: CBoolVar
  loc_A30448: LitI2_Byte 0
  loc_A3044A: FLdRfVar var_104
  loc_A3044D: CStrVarVal var_1C0
  loc_A30451: LitStr "Comisión"
  loc_A30454: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_A30459: FStStrNoPop var_1C4
  loc_A3045C: FLdPr Me
  loc_A3045F: MemStStrCopy
  loc_A30463: FFreeStr var_A4 = "": var_1C0 = ""
  loc_A3046C: FFreeAd var_88 = "": var_90 = "": var_108 = "": var_10C = "": var_120 = "": var_134 = "": var_138 = ""
  loc_A3047F: FFreeVar var_A0 = "": var_B4 = "": var_C4 = "": var_E4 = "": var_F4 = "": var_130 = "": var_15C = "": var_16C = "": var_18C = "": var_1AC = "": var_104 = ""
  loc_A3049A: FLdPr Me
  loc_A3049D: VCallAd Control_ID_MskImpoComi
  loc_A304A0: FStAdFunc var_10C
  loc_A304A3: LitNothing
  loc_A304A5: CastAd
  loc_A304A8: FStAdFunc var_108
  loc_A304AB: FLdRfVar var_108
  loc_A304AE: FLdZeroAd var_10C
  loc_A304B1: FStAdFuncNoPop
  loc_A304B4: CastAd
  loc_A304B7: FStAdFunc var_90
  loc_A304BA: FLdRfVar var_90
  loc_A304BD: FLdPr Me
  loc_A304C0: MemLdRfVar from_stack_1.global_60
  loc_A304C3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A304C8: IStI2 arg_C
  loc_A304CB: FFreeAd var_88 = "": var_90 = "": var_108 = ""
  loc_A304D6: ExitProcHresult
End Function

Private Sub MskImpoComi_KeyPress(KeyAscii As Integer) '97C838
  'Data Table: 4B1374
  loc_97C804: LitStr "1234567890,."
  loc_97C807: FStStrCopy var_88
  loc_97C80A: FLdRfVar var_88
  loc_97C80D: ILdRf KeyAscii
  loc_97C810: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97C815: IStI2 KeyAscii
  loc_97C818: FFree1Str var_88
  loc_97C81B: ILdI2 KeyAscii
  loc_97C81E: LitStr "."
  loc_97C821: ImpAdCallI2 Asc()
  loc_97C826: EqI2
  loc_97C827: BranchF loc_97C835
  loc_97C82A: LitStr ","
  loc_97C82D: ImpAdCallI2 Asc()
  loc_97C832: IStI2 KeyAscii
  loc_97C835: ExitProcHresult
  loc_97C836: MulCy
End Sub

Private Sub FiltroCbo_Click() 'A2D8EC
  'Data Table: 4B1374
  loc_A2D6F4: LitVarStr var_94, vbNullString
  loc_A2D6F9: PopAdLdVar
  loc_A2D6FA: FLdPr Me
  loc_A2D6FD: VCallAd Control_ID_FiltroMsk
  loc_A2D700: FStAdFunc var_A8
  loc_A2D703: FLdPr var_A8
  loc_A2D706: LateIdSt
  loc_A2D70B: FFree1Ad var_A8
  loc_A2D70E: FLdRfVar var_AA
  loc_A2D711: FLdPr Me
  loc_A2D714: VCallAd Control_ID_FiltroCbo
  loc_A2D717: FStAdFunc var_A8
  loc_A2D71A: FLdPr var_A8
  loc_A2D71D:  = Me.ListIndex
  loc_A2D722: FLdI2 var_AA
  loc_A2D725: FStI2 var_AC
  loc_A2D728: FFree1Ad var_A8
  loc_A2D72B: FLdI2 var_AC
  loc_A2D72E: LitI2_Byte 0
  loc_A2D730: EqI2
  loc_A2D731: BranchF loc_A2D785
  loc_A2D734: LitVarStr var_94, "&"
  loc_A2D739: PopAdLdVar
  loc_A2D73A: FLdPr Me
  loc_A2D73D: VCallAd Control_ID_FiltroMsk
  loc_A2D740: FStAdFunc var_A8
  loc_A2D743: FLdPr var_A8
  loc_A2D746: LateIdSt
  loc_A2D74B: FFree1Ad var_A8
  loc_A2D74E: LitVarStr var_94, "######"
  loc_A2D753: PopAdLdVar
  loc_A2D754: FLdPr Me
  loc_A2D757: VCallAd Control_ID_FiltroMsk
  loc_A2D75A: FStAdFunc var_A8
  loc_A2D75D: FLdPr var_A8
  loc_A2D760: LateIdSt
  loc_A2D765: FFree1Ad var_A8
  loc_A2D768: LitStr "NumeCont"
  loc_A2D76B: FStStrCopy var_B0
  loc_A2D76E: FLdRfVar var_B0
  loc_A2D771: FLdPr Me
  loc_A2D774: MemLdRfVar from_stack_1.global_52
  loc_A2D777: NewIfNullPr clscontracargos
  loc_A2D77A: Call clscontracargos.Sort(from_stack_1v)
  loc_A2D77F: FFree1Str var_B0
  loc_A2D782: Branch loc_A2D8EA
  loc_A2D785: FLdI2 var_AC
  loc_A2D788: LitI2_Byte 1
  loc_A2D78A: EqI2
  loc_A2D78B: BranchF loc_A2D7DF
  loc_A2D78E: LitVarStr var_94, "&"
  loc_A2D793: PopAdLdVar
  loc_A2D794: FLdPr Me
  loc_A2D797: VCallAd Control_ID_FiltroMsk
  loc_A2D79A: FStAdFunc var_A8
  loc_A2D79D: FLdPr var_A8
  loc_A2D7A0: LateIdSt
  loc_A2D7A5: FFree1Ad var_A8
  loc_A2D7A8: LitVarStr var_94, vbNullString
  loc_A2D7AD: PopAdLdVar
  loc_A2D7AE: FLdPr Me
  loc_A2D7B1: VCallAd Control_ID_FiltroMsk
  loc_A2D7B4: FStAdFunc var_A8
  loc_A2D7B7: FLdPr var_A8
  loc_A2D7BA: LateIdSt
  loc_A2D7BF: FFree1Ad var_A8
  loc_A2D7C2: LitStr "NumeExpe"
  loc_A2D7C5: FStStrCopy var_B0
  loc_A2D7C8: FLdRfVar var_B0
  loc_A2D7CB: FLdPr Me
  loc_A2D7CE: MemLdRfVar from_stack_1.global_52
  loc_A2D7D1: NewIfNullPr clscontracargos
  loc_A2D7D4: Call clscontracargos.Sort(from_stack_1v)
  loc_A2D7D9: FFree1Str var_B0
  loc_A2D7DC: Branch loc_A2D8EA
  loc_A2D7DF: FLdI2 var_AC
  loc_A2D7E2: LitI2_Byte 2
  loc_A2D7E4: EqI2
  loc_A2D7E5: BranchF loc_A2D839
  loc_A2D7E8: LitVarStr var_94, "&"
  loc_A2D7ED: PopAdLdVar
  loc_A2D7EE: FLdPr Me
  loc_A2D7F1: VCallAd Control_ID_FiltroMsk
  loc_A2D7F4: FStAdFunc var_A8
  loc_A2D7F7: FLdPr var_A8
  loc_A2D7FA: LateIdSt
  loc_A2D7FF: FFree1Ad var_A8
  loc_A2D802: LitVarStr var_94, vbNullString
  loc_A2D807: PopAdLdVar
  loc_A2D808: FLdPr Me
  loc_A2D80B: VCallAd Control_ID_FiltroMsk
  loc_A2D80E: FStAdFunc var_A8
  loc_A2D811: FLdPr var_A8
  loc_A2D814: LateIdSt
  loc_A2D819: FFree1Ad var_A8
  loc_A2D81C: LitStr "IdEpagos"
  loc_A2D81F: FStStrCopy var_B0
  loc_A2D822: FLdRfVar var_B0
  loc_A2D825: FLdPr Me
  loc_A2D828: MemLdRfVar from_stack_1.global_52
  loc_A2D82B: NewIfNullPr clscontracargos
  loc_A2D82E: Call clscontracargos.Sort(from_stack_1v)
  loc_A2D833: FFree1Str var_B0
  loc_A2D836: Branch loc_A2D8EA
  loc_A2D839: FLdI2 var_AC
  loc_A2D83C: LitI2_Byte 3
  loc_A2D83E: EqI2
  loc_A2D83F: BranchF loc_A2D893
  loc_A2D842: LitVarStr var_94, "&"
  loc_A2D847: PopAdLdVar
  loc_A2D848: FLdPr Me
  loc_A2D84B: VCallAd Control_ID_FiltroMsk
  loc_A2D84E: FStAdFunc var_A8
  loc_A2D851: FLdPr var_A8
  loc_A2D854: LateIdSt
  loc_A2D859: FFree1Ad var_A8
  loc_A2D85C: LitVarStr var_94, "###"
  loc_A2D861: PopAdLdVar
  loc_A2D862: FLdPr Me
  loc_A2D865: VCallAd Control_ID_FiltroMsk
  loc_A2D868: FStAdFunc var_A8
  loc_A2D86B: FLdPr var_A8
  loc_A2D86E: LateIdSt
  loc_A2D873: FFree1Ad var_A8
  loc_A2D876: LitStr "CodiEnre"
  loc_A2D879: FStStrCopy var_B0
  loc_A2D87C: FLdRfVar var_B0
  loc_A2D87F: FLdPr Me
  loc_A2D882: MemLdRfVar from_stack_1.global_52
  loc_A2D885: NewIfNullPr clscontracargos
  loc_A2D888: Call clscontracargos.Sort(from_stack_1v)
  loc_A2D88D: FFree1Str var_B0
  loc_A2D890: Branch loc_A2D8EA
  loc_A2D893: FLdI2 var_AC
  loc_A2D896: LitI2_Byte 4
  loc_A2D898: EqI2
  loc_A2D899: BranchF loc_A2D8EA
  loc_A2D89C: LitVarStr var_94, "&"
  loc_A2D8A1: PopAdLdVar
  loc_A2D8A2: FLdPr Me
  loc_A2D8A5: VCallAd Control_ID_FiltroMsk
  loc_A2D8A8: FStAdFunc var_A8
  loc_A2D8AB: FLdPr var_A8
  loc_A2D8AE: LateIdSt
  loc_A2D8B3: FFree1Ad var_A8
  loc_A2D8B6: LitVarStr var_94, vbNullString
  loc_A2D8BB: PopAdLdVar
  loc_A2D8BC: FLdPr Me
  loc_A2D8BF: VCallAd Control_ID_FiltroMsk
  loc_A2D8C2: FStAdFunc var_A8
  loc_A2D8C5: FLdPr var_A8
  loc_A2D8C8: LateIdSt
  loc_A2D8CD: FFree1Ad var_A8
  loc_A2D8D0: LitStr "DetaEnre"
  loc_A2D8D3: FStStrCopy var_B0
  loc_A2D8D6: FLdRfVar var_B0
  loc_A2D8D9: FLdPr Me
  loc_A2D8DC: MemLdRfVar from_stack_1.global_52
  loc_A2D8DF: NewIfNullPr clscontracargos
  loc_A2D8E2: Call clscontracargos.Sort(from_stack_1v)
  loc_A2D8E7: FFree1Str var_B0
  loc_A2D8EA: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A560
  'Data Table: 4B1374
  loc_99A504: FLdRfVar var_B4
  loc_99A507: FLdRfVar var_B0
  loc_99A50A: FLdI2 ColIndex
  loc_99A50D: CVarI2 var_A8
  loc_99A510: PopAdLdVar
  loc_99A511: FLdPr Me
  loc_99A514: VCallAd Control_ID_dgdABMS
  loc_99A517: FStAdFunc var_88
  loc_99A51A: FLdPr var_88
  loc_99A51D: LateIdLdVar var_98 DispID_105 0
  loc_99A524: CastAdVar Me
  loc_99A528: FStAdFunc var_AC
  loc_99A52B: FLdPr var_AC
  loc_99A52E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A533: FLdPr var_B0
  loc_99A536:  = Me.DataField
  loc_99A53B: FLdZeroAd var_B4
  loc_99A53E: PopTmpLdAdStr
  loc_99A542: FLdPr Me
  loc_99A545: MemLdRfVar from_stack_1.global_52
  loc_99A548: NewIfNullPr clscontracargos
  loc_99A54B: Call clscontracargos.Sort(from_stack_1v)
  loc_99A550: FFree1Str var_B8
  loc_99A553: FFreeAd var_88 = "": var_AC = ""
  loc_99A55C: FFree1Var var_98 = ""
  loc_99A55F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '9FC49C
  'Data Table: 4B1374
  loc_9FC354: FLdRfVar var_88
  loc_9FC357: FLdPr Me
  loc_9FC35A: MemLdRfVar from_stack_1.global_52
  loc_9FC35D: NewIfNullPr clscontracargos
  loc_9FC360: from_stack_1 = clscontracargos.RecordCount
  loc_9FC365: ILdRf var_88
  loc_9FC368: LitI4 0
  loc_9FC36D: GtI4
  loc_9FC36E: BranchF loc_9FC457
  loc_9FC371: FLdRfVar var_C4
  loc_9FC374: FLdRfVar var_A4
  loc_9FC377: LitVarStr var_A0, "Saldo"
  loc_9FC37C: PopAdLdVar
  loc_9FC37D: FLdRfVar var_90
  loc_9FC380: FLdRfVar var_8C
  loc_9FC383: FLdPr Me
  loc_9FC386: MemLdRfVar from_stack_1.global_52
  loc_9FC389: NewIfNullPr clscontracargos
  loc_9FC38C: from_stack_1v = clscontracargos.RsFrmGet()
  loc_9FC391: FLdPr var_8C
  loc_9FC394:  = Me.Fields
  loc_9FC399: FLdPr var_90
  loc_9FC39C: from_stack_2 = Me.Item(from_stack_1)
  loc_9FC3A1: FLdZeroAd var_A4
  loc_9FC3A4: CVarAd
  loc_9FC3A8: ImpAdCallHresult  = CDec()
  loc_9FC3AD: FLdRfVar var_C4
  loc_9FC3B0: LitVarI2 var_D4, 0
  loc_9FC3B5: HardType
  loc_9FC3B6: EqVarBool
  loc_9FC3B8: FFreeAd var_8C = ""
  loc_9FC3BF: FFreeVar var_B4 = ""
  loc_9FC3C6: BranchF loc_9FC410
  loc_9FC3C9: LitI2_Byte 0
  loc_9FC3CB: FLdRfVar var_A4
  loc_9FC3CE: LitVarI2 var_C4, 1
  loc_9FC3D3: FLdPr Me
  loc_9FC3D6: VCallAd Control_ID_tlbABMS
  loc_9FC3D9: FStAdFunc var_8C
  loc_9FC3DC: FLdPr var_8C
  loc_9FC3DF: LateIdLdVar var_B4 DispID_3 0
  loc_9FC3E6: CastAdVar Me
  loc_9FC3EA: FStAdFunc var_90
  loc_9FC3ED: FLdPr var_90
  loc_9FC3F0:  = Me.Buttons.ControlDefault
  loc_9FC3F5: FLdPr var_A4
  loc_9FC3F8: Me.Enabled = from_stack_1b
  loc_9FC3FD: FFreeAd var_8C = "": var_90 = ""
  loc_9FC406: FFreeVar var_B4 = ""
  loc_9FC40D: Branch loc_9FC454
  loc_9FC410: LitI2_Byte &HFF
  loc_9FC412: FLdRfVar var_A4
  loc_9FC415: LitVarI2 var_C4, 1
  loc_9FC41A: FLdPr Me
  loc_9FC41D: VCallAd Control_ID_tlbABMS
  loc_9FC420: FStAdFunc var_8C
  loc_9FC423: FLdPr var_8C
  loc_9FC426: LateIdLdVar var_B4 DispID_3 0
  loc_9FC42D: CastAdVar Me
  loc_9FC431: FStAdFunc var_90
  loc_9FC434: FLdPr var_90
  loc_9FC437:  = Me.Buttons.ControlDefault
  loc_9FC43C: FLdPr var_A4
  loc_9FC43F: Me.Enabled = from_stack_1b
  loc_9FC444: FFreeAd var_8C = "": var_90 = ""
  loc_9FC44D: FFreeVar var_B4 = ""
  loc_9FC454: Branch loc_9FC49B
  loc_9FC457: LitI2_Byte 0
  loc_9FC459: FLdRfVar var_A4
  loc_9FC45C: LitVarI2 var_C4, 1
  loc_9FC461: FLdPr Me
  loc_9FC464: VCallAd Control_ID_tlbABMS
  loc_9FC467: FStAdFunc var_8C
  loc_9FC46A: FLdPr var_8C
  loc_9FC46D: LateIdLdVar var_B4 DispID_3 0
  loc_9FC474: CastAdVar Me
  loc_9FC478: FStAdFunc var_90
  loc_9FC47B: FLdPr var_90
  loc_9FC47E:  = Me.Buttons.ControlDefault
  loc_9FC483: FLdPr var_A4
  loc_9FC486: Me.Enabled = from_stack_1b
  loc_9FC48B: FFreeAd var_8C = "": var_90 = ""
  loc_9FC494: FFreeVar var_B4 = ""
  loc_9FC49B: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94D298
  'Data Table: 4B1374
  loc_94D284: FLdPr Me
  loc_94D287: VCallAd Control_ID_FiltroMsk
  loc_94D28A: CVarAd
  loc_94D28E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94D293: FFree1Var var_94 = ""
  loc_94D296: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A8E96C
  'Data Table: 4B1374
  loc_A8E508: ILdRf Me
  loc_A8E50B: CastAd
  loc_A8E50E: FStAdFunc var_88
  loc_A8E511: FLdRfVar var_88
  loc_A8E514: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A8E519: FFree1Ad var_88
  loc_A8E51C: FLdPr Me
  loc_A8E51F: VCallAd Control_ID_FiltroMsk
  loc_A8E522: FStAdFunc var_88
  loc_A8E525: FLdPr var_88
  loc_A8E528: LateIdLdVar var_98 DispID_22 0
  loc_A8E52F: CStrVarTmp
  loc_A8E530: FStStrNoPop var_9C
  loc_A8E533: ImpAdCallI2 Trim$()
  loc_A8E538: FStStrNoPop var_A0
  loc_A8E53B: LitStr vbNullString
  loc_A8E53E: NeStr
  loc_A8E540: FFreeStr var_9C = ""
  loc_A8E547: FFree1Ad var_88
  loc_A8E54A: FFree1Var var_98 = ""
  loc_A8E54D: BranchF loc_A8E849
  loc_A8E550: FLdRfVar var_A2
  loc_A8E553: FLdPr Me
  loc_A8E556: VCallAd Control_ID_FiltroCbo
  loc_A8E559: FStAdFunc var_88
  loc_A8E55C: FLdPr var_88
  loc_A8E55F:  = Me.ListIndex
  loc_A8E564: FLdI2 var_A2
  loc_A8E567: LitI2_Byte 0
  loc_A8E569: EqI2
  loc_A8E56A: FFree1Ad var_88
  loc_A8E56D: BranchF loc_A8E5E8
  loc_A8E570: LitStr "NumeCont LIKE '"
  loc_A8E573: FLdPr Me
  loc_A8E576: VCallAd Control_ID_FiltroMsk
  loc_A8E579: FStAdFunc var_88
  loc_A8E57C: FLdPr var_88
  loc_A8E57F: LateIdLdVar var_98 DispID_22 0
  loc_A8E586: CStrVarTmp
  loc_A8E587: FStStrNoPop var_9C
  loc_A8E58A: ConcatStr
  loc_A8E58B: FStStrNoPop var_A0
  loc_A8E58E: LitStr "'"
  loc_A8E591: ConcatStr
  loc_A8E592: PopTmpLdAdStr
  loc_A8E596: FLdPr Me
  loc_A8E599: MemLdRfVar from_stack_1.global_52
  loc_A8E59C: NewIfNullPr clscontracargos
  loc_A8E59F: Call clscontracargos.Filter(from_stack_1v)
  loc_A8E5A4: FFreeStr var_9C = "": var_A0 = ""
  loc_A8E5AD: FFree1Ad var_88
  loc_A8E5B0: FFree1Var var_98 = ""
  loc_A8E5B3: LitStr "Número contracargo sea igual a: "
  loc_A8E5B6: FLdPr Me
  loc_A8E5B9: VCallAd Control_ID_FiltroMsk
  loc_A8E5BC: FStAdFunc var_88
  loc_A8E5BF: FLdPr var_88
  loc_A8E5C2: LateIdLdVar var_98 DispID_22 0
  loc_A8E5C9: CStrVarTmp
  loc_A8E5CA: FStStrNoPop var_9C
  loc_A8E5CD: ConcatStr
  loc_A8E5CE: FStStrNoPop var_A0
  loc_A8E5D1: FLdPr Me
  loc_A8E5D4: MemStStrCopy
  loc_A8E5D8: FFreeStr var_9C = ""
  loc_A8E5DF: FFree1Ad var_88
  loc_A8E5E2: FFree1Var var_98 = ""
  loc_A8E5E5: Branch loc_A8E846
  loc_A8E5E8: FLdRfVar var_A2
  loc_A8E5EB: FLdPr Me
  loc_A8E5EE: VCallAd Control_ID_FiltroCbo
  loc_A8E5F1: FStAdFunc var_88
  loc_A8E5F4: FLdPr var_88
  loc_A8E5F7:  = Me.ListIndex
  loc_A8E5FC: FLdI2 var_A2
  loc_A8E5FF: LitI2_Byte 1
  loc_A8E601: EqI2
  loc_A8E602: FFree1Ad var_88
  loc_A8E605: BranchF loc_A8E68A
  loc_A8E608: LitStr "NumeExpe LIKE '" & Chr(37)
  loc_A8E60B: FLdPr Me
  loc_A8E60E: VCallAd Control_ID_FiltroMsk
  loc_A8E611: FStAdFunc var_88
  loc_A8E614: FLdPr var_88
  loc_A8E617: LateIdLdVar var_98 DispID_22 0
  loc_A8E61E: CStrVarTmp
  loc_A8E61F: FStStrNoPop var_9C
  loc_A8E622: ImpAdCallI2 Trim$()
  loc_A8E627: FStStrNoPop var_A0
  loc_A8E62A: ConcatStr
  loc_A8E62B: FStStrNoPop var_A8
  loc_A8E62E: LitStr Chr(37) & "'"
  loc_A8E631: ConcatStr
  loc_A8E632: PopTmpLdAdStr
  loc_A8E636: FLdPr Me
  loc_A8E639: MemLdRfVar from_stack_1.global_52
  loc_A8E63C: NewIfNullPr clscontracargos
  loc_A8E63F: Call clscontracargos.Filter(from_stack_1v)
  loc_A8E644: FFreeStr var_9C = "": var_A0 = "": var_A8 = ""
  loc_A8E64F: FFree1Ad var_88
  loc_A8E652: FFree1Var var_98 = ""
  loc_A8E655: LitStr "expediente que contiene: "
  loc_A8E658: FLdPr Me
  loc_A8E65B: VCallAd Control_ID_FiltroMsk
  loc_A8E65E: FStAdFunc var_88
  loc_A8E661: FLdPr var_88
  loc_A8E664: LateIdLdVar var_98 DispID_22 0
  loc_A8E66B: CStrVarTmp
  loc_A8E66C: FStStrNoPop var_9C
  loc_A8E66F: ConcatStr
  loc_A8E670: FStStrNoPop var_A0
  loc_A8E673: FLdPr Me
  loc_A8E676: MemStStrCopy
  loc_A8E67A: FFreeStr var_9C = ""
  loc_A8E681: FFree1Ad var_88
  loc_A8E684: FFree1Var var_98 = ""
  loc_A8E687: Branch loc_A8E846
  loc_A8E68A: FLdRfVar var_A2
  loc_A8E68D: FLdPr Me
  loc_A8E690: VCallAd Control_ID_FiltroCbo
  loc_A8E693: FStAdFunc var_88
  loc_A8E696: FLdPr var_88
  loc_A8E699:  = Me.ListIndex
  loc_A8E69E: FLdI2 var_A2
  loc_A8E6A1: LitI2_Byte 2
  loc_A8E6A3: EqI2
  loc_A8E6A4: FFree1Ad var_88
  loc_A8E6A7: BranchF loc_A8E722
  loc_A8E6AA: LitStr "IdEpagos LIKE '"
  loc_A8E6AD: FLdPr Me
  loc_A8E6B0: VCallAd Control_ID_FiltroMsk
  loc_A8E6B3: FStAdFunc var_88
  loc_A8E6B6: FLdPr var_88
  loc_A8E6B9: LateIdLdVar var_98 DispID_22 0
  loc_A8E6C0: CStrVarTmp
  loc_A8E6C1: FStStrNoPop var_9C
  loc_A8E6C4: ConcatStr
  loc_A8E6C5: FStStrNoPop var_A0
  loc_A8E6C8: LitStr Chr(37) & "'"
  loc_A8E6CB: ConcatStr
  loc_A8E6CC: PopTmpLdAdStr
  loc_A8E6D0: FLdPr Me
  loc_A8E6D3: MemLdRfVar from_stack_1.global_52
  loc_A8E6D6: NewIfNullPr clscontracargos
  loc_A8E6D9: Call clscontracargos.Filter(from_stack_1v)
  loc_A8E6DE: FFreeStr var_9C = "": var_A0 = ""
  loc_A8E6E7: FFree1Ad var_88
  loc_A8E6EA: FFree1Var var_98 = ""
  loc_A8E6ED: LitStr "ePagos que comience con: "
  loc_A8E6F0: FLdPr Me
  loc_A8E6F3: VCallAd Control_ID_FiltroMsk
  loc_A8E6F6: FStAdFunc var_88
  loc_A8E6F9: FLdPr var_88
  loc_A8E6FC: LateIdLdVar var_98 DispID_22 0
  loc_A8E703: CStrVarTmp
  loc_A8E704: FStStrNoPop var_9C
  loc_A8E707: ConcatStr
  loc_A8E708: FStStrNoPop var_A0
  loc_A8E70B: FLdPr Me
  loc_A8E70E: MemStStrCopy
  loc_A8E712: FFreeStr var_9C = ""
  loc_A8E719: FFree1Ad var_88
  loc_A8E71C: FFree1Var var_98 = ""
  loc_A8E71F: Branch loc_A8E846
  loc_A8E722: FLdRfVar var_A2
  loc_A8E725: FLdPr Me
  loc_A8E728: VCallAd Control_ID_FiltroCbo
  loc_A8E72B: FStAdFunc var_88
  loc_A8E72E: FLdPr var_88
  loc_A8E731:  = Me.ListIndex
  loc_A8E736: FLdI2 var_A2
  loc_A8E739: LitI2_Byte 3
  loc_A8E73B: EqI2
  loc_A8E73C: FFree1Ad var_88
  loc_A8E73F: BranchF loc_A8E7B1
  loc_A8E742: LitStr "CodiEnre = "
  loc_A8E745: FLdPr Me
  loc_A8E748: VCallAd Control_ID_FiltroMsk
  loc_A8E74B: FStAdFunc var_88
  loc_A8E74E: FLdPr var_88
  loc_A8E751: LateIdLdVar var_98 DispID_22 0
  loc_A8E758: CStrVarTmp
  loc_A8E759: FStStrNoPop var_9C
  loc_A8E75C: ConcatStr
  loc_A8E75D: PopTmpLdAdStr
  loc_A8E761: FLdPr Me
  loc_A8E764: MemLdRfVar from_stack_1.global_52
  loc_A8E767: NewIfNullPr clscontracargos
  loc_A8E76A: Call clscontracargos.Filter(from_stack_1v)
  loc_A8E76F: FFreeStr var_9C = ""
  loc_A8E776: FFree1Ad var_88
  loc_A8E779: FFree1Var var_98 = ""
  loc_A8E77C: LitStr "código Ente Recaudador sea igual a: "
  loc_A8E77F: FLdPr Me
  loc_A8E782: VCallAd Control_ID_FiltroMsk
  loc_A8E785: FStAdFunc var_88
  loc_A8E788: FLdPr var_88
  loc_A8E78B: LateIdLdVar var_98 DispID_22 0
  loc_A8E792: CStrVarTmp
  loc_A8E793: FStStrNoPop var_9C
  loc_A8E796: ConcatStr
  loc_A8E797: FStStrNoPop var_A0
  loc_A8E79A: FLdPr Me
  loc_A8E79D: MemStStrCopy
  loc_A8E7A1: FFreeStr var_9C = ""
  loc_A8E7A8: FFree1Ad var_88
  loc_A8E7AB: FFree1Var var_98 = ""
  loc_A8E7AE: Branch loc_A8E846
  loc_A8E7B1: FLdRfVar var_A2
  loc_A8E7B4: FLdPr Me
  loc_A8E7B7: VCallAd Control_ID_FiltroCbo
  loc_A8E7BA: FStAdFunc var_88
  loc_A8E7BD: FLdPr var_88
  loc_A8E7C0:  = Me.ListIndex
  loc_A8E7C5: FLdI2 var_A2
  loc_A8E7C8: LitI2_Byte 4
  loc_A8E7CA: EqI2
  loc_A8E7CB: FFree1Ad var_88
  loc_A8E7CE: BranchF loc_A8E846
  loc_A8E7D1: LitStr "DetaEnre LIKE '" & Chr(37)
  loc_A8E7D4: FLdPr Me
  loc_A8E7D7: VCallAd Control_ID_FiltroMsk
  loc_A8E7DA: FStAdFunc var_88
  loc_A8E7DD: FLdPr var_88
  loc_A8E7E0: LateIdLdVar var_98 DispID_22 0
  loc_A8E7E7: CStrVarTmp
  loc_A8E7E8: FStStrNoPop var_9C
  loc_A8E7EB: ConcatStr
  loc_A8E7EC: FStStrNoPop var_A0
  loc_A8E7EF: LitStr Chr(37) & "'"
  loc_A8E7F2: ConcatStr
  loc_A8E7F3: PopTmpLdAdStr
  loc_A8E7F7: FLdPr Me
  loc_A8E7FA: MemLdRfVar from_stack_1.global_52
  loc_A8E7FD: NewIfNullPr clscontracargos
  loc_A8E800: Call clscontracargos.Filter(from_stack_1v)
  loc_A8E805: FFreeStr var_9C = "": var_A0 = ""
  loc_A8E80E: FFree1Ad var_88
  loc_A8E811: FFree1Var var_98 = ""
  loc_A8E814: LitStr "Ente Recaudador que contiene: "
  loc_A8E817: FLdPr Me
  loc_A8E81A: VCallAd Control_ID_FiltroMsk
  loc_A8E81D: FStAdFunc var_88
  loc_A8E820: FLdPr var_88
  loc_A8E823: LateIdLdVar var_98 DispID_22 0
  loc_A8E82A: CStrVarTmp
  loc_A8E82B: FStStrNoPop var_9C
  loc_A8E82E: ConcatStr
  loc_A8E82F: FStStrNoPop var_A0
  loc_A8E832: FLdPr Me
  loc_A8E835: MemStStrCopy
  loc_A8E839: FFreeStr var_9C = ""
  loc_A8E840: FFree1Ad var_88
  loc_A8E843: FFree1Var var_98 = ""
  loc_A8E846: Branch loc_A8E86D
  loc_A8E849: LitStr vbNullString
  loc_A8E84C: FStStrCopy var_9C
  loc_A8E84F: FLdRfVar var_9C
  loc_A8E852: FLdPr Me
  loc_A8E855: MemLdRfVar from_stack_1.global_52
  loc_A8E858: NewIfNullPr clscontracargos
  loc_A8E85B: Call clscontracargos.Filter(from_stack_1v)
  loc_A8E860: FFree1Str var_9C
  loc_A8E863: LitStr vbNullString
  loc_A8E866: FLdPr Me
  loc_A8E869: MemStStrCopy
  loc_A8E86D: FLdRfVar var_B0
  loc_A8E870: FLdPr Me
  loc_A8E873: MemLdRfVar from_stack_1.global_52
  loc_A8E876: NewIfNullPr clscontracargos
  loc_A8E879: from_stack_1 = clscontracargos.RecordCount
  loc_A8E87E: ILdRf var_B0
  loc_A8E881: LitI4 0
  loc_A8E886: GtI4
  loc_A8E887: BranchF loc_A8E925
  loc_A8E88A: FLdPr Me
  loc_A8E88D: MemLdRfVar from_stack_1.global_52
  loc_A8E890: NewIfNullAd
  loc_A8E893: FStAd var_B4 
  loc_A8E897: FLdRfVar var_B4
  loc_A8E89A: CVarRef
  loc_A8E89F: ILdRf Me
  loc_A8E8A2: CastAd
  loc_A8E8A5: FStAdFunc var_88
  loc_A8E8A8: FLdRfVar var_88
  loc_A8E8AB: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A8E8B0: ILdRf var_B4
  loc_A8E8B3: CastAd
  loc_A8E8B6: FLdPr Me
  loc_A8E8B9: MemStAdFunc
  loc_A8E8BD: FFreeAd var_88 = ""
  loc_A8E8C4: LitI4 0
  loc_A8E8C9: LitI4 1
  loc_A8E8CE: FLdRfVar var_C8
  loc_A8E8D1: Redim
  loc_A8E8DB: FLdPr Me
  loc_A8E8DE: MemLdRfVar from_stack_1.global_52
  loc_A8E8E1: NewIfNullAd
  loc_A8E8E4: FStAd var_88 
  loc_A8E8E8: FLdRfVar var_88
  loc_A8E8EB: CVarRef
  loc_A8E8F0: ParmAry1St
  loc_A8E8F6: FLdPr Me
  loc_A8E8F9: VCallAd Control_ID_dgdABMS
  loc_A8E8FC: CVarAd
  loc_A8E900: ParmAry1St
  loc_A8E906: FLdRfVar var_C8
  loc_A8E909: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A8E90E: ILdRf var_88
  loc_A8E911: CastAd
  loc_A8E914: FLdPr Me
  loc_A8E917: MemStAdFunc
  loc_A8E91B: FLdRfVar var_C8
  loc_A8E91E: Erase
  loc_A8E91F: FFree1Ad var_88
  loc_A8E922: Branch loc_A8E939
  loc_A8E925: ILdRf Me
  loc_A8E928: CastAd
  loc_A8E92B: FStAdFunc var_88
  loc_A8E92E: FLdRfVar var_88
  loc_A8E931: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A8E936: FFree1Ad var_88
  loc_A8E939: FLdPr Me
  loc_A8E93C: VCallAd Control_ID_dgdABMS
  loc_A8E93F: FStAdFunc var_B4
  loc_A8E942: LitI4 0
  loc_A8E947: FStStrCopy var_9C
  loc_A8E94A: FLdRfVar var_9C
  loc_A8E94D: FLdPr Me
  loc_A8E950: MemLdStr global_64
  loc_A8E953: FLdZeroAd var_B4
  loc_A8E956: FStAdFunc var_88
  loc_A8E959: FLdRfVar var_88
  loc_A8E95C: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_A8E961: FFree1Str var_9C
  loc_A8E964: FFreeAd var_88 = ""
  loc_A8E96B: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9985C4
  'Data Table: 4B1374
  loc_998560: ILdI2 KeyAscii
  loc_998563: LitI2_Byte &H27
  loc_998565: EqI2
  loc_998566: BranchF loc_99856E
  loc_998569: LitI2_Byte 0
  loc_99856B: IStI2 KeyAscii
  loc_99856E: FLdRfVar var_88
  loc_998571: FLdPr Me
  loc_998574: MemLdRfVar from_stack_1.global_52
  loc_998577: NewIfNullPr clscontracargos
  loc_99857A: from_stack_1 = clscontracargos.RecordCount
  loc_99857F: ILdRf var_88
  loc_998582: LitI4 0
  loc_998587: EqI4
  loc_998588: ILdI2 KeyAscii
  loc_99858B: CI4UI1
  loc_99858C: LitI4 8
  loc_998591: NeI4
  loc_998592: AndI4
  loc_998593: FLdPr Me
  loc_998596: VCallAd Control_ID_FiltroMsk
  loc_998599: FStAdFunc var_8C
  loc_99859C: FLdPr var_8C
  loc_99859F: LateIdLdVar var_9C DispID_16 0
  loc_9985A6: CStrVarTmp
  loc_9985A7: FStStrNoPop var_A0
  loc_9985AA: LitStr vbNullString
  loc_9985AD: EqStr
  loc_9985AF: AndI4
  loc_9985B0: FFree1Str var_A0
  loc_9985B3: FFree1Ad var_8C
  loc_9985B6: FFree1Var var_9C = ""
  loc_9985B9: BranchF loc_9985C1
  loc_9985BC: LitI2_Byte 0
  loc_9985BE: IStI2 KeyAscii
  loc_9985C1: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'A9D064
  'Data Table: 4B1374
  loc_A9CBDC: ILdRf Button
  loc_A9CBDF: FStAd var_88 
  loc_A9CBE3: FLdRfVar var_90
  loc_A9CBE6: FLdPr var_88
  loc_A9CBE9:  = Me.Key
  loc_A9CBEE: FLdZeroAd var_90
  loc_A9CBF1: FStStr var_94
  loc_A9CBF4: ILdRf var_94
  loc_A9CBF7: LitStr "btnCrear"
  loc_A9CBFA: EqStr
  loc_A9CBFC: BranchF loc_A9CD20
  loc_A9CBFF: LitI2_Byte 1
  loc_A9CC01: FLdPr Me
  loc_A9CC04: MemStUI1
  loc_A9CC08: ILdRf Me
  loc_A9CC0B: CastAd
  loc_A9CC0E: FStAdFunc var_98
  loc_A9CC11: FLdRfVar var_98
  loc_A9CC14: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_A9CC19: FFree1Ad var_98
  loc_A9CC1C: LitI4 0
  loc_A9CC21: LitI4 0
  loc_A9CC26: FLdRfVar var_9C
  loc_A9CC29: Redim
  loc_A9CC33: FLdPr Me
  loc_A9CC36: VCallAd Control_ID_dgdABMS
  loc_A9CC39: CVarAd
  loc_A9CC3D: ParmAry1St
  loc_A9CC43: FLdRfVar var_9C
  loc_A9CC46: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A9CC4B: FLdRfVar var_9C
  loc_A9CC4E: Erase
  loc_A9CC4F: ILdRf Me
  loc_A9CC52: CastAd
  loc_A9CC55: FStAdFunc var_98
  loc_A9CC58: FLdRfVar var_98
  loc_A9CC5B: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A9CC60: FFree1Ad var_98
  loc_A9CC63: ILdRf Me
  loc_A9CC66: CastAd
  loc_A9CC69: FStAdFunc var_98
  loc_A9CC6C: FLdRfVar var_98
  loc_A9CC6F: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A9CC74: FFree1Ad var_98
  loc_A9CC77: LitI4 0
  loc_A9CC7C: LitI4 1
  loc_A9CC81: FLdRfVar var_9C
  loc_A9CC84: Redim
  loc_A9CC8E: FLdPr Me
  loc_A9CC91: VCallAd Control_ID_FechIngrMsk
  loc_A9CC94: CVarAd
  loc_A9CC98: ParmAry1St
  loc_A9CC9E: FLdPr Me
  loc_A9CCA1: VCallAd Control_ID_MskImpoComi
  loc_A9CCA4: CVarAd
  loc_A9CCA8: ParmAry1St
  loc_A9CCAE: FLdRfVar var_9C
  loc_A9CCB1: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A9CCB6: FLdRfVar var_9C
  loc_A9CCB9: Erase
  loc_A9CCBA: FLdRfVar var_AC
  loc_A9CCBD: FLdRfVar var_D4
  loc_A9CCC0: LitVarStr var_D0, "FechCont"
  loc_A9CCC5: PopAdLdVar
  loc_A9CCC6: FLdRfVar var_C0
  loc_A9CCC9: FLdRfVar var_98
  loc_A9CCCC: FLdPr Me
  loc_A9CCCF: MemLdRfVar from_stack_1.global_52
  loc_A9CCD2: NewIfNullPr clscontracargos
  loc_A9CCD5: from_stack_1v = clscontracargos.RsFrmGet()
  loc_A9CCDA: FLdPr var_98
  loc_A9CCDD:  = Me.Fields
  loc_A9CCE2: FLdPr var_C0
  loc_A9CCE5: from_stack_2 = Me.Item(from_stack_1)
  loc_A9CCEA: FLdPr var_D4
  loc_A9CCED:  = Me.Value
  loc_A9CCF2: FLdRfVar var_AC
  loc_A9CCF5: CStrVarTmp
  loc_A9CCF6: CVarStr var_BC
  loc_A9CCF9: PopAdLdVar
  loc_A9CCFA: FLdPr Me
  loc_A9CCFD: VCallAd Control_ID_FechIngrMsk
  loc_A9CD00: FStAdFunc var_E8
  loc_A9CD03: FLdPr var_E8
  loc_A9CD06: LateIdSt
  loc_A9CD0B: FFreeAd var_98 = "": var_C0 = "": var_D4 = ""
  loc_A9CD16: FFreeVar var_AC = ""
  loc_A9CD1D: Branch loc_A9D061
  loc_A9CD20: ILdRf var_94
  loc_A9CD23: LitStr "btnModificar"
  loc_A9CD26: EqStr
  loc_A9CD28: BranchF loc_A9CDAF
  loc_A9CD2B: FLdRfVar var_EC
  loc_A9CD2E: FLdPr Me
  loc_A9CD31: MemLdRfVar from_stack_1.global_52
  loc_A9CD34: NewIfNullPr clscontracargos
  loc_A9CD37: from_stack_1 = clscontracargos.RecordCount
  loc_A9CD3C: ILdRf var_EC
  loc_A9CD3F: LitI4 0
  loc_A9CD44: GtI4
  loc_A9CD45: BranchF loc_A9CDAC
  loc_A9CD48: LitI2_Byte 2
  loc_A9CD4A: FLdPr Me
  loc_A9CD4D: MemStUI1
  loc_A9CD51: ILdRf Me
  loc_A9CD54: CastAd
  loc_A9CD57: FStAdFunc var_98
  loc_A9CD5A: FLdRfVar var_98
  loc_A9CD5D: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_A9CD62: FFree1Ad var_98
  loc_A9CD65: LitI4 0
  loc_A9CD6A: LitI4 0
  loc_A9CD6F: FLdRfVar var_9C
  loc_A9CD72: Redim
  loc_A9CD7C: FLdPr Me
  loc_A9CD7F: VCallAd Control_ID_dgdABMS
  loc_A9CD82: CVarAd
  loc_A9CD86: ParmAry1St
  loc_A9CD8C: FLdRfVar var_9C
  loc_A9CD8F: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A9CD94: FLdRfVar var_9C
  loc_A9CD97: Erase
  loc_A9CD98: ILdRf Me
  loc_A9CD9B: CastAd
  loc_A9CD9E: FStAdFunc var_98
  loc_A9CDA1: FLdRfVar var_98
  loc_A9CDA4: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A9CDA9: FFree1Ad var_98
  loc_A9CDAC: Branch loc_A9D061
  loc_A9CDAF: ILdRf var_94
  loc_A9CDB2: LitStr "btnEliminar"
  loc_A9CDB5: EqStr
  loc_A9CDB7: BranchF loc_A9CDBD
  loc_A9CDBA: Branch loc_A9D061
  loc_A9CDBD: ILdRf var_94
  loc_A9CDC0: LitStr "btnGuardar"
  loc_A9CDC3: EqStr
  loc_A9CDC5: BranchF loc_A9CF5D
  loc_A9CDC8: LitStr vbNullString
  loc_A9CDCB: FLdPr Me
  loc_A9CDCE: MemStStrCopy
  loc_A9CDD2: LitI2_Byte 0
  loc_A9CDD4: PopTmpLdAd2 var_EE
  loc_A9CDD7: from_stack_2v = FechIngrMsk_UnknownEvent_8(from_stack_1v)
  loc_A9CDDC: FLdPr Me
  loc_A9CDDF: MemLdStr global_60
  loc_A9CDE2: LitStr vbNullString
  loc_A9CDE5: NeStr
  loc_A9CDE7: BranchF loc_A9CDEB
  loc_A9CDEA: ExitProcHresult
  loc_A9CDEB: LitI2_Byte 0
  loc_A9CDED: PopTmpLdAd2 var_EE
  loc_A9CDF0: from_stack_2v = MskImpoComi_UnknownEvent_8(from_stack_1v)
  loc_A9CDF5: FLdPr Me
  loc_A9CDF8: MemLdStr global_60
  loc_A9CDFB: LitStr vbNullString
  loc_A9CDFE: NeStr
  loc_A9CE00: BranchF loc_A9CE04
  loc_A9CE03: ExitProcHresult
  loc_A9CE04: FLdPr Me
  loc_A9CE07: MemLdUI1 global_56
  loc_A9CE0B: FStUI1 var_F0
  loc_A9CE0F: FLdUI1
  loc_A9CE13: LitI2_Byte 1
  loc_A9CE15: EqI2
  loc_A9CE16: BranchF loc_A9CF11
  loc_A9CE19: FLdRfVar var_158
  loc_A9CE1C: FLdRfVar var_D4
  loc_A9CE1F: LitVarStr var_D0, "IdContra"
  loc_A9CE24: PopAdLdVar
  loc_A9CE25: FLdRfVar var_C0
  loc_A9CE28: FLdRfVar var_98
  loc_A9CE2B: FLdPr Me
  loc_A9CE2E: MemLdRfVar from_stack_1.global_52
  loc_A9CE31: NewIfNullPr clscontracargos
  loc_A9CE34: from_stack_1v = clscontracargos.RsFrmGet()
  loc_A9CE39: FLdPr var_98
  loc_A9CE3C:  = Me.Fields
  loc_A9CE41: FLdPr var_C0
  loc_A9CE44: from_stack_2 = Me.Item(from_stack_1)
  loc_A9CE49: FLdPr var_D4
  loc_A9CE4C:  = Me.Value
  loc_A9CE51: FLdPr Me
  loc_A9CE54: VCallAd Control_ID_FechIngrMsk
  loc_A9CE57: FStAdFunc var_E8
  loc_A9CE5A: FLdPr var_E8
  loc_A9CE5D: LateIdLdVar var_AC DispID_15 0
  loc_A9CE64: PopAd
  loc_A9CE66: FLdPr Me
  loc_A9CE69: VCallAd Control_ID_MskImpoComi
  loc_A9CE6C: FStAdFunc var_F4
  loc_A9CE6F: FLdPr var_F4
  loc_A9CE72: LateIdLdVar var_BC DispID_22 0
  loc_A9CE79: PopAd
  loc_A9CE7B: FLdPr Me
  loc_A9CE7E: VCallAd Control_ID_MskImpoComi
  loc_A9CE81: FStAdFunc var_F8
  loc_A9CE84: FLdPr var_F8
  loc_A9CE87: LateIdLdVar var_108 DispID_22 0
  loc_A9CE8E: CStrVarTmp
  loc_A9CE8F: CVarStr var_138
  loc_A9CE92: LitVarI2 var_128, 0
  loc_A9CE97: FLdRfVar var_BC
  loc_A9CE9A: CStrVarTmp
  loc_A9CE9B: FStStrNoPop var_90
  loc_A9CE9E: LitStr vbNullString
  loc_A9CEA1: EqStr
  loc_A9CEA3: CVarBoolI2 var_E4
  loc_A9CEA7: FLdRfVar var_148
  loc_A9CEAA: ImpAdCallFPR4  = IIf(, , )
  loc_A9CEAF: FLdRfVar var_164
  loc_A9CEB2: FLdPr Me
  loc_A9CEB5: VCallAd Control_ID_LabelccEnteRecdf
  loc_A9CEB8: FStAdFunc var_160
  loc_A9CEBB: FLdPr var_160
  loc_A9CEBE:  = Me.Caption
  loc_A9CEC3: ILdRf var_164
  loc_A9CEC6: FLdRfVar var_148
  loc_A9CEC9: CR4Var
  loc_A9CECA: PopFPR8
  loc_A9CECB: FLdRfVar var_AC
  loc_A9CECE: CStrVarTmp
  loc_A9CECF: FStStrNoPop var_15C
  loc_A9CED2: FLdRfVar var_158
  loc_A9CED5: CI2Var
  loc_A9CED6: FLdPr Me
  loc_A9CED9: MemLdRfVar from_stack_1.global_52
  loc_A9CEDC: NewIfNullPr clscontracargos
  loc_A9CEDF: Call clscontracargos.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_A9CEE4: FFreeStr var_90 = "": var_15C = ""
  loc_A9CEED: FFreeAd var_98 = "": var_C0 = "": var_E8 = "": var_F4 = "": var_F8 = "": var_D4 = ""
  loc_A9CEFE: FFreeVar var_AC = "": var_BC = "": var_108 = "": var_E4 = "": var_128 = "": var_138 = "": var_158 = ""
  loc_A9CF11: Call cmdCancelar_Click()
  loc_A9CF16: LitI2_Byte 0
  loc_A9CF18: FLdRfVar var_D4
  loc_A9CF1B: LitVarI2 var_BC, 1
  loc_A9CF20: FLdPr Me
  loc_A9CF23: VCallAd Control_ID_tlbABMS
  loc_A9CF26: FStAdFunc var_98
  loc_A9CF29: FLdPr var_98
  loc_A9CF2C: LateIdLdVar var_AC DispID_3 0
  loc_A9CF33: CastAdVar Me
  loc_A9CF37: FStAdFunc var_C0
  loc_A9CF3A: FLdPr var_C0
  loc_A9CF3D:  = Me.Buttons.ControlDefault
  loc_A9CF42: FLdPr var_D4
  loc_A9CF45: Me.Enabled = from_stack_1b
  loc_A9CF4A: FFreeAd var_98 = "": var_C0 = ""
  loc_A9CF53: FFreeVar var_AC = ""
  loc_A9CF5A: Branch loc_A9D061
  loc_A9CF5D: ILdRf var_94
  loc_A9CF60: LitStr "btnCancelar"
  loc_A9CF63: EqStr
  loc_A9CF65: BranchF loc_A9CF70
  loc_A9CF68: Call cmdCancelar_Click()
  loc_A9CF6D: Branch loc_A9D061
  loc_A9CF70: ILdRf var_94
  loc_A9CF73: LitStr "btnPrimero"
  loc_A9CF76: EqStr
  loc_A9CF78: BranchF loc_A9CF8C
  loc_A9CF7B: FLdPr Me
  loc_A9CF7E: MemLdRfVar from_stack_1.global_52
  loc_A9CF81: NewIfNullPr clscontracargos
  loc_A9CF84: Call clscontracargos.MoveFirst()
  loc_A9CF89: Branch loc_A9D061
  loc_A9CF8C: ILdRf var_94
  loc_A9CF8F: LitStr "btnAnterior"
  loc_A9CF92: EqStr
  loc_A9CF94: BranchF loc_A9CFA8
  loc_A9CF97: FLdPr Me
  loc_A9CF9A: MemLdRfVar from_stack_1.global_52
  loc_A9CF9D: NewIfNullPr clscontracargos
  loc_A9CFA0: Call clscontracargos.MovePrevious()
  loc_A9CFA5: Branch loc_A9D061
  loc_A9CFA8: ILdRf var_94
  loc_A9CFAB: LitStr "btnSiguiente"
  loc_A9CFAE: EqStr
  loc_A9CFB0: BranchF loc_A9CFC4
  loc_A9CFB3: FLdPr Me
  loc_A9CFB6: MemLdRfVar from_stack_1.global_52
  loc_A9CFB9: NewIfNullPr clscontracargos
  loc_A9CFBC: Call clscontracargos.MoveNext()
  loc_A9CFC1: Branch loc_A9D061
  loc_A9CFC4: ILdRf var_94
  loc_A9CFC7: LitStr "btnUltimo"
  loc_A9CFCA: EqStr
  loc_A9CFCC: BranchF loc_A9CFE0
  loc_A9CFCF: FLdPr Me
  loc_A9CFD2: MemLdRfVar from_stack_1.global_52
  loc_A9CFD5: NewIfNullPr clscontracargos
  loc_A9CFD8: Call clscontracargos.MoveLast()
  loc_A9CFDD: Branch loc_A9D061
  loc_A9CFE0: ILdRf var_94
  loc_A9CFE3: LitStr "btnFiltrar"
  loc_A9CFE6: EqStr
  loc_A9CFE8: BranchF loc_A9CFEE
  loc_A9CFEB: Branch loc_A9D061
  loc_A9CFEE: ILdRf var_94
  loc_A9CFF1: LitStr "btnBuscar"
  loc_A9CFF4: EqStr
  loc_A9CFF6: BranchF loc_A9CFFC
  loc_A9CFF9: Branch loc_A9D061
  loc_A9CFFC: ILdRf var_94
  loc_A9CFFF: LitStr "btnImprimir"
  loc_A9D002: EqStr
  loc_A9D004: BranchF loc_A9D00A
  loc_A9D007: Branch loc_A9D061
  loc_A9D00A: ILdRf var_94
  loc_A9D00D: LitStr "btnAyuda"
  loc_A9D010: EqStr
  loc_A9D012: BranchF loc_A9D041
  loc_A9D015: LitVar_Missing var_128
  loc_A9D018: LitVar_Missing var_108
  loc_A9D01B: LitVar_Missing var_BC
  loc_A9D01E: LitI4 0
  loc_A9D023: LitVarStr var_D0, "Opcion no disponible en esta version."
  loc_A9D028: FStVarCopyObj var_AC
  loc_A9D02B: FLdRfVar var_AC
  loc_A9D02E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A9D033: FFreeVar var_AC = "": var_BC = "": var_108 = ""
  loc_A9D03E: Branch loc_A9D061
  loc_A9D041: ILdRf var_94
  loc_A9D044: LitStr "btnSalir"
  loc_A9D047: EqStr
  loc_A9D049: BranchF loc_A9D061
  loc_A9D04C: ILdRf Me
  loc_A9D04F: FStAdNoPop
  loc_A9D053: ImpAdLdRf MemVar_C44F9C
  loc_A9D056: NewIfNullPr Me
  loc_A9D059: Me.Global.Unload from_stack_1
  loc_A9D05E: FFree1Ad var_98
  loc_A9D061: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3CDA4
  'Data Table: 4B1374
  loc_A3CBB8: LitI2_Byte 0
  loc_A3CBBA: CR8I2
  loc_A3CBBB: PopFPR4
  loc_A3CBBC: FLdPr Me
  loc_A3CBBF: Me.Left = from_stack_1s
  loc_A3CBC4: LitI2_Byte 0
  loc_A3CBC6: CR8I2
  loc_A3CBC7: PopFPR4
  loc_A3CBC8: FLdPr Me
  loc_A3CBCB: Me.Top = from_stack_1s
  loc_A3CBD0: LitStr "SELECT cc.*, p.FepaPago, p.FeacPago, p.CodiUsua, DATE(cc.AltaFeho) FechCont, Concat(cc.NumeBole,'/',cc.PeriBole) ccBoleto"
  loc_A3CBD3: LitStr " , SUM(if(impoingr<0,impoingr*-1,0)) debe, SUM(if(ImpoIngr>0,ImpoIngr,0)) haber, SUM(impoingr) Saldo, SUM(if(i.CodiCuco='1103700000',ImpoIngr,0)) comision"
  loc_A3CBD6: ConcatStr
  loc_A3CBD7: FStStrNoPop var_88
  loc_A3CBDA: LitStr ", FechIngr, REPLACE(GROUP_CONCAT(DISTINCT i.AltaUsua),cc.AltaUsua,'') AltaUsuaReca"
  loc_A3CBDD: ConcatStr
  loc_A3CBDE: FStStrNoPop var_8C
  loc_A3CBE1: LitStr ", ap.CodiEnre, DetaEnre"
  loc_A3CBE4: ConcatStr
  loc_A3CBE5: FStStrNoPop var_90
  loc_A3CBE8: LitStr ", CASE ap.CodiEnre"
  loc_A3CBEB: ConcatStr
  loc_A3CBEC: FStStrNoPop var_94
  loc_A3CBEF: LitStr "    WHEN 50 then '1102040603' /* pago facil */"
  loc_A3CBF2: ConcatStr
  loc_A3CBF3: FStStrNoPop var_98
  loc_A3CBF6: LitStr "    WHEN 64 then '1102040601' /* e-pagos */"
  loc_A3CBF9: ConcatStr
  loc_A3CBFA: FStStrNoPop var_9C
  loc_A3CBFD: LitStr "    WHEN 65 then '1102040602' /* macro click */"
  loc_A3CC00: ConcatStr
  loc_A3CC01: FStStrNoPop var_A0
  loc_A3CC04: LitStr "    WHEN 51 then '1102040604' /* Rapipago Req. Gy 513 */"
  loc_A3CC07: ConcatStr
  loc_A3CC08: FStStrNoPop var_A4
  loc_A3CC0B: LitStr "  ELSE 'FALTA CUENTA'"
  loc_A3CC0E: ConcatStr
  loc_A3CC0F: FStStrNoPop var_A8
  loc_A3CC12: LitStr " END ccEnteRec"
  loc_A3CC15: ConcatStr
  loc_A3CC16: FStStrNoPop var_AC
  loc_A3CC19: LitStr " FROM recaudacion.contracargo cc"
  loc_A3CC1C: ConcatStr
  loc_A3CC1D: FStStrNoPop var_B0
  loc_A3CC20: LitStr " INNER JOIN ingreso i ON i.IdContra = cc.IdContra"
  loc_A3CC23: ConcatStr
  loc_A3CC24: FStStrNoPop var_B4
  loc_A3CC27: LitStr " INNER JOIN recaudacion.pago p ON p.PeriBole = cc.PeriBole AND p.NumeBole = cc.NumeBole"
  loc_A3CC2A: ConcatStr
  loc_A3CC2B: FStStrNoPop var_B8
  loc_A3CC2E: LitStr " INNER JOIN recaudacion.acrepago ap ON ap.FeenAcpa = p.FeenAcpa AND ap.NumeAcpa = p.NumeAcpa"
  loc_A3CC31: ConcatStr
  loc_A3CC32: FStStrNoPop var_BC
  loc_A3CC35: LitStr " INNER JOIN infogov.entereca er ON er.CodiEnre = ap.CodiEnre"
  loc_A3CC38: ConcatStr
  loc_A3CC39: FStStrNoPop var_C0
  loc_A3CC3C: LitStr " WHERE cc.PeriInfo = "
  loc_A3CC3F: ConcatStr
  loc_A3CC40: FStStrNoPop var_C4
  loc_A3CC43: ImpAdLdI2 MemVar_C3D064
  loc_A3CC46: CStrUI1
  loc_A3CC48: FStStrNoPop var_C8
  loc_A3CC4B: ConcatStr
  loc_A3CC4C: FStStrNoPop var_CC
  loc_A3CC4F: LitStr " GROUP BY cc.IdContra, p.FeenAcpa, p.NumeAcpa"
  loc_A3CC52: ConcatStr
  loc_A3CC53: FStStrNoPop var_D0
  loc_A3CC56: LitStr " ORDER BY NumeCont;"
  loc_A3CC59: ConcatStr
  loc_A3CC5A: FStStrNoPop var_D4
  loc_A3CC5D: FLdPr Me
  loc_A3CC60: MemLdRfVar from_stack_1.global_52
  loc_A3CC63: NewIfNullPr clscontracargos
  loc_A3CC66: Call clscontracargos.RedefineRS(from_stack_1v)
  loc_A3CC6B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A3CC96: LitVarI2 var_E4, 0
  loc_A3CC9B: PopAdLdVar
  loc_A3CC9C: LitStr "Número Contracargo"
  loc_A3CC9F: FLdPr Me
  loc_A3CCA2: VCallAd Control_ID_FiltroCbo
  loc_A3CCA5: FStAdFunc var_E8
  loc_A3CCA8: FLdPr var_E8
  loc_A3CCAB: Me.AddItem from_stack_1, from_stack_2
  loc_A3CCB0: FFree1Ad var_E8
  loc_A3CCB3: LitVarI2 var_E4, 1
  loc_A3CCB8: PopAdLdVar
  loc_A3CCB9: LitStr "Expediente"
  loc_A3CCBC: FLdPr Me
  loc_A3CCBF: VCallAd Control_ID_FiltroCbo
  loc_A3CCC2: FStAdFunc var_E8
  loc_A3CCC5: FLdPr var_E8
  loc_A3CCC8: Me.AddItem from_stack_1, from_stack_2
  loc_A3CCCD: FFree1Ad var_E8
  loc_A3CCD0: LitVarI2 var_E4, 2
  loc_A3CCD5: PopAdLdVar
  loc_A3CCD6: LitStr "Número ePagos"
  loc_A3CCD9: FLdPr Me
  loc_A3CCDC: VCallAd Control_ID_FiltroCbo
  loc_A3CCDF: FStAdFunc var_E8
  loc_A3CCE2: FLdPr var_E8
  loc_A3CCE5: Me.AddItem from_stack_1, from_stack_2
  loc_A3CCEA: FFree1Ad var_E8
  loc_A3CCED: LitVarI2 var_E4, 3
  loc_A3CCF2: PopAdLdVar
  loc_A3CCF3: LitStr "Cód. Ente Rec."
  loc_A3CCF6: FLdPr Me
  loc_A3CCF9: VCallAd Control_ID_FiltroCbo
  loc_A3CCFC: FStAdFunc var_E8
  loc_A3CCFF: FLdPr var_E8
  loc_A3CD02: Me.AddItem from_stack_1, from_stack_2
  loc_A3CD07: FFree1Ad var_E8
  loc_A3CD0A: LitVarI2 var_E4, 4
  loc_A3CD0F: PopAdLdVar
  loc_A3CD10: LitStr "Ente Rec. detalle"
  loc_A3CD13: FLdPr Me
  loc_A3CD16: VCallAd Control_ID_FiltroCbo
  loc_A3CD19: FStAdFunc var_E8
  loc_A3CD1C: FLdPr var_E8
  loc_A3CD1F: Me.AddItem from_stack_1, from_stack_2
  loc_A3CD24: FFree1Ad var_E8
  loc_A3CD27: LitI2_Byte 0
  loc_A3CD29: FLdPr Me
  loc_A3CD2C: VCallAd Control_ID_FiltroCbo
  loc_A3CD2F: FStAdFunc var_E8
  loc_A3CD32: FLdPr var_E8
  loc_A3CD35: Me.ListIndex = from_stack_1
  loc_A3CD3A: FFree1Ad var_E8
  loc_A3CD3D: Call cmdCancelar_Click()
  loc_A3CD42: LitI4 0
  loc_A3CD47: LitI4 1
  loc_A3CD4C: FLdRfVar var_EC
  loc_A3CD4F: Redim
  loc_A3CD59: FLdPr Me
  loc_A3CD5C: MemLdRfVar from_stack_1.global_52
  loc_A3CD5F: NewIfNullAd
  loc_A3CD62: FStAd var_E8 
  loc_A3CD66: FLdRfVar var_E8
  loc_A3CD69: CVarRef
  loc_A3CD6E: ParmAry1St
  loc_A3CD74: FLdPr Me
  loc_A3CD77: VCallAd Control_ID_dgdABMS
  loc_A3CD7A: CVarAd
  loc_A3CD7E: ParmAry1St
  loc_A3CD84: FLdRfVar var_EC
  loc_A3CD87: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3CD8C: ILdRf var_E8
  loc_A3CD8F: CastAd
  loc_A3CD92: FLdPr Me
  loc_A3CD95: MemStAdFunc
  loc_A3CD99: FLdRfVar var_EC
  loc_A3CD9C: Erase
  loc_A3CD9D: FFree1Ad var_E8
  loc_A3CDA0: ExitProcHresult
End Sub

Private Sub Form_Activate() '99865C
  'Data Table: 4B1374
  loc_998600: FLdRfVar var_C2
  loc_998603: FLdRfVar var_C0
  loc_998606: LitVarI2 var_B8, 1
  loc_99860B: FLdPr Me
  loc_99860E: VCallAd Control_ID_tlbABMS
  loc_998611: FStAdFunc var_88
  loc_998614: FLdPr var_88
  loc_998617: LateIdLdVar var_98 DispID_3 0
  loc_99861E: CastAdVar Me
  loc_998622: FStAdFunc var_BC
  loc_998625: FLdPr var_BC
  loc_998628:  = Me.Buttons.ControlDefault
  loc_99862D: FLdPr var_C0
  loc_998630:  = Me.Enabled
  loc_998635: FLdI2 var_C2
  loc_998638: FFreeAd var_88 = "": var_BC = ""
  loc_998641: FFreeVar var_98 = ""
  loc_998648: BranchF loc_998659
  loc_99864B: FLdPr Me
  loc_99864E: MemLdRfVar from_stack_1.global_52
  loc_998651: NewIfNullPr clscontracargos
  loc_998654: Call clscontracargos.Requery()
  loc_998659: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95DFD0
  'Data Table: 4B1374
  loc_95DFB8: ILdI2 KeyCode
  loc_95DFBB: ILdRf Me
  loc_95DFBE: CastAd
  loc_95DFC1: FStAdFunc var_88
  loc_95DFC4: FLdRfVar var_88
  loc_95DFC7: ImpAdCallFPR4  = Proc_261_3_A7CAFC()
  loc_95DFCC: FFree1Ad var_88
  loc_95DFCF: ExitProcHresult
End Sub
