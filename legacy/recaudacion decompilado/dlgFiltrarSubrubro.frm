VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form dlgFiltrarSubrubro
  Caption = "FiltrarSubrubro"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgFiltrarSubrubro.frx":0000
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
    OleObjectBlob = "dlgFiltrarSubrubro.frx":08CA
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

Attribute VB_Name = "dlgFiltrarSubrubro"

Public sPasaSelect As String
Public sCaption As String


Private Sub txtValor_GotFocus() '9C5228
  'Data Table: 443840
  loc_9C5214: FLdPr Me
  loc_9C5217: VCallAd Control_ID_txtValor
  loc_9C521A: CVarAd
  loc_9C521E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5223: FFree1Var var_94 = ""
  loc_9C5226: ExitProcHresult
End Sub

Private Sub Form_Load() 'ADF2B0
  'Data Table: 443840
  loc_ADF154: LitStr "Filtrar Rubro"
  loc_ADF157: FLdPr Me
  loc_ADF15A: Me.Caption = from_stack_1
  loc_ADF15F: FLdPr Me
  loc_ADF162: VCallAd Control_ID_lstCampos
  loc_ADF165: FStAdFunc var_88
  loc_ADF168: LitVarI2 var_98, 0
  loc_ADF16D: PopAdLdVar
  loc_ADF16E: LitStr "Código Ramo"
  loc_ADF171: FLdPr var_88
  loc_ADF174: Me.AddItem from_stack_1, from_stack_2
  loc_ADF179: LitVarI2 var_98, 1
  loc_ADF17E: PopAdLdVar
  loc_ADF17F: LitStr "Código Rubro"
  loc_ADF182: FLdPr var_88
  loc_ADF185: Me.AddItem from_stack_1, from_stack_2
  loc_ADF18A: LitVarI2 var_98, 2
  loc_ADF18F: PopAdLdVar
  loc_ADF190: LitStr "Código Subrubro"
  loc_ADF193: FLdPr var_88
  loc_ADF196: Me.AddItem from_stack_1, from_stack_2
  loc_ADF19B: LitVarI2 var_98, 3
  loc_ADF1A0: PopAdLdVar
  loc_ADF1A1: LitStr "Detalle Subrubro"
  loc_ADF1A4: FLdPr var_88
  loc_ADF1A7: Me.AddItem from_stack_1, from_stack_2
  loc_ADF1AC: LitNothing
  loc_ADF1AE: FStAd var_88 
  loc_ADF1B2: FLdPr Me
  loc_ADF1B5: VCallAd Control_ID_lstFields
  loc_ADF1B8: FStAdFunc var_9C
  loc_ADF1BB: LitVarI2 var_98, 0
  loc_ADF1C0: PopAdLdVar
  loc_ADF1C1: LitStr "subrubro.CodiRamo"
  loc_ADF1C4: FLdPr var_9C
  loc_ADF1C7: Me.AddItem from_stack_1, from_stack_2
  loc_ADF1CC: LitVarI2 var_98, 1
  loc_ADF1D1: PopAdLdVar
  loc_ADF1D2: LitStr "subrubro.CodiRubr"
  loc_ADF1D5: FLdPr var_9C
  loc_ADF1D8: Me.AddItem from_stack_1, from_stack_2
  loc_ADF1DD: LitVarI2 var_98, 2
  loc_ADF1E2: PopAdLdVar
  loc_ADF1E3: LitStr "subrubro.CodiSubr"
  loc_ADF1E6: FLdPr var_9C
  loc_ADF1E9: Me.AddItem from_stack_1, from_stack_2
  loc_ADF1EE: LitVarI2 var_98, 3
  loc_ADF1F3: PopAdLdVar
  loc_ADF1F4: LitStr "subrubro.DetaSubr"
  loc_ADF1F7: FLdPr var_9C
  loc_ADF1FA: Me.AddItem from_stack_1, from_stack_2
  loc_ADF1FF: LitNothing
  loc_ADF201: FStAd var_9C 
  loc_ADF205: FLdPr Me
  loc_ADF208: VCallAd Control_ID_cboOperador
  loc_ADF20B: FStAdFunc var_A0
  loc_ADF20E: LitVar_Missing var_98
  loc_ADF211: PopAdLdVar
  loc_ADF212: LitStr "Mayor o Igual que"
  loc_ADF215: FLdPr var_A0
  loc_ADF218: Me.AddItem from_stack_1, from_stack_2
  loc_ADF21D: LitVar_Missing var_98
  loc_ADF220: PopAdLdVar
  loc_ADF221: LitStr "Mayor que"
  loc_ADF224: FLdPr var_A0
  loc_ADF227: Me.AddItem from_stack_1, from_stack_2
  loc_ADF22C: LitVar_Missing var_98
  loc_ADF22F: PopAdLdVar
  loc_ADF230: LitStr "Igual a"
  loc_ADF233: FLdPr var_A0
  loc_ADF236: Me.AddItem from_stack_1, from_stack_2
  loc_ADF23B: LitVar_Missing var_98
  loc_ADF23E: PopAdLdVar
  loc_ADF23F: LitStr "Distinto a"
  loc_ADF242: FLdPr var_A0
  loc_ADF245: Me.AddItem from_stack_1, from_stack_2
  loc_ADF24A: LitVar_Missing var_98
  loc_ADF24D: PopAdLdVar
  loc_ADF24E: LitStr "Contiene"
  loc_ADF251: FLdPr var_A0
  loc_ADF254: Me.AddItem from_stack_1, from_stack_2
  loc_ADF259: LitVar_Missing var_98
  loc_ADF25C: PopAdLdVar
  loc_ADF25D: LitStr "Menor que"
  loc_ADF260: FLdPr var_A0
  loc_ADF263: Me.AddItem from_stack_1, from_stack_2
  loc_ADF268: LitVar_Missing var_98
  loc_ADF26B: PopAdLdVar
  loc_ADF26C: LitStr "Menor o Igual que"
  loc_ADF26F: FLdPr var_A0
  loc_ADF272: Me.AddItem from_stack_1, from_stack_2
  loc_ADF277: LitNothing
  loc_ADF279: FStAd var_A0 
  loc_ADF27D: LitI2_Byte &HFF
  loc_ADF27F: LitI2_Byte 0
  loc_ADF281: FLdPr Me
  loc_ADF284: VCallAd Control_ID_lstCampos
  loc_ADF287: FStAdFunc var_A4
  loc_ADF28A: FLdPr var_A4
  loc_ADF28D: Me.Selected = from_stack_1
  loc_ADF292: FFree1Ad var_A4
  loc_ADF295: LitStr "Igual a"
  loc_ADF298: FLdPr Me
  loc_ADF29B: VCallAd Control_ID_cboOperador
  loc_ADF29E: FStAdFunc var_A4
  loc_ADF2A1: FLdPr var_A4
  loc_ADF2A4: Me.Text = from_stack_1
  loc_ADF2A9: FFree1Ad var_A4
  loc_ADF2AC: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'AAECA8
  'Data Table: 443840
  loc_AAEBE0: FLdPr Me
  loc_AAEBE3: VCallAd Control_ID_rtfRecordSource
  loc_AAEBE6: FStAdFunc var_88
  loc_AAEBE9: FLdPr var_88
  loc_AAEBEC: LateIdLdVar var_98 DispID_-517 -1
  loc_AAEBF3: CStrVarTmp
  loc_AAEBF4: FStStrNoPop var_9C
  loc_AAEBF7: LitStr vbNullString
  loc_AAEBFA: NeStr
  loc_AAEBFC: FFree1Str var_9C
  loc_AAEBFF: FFree1Ad var_88
  loc_AAEC02: FFree1Var var_98 = ""
  loc_AAEC05: BranchF loc_AAEC8A
  loc_AAEC08: LitStr "SELECT subrubro.CodiRamo, DetaRamo, subrubro.CodiRubr, DetaRubr, CodiSubr, DetaSubr FROM subrubro "
  loc_AAEC0B: LitStr " LEFT JOIN ramo ON subrubro.CodiRamo = ramo.CodiRamo"
  loc_AAEC0E: ConcatStr
  loc_AAEC0F: FStStrNoPop var_9C
  loc_AAEC12: LitStr " LEFT JOIN rubro ON subrubro.codiramo = rubro.CodiRamo AND subrubro.CodiRubr = rubro.CodiRubr"
  loc_AAEC15: ConcatStr
  loc_AAEC16: FStStrNoPop var_A0
  loc_AAEC19: LitStr " WHERE "
  loc_AAEC1C: ConcatStr
  loc_AAEC1D: FStStrNoPop var_A4
  loc_AAEC20: FLdPr Me
  loc_AAEC23: VCallAd Control_ID_rtfRecordSource
  loc_AAEC26: FStAdFunc var_88
  loc_AAEC29: FLdPr var_88
  loc_AAEC2C: LateIdLdVar var_98 DispID_-517 -1
  loc_AAEC33: CStrVarTmp
  loc_AAEC34: FStStrNoPop var_A8
  loc_AAEC37: ConcatStr
  loc_AAEC38: FStStrNoPop var_AC
  loc_AAEC3B: FLdPr Me
  loc_AAEC3E: MemStStrCopy
  loc_AAEC42: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_AAEC4F: FFree1Ad var_88
  loc_AAEC52: FFree1Var var_98 = ""
  loc_AAEC55: LitStr "Filtro aplicado: "
  loc_AAEC58: FLdPr Me
  loc_AAEC5B: VCallAd Control_ID_rtfRecordSource
  loc_AAEC5E: FStAdFunc var_88
  loc_AAEC61: FLdPr var_88
  loc_AAEC64: LateIdLdVar var_98 DispID_-517 -1
  loc_AAEC6B: CStrVarTmp
  loc_AAEC6C: FStStrNoPop var_9C
  loc_AAEC6F: ConcatStr
  loc_AAEC70: FStStrNoPop var_A0
  loc_AAEC73: FLdPr Me
  loc_AAEC76: MemStStrCopy
  loc_AAEC7A: FFreeStr var_9C = ""
  loc_AAEC81: FFree1Ad var_88
  loc_AAEC84: FFree1Var var_98 = ""
  loc_AAEC87: Branch loc_AAEC8F
  loc_AAEC8A: Call CancelButton_Click()
  loc_AAEC8F: ILdRf Me
  loc_AAEC92: FStAdNoPop
  loc_AAEC96: ImpAdLdRf MemVar_D9C5D8
  loc_AAEC99: NewIfNullPr Global
  loc_AAEC9C: Global.Unload from_stack_1
  loc_AAECA1: FFree1Ad var_88
  loc_AAECA4: ExitProcHresult
  loc_AAECA7: PopAdLdVar
