VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form dlgFiltrarRubro
  Caption = "Filtrar Rubro"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgFiltrarRubro.frx":0000
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
    OleObjectBlob = "dlgFiltrarRubro.frx":08CA
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

Attribute VB_Name = "dlgFiltrarRubro"

Public sPasaSelect As String
Public sCaption As String


Private Sub txtValor_GotFocus() '9C7820
  'Data Table: 441A88
  loc_9C780C: FLdPr Me
  loc_9C780F: VCallAd Control_ID_txtValor
  loc_9C7812: CVarAd
  loc_9C7816: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C781B: FFree1Var var_94 = ""
  loc_9C781E: ExitProcHresult
End Sub

Private Sub Form_Load() 'AD5794
  'Data Table: 441A88
  loc_AD565C: LitStr "Filtrar Rubro"
  loc_AD565F: FLdPr Me
  loc_AD5662: Me.Caption = from_stack_1
  loc_AD5667: FLdPr Me
  loc_AD566A: VCallAd Control_ID_lstCampos
  loc_AD566D: FStAdFunc var_88
  loc_AD5670: LitVarI2 var_98, 0
  loc_AD5675: PopAdLdVar
  loc_AD5676: LitStr "Código Ramo"
  loc_AD5679: FLdPr var_88
  loc_AD567C: Me.AddItem from_stack_1, from_stack_2
  loc_AD5681: LitVarI2 var_98, 1
  loc_AD5686: PopAdLdVar
  loc_AD5687: LitStr "Código Rubro"
  loc_AD568A: FLdPr var_88
  loc_AD568D: Me.AddItem from_stack_1, from_stack_2
  loc_AD5692: LitVarI2 var_98, 2
  loc_AD5697: PopAdLdVar
  loc_AD5698: LitStr "Detalle Rubro"
  loc_AD569B: FLdPr var_88
  loc_AD569E: Me.AddItem from_stack_1, from_stack_2
  loc_AD56A3: LitNothing
  loc_AD56A5: FStAd var_88 
  loc_AD56A9: FLdPr Me
  loc_AD56AC: VCallAd Control_ID_lstFields
  loc_AD56AF: FStAdFunc var_9C
  loc_AD56B2: LitVarI2 var_98, 0
  loc_AD56B7: PopAdLdVar
  loc_AD56B8: LitStr "rubro.CodiRamo"
  loc_AD56BB: FLdPr var_9C
  loc_AD56BE: Me.AddItem from_stack_1, from_stack_2
  loc_AD56C3: LitVarI2 var_98, 1
  loc_AD56C8: PopAdLdVar
  loc_AD56C9: LitStr "rubro.CodiRubr"
  loc_AD56CC: FLdPr var_9C
  loc_AD56CF: Me.AddItem from_stack_1, from_stack_2
  loc_AD56D4: LitVarI2 var_98, 2
  loc_AD56D9: PopAdLdVar
  loc_AD56DA: LitStr "rubro.DetaRubr"
  loc_AD56DD: FLdPr var_9C
  loc_AD56E0: Me.AddItem from_stack_1, from_stack_2
  loc_AD56E5: LitNothing
  loc_AD56E7: FStAd var_9C 
  loc_AD56EB: FLdPr Me
  loc_AD56EE: VCallAd Control_ID_cboOperador
  loc_AD56F1: FStAdFunc var_A0
  loc_AD56F4: LitVar_Missing var_98
  loc_AD56F7: PopAdLdVar
  loc_AD56F8: LitStr "Mayor o Igual que"
  loc_AD56FB: FLdPr var_A0
  loc_AD56FE: Me.AddItem from_stack_1, from_stack_2
  loc_AD5703: LitVar_Missing var_98
  loc_AD5706: PopAdLdVar
  loc_AD5707: LitStr "Mayor que"
  loc_AD570A: FLdPr var_A0
  loc_AD570D: Me.AddItem from_stack_1, from_stack_2
  loc_AD5712: LitVar_Missing var_98
  loc_AD5715: PopAdLdVar
  loc_AD5716: LitStr "Igual a"
  loc_AD5719: FLdPr var_A0
  loc_AD571C: Me.AddItem from_stack_1, from_stack_2
  loc_AD5721: LitVar_Missing var_98
  loc_AD5724: PopAdLdVar
  loc_AD5725: LitStr "Distinto a"
  loc_AD5728: FLdPr var_A0
  loc_AD572B: Me.AddItem from_stack_1, from_stack_2
  loc_AD5730: LitVar_Missing var_98
  loc_AD5733: PopAdLdVar
  loc_AD5734: LitStr "Contiene"
  loc_AD5737: FLdPr var_A0
  loc_AD573A: Me.AddItem from_stack_1, from_stack_2
  loc_AD573F: LitVar_Missing var_98
  loc_AD5742: PopAdLdVar
  loc_AD5743: LitStr "Menor que"
  loc_AD5746: FLdPr var_A0
  loc_AD5749: Me.AddItem from_stack_1, from_stack_2
  loc_AD574E: LitVar_Missing var_98
  loc_AD5751: PopAdLdVar
  loc_AD5752: LitStr "Menor o Igual que"
  loc_AD5755: FLdPr var_A0
  loc_AD5758: Me.AddItem from_stack_1, from_stack_2
  loc_AD575D: LitNothing
  loc_AD575F: FStAd var_A0 
  loc_AD5763: LitI2_Byte &HFF
  loc_AD5765: LitI2_Byte 0
  loc_AD5767: FLdPr Me
  loc_AD576A: VCallAd Control_ID_lstCampos
  loc_AD576D: FStAdFunc var_A4
  loc_AD5770: FLdPr var_A4
  loc_AD5773: Me.Selected = from_stack_1
  loc_AD5778: FFree1Ad var_A4
  loc_AD577B: LitStr "Igual a"
  loc_AD577E: FLdPr Me
  loc_AD5781: VCallAd Control_ID_cboOperador
  loc_AD5784: FStAdFunc var_A4
  loc_AD5787: FLdPr var_A4
  loc_AD578A: Me.Text = from_stack_1
  loc_AD578F: FFree1Ad var_A4
  loc_AD5792: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'A945F8
  'Data Table: 441A88
  loc_A9454C: FLdPr Me
  loc_A9454F: VCallAd Control_ID_rtfRecordSource
  loc_A94552: FStAdFunc var_88
  loc_A94555: FLdPr var_88
  loc_A94558: LateIdLdVar var_98 DispID_-517 -1
  loc_A9455F: CStrVarTmp
  loc_A94560: FStStrNoPop var_9C
  loc_A94563: LitStr vbNullString
  loc_A94566: NeStr
  loc_A94568: FFree1Str var_9C
  loc_A9456B: FFree1Ad var_88
  loc_A9456E: FFree1Var var_98 = ""
  loc_A94571: BranchF loc_A945DB
  loc_A94574: LitStr "SELECT rubro.CodiRamo, DetaRamo , rubro.CodiRubr, DetaRubr ,FrecRubr FROM rubro LEFT JOIN ramo ON ramo.CodiRamo = rubro.CodiRamo WHERE "
  loc_A94577: FLdPr Me
  loc_A9457A: VCallAd Control_ID_rtfRecordSource
  loc_A9457D: FStAdFunc var_88
  loc_A94580: FLdPr var_88
  loc_A94583: LateIdLdVar var_98 DispID_-517 -1
  loc_A9458A: CStrVarTmp
  loc_A9458B: FStStrNoPop var_9C
  loc_A9458E: ConcatStr
  loc_A9458F: FStStrNoPop var_A0
  loc_A94592: FLdPr Me
  loc_A94595: MemStStrCopy
  loc_A94599: FFreeStr var_9C = ""
  loc_A945A0: FFree1Ad var_88
  loc_A945A3: FFree1Var var_98 = ""
  loc_A945A6: LitStr "Filtro aplicado: "
  loc_A945A9: FLdPr Me
  loc_A945AC: VCallAd Control_ID_rtfRecordSource
  loc_A945AF: FStAdFunc var_88
  loc_A945B2: FLdPr var_88
  loc_A945B5: LateIdLdVar var_98 DispID_-517 -1
  loc_A945BC: CStrVarTmp
  loc_A945BD: FStStrNoPop var_9C
  loc_A945C0: ConcatStr
  loc_A945C1: FStStrNoPop var_A0
  loc_A945C4: FLdPr Me
  loc_A945C7: MemStStrCopy
  loc_A945CB: FFreeStr var_9C = ""
  loc_A945D2: FFree1Ad var_88
  loc_A945D5: FFree1Var var_98 = ""
  loc_A945D8: Branch loc_A945E0
  loc_A945DB: Call CancelButton_Click()
  loc_A945E0: ILdRf Me
  loc_A945E3: FStAdNoPop
  loc_A945E7: ImpAdLdRf MemVar_D9C5D8
  loc_A945EA: NewIfNullPr Global
  loc_A945ED: Global.Unload from_stack_1
  loc_A945F2: FFree1Ad var_88
  loc_A945F5: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A42AB0
  'Data Table: 441A88
  loc_A42A6C: FLdPr Me
  loc_A42A6F: VCallAd Control_ID_rtfRecordSource
  loc_A42A72: FStAdFunc var_88
  loc_A42A75: FLdPr var_88
  loc_A42A78: LateIdLdVar var_98 DispID_-517 -1
  loc_A42A7F: CStrVarTmp
  loc_A42A80: FStStrNoPop var_9C
  loc_A42A83: LitStr " AND "
  loc_A42A86: ConcatStr
  loc_A42A87: CVarStr var_AC
  loc_A42A8A: PopAdLdVar
  loc_A42A8B: FLdPr Me
  loc_A42A8E: VCallAd Control_ID_rtfRecordSource
  loc_A42A91: FStAdFunc var_C0
  loc_A42A94: FLdPr var_C0
  loc_A42A97: LateIdSt
  loc_A42A9C: FFree1Str var_9C
  loc_A42A9F: FFreeAd var_88 = ""
  loc_A42AA6: FFreeVar var_98 = ""
  loc_A42AAD: ExitProcHresult
