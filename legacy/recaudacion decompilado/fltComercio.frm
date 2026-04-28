VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form fltComercio
  Caption = "Filtrar Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "fltComercio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9156
  ClientHeight = 4824
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin VB.CheckBox FebaComeChk
    Caption = "Comercios de Baja"
    Left = 3480
    Top = 1080
    Width = 2535
    Height = 255
    TabIndex = 12
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
  Begin VB.ListBox lstFields
    Left = 3960
    Top = 960
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
    OleObjectBlob = "fltComercio.frx":08CA
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

Attribute VB_Name = "fltComercio"

Public sFiltro As String
Public sOrder As String


Private Sub Form_Load() 'AEA204
  'Data Table: 448934
  loc_AEA07C: LitI2_Byte 0
  loc_AEA07E: FLdPr Me
  loc_AEA081: VCallAd Control_ID_FebaComeChk
  loc_AEA084: FStAdFunc var_88
  loc_AEA087: FLdPr var_88
  loc_AEA08A: Me.Value = from_stack_1
  loc_AEA08F: FFree1Ad var_88
  loc_AEA092: FLdPr Me
  loc_AEA095: VCallAd Control_ID_lstCampos
  loc_AEA098: FStAdFunc var_8C
  loc_AEA09B: LitVarI2 var_9C, 0
  loc_AEA0A0: PopAdLdVar
  loc_AEA0A1: LitStr "Numero de Cuenta"
  loc_AEA0A4: FLdPr var_8C
  loc_AEA0A7: Me.AddItem from_stack_1, from_stack_2
  loc_AEA0AC: LitVarI2 var_9C, 1
  loc_AEA0B1: PopAdLdVar
  loc_AEA0B2: LitStr "Apellido y Nombre"
  loc_AEA0B5: FLdPr var_8C
  loc_AEA0B8: Me.AddItem from_stack_1, from_stack_2
  loc_AEA0BD: LitVarI2 var_9C, 2
  loc_AEA0C2: PopAdLdVar
  loc_AEA0C3: LitStr "Razón o Fantasía"
  loc_AEA0C6: FLdPr var_8C
  loc_AEA0C9: Me.AddItem from_stack_1, from_stack_2
  loc_AEA0CE: LitVarI2 var_9C, 3
  loc_AEA0D3: PopAdLdVar
  loc_AEA0D4: LitStr "Fecha de Alta"
  loc_AEA0D7: FLdPr var_8C
  loc_AEA0DA: Me.AddItem from_stack_1, from_stack_2
  loc_AEA0DF: LitVarI2 var_9C, 4
  loc_AEA0E4: PopAdLdVar
  loc_AEA0E5: LitStr "Fecha de Baja"
  loc_AEA0E8: FLdPr var_8C
  loc_AEA0EB: Me.AddItem from_stack_1, from_stack_2
  loc_AEA0F0: LitNothing
  loc_AEA0F2: FStAd var_8C 
  loc_AEA0F6: FLdPr Me
  loc_AEA0F9: VCallAd Control_ID_lstFields
  loc_AEA0FC: FStAdFunc var_A0
  loc_AEA0FF: LitVarI2 var_9C, 0
  loc_AEA104: PopAdLdVar
  loc_AEA105: LitStr "comercio.CodiCome"
  loc_AEA108: FLdPr var_A0
  loc_AEA10B: Me.AddItem from_stack_1, from_stack_2
  loc_AEA110: LitVarI2 var_9C, 1
  loc_AEA115: PopAdLdVar
  loc_AEA116: LitStr "persona.DetaPers"
  loc_AEA119: FLdPr var_A0
  loc_AEA11C: Me.AddItem from_stack_1, from_stack_2
  loc_AEA121: LitVarI2 var_9C, 2
  loc_AEA126: PopAdLdVar
  loc_AEA127: LitStr "comercio.RazoCome"
  loc_AEA12A: FLdPr var_A0
  loc_AEA12D: Me.AddItem from_stack_1, from_stack_2
  loc_AEA132: LitVarI2 var_9C, 3
  loc_AEA137: PopAdLdVar
  loc_AEA138: LitStr "comercio.FechCome"
  loc_AEA13B: FLdPr var_A0
  loc_AEA13E: Me.AddItem from_stack_1, from_stack_2
  loc_AEA143: LitVarI2 var_9C, 4
  loc_AEA148: PopAdLdVar
  loc_AEA149: LitStr "comercio.FebaCome"
  loc_AEA14C: FLdPr var_A0
  loc_AEA14F: Me.AddItem from_stack_1, from_stack_2
  loc_AEA154: LitNothing
  loc_AEA156: FStAd var_A0 
  loc_AEA15A: FLdPr Me
  loc_AEA15D: VCallAd Control_ID_cboOperador
  loc_AEA160: FStAdFunc var_A4
  loc_AEA163: LitVar_Missing var_9C
  loc_AEA166: PopAdLdVar
  loc_AEA167: LitStr "Mayor o Igual que"
  loc_AEA16A: FLdPr var_A4
  loc_AEA16D: Me.AddItem from_stack_1, from_stack_2
  loc_AEA172: LitVar_Missing var_9C
  loc_AEA175: PopAdLdVar
  loc_AEA176: LitStr "Mayor que"
  loc_AEA179: FLdPr var_A4
  loc_AEA17C: Me.AddItem from_stack_1, from_stack_2
  loc_AEA181: LitVar_Missing var_9C
  loc_AEA184: PopAdLdVar
  loc_AEA185: LitStr "Igual a"
  loc_AEA188: FLdPr var_A4
  loc_AEA18B: Me.AddItem from_stack_1, from_stack_2
  loc_AEA190: LitVar_Missing var_9C
  loc_AEA193: PopAdLdVar
  loc_AEA194: LitStr "Distinto a"
  loc_AEA197: FLdPr var_A4
  loc_AEA19A: Me.AddItem from_stack_1, from_stack_2
  loc_AEA19F: LitVar_Missing var_9C
  loc_AEA1A2: PopAdLdVar
  loc_AEA1A3: LitStr "Contiene"
  loc_AEA1A6: FLdPr var_A4
  loc_AEA1A9: Me.AddItem from_stack_1, from_stack_2
  loc_AEA1AE: LitVar_Missing var_9C
  loc_AEA1B1: PopAdLdVar
  loc_AEA1B2: LitStr "Menor que"
  loc_AEA1B5: FLdPr var_A4
  loc_AEA1B8: Me.AddItem from_stack_1, from_stack_2
  loc_AEA1BD: LitVar_Missing var_9C
  loc_AEA1C0: PopAdLdVar
  loc_AEA1C1: LitStr "Menor o Igual que"
  loc_AEA1C4: FLdPr var_A4
  loc_AEA1C7: Me.AddItem from_stack_1, from_stack_2
  loc_AEA1CC: LitNothing
  loc_AEA1CE: FStAd var_A4 
  loc_AEA1D2: LitI2_Byte &HFF
  loc_AEA1D4: LitI2_Byte 0
  loc_AEA1D6: FLdPr Me
  loc_AEA1D9: VCallAd Control_ID_lstCampos
  loc_AEA1DC: FStAdFunc var_88
  loc_AEA1DF: FLdPr var_88
  loc_AEA1E2: Me.Selected = from_stack_1
  loc_AEA1E7: FFree1Ad var_88
  loc_AEA1EA: LitStr "Igual a"
  loc_AEA1ED: FLdPr Me
  loc_AEA1F0: VCallAd Control_ID_cboOperador
  loc_AEA1F3: FStAdFunc var_88
  loc_AEA1F6: FLdPr var_88
  loc_AEA1F9: Me.Text = from_stack_1
  loc_AEA1FE: FFree1Ad var_88
  loc_AEA201: ExitProcHresult
  loc_AEA202: ConcatStr