End Sub

Private Sub cmdAnd_Click() 'A42340
  'Data Table: 443840
  loc_A422FC: FLdPr Me
  loc_A422FF: VCallAd Control_ID_rtfRecordSource
  loc_A42302: FStAdFunc var_88
  loc_A42305: FLdPr var_88
  loc_A42308: LateIdLdVar var_98 DispID_-517 -1
  loc_A4230F: CStrVarTmp
  loc_A42310: FStStrNoPop var_9C
  loc_A42313: LitStr " AND "
  loc_A42316: ConcatStr
  loc_A42317: CVarStr var_AC
  loc_A4231A: PopAdLdVar
  loc_A4231B: FLdPr Me
  loc_A4231E: VCallAd Control_ID_rtfRecordSource
  loc_A42321: FStAdFunc var_C0
  loc_A42324: FLdPr var_C0
  loc_A42327: LateIdSt
  loc_A4232C: FFree1Str var_9C
  loc_A4232F: FFreeAd var_88 = ""
  loc_A42336: FFreeVar var_98 = ""
  loc_A4233D: ExitProcHresult
End Sub

Private Sub cmdAgregar_Click() 'B297EC
  'Data Table: 443840
  loc_B29584: FLdRfVar var_90
  loc_B29587: FLdPr Me
  loc_B2958A: VCallAd Control_ID_txtValor
  loc_B2958D: FStAdFunc var_8C
  loc_B29590: FLdPr var_8C
  loc_B29593:  = Me.Text
  loc_B29598: ILdRf var_90
  loc_B2959B: LitStr vbNullString
  loc_B2959E: EqStr
  loc_B295A0: FFree1Str var_90
  loc_B295A3: FFree1Ad var_8C
  loc_B295A6: BranchF loc_B295DB
  loc_B295A9: LitVar_Missing var_110
  loc_B295AC: LitVar_Missing var_F0
  loc_B295AF: LitVarStr var_C0, "InfoGov"
  loc_B295B4: FStVarCopyObj var_D0
  loc_B295B7: FLdRfVar var_D0
  loc_B295BA: LitI4 &H30
  loc_B295BF: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B295C4: FStVarCopyObj var_B0
  loc_B295C7: FLdRfVar var_B0
  loc_B295CA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B295CF: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B295DA: ExitProcHresult
  loc_B295DB: FLdPr Me
  loc_B295DE: VCallAd Control_ID_rtfRecordSource
  loc_B295E1: FStAdFunc var_8C
  loc_B295E4: FLdPr var_8C
  loc_B295E7: LateIdLdVar var_B0 DispID_-517 -1
  loc_B295EE: CStrVarTmp
  loc_B295EF: FStStrNoPop var_90
  loc_B295F2: FLdPr Me
  loc_B295F5: MemStStrCopy
  loc_B295F9: FFree1Str var_90
  loc_B295FC: FFree1Ad var_8C
  loc_B295FF: FFree1Var var_B0 = ""
  loc_B29602: FLdPr Me
  loc_B29605: VCallAd Control_ID_rtfRecordSource
  loc_B29608: FStAdFunc var_114
  loc_B2960B: FLdPr var_114
  loc_B2960E: LateIdLdVar var_D0 DispID_-517 -1
  loc_B29615: PopAd
  loc_B29617: FLdPr Me
  loc_B2961A: VCallAd Control_ID_rtfRecordSource
  loc_B2961D: FStAdFunc var_128
  loc_B29620: FLdPr var_128
  loc_B29623: LateIdLdVar var_138 DispID_-517 -1
  loc_B2962A: PopAd
  loc_B2962C: FLdPr Me
  loc_B2962F: VCallAd Control_ID_rtfRecordSource
  loc_B29632: FStAdFunc var_8C
  loc_B29635: FLdPr var_8C
  loc_B29638: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2963F: CStrVarTmp
  loc_B29640: FStStrNoPop var_90
  loc_B29643: LitStr vbNullString
  loc_B29646: NeStr
  loc_B29648: CVarBoolI2 var_E0
  loc_B2964C: LitI4 4
  loc_B29651: FLdRfVar var_D0
  loc_B29654: CStrVarTmp
  loc_B29655: CVarStr var_F0
  loc_B29658: FLdRfVar var_110
  loc_B2965B: ImpAdCallFPR4  = Right(, )
  loc_B29660: FLdRfVar var_110
  loc_B29663: LitVarStr var_A0, "AND "
  loc_B29668: HardType
  loc_B29669: EqVar var_124
  loc_B2966D: LitI4 3
  loc_B29672: FLdRfVar var_138
  loc_B29675: CStrVarTmp
  loc_B29676: CVarStr var_148
  loc_B29679: FLdRfVar var_158
  loc_B2967C: ImpAdCallFPR4  = Right(, )
  loc_B29681: FLdRfVar var_158
  loc_B29684: LitVarStr var_C0, "OR "
  loc_B29689: HardType
  loc_B2968A: EqVar var_168
  loc_B2968E: OrVar var_178
  loc_B29692: NotVar var_188
  loc_B29696: AndVar var_198
  loc_B2969A: CBoolVarNull
  loc_B2969C: FFree1Str var_90
  loc_B2969F: FFreeAd var_8C = "": var_114 = ""
  loc_B296A8: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B296BB: BranchF loc_B296C3
  loc_B296BE: Call cmdAnd_Click()
  loc_B296C3: FLdRfVar var_90
  loc_B296C6: FLdPr Me
  loc_B296C9: VCallAd Control_ID_cboOperador
  loc_B296CC: FStAdFunc var_8C
  loc_B296CF: FLdPr var_8C
  loc_B296D2:  = Me.Text
  loc_B296D7: ILdRf var_90
  loc_B296DA: LitStr "Contiene"
  loc_B296DD: EqStr
  loc_B296DF: FFree1Str var_90
  loc_B296E2: FFree1Ad var_8C
  loc_B296E5: BranchF loc_B296F1
  loc_B296E8: LitStr Chr(37)
  loc_B296EB: FStStrCopy var_88
  loc_B296EE: Branch loc_B296F7
  loc_B296F1: LitStr vbNullString
  loc_B296F4: FStStrCopy var_88
  loc_B296F7: FLdPr Me
  loc_B296FA: VCallAd Control_ID_rtfRecordSource
  loc_B296FD: FStAdFunc var_8C
  loc_B29700: FLdPr var_8C
  loc_B29703: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2970A: CStrVarTmp
  loc_B2970B: FStStrNoPop var_1A0
  loc_B2970E: FLdRfVar var_90
  loc_B29711: FLdRfVar var_19A
  loc_B29714: FLdPr Me
  loc_B29717: VCallAd Control_ID_lstCampos
  loc_B2971A: FStAdFunc var_114
  loc_B2971D: FLdPr var_114
  loc_B29720:  = Me.ListIndex
  loc_B29725: FLdI2 var_19A
  loc_B29728: FLdPr Me
  loc_B2972B: VCallAd Control_ID_lstFields
  loc_B2972E: FStAdFunc var_128
  loc_B29731: FLdPr var_128
  loc_B29734: from_stack_2 = Me.List(from_stack_1)
  loc_B29739: ILdRf var_90
  loc_B2973C: ConcatStr
  loc_B2973D: FStStrNoPop var_1A4
  loc_B29740: LitStr " "
  loc_B29743: ConcatStr
  loc_B29744: FStStrNoPop var_1B4
  loc_B29747: FLdRfVar var_1AC
  loc_B2974A: FLdPr Me
  loc_B2974D: VCallAd Control_ID_cboOperador
  loc_B29750: FStAdFunc var_1A8
  loc_B29753: FLdPr var_1A8
  loc_B29756:  = Me.Text
  loc_B2975B: FLdZeroAd var_1AC
  loc_B2975E: PopTmpLdAdStr
  loc_B29762: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B29767: FStStrNoPop var_1B8
  loc_B2976A: ConcatStr
  loc_B2976B: FStStrNoPop var_1BC
  loc_B2976E: LitStr " '"
  loc_B29771: ILdRf var_88
  loc_B29774: ConcatStr
  loc_B29775: FStStrNoPop var_1C0
  loc_B29778: ConcatStr
  loc_B29779: FStStrNoPop var_1CC
  loc_B2977C: FLdRfVar var_1C8
  loc_B2977F: FLdPr Me
  loc_B29782: VCallAd Control_ID_txtValor
  loc_B29785: FStAdFunc var_1C4
  loc_B29788: FLdPr var_1C4
  loc_B2978B:  = Me.Text
  loc_B29790: ILdRf var_1C8
  loc_B29793: ConcatStr
  loc_B29794: FStStrNoPop var_1D0
  loc_B29797: ILdRf var_88
  loc_B2979A: ConcatStr
  loc_B2979B: FStStrNoPop var_1D4
  loc_B2979E: LitStr "'"
  loc_B297A1: ConcatStr
  loc_B297A2: CVarStr var_D0
  loc_B297A5: PopAdLdVar
  loc_B297A6: FLdPr Me
  loc_B297A9: VCallAd Control_ID_rtfRecordSource
  loc_B297AC: FStAdFunc var_1D8
  loc_B297AF: FLdPr var_1D8
  loc_B297B2: LateIdSt
  loc_B297B7: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B297D2: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B297E1: FFreeVar var_B0 = ""
  loc_B297E8: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9E163C
  'Data Table: 443840
  loc_9E1620: LitVarStr var_94, vbNullString
  loc_9E1625: PopAdLdVar
  loc_9E1626: FLdPr Me
  loc_9E1629: VCallAd Control_ID_rtfRecordSource
  loc_9E162C: FStAdFunc var_A8
  loc_9E162F: FLdPr var_A8
  loc_9E1632: LateIdSt
  loc_9E1637: FFree1Ad var_A8
  loc_9E163A: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'B000F8
  'Data Table: 443840
  loc_AFFF1C: FLdPr Me
  loc_AFFF1F: VCallAd Control_ID_rtfRecordSource
  loc_AFFF22: FStAdFunc var_8C
  loc_AFFF25: FLdPr var_8C
  loc_AFFF28: LateIdLdVar var_9C DispID_-517 -1
  loc_AFFF2F: PopAd
  loc_AFFF31: LitI4 0
  loc_AFFF36: LitI4 -1
  loc_AFFF3B: LitStr " AND"
  loc_AFFF3E: FLdRfVar var_9C
  loc_AFFF41: CStrVarTmp
  loc_AFFF42: FStStrNoPop var_A0
  loc_AFFF45: ImpAdCallI2 InStrRev(, , , )
  loc_AFFF4A: CI2I4
  loc_AFFF4B: FStI2 var_86
  loc_AFFF4E: FFree1Str var_A0
  loc_AFFF51: FFree1Ad var_8C
  loc_AFFF54: FFree1Var var_9C = ""
  loc_AFFF57: FLdPr Me
  loc_AFFF5A: VCallAd Control_ID_rtfRecordSource
  loc_AFFF5D: FStAdFunc var_8C
  loc_AFFF60: FLdPr var_8C
  loc_AFFF63: LateIdLdVar var_9C DispID_-517 -1
  loc_AFFF6A: PopAd
  loc_AFFF6C: LitI4 0
  loc_AFFF71: LitI4 -1
  loc_AFFF76: LitStr " OR"
  loc_AFFF79: FLdRfVar var_9C
  loc_AFFF7C: CStrVarTmp
  loc_AFFF7D: FStStrNoPop var_A0
  loc_AFFF80: ImpAdCallI2 InStrRev(, , , )
  loc_AFFF85: CI2I4
  loc_AFFF86: FStI2 var_88
  loc_AFFF89: FFree1Str var_A0
  loc_AFFF8C: FFree1Ad var_8C
  loc_AFFF8F: FFree1Var var_9C = ""
  loc_AFFF92: FLdI2 var_86
  loc_AFFF95: LitI2_Byte 0
  loc_AFFF97: EqI2
  loc_AFFF98: FLdI2 var_88
  loc_AFFF9B: LitI2_Byte 0
  loc_AFFF9D: EqI2
  loc_AFFF9E: AndI4
  loc_AFFF9F: BranchF loc_AFFFBF
  loc_AFFFA2: LitVarStr var_B0, vbNullString
  loc_AFFFA7: PopAdLdVar
  loc_AFFFA8: FLdPr Me
  loc_AFFFAB: VCallAd Control_ID_rtfRecordSource
  loc_AFFFAE: FStAdFunc var_8C
  loc_AFFFB1: FLdPr var_8C
  loc_AFFFB4: LateIdSt
  loc_AFFFB9: FFree1Ad var_8C
  loc_AFFFBC: Branch loc_B000F6
  loc_AFFFBF: FLdI2 var_86
  loc_AFFFC2: FLdI2 var_88
  loc_AFFFC5: GtI2
  loc_AFFFC6: BranchF loc_B00061
  loc_AFFFC9: FLdPr Me
  loc_AFFFCC: VCallAd Control_ID_rtfRecordSource
  loc_AFFFCF: FStAdFunc var_8C
  loc_AFFFD2: FLdPr var_8C
  loc_AFFFD5: LateIdLdVar var_9C DispID_-517 -1
  loc_AFFFDC: PopAd
  loc_AFFFDE: FLdPr Me
  loc_AFFFE1: VCallAd Control_ID_rtfRecordSource
  loc_AFFFE4: FStAdFunc var_C4
  loc_AFFFE7: FLdPr var_C4
  loc_AFFFEA: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFFFF1: PopAd
  loc_AFFFF3: LitI4 0
  loc_AFFFF8: LitI4 -1
  loc_AFFFFD: LitStr " AND"
  loc_B00000: FLdRfVar var_D4
  loc_B00003: CStrVarTmp
  loc_B00004: FStStrNoPop var_A0
  loc_B00007: ImpAdCallI2 InStrRev(, , , )
  loc_B0000C: LitI4 1
  loc_B00011: SubI4
  loc_B00012: CVarI4
  loc_B00016: LitI4 1
  loc_B0001B: FLdRfVar var_9C
  loc_B0001E: CStrVarTmp
  loc_B0001F: CVarStr var_E4
  loc_B00022: FLdRfVar var_104
  loc_B00025: ImpAdCallFPR4  = Mid(, , )
  loc_B0002A: FLdRfVar var_104
  loc_B0002D: CStrVarTmp
  loc_B0002E: CVarStr var_114
  loc_B00031: PopAdLdVar
  loc_B00032: FLdPr Me
  loc_B00035: VCallAd Control_ID_rtfRecordSource
  loc_B00038: FStAdFunc var_118
  loc_B0003B: FLdPr var_118
  loc_B0003E: LateIdSt
  loc_B00043: FFree1Str var_A0
  loc_B00046: FFreeAd var_8C = "": var_C4 = ""
  loc_B0004F: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B0005E: Branch loc_B000F6
  loc_B00061: FLdPr Me
  loc_B00064: VCallAd Control_ID_rtfRecordSource
  loc_B00067: FStAdFunc var_8C
  loc_B0006A: FLdPr var_8C
  loc_B0006D: LateIdLdVar var_9C DispID_-517 -1
  loc_B00074: PopAd
  loc_B00076: FLdPr Me
  loc_B00079: VCallAd Control_ID_rtfRecordSource
  loc_B0007C: FStAdFunc var_C4
  loc_B0007F: FLdPr var_C4
  loc_B00082: LateIdLdVar var_D4 DispID_-517 -1
  loc_B00089: PopAd
  loc_B0008B: LitI4 0
  loc_B00090: LitI4 -1
  loc_B00095: LitStr " OR"
  loc_B00098: FLdRfVar var_D4
  loc_B0009B: CStrVarTmp
  loc_B0009C: FStStrNoPop var_A0
  loc_B0009F: ImpAdCallI2 InStrRev(, , , )
  loc_B000A4: LitI4 1
  loc_B000A9: SubI4
  loc_B000AA: CVarI4
  loc_B000AE: LitI4 1
  loc_B000B3: FLdRfVar var_9C
  loc_B000B6: CStrVarTmp
  loc_B000B7: CVarStr var_E4
  loc_B000BA: FLdRfVar var_104
  loc_B000BD: ImpAdCallFPR4  = Mid(, , )
  loc_B000C2: FLdRfVar var_104
  loc_B000C5: CStrVarTmp
  loc_B000C6: CVarStr var_114
  loc_B000C9: PopAdLdVar
  loc_B000CA: FLdPr Me
  loc_B000CD: VCallAd Control_ID_rtfRecordSource
  loc_B000D0: FStAdFunc var_118
  loc_B000D3: FLdPr var_118
  loc_B000D6: LateIdSt
  loc_B000DB: FFree1Str var_A0
  loc_B000DE: FFreeAd var_8C = "": var_C4 = ""
  loc_B000E7: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B000F6: ExitProcHresult