End Sub

Private Sub cmdAgregar_Click() 'B2A764
  'Data Table: 441A88
  loc_B2A4FC: FLdRfVar var_90
  loc_B2A4FF: FLdPr Me
  loc_B2A502: VCallAd Control_ID_txtValor
  loc_B2A505: FStAdFunc var_8C
  loc_B2A508: FLdPr var_8C
  loc_B2A50B:  = Me.Text
  loc_B2A510: ILdRf var_90
  loc_B2A513: LitStr vbNullString
  loc_B2A516: EqStr
  loc_B2A518: FFree1Str var_90
  loc_B2A51B: FFree1Ad var_8C
  loc_B2A51E: BranchF loc_B2A553
  loc_B2A521: LitVar_Missing var_110
  loc_B2A524: LitVar_Missing var_F0
  loc_B2A527: LitVarStr var_C0, "InfoGov"
  loc_B2A52C: FStVarCopyObj var_D0
  loc_B2A52F: FLdRfVar var_D0
  loc_B2A532: LitI4 &H30
  loc_B2A537: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B2A53C: FStVarCopyObj var_B0
  loc_B2A53F: FLdRfVar var_B0
  loc_B2A542: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2A547: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B2A552: ExitProcHresult
  loc_B2A553: FLdPr Me
  loc_B2A556: VCallAd Control_ID_rtfRecordSource
  loc_B2A559: FStAdFunc var_8C
  loc_B2A55C: FLdPr var_8C
  loc_B2A55F: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A566: CStrVarTmp
  loc_B2A567: FStStrNoPop var_90
  loc_B2A56A: FLdPr Me
  loc_B2A56D: MemStStrCopy
  loc_B2A571: FFree1Str var_90
  loc_B2A574: FFree1Ad var_8C
  loc_B2A577: FFree1Var var_B0 = ""
  loc_B2A57A: FLdPr Me
  loc_B2A57D: VCallAd Control_ID_rtfRecordSource
  loc_B2A580: FStAdFunc var_114
  loc_B2A583: FLdPr var_114
  loc_B2A586: LateIdLdVar var_D0 DispID_-517 -1
  loc_B2A58D: PopAd
  loc_B2A58F: FLdPr Me
  loc_B2A592: VCallAd Control_ID_rtfRecordSource
  loc_B2A595: FStAdFunc var_128
  loc_B2A598: FLdPr var_128
  loc_B2A59B: LateIdLdVar var_138 DispID_-517 -1
  loc_B2A5A2: PopAd
  loc_B2A5A4: FLdPr Me
  loc_B2A5A7: VCallAd Control_ID_rtfRecordSource
  loc_B2A5AA: FStAdFunc var_8C
  loc_B2A5AD: FLdPr var_8C
  loc_B2A5B0: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A5B7: CStrVarTmp
  loc_B2A5B8: FStStrNoPop var_90
  loc_B2A5BB: LitStr vbNullString
  loc_B2A5BE: NeStr
  loc_B2A5C0: CVarBoolI2 var_E0
  loc_B2A5C4: LitI4 4
  loc_B2A5C9: FLdRfVar var_D0
  loc_B2A5CC: CStrVarTmp
  loc_B2A5CD: CVarStr var_F0
  loc_B2A5D0: FLdRfVar var_110
  loc_B2A5D3: ImpAdCallFPR4  = Right(, )
  loc_B2A5D8: FLdRfVar var_110
  loc_B2A5DB: LitVarStr var_A0, "AND "
  loc_B2A5E0: HardType
  loc_B2A5E1: EqVar var_124
  loc_B2A5E5: LitI4 3
  loc_B2A5EA: FLdRfVar var_138
  loc_B2A5ED: CStrVarTmp
  loc_B2A5EE: CVarStr var_148
  loc_B2A5F1: FLdRfVar var_158
  loc_B2A5F4: ImpAdCallFPR4  = Right(, )
  loc_B2A5F9: FLdRfVar var_158
  loc_B2A5FC: LitVarStr var_C0, "OR "
  loc_B2A601: HardType
  loc_B2A602: EqVar var_168
  loc_B2A606: OrVar var_178
  loc_B2A60A: NotVar var_188
  loc_B2A60E: AndVar var_198
  loc_B2A612: CBoolVarNull
  loc_B2A614: FFree1Str var_90
  loc_B2A617: FFreeAd var_8C = "": var_114 = ""
  loc_B2A620: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B2A633: BranchF loc_B2A63B
  loc_B2A636: Call cmdAnd_Click()
  loc_B2A63B: FLdRfVar var_90
  loc_B2A63E: FLdPr Me
  loc_B2A641: VCallAd Control_ID_cboOperador
  loc_B2A644: FStAdFunc var_8C
  loc_B2A647: FLdPr var_8C
  loc_B2A64A:  = Me.Text
  loc_B2A64F: ILdRf var_90
  loc_B2A652: LitStr "Contiene"
  loc_B2A655: EqStr
  loc_B2A657: FFree1Str var_90
  loc_B2A65A: FFree1Ad var_8C
  loc_B2A65D: BranchF loc_B2A669
  loc_B2A660: LitStr Chr(37)
  loc_B2A663: FStStrCopy var_88
  loc_B2A666: Branch loc_B2A66F
  loc_B2A669: LitStr vbNullString
  loc_B2A66C: FStStrCopy var_88
  loc_B2A66F: FLdPr Me
  loc_B2A672: VCallAd Control_ID_rtfRecordSource
  loc_B2A675: FStAdFunc var_8C
  loc_B2A678: FLdPr var_8C
  loc_B2A67B: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2A682: CStrVarTmp
  loc_B2A683: FStStrNoPop var_1A0
  loc_B2A686: FLdRfVar var_90
  loc_B2A689: FLdRfVar var_19A
  loc_B2A68C: FLdPr Me
  loc_B2A68F: VCallAd Control_ID_lstCampos
  loc_B2A692: FStAdFunc var_114
  loc_B2A695: FLdPr var_114
  loc_B2A698:  = Me.ListIndex
  loc_B2A69D: FLdI2 var_19A
  loc_B2A6A0: FLdPr Me
  loc_B2A6A3: VCallAd Control_ID_lstFields
  loc_B2A6A6: FStAdFunc var_128
  loc_B2A6A9: FLdPr var_128
  loc_B2A6AC: from_stack_2 = Me.List(from_stack_1)
  loc_B2A6B1: ILdRf var_90
  loc_B2A6B4: ConcatStr
  loc_B2A6B5: FStStrNoPop var_1A4
  loc_B2A6B8: LitStr " "
  loc_B2A6BB: ConcatStr
  loc_B2A6BC: FStStrNoPop var_1B4
  loc_B2A6BF: FLdRfVar var_1AC
  loc_B2A6C2: FLdPr Me
  loc_B2A6C5: VCallAd Control_ID_cboOperador
  loc_B2A6C8: FStAdFunc var_1A8
  loc_B2A6CB: FLdPr var_1A8
  loc_B2A6CE:  = Me.Text
  loc_B2A6D3: FLdZeroAd var_1AC
  loc_B2A6D6: PopTmpLdAdStr
  loc_B2A6DA: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2A6DF: FStStrNoPop var_1B8
  loc_B2A6E2: ConcatStr
  loc_B2A6E3: FStStrNoPop var_1BC
  loc_B2A6E6: LitStr " '"
  loc_B2A6E9: ILdRf var_88
  loc_B2A6EC: ConcatStr
  loc_B2A6ED: FStStrNoPop var_1C0
  loc_B2A6F0: ConcatStr
  loc_B2A6F1: FStStrNoPop var_1CC
  loc_B2A6F4: FLdRfVar var_1C8
  loc_B2A6F7: FLdPr Me
  loc_B2A6FA: VCallAd Control_ID_txtValor
  loc_B2A6FD: FStAdFunc var_1C4
  loc_B2A700: FLdPr var_1C4
  loc_B2A703:  = Me.Text
  loc_B2A708: ILdRf var_1C8
  loc_B2A70B: ConcatStr
  loc_B2A70C: FStStrNoPop var_1D0
  loc_B2A70F: ILdRf var_88
  loc_B2A712: ConcatStr
  loc_B2A713: FStStrNoPop var_1D4
  loc_B2A716: LitStr "'"
  loc_B2A719: ConcatStr
  loc_B2A71A: CVarStr var_D0
  loc_B2A71D: PopAdLdVar
  loc_B2A71E: FLdPr Me
  loc_B2A721: VCallAd Control_ID_rtfRecordSource
  loc_B2A724: FStAdFunc var_1D8
  loc_B2A727: FLdPr var_1D8
  loc_B2A72A: LateIdSt
  loc_B2A72F: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B2A74A: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B2A759: FFreeVar var_B0 = ""
  loc_B2A760: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9E13BC
  'Data Table: 441A88
  loc_9E13A0: LitVarStr var_94, vbNullString
  loc_9E13A5: PopAdLdVar
  loc_9E13A6: FLdPr Me
  loc_9E13A9: VCallAd Control_ID_rtfRecordSource
  loc_9E13AC: FStAdFunc var_A8
  loc_9E13AF: FLdPr var_A8
  loc_9E13B2: LateIdSt
  loc_9E13B7: FFree1Ad var_A8
  loc_9E13BA: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'AFF828
  'Data Table: 441A88
  loc_AFF64C: FLdPr Me
  loc_AFF64F: VCallAd Control_ID_rtfRecordSource
  loc_AFF652: FStAdFunc var_8C
  loc_AFF655: FLdPr var_8C
  loc_AFF658: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF65F: PopAd
  loc_AFF661: LitI4 0
  loc_AFF666: LitI4 -1
  loc_AFF66B: LitStr " AND"
  loc_AFF66E: FLdRfVar var_9C
  loc_AFF671: CStrVarTmp
  loc_AFF672: FStStrNoPop var_A0
  loc_AFF675: ImpAdCallI2 InStrRev(, , , )
  loc_AFF67A: CI2I4
  loc_AFF67B: FStI2 var_86
  loc_AFF67E: FFree1Str var_A0
  loc_AFF681: FFree1Ad var_8C
  loc_AFF684: FFree1Var var_9C = ""
  loc_AFF687: FLdPr Me
  loc_AFF68A: VCallAd Control_ID_rtfRecordSource
  loc_AFF68D: FStAdFunc var_8C
  loc_AFF690: FLdPr var_8C
  loc_AFF693: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF69A: PopAd
  loc_AFF69C: LitI4 0
  loc_AFF6A1: LitI4 -1
  loc_AFF6A6: LitStr " OR"
  loc_AFF6A9: FLdRfVar var_9C
  loc_AFF6AC: CStrVarTmp
  loc_AFF6AD: FStStrNoPop var_A0
  loc_AFF6B0: ImpAdCallI2 InStrRev(, , , )
  loc_AFF6B5: CI2I4
  loc_AFF6B6: FStI2 var_88
  loc_AFF6B9: FFree1Str var_A0
  loc_AFF6BC: FFree1Ad var_8C
  loc_AFF6BF: FFree1Var var_9C = ""
  loc_AFF6C2: FLdI2 var_86
  loc_AFF6C5: LitI2_Byte 0
  loc_AFF6C7: EqI2
  loc_AFF6C8: FLdI2 var_88
  loc_AFF6CB: LitI2_Byte 0
  loc_AFF6CD: EqI2
  loc_AFF6CE: AndI4
  loc_AFF6CF: BranchF loc_AFF6EF
  loc_AFF6D2: LitVarStr var_B0, vbNullString
  loc_AFF6D7: PopAdLdVar
  loc_AFF6D8: FLdPr Me
  loc_AFF6DB: VCallAd Control_ID_rtfRecordSource
  loc_AFF6DE: FStAdFunc var_8C
  loc_AFF6E1: FLdPr var_8C
  loc_AFF6E4: LateIdSt
  loc_AFF6E9: FFree1Ad var_8C
  loc_AFF6EC: Branch loc_AFF826
  loc_AFF6EF: FLdI2 var_86
  loc_AFF6F2: FLdI2 var_88
  loc_AFF6F5: GtI2
  loc_AFF6F6: BranchF loc_AFF791
  loc_AFF6F9: FLdPr Me
  loc_AFF6FC: VCallAd Control_ID_rtfRecordSource
  loc_AFF6FF: FStAdFunc var_8C
  loc_AFF702: FLdPr var_8C
  loc_AFF705: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF70C: PopAd
  loc_AFF70E: FLdPr Me
  loc_AFF711: VCallAd Control_ID_rtfRecordSource
  loc_AFF714: FStAdFunc var_C4
  loc_AFF717: FLdPr var_C4
  loc_AFF71A: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFF721: PopAd
  loc_AFF723: LitI4 0
  loc_AFF728: LitI4 -1
  loc_AFF72D: LitStr " AND"
  loc_AFF730: FLdRfVar var_D4
  loc_AFF733: CStrVarTmp
  loc_AFF734: FStStrNoPop var_A0
  loc_AFF737: ImpAdCallI2 InStrRev(, , , )
  loc_AFF73C: LitI4 1
  loc_AFF741: SubI4
  loc_AFF742: CVarI4
  loc_AFF746: LitI4 1
  loc_AFF74B: FLdRfVar var_9C
  loc_AFF74E: CStrVarTmp
  loc_AFF74F: CVarStr var_E4
  loc_AFF752: FLdRfVar var_104
  loc_AFF755: ImpAdCallFPR4  = Mid(, , )
  loc_AFF75A: FLdRfVar var_104
  loc_AFF75D: CStrVarTmp
  loc_AFF75E: CVarStr var_114
  loc_AFF761: PopAdLdVar
  loc_AFF762: FLdPr Me
  loc_AFF765: VCallAd Control_ID_rtfRecordSource
  loc_AFF768: FStAdFunc var_118
  loc_AFF76B: FLdPr var_118
  loc_AFF76E: LateIdSt
  loc_AFF773: FFree1Str var_A0
  loc_AFF776: FFreeAd var_8C = "": var_C4 = ""
  loc_AFF77F: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_AFF78E: Branch loc_AFF826
  loc_AFF791: FLdPr Me
  loc_AFF794: VCallAd Control_ID_rtfRecordSource
  loc_AFF797: FStAdFunc var_8C
  loc_AFF79A: FLdPr var_8C
  loc_AFF79D: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF7A4: PopAd
  loc_AFF7A6: FLdPr Me
  loc_AFF7A9: VCallAd Control_ID_rtfRecordSource
  loc_AFF7AC: FStAdFunc var_C4
  loc_AFF7AF: FLdPr var_C4
  loc_AFF7B2: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFF7B9: PopAd
  loc_AFF7BB: LitI4 0
  loc_AFF7C0: LitI4 -1
  loc_AFF7C5: LitStr " OR"
  loc_AFF7C8: FLdRfVar var_D4
  loc_AFF7CB: CStrVarTmp
  loc_AFF7CC: FStStrNoPop var_A0
  loc_AFF7CF: ImpAdCallI2 InStrRev(, , , )
  loc_AFF7D4: LitI4 1
  loc_AFF7D9: SubI4
  loc_AFF7DA: CVarI4
  loc_AFF7DE: LitI4 1
  loc_AFF7E3: FLdRfVar var_9C
  loc_AFF7E6: CStrVarTmp
  loc_AFF7E7: CVarStr var_E4
  loc_AFF7EA: FLdRfVar var_104
  loc_AFF7ED: ImpAdCallFPR4  = Mid(, , )
  loc_AFF7F2: FLdRfVar var_104
  loc_AFF7F5: CStrVarTmp
  loc_AFF7F6: CVarStr var_114
  loc_AFF7F9: PopAdLdVar
  loc_AFF7FA: FLdPr Me
  loc_AFF7FD: VCallAd Control_ID_rtfRecordSource
  loc_AFF800: FStAdFunc var_118
  loc_AFF803: FLdPr var_118
  loc_AFF806: LateIdSt
  loc_AFF80B: FFree1Str var_A0
  loc_AFF80E: FFreeAd var_8C = "": var_C4 = ""
  loc_AFF817: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_AFF826: ExitProcHresult