End Sub

Private Sub txtValor_GotFocus() '9C77D8
  'Data Table: 448934
  loc_9C77C4: FLdPr Me
  loc_9C77C7: VCallAd Control_ID_txtValor
  loc_9C77CA: CVarAd
  loc_9C77CE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C77D3: FFree1Var var_94 = ""
  loc_9C77D6: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'AB09D8
  'Data Table: 448934
  loc_AB090C: FLdRfVar var_8E
  loc_AB090F: FLdPr Me
  loc_AB0912: VCallAd Control_ID_FebaComeChk
  loc_AB0915: FStAdFunc var_8C
  loc_AB0918: FLdPr var_8C
  loc_AB091B:  = Me.Value
  loc_AB0920: LitVarStr var_D0, " AND FebaCome IS NOT NULL"
  loc_AB0925: FStVarCopyObj var_E0
  loc_AB0928: FLdRfVar var_E0
  loc_AB092B: LitVarStr var_B0, "AND FebaCome IS NULL"
  loc_AB0930: FStVarCopyObj var_C0
  loc_AB0933: FLdRfVar var_C0
  loc_AB0936: FLdI2 var_8E
  loc_AB0939: LitI2_Byte 0
  loc_AB093B: EqI2
  loc_AB093C: CVarBoolI2 var_A0
  loc_AB0940: FLdRfVar var_F0
  loc_AB0943: ImpAdCallFPR4  = IIf(, , )
  loc_AB0948: FLdRfVar var_F0
  loc_AB094B: CStrVarTmp
  loc_AB094C: FStStr var_88
  loc_AB094F: FFree1Ad var_8C
  loc_AB0952: FFreeVar var_A0 = "": var_C0 = "": var_E0 = ""
  loc_AB095D: FLdPr Me
  loc_AB0960: VCallAd Control_ID_rtfRecordSource
  loc_AB0963: FStAdFunc var_8C
  loc_AB0966: FLdPr var_8C
  loc_AB0969: LateIdLdVar var_C0 DispID_-517 -1
  loc_AB0970: CStrVarTmp
  loc_AB0971: FStStrNoPop var_F4
  loc_AB0974: LitStr vbNullString
  loc_AB0977: NeStr
  loc_AB0979: FFree1Str var_F4
  loc_AB097C: FFree1Ad var_8C
  loc_AB097F: FFree1Var var_C0 = ""
  loc_AB0982: BranchF loc_AB09BA
  loc_AB0985: FLdPr Me
  loc_AB0988: VCallAd Control_ID_rtfRecordSource
  loc_AB098B: FStAdFunc var_8C
  loc_AB098E: FLdPr var_8C
  loc_AB0991: LateIdLdVar var_C0 DispID_-517 -1
  loc_AB0998: CStrVarTmp
  loc_AB0999: FStStrNoPop var_F4
  loc_AB099C: ILdRf var_88
  loc_AB099F: ConcatStr
  loc_AB09A0: FStStrNoPop var_F8
  loc_AB09A3: FLdPr Me
  loc_AB09A6: MemStStrCopy
  loc_AB09AA: FFreeStr var_F4 = ""
  loc_AB09B1: FFree1Ad var_8C
  loc_AB09B4: FFree1Var var_C0 = ""
  loc_AB09B7: Branch loc_AB09BF
  loc_AB09BA: Call CancelButton_Click()
  loc_AB09BF: ILdRf Me
  loc_AB09C2: FStAdNoPop
  loc_AB09C6: ImpAdLdRf MemVar_D9C5D8
  loc_AB09C9: NewIfNullPr Global
  loc_AB09CC: Global.Unload from_stack_1
  loc_AB09D1: FFree1Ad var_8C
  loc_AB09D4: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9E8774
  'Data Table: 448934
  loc_9E8754: LitStr vbNullString
  loc_9E8757: FLdPr Me
  loc_9E875A: MemStStrCopy
  loc_9E875E: ILdRf Me
  loc_9E8761: FStAdNoPop
  loc_9E8765: ImpAdLdRf MemVar_D9C5D8
  loc_9E8768: NewIfNullPr Global
  loc_9E876B: Global.Unload from_stack_1
  loc_9E8770: FFree1Ad var_88
  loc_9E8773: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A41B48
  'Data Table: 448934
  loc_A41B04: FLdPr Me
  loc_A41B07: VCallAd Control_ID_rtfRecordSource
  loc_A41B0A: FStAdFunc var_88
  loc_A41B0D: FLdPr var_88
  loc_A41B10: LateIdLdVar var_98 DispID_-517 -1
  loc_A41B17: CStrVarTmp
  loc_A41B18: FStStrNoPop var_9C
  loc_A41B1B: LitStr " AND "
  loc_A41B1E: ConcatStr
  loc_A41B1F: CVarStr var_AC
  loc_A41B22: PopAdLdVar
  loc_A41B23: FLdPr Me
  loc_A41B26: VCallAd Control_ID_rtfRecordSource
  loc_A41B29: FStAdFunc var_C0
  loc_A41B2C: FLdPr var_C0
  loc_A41B2F: LateIdSt
  loc_A41B34: FFree1Str var_9C
  loc_A41B37: FFreeAd var_88 = ""
  loc_A41B3E: FFreeVar var_98 = ""
  loc_A41B45: ExitProcHresult
  loc_A41B46: ImpAdLdFPR4 MemVar_58D204
