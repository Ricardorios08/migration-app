VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAjustesdeRecaudacion
  Caption = "Ajustes de Recaudación"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAjustesdeRecaudacion.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15270
  ClientHeight = 9600
  Begin VB.Frame Frame1
    Caption = " Ajustes de Recaudación"
    Left = 120
    Top = 720
    Width = 10575
    Height = 2175
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox NuloIngrTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 1440
      Width = 1335
      Height = 420
      TabIndex = 12
      MaxLength = 100
      DataField = "NuloIngr"
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
    Begin VB.TextBox DetaIngrTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 960
      Width = 7935
      Height = 360
      TabIndex = 4
      MaxLength = 100
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
    Begin MSMask.MaskEdBox FechIngrMsk
      Left = 1920
      Top = 480
      Width = 1320
      Height = 360
      TabIndex = 2
      OleObjectBlob = "frmAjustesdeRecaudacion.frx":08CA
      DataField = "FechIngr"
    End
    Begin VB.Label Label3
      Caption = "Nro Lote:"
      Left = 840
      Top = 1440
      Width = 975
      Height = 300
      TabIndex = 11
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
      Caption = "Fecha:"
      Left = 1080
      Top = 480
      Width = 735
      Height = 300
      TabIndex = 1
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
    Begin VB.Label Label2
      Caption = "Detalle:"
      Left = 930
      Top = 960
      Width = 885
      Height = 300
      TabIndex = 3
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
  Begin MSFlexGridLib.MSFlexGrid FlexAjustes
    Left = 120
    Top = 3000
    Width = 10575
    Height = 4575
    TabIndex = 5
    OleObjectBlob = "frmAjustesdeRecaudacion.frx":0966
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAjustesdeRecaudacion.frx":0A52
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15270
    Height = 660
    TabIndex = 9
    OleObjectBlob = "frmAjustesdeRecaudacion.frx":85D0
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 10
      TabStop = 0   'False
      Picture = "frmAjustesdeRecaudacion.frx":8B2C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label TotaHaberLbl
    ForeColor = &HC00000&
    Left = 8760
    Top = 7680
    Width = 1920
    Height = 360
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label TotaDebeLbl
    ForeColor = &HC00000&
    Left = 6480
    Top = 7680
    Width = 1920
    Height = 360
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 1 'Fixed Single
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
    Caption = "Totales:"
    Left = 5400
    Top = 7680
    Width = 855
    Height = 360
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
  End
End

Attribute VB_Name = "frmAjustesdeRecaudacion"