End Sub

Private Sub cmdOr_Click() 'A42918
  'Data Table: 441A88
  loc_A428D4: FLdPr Me
  loc_A428D7: VCallAd Control_ID_rtfRecordSource
  loc_A428DA: FStAdFunc var_88
  loc_A428DD: FLdPr var_88
  loc_A428E0: LateIdLdVar var_98 DispID_-517 -1
  loc_A428E7: CStrVarTmp
  loc_A428E8: FStStrNoPop var_9C
  loc_A428EB: LitStr " OR "
  loc_A428EE: ConcatStr
  loc_A428EF: CVarStr var_AC
  loc_A428F2: PopAdLdVar
  loc_A428F3: FLdPr Me
  loc_A428F6: VCallAd Control_ID_rtfRecordSource
  loc_A428F9: FStAdFunc var_C0
  loc_A428FC: FLdPr var_C0
  loc_A428FF: LateIdSt
  loc_A42904: FFree1Str var_9C
  loc_A42907: FFreeAd var_88 = ""
  loc_A4290E: FFreeVar var_98 = ""
  loc_A42915: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9FC274
  'Data Table: 441A88
  loc_9FC248: LitStr "SELECT rubro.CodiRamo, DetaRamo, CodiRubr, DetaRubr, FrecRubr FROM rubro LEFT JOIN ramo ON ramo.CodiRamo = rubro.CodiRamo ORDER BY CodiRamo, CodiRubr"
  loc_9FC24B: FLdPr Me
  loc_9FC24E: MemStStrCopy
  loc_9FC252: LitStr vbNullString
  loc_9FC255: FLdPr Me
  loc_9FC258: MemStStrCopy
  loc_9FC25C: ILdRf Me
  loc_9FC25F: FStAdNoPop
  loc_9FC263: ImpAdLdRf MemVar_D9C5D8
  loc_9FC266: NewIfNullPr Global
  loc_9FC269: Global.Unload from_stack_1
  loc_9FC26E: FFree1Ad var_88
  loc_9FC271: ExitProcHresult