End Sub

Private Sub cmdAgregar_Click() 'B2AA7C
  'Data Table: 448934
  loc_B2A814: FLdRfVar var_90
  loc_B2A817: FLdPr Me
  loc_B2A81A: VCallAd Control_ID_txtValor
  loc_B2A81D: FStAdFunc var_8C
  loc_B2A820: FLdPr var_8C
  loc_B2A823:  = Me.Text
  loc_B2A828: ILdRf var_90
  loc_B2A82B: LitStr vbNullString
  loc_B2A82E: EqStr
  loc_B2A830: FFree1Str var_90
  loc_B2A833: FFree1Ad var_8C
  loc_B2A836: BranchF loc_B2A86B
  loc_B2A839: LitVar_Missing var_110
  loc_B2A83C: LitVar_Missing var_F0
  loc_B2A83F: LitVarStr var_C0, "InfoGov"
  loc_B2A844: FStVarCopyObj var_D0
  loc_B2A847: FLdRfVar var_D0
  loc_B2A84A: LitI4 &H30
  loc_B2A84F: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B2A854: FStVarCopyObj var_B0
  loc_B2A857: FLdRfVar var_B0
  loc_B2A85A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2A85F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B2A86A: ExitProcHresult
  loc_B2A86B: FLdPr Me
  loc_B2A86E: VCallAd Control_ID_rtfRecordSource
  loc_B2A871: FStAdFunc var_8C
  loc_B2A874: FLdPr var_8C
  loc_B2A877: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A87E: CStrVarTmp
  loc_B2A87F: FStStrNoPop var_90
  loc_B2A882: FLdPr Me
  loc_B2A885: MemStStrCopy
  loc_B2A889: FFree1Str var_90
  loc_B2A88C: FFree1Ad var_8C
  loc_B2A88F: FFree1Var var_B0 = ""
  loc_B2A892: FLdPr Me
  loc_B2A895: VCallAd Control_ID_rtfRecordSource
  loc_B2A898: FStAdFunc var_114
  loc_B2A89B: FLdPr var_114
  loc_B2A89E: LateIdLdVar var_D0 DispID_-517 -1
  loc_B2A8A5: PopAd
  loc_B2A8A7: FLdPr Me
  loc_B2A8AA: VCallAd Control_ID_rtfRecordSource
  loc_B2A8AD: FStAdFunc var_128
  loc_B2A8B0: FLdPr var_128
  loc_B2A8B3: LateIdLdVar var_138 DispID_-517 -1
  loc_B2A8BA: PopAd
  loc_B2A8BC: FLdPr Me
  loc_B2A8BF: VCallAd Control_ID_rtfRecordSource
  loc_B2A8C2: FStAdFunc var_8C
  loc_B2A8C5: FLdPr var_8C
  loc_B2A8C8: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A8CF: CStrVarTmp
  loc_B2A8D0: FStStrNoPop var_90
  loc_B2A8D3: LitStr vbNullString
  loc_B2A8D6: NeStr
  loc_B2A8D8: CVarBoolI2 var_E0
  loc_B2A8DC: LitI4 4
  loc_B2A8E1: FLdRfVar var_D0
  loc_B2A8E4: CStrVarTmp
  loc_B2A8E5: CVarStr var_F0
  loc_B2A8E8: FLdRfVar var_110
  loc_B2A8EB: ImpAdCallFPR4  = Right(, )
  loc_B2A8F0: FLdRfVar var_110
  loc_B2A8F3: LitVarStr var_A0, "AND "
  loc_B2A8F8: HardType
  loc_B2A8F9: EqVar var_124
  loc_B2A8FD: LitI4 3
  loc_B2A902: FLdRfVar var_138
  loc_B2A905: CStrVarTmp
  loc_B2A906: CVarStr var_148
  loc_B2A909: FLdRfVar var_158
  loc_B2A90C: ImpAdCallFPR4  = Right(, )
  loc_B2A911: FLdRfVar var_158
  loc_B2A914: LitVarStr var_C0, "OR "
  loc_B2A919: HardType
  loc_B2A91A: EqVar var_168
  loc_B2A91E: OrVar var_178
  loc_B2A922: NotVar var_188
  loc_B2A926: AndVar var_198
  loc_B2A92A: CBoolVarNull
  loc_B2A92C: FFree1Str var_90
  loc_B2A92F: FFreeAd var_8C = "": var_114 = ""
  loc_B2A938: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B2A94B: BranchF loc_B2A953
  loc_B2A94E: Call cmdAnd_Click()
  loc_B2A953: FLdRfVar var_90
  loc_B2A956: FLdPr Me
  loc_B2A959: VCallAd Control_ID_cboOperador
  loc_B2A95C: FStAdFunc var_8C
  loc_B2A95F: FLdPr var_8C
  loc_B2A962:  = Me.Text
  loc_B2A967: ILdRf var_90
  loc_B2A96A: LitStr "Contiene"
  loc_B2A96D: EqStr
  loc_B2A96F: FFree1Str var_90
  loc_B2A972: FFree1Ad var_8C
  loc_B2A975: BranchF loc_B2A981
  loc_B2A978: LitStr Chr(37)
  loc_B2A97B: FStStrCopy var_88
  loc_B2A97E: Branch loc_B2A987
  loc_B2A981: LitStr vbNullString
  loc_B2A984: FStStrCopy var_88
  loc_B2A987: FLdPr Me
  loc_B2A98A: VCallAd Control_ID_rtfRecordSource
  loc_B2A98D: FStAdFunc var_8C
  loc_B2A990: FLdPr var_8C
  loc_B2A993: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A99A: CStrVarTmp
  loc_B2A99B: FStStrNoPop var_1A0
  loc_B2A99E: FLdRfVar var_90
  loc_B2A9A1: FLdRfVar var_19A
  loc_B2A9A4: FLdPr Me
  loc_B2A9A7: VCallAd Control_ID_lstCampos
  loc_B2A9AA: FStAdFunc var_114
  loc_B2A9AD: FLdPr var_114
  loc_B2A9B0:  = Me.ListIndex
  loc_B2A9B5: FLdI2 var_19A
  loc_B2A9B8: FLdPr Me
  loc_B2A9BB: VCallAd Control_ID_lstFields
  loc_B2A9BE: FStAdFunc var_128
  loc_B2A9C1: FLdPr var_128
  loc_B2A9C4: from_stack_2 = Me.List(from_stack_1)
  loc_B2A9C9: ILdRf var_90
  loc_B2A9CC: ConcatStr
  loc_B2A9CD: FStStrNoPop var_1A4
  loc_B2A9D0: LitStr " "
  loc_B2A9D3: ConcatStr
  loc_B2A9D4: FStStrNoPop var_1B4
  loc_B2A9D7: FLdRfVar var_1AC
  loc_B2A9DA: FLdPr Me
  loc_B2A9DD: VCallAd Control_ID_cboOperador
  loc_B2A9E0: FStAdFunc var_1A8
  loc_B2A9E3: FLdPr var_1A8
  loc_B2A9E6:  = Me.Text
  loc_B2A9EB: FLdZeroAd var_1AC
  loc_B2A9EE: PopTmpLdAdStr
  loc_B2A9F2: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2A9F7: FStStrNoPop var_1B8
  loc_B2A9FA: ConcatStr
  loc_B2A9FB: FStStrNoPop var_1BC
  loc_B2A9FE: LitStr " '"
  loc_B2AA01: ILdRf var_88
  loc_B2AA04: ConcatStr
  loc_B2AA05: FStStrNoPop var_1C0
  loc_B2AA08: ConcatStr
  loc_B2AA09: FStStrNoPop var_1CC
  loc_B2AA0C: FLdRfVar var_1C8
  loc_B2AA0F: FLdPr Me
  loc_B2AA12: VCallAd Control_ID_txtValor
  loc_B2AA15: FStAdFunc var_1C4
  loc_B2AA18: FLdPr var_1C4
  loc_B2AA1B:  = Me.Text
  loc_B2AA20: ILdRf var_1C8
  loc_B2AA23: ConcatStr
  loc_B2AA24: FStStrNoPop var_1D0
  loc_B2AA27: ILdRf var_88
  loc_B2AA2A: ConcatStr
  loc_B2AA2B: FStStrNoPop var_1D4
  loc_B2AA2E: LitStr "'"
  loc_B2AA31: ConcatStr
  loc_B2AA32: CVarStr var_D0
  loc_B2AA35: PopAdLdVar
  loc_B2AA36: FLdPr Me
  loc_B2AA39: VCallAd Control_ID_rtfRecordSource
  loc_B2AA3C: FStAdFunc var_1D8
  loc_B2AA3F: FLdPr var_1D8
  loc_B2AA42: LateIdSt
  loc_B2AA47: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B2AA62: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B2AA71: FFreeVar var_B0 = ""
  loc_B2AA78: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9E230C
  'Data Table: 448934
  loc_9E22F0: LitVarStr var_94, vbNullString
  loc_9E22F5: PopAdLdVar
  loc_9E22F6: FLdPr Me
  loc_9E22F9: VCallAd Control_ID_rtfRecordSource
  loc_9E22FC: FStAdFunc var_A8
  loc_9E22FF: FLdPr var_A8
  loc_9E2302: LateIdSt
  loc_9E2307: FFree1Ad var_A8
  loc_9E230A: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'B00BFC
  'Data Table: 448934
  loc_B00A20: FLdPr Me
  loc_B00A23: VCallAd Control_ID_rtfRecordSource
  loc_B00A26: FStAdFunc var_8C
  loc_B00A29: FLdPr var_8C
  loc_B00A2C: LateIdLdVar var_9C DispID_-517 -1
  loc_B00A33: PopAd
  loc_B00A35: LitI4 0
  loc_B00A3A: LitI4 -1
  loc_B00A3F: LitStr " AND"
  loc_B00A42: FLdRfVar var_9C
  loc_B00A45: CStrVarTmp
  loc_B00A46: FStStrNoPop var_A0
  loc_B00A49: ImpAdCallI2 InStrRev(, , , )
  loc_B00A4E: CI2I4
  loc_B00A4F: FStI2 var_86
  loc_B00A52: FFree1Str var_A0
  loc_B00A55: FFree1Ad var_8C
  loc_B00A58: FFree1Var var_9C = ""
  loc_B00A5B: FLdPr Me
  loc_B00A5E: VCallAd Control_ID_rtfRecordSource
  loc_B00A61: FStAdFunc var_8C
  loc_B00A64: FLdPr var_8C
  loc_B00A67: LateIdLdVar var_9C DispID_-517 -1
  loc_B00A6E: PopAd
  loc_B00A70: LitI4 0
  loc_B00A75: LitI4 -1
  loc_B00A7A: LitStr " OR"
  loc_B00A7D: FLdRfVar var_9C
  loc_B00A80: CStrVarTmp
  loc_B00A81: FStStrNoPop var_A0
  loc_B00A84: ImpAdCallI2 InStrRev(, , , )
  loc_B00A89: CI2I4
  loc_B00A8A: FStI2 var_88
  loc_B00A8D: FFree1Str var_A0
  loc_B00A90: FFree1Ad var_8C
  loc_B00A93: FFree1Var var_9C = ""
  loc_B00A96: FLdI2 var_86
  loc_B00A99: LitI2_Byte 0
  loc_B00A9B: EqI2
  loc_B00A9C: FLdI2 var_88
  loc_B00A9F: LitI2_Byte 0
  loc_B00AA1: EqI2
  loc_B00AA2: AndI4
  loc_B00AA3: BranchF loc_B00AC3
  loc_B00AA6: LitVarStr var_B0, vbNullString
  loc_B00AAB: PopAdLdVar
  loc_B00AAC: FLdPr Me
  loc_B00AAF: VCallAd Control_ID_rtfRecordSource
  loc_B00AB2: FStAdFunc var_8C
  loc_B00AB5: FLdPr var_8C
  loc_B00AB8: LateIdSt
  loc_B00ABD: FFree1Ad var_8C
  loc_B00AC0: Branch loc_B00BFA
  loc_B00AC3: FLdI2 var_86
  loc_B00AC6: FLdI2 var_88
  loc_B00AC9: GtI2
  loc_B00ACA: BranchF loc_B00B65
  loc_B00ACD: FLdPr Me
  loc_B00AD0: VCallAd Control_ID_rtfRecordSource
  loc_B00AD3: FStAdFunc var_8C
  loc_B00AD6: FLdPr var_8C
  loc_B00AD9: LateIdLdVar var_9C DispID_-517 -1
  loc_B00AE0: PopAd
  loc_B00AE2: FLdPr Me
  loc_B00AE5: VCallAd Control_ID_rtfRecordSource
  loc_B00AE8: FStAdFunc var_C4
  loc_B00AEB: FLdPr var_C4
  loc_B00AEE: LateIdLdVar var_D4 DispID_-517 -1
  loc_B00AF5: PopAd
  loc_B00AF7: LitI4 0
  loc_B00AFC: LitI4 -1
  loc_B00B01: LitStr " AND"
  loc_B00B04: FLdRfVar var_D4
  loc_B00B07: CStrVarTmp
  loc_B00B08: FStStrNoPop var_A0
  loc_B00B0B: ImpAdCallI2 InStrRev(, , , )
  loc_B00B10: LitI4 1
  loc_B00B15: SubI4
  loc_B00B16: CVarI4
  loc_B00B1A: LitI4 1
  loc_B00B1F: FLdRfVar var_9C
  loc_B00B22: CStrVarTmp
  loc_B00B23: CVarStr var_E4
  loc_B00B26: FLdRfVar var_104
  loc_B00B29: ImpAdCallFPR4  = Mid(, , )
  loc_B00B2E: FLdRfVar var_104
  loc_B00B31: CStrVarTmp
  loc_B00B32: CVarStr var_114
  loc_B00B35: PopAdLdVar
  loc_B00B36: FLdPr Me
  loc_B00B39: VCallAd Control_ID_rtfRecordSource
  loc_B00B3C: FStAdFunc var_118
  loc_B00B3F: FLdPr var_118
  loc_B00B42: LateIdSt
  loc_B00B47: FFree1Str var_A0
  loc_B00B4A: FFreeAd var_8C = "": var_C4 = ""
  loc_B00B53: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B00B62: Branch loc_B00BFA
  loc_B00B65: FLdPr Me
  loc_B00B68: VCallAd Control_ID_rtfRecordSource
  loc_B00B6B: FStAdFunc var_8C
  loc_B00B6E: FLdPr var_8C
  loc_B00B71: LateIdLdVar var_9C DispID_-517 -1
  loc_B00B78: PopAd
  loc_B00B7A: FLdPr Me
  loc_B00B7D: VCallAd Control_ID_rtfRecordSource
  loc_B00B80: FStAdFunc var_C4
  loc_B00B83: FLdPr var_C4
  loc_B00B86: LateIdLdVar var_D4 DispID_-517 -1
  loc_B00B8D: PopAd
  loc_B00B8F: LitI4 0
  loc_B00B94: LitI4 -1
  loc_B00B99: LitStr " OR"
  loc_B00B9C: FLdRfVar var_D4
  loc_B00B9F: CStrVarTmp
  loc_B00BA0: FStStrNoPop var_A0
  loc_B00BA3: ImpAdCallI2 InStrRev(, , , )
  loc_B00BA8: LitI4 1
  loc_B00BAD: SubI4
  loc_B00BAE: CVarI4
  loc_B00BB2: LitI4 1
  loc_B00BB7: FLdRfVar var_9C
  loc_B00BBA: CStrVarTmp
  loc_B00BBB: CVarStr var_E4
  loc_B00BBE: FLdRfVar var_104
  loc_B00BC1: ImpAdCallFPR4  = Mid(, , )
  loc_B00BC6: FLdRfVar var_104
  loc_B00BC9: CStrVarTmp
  loc_B00BCA: CVarStr var_114
  loc_B00BCD: PopAdLdVar
  loc_B00BCE: FLdPr Me
  loc_B00BD1: VCallAd Control_ID_rtfRecordSource
  loc_B00BD4: FStAdFunc var_118
  loc_B00BD7: FLdPr var_118
  loc_B00BDA: LateIdSt
  loc_B00BDF: FFree1Str var_A0
  loc_B00BE2: FFreeAd var_8C = "": var_C4 = ""
  loc_B00BEB: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B00BFA: ExitProcHresult
  loc_B00BFB: AddR8