End Sub

Private Sub cmdOr_Click() 'A43440
  'Data Table: 443840
  loc_A433FC: FLdPr Me
  loc_A433FF: VCallAd Control_ID_rtfRecordSource
  loc_A43402: FStAdFunc var_88
  loc_A43405: FLdPr var_88
  loc_A43408: LateIdLdVar var_98 DispID_-517 -1
  loc_A4340F: CStrVarTmp
  loc_A43410: FStStrNoPop var_9C
  loc_A43413: LitStr " OR "
  loc_A43416: ConcatStr
  loc_A43417: CVarStr var_AC
  loc_A4341A: PopAdLdVar
  loc_A4341B: FLdPr Me
  loc_A4341E: VCallAd Control_ID_rtfRecordSource
  loc_A43421: FStAdFunc var_C0
  loc_A43424: FLdPr var_C0
  loc_A43427: LateIdSt
  loc_A4342C: FFree1Str var_9C
  loc_A4342F: FFreeAd var_88 = ""
  loc_A43436: FFreeVar var_98 = ""
  loc_A4343D: ExitProcHresult
End Sub

Private Sub CancelButton_Click() 'A4280C
  'Data Table: 443840
  loc_A427C4: LitStr "SELECT subrubro.CodiRamo, DetaRamo, subrubro.CodiRubr, DetaRubr, CodiSubr, DetaSubr FROM subrubro "
  loc_A427C7: LitStr " LEFT JOIN ramo ON subrubro.CodiRamo = ramo.CodiRamo"
  loc_A427CA: ConcatStr
  loc_A427CB: FStStrNoPop var_88
  loc_A427CE: LitStr " LEFT JOIN rubro ON subrubro.codiramo = rubro.CodiRamo AND subrubro.CodiRubr = rubro.CodiRubr"
  loc_A427D1: ConcatStr
  loc_A427D2: FStStrNoPop var_8C
  loc_A427D5: LitStr " ORDER BY subrubro.CodiRamo, subrubro.CodiRubr, subrubro.CodiSubr "
  loc_A427D8: ConcatStr
  loc_A427D9: FStStrNoPop var_90
  loc_A427DC: FLdPr Me
  loc_A427DF: MemStStrCopy
  loc_A427E3: FFreeStr var_88 = "": var_8C = ""
  loc_A427EC: LitStr vbNullString
  loc_A427EF: FLdPr Me
  loc_A427F2: MemStStrCopy
  loc_A427F6: ILdRf Me
  loc_A427F9: FStAdNoPop
  loc_A427FD: ImpAdLdRf MemVar_D9C5D8
  loc_A42800: NewIfNullPr Global
  loc_A42803: Global.Unload from_stack_1
  loc_A42808: FFree1Ad var_94
  loc_A4280B: ExitProcHresult
