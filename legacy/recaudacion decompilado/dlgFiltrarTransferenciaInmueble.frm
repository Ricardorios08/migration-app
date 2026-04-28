VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form dlgFiltrarTransferenciaInmueble
  Caption = "Filtrar Inmuebles"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgFiltrarTransferenciaInmueble.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9156
  ClientHeight = 4824
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.ListBox lstFields
    Left = 3840
    Top = 720
    Width = 1215
    Height = 1200
    Visible = 0   'False
    TabIndex = 11
  End
  Begin VB.CommandButton cmdOr
    Caption = "OR"
    Left = 1920
    Top = 1200
    Width = 1215
    Height = 375
    TabIndex = 8
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
  Begin VB.CommandButton cmdAnd
    Caption = "AND"
    Left = 1920
    Top = 720
    Width = 1215
    Height = 375
    TabIndex = 7
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
  Begin VB.CommandButton cmdLimpiar
    Caption = "Limpiar"
    Left = 6360
    Top = 1920
    Width = 1335
    Height = 495
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
  Begin VB.CommandButton cmdQuitar
    Caption = "<< Quitar"
    Left = 6360
    Top = 1320
    Width = 1335
    Height = 495
    TabIndex = 5
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
  Begin VB.CommandButton cmdAgregar
    Caption = "Agregar >>"
    Left = 6360
    Top = 720
    Width = 1335
    Height = 495
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
  Begin RichTextLib.RichTextBox rtfRecordSource
    Left = 120
    Top = 2520
    Width = 8415
    Height = 1335
    TabIndex = 10
    OleObjectBlob = "dlgFiltrarTransferenciaInmueble.frx":08CA
  End
  Begin VB.TextBox txtValor
    ForeColor = &HFF0000&
    Left = 4680
    Top = 120
    Width = 3735
    Height = 420
    TabIndex = 2
    MaxLength = 40
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
  Begin VB.ComboBox cboOperador
    Style = 2
    Left = 1920
    Top = 120
    Width = 2655
    Height = 420
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
  End
  Begin VB.ListBox lstCampos
    Left = 120
    Top = 120
    Width = 1695
    Height = 2160
    TabIndex = 0
    Sorted = -1  'True
  End
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 9
    Cancel = -1  'True
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4080
    Width = 1335
    Height = 495
    TabIndex = 4
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

Attribute VB_Name = "dlgFiltrarTransferenciaInmueble"

Public sPasaSelect As String
Public sCaption As String


Private Sub txtValor_GotFocus() '9C6E48
  'Data Table: 446A50
  loc_9C6E34: FLdPr Me
  loc_9C6E37: VCallAd Control_ID_txtValor
  loc_9C6E3A: CVarAd
  loc_9C6E3E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6E43: FFree1Var var_94 = ""
  loc_9C6E46: ExitProcHresult
End Sub