End Sub

Public Function sPasaSelectGet() '4422F0
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '4422FF
  sPasaSelect = Value
End Sub

Public Function sCaptionGet() '44230E
  sCaptionGet = sCaption
End Function

Public Sub sCaptionPut(Value) '44231D
  sCaption = Value
End Sub

Public Function translateField(Label) 'AB52E8
  'Data Table: 441A88
  loc_AB5200: ZeroRetVal
  loc_AB5202: ILdI4 Label
  loc_AB5205: FStStrCopy var_8C
  loc_AB5208: ILdRf var_8C
  loc_AB520B: FLdRfVar translateField
  loc_AB520E: LitI2_Byte 0
  loc_AB5210: FLdPr Me
  loc_AB5213: VCallAd Control_ID_lstCampos
  loc_AB5216: FStAdFunc var_90
  loc_AB5219: FLdPr var_90
  loc_AB521C: from_stack_2 = Me.List(from_stack_1)
  loc_AB5221: ILdRf translateField
  loc_AB5224: EqStr
  loc_AB5226: FFree1Str translateField
  loc_AB5229: FFree1Ad var_90
  loc_AB522C: BranchF loc_AB5251
  loc_AB522F: FLdRfVar translateField
  loc_AB5232: LitI2_Byte 0
  loc_AB5234: FLdPr Me
  loc_AB5237: VCallAd Control_ID_lstFields
  loc_AB523A: FStAdFunc var_90
  loc_AB523D: FLdPr var_90
  loc_AB5240: from_stack_2 = Me.List(from_stack_1)
  loc_AB5245: FLdZeroAd translateField
  loc_AB5248: FStStr var_88
  loc_AB524B: FFree1Ad var_90
  loc_AB524E: Branch loc_AB52E0
  loc_AB5251: ILdRf var_8C
  loc_AB5254: FLdRfVar translateField
  loc_AB5257: LitI2_Byte 1
  loc_AB5259: FLdPr Me
  loc_AB525C: VCallAd Control_ID_lstCampos
  loc_AB525F: FStAdFunc var_90
  loc_AB5262: FLdPr var_90
  loc_AB5265: from_stack_2 = Me.List(from_stack_1)
  loc_AB526A: ILdRf translateField
  loc_AB526D: EqStr
  loc_AB526F: FFree1Str translateField
  loc_AB5272: FFree1Ad var_90
  loc_AB5275: BranchF loc_AB529A
  loc_AB5278: FLdRfVar translateField
  loc_AB527B: LitI2_Byte 1
  loc_AB527D: FLdPr Me
  loc_AB5280: VCallAd Control_ID_lstFields
  loc_AB5283: FStAdFunc var_90
  loc_AB5286: FLdPr var_90
  loc_AB5289: from_stack_2 = Me.List(from_stack_1)
  loc_AB528E: FLdZeroAd translateField
  loc_AB5291: FStStr var_88
  loc_AB5294: FFree1Ad var_90
  loc_AB5297: Branch loc_AB52E0
  loc_AB529A: ILdRf var_8C
  loc_AB529D: FLdRfVar translateField
  loc_AB52A0: LitI2_Byte 2
  loc_AB52A2: FLdPr Me
  loc_AB52A5: VCallAd Control_ID_lstCampos
  loc_AB52A8: FStAdFunc var_90
  loc_AB52AB: FLdPr var_90
  loc_AB52AE: from_stack_2 = Me.List(from_stack_1)
  loc_AB52B3: ILdRf translateField
  loc_AB52B6: EqStr
  loc_AB52B8: FFree1Str translateField
  loc_AB52BB: FFree1Ad var_90
  loc_AB52BE: BranchF loc_AB52E0
  loc_AB52C1: FLdRfVar translateField
  loc_AB52C4: LitI2_Byte 2
  loc_AB52C6: FLdPr Me
  loc_AB52C9: VCallAd Control_ID_lstFields
  loc_AB52CC: FStAdFunc var_90
  loc_AB52CF: FLdPr var_90
  loc_AB52D2: from_stack_2 = Me.List(from_stack_1)
  loc_AB52D7: FLdZeroAd translateField
  loc_AB52DA: FStStr var_88
  loc_AB52DD: FFree1Ad var_90
  loc_AB52E0: ExitProcCbHresult
End Function