End Sub

Public Function sPasaSelectGet() '4440BC
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '4440CB
  sPasaSelect = Value
End Sub

Public Function sCaptionGet() '4440DA
  sCaptionGet = sCaption
End Function

Public Sub sCaptionPut(Value) '4440E9
  sCaption = Value
End Sub

Public Function translateField(Label) 'AD2BF4
  'Data Table: 443840
  loc_AD2AC4: ZeroRetVal
  loc_AD2AC6: ILdI4 Label
  loc_AD2AC9: FStStrCopy var_8C
  loc_AD2ACC: ILdRf var_8C
  loc_AD2ACF: FLdRfVar translateField
  loc_AD2AD2: LitI2_Byte 0
  loc_AD2AD4: FLdPr Me
  loc_AD2AD7: VCallAd Control_ID_lstCampos
  loc_AD2ADA: FStAdFunc var_90
  loc_AD2ADD: FLdPr var_90
  loc_AD2AE0: from_stack_2 = Me.List(from_stack_1)
  loc_AD2AE5: ILdRf translateField
  loc_AD2AE8: EqStr
  loc_AD2AEA: FFree1Str translateField
  loc_AD2AED: FFree1Ad var_90
  loc_AD2AF0: BranchF loc_AD2B15
  loc_AD2AF3: FLdRfVar translateField
  loc_AD2AF6: LitI2_Byte 0
  loc_AD2AF8: FLdPr Me
  loc_AD2AFB: VCallAd Control_ID_lstFields
  loc_AD2AFE: FStAdFunc var_90
  loc_AD2B01: FLdPr var_90
  loc_AD2B04: from_stack_2 = Me.List(from_stack_1)
  loc_AD2B09: FLdZeroAd translateField
  loc_AD2B0C: FStStr var_88
  loc_AD2B0F: FFree1Ad var_90
  loc_AD2B12: Branch loc_AD2BED
  loc_AD2B15: ILdRf var_8C
  loc_AD2B18: FLdRfVar translateField
  loc_AD2B1B: LitI2_Byte 1
  loc_AD2B1D: FLdPr Me
  loc_AD2B20: VCallAd Control_ID_lstCampos
  loc_AD2B23: FStAdFunc var_90
  loc_AD2B26: FLdPr var_90
  loc_AD2B29: from_stack_2 = Me.List(from_stack_1)
  loc_AD2B2E: ILdRf translateField
  loc_AD2B31: EqStr
  loc_AD2B33: FFree1Str translateField
  loc_AD2B36: FFree1Ad var_90
  loc_AD2B39: BranchF loc_AD2B5E
  loc_AD2B3C: FLdRfVar translateField
  loc_AD2B3F: LitI2_Byte 1
  loc_AD2B41: FLdPr Me
  loc_AD2B44: VCallAd Control_ID_lstFields
  loc_AD2B47: FStAdFunc var_90
  loc_AD2B4A: FLdPr var_90
  loc_AD2B4D: from_stack_2 = Me.List(from_stack_1)
  loc_AD2B52: FLdZeroAd translateField
  loc_AD2B55: FStStr var_88
  loc_AD2B58: FFree1Ad var_90
  loc_AD2B5B: Branch loc_AD2BED
  loc_AD2B5E: ILdRf var_8C
  loc_AD2B61: FLdRfVar translateField
  loc_AD2B64: LitI2_Byte 2
  loc_AD2B66: FLdPr Me
  loc_AD2B69: VCallAd Control_ID_lstCampos
  loc_AD2B6C: FStAdFunc var_90
  loc_AD2B6F: FLdPr var_90
  loc_AD2B72: from_stack_2 = Me.List(from_stack_1)
  loc_AD2B77: ILdRf translateField
  loc_AD2B7A: EqStr
  loc_AD2B7C: FFree1Str translateField
  loc_AD2B7F: FFree1Ad var_90
  loc_AD2B82: BranchF loc_AD2BA7
  loc_AD2B85: FLdRfVar translateField
  loc_AD2B88: LitI2_Byte 2
  loc_AD2B8A: FLdPr Me
  loc_AD2B8D: VCallAd Control_ID_lstFields
  loc_AD2B90: FStAdFunc var_90
  loc_AD2B93: FLdPr var_90
  loc_AD2B96: from_stack_2 = Me.List(from_stack_1)
  loc_AD2B9B: FLdZeroAd translateField
  loc_AD2B9E: FStStr var_88
  loc_AD2BA1: FFree1Ad var_90
  loc_AD2BA4: Branch loc_AD2BED
  loc_AD2BA7: ILdRf var_8C
  loc_AD2BAA: FLdRfVar translateField
  loc_AD2BAD: LitI2_Byte 2
  loc_AD2BAF: FLdPr Me
  loc_AD2BB2: VCallAd Control_ID_lstCampos
  loc_AD2BB5: FStAdFunc var_90
  loc_AD2BB8: FLdPr var_90
  loc_AD2BBB: from_stack_2 = Me.List(from_stack_1)
  loc_AD2BC0: ILdRf translateField
  loc_AD2BC3: EqStr
  loc_AD2BC5: FFree1Str translateField
  loc_AD2BC8: FFree1Ad var_90
  loc_AD2BCB: BranchF loc_AD2BED
  loc_AD2BCE: FLdRfVar translateField
  loc_AD2BD1: LitI2_Byte 3
  loc_AD2BD3: FLdPr Me
  loc_AD2BD6: VCallAd Control_ID_lstFields
  loc_AD2BD9: FStAdFunc var_90
  loc_AD2BDC: FLdPr var_90
  loc_AD2BDF: from_stack_2 = Me.List(from_stack_1)
  loc_AD2BE4: FLdZeroAd translateField
  loc_AD2BE7: FStStr var_88
  loc_AD2BEA: FFree1Ad var_90
  loc_AD2BED: ExitProcCbHresult
  loc_AD2BF3: Ary1LdPr
End Function