Private Sub Form_Load() 'B0EFB0
  'Data Table: 446A50
  loc_B0ED74: LitStr "Filtrar Imputaciones"
  loc_B0ED77: FLdPr Me
  loc_B0ED7A: Me.Caption = from_stack_1
  loc_B0ED7F: LitStr "imputacion"
  loc_B0ED82: FLdPr Me
  loc_B0ED85: MemStStrCopy
  loc_B0ED89: LitStr "PeriInfo, CodiPart, CodiOrga, NumeImpu"
  loc_B0ED8C: FLdPr Me
  loc_B0ED8F: MemStStrCopy
  loc_B0ED93: FLdPr Me
  loc_B0ED96: VCallAd Control_ID_lstCampos
  loc_B0ED99: FStAdFunc var_88
  loc_B0ED9C: LitVarI2 var_98, 0
  loc_B0EDA1: PopAdLdVar
  loc_B0EDA2: LitStr "Numero de Padron"
  loc_B0EDA5: FLdPr var_88
  loc_B0EDA8: Me.AddItem from_stack_1, from_stack_2
  loc_B0EDAD: LitVarI2 var_98, 1
  loc_B0EDB2: PopAdLdVar
  loc_B0EDB3: LitStr "Apellido y Nombre"
  loc_B0EDB6: FLdPr var_88
  loc_B0EDB9: Me.AddItem from_stack_1, from_stack_2
  loc_B0EDBE: LitVarI2 var_98, 2
  loc_B0EDC3: PopAdLdVar
  loc_B0EDC4: LitStr "Departamento"
  loc_B0EDC7: FLdPr var_88
  loc_B0EDCA: Me.AddItem from_stack_1, from_stack_2
  loc_B0EDCF: LitVarI2 var_98, 3
  loc_B0EDD4: PopAdLdVar
  loc_B0EDD5: LitStr "Distrito"
  loc_B0EDD8: FLdPr var_88
  loc_B0EDDB: Me.AddItem from_stack_1, from_stack_2
  loc_B0EDE0: LitVarI2 var_98, 4
  loc_B0EDE5: PopAdLdVar
  loc_B0EDE6: LitStr "Seccion"
  loc_B0EDE9: FLdPr var_88
  loc_B0EDEC: Me.AddItem from_stack_1, from_stack_2
  loc_B0EDF1: LitVarI2 var_98, 5
  loc_B0EDF6: PopAdLdVar
  loc_B0EDF7: LitStr "Manzana"
  loc_B0EDFA: FLdPr var_88
  loc_B0EDFD: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE02: LitVarI2 var_98, 6
  loc_B0EE07: PopAdLdVar
  loc_B0EE08: LitStr "Parcela"
  loc_B0EE0B: FLdPr var_88
  loc_B0EE0E: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE13: LitVarI2 var_98, 7
  loc_B0EE18: PopAdLdVar
  loc_B0EE19: LitStr "SubParcela"
  loc_B0EE1C: FLdPr var_88
  loc_B0EE1F: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE24: LitVarI2 var_98, 8
  loc_B0EE29: PopAdLdVar
  loc_B0EE2A: LitStr "Digito Verificador"
  loc_B0EE2D: FLdPr var_88
  loc_B0EE30: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE35: LitVarI2 var_98, 9
  loc_B0EE3A: PopAdLdVar
  loc_B0EE3B: LitStr "Nomenclatura"
  loc_B0EE3E: FLdPr var_88
  loc_B0EE41: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE46: LitNothing
  loc_B0EE48: FStAd var_88 
  loc_B0EE4C: FLdPr Me
  loc_B0EE4F: VCallAd Control_ID_lstFields
  loc_B0EE52: FStAdFunc var_9C
  loc_B0EE55: LitVarI2 var_98, 0
  loc_B0EE5A: PopAdLdVar
  loc_B0EE5B: LitStr "inmueble.CodiInmu"
  loc_B0EE5E: FLdPr var_9C
  loc_B0EE61: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE66: LitVarI2 var_98, 1
  loc_B0EE6B: PopAdLdVar
  loc_B0EE6C: LitStr "persona.DetaPers"
  loc_B0EE6F: FLdPr var_9C
  loc_B0EE72: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE77: LitVarI2 var_98, 2
  loc_B0EE7C: PopAdLdVar
  loc_B0EE7D: LitStr "inmueble.DptoInmu"
  loc_B0EE80: FLdPr var_9C
  loc_B0EE83: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE88: LitVarI2 var_98, 3
  loc_B0EE8D: PopAdLdVar
  loc_B0EE8E: LitStr "inmueble.DistInmu"
  loc_B0EE91: FLdPr var_9C
  loc_B0EE94: Me.AddItem from_stack_1, from_stack_2
  loc_B0EE99: LitVarI2 var_98, 4
  loc_B0EE9E: PopAdLdVar
  loc_B0EE9F: LitStr "inmueble.SeccInmu"
  loc_B0EEA2: FLdPr var_9C
  loc_B0EEA5: Me.AddItem from_stack_1, from_stack_2
  loc_B0EEAA: LitVarI2 var_98, 5
  loc_B0EEAF: PopAdLdVar
  loc_B0EEB0: LitStr "inmueble.ManzInmu"
  loc_B0EEB3: FLdPr var_9C
  loc_B0EEB6: Me.AddItem from_stack_1, from_stack_2
  loc_B0EEBB: LitVarI2 var_98, 6
  loc_B0EEC0: PopAdLdVar
  loc_B0EEC1: LitStr "inmueble.ParcInmu"
  loc_B0EEC4: FLdPr var_9C
  loc_B0EEC7: Me.AddItem from_stack_1, from_stack_2
  loc_B0EECC: LitVarI2 var_98, 7
  loc_B0EED1: PopAdLdVar
  loc_B0EED2: LitStr "inmueble.SubpInmu"
  loc_B0EED5: FLdPr var_9C
  loc_B0EED8: Me.AddItem from_stack_1, from_stack_2
  loc_B0EEDD: LitVarI2 var_98, 8
  loc_B0EEE2: PopAdLdVar
  loc_B0EEE3: LitStr "inmueble.DigiInmu"
  loc_B0EEE6: FLdPr var_9C
  loc_B0EEE9: Me.AddItem from_stack_1, from_stack_2
  loc_B0EEEE: LitVarI2 var_98, 9
  loc_B0EEF3: PopAdLdVar
  loc_B0EEF4: LitStr "inmueble.NomeInmu"
  loc_B0EEF7: FLdPr var_9C
  loc_B0EEFA: Me.AddItem from_stack_1, from_stack_2
  loc_B0EEFF: LitNothing
  loc_B0EF01: FStAd var_9C 
  loc_B0EF05: FLdPr Me
  loc_B0EF08: VCallAd Control_ID_cboOperador
  loc_B0EF0B: FStAdFunc var_A0
  loc_B0EF0E: LitVar_Missing var_98
  loc_B0EF11: PopAdLdVar
  loc_B0EF12: LitStr "Mayor o Igual que"
  loc_B0EF15: FLdPr var_A0
  loc_B0EF18: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF1D: LitVar_Missing var_98
  loc_B0EF20: PopAdLdVar
  loc_B0EF21: LitStr "Mayor que"
  loc_B0EF24: FLdPr var_A0
  loc_B0EF27: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF2C: LitVar_Missing var_98
  loc_B0EF2F: PopAdLdVar
  loc_B0EF30: LitStr "Igual a"
  loc_B0EF33: FLdPr var_A0
  loc_B0EF36: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF3B: LitVar_Missing var_98
  loc_B0EF3E: PopAdLdVar
  loc_B0EF3F: LitStr "Distinto a"
  loc_B0EF42: FLdPr var_A0
  loc_B0EF45: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF4A: LitVar_Missing var_98
  loc_B0EF4D: PopAdLdVar
  loc_B0EF4E: LitStr "Contiene"
  loc_B0EF51: FLdPr var_A0
  loc_B0EF54: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF59: LitVar_Missing var_98
  loc_B0EF5C: PopAdLdVar
  loc_B0EF5D: LitStr "Menor que"
  loc_B0EF60: FLdPr var_A0
  loc_B0EF63: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF68: LitVar_Missing var_98
  loc_B0EF6B: PopAdLdVar
  loc_B0EF6C: LitStr "Menor o Igual que"
  loc_B0EF6F: FLdPr var_A0
  loc_B0EF72: Me.AddItem from_stack_1, from_stack_2
  loc_B0EF77: LitNothing
  loc_B0EF79: FStAd var_A0 
  loc_B0EF7D: LitI2_Byte &HFF
  loc_B0EF7F: LitI2_Byte 0
  loc_B0EF81: FLdPr Me
  loc_B0EF84: VCallAd Control_ID_lstCampos
  loc_B0EF87: FStAdFunc var_A4
  loc_B0EF8A: FLdPr var_A4
  loc_B0EF8D: Me.Selected = from_stack_1
  loc_B0EF92: FFree1Ad var_A4
  loc_B0EF95: LitStr "Igual a"
  loc_B0EF98: FLdPr Me
  loc_B0EF9B: VCallAd Control_ID_cboOperador
  loc_B0EF9E: FStAdFunc var_A4
  loc_B0EFA1: FLdPr var_A4
  loc_B0EFA4: Me.Text = from_stack_1
  loc_B0EFA9: FFree1Ad var_A4
  loc_B0EFAC: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'AB1EC8
  'Data Table: 446A50
  loc_AB1DF8: FLdPr Me
  loc_AB1DFB: VCallAd Control_ID_rtfRecordSource
  loc_AB1DFE: FStAdFunc var_88
  loc_AB1E01: FLdPr var_88
  loc_AB1E04: LateIdLdVar var_98 DispID_-517 -1
  loc_AB1E0B: CStrVarTmp
  loc_AB1E0C: FStStrNoPop var_9C
  loc_AB1E0F: LitStr vbNullString
  loc_AB1E12: NeStr
  loc_AB1E14: FFree1Str var_9C
  loc_AB1E17: FFree1Ad var_88
  loc_AB1E1A: FFree1Var var_98 = ""
  loc_AB1E1D: BranchF loc_AB1EA7
  loc_AB1E20: LitStr "SELECT inmueble.CodiInmu, inmueble.CucuPers, infogov.persona.DetaPers, inmueble.DptoInmu, inmueble.DistInmu, inmueble.SeccInmu, inmueble.ManzInmu, inmueble.ParcInmu, inmueble.SubpInmu, inmueble.DigiInmu, inmueble.NomeInmu"
  loc_AB1E23: LitStr " FROM inmueble"
  loc_AB1E26: ConcatStr
  loc_AB1E27: FStStrNoPop var_9C
  loc_AB1E2A: LitStr " LEFT JOIN infogov.persona On inmueble.CucuPers = infogov.persona.CucuPers"
  loc_AB1E2D: ConcatStr
  loc_AB1E2E: FStStrNoPop var_A0
  loc_AB1E31: LitStr " WHERE "
  loc_AB1E34: ConcatStr
  loc_AB1E35: FStStrNoPop var_A4
  loc_AB1E38: FLdPr Me
  loc_AB1E3B: VCallAd Control_ID_rtfRecordSource
  loc_AB1E3E: FStAdFunc var_88
  loc_AB1E41: FLdPr var_88
  loc_AB1E44: LateIdLdVar var_98 DispID_-517 -1
  loc_AB1E4B: CStrVarTmp
  loc_AB1E4C: FStStrNoPop var_A8
  loc_AB1E4F: ConcatStr
  loc_AB1E50: FStStrNoPop var_AC
  loc_AB1E53: FLdPr Me
  loc_AB1E56: MemStStrCopy
  loc_AB1E5A: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AB1E67: FFree1Ad var_88
  loc_AB1E6A: FFree1Var var_98 = ""
  loc_AB1E6D: LitI2_Byte &HFF
  loc_AB1E6F: ImpAdStI2 MemVar_D9303A
  loc_AB1E72: LitStr "Filtro aplicado: "
  loc_AB1E75: FLdPr Me
  loc_AB1E78: VCallAd Control_ID_rtfRecordSource
  loc_AB1E7B: FStAdFunc var_88
  loc_AB1E7E: FLdPr var_88
  loc_AB1E81: LateIdLdVar var_98 DispID_-517 -1
  loc_AB1E88: CStrVarTmp
  loc_AB1E89: FStStrNoPop var_9C
  loc_AB1E8C: ConcatStr
  loc_AB1E8D: FStStrNoPop var_A0
  loc_AB1E90: FLdPr Me
  loc_AB1E93: MemStStrCopy
  loc_AB1E97: FFreeStr var_9C = ""
  loc_AB1E9E: FFree1Ad var_88
  loc_AB1EA1: FFree1Var var_98 = ""
  loc_AB1EA4: Branch loc_AB1EB1
  loc_AB1EA7: LitI2_Byte 0
  loc_AB1EA9: ImpAdStI2 MemVar_D9303A
  loc_AB1EAC: Call CancelButton_Click()
  loc_AB1EB1: ILdRf Me
  loc_AB1EB4: FStAdNoPop
  loc_AB1EB8: ImpAdLdRf MemVar_D9C5D8
  loc_AB1EBB: NewIfNullPr Global
  loc_AB1EBE: Global.Unload from_stack_1
  loc_AB1EC3: FFree1Ad var_88
  loc_AB1EC6: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A42F78
  'Data Table: 446A50
  loc_A42F34: FLdPr Me
  loc_A42F37: VCallAd Control_ID_rtfRecordSource
  loc_A42F3A: FStAdFunc var_88
  loc_A42F3D: FLdPr var_88
  loc_A42F40: LateIdLdVar var_98 DispID_-517 -1
  loc_A42F47: CStrVarTmp
  loc_A42F48: FStStrNoPop var_9C
  loc_A42F4B: LitStr " AND "
  loc_A42F4E: ConcatStr
  loc_A42F4F: CVarStr var_AC
  loc_A42F52: PopAdLdVar
  loc_A42F53: FLdPr Me
  loc_A42F56: VCallAd Control_ID_rtfRecordSource
  loc_A42F59: FStAdFunc var_C0
  loc_A42F5C: FLdPr var_C0
  loc_A42F5F: LateIdSt
  loc_A42F64: FFree1Str var_9C
  loc_A42F67: FFreeAd var_88 = ""
  loc_A42F6E: FFreeVar var_98 = ""
  loc_A42F75: ExitProcHresult