End Sub

Private Sub cmdOr_Click() 'A42DE0
  'Data Table: 448934
  loc_A42D9C: FLdPr Me
  loc_A42D9F: VCallAd Control_ID_rtfRecordSource
  loc_A42DA2: FStAdFunc var_88
  loc_A42DA5: FLdPr var_88
  loc_A42DA8: LateIdLdVar var_98 DispID_-517 -1
  loc_A42DAF: CStrVarTmp
  loc_A42DB0: FStStrNoPop var_9C
  loc_A42DB3: LitStr " OR "
  loc_A42DB6: ConcatStr
  loc_A42DB7: CVarStr var_AC
  loc_A42DBA: PopAdLdVar
  loc_A42DBB: FLdPr Me
  loc_A42DBE: VCallAd Control_ID_rtfRecordSource
  loc_A42DC1: FStAdFunc var_C0
  loc_A42DC4: FLdPr var_C0
  loc_A42DC7: LateIdSt
  loc_A42DCC: FFree1Str var_9C
  loc_A42DCF: FFreeAd var_88 = ""
  loc_A42DD6: FFreeVar var_98 = ""
  loc_A42DDD: ExitProcHresult
  loc_A42DDE: AndI4
End Sub

Public Function sFiltroGet() '449230
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '44923F
  sFiltro = Value