Private Sub tlbABMS_ButtonClick(Button As Button) 'A91DE0
  'Data Table: 437E6C
  loc_A9197C: ILdRf Button
  loc_A9197F: FStAd var_88 
  loc_A91983: FLdRfVar var_8C
  loc_A91986: FLdPr var_88
  loc_A91989:  = Me.Key
  loc_A9198E: FLdZeroAd var_8C
  loc_A91991: FStStr var_90
  loc_A91994: ILdRf var_90
  loc_A91997: LitStr "btnCrear"
  loc_A9199A: EqStr
  loc_A9199C: BranchF loc_A91A4C
  loc_A9199F: LitI2_Byte 1
  loc_A919A1: FLdPr Me
  loc_A919A4: MemStUI1
  loc_A919A8: ILdRf Me
  loc_A919AB: CastAd
  loc_A919AE: FStAdFunc var_94
  loc_A919B1: FLdRfVar var_94
  loc_A919B4: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_A919B9: FFree1Ad var_94
  loc_A919BC: ILdRf Me
  loc_A919BF: CastAd
  loc_A919C2: FStAdFunc var_94
  loc_A919C5: FLdRfVar var_94
  loc_A919C8: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A919CD: FFree1Ad var_94
  loc_A919D0: ImpAdLdFPR8 MemVar_C3D04C
  loc_A919D3: CStrDate
  loc_A919D5: CVarStr var_A4
  loc_A919D8: PopAdLdVar
  loc_A919D9: FLdPr Me
  loc_A919DC: VCallAd Control_ID_FechIngrMsk
  loc_A919DF: FStAdFunc var_94
  loc_A919E2: FLdPr var_94
  loc_A919E5: LateIdSt
  loc_A919EA: FFree1Ad var_94
  loc_A919ED: FFree1Var var_A4 = ""
  loc_A919F0: LitI4 0
  loc_A919F5: LitI4 0
  loc_A919FA: FLdRfVar var_B8
  loc_A919FD: Redim
  loc_A91A07: FLdPr Me
  loc_A91A0A: VCallAd Control_ID_FlexAjustes
  loc_A91A0D: CVarAd
  loc_A91A11: ParmAry1St
  loc_A91A17: FLdRfVar var_B8
  loc_A91A1A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A91A1F: FLdRfVar var_B8
  loc_A91A22: Erase
  loc_A91A23: ILdRf Me
  loc_A91A26: CastAd
  loc_A91A29: FStAdFunc var_94
  loc_A91A2C: FLdRfVar var_94
  loc_A91A2F: ImpAdCallFPR4  = Proc_261_12_A04B24()
  loc_A91A34: FFree1Ad var_94
  loc_A91A37: FLdPr Me
  loc_A91A3A: VCallAd Control_ID_FechIngrMsk
  loc_A91A3D: CVarAd
  loc_A91A41: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A91A46: FFree1Var var_A4 = ""
  loc_A91A49: Branch loc_A91DDC
  loc_A91A4C: ILdRf var_90
  loc_A91A4F: LitStr "btnModificar"
  loc_A91A52: EqStr
  loc_A91A54: BranchF loc_A91A5A
  loc_A91A57: Branch loc_A91DDC
  loc_A91A5A: ILdRf var_90
  loc_A91A5D: LitStr "btnEliminar"
  loc_A91A60: EqStr
  loc_A91A62: BranchF loc_A91A68
  loc_A91A65: Branch loc_A91DDC
  loc_A91A68: ILdRf var_90
  loc_A91A6B: LitStr "btnGuardar"
  loc_A91A6E: EqStr
  loc_A91A70: BranchF loc_A91D10
  loc_A91A73: LitStr vbNullString
  loc_A91A76: FLdPr Me
  loc_A91A79: MemStStrCopy
  loc_A91A7D: LitI2_Byte 0
  loc_A91A7F: PopTmpLdAd2 var_CC
  loc_A91A82: Call FechIngrMsk_UnknownEvent_8()
  loc_A91A87: FLdPr Me
  loc_A91A8A: MemLdStr global_60
  loc_A91A8D: LitStr vbNullString
  loc_A91A90: NeStr
  loc_A91A92: BranchF loc_A91A96
  loc_A91A95: ExitProcHresult
  loc_A91A96: LitI2_Byte 0
  loc_A91A98: PopTmpLdAd2 var_CC
  loc_A91A9B: Call DetaIngrTxt_Validate(from_stack_1v)
  loc_A91AA0: FLdPr Me
  loc_A91AA3: MemLdStr global_60
  loc_A91AA6: LitStr vbNullString
  loc_A91AA9: NeStr
  loc_A91AAB: BranchF loc_A91AAF
  loc_A91AAE: ExitProcHresult
  loc_A91AAF: LitI2_Byte 1
  loc_A91AB1: FLdPr Me
  loc_A91AB4: MemLdRfVar from_stack_1.global_80
  loc_A91AB7: FLdPr Me
  loc_A91ABA: VCallAd Control_ID_FlexAjustes
  loc_A91ABD: FStAdFunc var_94
  loc_A91AC0: FLdPr var_94
  loc_A91AC3: LateIdLdVar var_A4 DispID_4 0
  loc_A91ACA: CI4Var
  loc_A91ACC: LitI4 1
  loc_A91AD1: SubI4
  loc_A91AD2: CI2I4
  loc_A91AD3: FFree1Ad var_94
  loc_A91AD6: FFree1Var var_A4 = ""
  loc_A91AD9: ForI2 var_D0
  loc_A91ADF: FLdPr Me
  loc_A91AE2: MemLdI2 global_80
  loc_A91AE5: CI4UI1
  loc_A91AE6: CVarI4
  loc_A91AEA: PopAdLdVar
  loc_A91AEB: LitVarI4
  loc_A91AF3: PopAdLdVar
  loc_A91AF4: FLdPr Me
  loc_A91AF7: VCallAd Control_ID_FlexAjustes
  loc_A91AFA: FStAdFunc var_94
  loc_A91AFD: FLdPr var_94
  loc_A91B00: LateIdCallLdVar
  loc_A91B0A: CStrVarTmp
  loc_A91B0B: FStStrNoPop var_8C
  loc_A91B0E: LitStr vbNullString
  loc_A91B11: EqStr
  loc_A91B13: FLdPr Me
  loc_A91B16: MemLdI2 global_80
  loc_A91B19: CI4UI1
  loc_A91B1A: CVarI4
  loc_A91B1E: PopAdLdVar
  loc_A91B1F: LitVarI4
  loc_A91B27: PopAdLdVar
  loc_A91B28: FLdPr Me
  loc_A91B2B: VCallAd Control_ID_FlexAjustes
  loc_A91B2E: FStAdFunc var_144
  loc_A91B31: FLdPr var_144
  loc_A91B34: LateIdCallLdVar
  loc_A91B3E: CStrVarTmp
  loc_A91B3F: FStStrNoPop var_158
  loc_A91B42: LitStr vbNullString
  loc_A91B45: EqStr
  loc_A91B47: OrI4
  loc_A91B48: FFreeStr var_8C = ""
  loc_A91B4F: FFreeAd var_94 = ""
  loc_A91B56: FFreeVar var_A4 = ""
  loc_A91B5D: BranchF loc_A91B92
  loc_A91B60: LitStr "Verifique la informacion ingresada."
  loc_A91B63: FLdPr Me
  loc_A91B66: MemStStrCopy
  loc_A91B6A: LitI4 0
  loc_A91B6F: FLdPr Me
  loc_A91B72: MemLdStr global_60
  loc_A91B75: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A91B7A: FLdPr Me
  loc_A91B7D: VCallAd Control_ID_FlexAjustes
  loc_A91B80: FStAdFunc var_94
  loc_A91B83: FLdPr var_94
  loc_A91B86: LateIdCall
  loc_A91B8E: FFree1Ad var_94
  loc_A91B91: ExitProcHresult
  loc_A91B92: FLdPr Me
  loc_A91B95: MemLdRfVar from_stack_1.global_80
  loc_A91B98: NextI2 var_D0, loc_A91ADF
  loc_A91B9D: FLdRfVar var_8C
  loc_A91BA0: FLdPr Me
  loc_A91BA3: VCallAd Control_ID_TotaDebeLbl
  loc_A91BA6: FStAdFunc var_94
  loc_A91BA9: FLdPr var_94
  loc_A91BAC:  = Me.Caption
  loc_A91BB1: ILdRf var_8C
  loc_A91BB4: CR8Str
  loc_A91BB6: LitI2_Byte 0
  loc_A91BB8: CR8I2
  loc_A91BB9: EqR4
  loc_A91BBA: FFree1Str var_8C
  loc_A91BBD: FFree1Ad var_94
  loc_A91BC0: BranchF loc_A91BF5
  loc_A91BC3: LitStr "Ingrese los Movimientos del Ajuste."
  loc_A91BC6: FLdPr Me
  loc_A91BC9: MemStStrCopy
  loc_A91BCD: LitI4 0
  loc_A91BD2: FLdPr Me
  loc_A91BD5: MemLdStr global_60
  loc_A91BD8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A91BDD: FLdPr Me
  loc_A91BE0: VCallAd Control_ID_FlexAjustes
  loc_A91BE3: FStAdFunc var_94
  loc_A91BE6: FLdPr var_94
  loc_A91BE9: LateIdCall
  loc_A91BF1: FFree1Ad var_94
  loc_A91BF4: ExitProcHresult
  loc_A91BF5: FLdRfVar var_158
  loc_A91BF8: FLdPr Me
  loc_A91BFB: VCallAd Control_ID_TotaHaberLbl
  loc_A91BFE: FStAdFunc var_144
  loc_A91C01: FLdPr var_144
  loc_A91C04:  = Me.Caption
  loc_A91C09: FLdRfVar var_8C
  loc_A91C0C: FLdPr Me
  loc_A91C0F: VCallAd Control_ID_TotaDebeLbl
  loc_A91C12: FStAdFunc var_94
  loc_A91C15: FLdPr var_94
  loc_A91C18:  = Me.Caption
  loc_A91C1D: ILdRf var_8C
  loc_A91C20: CR8Str
  loc_A91C22: ILdRf var_158
  loc_A91C25: CR8Str
  loc_A91C27: NeR8
  loc_A91C28: FFreeStr var_8C = ""
  loc_A91C2F: FFreeAd var_94 = ""
  loc_A91C36: BranchF loc_A91C6B
  loc_A91C39: LitStr "El total del DEBE no coincide con el total del HABER. Verifique..."
  loc_A91C3C: FLdPr Me
  loc_A91C3F: MemStStrCopy
  loc_A91C43: LitI4 0
  loc_A91C48: FLdPr Me
  loc_A91C4B: MemLdStr global_60
  loc_A91C4E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A91C53: FLdPr Me
  loc_A91C56: VCallAd Control_ID_FlexAjustes
  loc_A91C59: FStAdFunc var_94
  loc_A91C5C: FLdPr var_94
  loc_A91C5F: LateIdCall
  loc_A91C67: FFree1Ad var_94
  loc_A91C6A: ExitProcHresult
  loc_A91C6B: FLdPr Me
  loc_A91C6E: VCallAd Control_ID_FechIngrMsk
  loc_A91C71: FStAdFunc var_94
  loc_A91C74: FLdPr var_94
  loc_A91C77: LateIdLdVar var_A4 DispID_15 0
  loc_A91C7E: PopAd
  loc_A91C80: FLdRfVar var_8C
  loc_A91C83: FLdPr Me
  loc_A91C86: VCallAd Control_ID_DetaIngrTxt
  loc_A91C89: FStAdFunc var_144
  loc_A91C8C: FLdPr var_144
  loc_A91C8F:  = Me.Text
  loc_A91C94: FLdPr Me
  loc_A91C97: VCallAd Control_ID_FlexAjustes
  loc_A91C9A: FStAdFunc var_164
  loc_A91C9D: FLdRfVar var_CC
  loc_A91CA0: FLdZeroAd var_164
  loc_A91CA3: FStAdFunc var_160
  loc_A91CA6: FLdRfVar var_160
  loc_A91CA9: ILdRf var_8C
  loc_A91CAC: LitI2_Byte 1
  loc_A91CAE: CStrUI1
  loc_A91CB0: FStStrNoPop var_15C
  loc_A91CB3: ImpAdLdI2 MemVar_C3D064
  loc_A91CB6: FLdRfVar var_A4
  loc_A91CB9: CStrVarTmp
  loc_A91CBA: FStStrNoPop var_158
  loc_A91CBD: FLdPr Me
  loc_A91CC0: MemLdRfVar from_stack_1.global_56
  loc_A91CC3: NewIfNullPr clsingreso
  loc_A91CC6: from_stack_6v = clsingreso.AddNew_Ajustes(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A91CCB: FLdI2 var_CC
  loc_A91CCE: FStI2 var_CA
  loc_A91CD1: FFreeStr var_158 = "": var_15C = ""
  loc_A91CDA: FFreeAd var_94 = "": var_144 = "": var_160 = ""
  loc_A91CE5: FFree1Var var_A4 = ""
  loc_A91CE8: LitI4 0
  loc_A91CED: LitStr "Se generó en forma correcta el ajuste número: "
  loc_A91CF0: FLdI2 var_CA
  loc_A91CF3: CStrUI1
  loc_A91CF5: FStStrNoPop var_8C
  loc_A91CF8: ConcatStr
  loc_A91CF9: FStStrNoPop var_158
  loc_A91CFC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A91D01: FFreeStr var_8C = ""
  loc_A91D08: Call cmdCancelar_Click()
  loc_A91D0D: Branch loc_A91DDC
  loc_A91D10: ILdRf var_90
  loc_A91D13: LitStr "btnCancelar"
  loc_A91D16: EqStr
  loc_A91D18: BranchF loc_A91D23
  loc_A91D1B: Call cmdCancelar_Click()
  loc_A91D20: Branch loc_A91DDC
  loc_A91D23: ILdRf var_90
  loc_A91D26: LitStr "btnPrimero"
  loc_A91D29: EqStr
  loc_A91D2B: BranchF loc_A91D31
  loc_A91D2E: Branch loc_A91DDC
  loc_A91D31: ILdRf var_90
  loc_A91D34: LitStr "btnAnterior"
  loc_A91D37: EqStr
  loc_A91D39: BranchF loc_A91D3F
  loc_A91D3C: Branch loc_A91DDC
  loc_A91D3F: ILdRf var_90
  loc_A91D42: LitStr "btnSiguiente"
  loc_A91D45: EqStr
  loc_A91D47: BranchF loc_A91D4D
  loc_A91D4A: Branch loc_A91DDC
  loc_A91D4D: ILdRf var_90
  loc_A91D50: LitStr "btnUltimo"
  loc_A91D53: EqStr
  loc_A91D55: BranchF loc_A91D5B
  loc_A91D58: Branch loc_A91DDC
  loc_A91D5B: ILdRf var_90
  loc_A91D5E: LitStr "btnFiltrar"
  loc_A91D61: EqStr
  loc_A91D63: BranchF loc_A91D69
  loc_A91D66: Branch loc_A91DDC
  loc_A91D69: ILdRf var_90
  loc_A91D6C: LitStr "btnBuscar"
  loc_A91D6F: EqStr
  loc_A91D71: BranchF loc_A91D77
  loc_A91D74: Branch loc_A91DDC
  loc_A91D77: ILdRf var_90
  loc_A91D7A: LitStr "btnImprimir"
  loc_A91D7D: EqStr
  loc_A91D7F: BranchF loc_A91D85
  loc_A91D82: Branch loc_A91DDC
  loc_A91D85: ILdRf var_90
  loc_A91D88: LitStr "btnAyuda"
  loc_A91D8B: EqStr
  loc_A91D8D: BranchF loc_A91DBC
  loc_A91D90: LitVar_Missing var_184
  loc_A91D93: LitVar_Missing var_174
  loc_A91D96: LitVar_Missing var_154
  loc_A91D99: LitI4 0
  loc_A91D9E: LitVarStr var_B4, "Opcion no disponible en esta version."
  loc_A91DA3: FStVarCopyObj var_A4
  loc_A91DA6: FLdRfVar var_A4
  loc_A91DA9: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A91DAE: FFreeVar var_A4 = "": var_154 = "": var_174 = ""
  loc_A91DB9: Branch loc_A91DDC
  loc_A91DBC: ILdRf var_90
  loc_A91DBF: LitStr "btnSalir"
  loc_A91DC2: EqStr
  loc_A91DC4: BranchF loc_A91DDC
  loc_A91DC7: ILdRf Me
  loc_A91DCA: FStAdNoPop
  loc_A91DCE: ImpAdLdRf MemVar_C44F9C
  loc_A91DD1: NewIfNullPr Me
  loc_A91DD4: Me.Global.Unload from_stack_1
  loc_A91DD9: FFree1Ad var_94
  loc_A91DDC: ExitProcHresult
End Sub

Private Sub FlexAjustes_UnknownEvent_1 'AC1E94
  'Data Table: 437E6C
  loc_AC18B4: FLdPr Me
  loc_AC18B7: VCallAd Control_ID_FlexAjustes
  loc_AC18BA: FStAdFunc var_88
  loc_AC18BD: FLdPr var_88
  loc_AC18C0: LateIdLdVar var_98 DispID_10 0
  loc_AC18C7: CI4Var
  loc_AC18C9: CVarI4
  loc_AC18CD: PopAdLdVar
  loc_AC18CE: LitVarI4
  loc_AC18D6: PopAdLdVar
  loc_AC18D7: FLdPr Me
  loc_AC18DA: VCallAd Control_ID_FlexAjustes
  loc_AC18DD: FStAdFunc var_DC
  loc_AC18E0: FLdPr var_DC
  loc_AC18E3: LateIdCallLdVar
  loc_AC18ED: CStrVarTmp
  loc_AC18EE: FStStrNoPop var_F0
  loc_AC18F1: LitStr vbNullString
  loc_AC18F4: NeStr
  loc_AC18F6: FFree1Str var_F0
  loc_AC18F9: FFreeAd var_88 = ""
  loc_AC1900: FFreeVar var_98 = ""
  loc_AC1907: BranchF loc_AC19C8
  loc_AC190A: FLdPr Me
  loc_AC190D: VCallAd Control_ID_FlexAjustes
  loc_AC1910: FStAdFunc var_88
  loc_AC1913: FLdPr var_88
  loc_AC1916: LateIdLdVar var_98 DispID_11 0
  loc_AC191D: CI4Var
  loc_AC191F: LitI4 0
  loc_AC1924: EqI4
  loc_AC1925: FFree1Ad var_88
  loc_AC1928: FFree1Var var_98 = ""
  loc_AC192B: BranchF loc_AC19C5
  loc_AC192E: FLdPr Me
  loc_AC1931: VCallAd Control_ID_FlexAjustes
  loc_AC1934: FStAdFunc var_88
  loc_AC1937: FLdPr var_88
  loc_AC193A: LateIdLdVar var_98 DispID_0 0
  loc_AC1941: CStrVarTmp
  loc_AC1942: FStStrNoPop var_F0
  loc_AC1945: LitStr vbNullString
  loc_AC1948: NeStr
  loc_AC194A: FFree1Str var_F0
  loc_AC194D: FFree1Ad var_88
  loc_AC1950: FFree1Var var_98 = ""
  loc_AC1953: BranchF loc_AC197E
  loc_AC1956: FLdPr Me
  loc_AC1959: VCallAd Control_ID_FlexAjustes
  loc_AC195C: FStAdFunc var_88
  loc_AC195F: FLdPr var_88
  loc_AC1962: LateIdLdVar var_98 DispID_0 0
  loc_AC1969: CStrVarTmp
  loc_AC196A: FStStrNoPop var_F0
  loc_AC196D: Call Proc_289_14_B28F88()
  loc_AC1972: FFree1Str var_F0
  loc_AC1975: FFree1Ad var_88
  loc_AC1978: FFree1Var var_98 = ""
  loc_AC197B: Branch loc_AC19C5
  loc_AC197E: FLdPr Me
  loc_AC1981: VCallAd Control_ID_FlexAjustes
  loc_AC1984: FStAdFunc var_88
  loc_AC1987: FLdPr var_88
  loc_AC198A: LateIdLdVar var_98 DispID_10 0
  loc_AC1991: CI4Var
  loc_AC1993: CVarI4
  loc_AC1997: PopAdLdVar
  loc_AC1998: LitVarI4
  loc_AC19A0: PopAdLdVar
  loc_AC19A1: LitVarStr var_100, vbNullString
  loc_AC19A6: PopAdLdVar
  loc_AC19A7: FLdPr Me
  loc_AC19AA: VCallAd Control_ID_FlexAjustes
  loc_AC19AD: FStAdFunc var_DC
  loc_AC19B0: FLdPr var_DC
  loc_AC19B3: LateIdCallSt
  loc_AC19BB: FFreeAd var_88 = ""
  loc_AC19C2: FFree1Var var_98 = ""
  loc_AC19C5: Branch loc_AC1A0F
  loc_AC19C8: FLdPr Me
  loc_AC19CB: VCallAd Control_ID_FlexAjustes
  loc_AC19CE: FStAdFunc var_88
  loc_AC19D1: FLdPr var_88
  loc_AC19D4: LateIdLdVar var_98 DispID_10 0
  loc_AC19DB: CI4Var
  loc_AC19DD: CVarI4
  loc_AC19E1: PopAdLdVar
  loc_AC19E2: LitVarI4
  loc_AC19EA: PopAdLdVar
  loc_AC19EB: LitVarStr var_100, vbNullString
  loc_AC19F0: PopAdLdVar
  loc_AC19F1: FLdPr Me
  loc_AC19F4: VCallAd Control_ID_FlexAjustes
  loc_AC19F7: FStAdFunc var_DC
  loc_AC19FA: FLdPr var_DC
  loc_AC19FD: LateIdCallSt
  loc_AC1A05: FFreeAd var_88 = ""
  loc_AC1A0C: FFree1Var var_98 = ""
  loc_AC1A0F: FLdPr Me
  loc_AC1A12: VCallAd Control_ID_FlexAjustes
  loc_AC1A15: FStAdFunc var_88
  loc_AC1A18: FLdPr var_88
  loc_AC1A1B: LateIdLdVar var_98 DispID_10 0
  loc_AC1A22: CI4Var
  loc_AC1A24: CVarI4
  loc_AC1A28: PopAdLdVar
  loc_AC1A29: LitVarI4
  loc_AC1A31: PopAdLdVar
  loc_AC1A32: FLdPr Me
  loc_AC1A35: VCallAd Control_ID_FlexAjustes
  loc_AC1A38: FStAdFunc var_DC
  loc_AC1A3B: FLdPr var_DC
  loc_AC1A3E: LateIdCallLdVar
  loc_AC1A48: CStrVarTmp
  loc_AC1A49: FStStrNoPop var_F0
  loc_AC1A4C: LitStr vbNullString
  loc_AC1A4F: NeStr
  loc_AC1A51: FFree1Str var_F0
  loc_AC1A54: FFreeAd var_88 = ""
  loc_AC1A5B: FFreeVar var_98 = ""
  loc_AC1A62: BranchF loc_AC1B3A
  loc_AC1A65: FLdPr Me
  loc_AC1A68: VCallAd Control_ID_FlexAjustes
  loc_AC1A6B: FStAdFunc var_88
  loc_AC1A6E: FLdPr var_88
  loc_AC1A71: LateIdLdVar var_98 DispID_11 0
  loc_AC1A78: CI4Var
  loc_AC1A7A: LitI4 2
  loc_AC1A7F: EqI4
  loc_AC1A80: FFree1Ad var_88
  loc_AC1A83: FFree1Var var_98 = ""
  loc_AC1A86: BranchF loc_AC1B3A
  loc_AC1A89: FLdPr Me
  loc_AC1A8C: VCallAd Control_ID_FlexAjustes
  loc_AC1A8F: FStAdFunc var_88
  loc_AC1A92: FLdPr var_88
  loc_AC1A95: LateIdLdVar var_98 DispID_0 0
  loc_AC1A9C: PopAd
  loc_AC1A9E: LitI4 1
  loc_AC1AA3: LitI4 1
  loc_AC1AA8: LitVarStr var_A8, "0.00"
  loc_AC1AAD: FStVarCopyObj var_120
  loc_AC1AB0: FLdRfVar var_120
  loc_AC1AB3: FLdRfVar var_98
  loc_AC1AB6: CStrVarTmp
  loc_AC1AB7: CVarStr var_EC
  loc_AC1ABA: FLdRfVar var_130
  loc_AC1ABD: ImpAdCallFPR4  = Format(, )
  loc_AC1AC2: FLdRfVar var_130
  loc_AC1AC5: CStrVarTmp
  loc_AC1AC6: CVarStr var_140
  loc_AC1AC9: PopAdLdVar
  loc_AC1ACA: FLdPr Me
  loc_AC1ACD: VCallAd Control_ID_FlexAjustes
  loc_AC1AD0: FStAdFunc var_DC
  loc_AC1AD3: FLdPr var_DC
  loc_AC1AD6: LateIdSt
  loc_AC1ADB: FFreeAd var_88 = ""
  loc_AC1AE2: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC1AEF: FLdPr Me
  loc_AC1AF2: VCallAd Control_ID_FlexAjustes
  loc_AC1AF5: FStAdFunc var_88
  loc_AC1AF8: FLdPr var_88
  loc_AC1AFB: LateIdLdVar var_98 DispID_10 0
  loc_AC1B02: CI4Var
  loc_AC1B04: CVarI4
  loc_AC1B08: PopAdLdVar
  loc_AC1B09: LitVarI4
  loc_AC1B11: PopAdLdVar
  loc_AC1B12: FLdPr Me
  loc_AC1B15: MemLdRfVar from_stack_1.global_88
  loc_AC1B18: CDargRef
  loc_AC1B1C: FLdPr Me
  loc_AC1B1F: VCallAd Control_ID_FlexAjustes
  loc_AC1B22: FStAdFunc var_DC
  loc_AC1B25: FLdPr var_DC
  loc_AC1B28: LateIdCallSt
  loc_AC1B30: FFreeAd var_88 = ""
  loc_AC1B37: FFree1Var var_98 = ""
  loc_AC1B3A: FLdPr Me
  loc_AC1B3D: VCallAd Control_ID_FlexAjustes
  loc_AC1B40: FStAdFunc var_88
  loc_AC1B43: FLdPr var_88
  loc_AC1B46: LateIdLdVar var_98 DispID_10 0
  loc_AC1B4D: CI4Var
  loc_AC1B4F: CVarI4
  loc_AC1B53: PopAdLdVar
  loc_AC1B54: LitVarI4
  loc_AC1B5C: PopAdLdVar
  loc_AC1B5D: FLdPr Me
  loc_AC1B60: VCallAd Control_ID_FlexAjustes
  loc_AC1B63: FStAdFunc var_DC
  loc_AC1B66: FLdPr var_DC
  loc_AC1B69: LateIdCallLdVar
  loc_AC1B73: CStrVarTmp
  loc_AC1B74: FStStrNoPop var_F0
  loc_AC1B77: LitStr vbNullString
  loc_AC1B7A: NeStr
  loc_AC1B7C: FFree1Str var_F0
  loc_AC1B7F: FFreeAd var_88 = ""
  loc_AC1B86: FFreeVar var_98 = ""
  loc_AC1B8D: BranchF loc_AC1C65
  loc_AC1B90: FLdPr Me
  loc_AC1B93: VCallAd Control_ID_FlexAjustes
  loc_AC1B96: FStAdFunc var_88
  loc_AC1B99: FLdPr var_88
  loc_AC1B9C: LateIdLdVar var_98 DispID_11 0
  loc_AC1BA3: CI4Var
  loc_AC1BA5: LitI4 3
  loc_AC1BAA: EqI4
  loc_AC1BAB: FFree1Ad var_88
  loc_AC1BAE: FFree1Var var_98 = ""
  loc_AC1BB1: BranchF loc_AC1C65
  loc_AC1BB4: FLdPr Me
  loc_AC1BB7: VCallAd Control_ID_FlexAjustes
  loc_AC1BBA: FStAdFunc var_88
  loc_AC1BBD: FLdPr var_88
  loc_AC1BC0: LateIdLdVar var_98 DispID_0 0
  loc_AC1BC7: PopAd
  loc_AC1BC9: LitI4 1
  loc_AC1BCE: LitI4 1
  loc_AC1BD3: LitVarStr var_A8, "0.00"
  loc_AC1BD8: FStVarCopyObj var_120
  loc_AC1BDB: FLdRfVar var_120
  loc_AC1BDE: FLdRfVar var_98
  loc_AC1BE1: CStrVarTmp
  loc_AC1BE2: CVarStr var_EC
  loc_AC1BE5: FLdRfVar var_130
  loc_AC1BE8: ImpAdCallFPR4  = Format(, )
  loc_AC1BED: FLdRfVar var_130
  loc_AC1BF0: CStrVarTmp
  loc_AC1BF1: CVarStr var_140
  loc_AC1BF4: PopAdLdVar
  loc_AC1BF5: FLdPr Me
  loc_AC1BF8: VCallAd Control_ID_FlexAjustes
  loc_AC1BFB: FStAdFunc var_DC
  loc_AC1BFE: FLdPr var_DC
  loc_AC1C01: LateIdSt
  loc_AC1C06: FFreeAd var_88 = ""
  loc_AC1C0D: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC1C1A: FLdPr Me
  loc_AC1C1D: VCallAd Control_ID_FlexAjustes
  loc_AC1C20: FStAdFunc var_88
  loc_AC1C23: FLdPr var_88
  loc_AC1C26: LateIdLdVar var_98 DispID_10 0
  loc_AC1C2D: CI4Var
  loc_AC1C2F: CVarI4
  loc_AC1C33: PopAdLdVar
  loc_AC1C34: LitVarI4
  loc_AC1C3C: PopAdLdVar
  loc_AC1C3D: FLdPr Me
  loc_AC1C40: MemLdRfVar from_stack_1.global_84
  loc_AC1C43: CDargRef
  loc_AC1C47: FLdPr Me
  loc_AC1C4A: VCallAd Control_ID_FlexAjustes
  loc_AC1C4D: FStAdFunc var_DC
  loc_AC1C50: FLdPr var_DC
  loc_AC1C53: LateIdCallSt
  loc_AC1C5B: FFreeAd var_88 = ""
  loc_AC1C62: FFree1Var var_98 = ""
  loc_AC1C65: LitI2_Byte 0
  loc_AC1C67: CR8I2
  loc_AC1C68: FLdPr Me
  loc_AC1C6B: MemStFPR8 global_64
  loc_AC1C6E: LitI2_Byte 0
  loc_AC1C70: CR8I2
  loc_AC1C71: FLdPr Me
  loc_AC1C74: MemStFPR8 global_72
  loc_AC1C77: LitI2_Byte 1
  loc_AC1C79: FLdPr Me
  loc_AC1C7C: MemLdRfVar from_stack_1.global_80
  loc_AC1C7F: FLdPr Me
  loc_AC1C82: VCallAd Control_ID_FlexAjustes
  loc_AC1C85: FStAdFunc var_88
  loc_AC1C88: FLdPr var_88
  loc_AC1C8B: LateIdLdVar var_98 DispID_4 0
  loc_AC1C92: CI4Var
  loc_AC1C94: LitI4 1
  loc_AC1C99: SubI4
  loc_AC1C9A: CI2I4
  loc_AC1C9B: FFree1Ad var_88
  loc_AC1C9E: FFree1Var var_98 = ""
  loc_AC1CA1: ForI2 var_144
  loc_AC1CA7: FLdPr Me
  loc_AC1CAA: MemLdI2 global_80
  loc_AC1CAD: CI4UI1
  loc_AC1CAE: CVarI4
  loc_AC1CB2: PopAdLdVar
  loc_AC1CB3: LitVarI4
  loc_AC1CBB: PopAdLdVar
  loc_AC1CBC: FLdPr Me
  loc_AC1CBF: VCallAd Control_ID_FlexAjustes
  loc_AC1CC2: FStAdFunc var_88
  loc_AC1CC5: FLdPr var_88
  loc_AC1CC8: LateIdCallLdVar
  loc_AC1CD2: CStrVarTmp
  loc_AC1CD3: CVarStr var_EC
  loc_AC1CD6: ImpAdCallI2 IsNumeric()
  loc_AC1CDB: FFree1Ad var_88
  loc_AC1CDE: FFreeVar var_98 = ""
  loc_AC1CE5: BranchF loc_AC1D75
  loc_AC1CE8: FLdPr Me
  loc_AC1CEB: MemLdI2 global_80
  loc_AC1CEE: CI4UI1
  loc_AC1CEF: CVarI4
  loc_AC1CF3: PopAdLdVar
  loc_AC1CF4: LitVarI4
  loc_AC1CFC: PopAdLdVar
  loc_AC1CFD: FLdPr Me
  loc_AC1D00: VCallAd Control_ID_FlexAjustes
  loc_AC1D03: FStAdFunc var_88
  loc_AC1D06: FLdPr var_88
  loc_AC1D09: LateIdCallLdVar
  loc_AC1D13: CStrVarTmp
  loc_AC1D14: CVarStr var_EC
  loc_AC1D17: ImpAdCallI2 IsNumeric()
  loc_AC1D1C: FFree1Ad var_88
  loc_AC1D1F: FFreeVar var_98 = ""
  loc_AC1D26: BranchF loc_AC1D75
  loc_AC1D29: FLdPr Me
  loc_AC1D2C: MemLdI2 global_80
  loc_AC1D2F: CI4UI1
  loc_AC1D30: CVarI4
  loc_AC1D34: PopAdLdVar
  loc_AC1D35: LitVarI4
  loc_AC1D3D: PopAdLdVar
  loc_AC1D3E: FLdPr Me
  loc_AC1D41: VCallAd Control_ID_FlexAjustes
  loc_AC1D44: FStAdFunc var_88
  loc_AC1D47: FLdPr var_88
  loc_AC1D4A: LateIdCallLdVar
  loc_AC1D54: PopAd
  loc_AC1D56: FLdPr Me
  loc_AC1D59: MemLdFPR8 global_64
  loc_AC1D5C: FLdRfVar var_98
  loc_AC1D5F: CStrVarTmp
  loc_AC1D60: FStStrNoPop var_F0
  loc_AC1D63: CR8Str
  loc_AC1D65: AddR8
  loc_AC1D66: FLdPr Me
  loc_AC1D69: MemStFPR8 global_64
  loc_AC1D6C: FFree1Str var_F0
  loc_AC1D6F: FFree1Ad var_88
  loc_AC1D72: FFree1Var var_98 = ""
  loc_AC1D75: FLdPr Me
  loc_AC1D78: MemLdI2 global_80
  loc_AC1D7B: CI4UI1
  loc_AC1D7C: CVarI4
  loc_AC1D80: PopAdLdVar
  loc_AC1D81: LitVarI4
  loc_AC1D89: PopAdLdVar
  loc_AC1D8A: FLdPr Me
  loc_AC1D8D: VCallAd Control_ID_FlexAjustes
  loc_AC1D90: FStAdFunc var_88
  loc_AC1D93: FLdPr var_88
  loc_AC1D96: LateIdCallLdVar
  loc_AC1DA0: CStrVarTmp
  loc_AC1DA1: CVarStr var_EC
  loc_AC1DA4: ImpAdCallI2 IsNumeric()
  loc_AC1DA9: FFree1Ad var_88
  loc_AC1DAC: FFreeVar var_98 = ""
  loc_AC1DB3: BranchF loc_AC1E43
  loc_AC1DB6: FLdPr Me
  loc_AC1DB9: MemLdI2 global_80
  loc_AC1DBC: CI4UI1
  loc_AC1DBD: CVarI4
  loc_AC1DC1: PopAdLdVar
  loc_AC1DC2: LitVarI4
  loc_AC1DCA: PopAdLdVar
  loc_AC1DCB: FLdPr Me
  loc_AC1DCE: VCallAd Control_ID_FlexAjustes
  loc_AC1DD1: FStAdFunc var_88
  loc_AC1DD4: FLdPr var_88
  loc_AC1DD7: LateIdCallLdVar
  loc_AC1DE1: CStrVarTmp
  loc_AC1DE2: CVarStr var_EC
  loc_AC1DE5: ImpAdCallI2 IsNumeric()
  loc_AC1DEA: FFree1Ad var_88
  loc_AC1DED: FFreeVar var_98 = ""
  loc_AC1DF4: BranchF loc_AC1E43
  loc_AC1DF7: FLdPr Me
  loc_AC1DFA: MemLdI2 global_80
  loc_AC1DFD: CI4UI1
  loc_AC1DFE: CVarI4
  loc_AC1E02: PopAdLdVar
  loc_AC1E03: LitVarI4
  loc_AC1E0B: PopAdLdVar
  loc_AC1E0C: FLdPr Me
  loc_AC1E0F: VCallAd Control_ID_FlexAjustes
  loc_AC1E12: FStAdFunc var_88
  loc_AC1E15: FLdPr var_88
  loc_AC1E18: LateIdCallLdVar
  loc_AC1E22: PopAd
  loc_AC1E24: FLdPr Me
  loc_AC1E27: MemLdFPR8 global_72
  loc_AC1E2A: FLdRfVar var_98
  loc_AC1E2D: CStrVarTmp
  loc_AC1E2E: FStStrNoPop var_F0
  loc_AC1E31: CR8Str
  loc_AC1E33: AddR8
  loc_AC1E34: FLdPr Me
  loc_AC1E37: MemStFPR8 global_72
  loc_AC1E3A: FFree1Str var_F0
  loc_AC1E3D: FFree1Ad var_88
  loc_AC1E40: FFree1Var var_98 = ""
  loc_AC1E43: FLdPr Me
  loc_AC1E46: MemLdRfVar from_stack_1.global_80
  loc_AC1E49: NextI2 var_144, loc_AC1CA7
  loc_AC1E4E: FLdPr Me
  loc_AC1E51: MemLdFPR8 global_64
  loc_AC1E54: CStrR8
  loc_AC1E56: FStStrNoPop var_F0
  loc_AC1E59: FLdPr Me
  loc_AC1E5C: VCallAd Control_ID_TotaDebeLbl
  loc_AC1E5F: FStAdFunc var_88
  loc_AC1E62: FLdPr var_88
  loc_AC1E65: Me.Caption = from_stack_1
  loc_AC1E6A: FFree1Str var_F0
  loc_AC1E6D: FFree1Ad var_88
  loc_AC1E70: FLdPr Me
  loc_AC1E73: MemLdFPR8 global_72
  loc_AC1E76: CStrR8
  loc_AC1E78: FStStrNoPop var_F0
  loc_AC1E7B: FLdPr Me
  loc_AC1E7E: VCallAd Control_ID_TotaHaberLbl
  loc_AC1E81: FStAdFunc var_88
  loc_AC1E84: FLdPr var_88
  loc_AC1E87: Me.Caption = from_stack_1
  loc_AC1E8C: FFree1Str var_F0
  loc_AC1E8F: FFree1Ad var_88
  loc_AC1E92: ExitProcHresult
End Sub

Private Sub FlexAjustes_KeyDown(KeyCode As Integer, Shift As Integer) 'A9CB74
  'Data Table: 437E6C
  loc_A9C6CC: ILdI2 KeyCode
  loc_A9C6CF: CI4UI1
  loc_A9C6D0: LitI4 &H2E
  loc_A9C6D5: EqI4
  loc_A9C6D6: BranchF loc_A9C966
  loc_A9C6D9: FLdPr Me
  loc_A9C6DC: VCallAd Control_ID_FlexAjustes
  loc_A9C6DF: FStAdFunc var_88
  loc_A9C6E2: FLdPr var_88
  loc_A9C6E5: LateIdLdVar var_98 DispID_10 0
  loc_A9C6EC: CI4Var
  loc_A9C6EE: LitI4 0
  loc_A9C6F3: NeI4
  loc_A9C6F4: FFree1Ad var_88
  loc_A9C6F7: FFree1Var var_98 = ""
  loc_A9C6FA: BranchF loc_A9C966
  loc_A9C6FD: OnErrorGoto loc_A9C966
  loc_A9C700: FLdPr Me
  loc_A9C703: VCallAd Control_ID_FlexAjustes
  loc_A9C706: FStAdFunc var_88
  loc_A9C709: FLdPr var_88
  loc_A9C70C: LateIdLdVar var_98 DispID_10 0
  loc_A9C713: CI4Var
  loc_A9C715: CVarI4
  loc_A9C719: PopAdLdVar
  loc_A9C71A: FLdPr Me
  loc_A9C71D: VCallAd Control_ID_FlexAjustes
  loc_A9C720: FStAdFunc var_BC
  loc_A9C723: FLdPr var_BC
  loc_A9C726: LateIdCall
  loc_A9C72E: FFreeAd var_88 = ""
  loc_A9C735: FFree1Var var_98 = ""
  loc_A9C738: LitI2_Byte 0
  loc_A9C73A: CR8I2
  loc_A9C73B: FLdPr Me
  loc_A9C73E: MemStFPR8 global_64
  loc_A9C741: LitI2_Byte 0
  loc_A9C743: CR8I2
  loc_A9C744: FLdPr Me
  loc_A9C747: MemStFPR8 global_72
  loc_A9C74A: LitI2_Byte 1
  loc_A9C74C: FLdPr Me
  loc_A9C74F: MemLdRfVar from_stack_1.global_80
  loc_A9C752: FLdPr Me
  loc_A9C755: VCallAd Control_ID_FlexAjustes
  loc_A9C758: FStAdFunc var_88
  loc_A9C75B: FLdPr var_88
  loc_A9C75E: LateIdLdVar var_98 DispID_4 0
  loc_A9C765: CI4Var
  loc_A9C767: LitI4 1
  loc_A9C76C: SubI4
  loc_A9C76D: CI2I4
  loc_A9C76E: FFree1Ad var_88
  loc_A9C771: FFree1Var var_98 = ""
  loc_A9C774: ForI2 var_C0
  loc_A9C77A: FLdPr Me
  loc_A9C77D: MemLdI2 global_80
  loc_A9C780: CI4UI1
  loc_A9C781: CVarI4
  loc_A9C785: PopAdLdVar
  loc_A9C786: LitVarI4
  loc_A9C78E: PopAdLdVar
  loc_A9C78F: FLdPr Me
  loc_A9C792: VCallAd Control_ID_FlexAjustes
  loc_A9C795: FStAdFunc var_88
  loc_A9C798: FLdPr var_88
  loc_A9C79B: LateIdCallLdVar
  loc_A9C7A5: CStrVarTmp
  loc_A9C7A6: CVarStr var_F0
  loc_A9C7A9: ImpAdCallI2 IsNumeric()
  loc_A9C7AE: FFree1Ad var_88
  loc_A9C7B1: FFreeVar var_98 = ""
  loc_A9C7B8: BranchF loc_A9C848
  loc_A9C7BB: FLdPr Me
  loc_A9C7BE: MemLdI2 global_80
  loc_A9C7C1: CI4UI1
  loc_A9C7C2: CVarI4
  loc_A9C7C6: PopAdLdVar
  loc_A9C7C7: LitVarI4
  loc_A9C7CF: PopAdLdVar
  loc_A9C7D0: FLdPr Me
  loc_A9C7D3: VCallAd Control_ID_FlexAjustes
  loc_A9C7D6: FStAdFunc var_88
  loc_A9C7D9: FLdPr var_88
  loc_A9C7DC: LateIdCallLdVar
  loc_A9C7E6: CStrVarTmp
  loc_A9C7E7: CVarStr var_F0
  loc_A9C7EA: ImpAdCallI2 IsNumeric()
  loc_A9C7EF: FFree1Ad var_88
  loc_A9C7F2: FFreeVar var_98 = ""
  loc_A9C7F9: BranchF loc_A9C848
  loc_A9C7FC: FLdPr Me
  loc_A9C7FF: MemLdI2 global_80
  loc_A9C802: CI4UI1
  loc_A9C803: CVarI4
  loc_A9C807: PopAdLdVar
  loc_A9C808: LitVarI4
  loc_A9C810: PopAdLdVar
  loc_A9C811: FLdPr Me
  loc_A9C814: VCallAd Control_ID_FlexAjustes
  loc_A9C817: FStAdFunc var_88
  loc_A9C81A: FLdPr var_88
  loc_A9C81D: LateIdCallLdVar
  loc_A9C827: PopAd
  loc_A9C829: FLdPr Me
  loc_A9C82C: MemLdFPR8 global_64
  loc_A9C82F: FLdRfVar var_98
  loc_A9C832: CStrVarTmp
  loc_A9C833: FStStrNoPop var_F4
  loc_A9C836: CR8Str
  loc_A9C838: AddR8
  loc_A9C839: FLdPr Me
  loc_A9C83C: MemStFPR8 global_64
  loc_A9C83F: FFree1Str var_F4
  loc_A9C842: FFree1Ad var_88
  loc_A9C845: FFree1Var var_98 = ""
  loc_A9C848: FLdPr Me
  loc_A9C84B: MemLdI2 global_80
  loc_A9C84E: CI4UI1
  loc_A9C84F: CVarI4
  loc_A9C853: PopAdLdVar
  loc_A9C854: LitVarI4
  loc_A9C85C: PopAdLdVar
  loc_A9C85D: FLdPr Me
  loc_A9C860: VCallAd Control_ID_FlexAjustes
  loc_A9C863: FStAdFunc var_88
  loc_A9C866: FLdPr var_88
  loc_A9C869: LateIdCallLdVar
  loc_A9C873: CStrVarTmp
  loc_A9C874: CVarStr var_F0
  loc_A9C877: ImpAdCallI2 IsNumeric()
  loc_A9C87C: FFree1Ad var_88
  loc_A9C87F: FFreeVar var_98 = ""
  loc_A9C886: BranchF loc_A9C916
  loc_A9C889: FLdPr Me
  loc_A9C88C: MemLdI2 global_80
  loc_A9C88F: CI4UI1
  loc_A9C890: CVarI4
  loc_A9C894: PopAdLdVar
  loc_A9C895: LitVarI4
  loc_A9C89D: PopAdLdVar
  loc_A9C89E: FLdPr Me
  loc_A9C8A1: VCallAd Control_ID_FlexAjustes
  loc_A9C8A4: FStAdFunc var_88
  loc_A9C8A7: FLdPr var_88
  loc_A9C8AA: LateIdCallLdVar
  loc_A9C8B4: CStrVarTmp
  loc_A9C8B5: CVarStr var_F0
  loc_A9C8B8: ImpAdCallI2 IsNumeric()
  loc_A9C8BD: FFree1Ad var_88
  loc_A9C8C0: FFreeVar var_98 = ""
  loc_A9C8C7: BranchF loc_A9C916
  loc_A9C8CA: FLdPr Me
  loc_A9C8CD: MemLdI2 global_80
  loc_A9C8D0: CI4UI1
  loc_A9C8D1: CVarI4
  loc_A9C8D5: PopAdLdVar
  loc_A9C8D6: LitVarI4
  loc_A9C8DE: PopAdLdVar
  loc_A9C8DF: FLdPr Me
  loc_A9C8E2: VCallAd Control_ID_FlexAjustes
  loc_A9C8E5: FStAdFunc var_88
  loc_A9C8E8: FLdPr var_88
  loc_A9C8EB: LateIdCallLdVar
  loc_A9C8F5: PopAd
  loc_A9C8F7: FLdPr Me
  loc_A9C8FA: MemLdFPR8 global_72
  loc_A9C8FD: FLdRfVar var_98
  loc_A9C900: CStrVarTmp
  loc_A9C901: FStStrNoPop var_F4
  loc_A9C904: CR8Str
  loc_A9C906: AddR8
  loc_A9C907: FLdPr Me
  loc_A9C90A: MemStFPR8 global_72
  loc_A9C90D: FFree1Str var_F4
  loc_A9C910: FFree1Ad var_88
  loc_A9C913: FFree1Var var_98 = ""
  loc_A9C916: FLdPr Me
  loc_A9C919: MemLdRfVar from_stack_1.global_80
  loc_A9C91C: NextI2 var_C0, loc_A9C77A
  loc_A9C921: FLdPr Me
  loc_A9C924: MemLdFPR8 global_64
  loc_A9C927: CStrR8
  loc_A9C929: FStStrNoPop var_F4
  loc_A9C92C: FLdPr Me
  loc_A9C92F: VCallAd Control_ID_TotaDebeLbl
  loc_A9C932: FStAdFunc var_88
  loc_A9C935: FLdPr var_88
  loc_A9C938: Me.Caption = from_stack_1
  loc_A9C93D: FFree1Str var_F4
  loc_A9C940: FFree1Ad var_88
  loc_A9C943: FLdPr Me
  loc_A9C946: MemLdFPR8 global_72
  loc_A9C949: CStrR8
  loc_A9C94B: FStStrNoPop var_F4
  loc_A9C94E: FLdPr Me
  loc_A9C951: VCallAd Control_ID_TotaHaberLbl
  loc_A9C954: FStAdFunc var_88
  loc_A9C957: FLdPr var_88
  loc_A9C95A: Me.Caption = from_stack_1
  loc_A9C95F: FFree1Str var_F4
  loc_A9C962: FFree1Ad var_88
  loc_A9C965: ExitProcHresult
  loc_A9C966: FLdRfVar var_F8
  loc_A9C969: ImpAdCallI2 Err 'rtcErrObj
  loc_A9C96E: FStAdFunc var_88
  loc_A9C971: FLdPr var_88
  loc_A9C974:  = Err.Number
  loc_A9C979: ILdRf var_F8
  loc_A9C97C: LitI4 &H753F
  loc_A9C981: EqI4
  loc_A9C982: FFree1Ad var_88
  loc_A9C985: BranchF loc_A9CB73
  loc_A9C988: FLdPr Me
  loc_A9C98B: VCallAd Control_ID_FlexAjustes
  loc_A9C98E: FStAdFunc var_FC
  loc_A9C991: FLdPr var_FC
  loc_A9C994: LateIdCall
  loc_A9C99C: LitVarI4
  loc_A9C9A4: PopAdLdVar
  loc_A9C9A5: FLdPr var_FC
  loc_A9C9A8: LateIdSt
  loc_A9C9AD: LitVarI4
  loc_A9C9B5: PopAdLdVar
  loc_A9C9B6: LitVarI4
  loc_A9C9BE: PopAdLdVar
  loc_A9C9BF: LitVarStr var_10C, "Cuenta"
  loc_A9C9C4: PopAdLdVar
  loc_A9C9C5: FLdPr var_FC
  loc_A9C9C8: LateIdCallSt
  loc_A9C9D0: LitVarI4
  loc_A9C9D8: PopAdLdVar
  loc_A9C9D9: LitVarI4
  loc_A9C9E1: PopAdLdVar
  loc_A9C9E2: LitVarStr var_10C, "Detalle"
  loc_A9C9E7: PopAdLdVar
  loc_A9C9E8: FLdPr var_FC
  loc_A9C9EB: LateIdCallSt
  loc_A9C9F3: LitVarI4
  loc_A9C9FB: PopAdLdVar
  loc_A9C9FC: LitVarI4
  loc_A9CA04: PopAdLdVar
  loc_A9CA05: LitVarStr var_10C, "Debe"
  loc_A9CA0A: PopAdLdVar
  loc_A9CA0B: FLdPr var_FC
  loc_A9CA0E: LateIdCallSt
  loc_A9CA16: LitVarI4
  loc_A9CA1E: PopAdLdVar
  loc_A9CA1F: LitVarI4
  loc_A9CA27: PopAdLdVar
  loc_A9CA28: LitVarStr var_10C, "Haber"
  loc_A9CA2D: PopAdLdVar
  loc_A9CA2E: FLdPr var_FC
  loc_A9CA31: LateIdCallSt
  loc_A9CA39: FLdPr var_FC
  loc_A9CA3C: LateIdCall
  loc_A9CA44: LitNothing
  loc_A9CA46: FStAd var_FC 
  loc_A9CA4A: LitVarStr var_A8, vbNullString
  loc_A9CA4F: LitI4 9
  loc_A9CA54: FLdRfVar var_98
  loc_A9CA57: ImpAdCallFPR4  = Chr()
  loc_A9CA5C: FLdRfVar var_98
  loc_A9CA5F: ConcatVar var_F0
  loc_A9CA63: LitVarStr var_B8, " "
  loc_A9CA68: ConcatVar var_12C
  loc_A9CA6C: LitI4 9
  loc_A9CA71: FLdRfVar var_13C
  loc_A9CA74: ImpAdCallFPR4  = Chr()
  loc_A9CA79: FLdRfVar var_13C
  loc_A9CA7C: ConcatVar var_14C
  loc_A9CA80: FLdPr Me
  loc_A9CA83: MemLdStr global_84
  loc_A9CA86: CVarStr var_D0
  loc_A9CA89: ConcatVar var_15C
  loc_A9CA8D: LitI4 9
  loc_A9CA92: FLdRfVar var_16C
  loc_A9CA95: ImpAdCallFPR4  = Chr()
  loc_A9CA9A: FLdRfVar var_16C
  loc_A9CA9D: ConcatVar var_17C
  loc_A9CAA1: FLdPr Me
  loc_A9CAA4: MemLdStr global_88
  loc_A9CAA7: CVarStr var_E0
  loc_A9CAAA: ConcatVar var_18C
  loc_A9CAAE: CStrVarTmp
  loc_A9CAAF: CVarStr var_19C
  loc_A9CAB2: PopAdLdVar
  loc_A9CAB3: FLdPr Me
  loc_A9CAB6: VCallAd Control_ID_FlexAjustes
  loc_A9CAB9: FStAdFunc var_88
  loc_A9CABC: FLdPr var_88
  loc_A9CABF: LateIdCall
  loc_A9CAC7: FFree1Ad var_88
  loc_A9CACA: FFreeVar var_98 = "": var_F0 = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = "": var_18C = ""
  loc_A9CAE1: LitI4 1
  loc_A9CAE6: LitI4 1
  loc_A9CAEB: LitVarStr var_B8, "0.00"
  loc_A9CAF0: FStVarCopyObj var_F0
  loc_A9CAF3: FLdRfVar var_F0
  loc_A9CAF6: LitVarI2 var_98, 0
  loc_A9CAFB: FLdRfVar var_12C
  loc_A9CAFE: ImpAdCallFPR4  = Format(, )
  loc_A9CB03: FLdRfVar var_12C
  loc_A9CB06: CStrVarVal var_F4
  loc_A9CB0A: FLdPr Me
  loc_A9CB0D: VCallAd Control_ID_TotaDebeLbl
  loc_A9CB10: FStAdFunc var_88
  loc_A9CB13: FLdPr var_88
  loc_A9CB16: Me.Caption = from_stack_1
  loc_A9CB1B: FFree1Str var_F4
  loc_A9CB1E: FFree1Ad var_88
  loc_A9CB21: FFreeVar var_98 = "": var_F0 = ""
  loc_A9CB2A: LitI4 1
  loc_A9CB2F: LitI4 1
  loc_A9CB34: LitVarStr var_B8, "0.00"
  loc_A9CB39: FStVarCopyObj var_F0
  loc_A9CB3C: FLdRfVar var_F0
  loc_A9CB3F: LitVarI2 var_98, 0
  loc_A9CB44: FLdRfVar var_12C
  loc_A9CB47: ImpAdCallFPR4  = Format(, )
  loc_A9CB4C: FLdRfVar var_12C
  loc_A9CB4F: CStrVarVal var_F4
  loc_A9CB53: FLdPr Me
  loc_A9CB56: VCallAd Control_ID_TotaHaberLbl
  loc_A9CB59: FStAdFunc var_88
  loc_A9CB5C: FLdPr var_88
  loc_A9CB5F: Me.Caption = from_stack_1
  loc_A9CB64: FFree1Str var_F4
  loc_A9CB67: FFree1Ad var_88
  loc_A9CB6A: FFreeVar var_98 = "": var_F0 = ""
  loc_A9CB73: ExitProcHresult
End Sub

Private Sub FlexAjustes_KeyPress(KeyAscii As Integer) 'AC76B8
  'Data Table: 437E6C
  loc_AC70CC: ILdI2 KeyAscii
  loc_AC70CF: LitI2_Byte &HD
  loc_AC70D1: EqI2
  loc_AC70D2: BranchF loc_AC7292
  loc_AC70D5: FLdPr Me
  loc_AC70D8: VCallAd Control_ID_FlexAjustes
  loc_AC70DB: FStAdFunc var_88
  loc_AC70DE: FLdPr var_88
  loc_AC70E1: LateIdLdVar var_98 DispID_11 0
  loc_AC70E8: CI4Var
  loc_AC70EA: LitI4 3
  loc_AC70EF: LtI4
  loc_AC70F0: FFree1Ad var_88
  loc_AC70F3: FFree1Var var_98 = ""
  loc_AC70F6: BranchF loc_AC714E
  loc_AC70F9: FLdPr Me
  loc_AC70FC: VCallAd Control_ID_FlexAjustes
  loc_AC70FF: FStAdFunc var_88
  loc_AC7102: FLdPr var_88
  loc_AC7105: LateIdLdVar var_98 DispID_11 0
  loc_AC710C: CI4Var
  loc_AC710E: LitI4 1
  loc_AC7113: AddI4
  loc_AC7114: CVarI4
  loc_AC7118: PopAdLdVar
  loc_AC7119: FLdPr Me
  loc_AC711C: VCallAd Control_ID_FlexAjustes
  loc_AC711F: FStAdFunc var_BC
  loc_AC7122: FLdPr var_BC
  loc_AC7125: LateIdSt
  loc_AC712A: FFreeAd var_88 = ""
  loc_AC7131: FFree1Var var_98 = ""
  loc_AC7134: FLdPr Me
  loc_AC7137: VCallAd Control_ID_FlexAjustes
  loc_AC713A: FStAdFunc var_88
  loc_AC713D: FLdPr var_88
  loc_AC7140: LateIdCall
  loc_AC7148: FFree1Ad var_88
  loc_AC714B: Branch loc_AC728F
  loc_AC714E: LitVarStr var_A8, vbNullString
  loc_AC7153: LitI4 9
  loc_AC7158: FLdRfVar var_98
  loc_AC715B: ImpAdCallFPR4  = Chr()
  loc_AC7160: FLdRfVar var_98
  loc_AC7163: ConcatVar var_CC
  loc_AC7167: LitVarStr var_B8, " "
  loc_AC716C: ConcatVar var_DC
  loc_AC7170: LitI4 9
  loc_AC7175: FLdRfVar var_EC
  loc_AC7178: ImpAdCallFPR4  = Chr()
  loc_AC717D: FLdRfVar var_EC
  loc_AC7180: ConcatVar var_FC
  loc_AC7184: FLdPr Me
  loc_AC7187: MemLdStr global_84
  loc_AC718A: CVarStr var_10C
  loc_AC718D: ConcatVar var_11C
  loc_AC7191: LitI4 9
  loc_AC7196: FLdRfVar var_12C
  loc_AC7199: ImpAdCallFPR4  = Chr()
  loc_AC719E: FLdRfVar var_12C
  loc_AC71A1: ConcatVar var_13C
  loc_AC71A5: FLdPr Me
  loc_AC71A8: MemLdStr global_88
  loc_AC71AB: CVarStr var_14C
  loc_AC71AE: ConcatVar var_15C
  loc_AC71B2: CStrVarTmp
  loc_AC71B3: CVarStr var_16C
  loc_AC71B6: PopAdLdVar
  loc_AC71B7: FLdPr Me
  loc_AC71BA: VCallAd Control_ID_FlexAjustes
  loc_AC71BD: FStAdFunc var_88
  loc_AC71C0: FLdPr var_88
  loc_AC71C3: LateIdCall
  loc_AC71CB: FFree1Ad var_88
  loc_AC71CE: FFreeVar var_98 = "": var_CC = "": var_DC = "": var_EC = "": var_FC = "": var_11C = "": var_12C = "": var_13C = "": var_15C = ""
  loc_AC71E5: FLdPr Me
  loc_AC71E8: VCallAd Control_ID_FlexAjustes
  loc_AC71EB: FStAdFunc var_88
  loc_AC71EE: FLdPr var_88
  loc_AC71F1: LateIdLdVar var_98 DispID_10 0
  loc_AC71F8: CI4Var
  loc_AC71FA: LitI4 1
  loc_AC71FF: AddI4
  loc_AC7200: CVarI4
  loc_AC7204: PopAdLdVar
  loc_AC7205: FLdPr Me
  loc_AC7208: VCallAd Control_ID_FlexAjustes
  loc_AC720B: FStAdFunc var_BC
  loc_AC720E: FLdPr var_BC
  loc_AC7211: LateIdSt
  loc_AC7216: FFreeAd var_88 = ""
  loc_AC721D: FFree1Var var_98 = ""
  loc_AC7220: LitVarI4
  loc_AC7228: PopAdLdVar
  loc_AC7229: FLdPr Me
  loc_AC722C: VCallAd Control_ID_FlexAjustes
  loc_AC722F: FStAdFunc var_88
  loc_AC7232: FLdPr var_88
  loc_AC7235: LateIdSt
  loc_AC723A: FFree1Ad var_88
  loc_AC723D: FLdPr Me
  loc_AC7240: VCallAd Control_ID_FlexAjustes
  loc_AC7243: FStAdFunc var_88
  loc_AC7246: FLdPr var_88
  loc_AC7249: LateIdLdVar var_98 DispID_8 0
  loc_AC7250: CI4Var
  loc_AC7252: LitI4 1
  loc_AC7257: AddI4
  loc_AC7258: CVarI4
  loc_AC725C: PopAdLdVar
  loc_AC725D: FLdPr Me
  loc_AC7260: VCallAd Control_ID_FlexAjustes
  loc_AC7263: FStAdFunc var_BC
  loc_AC7266: FLdPr var_BC
  loc_AC7269: LateIdSt
  loc_AC726E: FFreeAd var_88 = ""
  loc_AC7275: FFree1Var var_98 = ""
  loc_AC7278: FLdPr Me
  loc_AC727B: VCallAd Control_ID_FlexAjustes
  loc_AC727E: FStAdFunc var_88
  loc_AC7281: FLdPr var_88
  loc_AC7284: LateIdCall
  loc_AC728C: FFree1Ad var_88
  loc_AC728F: Branch loc_AC76B5
  loc_AC7292: ILdI2 KeyAscii
  loc_AC7295: LitI2_Byte &H20
  loc_AC7297: EqI2
  loc_AC7298: BranchF loc_AC7394
  loc_AC729B: FLdPr Me
  loc_AC729E: VCallAd Control_ID_FlexAjustes
  loc_AC72A1: FStAdFunc var_88
  loc_AC72A4: FLdPr var_88
  loc_AC72A7: LateIdLdVar var_98 DispID_11 0
  loc_AC72AE: CI4Var
  loc_AC72B0: LitI4 0
  loc_AC72B5: EqI4
  loc_AC72B6: FFree1Ad var_88
  loc_AC72B9: FFree1Var var_98 = ""
  loc_AC72BC: BranchF loc_AC7391
  loc_AC72BF: LitVar_Missing var_B8
  loc_AC72C2: PopAdLdVar
  loc_AC72C3: LitVarI4
  loc_AC72CB: PopAdLdVar
  loc_AC72CC: ImpAdLdRf MemVar_C3D6C0
  loc_AC72CF: NewIfNullPr bscCuentaContable
  loc_AC72D2: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_AC72D7: FLdRfVar var_180
  loc_AC72DA: FLdRfVar var_88
  loc_AC72DD: ImpAdLdRf MemVar_C3D6C0
  loc_AC72E0: NewIfNullPr bscCuentaContable
  loc_AC72E3: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_AC72E8: FLdPr var_88
  loc_AC72EB: from_stack_1 = clsbase.RecordCount
  loc_AC72F0: ILdRf var_180
  loc_AC72F3: LitI4 0
  loc_AC72F8: GtI4
  loc_AC72F9: FFree1Ad var_88
  loc_AC72FC: BranchF loc_AC736C
  loc_AC72FF: FLdRfVar var_98
  loc_AC7302: FLdRfVar var_188
  loc_AC7305: LitVarStr var_A8, "CodiCuco"
  loc_AC730A: PopAdLdVar
  loc_AC730B: FLdRfVar var_184
  loc_AC730E: FLdRfVar var_BC
  loc_AC7311: FLdRfVar var_88
  loc_AC7314: ImpAdLdRf MemVar_C3D6C0
  loc_AC7317: NewIfNullPr bscCuentaContable
  loc_AC731A: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_AC731F: FLdPr var_88
  loc_AC7322: from_stack_1v = clsbase.RsFrmGet()
  loc_AC7327: FLdPr var_BC
  loc_AC732A:  = Me.Fields
  loc_AC732F: FLdPr var_184
  loc_AC7332: from_stack_2 = Me.Item(from_stack_1)
  loc_AC7337: FLdPr var_188
  loc_AC733A:  = Me.Value
  loc_AC733F: FLdRfVar var_98
  loc_AC7342: CStrVarTmp
  loc_AC7343: CVarStr var_CC
  loc_AC7346: PopAdLdVar
  loc_AC7347: FLdPr Me
  loc_AC734A: VCallAd Control_ID_FlexAjustes
  loc_AC734D: FStAdFunc var_18C
  loc_AC7350: FLdPr var_18C
  loc_AC7353: LateIdSt
  loc_AC7358: FFreeAd var_88 = "": var_BC = "": var_184 = "": var_188 = ""
  loc_AC7365: FFreeVar var_98 = ""
  loc_AC736C: FLdPr Me
  loc_AC736F: VCallAd Control_ID_FlexAjustes
  loc_AC7372: FStAdFunc var_88
  loc_AC7375: FLdPr var_88
  loc_AC7378: LateIdLdVar var_98 DispID_0 0
  loc_AC737F: CStrVarTmp
  loc_AC7380: FStStrNoPop var_190
  loc_AC7383: Call Proc_289_14_B28F88()
  loc_AC7388: FFree1Str var_190
  loc_AC738B: FFree1Ad var_88
  loc_AC738E: FFree1Var var_98 = ""
  loc_AC7391: Branch loc_AC76B5
  loc_AC7394: ILdI2 KeyAscii
  loc_AC7397: LitI2_Byte 8
  loc_AC7399: EqI2
  loc_AC739A: BranchF loc_AC7477
  loc_AC739D: FLdPr Me
  loc_AC73A0: VCallAd Control_ID_FlexAjustes
  loc_AC73A3: FStAdFunc var_88
  loc_AC73A6: FLdPr var_88
  loc_AC73A9: LateIdLdVar var_98 DispID_11 0
  loc_AC73B0: CI4Var
  loc_AC73B2: FStR4 var_194
  loc_AC73B5: FFree1Ad var_88
  loc_AC73B8: FFree1Var var_98 = ""
  loc_AC73BB: ILdRf var_194
  loc_AC73BE: LitI4 0
  loc_AC73C3: EqI4
  loc_AC73C4: BranchT loc_AC73DF
  loc_AC73C7: ILdRf var_194
  loc_AC73CA: LitI4 2
  loc_AC73CF: EqI4
  loc_AC73D0: BranchT loc_AC73DF
  loc_AC73D3: ILdRf var_194
  loc_AC73D6: LitI4 3
  loc_AC73DB: EqI4
  loc_AC73DC: BranchF loc_AC7474
  loc_AC73DF: FLdPr Me
  loc_AC73E2: VCallAd Control_ID_FlexAjustes
  loc_AC73E5: FStAdFunc var_88
  loc_AC73E8: FLdPr var_88
  loc_AC73EB: LateIdLdVar var_98 DispID_0 0
  loc_AC73F2: CStrVarTmp
  loc_AC73F3: FStStrNoPop var_190
  loc_AC73F6: LitStr vbNullString
  loc_AC73F9: NeStr
  loc_AC73FB: FFree1Str var_190
  loc_AC73FE: FFree1Ad var_88
  loc_AC7401: FFree1Var var_98 = ""
  loc_AC7404: BranchF loc_AC7474
  loc_AC7407: FLdPr Me
  loc_AC740A: VCallAd Control_ID_FlexAjustes
  loc_AC740D: FStAdFunc var_88
  loc_AC7410: FLdPr var_88
  loc_AC7413: LateIdLdVar var_98 DispID_0 0
  loc_AC741A: PopAd
  loc_AC741C: FLdPr Me
  loc_AC741F: VCallAd Control_ID_FlexAjustes
  loc_AC7422: FStAdFunc var_BC
  loc_AC7425: FLdPr var_BC
  loc_AC7428: LateIdLdVar var_CC DispID_0 0
  loc_AC742F: CStrVarTmp
  loc_AC7430: FStStrNoPop var_190
  loc_AC7433: FnLenStr
  loc_AC7434: LitI4 1
  loc_AC7439: SubI4
  loc_AC743A: FLdRfVar var_98
  loc_AC743D: CStrVarTmp
  loc_AC743E: FStStrNoPop var_198
  loc_AC7441: ImpAdCallI2 Left$(, )
  loc_AC7446: CVarStr var_DC
  loc_AC7449: PopAdLdVar
  loc_AC744A: FLdPr Me
  loc_AC744D: VCallAd Control_ID_FlexAjustes
  loc_AC7450: FStAdFunc var_184
  loc_AC7453: FLdPr var_184
  loc_AC7456: LateIdSt
  loc_AC745B: FFreeStr var_190 = ""
  loc_AC7462: FFreeAd var_88 = "": var_BC = ""
  loc_AC746B: FFreeVar var_98 = "": var_CC = ""
  loc_AC7474: Branch loc_AC76B5
  loc_AC7477: FLdPr Me
  loc_AC747A: VCallAd Control_ID_FlexAjustes
  loc_AC747D: FStAdFunc var_88
  loc_AC7480: FLdPr var_88
  loc_AC7483: LateIdLdVar var_98 DispID_11 0
  loc_AC748A: CI4Var
  loc_AC748C: FStR4 var_19C
  loc_AC748F: FFree1Ad var_88
  loc_AC7492: FFree1Var var_98 = ""
  loc_AC7495: ILdRf var_19C
  loc_AC7498: LitI4 0
  loc_AC749D: EqI4
  loc_AC749E: BranchF loc_AC753C
  loc_AC74A1: LitStr "1234567890"
  loc_AC74A4: FStStrCopy var_190
  loc_AC74A7: FLdRfVar var_190
  loc_AC74AA: ILdRf KeyAscii
  loc_AC74AD: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AC74B2: IStI2 KeyAscii
  loc_AC74B5: FFree1Str var_190
  loc_AC74B8: FLdPr Me
  loc_AC74BB: VCallAd Control_ID_FlexAjustes
  loc_AC74BE: FStAdFunc var_88
  loc_AC74C1: FLdPr var_88
  loc_AC74C4: LateIdLdVar var_98 DispID_0 0
  loc_AC74CB: CStrVarTmp
  loc_AC74CC: FStStrNoPop var_190
  loc_AC74CF: FnLenStr
  loc_AC74D0: LitI2_Byte &HA
  loc_AC74D2: CI2UI1
  loc_AC74D4: LitI2_Byte 1
  loc_AC74D6: SubI2
  loc_AC74D7: CI4UI1
  loc_AC74D8: LeI4
  loc_AC74D9: FFree1Str var_190
  loc_AC74DC: FFree1Ad var_88
  loc_AC74DF: FFree1Var var_98 = ""
  loc_AC74E2: BranchF loc_AC7539
  loc_AC74E5: FLdPr Me
  loc_AC74E8: VCallAd Control_ID_FlexAjustes
  loc_AC74EB: FStAdFunc var_88
  loc_AC74EE: FLdPr var_88
  loc_AC74F1: LateIdLdVar var_98 DispID_0 0
  loc_AC74F8: CStrVarTmp
  loc_AC74F9: CVarStr var_DC
  loc_AC74FC: ILdI2 KeyAscii
  loc_AC74FF: CI4UI1
  loc_AC7500: FLdRfVar var_CC
  loc_AC7503: ImpAdCallFPR4  = Chr()
  loc_AC7508: FLdRfVar var_CC
  loc_AC750B: AddVar var_EC
  loc_AC750F: CStrVarTmp
  loc_AC7510: CVarStr var_FC
  loc_AC7513: PopAdLdVar
  loc_AC7514: FLdPr Me
  loc_AC7517: VCallAd Control_ID_FlexAjustes
  loc_AC751A: FStAdFunc var_BC
  loc_AC751D: FLdPr var_BC
  loc_AC7520: LateIdSt
  loc_AC7525: FFreeAd var_88 = ""
  loc_AC752C: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AC7539: Branch loc_AC76B5
  loc_AC753C: ILdRf var_19C
  loc_AC753F: LitI4 2
  loc_AC7544: EqI4
  loc_AC7545: BranchF loc_AC75FA
  loc_AC7548: ILdI2 KeyAscii
  loc_AC754B: LitStr "."
  loc_AC754E: ImpAdCallI2 Asc()
  loc_AC7553: EqI2
  loc_AC7554: BranchF loc_AC7562
  loc_AC7557: LitStr ","
  loc_AC755A: ImpAdCallI2 Asc()
  loc_AC755F: IStI2 KeyAscii
  loc_AC7562: LitStr "1234567890,"
  loc_AC7565: FStStrCopy var_190
  loc_AC7568: FLdRfVar var_190
  loc_AC756B: ILdRf KeyAscii
  loc_AC756E: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AC7573: IStI2 KeyAscii
  loc_AC7576: FFree1Str var_190
  loc_AC7579: FLdPr Me
  loc_AC757C: VCallAd Control_ID_FlexAjustes
  loc_AC757F: FStAdFunc var_88
  loc_AC7582: FLdPr var_88
  loc_AC7585: LateIdLdVar var_98 DispID_0 0
  loc_AC758C: CStrVarTmp
  loc_AC758D: FStStrNoPop var_190
  loc_AC7590: FnLenStr
  loc_AC7591: LitI4 &HC
  loc_AC7596: LeI4
  loc_AC7597: FFree1Str var_190
  loc_AC759A: FFree1Ad var_88
  loc_AC759D: FFree1Var var_98 = ""
  loc_AC75A0: BranchF loc_AC75F7
  loc_AC75A3: FLdPr Me
  loc_AC75A6: VCallAd Control_ID_FlexAjustes
  loc_AC75A9: FStAdFunc var_88
  loc_AC75AC: FLdPr var_88
  loc_AC75AF: LateIdLdVar var_98 DispID_0 0
  loc_AC75B6: CStrVarTmp
  loc_AC75B7: CVarStr var_DC
  loc_AC75BA: ILdI2 KeyAscii
  loc_AC75BD: CI4UI1
  loc_AC75BE: FLdRfVar var_CC
  loc_AC75C1: ImpAdCallFPR4  = Chr()
  loc_AC75C6: FLdRfVar var_CC
  loc_AC75C9: AddVar var_EC
  loc_AC75CD: CStrVarTmp
  loc_AC75CE: CVarStr var_FC
  loc_AC75D1: PopAdLdVar
  loc_AC75D2: FLdPr Me
  loc_AC75D5: VCallAd Control_ID_FlexAjustes
  loc_AC75D8: FStAdFunc var_BC
  loc_AC75DB: FLdPr var_BC
  loc_AC75DE: LateIdSt
  loc_AC75E3: FFreeAd var_88 = ""
  loc_AC75EA: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AC75F7: Branch loc_AC76B5
  loc_AC75FA: ILdRf var_19C
  loc_AC75FD: LitI4 3
  loc_AC7602: EqI4
  loc_AC7603: BranchF loc_AC76B5
  loc_AC7606: ILdI2 KeyAscii
  loc_AC7609: LitStr "."
  loc_AC760C: ImpAdCallI2 Asc()
  loc_AC7611: EqI2
  loc_AC7612: BranchF loc_AC7620
  loc_AC7615: LitStr ","
  loc_AC7618: ImpAdCallI2 Asc()
  loc_AC761D: IStI2 KeyAscii
  loc_AC7620: LitStr "1234567890,"
  loc_AC7623: FStStrCopy var_190
  loc_AC7626: FLdRfVar var_190
  loc_AC7629: ILdRf KeyAscii
  loc_AC762C: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_AC7631: IStI2 KeyAscii
  loc_AC7634: FFree1Str var_190
  loc_AC7637: FLdPr Me
  loc_AC763A: VCallAd Control_ID_FlexAjustes
  loc_AC763D: FStAdFunc var_88
  loc_AC7640: FLdPr var_88
  loc_AC7643: LateIdLdVar var_98 DispID_0 0
  loc_AC764A: CStrVarTmp
  loc_AC764B: FStStrNoPop var_190
  loc_AC764E: FnLenStr
  loc_AC764F: LitI4 &HC
  loc_AC7654: LeI4
  loc_AC7655: FFree1Str var_190
  loc_AC7658: FFree1Ad var_88
  loc_AC765B: FFree1Var var_98 = ""
  loc_AC765E: BranchF loc_AC76B5
  loc_AC7661: FLdPr Me
  loc_AC7664: VCallAd Control_ID_FlexAjustes
  loc_AC7667: FStAdFunc var_88
  loc_AC766A: FLdPr var_88
  loc_AC766D: LateIdLdVar var_98 DispID_0 0
  loc_AC7674: CStrVarTmp
  loc_AC7675: CVarStr var_DC
  loc_AC7678: ILdI2 KeyAscii
  loc_AC767B: CI4UI1
  loc_AC767C: FLdRfVar var_CC
  loc_AC767F: ImpAdCallFPR4  = Chr()
  loc_AC7684: FLdRfVar var_CC
  loc_AC7687: AddVar var_EC
  loc_AC768B: CStrVarTmp
  loc_AC768C: CVarStr var_FC
  loc_AC768F: PopAdLdVar
  loc_AC7690: FLdPr Me
  loc_AC7693: VCallAd Control_ID_FlexAjustes
  loc_AC7696: FStAdFunc var_BC
  loc_AC7699: FLdPr var_BC
  loc_AC769C: LateIdSt
  loc_AC76A1: FFreeAd var_88 = ""
  loc_AC76A8: FFreeVar var_98 = "": var_DC = "": var_CC = "": var_EC = ""
  loc_AC76B5: ExitProcHresult
End Sub

Private Sub FlexAjustes_LeaveCell() 'AC5710
  'Data Table: 437E6C
  loc_AC510C: LitI2_Byte 0
  loc_AC510E: CR8I2
  loc_AC510F: FLdPr Me
  loc_AC5112: MemStFPR8 global_64
  loc_AC5115: LitI2_Byte 0
  loc_AC5117: CR8I2
  loc_AC5118: FLdPr Me
  loc_AC511B: MemStFPR8 global_72
  loc_AC511E: FLdPr Me
  loc_AC5121: VCallAd Control_ID_FlexAjustes
  loc_AC5124: FStAdFunc var_88
  loc_AC5127: FLdPr var_88
  loc_AC512A: LateIdLdVar var_98 DispID_10 0
  loc_AC5131: CI4Var
  loc_AC5133: LitI4 0
  loc_AC5138: GtI4
  loc_AC5139: FFree1Ad var_88
  loc_AC513C: FFree1Var var_98 = ""
  loc_AC513F: BranchF loc_AC56CA
  loc_AC5142: FLdPr Me
  loc_AC5145: VCallAd Control_ID_FlexAjustes
  loc_AC5148: FStAdFunc var_88
  loc_AC514B: FLdPr var_88
  loc_AC514E: LateIdLdVar var_98 DispID_10 0
  loc_AC5155: CI4Var
  loc_AC5157: CVarI4
  loc_AC515B: PopAdLdVar
  loc_AC515C: LitVarI4
  loc_AC5164: PopAdLdVar
  loc_AC5165: FLdPr Me
  loc_AC5168: VCallAd Control_ID_FlexAjustes
  loc_AC516B: FStAdFunc var_DC
  loc_AC516E: FLdPr var_DC
  loc_AC5171: LateIdCallLdVar
  loc_AC517B: CStrVarTmp
  loc_AC517C: FStStrNoPop var_F0
  loc_AC517F: LitStr vbNullString
  loc_AC5182: NeStr
  loc_AC5184: FFree1Str var_F0
  loc_AC5187: FFreeAd var_88 = ""
  loc_AC518E: FFreeVar var_98 = ""
  loc_AC5195: BranchF loc_AC5256
  loc_AC5198: FLdPr Me
  loc_AC519B: VCallAd Control_ID_FlexAjustes
  loc_AC519E: FStAdFunc var_88
  loc_AC51A1: FLdPr var_88
  loc_AC51A4: LateIdLdVar var_98 DispID_11 0
  loc_AC51AB: CI4Var
  loc_AC51AD: LitI4 0
  loc_AC51B2: EqI4
  loc_AC51B3: FFree1Ad var_88
  loc_AC51B6: FFree1Var var_98 = ""
  loc_AC51B9: BranchF loc_AC5253
  loc_AC51BC: FLdPr Me
  loc_AC51BF: VCallAd Control_ID_FlexAjustes
  loc_AC51C2: FStAdFunc var_88
  loc_AC51C5: FLdPr var_88
  loc_AC51C8: LateIdLdVar var_98 DispID_0 0
  loc_AC51CF: CStrVarTmp
  loc_AC51D0: FStStrNoPop var_F0
  loc_AC51D3: LitStr vbNullString
  loc_AC51D6: NeStr
  loc_AC51D8: FFree1Str var_F0
  loc_AC51DB: FFree1Ad var_88
  loc_AC51DE: FFree1Var var_98 = ""
  loc_AC51E1: BranchF loc_AC520C
  loc_AC51E4: FLdPr Me
  loc_AC51E7: VCallAd Control_ID_FlexAjustes
  loc_AC51EA: FStAdFunc var_88
  loc_AC51ED: FLdPr var_88
  loc_AC51F0: LateIdLdVar var_98 DispID_0 0
  loc_AC51F7: CStrVarTmp
  loc_AC51F8: FStStrNoPop var_F0
  loc_AC51FB: Call Proc_289_14_B28F88()
  loc_AC5200: FFree1Str var_F0
  loc_AC5203: FFree1Ad var_88
  loc_AC5206: FFree1Var var_98 = ""
  loc_AC5209: Branch loc_AC5253
  loc_AC520C: FLdPr Me
  loc_AC520F: VCallAd Control_ID_FlexAjustes
  loc_AC5212: FStAdFunc var_88
  loc_AC5215: FLdPr var_88
  loc_AC5218: LateIdLdVar var_98 DispID_10 0
  loc_AC521F: CI4Var
  loc_AC5221: CVarI4
  loc_AC5225: PopAdLdVar
  loc_AC5226: LitVarI4
  loc_AC522E: PopAdLdVar
  loc_AC522F: LitVarStr var_100, vbNullString
  loc_AC5234: PopAdLdVar
  loc_AC5235: FLdPr Me
  loc_AC5238: VCallAd Control_ID_FlexAjustes
  loc_AC523B: FStAdFunc var_DC
  loc_AC523E: FLdPr var_DC
  loc_AC5241: LateIdCallSt
  loc_AC5249: FFreeAd var_88 = ""
  loc_AC5250: FFree1Var var_98 = ""
  loc_AC5253: Branch loc_AC529D
  loc_AC5256: FLdPr Me
  loc_AC5259: VCallAd Control_ID_FlexAjustes
  loc_AC525C: FStAdFunc var_88
  loc_AC525F: FLdPr var_88
  loc_AC5262: LateIdLdVar var_98 DispID_10 0
  loc_AC5269: CI4Var
  loc_AC526B: CVarI4
  loc_AC526F: PopAdLdVar
  loc_AC5270: LitVarI4
  loc_AC5278: PopAdLdVar
  loc_AC5279: LitVarStr var_100, vbNullString
  loc_AC527E: PopAdLdVar
  loc_AC527F: FLdPr Me
  loc_AC5282: VCallAd Control_ID_FlexAjustes
  loc_AC5285: FStAdFunc var_DC
  loc_AC5288: FLdPr var_DC
  loc_AC528B: LateIdCallSt
  loc_AC5293: FFreeAd var_88 = ""
  loc_AC529A: FFree1Var var_98 = ""
  loc_AC529D: FLdPr Me
  loc_AC52A0: VCallAd Control_ID_FlexAjustes
  loc_AC52A3: FStAdFunc var_88
  loc_AC52A6: FLdPr var_88
  loc_AC52A9: LateIdLdVar var_98 DispID_10 0
  loc_AC52B0: CI4Var
  loc_AC52B2: CVarI4
  loc_AC52B6: PopAdLdVar
  loc_AC52B7: LitVarI4
  loc_AC52BF: PopAdLdVar
  loc_AC52C0: FLdPr Me
  loc_AC52C3: VCallAd Control_ID_FlexAjustes
  loc_AC52C6: FStAdFunc var_DC
  loc_AC52C9: FLdPr var_DC
  loc_AC52CC: LateIdCallLdVar
  loc_AC52D6: CStrVarTmp
  loc_AC52D7: FStStrNoPop var_F0
  loc_AC52DA: LitStr vbNullString
  loc_AC52DD: NeStr
  loc_AC52DF: FFree1Str var_F0
  loc_AC52E2: FFreeAd var_88 = ""
  loc_AC52E9: FFreeVar var_98 = ""
  loc_AC52F0: BranchF loc_AC53C8
  loc_AC52F3: FLdPr Me
  loc_AC52F6: VCallAd Control_ID_FlexAjustes
  loc_AC52F9: FStAdFunc var_88
  loc_AC52FC: FLdPr var_88
  loc_AC52FF: LateIdLdVar var_98 DispID_11 0
  loc_AC5306: CI4Var
  loc_AC5308: LitI4 2
  loc_AC530D: EqI4
  loc_AC530E: FFree1Ad var_88
  loc_AC5311: FFree1Var var_98 = ""
  loc_AC5314: BranchF loc_AC53C8
  loc_AC5317: FLdPr Me
  loc_AC531A: VCallAd Control_ID_FlexAjustes
  loc_AC531D: FStAdFunc var_88
  loc_AC5320: FLdPr var_88
  loc_AC5323: LateIdLdVar var_98 DispID_0 0
  loc_AC532A: PopAd
  loc_AC532C: LitI4 1
  loc_AC5331: LitI4 1
  loc_AC5336: LitVarStr var_A8, "0.00"
  loc_AC533B: FStVarCopyObj var_120
  loc_AC533E: FLdRfVar var_120
  loc_AC5341: FLdRfVar var_98
  loc_AC5344: CStrVarTmp
  loc_AC5345: CVarStr var_EC
  loc_AC5348: FLdRfVar var_130
  loc_AC534B: ImpAdCallFPR4  = Format(, )
  loc_AC5350: FLdRfVar var_130
  loc_AC5353: CStrVarTmp
  loc_AC5354: CVarStr var_140
  loc_AC5357: PopAdLdVar
  loc_AC5358: FLdPr Me
  loc_AC535B: VCallAd Control_ID_FlexAjustes
  loc_AC535E: FStAdFunc var_DC
  loc_AC5361: FLdPr var_DC
  loc_AC5364: LateIdSt
  loc_AC5369: FFreeAd var_88 = ""
  loc_AC5370: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC537D: FLdPr Me
  loc_AC5380: VCallAd Control_ID_FlexAjustes
  loc_AC5383: FStAdFunc var_88
  loc_AC5386: FLdPr var_88
  loc_AC5389: LateIdLdVar var_98 DispID_10 0
  loc_AC5390: CI4Var
  loc_AC5392: CVarI4
  loc_AC5396: PopAdLdVar
  loc_AC5397: LitVarI4
  loc_AC539F: PopAdLdVar
  loc_AC53A0: FLdPr Me
  loc_AC53A3: MemLdRfVar from_stack_1.global_88
  loc_AC53A6: CDargRef
  loc_AC53AA: FLdPr Me
  loc_AC53AD: VCallAd Control_ID_FlexAjustes
  loc_AC53B0: FStAdFunc var_DC
  loc_AC53B3: FLdPr var_DC
  loc_AC53B6: LateIdCallSt
  loc_AC53BE: FFreeAd var_88 = ""
  loc_AC53C5: FFree1Var var_98 = ""
  loc_AC53C8: FLdPr Me
  loc_AC53CB: VCallAd Control_ID_FlexAjustes
  loc_AC53CE: FStAdFunc var_88
  loc_AC53D1: FLdPr var_88
  loc_AC53D4: LateIdLdVar var_98 DispID_10 0
  loc_AC53DB: CI4Var
  loc_AC53DD: CVarI4
  loc_AC53E1: PopAdLdVar
  loc_AC53E2: LitVarI4
  loc_AC53EA: PopAdLdVar
  loc_AC53EB: FLdPr Me
  loc_AC53EE: VCallAd Control_ID_FlexAjustes
  loc_AC53F1: FStAdFunc var_DC
  loc_AC53F4: FLdPr var_DC
  loc_AC53F7: LateIdCallLdVar
  loc_AC5401: CStrVarTmp
  loc_AC5402: FStStrNoPop var_F0
  loc_AC5405: LitStr vbNullString
  loc_AC5408: NeStr
  loc_AC540A: FFree1Str var_F0
  loc_AC540D: FFreeAd var_88 = ""
  loc_AC5414: FFreeVar var_98 = ""
  loc_AC541B: BranchF loc_AC54F3
  loc_AC541E: FLdPr Me
  loc_AC5421: VCallAd Control_ID_FlexAjustes
  loc_AC5424: FStAdFunc var_88
  loc_AC5427: FLdPr var_88
  loc_AC542A: LateIdLdVar var_98 DispID_11 0
  loc_AC5431: CI4Var
  loc_AC5433: LitI4 3
  loc_AC5438: EqI4
  loc_AC5439: FFree1Ad var_88
  loc_AC543C: FFree1Var var_98 = ""
  loc_AC543F: BranchF loc_AC54F3
  loc_AC5442: FLdPr Me
  loc_AC5445: VCallAd Control_ID_FlexAjustes
  loc_AC5448: FStAdFunc var_88
  loc_AC544B: FLdPr var_88
  loc_AC544E: LateIdLdVar var_98 DispID_0 0
  loc_AC5455: PopAd
  loc_AC5457: LitI4 1
  loc_AC545C: LitI4 1
  loc_AC5461: LitVarStr var_A8, "0.00"
  loc_AC5466: FStVarCopyObj var_120
  loc_AC5469: FLdRfVar var_120
  loc_AC546C: FLdRfVar var_98
  loc_AC546F: CStrVarTmp
  loc_AC5470: CVarStr var_EC
  loc_AC5473: FLdRfVar var_130
  loc_AC5476: ImpAdCallFPR4  = Format(, )
  loc_AC547B: FLdRfVar var_130
  loc_AC547E: CStrVarTmp
  loc_AC547F: CVarStr var_140
  loc_AC5482: PopAdLdVar
  loc_AC5483: FLdPr Me
  loc_AC5486: VCallAd Control_ID_FlexAjustes
  loc_AC5489: FStAdFunc var_DC
  loc_AC548C: FLdPr var_DC
  loc_AC548F: LateIdSt
  loc_AC5494: FFreeAd var_88 = ""
  loc_AC549B: FFreeVar var_98 = "": var_EC = "": var_120 = "": var_130 = ""
  loc_AC54A8: FLdPr Me
  loc_AC54AB: VCallAd Control_ID_FlexAjustes
  loc_AC54AE: FStAdFunc var_88
  loc_AC54B1: FLdPr var_88
  loc_AC54B4: LateIdLdVar var_98 DispID_10 0
  loc_AC54BB: CI4Var
  loc_AC54BD: CVarI4
  loc_AC54C1: PopAdLdVar
  loc_AC54C2: LitVarI4
  loc_AC54CA: PopAdLdVar
  loc_AC54CB: FLdPr Me
  loc_AC54CE: MemLdRfVar from_stack_1.global_84
  loc_AC54D1: CDargRef
  loc_AC54D5: FLdPr Me
  loc_AC54D8: VCallAd Control_ID_FlexAjustes
  loc_AC54DB: FStAdFunc var_DC
  loc_AC54DE: FLdPr var_DC
  loc_AC54E1: LateIdCallSt
  loc_AC54E9: FFreeAd var_88 = ""
  loc_AC54F0: FFree1Var var_98 = ""
  loc_AC54F3: LitI2_Byte 1
  loc_AC54F5: FLdPr Me
  loc_AC54F8: MemLdRfVar from_stack_1.global_80
  loc_AC54FB: FLdPr Me
  loc_AC54FE: VCallAd Control_ID_FlexAjustes
  loc_AC5501: FStAdFunc var_88
  loc_AC5504: FLdPr var_88
  loc_AC5507: LateIdLdVar var_98 DispID_4 0
  loc_AC550E: CI4Var
  loc_AC5510: LitI4 1
  loc_AC5515: SubI4
  loc_AC5516: CI2I4
  loc_AC5517: FFree1Ad var_88
  loc_AC551A: FFree1Var var_98 = ""
  loc_AC551D: ForI2 var_144
  loc_AC5523: FLdPr Me
  loc_AC5526: MemLdI2 global_80
  loc_AC5529: CI4UI1
  loc_AC552A: CVarI4
  loc_AC552E: PopAdLdVar
  loc_AC552F: LitVarI4
  loc_AC5537: PopAdLdVar
  loc_AC5538: FLdPr Me
  loc_AC553B: VCallAd Control_ID_FlexAjustes
  loc_AC553E: FStAdFunc var_88
  loc_AC5541: FLdPr var_88
  loc_AC5544: LateIdCallLdVar
  loc_AC554E: CStrVarTmp
  loc_AC554F: CVarStr var_EC
  loc_AC5552: ImpAdCallI2 IsNumeric()
  loc_AC5557: FFree1Ad var_88
  loc_AC555A: FFreeVar var_98 = ""
  loc_AC5561: BranchF loc_AC55F1
  loc_AC5564: FLdPr Me
  loc_AC5567: MemLdI2 global_80
  loc_AC556A: CI4UI1
  loc_AC556B: CVarI4
  loc_AC556F: PopAdLdVar
  loc_AC5570: LitVarI4
  loc_AC5578: PopAdLdVar
  loc_AC5579: FLdPr Me
  loc_AC557C: VCallAd Control_ID_FlexAjustes
  loc_AC557F: FStAdFunc var_88
  loc_AC5582: FLdPr var_88
  loc_AC5585: LateIdCallLdVar
  loc_AC558F: CStrVarTmp
  loc_AC5590: CVarStr var_EC
  loc_AC5593: ImpAdCallI2 IsNumeric()
  loc_AC5598: FFree1Ad var_88
  loc_AC559B: FFreeVar var_98 = ""
  loc_AC55A2: BranchF loc_AC55F1
  loc_AC55A5: FLdPr Me
  loc_AC55A8: MemLdI2 global_80
  loc_AC55AB: CI4UI1
  loc_AC55AC: CVarI4
  loc_AC55B0: PopAdLdVar
  loc_AC55B1: LitVarI4
  loc_AC55B9: PopAdLdVar
  loc_AC55BA: FLdPr Me
  loc_AC55BD: VCallAd Control_ID_FlexAjustes
  loc_AC55C0: FStAdFunc var_88
  loc_AC55C3: FLdPr var_88
  loc_AC55C6: LateIdCallLdVar
  loc_AC55D0: PopAd
  loc_AC55D2: FLdPr Me
  loc_AC55D5: MemLdFPR8 global_64
  loc_AC55D8: FLdRfVar var_98
  loc_AC55DB: CStrVarTmp
  loc_AC55DC: FStStrNoPop var_F0
  loc_AC55DF: CR8Str
  loc_AC55E1: AddR8
  loc_AC55E2: FLdPr Me
  loc_AC55E5: MemStFPR8 global_64
  loc_AC55E8: FFree1Str var_F0
  loc_AC55EB: FFree1Ad var_88
  loc_AC55EE: FFree1Var var_98 = ""
  loc_AC55F1: FLdPr Me
  loc_AC55F4: MemLdI2 global_80
  loc_AC55F7: CI4UI1
  loc_AC55F8: CVarI4
  loc_AC55FC: PopAdLdVar
  loc_AC55FD: LitVarI4
  loc_AC5605: PopAdLdVar
  loc_AC5606: FLdPr Me
  loc_AC5609: VCallAd Control_ID_FlexAjustes
  loc_AC560C: FStAdFunc var_88
  loc_AC560F: FLdPr var_88
  loc_AC5612: LateIdCallLdVar
  loc_AC561C: CStrVarTmp
  loc_AC561D: CVarStr var_EC
  loc_AC5620: ImpAdCallI2 IsNumeric()
  loc_AC5625: FFree1Ad var_88
  loc_AC5628: FFreeVar var_98 = ""
  loc_AC562F: BranchF loc_AC56BF
  loc_AC5632: FLdPr Me
  loc_AC5635: MemLdI2 global_80
  loc_AC5638: CI4UI1
  loc_AC5639: CVarI4
  loc_AC563D: PopAdLdVar
  loc_AC563E: LitVarI4
  loc_AC5646: PopAdLdVar
  loc_AC5647: FLdPr Me
  loc_AC564A: VCallAd Control_ID_FlexAjustes
  loc_AC564D: FStAdFunc var_88
  loc_AC5650: FLdPr var_88
  loc_AC5653: LateIdCallLdVar
  loc_AC565D: CStrVarTmp
  loc_AC565E: CVarStr var_EC
  loc_AC5661: ImpAdCallI2 IsNumeric()
  loc_AC5666: FFree1Ad var_88
  loc_AC5669: FFreeVar var_98 = ""
  loc_AC5670: BranchF loc_AC56BF
  loc_AC5673: FLdPr Me
  loc_AC5676: MemLdI2 global_80
  loc_AC5679: CI4UI1
  loc_AC567A: CVarI4
  loc_AC567E: PopAdLdVar
  loc_AC567F: LitVarI4
  loc_AC5687: PopAdLdVar
  loc_AC5688: FLdPr Me
  loc_AC568B: VCallAd Control_ID_FlexAjustes
  loc_AC568E: FStAdFunc var_88
  loc_AC5691: FLdPr var_88
  loc_AC5694: LateIdCallLdVar
  loc_AC569E: PopAd
  loc_AC56A0: FLdPr Me
  loc_AC56A3: MemLdFPR8 global_72
  loc_AC56A6: FLdRfVar var_98
  loc_AC56A9: CStrVarTmp
  loc_AC56AA: FStStrNoPop var_F0
  loc_AC56AD: CR8Str
  loc_AC56AF: AddR8
  loc_AC56B0: FLdPr Me
  loc_AC56B3: MemStFPR8 global_72
  loc_AC56B6: FFree1Str var_F0
  loc_AC56B9: FFree1Ad var_88
  loc_AC56BC: FFree1Var var_98 = ""
  loc_AC56BF: FLdPr Me
  loc_AC56C2: MemLdRfVar from_stack_1.global_80
  loc_AC56C5: NextI2 var_144, loc_AC5523
  loc_AC56CA: FLdPr Me
  loc_AC56CD: MemLdFPR8 global_64
  loc_AC56D0: CStrR8
  loc_AC56D2: FStStrNoPop var_F0
  loc_AC56D5: FLdPr Me
  loc_AC56D8: VCallAd Control_ID_TotaDebeLbl
  loc_AC56DB: FStAdFunc var_88
  loc_AC56DE: FLdPr var_88
  loc_AC56E1: Me.Caption = from_stack_1
  loc_AC56E6: FFree1Str var_F0
  loc_AC56E9: FFree1Ad var_88
  loc_AC56EC: FLdPr Me
  loc_AC56EF: MemLdFPR8 global_72
  loc_AC56F2: CStrR8
  loc_AC56F4: FStStrNoPop var_F0
  loc_AC56F7: FLdPr Me
  loc_AC56FA: VCallAd Control_ID_TotaHaberLbl
  loc_AC56FD: FStAdFunc var_88
  loc_AC5700: FLdPr var_88
  loc_AC5703: Me.Caption = from_stack_1
  loc_AC5708: FFree1Str var_F0
  loc_AC570B: FFree1Ad var_88
  loc_AC570E: ExitProcHresult
End Sub

Private Sub FechIngrMsk_UnknownEvent_0 '94BB88
  'Data Table: 437E6C
  loc_94BB74: FLdPr Me
  loc_94BB77: VCallAd Control_ID_FechIngrMsk
  loc_94BB7A: CVarAd
  loc_94BB7E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BB83: FFree1Var var_94 = ""
  loc_94BB86: ExitProcHresult
End Sub

Private Function FechIngrMsk_UnknownEvent_8(arg_C) '9CAD28
  'Data Table: 437E6C
  loc_9CAC54: FLdPr Me
  loc_9CAC57: VCallAd Control_ID_FechIngrMsk
  loc_9CAC5A: FStAdFunc var_88
  loc_9CAC5D: FLdPr var_88
  loc_9CAC60: LateIdLdVar var_98 DispID_13 -32767
  loc_9CAC67: CBoolVar
  loc_9CAC69: FLdRfVar var_9E
  loc_9CAC6C: FLdPr Me
  loc_9CAC6F: VCallAd Control_ID_cmdCancelar
  loc_9CAC72: FStAdFunc var_9C
  loc_9CAC75: FLdPr var_9C
  loc_9CAC78:  = Me.Value
  loc_9CAC7D: FLdI2 var_9E
  loc_9CAC80: NotI4
  loc_9CAC81: AndI4
  loc_9CAC82: FFreeAd var_88 = ""
  loc_9CAC89: FFree1Var var_98 = ""
  loc_9CAC8C: BranchF loc_9CAD27
  loc_9CAC8F: FLdPr Me
  loc_9CAC92: VCallAd Control_ID_FechIngrMsk
  loc_9CAC95: FStAdFunc var_88
  loc_9CAC98: FLdPr var_88
  loc_9CAC9B: LateIdLdVar var_98 DispID_15 0
  loc_9CACA2: PopAd
  loc_9CACA4: FLdPr Me
  loc_9CACA7: VCallAd Control_ID_FechIngrMsk
  loc_9CACAA: FStAdFunc var_AC
  loc_9CACAD: LitI2_Byte 0
  loc_9CACAF: PopTmpLdAd2 var_9E
  loc_9CACB2: FLdZeroAd var_AC
  loc_9CACB5: FStAdFunc var_9C
  loc_9CACB8: FLdRfVar var_9C
  loc_9CACBB: LitStr "01/01/2018"
  loc_9CACBE: LitI2_Byte &HFF
  loc_9CACC0: LitI2_Byte &HFF
  loc_9CACC2: FLdRfVar var_98
  loc_9CACC5: CStrVarTmp
  loc_9CACC6: FStStrNoPop var_A4
  loc_9CACC9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9CACCE: FStStrNoPop var_A8
  loc_9CACD1: FLdPr Me
  loc_9CACD4: MemStStrCopy
  loc_9CACD8: FFreeStr var_A4 = ""
  loc_9CACDF: FFreeAd var_88 = "": var_9C = ""
  loc_9CACE8: FFree1Var var_98 = ""
  loc_9CACEB: FLdPr Me
  loc_9CACEE: VCallAd Control_ID_FechIngrMsk
  loc_9CACF1: FStAdFunc var_B0
  loc_9CACF4: LitNothing
  loc_9CACF6: CastAd
  loc_9CACF9: FStAdFunc var_AC
  loc_9CACFC: FLdRfVar var_AC
  loc_9CACFF: FLdZeroAd var_B0
  loc_9CAD02: FStAdFuncNoPop
  loc_9CAD05: CastAd
  loc_9CAD08: FStAdFunc var_9C
  loc_9CAD0B: FLdRfVar var_9C
  loc_9CAD0E: FLdPr Me
  loc_9CAD11: MemLdRfVar from_stack_1.global_60
  loc_9CAD14: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CAD19: IStI2 arg_C
  loc_9CAD1C: FFreeAd var_88 = "": var_9C = "": var_AC = ""
  loc_9CAD27: ExitProcHresult
End Function

Private Sub FechIngrMsk_KeyPress(KeyAscii As Integer) '989AE8
  'Data Table: 437E6C
  loc_989AA4: ILdI2 KeyAscii
  loc_989AA7: CI4UI1
  loc_989AA8: LitI4 &H20
  loc_989AAD: EqI4
  loc_989AAE: BranchF loc_989AE4
  loc_989AB1: LitVar_Missing var_A4
  loc_989AB4: PopAdLdVar
  loc_989AB5: LitVarI4
  loc_989ABD: PopAdLdVar
  loc_989ABE: ImpAdLdRf MemVar_C3D9A8
  loc_989AC1: NewIfNullPr frmCalendario
  loc_989AC4: frmCalendario.Show from_stack_1, from_stack_2
  loc_989AC9: ImpAdLdRf MemVar_C3D038
  loc_989ACC: CDargRef
  loc_989AD0: FLdPr Me
  loc_989AD3: VCallAd Control_ID_FechIngrMsk
  loc_989AD6: FStAdFunc var_A8
  loc_989AD9: FLdPr var_A8
  loc_989ADC: LateIdSt
  loc_989AE1: FFree1Ad var_A8
  loc_989AE4: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A3D2C8
  'Data Table: 437E6C
  loc_A3D0B8: LitI2_Byte 0
  loc_A3D0BA: CUI1I2
  loc_A3D0BC: FLdPr Me
  loc_A3D0BF: MemStUI1
  loc_A3D0C3: ILdRf Me
  loc_A3D0C6: CastAd
  loc_A3D0C9: FStAdFunc var_88
  loc_A3D0CC: FLdRfVar var_88
  loc_A3D0CF: ImpAdCallFPR4  = Proc_261_1_AC96D8()
  loc_A3D0D4: FFree1Ad var_88
  loc_A3D0D7: ILdRf Me
  loc_A3D0DA: CastAd
  loc_A3D0DD: FStAdFunc var_88
  loc_A3D0E0: FLdRfVar var_88
  loc_A3D0E3: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A3D0E8: FFree1Ad var_88
  loc_A3D0EB: ILdRf Me
  loc_A3D0EE: CastAd
  loc_A3D0F1: FStAdFunc var_88
  loc_A3D0F4: FLdRfVar var_88
  loc_A3D0F7: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_A3D0FC: FFree1Ad var_88
  loc_A3D0FF: FLdPr Me
  loc_A3D102: VCallAd Control_ID_FlexAjustes
  loc_A3D105: FStAdFunc var_8C
  loc_A3D108: FLdPr var_8C
  loc_A3D10B: LateIdCall
  loc_A3D113: LitVarI4
  loc_A3D11B: PopAdLdVar
  loc_A3D11C: FLdPr var_8C
  loc_A3D11F: LateIdSt
  loc_A3D124: LitVarI4
  loc_A3D12C: PopAdLdVar
  loc_A3D12D: LitVarI4
  loc_A3D135: PopAdLdVar
  loc_A3D136: LitVarStr var_DC, "Cuenta"
  loc_A3D13B: PopAdLdVar
  loc_A3D13C: FLdPr var_8C
  loc_A3D13F: LateIdCallSt
  loc_A3D147: LitVarI4
  loc_A3D14F: PopAdLdVar
  loc_A3D150: LitVarI4
  loc_A3D158: PopAdLdVar
  loc_A3D159: LitVarStr var_DC, "Detalle"
  loc_A3D15E: PopAdLdVar
  loc_A3D15F: FLdPr var_8C
  loc_A3D162: LateIdCallSt
  loc_A3D16A: LitVarI4
  loc_A3D172: PopAdLdVar
  loc_A3D173: LitVarI4
  loc_A3D17B: PopAdLdVar
  loc_A3D17C: LitVarStr var_DC, "Debe"
  loc_A3D181: PopAdLdVar
  loc_A3D182: FLdPr var_8C
  loc_A3D185: LateIdCallSt
  loc_A3D18D: LitVarI4
  loc_A3D195: PopAdLdVar
  loc_A3D196: LitVarI4
  loc_A3D19E: PopAdLdVar
  loc_A3D19F: LitVarStr var_DC, "Haber"
  loc_A3D1A4: PopAdLdVar
  loc_A3D1A5: FLdPr var_8C
  loc_A3D1A8: LateIdCallSt
  loc_A3D1B0: FLdPr var_8C
  loc_A3D1B3: LateIdCall
  loc_A3D1BB: LitNothing
  loc_A3D1BD: FStAd var_8C 
  loc_A3D1C1: LitVarStr var_9C, vbNullString
  loc_A3D1C6: LitI4 9
  loc_A3D1CB: FLdRfVar var_FC
  loc_A3D1CE: ImpAdCallFPR4  = Chr()
  loc_A3D1D3: FLdRfVar var_FC
  loc_A3D1D6: ConcatVar var_10C
  loc_A3D1DA: LitVarStr var_AC, " "
  loc_A3D1DF: ConcatVar var_11C
  loc_A3D1E3: LitI4 9
  loc_A3D1E8: FLdRfVar var_12C
  loc_A3D1EB: ImpAdCallFPR4  = Chr()
  loc_A3D1F0: FLdRfVar var_12C
  loc_A3D1F3: ConcatVar var_13C
  loc_A3D1F7: FLdPr Me
  loc_A3D1FA: MemLdStr global_84
  loc_A3D1FD: CVarStr var_BC
  loc_A3D200: ConcatVar var_14C
  loc_A3D204: LitI4 9
  loc_A3D209: FLdRfVar var_15C
  loc_A3D20C: ImpAdCallFPR4  = Chr()
  loc_A3D211: FLdRfVar var_15C
  loc_A3D214: ConcatVar var_16C
  loc_A3D218: FLdPr Me
  loc_A3D21B: MemLdStr global_88
  loc_A3D21E: CVarStr var_CC
  loc_A3D221: ConcatVar var_17C
  loc_A3D225: CStrVarTmp
  loc_A3D226: CVarStr var_18C
  loc_A3D229: PopAdLdVar
  loc_A3D22A: FLdPr Me
  loc_A3D22D: VCallAd Control_ID_FlexAjustes
  loc_A3D230: FStAdFunc var_88
  loc_A3D233: FLdPr var_88
  loc_A3D236: LateIdCall
  loc_A3D23E: FFree1Ad var_88
  loc_A3D241: FFreeVar var_FC = "": var_10C = "": var_11C = "": var_12C = "": var_13C = "": var_14C = "": var_15C = "": var_16C = "": var_17C = ""
  loc_A3D258: LitI2_Byte 0
  loc_A3D25A: CStrUI1
  loc_A3D25C: FStStrNoPop var_190
  loc_A3D25F: FLdPr Me
  loc_A3D262: VCallAd Control_ID_TotaDebeLbl
  loc_A3D265: FStAdFunc var_88
  loc_A3D268: FLdPr var_88
  loc_A3D26B: Me.Caption = from_stack_1
  loc_A3D270: FFree1Str var_190
  loc_A3D273: FFree1Ad var_88
  loc_A3D276: LitI2_Byte 0
  loc_A3D278: CStrUI1
  loc_A3D27A: FStStrNoPop var_190
  loc_A3D27D: FLdPr Me
  loc_A3D280: VCallAd Control_ID_TotaHaberLbl
  loc_A3D283: FStAdFunc var_88
  loc_A3D286: FLdPr var_88
  loc_A3D289: Me.Caption = from_stack_1
  loc_A3D28E: FFree1Str var_190
  loc_A3D291: FFree1Ad var_88
  loc_A3D294: LitI4 0
  loc_A3D299: LitI4 0
  loc_A3D29E: FLdRfVar var_194
  loc_A3D2A1: Redim
  loc_A3D2AB: FLdPr Me
  loc_A3D2AE: VCallAd Control_ID_FlexAjustes
  loc_A3D2B1: CVarAd
  loc_A3D2B5: ParmAry1St
  loc_A3D2BB: FLdRfVar var_194
  loc_A3D2BE: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A3D2C3: FLdRfVar var_194
  loc_A3D2C6: Erase
  loc_A3D2C7: ExitProcHresult
End Sub

Private Sub Form_Load() '9E81DC
  'Data Table: 437E6C
  loc_9E80AC: LitI2_Byte 0
  loc_9E80AE: CR8I2
  loc_9E80AF: PopFPR4
  loc_9E80B0: FLdPr Me
  loc_9E80B3: Me.Left = from_stack_1s
  loc_9E80B8: LitI2_Byte 0
  loc_9E80BA: CR8I2
  loc_9E80BB: PopFPR4
  loc_9E80BC: FLdPr Me
  loc_9E80BF: Me.Top = from_stack_1s
  loc_9E80C4: FLdPr Me
  loc_9E80C7: VCallAd Control_ID_FlexAjustes
  loc_9E80CA: FStAdFunc var_88
  loc_9E80CD: LitVarI4
  loc_9E80D5: PopAdLdVar
  loc_9E80D6: LitVarI4
  loc_9E80DE: PopAdLdVar
  loc_9E80DF: FLdPr var_88
  loc_9E80E2: LateIdCallSt
  loc_9E80EA: LitVarI4
  loc_9E80F2: PopAdLdVar
  loc_9E80F3: LitVarI4
  loc_9E80FB: PopAdLdVar
  loc_9E80FC: FLdPr var_88
  loc_9E80FF: LateIdCallSt
  loc_9E8107: LitVarI4
  loc_9E810F: PopAdLdVar
  loc_9E8110: LitVarI4
  loc_9E8118: PopAdLdVar
  loc_9E8119: FLdPr var_88
  loc_9E811C: LateIdCallSt
  loc_9E8124: LitVarI4
  loc_9E812C: PopAdLdVar
  loc_9E812D: LitVarI4
  loc_9E8135: PopAdLdVar
  loc_9E8136: FLdPr var_88
  loc_9E8139: LateIdCallSt
  loc_9E8141: LitVarI4
  loc_9E8149: PopAdLdVar
  loc_9E814A: LitVarI4
  loc_9E8152: PopAdLdVar
  loc_9E8153: LitVarStr var_D8, "Cuenta"
  loc_9E8158: PopAdLdVar
  loc_9E8159: FLdPr var_88
  loc_9E815C: LateIdCallSt
  loc_9E8164: LitVarI4
  loc_9E816C: PopAdLdVar
  loc_9E816D: LitVarI4
  loc_9E8175: PopAdLdVar
  loc_9E8176: LitVarStr var_D8, "Detalle"
  loc_9E817B: PopAdLdVar
  loc_9E817C: FLdPr var_88
  loc_9E817F: LateIdCallSt
  loc_9E8187: LitVarI4
  loc_9E818F: PopAdLdVar
  loc_9E8190: LitVarI4
  loc_9E8198: PopAdLdVar
  loc_9E8199: LitVarStr var_D8, "Debe"
  loc_9E819E: PopAdLdVar
  loc_9E819F: FLdPr var_88
  loc_9E81A2: LateIdCallSt
  loc_9E81AA: LitVarI4
  loc_9E81B2: PopAdLdVar
  loc_9E81B3: LitVarI4
  loc_9E81BB: PopAdLdVar
  loc_9E81BC: LitVarStr var_D8, "Haber"
  loc_9E81C1: PopAdLdVar
  loc_9E81C2: FLdPr var_88
  loc_9E81C5: LateIdCallSt
  loc_9E81CD: LitNothing
  loc_9E81CF: FStAd var_88 
  loc_9E81D3: Call cmdCancelar_Click()
  loc_9E81D8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '94845C
  'Data Table: 437E6C
  loc_948448: ILdI2 KeyAscii
  loc_94844B: CI4UI1
  loc_94844C: LitI4 &HD
  loc_948451: EqI4
  loc_948452: BranchF loc_94845A
  loc_948455: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_94845A: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95F828
  'Data Table: 437E6C
  loc_95F810: ILdI2 KeyCode
  loc_95F813: ILdRf Me
  loc_95F816: CastAd
  loc_95F819: FStAdFunc var_88
  loc_95F81C: FLdRfVar var_88
  loc_95F81F: ImpAdCallFPR4  = Proc_261_3_A7CAFC()
  loc_95F824: FFree1Ad var_88
  loc_95F827: ExitProcHresult
End Sub

Private Sub DetaIngrTxt_GotFocus() '94BCA8
  'Data Table: 437E6C
  loc_94BC94: FLdPr Me
  loc_94BC97: VCallAd Control_ID_DetaIngrTxt
  loc_94BC9A: CVarAd
  loc_94BC9E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BCA3: FFree1Var var_94 = ""
  loc_94BCA6: ExitProcHresult
End Sub

Private Sub DetaIngrTxt_Validate(Cancel As Boolean) '9C0C00
  'Data Table: 437E6C
  loc_9C0B44: FLdRfVar var_8A
  loc_9C0B47: FLdPr Me
  loc_9C0B4A: VCallAd Control_ID_DetaIngrTxt
  loc_9C0B4D: FStAdFunc var_88
  loc_9C0B50: FLdPr var_88
  loc_9C0B53:  = Me.Enabled
  loc_9C0B58: FLdI2 var_8A
  loc_9C0B5B: FLdRfVar var_92
  loc_9C0B5E: FLdPr Me
  loc_9C0B61: VCallAd Control_ID_cmdCancelar
  loc_9C0B64: FStAdFunc var_90
  loc_9C0B67: FLdPr var_90
  loc_9C0B6A:  = Me.Value
  loc_9C0B6F: FLdI2 var_92
  loc_9C0B72: NotI4
  loc_9C0B73: AndI4
  loc_9C0B74: FFreeAd var_88 = ""
  loc_9C0B7B: BranchF loc_9C0BFC
  loc_9C0B7E: FLdRfVar var_98
  loc_9C0B81: FLdPr Me
  loc_9C0B84: VCallAd Control_ID_DetaIngrTxt
  loc_9C0B87: FStAdFunc var_88
  loc_9C0B8A: FLdPr var_88
  loc_9C0B8D:  = Me.Text
  loc_9C0B92: LitI2_Byte 0
  loc_9C0B94: PopTmpLdAd2 var_9A
  loc_9C0B97: LitI2_Byte 0
  loc_9C0B99: PopTmpLdAd2 var_92
  loc_9C0B9C: LitI2_Byte 0
  loc_9C0B9E: PopTmpLdAd2 var_8A
  loc_9C0BA1: ILdRf var_98
  loc_9C0BA4: LitStr "Detalle de Asiento"
  loc_9C0BA7: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0BAC: FStStrNoPop var_A0
  loc_9C0BAF: FLdPr Me
  loc_9C0BB2: MemStStrCopy
  loc_9C0BB6: FFreeStr var_98 = ""
  loc_9C0BBD: FFree1Ad var_88
  loc_9C0BC0: FLdPr Me
  loc_9C0BC3: VCallAd Control_ID_DetaIngrTxt
  loc_9C0BC6: FStAdFunc var_A8
  loc_9C0BC9: LitNothing
  loc_9C0BCB: CastAd
  loc_9C0BCE: FStAdFunc var_A4
  loc_9C0BD1: FLdRfVar var_A4
  loc_9C0BD4: FLdZeroAd var_A8
  loc_9C0BD7: FStAdFuncNoPop
  loc_9C0BDA: CastAd
  loc_9C0BDD: FStAdFunc var_90
  loc_9C0BE0: FLdRfVar var_90
  loc_9C0BE3: FLdPr Me
  loc_9C0BE6: MemLdRfVar from_stack_1.global_60
  loc_9C0BE9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C0BEE: IStI2 Cancel
  loc_9C0BF1: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C0BFC: ExitProcHresult
End Sub

Private Function Proc_289_14_B28F88(arg_C) 'B28F88
  'Data Table: 437E6C
  loc_B28658: ILdRf arg_C
  loc_B2865B: FStStrCopy var_88
  loc_B2865E: LitStr "Municipalidad de Guaymallén"
  loc_B28661: FStStrCopy var_8C
  loc_B28664: ILdRf var_8C
  loc_B28667: LitStr "Municipalidad de Tupungato"
  loc_B2866A: EqStr
  loc_B2866C: BranchT loc_B28685
  loc_B2866F: ILdRf var_8C
  loc_B28672: LitStr "Municipalidad de Santa Rosa"
  loc_B28675: EqStr
  loc_B28677: BranchT loc_B28685
  loc_B2867A: ILdRf var_8C
  loc_B2867D: LitStr "Municipalidad de Guaymallén"
  loc_B28680: EqStr
  loc_B28682: BranchF loc_B28A15
  loc_B28685: LitI4 0
  loc_B2868A: LitI4 &H37
  loc_B2868F: FLdRfVar var_90
  loc_B28692: Redim
  loc_B2869C: LitVarStr var_A0, "1150"
  loc_B286A1: LitI4 0
  loc_B286A6: ILdRf var_90
  loc_B286A9: Ary1StVarCopy
  loc_B286AB: LitVarStr var_B0, "1151"
  loc_B286B0: LitI4 1
  loc_B286B5: ILdRf var_90
  loc_B286B8: Ary1StVarCopy
  loc_B286BA: LitVarStr var_C0, "1152"
  loc_B286BF: LitI4 2
  loc_B286C4: ILdRf var_90
  loc_B286C7: Ary1StVarCopy
  loc_B286C9: LitVarStr var_D0, "1153"
  loc_B286CE: LitI4 3
  loc_B286D3: ILdRf var_90
  loc_B286D6: Ary1StVarCopy
  loc_B286D8: LitVarStr var_E0, "1154"
  loc_B286DD: LitI4 4
  loc_B286E2: ILdRf var_90
  loc_B286E5: Ary1StVarCopy
  loc_B286E7: LitVarStr var_F0, "1155"
  loc_B286EC: LitI4 5
  loc_B286F1: ILdRf var_90
  loc_B286F4: Ary1StVarCopy
  loc_B286F6: LitVarStr var_100, "1160"
  loc_B286FB: LitI4 6
  loc_B28700: ILdRf var_90
  loc_B28703: Ary1StVarCopy
  loc_B28705: LitVarStr var_110, "1170"
  loc_B2870A: LitI4 7
  loc_B2870F: ILdRf var_90
  loc_B28712: Ary1StVarCopy
  loc_B28714: LitVarStr var_120, "1200"
  loc_B28719: LitI4 8
  loc_B2871E: ILdRf var_90
  loc_B28721: Ary1StVarCopy
  loc_B28723: LitVarStr var_130, "1210"
  loc_B28728: LitI4 9
  loc_B2872D: ILdRf var_90
  loc_B28730: Ary1StVarCopy
  loc_B28732: LitVarStr var_140, "1230"
  loc_B28737: LitI4 &HA
  loc_B2873C: ILdRf var_90
  loc_B2873F: Ary1StVarCopy
  loc_B28741: LitVarStr var_150, "2113"
  loc_B28746: LitI4 &HB
  loc_B2874B: ILdRf var_90
  loc_B2874E: Ary1StVarCopy
  loc_B28750: LitVarStr var_160, "2114"
  loc_B28755: LitI4 &HC
  loc_B2875A: ILdRf var_90
  loc_B2875D: Ary1StVarCopy
  loc_B2875F: LitVarStr var_170, "2115"
  loc_B28764: LitI4 &HD
  loc_B28769: ILdRf var_90
  loc_B2876C: Ary1StVarCopy
  loc_B2876E: LitVarStr var_180, "2116"
  loc_B28773: LitI4 &HE
  loc_B28778: ILdRf var_90
  loc_B2877B: Ary1StVarCopy
  loc_B2877D: LitVarStr var_190, "2117"
  loc_B28782: LitI4 &HF
  loc_B28787: ILdRf var_90
  loc_B2878A: Ary1StVarCopy
  loc_B2878C: LitVarStr var_1A0, "2120"
  loc_B28791: LitI4 &H10
  loc_B28796: ILdRf var_90
  loc_B28799: Ary1StVarCopy
  loc_B2879B: LitVarStr var_1B0, "2121"
  loc_B287A0: LitI4 &H11
  loc_B287A5: ILdRf var_90
  loc_B287A8: Ary1StVarCopy
  loc_B287AA: LitVarStr var_1C0, "2122"
  loc_B287AF: LitI4 &H12
  loc_B287B4: ILdRf var_90
  loc_B287B7: Ary1StVarCopy
  loc_B287B9: LitVarStr var_1D0, "2123"
  loc_B287BE: LitI4 &H13
  loc_B287C3: ILdRf var_90
  loc_B287C6: Ary1StVarCopy
  loc_B287C8: LitVarStr var_1E0, "2124"
  loc_B287CD: LitI4 &H14
  loc_B287D2: ILdRf var_90
  loc_B287D5: Ary1StVarCopy
  loc_B287D7: LitVarStr var_1F0, "2200"
  loc_B287DC: LitI4 &H15
  loc_B287E1: ILdRf var_90
  loc_B287E4: Ary1StVarCopy
  loc_B287E6: LitVarStr var_200, "2210"
  loc_B287EB: LitI4 &H16
  loc_B287F0: ILdRf var_90
  loc_B287F3: Ary1StVarCopy
  loc_B287F5: LitVarStr var_210, "2220"
  loc_B287FA: LitI4 &H17
  loc_B287FF: ILdRf var_90
  loc_B28802: Ary1StVarCopy
  loc_B28804: LitVarStr var_220, "5000"
  loc_B28809: LitI4 &H18
  loc_B2880E: ILdRf var_90
  loc_B28811: Ary1StVarCopy
  loc_B28813: LitVarStr var_230, "5100"
  loc_B28818: LitI4 &H19
  loc_B2881D: ILdRf var_90
  loc_B28820: Ary1StVarCopy
  loc_B28822: LitVarStr var_240, "5110"
  loc_B28827: LitI4 &H1A
  loc_B2882C: ILdRf var_90
  loc_B2882F: Ary1StVarCopy
  loc_B28831: LitVarStr var_250, "5111"
  loc_B28836: LitI4 &H1B
  loc_B2883B: ILdRf var_90
  loc_B2883E: Ary1StVarCopy
  loc_B28840: LitVarStr var_260, "5112"
  loc_B28845: LitI4 &H1C
  loc_B2884A: ILdRf var_90
  loc_B2884D: Ary1StVarCopy
  loc_B2884F: LitVarStr var_270, "5120"
  loc_B28854: LitI4 &H1D
  loc_B28859: ILdRf var_90
  loc_B2885C: Ary1StVarCopy
  loc_B2885E: LitVarStr var_280, "5121"
  loc_B28863: LitI4 &H1E
  loc_B28868: ILdRf var_90
  loc_B2886B: Ary1StVarCopy
  loc_B2886D: LitVarStr var_290, "5122"
  loc_B28872: LitI4 &H1F
  loc_B28877: ILdRf var_90
  loc_B2887A: Ary1StVarCopy
  loc_B2887C: LitVarStr var_2A0, "5123"
  loc_B28881: LitI4 &H20
  loc_B28886: ILdRf var_90
  loc_B28889: Ary1StVarCopy
  loc_B2888B: LitVarStr var_2B0, "5130"
  loc_B28890: LitI4 &H21
  loc_B28895: ILdRf var_90
  loc_B28898: Ary1StVarCopy
  loc_B2889A: LitVarStr var_2C0, "5131"
  loc_B2889F: LitI4 &H22
  loc_B288A4: ILdRf var_90
  loc_B288A7: Ary1StVarCopy
  loc_B288A9: LitVarStr var_2D0, "5132"
  loc_B288AE: LitI4 &H23
  loc_B288B3: ILdRf var_90
  loc_B288B6: Ary1StVarCopy
  loc_B288B8: LitVarStr var_2E0, "5200"
  loc_B288BD: LitI4 &H24
  loc_B288C2: ILdRf var_90
  loc_B288C5: Ary1StVarCopy
  loc_B288C7: LitVarStr var_2F0, "5210"
  loc_B288CC: LitI4 &H25
  loc_B288D1: ILdRf var_90
  loc_B288D4: Ary1StVarCopy
  loc_B288D6: LitVarStr var_300, "5220"
  loc_B288DB: LitI4 &H26
  loc_B288E0: ILdRf var_90
  loc_B288E3: Ary1StVarCopy
  loc_B288E5: LitVarStr var_310, "5230"
  loc_B288EA: LitI4 &H27
  loc_B288EF: ILdRf var_90
  loc_B288F2: Ary1StVarCopy
  loc_B288F4: LitVarStr var_320, "5240"
  loc_B288F9: LitI4 &H28
  loc_B288FE: ILdRf var_90
  loc_B28901: Ary1StVarCopy
  loc_B28903: LitVarStr var_330, "5250"
  loc_B28908: LitI4 &H29
  loc_B2890D: ILdRf var_90
  loc_B28910: Ary1StVarCopy
  loc_B28912: LitVarStr var_340, "5300"
  loc_B28917: LitI4 &H2A
  loc_B2891C: ILdRf var_90
  loc_B2891F: Ary1StVarCopy
  loc_B28921: LitVarStr var_350, "7000"
  loc_B28926: LitI4 &H2B
  loc_B2892B: ILdRf var_90
  loc_B2892E: Ary1StVarCopy
  loc_B28930: LitVarStr var_360, "7100"
  loc_B28935: LitI4 &H2C
  loc_B2893A: ILdRf var_90
  loc_B2893D: Ary1StVarCopy
  loc_B2893F: LitVarStr var_370, "7110"
  loc_B28944: LitI4 &H2D
  loc_B28949: ILdRf var_90
  loc_B2894C: Ary1StVarCopy
  loc_B2894E: LitVarStr var_380, "7120"
  loc_B28953: LitI4 &H2E
  loc_B28958: ILdRf var_90
  loc_B2895B: Ary1StVarCopy
  loc_B2895D: LitVarStr var_390, "7200"
  loc_B28962: LitI4 &H2F
  loc_B28967: ILdRf var_90
  loc_B2896A: Ary1StVarCopy
  loc_B2896C: LitVarStr var_3A0, "7210"
  loc_B28971: LitI4 &H30
  loc_B28976: ILdRf var_90
  loc_B28979: Ary1StVarCopy
  loc_B2897B: LitVarStr var_3B0, "7220"
  loc_B28980: LitI4 &H31
  loc_B28985: ILdRf var_90
  loc_B28988: Ary1StVarCopy
  loc_B2898A: LitVarStr var_3C0, "7230"
  loc_B2898F: LitI4 &H32
  loc_B28994: ILdRf var_90
  loc_B28997: Ary1StVarCopy
  loc_B28999: LitVarStr var_3D0, "7300"
  loc_B2899E: LitI4 &H33
  loc_B289A3: ILdRf var_90
  loc_B289A6: Ary1StVarCopy
  loc_B289A8: LitVarStr var_3E0, "7400"
  loc_B289AD: LitI4 &H34
  loc_B289B2: ILdRf var_90
  loc_B289B5: Ary1StVarCopy
  loc_B289B7: LitVarStr var_3F0, "7500"
  loc_B289BC: LitI4 &H35
  loc_B289C1: ILdRf var_90
  loc_B289C4: Ary1StVarCopy
  loc_B289C6: LitVarStr var_400, "1120"
  loc_B289CB: LitI4 &H36
  loc_B289D0: ILdRf var_90
  loc_B289D3: Ary1StVarCopy
  loc_B289D5: LitVarStr var_410, "3000"
  loc_B289DA: LitI4 &H37
  loc_B289DF: ILdRf var_90
  loc_B289E2: Ary1StVarCopy
  loc_B289E4: FLdRfVar var_90
  loc_B289E7: FLdPr Me
  loc_B289EA: MemLdRfVar from_stack_1.global_92
  loc_B289ED: NewIfNullRf
  loc_B289F1: ImpAdLdI2 MemVar_C3D064
  loc_B289F4: LitI2_Byte &HFF
  loc_B289F6: ILdRf var_88
  loc_B289F9: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B289FE: FStStr var_414
  loc_B28A01: FLdRfVar var_90
  loc_B28A04: Erase
  loc_B28A05: ILdRf var_414
  loc_B28A08: FLdPr Me
  loc_B28A0B: MemStStrCopy
  loc_B28A0F: FFree1Str var_414
  loc_B28A12: Branch loc_B28D93
  loc_B28A15: LitI4 0
  loc_B28A1A: LitI4 &H36
  loc_B28A1F: FLdRfVar var_90
  loc_B28A22: Redim
  loc_B28A2C: LitVarStr var_A0, "1150"
  loc_B28A31: LitI4 0
  loc_B28A36: ILdRf var_90
  loc_B28A39: Ary1StVarCopy
  loc_B28A3B: LitVarStr var_B0, "1151"
  loc_B28A40: LitI4 1
  loc_B28A45: ILdRf var_90
  loc_B28A48: Ary1StVarCopy
  loc_B28A4A: LitVarStr var_C0, "1152"
  loc_B28A4F: LitI4 2
  loc_B28A54: ILdRf var_90
  loc_B28A57: Ary1StVarCopy
  loc_B28A59: LitVarStr var_D0, "1153"
  loc_B28A5E: LitI4 3
  loc_B28A63: ILdRf var_90
  loc_B28A66: Ary1StVarCopy
  loc_B28A68: LitVarStr var_E0, "1154"
  loc_B28A6D: LitI4 4
  loc_B28A72: ILdRf var_90
  loc_B28A75: Ary1StVarCopy
  loc_B28A77: LitVarStr var_F0, "1155"
  loc_B28A7C: LitI4 5
  loc_B28A81: ILdRf var_90
  loc_B28A84: Ary1StVarCopy
  loc_B28A86: LitVarStr var_100, "1160"
  loc_B28A8B: LitI4 6
  loc_B28A90: ILdRf var_90
  loc_B28A93: Ary1StVarCopy
  loc_B28A95: LitVarStr var_110, "1170"
  loc_B28A9A: LitI4 7
  loc_B28A9F: ILdRf var_90
  loc_B28AA2: Ary1StVarCopy
  loc_B28AA4: LitVarStr var_120, "1200"
  loc_B28AA9: LitI4 8
  loc_B28AAE: ILdRf var_90
  loc_B28AB1: Ary1StVarCopy
  loc_B28AB3: LitVarStr var_130, "1210"
  loc_B28AB8: LitI4 9
  loc_B28ABD: ILdRf var_90
  loc_B28AC0: Ary1StVarCopy
  loc_B28AC2: LitVarStr var_140, "1230"
  loc_B28AC7: LitI4 &HA
  loc_B28ACC: ILdRf var_90
  loc_B28ACF: Ary1StVarCopy
  loc_B28AD1: LitVarStr var_150, "2113"
  loc_B28AD6: LitI4 &HB
  loc_B28ADB: ILdRf var_90
  loc_B28ADE: Ary1StVarCopy
  loc_B28AE0: LitVarStr var_160, "2114"
  loc_B28AE5: LitI4 &HC
  loc_B28AEA: ILdRf var_90
  loc_B28AED: Ary1StVarCopy
  loc_B28AEF: LitVarStr var_170, "2115"
  loc_B28AF4: LitI4 &HD
  loc_B28AF9: ILdRf var_90
  loc_B28AFC: Ary1StVarCopy
  loc_B28AFE: LitVarStr var_180, "2116"
  loc_B28B03: LitI4 &HE
  loc_B28B08: ILdRf var_90
  loc_B28B0B: Ary1StVarCopy
  loc_B28B0D: LitVarStr var_190, "2117"
  loc_B28B12: LitI4 &HF
  loc_B28B17: ILdRf var_90
  loc_B28B1A: Ary1StVarCopy
  loc_B28B1C: LitVarStr var_1A0, "2120"
  loc_B28B21: LitI4 &H10
  loc_B28B26: ILdRf var_90
  loc_B28B29: Ary1StVarCopy
  loc_B28B2B: LitVarStr var_1B0, "2121"
  loc_B28B30: LitI4 &H11
  loc_B28B35: ILdRf var_90
  loc_B28B38: Ary1StVarCopy
  loc_B28B3A: LitVarStr var_1C0, "2122"
  loc_B28B3F: LitI4 &H12
  loc_B28B44: ILdRf var_90
  loc_B28B47: Ary1StVarCopy
  loc_B28B49: LitVarStr var_1D0, "2123"
  loc_B28B4E: LitI4 &H13
  loc_B28B53: ILdRf var_90
  loc_B28B56: Ary1StVarCopy
  loc_B28B58: LitVarStr var_1E0, "2124"
  loc_B28B5D: LitI4 &H14
  loc_B28B62: ILdRf var_90
  loc_B28B65: Ary1StVarCopy
  loc_B28B67: LitVarStr var_1F0, "2200"
  loc_B28B6C: LitI4 &H15
  loc_B28B71: ILdRf var_90
  loc_B28B74: Ary1StVarCopy
  loc_B28B76: LitVarStr var_200, "2210"
  loc_B28B7B: LitI4 &H16
  loc_B28B80: ILdRf var_90
  loc_B28B83: Ary1StVarCopy
  loc_B28B85: LitVarStr var_210, "2220"
  loc_B28B8A: LitI4 &H17
  loc_B28B8F: ILdRf var_90
  loc_B28B92: Ary1StVarCopy
  loc_B28B94: LitVarStr var_220, "5000"
  loc_B28B99: LitI4 &H18
  loc_B28B9E: ILdRf var_90
  loc_B28BA1: Ary1StVarCopy
  loc_B28BA3: LitVarStr var_230, "5100"
  loc_B28BA8: LitI4 &H19
  loc_B28BAD: ILdRf var_90
  loc_B28BB0: Ary1StVarCopy
  loc_B28BB2: LitVarStr var_240, "5110"
  loc_B28BB7: LitI4 &H1A
  loc_B28BBC: ILdRf var_90
  loc_B28BBF: Ary1StVarCopy
  loc_B28BC1: LitVarStr var_250, "5111"
  loc_B28BC6: LitI4 &H1B
  loc_B28BCB: ILdRf var_90
  loc_B28BCE: Ary1StVarCopy
  loc_B28BD0: LitVarStr var_260, "5112"
  loc_B28BD5: LitI4 &H1C
  loc_B28BDA: ILdRf var_90
  loc_B28BDD: Ary1StVarCopy
  loc_B28BDF: LitVarStr var_270, "5120"
  loc_B28BE4: LitI4 &H1D
  loc_B28BE9: ILdRf var_90
  loc_B28BEC: Ary1StVarCopy
  loc_B28BEE: LitVarStr var_280, "5121"
  loc_B28BF3: LitI4 &H1E
  loc_B28BF8: ILdRf var_90
  loc_B28BFB: Ary1StVarCopy
  loc_B28BFD: LitVarStr var_290, "5122"
  loc_B28C02: LitI4 &H1F
  loc_B28C07: ILdRf var_90
  loc_B28C0A: Ary1StVarCopy
  loc_B28C0C: LitVarStr var_2A0, "5123"
  loc_B28C11: LitI4 &H20
  loc_B28C16: ILdRf var_90
  loc_B28C19: Ary1StVarCopy
  loc_B28C1B: LitVarStr var_2B0, "5130"
  loc_B28C20: LitI4 &H21
  loc_B28C25: ILdRf var_90
  loc_B28C28: Ary1StVarCopy
  loc_B28C2A: LitVarStr var_2C0, "5131"
  loc_B28C2F: LitI4 &H22
  loc_B28C34: ILdRf var_90
  loc_B28C37: Ary1StVarCopy
  loc_B28C39: LitVarStr var_2D0, "5132"
  loc_B28C3E: LitI4 &H23
  loc_B28C43: ILdRf var_90
  loc_B28C46: Ary1StVarCopy
  loc_B28C48: LitVarStr var_2E0, "5200"
  loc_B28C4D: LitI4 &H24
  loc_B28C52: ILdRf var_90
  loc_B28C55: Ary1StVarCopy
  loc_B28C57: LitVarStr var_2F0, "5210"
  loc_B28C5C: LitI4 &H25
  loc_B28C61: ILdRf var_90
  loc_B28C64: Ary1StVarCopy
  loc_B28C66: LitVarStr var_300, "5220"
  loc_B28C6B: LitI4 &H26
  loc_B28C70: ILdRf var_90
  loc_B28C73: Ary1StVarCopy
  loc_B28C75: LitVarStr var_310, "5230"
  loc_B28C7A: LitI4 &H27
  loc_B28C7F: ILdRf var_90
  loc_B28C82: Ary1StVarCopy
  loc_B28C84: LitVarStr var_320, "5240"
  loc_B28C89: LitI4 &H28
  loc_B28C8E: ILdRf var_90
  loc_B28C91: Ary1StVarCopy
  loc_B28C93: LitVarStr var_330, "5250"
  loc_B28C98: LitI4 &H29
  loc_B28C9D: ILdRf var_90
  loc_B28CA0: Ary1StVarCopy
  loc_B28CA2: LitVarStr var_340, "5300"
  loc_B28CA7: LitI4 &H2A
  loc_B28CAC: ILdRf var_90
  loc_B28CAF: Ary1StVarCopy
  loc_B28CB1: LitVarStr var_350, "7000"
  loc_B28CB6: LitI4 &H2B
  loc_B28CBB: ILdRf var_90
  loc_B28CBE: Ary1StVarCopy
  loc_B28CC0: LitVarStr var_360, "7100"
  loc_B28CC5: LitI4 &H2C
  loc_B28CCA: ILdRf var_90
  loc_B28CCD: Ary1StVarCopy
  loc_B28CCF: LitVarStr var_370, "7110"
  loc_B28CD4: LitI4 &H2D
  loc_B28CD9: ILdRf var_90
  loc_B28CDC: Ary1StVarCopy
  loc_B28CDE: LitVarStr var_380, "7120"
  loc_B28CE3: LitI4 &H2E
  loc_B28CE8: ILdRf var_90
  loc_B28CEB: Ary1StVarCopy
  loc_B28CED: LitVarStr var_390, "7200"
  loc_B28CF2: LitI4 &H2F
  loc_B28CF7: ILdRf var_90
  loc_B28CFA: Ary1StVarCopy
  loc_B28CFC: LitVarStr var_3A0, "7210"
  loc_B28D01: LitI4 &H30
  loc_B28D06: ILdRf var_90
  loc_B28D09: Ary1StVarCopy
  loc_B28D0B: LitVarStr var_3B0, "7220"
  loc_B28D10: LitI4 &H31
  loc_B28D15: ILdRf var_90
  loc_B28D18: Ary1StVarCopy
  loc_B28D1A: LitVarStr var_3C0, "7230"
  loc_B28D1F: LitI4 &H32
  loc_B28D24: ILdRf var_90
  loc_B28D27: Ary1StVarCopy
  loc_B28D29: LitVarStr var_3D0, "7300"
  loc_B28D2E: LitI4 &H33
  loc_B28D33: ILdRf var_90
  loc_B28D36: Ary1StVarCopy
  loc_B28D38: LitVarStr var_3E0, "7400"
  loc_B28D3D: LitI4 &H34
  loc_B28D42: ILdRf var_90
  loc_B28D45: Ary1StVarCopy
  loc_B28D47: LitVarStr var_3F0, "7500"
  loc_B28D4C: LitI4 &H35
  loc_B28D51: ILdRf var_90
  loc_B28D54: Ary1StVarCopy
  loc_B28D56: LitVarStr var_400, "1120"
  loc_B28D5B: LitI4 &H36
  loc_B28D60: ILdRf var_90
  loc_B28D63: Ary1StVarCopy
  loc_B28D65: FLdRfVar var_90
  loc_B28D68: FLdPr Me
  loc_B28D6B: MemLdRfVar from_stack_1.global_92
  loc_B28D6E: NewIfNullRf
  loc_B28D72: ImpAdLdI2 MemVar_C3D064
  loc_B28D75: LitI2_Byte 0
  loc_B28D77: ILdRf var_88
  loc_B28D7A: ImpAdCallI2 Proc_266_2_A228D4(, , , , )
  loc_B28D7F: FStStr var_414
  loc_B28D82: FLdRfVar var_90
  loc_B28D85: Erase
  loc_B28D86: ILdRf var_414
  loc_B28D89: FLdPr Me
  loc_B28D8C: MemStStrCopy
  loc_B28D90: FFree1Str var_414
  loc_B28D93: LitVarStr var_A0, vbNullString
  loc_B28D98: PopAdLdVar
  loc_B28D99: FLdPr Me
  loc_B28D9C: VCallAd Control_ID_FlexAjustes
  loc_B28D9F: FStAdFunc var_418
  loc_B28DA2: FLdPr var_418
  loc_B28DA5: LateIdSt
  loc_B28DAA: FFree1Ad var_418
  loc_B28DAD: FLdPr Me
  loc_B28DB0: MemLdStr global_60
  loc_B28DB3: LitStr vbNullString
  loc_B28DB6: NeStr
  loc_B28DB8: BranchF loc_B28E5C
  loc_B28DBB: LitI4 0
  loc_B28DC0: FLdPr Me
  loc_B28DC3: MemLdStr global_60
  loc_B28DC6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B28DCB: FLdPr Me
  loc_B28DCE: VCallAd Control_ID_FlexAjustes
  loc_B28DD1: FStAdFunc var_418
  loc_B28DD4: FLdPr var_418
  loc_B28DD7: LateIdLdVar var_428 DispID_10 0
  loc_B28DDE: CI4Var
  loc_B28DE0: CVarI4
  loc_B28DE4: PopAdLdVar
  loc_B28DE5: LitVarI4
  loc_B28DED: PopAdLdVar
  loc_B28DEE: LitVarStr var_E0, vbNullString
  loc_B28DF3: PopAdLdVar
  loc_B28DF4: FLdPr Me
  loc_B28DF7: VCallAd Control_ID_FlexAjustes
  loc_B28DFA: FStAdFunc var_42C
  loc_B28DFD: FLdPr var_42C
  loc_B28E00: LateIdCallSt
  loc_B28E08: FFreeAd var_418 = ""
  loc_B28E0F: FFree1Var var_428 = ""
  loc_B28E12: FLdPr Me
  loc_B28E15: VCallAd Control_ID_FlexAjustes
  loc_B28E18: FStAdFunc var_418
  loc_B28E1B: FLdPr var_418
  loc_B28E1E: LateIdLdVar var_428 DispID_10 0
  loc_B28E25: CI4Var
  loc_B28E27: CVarI4
  loc_B28E2B: PopAdLdVar
  loc_B28E2C: LitVarI4
  loc_B28E34: PopAdLdVar
  loc_B28E35: LitVarStr var_E0, vbNullString
  loc_B28E3A: PopAdLdVar
  loc_B28E3B: FLdPr Me
  loc_B28E3E: VCallAd Control_ID_FlexAjustes
  loc_B28E41: FStAdFunc var_42C
  loc_B28E44: FLdPr var_42C
  loc_B28E47: LateIdCallSt
  loc_B28E4F: FFreeAd var_418 = ""
  loc_B28E56: FFree1Var var_428 = ""
  loc_B28E59: Branch loc_B28F86
  loc_B28E5C: FLdPr Me
  loc_B28E5F: VCallAd Control_ID_FechIngrMsk
  loc_B28E62: FStAdFunc var_418
  loc_B28E65: FLdPr var_418
  loc_B28E68: LateIdLdVar var_428 DispID_15 0
  loc_B28E6F: CStrVarTmp
  loc_B28E70: PopTmpLdAdStr
  loc_B28E74: FLdPr Me
  loc_B28E77: MemLdRfVar from_stack_1.global_92
  loc_B28E7A: NewIfNullRf
  loc_B28E7E: ILdRf var_88
  loc_B28E81: ImpAdLdI2 MemVar_C3D064
  loc_B28E84: CStrUI1
  loc_B28E86: FStStrNoPop var_414
  loc_B28E89: ImpAdCallI2  = Proc_259_8_ACF238(, )
  loc_B28E8E: FFreeStr var_414 = ""
  loc_B28E95: FFree1Ad var_418
  loc_B28E98: FFree1Var var_428 = ""
  loc_B28E9B: BranchF loc_B28F86
  loc_B28E9E: FLdPr Me
  loc_B28EA1: VCallAd Control_ID_FlexAjustes
  loc_B28EA4: FStAdFunc var_418
  loc_B28EA7: FLdPr var_418
  loc_B28EAA: LateIdLdVar var_428 DispID_10 0
  loc_B28EB1: CI4Var
  loc_B28EB3: CVarI4
  loc_B28EB7: PopAdLdVar
  loc_B28EB8: LitVarI4
  loc_B28EC0: PopAdLdVar
  loc_B28EC1: FLdRfVar var_414
  loc_B28EC4: FLdPr Me
  loc_B28EC7: MemLdRfVar from_stack_1.global_92
  loc_B28ECA: NewIfNullPr tblcuentacontable
  loc_B28ECD: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_B28ED2: FLdZeroAd var_414
  loc_B28ED5: CVarStr var_440
  loc_B28ED8: PopAdLdVar
  loc_B28ED9: FLdPr Me
  loc_B28EDC: VCallAd Control_ID_FlexAjustes
  loc_B28EDF: FStAdFunc var_42C
  loc_B28EE2: FLdPr var_42C
  loc_B28EE5: LateIdCallSt
  loc_B28EED: FFreeAd var_418 = ""
  loc_B28EF4: FFreeVar var_428 = ""
  loc_B28EFB: FLdRfVar var_414
  loc_B28EFE: FLdPr Me
  loc_B28F01: MemLdRfVar from_stack_1.global_92
  loc_B28F04: NewIfNullPr tblcuentacontable
  loc_B28F07: from_stack_1v = tblcuentacontable.DetaCucoGet()
  loc_B28F0C: ILdRf var_414
  loc_B28F0F: LitStr " : "
  loc_B28F12: ConcatStr
  loc_B28F13: FStStrNoPop var_430
  loc_B28F16: LitStr "Saldo Deudor: "
  loc_B28F19: ConcatStr
  loc_B28F1A: FStStrNoPop var_448
  loc_B28F1D: FLdRfVar var_444
  loc_B28F20: FLdPr Me
  loc_B28F23: MemLdRfVar from_stack_1.global_92
  loc_B28F26: NewIfNullPr tblcuentacontable
  loc_B28F29: from_stack_1v = tblcuentacontable.SaldDeuGet()
  loc_B28F2E: ILdRf var_444
  loc_B28F31: ConcatStr
  loc_B28F32: FStStrNoPop var_44C
  loc_B28F35: LitStr " - "
  loc_B28F38: ConcatStr
  loc_B28F39: FStStrNoPop var_450
  loc_B28F3C: LitStr "Saldo Acreedor: "
  loc_B28F3F: ConcatStr
  loc_B28F40: FStStrNoPop var_458
  loc_B28F43: FLdRfVar var_454
  loc_B28F46: FLdPr Me
  loc_B28F49: MemLdRfVar from_stack_1.global_92
  loc_B28F4C: NewIfNullPr tblcuentacontable
  loc_B28F4F: from_stack_1v = tblcuentacontable.SaldAcreGet()
  loc_B28F54: ILdRf var_454
  loc_B28F57: ConcatStr
  loc_B28F58: CVarStr var_428
  loc_B28F5B: PopAdLdVar
  loc_B28F5C: FLdPr Me
  loc_B28F5F: VCallAd Control_ID_FlexAjustes
  loc_B28F62: FStAdFunc var_418
  loc_B28F65: FLdPr var_418
  loc_B28F68: LateIdSt
  loc_B28F6D: FFreeStr var_414 = "": var_430 = "": var_448 = "": var_444 = "": var_44C = "": var_450 = "": var_458 = ""
  loc_B28F80: FFree1Ad var_418
  loc_B28F83: FFree1Var var_428 = ""
  loc_B28F86: ExitProcHresult
End Function