End Sub

Private Sub cmdAgregar_Click() 'B2A134
  'Data Table: 446A50
  loc_B29ECC: FLdRfVar var_90
  loc_B29ECF: FLdPr Me
  loc_B29ED2: VCallAd Control_ID_txtValor
  loc_B29ED5: FStAdFunc var_8C
  loc_B29ED8: FLdPr var_8C
  loc_B29EDB:  = Me.Text
  loc_B29EE0: ILdRf var_90
  loc_B29EE3: LitStr vbNullString
  loc_B29EE6: EqStr
  loc_B29EE8: FFree1Str var_90
  loc_B29EEB: FFree1Ad var_8C
  loc_B29EEE: BranchF loc_B29F23
  loc_B29EF1: LitVar_Missing var_110
  loc_B29EF4: LitVar_Missing var_F0
  loc_B29EF7: LitVarStr var_C0, "InfoGov"
  loc_B29EFC: FStVarCopyObj var_D0
  loc_B29EFF: FLdRfVar var_D0
  loc_B29F02: LitI4 &H30
  loc_B29F07: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B29F0C: FStVarCopyObj var_B0
  loc_B29F0F: FLdRfVar var_B0
  loc_B29F12: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B29F17: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B29F22: ExitProcHresult
  loc_B29F23: FLdPr Me
  loc_B29F26: VCallAd Control_ID_rtfRecordSource
  loc_B29F29: FStAdFunc var_8C
  loc_B29F2C: FLdPr var_8C
  loc_B29F2F: LateIdLdVar var_B0 DispID_-517 -1
  loc_B29F36: CStrVarTmp
  loc_B29F37: FStStrNoPop var_90
  loc_B29F3A: FLdPr Me
  loc_B29F3D: MemStStrCopy
  loc_B29F41: FFree1Str var_90
  loc_B29F44: FFree1Ad var_8C
  loc_B29F47: FFree1Var var_B0 = ""
  loc_B29F4A: FLdPr Me
  loc_B29F4D: VCallAd Control_ID_rtfRecordSource
  loc_B29F50: FStAdFunc var_114
  loc_B29F53: FLdPr var_114
  loc_B29F56: LateIdLdVar var_D0 DispID_-517 -1
  loc_B29F5D: PopAd
  loc_B29F5F: FLdPr Me
  loc_B29F62: VCallAd Control_ID_rtfRecordSource
  loc_B29F65: FStAdFunc var_128
  loc_B29F68: FLdPr var_128
  loc_B29F6B: LateIdLdVar var_138 DispID_-517 -1
  loc_B29F72: PopAd
  loc_B29F74: FLdPr Me
  loc_B29F77: VCallAd Control_ID_rtfRecordSource
  loc_B29F7A: FStAdFunc var_8C
  loc_B29F7D: FLdPr var_8C
  loc_B29F80: LateIdLdVar var_B0 DispID_-517 -1
  loc_B29F87: CStrVarTmp
  loc_B29F88: FStStrNoPop var_90
  loc_B29F8B: LitStr vbNullString
  loc_B29F8E: NeStr
  loc_B29F90: CVarBoolI2 var_E0
  loc_B29F94: LitI4 4
  loc_B29F99: FLdRfVar var_D0
  loc_B29F9C: CStrVarTmp
  loc_B29F9D: CVarStr var_F0
  loc_B29FA0: FLdRfVar var_110
  loc_B29FA3: ImpAdCallFPR4  = Right(, )
  loc_B29FA8: FLdRfVar var_110
  loc_B29FAB: LitVarStr var_A0, "AND "
  loc_B29FB0: HardType
  loc_B29FB1: EqVar var_124
  loc_B29FB5: LitI4 3
  loc_B29FBA: FLdRfVar var_138
  loc_B29FBD: CStrVarTmp
  loc_B29FBE: CVarStr var_148
  loc_B29FC1: FLdRfVar var_158
  loc_B29FC4: ImpAdCallFPR4  = Right(, )
  loc_B29FC9: FLdRfVar var_158
  loc_B29FCC: LitVarStr var_C0, "OR "
  loc_B29FD1: HardType
  loc_B29FD2: EqVar var_168
  loc_B29FD6: OrVar var_178
  loc_B29FDA: NotVar var_188
  loc_B29FDE: AndVar var_198
  loc_B29FE2: CBoolVarNull
  loc_B29FE4: FFree1Str var_90
  loc_B29FE7: FFreeAd var_8C = "": var_114 = ""
  loc_B29FF0: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B2A003: BranchF loc_B2A00B
  loc_B2A006: Call cmdAnd_Click()
  loc_B2A00B: FLdRfVar var_90
  loc_B2A00E: FLdPr Me
  loc_B2A011: VCallAd Control_ID_cboOperador
  loc_B2A014: FStAdFunc var_8C
  loc_B2A017: FLdPr var_8C
  loc_B2A01A:  = Me.Text
  loc_B2A01F: ILdRf var_90
  loc_B2A022: LitStr "Contiene"
  loc_B2A025: EqStr
  loc_B2A027: FFree1Str var_90
  loc_B2A02A: FFree1Ad var_8C
  loc_B2A02D: BranchF loc_B2A039
  loc_B2A030: LitStr Chr(37)
  loc_B2A033: FStStrCopy var_88
  loc_B2A036: Branch loc_B2A03F
  loc_B2A039: LitStr vbNullString
  loc_B2A03C: FStStrCopy var_88
  loc_B2A03F: FLdPr Me
  loc_B2A042: VCallAd Control_ID_rtfRecordSource
  loc_B2A045: FStAdFunc var_8C
  loc_B2A048: FLdPr var_8C
  loc_B2A04B: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A052: CStrVarTmp
  loc_B2A053: FStStrNoPop var_1A0
  loc_B2A056: FLdRfVar var_90
  loc_B2A059: FLdRfVar var_19A
  loc_B2A05C: FLdPr Me
  loc_B2A05F: VCallAd Control_ID_lstCampos
  loc_B2A062: FStAdFunc var_114
  loc_B2A065: FLdPr var_114
  loc_B2A068:  = Me.ListIndex
  loc_B2A06D: FLdI2 var_19A
  loc_B2A070: FLdPr Me
  loc_B2A073: VCallAd Control_ID_lstFields
  loc_B2A076: FStAdFunc var_128
  loc_B2A079: FLdPr var_128
  loc_B2A07C: from_stack_2 = Me.List(from_stack_1)
  loc_B2A081: ILdRf var_90
  loc_B2A084: ConcatStr
  loc_B2A085: FStStrNoPop var_1A4
  loc_B2A088: LitStr " "
  loc_B2A08B: ConcatStr
  loc_B2A08C: FStStrNoPop var_1B4
  loc_B2A08F: FLdRfVar var_1AC
  loc_B2A092: FLdPr Me
  loc_B2A095: VCallAd Control_ID_cboOperador
  loc_B2A098: FStAdFunc var_1A8
  loc_B2A09B: FLdPr var_1A8
  loc_B2A09E:  = Me.Text
  loc_B2A0A3: FLdZeroAd var_1AC
  loc_B2A0A6: PopTmpLdAdStr
  loc_B2A0AA: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2A0AF: FStStrNoPop var_1B8
  loc_B2A0B2: ConcatStr
  loc_B2A0B3: FStStrNoPop var_1BC
  loc_B2A0B6: LitStr " '"
  loc_B2A0B9: ILdRf var_88
  loc_B2A0BC: ConcatStr
  loc_B2A0BD: FStStrNoPop var_1C0
  loc_B2A0C0: ConcatStr
  loc_B2A0C1: FStStrNoPop var_1CC
  loc_B2A0C4: FLdRfVar var_1C8
  loc_B2A0C7: FLdPr Me
  loc_B2A0CA: VCallAd Control_ID_txtValor
  loc_B2A0CD: FStAdFunc var_1C4
  loc_B2A0D0: FLdPr var_1C4
  loc_B2A0D3:  = Me.Text
  loc_B2A0D8: ILdRf var_1C8
  loc_B2A0DB: ConcatStr
  loc_B2A0DC: FStStrNoPop var_1D0
  loc_B2A0DF: ILdRf var_88
  loc_B2A0E2: ConcatStr
  loc_B2A0E3: FStStrNoPop var_1D4
  loc_B2A0E6: LitStr "'"
  loc_B2A0E9: ConcatStr
  loc_B2A0EA: CVarStr var_D0
  loc_B2A0ED: PopAdLdVar
  loc_B2A0EE: FLdPr Me
  loc_B2A0F1: VCallAd Control_ID_rtfRecordSource
  loc_B2A0F4: FStAdFunc var_1D8
  loc_B2A0F7: FLdPr var_1D8
  loc_B2A0FA: LateIdSt
  loc_B2A0FF: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B2A11A: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B2A129: FFreeVar var_B0 = ""
  loc_B2A130: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9E208C
  'Data Table: 446A50
  loc_9E2070: LitVarStr var_94, vbNullString
  loc_9E2075: PopAdLdVar
  loc_9E2076: FLdPr Me
  loc_9E2079: VCallAd Control_ID_rtfRecordSource
  loc_9E207C: FStAdFunc var_A8
  loc_9E207F: FLdPr var_A8
  loc_9E2082: LateIdSt
  loc_9E2087: FFree1Ad var_A8
  loc_9E208A: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'B00794
  'Data Table: 446A50
  loc_B005B8: FLdPr Me
  loc_B005BB: VCallAd Control_ID_rtfRecordSource
  loc_B005BE: FStAdFunc var_8C
  loc_B005C1: FLdPr var_8C
  loc_B005C4: LateIdLdVar var_9C DispID_-517 -1
  loc_B005CB: PopAd
  loc_B005CD: LitI4 0
  loc_B005D2: LitI4 -1
  loc_B005D7: LitStr " AND"
  loc_B005DA: FLdRfVar var_9C
  loc_B005DD: CStrVarTmp
  loc_B005DE: FStStrNoPop var_A0
  loc_B005E1: ImpAdCallI2 InStrRev(, , , )
  loc_B005E6: CI2I4
  loc_B005E7: FStI2 var_86
  loc_B005EA: FFree1Str var_A0
  loc_B005ED: FFree1Ad var_8C
  loc_B005F0: FFree1Var var_9C = ""
  loc_B005F3: FLdPr Me
  loc_B005F6: VCallAd Control_ID_rtfRecordSource
  loc_B005F9: FStAdFunc var_8C
  loc_B005FC: FLdPr var_8C
  loc_B005FF: LateIdLdVar var_9C DispID_-517 -1
  loc_B00606: PopAd
  loc_B00608: LitI4 0
  loc_B0060D: LitI4 -1
  loc_B00612: LitStr " OR"
  loc_B00615: FLdRfVar var_9C
  loc_B00618: CStrVarTmp
  loc_B00619: FStStrNoPop var_A0
  loc_B0061C: ImpAdCallI2 InStrRev(, , , )
  loc_B00621: CI2I4
  loc_B00622: FStI2 var_88
  loc_B00625: FFree1Str var_A0
  loc_B00628: FFree1Ad var_8C
  loc_B0062B: FFree1Var var_9C = ""
  loc_B0062E: FLdI2 var_86
  loc_B00631: LitI2_Byte 0
  loc_B00633: EqI2
  loc_B00634: FLdI2 var_88
  loc_B00637: LitI2_Byte 0
  loc_B00639: EqI2
  loc_B0063A: AndI4
  loc_B0063B: BranchF loc_B0065B
  loc_B0063E: LitVarStr var_B0, vbNullString
  loc_B00643: PopAdLdVar
  loc_B00644: FLdPr Me
  loc_B00647: VCallAd Control_ID_rtfRecordSource
  loc_B0064A: FStAdFunc var_8C
  loc_B0064D: FLdPr var_8C
  loc_B00650: LateIdSt
  loc_B00655: FFree1Ad var_8C
  loc_B00658: Branch loc_B00792
  loc_B0065B: FLdI2 var_86
  loc_B0065E: FLdI2 var_88
  loc_B00661: GtI2
  loc_B00662: BranchF loc_B006FD
  loc_B00665: FLdPr Me
  loc_B00668: VCallAd Control_ID_rtfRecordSource
  loc_B0066B: FStAdFunc var_8C
  loc_B0066E: FLdPr var_8C
  loc_B00671: LateIdLdVar var_9C DispID_-517 -1
  loc_B00678: PopAd
  loc_B0067A: FLdPr Me
  loc_B0067D: VCallAd Control_ID_rtfRecordSource
  loc_B00680: FStAdFunc var_C4
  loc_B00683: FLdPr var_C4
  loc_B00686: LateIdLdVar var_D4 DispID_-517 -1
  loc_B0068D: PopAd
  loc_B0068F: LitI4 0
  loc_B00694: LitI4 -1
  loc_B00699: LitStr " AND"
  loc_B0069C: FLdRfVar var_D4
  loc_B0069F: CStrVarTmp
  loc_B006A0: FStStrNoPop var_A0
  loc_B006A3: ImpAdCallI2 InStrRev(, , , )
  loc_B006A8: LitI4 1
  loc_B006AD: SubI4
  loc_B006AE: CVarI4
  loc_B006B2: LitI4 1
  loc_B006B7: FLdRfVar var_9C
  loc_B006BA: CStrVarTmp
  loc_B006BB: CVarStr var_E4
  loc_B006BE: FLdRfVar var_104
  loc_B006C1: ImpAdCallFPR4  = Mid(, , )
  loc_B006C6: FLdRfVar var_104
  loc_B006C9: CStrVarTmp
  loc_B006CA: CVarStr var_114
  loc_B006CD: PopAdLdVar
  loc_B006CE: FLdPr Me
  loc_B006D1: VCallAd Control_ID_rtfRecordSource
  loc_B006D4: FStAdFunc var_118
  loc_B006D7: FLdPr var_118
  loc_B006DA: LateIdSt
  loc_B006DF: FFree1Str var_A0
  loc_B006E2: FFreeAd var_8C = "": var_C4 = ""
  loc_B006EB: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B006FA: Branch loc_B00792
  loc_B006FD: FLdPr Me
  loc_B00700: VCallAd Control_ID_rtfRecordSource
  loc_B00703: FStAdFunc var_8C
  loc_B00706: FLdPr var_8C
  loc_B00709: LateIdLdVar var_9C DispID_-517 -1
  loc_B00710: PopAd
  loc_B00712: FLdPr Me
  loc_B00715: VCallAd Control_ID_rtfRecordSource
  loc_B00718: FStAdFunc var_C4
  loc_B0071B: FLdPr var_C4
  loc_B0071E: LateIdLdVar var_D4 DispID_-517 -1
  loc_B00725: PopAd
  loc_B00727: LitI4 0
  loc_B0072C: LitI4 -1
  loc_B00731: LitStr " OR"
  loc_B00734: FLdRfVar var_D4
  loc_B00737: CStrVarTmp
  loc_B00738: FStStrNoPop var_A0
  loc_B0073B: ImpAdCallI2 InStrRev(, , , )
  loc_B00740: LitI4 1
  loc_B00745: SubI4
  loc_B00746: CVarI4
  loc_B0074A: LitI4 1
  loc_B0074F: FLdRfVar var_9C
  loc_B00752: CStrVarTmp
  loc_B00753: CVarStr var_E4
  loc_B00756: FLdRfVar var_104
  loc_B00759: ImpAdCallFPR4  = Mid(, , )
  loc_B0075E: FLdRfVar var_104
  loc_B00761: CStrVarTmp
  loc_B00762: CVarStr var_114
  loc_B00765: PopAdLdVar
  loc_B00766: FLdPr Me
  loc_B00769: VCallAd Control_ID_rtfRecordSource
  loc_B0076C: FStAdFunc var_118
  loc_B0076F: FLdPr var_118
  loc_B00772: LateIdSt
  loc_B00777: FFree1Str var_A0
  loc_B0077A: FFreeAd var_8C = "": var_C4 = ""
  loc_B00783: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B00792: ExitProcHresult