End Sub

Public Function sOrderGet() '44924E
  sOrderGet = sOrder
End Function

Public Sub sOrderPut(Value) '44925D
  sOrder = Value
End Sub

Public Function translateField(Label) 'AE58AC
  'Data Table: 448934
  loc_AE5734: ZeroRetVal
  loc_AE5736: ILdI4 Label
  loc_AE5739: FStStrCopy var_8C
  loc_AE573C: ILdRf var_8C
  loc_AE573F: FLdRfVar translateField
  loc_AE5742: LitI2_Byte 0
  loc_AE5744: FLdPr Me
  loc_AE5747: VCallAd Control_ID_lstCampos
  loc_AE574A: FStAdFunc var_90
  loc_AE574D: FLdPr var_90
  loc_AE5750: from_stack_2 = Me.List(from_stack_1)
  loc_AE5755: ILdRf translateField
  loc_AE5758: EqStr
  loc_AE575A: FFree1Str translateField
  loc_AE575D: FFree1Ad var_90
  loc_AE5760: BranchF loc_AE5785
  loc_AE5763: FLdRfVar translateField
  loc_AE5766: LitI2_Byte 0
  loc_AE5768: FLdPr Me
  loc_AE576B: VCallAd Control_ID_lstFields
  loc_AE576E: FStAdFunc var_90
  loc_AE5771: FLdPr var_90
  loc_AE5774: from_stack_2 = Me.List(from_stack_1)
  loc_AE5779: FLdZeroAd translateField
  loc_AE577C: FStStr var_88
  loc_AE577F: FFree1Ad var_90
  loc_AE5782: Branch loc_AE58A6
  loc_AE5785: ILdRf var_8C
  loc_AE5788: FLdRfVar translateField
  loc_AE578B: LitI2_Byte 1
  loc_AE578D: FLdPr Me
  loc_AE5790: VCallAd Control_ID_lstCampos
  loc_AE5793: FStAdFunc var_90
  loc_AE5796: FLdPr var_90
  loc_AE5799: from_stack_2 = Me.List(from_stack_1)
  loc_AE579E: ILdRf translateField
  loc_AE57A1: EqStr
  loc_AE57A3: FFree1Str translateField
  loc_AE57A6: FFree1Ad var_90
  loc_AE57A9: BranchF loc_AE57CE
  loc_AE57AC: FLdRfVar translateField
  loc_AE57AF: LitI2_Byte 1
  loc_AE57B1: FLdPr Me
  loc_AE57B4: VCallAd Control_ID_lstFields
  loc_AE57B7: FStAdFunc var_90
  loc_AE57BA: FLdPr var_90
  loc_AE57BD: from_stack_2 = Me.List(from_stack_1)
  loc_AE57C2: FLdZeroAd translateField
  loc_AE57C5: FStStr var_88
  loc_AE57C8: FFree1Ad var_90
  loc_AE57CB: Branch loc_AE58A6
  loc_AE57CE: ILdRf var_8C
  loc_AE57D1: FLdRfVar translateField
  loc_AE57D4: LitI2_Byte 2
  loc_AE57D6: FLdPr Me
  loc_AE57D9: VCallAd Control_ID_lstCampos
  loc_AE57DC: FStAdFunc var_90
  loc_AE57DF: FLdPr var_90
  loc_AE57E2: from_stack_2 = Me.List(from_stack_1)
  loc_AE57E7: ILdRf translateField
  loc_AE57EA: EqStr
  loc_AE57EC: FFree1Str translateField
  loc_AE57EF: FFree1Ad var_90
  loc_AE57F2: BranchF loc_AE5817
  loc_AE57F5: FLdRfVar translateField
  loc_AE57F8: LitI2_Byte 2
  loc_AE57FA: FLdPr Me
  loc_AE57FD: VCallAd Control_ID_lstFields
  loc_AE5800: FStAdFunc var_90
  loc_AE5803: FLdPr var_90
  loc_AE5806: from_stack_2 = Me.List(from_stack_1)
  loc_AE580B: FLdZeroAd translateField
  loc_AE580E: FStStr var_88
  loc_AE5811: FFree1Ad var_90
  loc_AE5814: Branch loc_AE58A6
  loc_AE5817: ILdRf var_8C
  loc_AE581A: FLdRfVar translateField
  loc_AE581D: LitI2_Byte 3
  loc_AE581F: FLdPr Me
  loc_AE5822: VCallAd Control_ID_lstCampos
  loc_AE5825: FStAdFunc var_90
  loc_AE5828: FLdPr var_90
  loc_AE582B: from_stack_2 = Me.List(from_stack_1)
  loc_AE5830: ILdRf translateField
  loc_AE5833: EqStr
  loc_AE5835: FFree1Str translateField
  loc_AE5838: FFree1Ad var_90
  loc_AE583B: BranchF loc_AE5860
  loc_AE583E: FLdRfVar translateField
  loc_AE5841: LitI2_Byte 3
  loc_AE5843: FLdPr Me
  loc_AE5846: VCallAd Control_ID_lstFields
  loc_AE5849: FStAdFunc var_90
  loc_AE584C: FLdPr var_90
  loc_AE584F: from_stack_2 = Me.List(from_stack_1)
  loc_AE5854: FLdZeroAd translateField
  loc_AE5857: FStStr var_88
  loc_AE585A: FFree1Ad var_90
  loc_AE585D: Branch loc_AE58A6
  loc_AE5860: ILdRf var_8C
  loc_AE5863: FLdRfVar translateField
  loc_AE5866: LitI2_Byte 4
  loc_AE5868: FLdPr Me
  loc_AE586B: VCallAd Control_ID_lstCampos
  loc_AE586E: FStAdFunc var_90
  loc_AE5871: FLdPr var_90
  loc_AE5874: from_stack_2 = Me.List(from_stack_1)
  loc_AE5879: ILdRf translateField
  loc_AE587C: EqStr
  loc_AE587E: FFree1Str translateField
  loc_AE5881: FFree1Ad var_90
  loc_AE5884: BranchF loc_AE58A6
  loc_AE5887: FLdRfVar translateField
  loc_AE588A: LitI2_Byte 4
  loc_AE588C: FLdPr Me
  loc_AE588F: VCallAd Control_ID_lstFields
  loc_AE5892: FStAdFunc var_90
  loc_AE5895: FLdPr var_90
  loc_AE5898: from_stack_2 = Me.List(from_stack_1)
  loc_AE589D: FLdZeroAd translateField
  loc_AE58A0: FStStr var_88
  loc_AE58A3: FFree1Ad var_90
  loc_AE58A6: ExitProcCbHresult
End Function