End Sub

Private Sub cmdOr_Click() 'A43000
  'Data Table: 446A50
  loc_A42FBC: FLdPr Me
  loc_A42FBF: VCallAd Control_ID_rtfRecordSource
  loc_A42FC2: FStAdFunc var_88
  loc_A42FC5: FLdPr var_88
  loc_A42FC8: LateIdLdVar var_98 DispID_-517 -1
  loc_A42FCF: CStrVarTmp
  loc_A42FD0: FStStrNoPop var_9C
  loc_A42FD3: LitStr " OR "
  loc_A42FD6: ConcatStr
  loc_A42FD7: CVarStr var_AC
  loc_A42FDA: PopAdLdVar
  loc_A42FDB: FLdPr Me
  loc_A42FDE: VCallAd Control_ID_rtfRecordSource
  loc_A42FE1: FStAdFunc var_C0
  loc_A42FE4: FLdPr var_C0
  loc_A42FE7: LateIdSt
  loc_A42FEC: FFree1Str var_9C
  loc_A42FEF: FFreeAd var_88 = ""
  loc_A42FF6: FFreeVar var_98 = ""
  loc_A42FFD: ExitProcHresult
End Sub

Private Sub CancelButton_Click() 'A42E6C
  'Data Table: 446A50
  loc_A42E24: LitStr "SELECT inmueble.CodiInmu, inmueble.CucuPers, infogov.persona.DetaPers, inmueble.DptoInmu, inmueble.DistInmu, inmueble.SeccInmu, inmueble.ManzInmu, inmueble.ParcInmu, inmueble.SubpInmu, inmueble.DigiInmu, inmueble.NomeInmu"
  loc_A42E27: LitStr " FROM inmueble"
  loc_A42E2A: ConcatStr
  loc_A42E2B: FStStrNoPop var_88
  loc_A42E2E: LitStr " LEFT JOIN infogov.persona On inmueble.CucuPers = infogov.persona.CucuPers"
  loc_A42E31: ConcatStr
  loc_A42E32: FStStrNoPop var_8C
  loc_A42E35: LitStr " ORDER BY inmueble.CodiInmu"
  loc_A42E38: ConcatStr
  loc_A42E39: FStStrNoPop var_90
  loc_A42E3C: FLdPr Me
  loc_A42E3F: MemStStrCopy
  loc_A42E43: FFreeStr var_88 = "": var_8C = ""
  loc_A42E4C: LitStr vbNullString
  loc_A42E4F: FLdPr Me
  loc_A42E52: MemStStrCopy
  loc_A42E56: ILdRf Me
  loc_A42E59: FStAdNoPop
  loc_A42E5D: ImpAdLdRf MemVar_D9C5D8
  loc_A42E60: NewIfNullPr Global
  loc_A42E63: Global.Unload from_stack_1
  loc_A42E68: FFree1Ad var_94
  loc_A42E6B: ExitProcHresult
End Sub

Public Function sPasaSelectGet() '447308
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '447317
  sPasaSelect = Value
End Sub

Public Function sCaptionGet() '447326
  sCaptionGet = sCaption
End Function

Public Sub sCaptionPut(Value) '447335
  sCaption = Value
End Sub

Public Function translateField(Label) 'B2EFA0
  'Data Table: 446A50
  loc_B2ECB8: ZeroRetVal
  loc_B2ECBA: ILdI4 Label
  loc_B2ECBD: FStStrCopy var_8C
  loc_B2ECC0: ILdRf var_8C
  loc_B2ECC3: FLdRfVar translateField
  loc_B2ECC6: LitI2_Byte 0
  loc_B2ECC8: FLdPr Me
  loc_B2ECCB: VCallAd Control_ID_lstCampos
  loc_B2ECCE: FStAdFunc var_90
  loc_B2ECD1: FLdPr var_90
  loc_B2ECD4: from_stack_2 = Me.List(from_stack_1)
  loc_B2ECD9: ILdRf translateField
  loc_B2ECDC: EqStr
  loc_B2ECDE: FFree1Str translateField
  loc_B2ECE1: FFree1Ad var_90
  loc_B2ECE4: BranchF loc_B2ED09
  loc_B2ECE7: FLdRfVar translateField
  loc_B2ECEA: LitI2_Byte 0
  loc_B2ECEC: FLdPr Me
  loc_B2ECEF: VCallAd Control_ID_lstFields
  loc_B2ECF2: FStAdFunc var_90
  loc_B2ECF5: FLdPr var_90
  loc_B2ECF8: from_stack_2 = Me.List(from_stack_1)
  loc_B2ECFD: FLdZeroAd translateField
  loc_B2ED00: FStStr var_88
  loc_B2ED03: FFree1Ad var_90
  loc_B2ED06: Branch loc_B2EF97
  loc_B2ED09: ILdRf var_8C
  loc_B2ED0C: FLdRfVar translateField
  loc_B2ED0F: LitI2_Byte 1
  loc_B2ED11: FLdPr Me
  loc_B2ED14: VCallAd Control_ID_lstCampos
  loc_B2ED17: FStAdFunc var_90
  loc_B2ED1A: FLdPr var_90
  loc_B2ED1D: from_stack_2 = Me.List(from_stack_1)
  loc_B2ED22: ILdRf translateField
  loc_B2ED25: EqStr
  loc_B2ED27: FFree1Str translateField
  loc_B2ED2A: FFree1Ad var_90
  loc_B2ED2D: BranchF loc_B2ED52
  loc_B2ED30: FLdRfVar translateField
  loc_B2ED33: LitI2_Byte 1
  loc_B2ED35: FLdPr Me
  loc_B2ED38: VCallAd Control_ID_lstFields
  loc_B2ED3B: FStAdFunc var_90
  loc_B2ED3E: FLdPr var_90
  loc_B2ED41: from_stack_2 = Me.List(from_stack_1)
  loc_B2ED46: FLdZeroAd translateField
  loc_B2ED49: FStStr var_88
  loc_B2ED4C: FFree1Ad var_90
  loc_B2ED4F: Branch loc_B2EF97
  loc_B2ED52: ILdRf var_8C
  loc_B2ED55: FLdRfVar translateField
  loc_B2ED58: LitI2_Byte 2
  loc_B2ED5A: FLdPr Me
  loc_B2ED5D: VCallAd Control_ID_lstCampos
  loc_B2ED60: FStAdFunc var_90
  loc_B2ED63: FLdPr var_90
  loc_B2ED66: from_stack_2 = Me.List(from_stack_1)
  loc_B2ED6B: ILdRf translateField
  loc_B2ED6E: EqStr
  loc_B2ED70: FFree1Str translateField
  loc_B2ED73: FFree1Ad var_90
  loc_B2ED76: BranchF loc_B2ED9B
  loc_B2ED79: FLdRfVar translateField
  loc_B2ED7C: LitI2_Byte 2
  loc_B2ED7E: FLdPr Me
  loc_B2ED81: VCallAd Control_ID_lstFields
  loc_B2ED84: FStAdFunc var_90
  loc_B2ED87: FLdPr var_90
  loc_B2ED8A: from_stack_2 = Me.List(from_stack_1)
  loc_B2ED8F: FLdZeroAd translateField
  loc_B2ED92: FStStr var_88
  loc_B2ED95: FFree1Ad var_90
  loc_B2ED98: Branch loc_B2EF97
  loc_B2ED9B: ILdRf var_8C
  loc_B2ED9E: FLdRfVar translateField
  loc_B2EDA1: LitI2_Byte 3
  loc_B2EDA3: FLdPr Me
  loc_B2EDA6: VCallAd Control_ID_lstCampos
  loc_B2EDA9: FStAdFunc var_90
  loc_B2EDAC: FLdPr var_90
  loc_B2EDAF: from_stack_2 = Me.List(from_stack_1)
  loc_B2EDB4: ILdRf translateField
  loc_B2EDB7: EqStr
  loc_B2EDB9: FFree1Str translateField
  loc_B2EDBC: FFree1Ad var_90
  loc_B2EDBF: BranchF loc_B2EDE4
  loc_B2EDC2: FLdRfVar translateField
  loc_B2EDC5: LitI2_Byte 3
  loc_B2EDC7: FLdPr Me
  loc_B2EDCA: VCallAd Control_ID_lstFields
  loc_B2EDCD: FStAdFunc var_90
  loc_B2EDD0: FLdPr var_90
  loc_B2EDD3: from_stack_2 = Me.List(from_stack_1)
  loc_B2EDD8: FLdZeroAd translateField
  loc_B2EDDB: FStStr var_88
  loc_B2EDDE: FFree1Ad var_90
  loc_B2EDE1: Branch loc_B2EF97
  loc_B2EDE4: ILdRf var_8C
  loc_B2EDE7: FLdRfVar translateField
  loc_B2EDEA: LitI2_Byte 4
  loc_B2EDEC: FLdPr Me
  loc_B2EDEF: VCallAd Control_ID_lstCampos
  loc_B2EDF2: FStAdFunc var_90
  loc_B2EDF5: FLdPr var_90
  loc_B2EDF8: from_stack_2 = Me.List(from_stack_1)
  loc_B2EDFD: ILdRf translateField
  loc_B2EE00: EqStr
  loc_B2EE02: FFree1Str translateField
  loc_B2EE05: FFree1Ad var_90
  loc_B2EE08: BranchF loc_B2EE2D
  loc_B2EE0B: FLdRfVar translateField
  loc_B2EE0E: LitI2_Byte 4
  loc_B2EE10: FLdPr Me
  loc_B2EE13: VCallAd Control_ID_lstFields
  loc_B2EE16: FStAdFunc var_90
  loc_B2EE19: FLdPr var_90
  loc_B2EE1C: from_stack_2 = Me.List(from_stack_1)
  loc_B2EE21: FLdZeroAd translateField
  loc_B2EE24: FStStr var_88
  loc_B2EE27: FFree1Ad var_90
  loc_B2EE2A: Branch loc_B2EF97
  loc_B2EE2D: ILdRf var_8C
  loc_B2EE30: FLdRfVar translateField
  loc_B2EE33: LitI2_Byte 5
  loc_B2EE35: FLdPr Me
  loc_B2EE38: VCallAd Control_ID_lstCampos
  loc_B2EE3B: FStAdFunc var_90
  loc_B2EE3E: FLdPr var_90
  loc_B2EE41: from_stack_2 = Me.List(from_stack_1)
  loc_B2EE46: ILdRf translateField
  loc_B2EE49: EqStr
  loc_B2EE4B: FFree1Str translateField
  loc_B2EE4E: FFree1Ad var_90
  loc_B2EE51: BranchF loc_B2EE76
  loc_B2EE54: FLdRfVar translateField
  loc_B2EE57: LitI2_Byte 5
  loc_B2EE59: FLdPr Me
  loc_B2EE5C: VCallAd Control_ID_lstFields
  loc_B2EE5F: FStAdFunc var_90
  loc_B2EE62: FLdPr var_90
  loc_B2EE65: from_stack_2 = Me.List(from_stack_1)
  loc_B2EE6A: FLdZeroAd translateField
  loc_B2EE6D: FStStr var_88
  loc_B2EE70: FFree1Ad var_90
  loc_B2EE73: Branch loc_B2EF97
  loc_B2EE76: ILdRf var_8C
  loc_B2EE79: FLdRfVar translateField
  loc_B2EE7C: LitI2_Byte 6
  loc_B2EE7E: FLdPr Me
  loc_B2EE81: VCallAd Control_ID_lstCampos
  loc_B2EE84: FStAdFunc var_90
  loc_B2EE87: FLdPr var_90
  loc_B2EE8A: from_stack_2 = Me.List(from_stack_1)
  loc_B2EE8F: ILdRf translateField
  loc_B2EE92: EqStr
  loc_B2EE94: FFree1Str translateField
  loc_B2EE97: FFree1Ad var_90
  loc_B2EE9A: BranchF loc_B2EEBF
  loc_B2EE9D: FLdRfVar translateField
  loc_B2EEA0: LitI2_Byte 6
  loc_B2EEA2: FLdPr Me
  loc_B2EEA5: VCallAd Control_ID_lstFields
  loc_B2EEA8: FStAdFunc var_90
  loc_B2EEAB: FLdPr var_90
  loc_B2EEAE: from_stack_2 = Me.List(from_stack_1)
  loc_B2EEB3: FLdZeroAd translateField
  loc_B2EEB6: FStStr var_88
  loc_B2EEB9: FFree1Ad var_90
  loc_B2EEBC: Branch loc_B2EF97
  loc_B2EEBF: ILdRf var_8C
  loc_B2EEC2: FLdRfVar translateField
  loc_B2EEC5: LitI2_Byte 7
  loc_B2EEC7: FLdPr Me
  loc_B2EECA: VCallAd Control_ID_lstCampos
  loc_B2EECD: FStAdFunc var_90
  loc_B2EED0: FLdPr var_90
  loc_B2EED3: from_stack_2 = Me.List(from_stack_1)
  loc_B2EED8: ILdRf translateField
  loc_B2EEDB: EqStr
  loc_B2EEDD: FFree1Str translateField
  loc_B2EEE0: FFree1Ad var_90
  loc_B2EEE3: BranchF loc_B2EF08
  loc_B2EEE6: FLdRfVar translateField
  loc_B2EEE9: LitI2_Byte 7
  loc_B2EEEB: FLdPr Me
  loc_B2EEEE: VCallAd Control_ID_lstFields
  loc_B2EEF1: FStAdFunc var_90
  loc_B2EEF4: FLdPr var_90
  loc_B2EEF7: from_stack_2 = Me.List(from_stack_1)
  loc_B2EEFC: FLdZeroAd translateField
  loc_B2EEFF: FStStr var_88
  loc_B2EF02: FFree1Ad var_90
  loc_B2EF05: Branch loc_B2EF97
  loc_B2EF08: ILdRf var_8C
  loc_B2EF0B: FLdRfVar translateField
  loc_B2EF0E: LitI2_Byte 8
  loc_B2EF10: FLdPr Me
  loc_B2EF13: VCallAd Control_ID_lstCampos
  loc_B2EF16: FStAdFunc var_90
  loc_B2EF19: FLdPr var_90
  loc_B2EF1C: from_stack_2 = Me.List(from_stack_1)
  loc_B2EF21: ILdRf translateField
  loc_B2EF24: EqStr
  loc_B2EF26: FFree1Str translateField
  loc_B2EF29: FFree1Ad var_90
  loc_B2EF2C: BranchF loc_B2EF51
  loc_B2EF2F: FLdRfVar translateField
  loc_B2EF32: LitI2_Byte 8
  loc_B2EF34: FLdPr Me
  loc_B2EF37: VCallAd Control_ID_lstFields
  loc_B2EF3A: FStAdFunc var_90
  loc_B2EF3D: FLdPr var_90
  loc_B2EF40: from_stack_2 = Me.List(from_stack_1)
  loc_B2EF45: FLdZeroAd translateField
  loc_B2EF48: FStStr var_88
  loc_B2EF4B: FFree1Ad var_90
  loc_B2EF4E: Branch loc_B2EF97
  loc_B2EF51: ILdRf var_8C
  loc_B2EF54: FLdRfVar translateField
  loc_B2EF57: LitI2_Byte 9
  loc_B2EF59: FLdPr Me
  loc_B2EF5C: VCallAd Control_ID_lstCampos
  loc_B2EF5F: FStAdFunc var_90
  loc_B2EF62: FLdPr var_90
  loc_B2EF65: from_stack_2 = Me.List(from_stack_1)
  loc_B2EF6A: ILdRf translateField
  loc_B2EF6D: EqStr
  loc_B2EF6F: FFree1Str translateField
  loc_B2EF72: FFree1Ad var_90
  loc_B2EF75: BranchF loc_B2EF97
  loc_B2EF78: FLdRfVar translateField
  loc_B2EF7B: LitI2_Byte 9
  loc_B2EF7D: FLdPr Me
  loc_B2EF80: VCallAd Control_ID_lstFields
  loc_B2EF83: FStAdFunc var_90
  loc_B2EF86: FLdPr var_90
  loc_B2EF89: from_stack_2 = Me.List(from_stack_1)
  loc_B2EF8E: FLdZeroAd translateField
  loc_B2EF91: FStStr var_88
  loc_B2EF94: FFree1Ad var_90
  loc_B2EF97: ExitProcCbHresult
  loc_B2EF9D: NeStr
End Function
