VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form dlgFiltrarTarifadeComercio
  Caption = "Filtrar Tarifa de Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgFiltrarTarifadeComercio.frx":0000
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
    OleObjectBlob = "dlgFiltrarTarifadeComercio.frx":08CA
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

Attribute VB_Name = "dlgFiltrarTarifadeComercio"

Public sPasaSelect As String
Public sCaption As String


Private Sub txtValor_GotFocus() '9C4808
  'Data Table: 442E54
  loc_9C47F4: FLdPr Me
  loc_9C47F7: VCallAd Control_ID_txtValor
  loc_9C47FA: CVarAd
  loc_9C47FE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C4803: FFree1Var var_94 = ""
  loc_9C4806: ExitProcHresult
End Sub

Private Sub Form_Load() 'AC9A9C
  'Data Table: 442E54
  loc_AC9984: LitStr "Filtrar Rubro"
  loc_AC9987: FLdPr Me
  loc_AC998A: Me.Caption = from_stack_1
  loc_AC998F: FLdPr Me
  loc_AC9992: VCallAd Control_ID_lstCampos
  loc_AC9995: FStAdFunc var_88
  loc_AC9998: LitVarI2 var_98, 0
  loc_AC999D: PopAdLdVar
  loc_AC999E: LitStr "Código Ramo"
  loc_AC99A1: FLdPr var_88
  loc_AC99A4: Me.AddItem from_stack_1, from_stack_2
  loc_AC99A9: LitVarI2 var_98, 1
  loc_AC99AE: PopAdLdVar
  loc_AC99AF: LitStr "Código Rubro"
  loc_AC99B2: FLdPr var_88
  loc_AC99B5: Me.AddItem from_stack_1, from_stack_2
  loc_AC99BA: LitNothing
  loc_AC99BC: FStAd var_88 
  loc_AC99C0: FLdPr Me
  loc_AC99C3: VCallAd Control_ID_lstFields
  loc_AC99C6: FStAdFunc var_9C
  loc_AC99C9: LitVarI2 var_98, 0
  loc_AC99CE: PopAdLdVar
  loc_AC99CF: LitStr "taricome.CodiRamo"
  loc_AC99D2: FLdPr var_9C
  loc_AC99D5: Me.AddItem from_stack_1, from_stack_2
  loc_AC99DA: LitVarI2 var_98, 1
  loc_AC99DF: PopAdLdVar
  loc_AC99E0: LitStr "taricome.CodiRubr"
  loc_AC99E3: FLdPr var_9C
  loc_AC99E6: Me.AddItem from_stack_1, from_stack_2
  loc_AC99EB: LitNothing
  loc_AC99ED: FStAd var_9C 
  loc_AC99F1: FLdPr Me
  loc_AC99F4: VCallAd Control_ID_cboOperador
  loc_AC99F7: FStAdFunc var_A0
  loc_AC99FA: LitVar_Missing var_98
  loc_AC99FD: PopAdLdVar
  loc_AC99FE: LitStr "Mayor o Igual que"
  loc_AC9A01: FLdPr var_A0
  loc_AC9A04: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A09: LitVar_Missing var_98
  loc_AC9A0C: PopAdLdVar
  loc_AC9A0D: LitStr "Mayor que"
  loc_AC9A10: FLdPr var_A0
  loc_AC9A13: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A18: LitVar_Missing var_98
  loc_AC9A1B: PopAdLdVar
  loc_AC9A1C: LitStr "Igual a"
  loc_AC9A1F: FLdPr var_A0
  loc_AC9A22: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A27: LitVar_Missing var_98
  loc_AC9A2A: PopAdLdVar
  loc_AC9A2B: LitStr "Distinto a"
  loc_AC9A2E: FLdPr var_A0
  loc_AC9A31: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A36: LitVar_Missing var_98
  loc_AC9A39: PopAdLdVar
  loc_AC9A3A: LitStr "Contiene"
  loc_AC9A3D: FLdPr var_A0
  loc_AC9A40: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A45: LitVar_Missing var_98
  loc_AC9A48: PopAdLdVar
  loc_AC9A49: LitStr "Menor que"
  loc_AC9A4C: FLdPr var_A0
  loc_AC9A4F: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A54: LitVar_Missing var_98
  loc_AC9A57: PopAdLdVar
  loc_AC9A58: LitStr "Menor o Igual que"
  loc_AC9A5B: FLdPr var_A0
  loc_AC9A5E: Me.AddItem from_stack_1, from_stack_2
  loc_AC9A63: LitNothing
  loc_AC9A65: FStAd var_A0 
  loc_AC9A69: LitI2_Byte &HFF
  loc_AC9A6B: LitI2_Byte 0
  loc_AC9A6D: FLdPr Me
  loc_AC9A70: VCallAd Control_ID_lstCampos
  loc_AC9A73: FStAdFunc var_A4
  loc_AC9A76: FLdPr var_A4
  loc_AC9A79: Me.Selected = from_stack_1
  loc_AC9A7E: FFree1Ad var_A4
  loc_AC9A81: LitStr "Igual a"
  loc_AC9A84: FLdPr Me
  loc_AC9A87: VCallAd Control_ID_cboOperador
  loc_AC9A8A: FStAdFunc var_A4
  loc_AC9A8D: FLdPr var_A4
  loc_AC9A90: Me.Text = from_stack_1
  loc_AC9A95: FFree1Ad var_A4
  loc_AC9A98: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'AB268C
  'Data Table: 442E54
  loc_AB25BC: FLdPr Me
  loc_AB25BF: VCallAd Control_ID_rtfRecordSource
  loc_AB25C2: FStAdFunc var_88
  loc_AB25C5: FLdPr var_88
  loc_AB25C8: LateIdLdVar var_98 DispID_-517 -1
  loc_AB25CF: CStrVarTmp
  loc_AB25D0: FStStrNoPop var_9C
  loc_AB25D3: LitStr vbNullString
  loc_AB25D6: NeStr
  loc_AB25D8: FFree1Str var_9C
  loc_AB25DB: FFree1Ad var_88
  loc_AB25DE: FFree1Var var_98 = ""
  loc_AB25E1: BranchF loc_AB266F
  loc_AB25E4: LitStr "SELECT taricome.CodiRamo, DetaRamo, taricome.CodiRubr, DetaRubr, ImpoTaco FROM taricome "
  loc_AB25E7: LitStr " LEFT JOIN ramo ON taricome.CodiRamo = ramo.CodiRamo "
  loc_AB25EA: ConcatStr
  loc_AB25EB: FStStrNoPop var_9C
  loc_AB25EE: LitStr " LEFT JOIN rubro ON taricome.CodiRamo = rubro.CodiRamo "
  loc_AB25F1: ConcatStr
  loc_AB25F2: FStStrNoPop var_A0
  loc_AB25F5: LitStr " AND taricome.CodiRubr = rubro.CodiRubr "
  loc_AB25F8: ConcatStr
  loc_AB25F9: FStStrNoPop var_A4
  loc_AB25FC: LitStr " WHERE "
  loc_AB25FF: ConcatStr
  loc_AB2600: FStStrNoPop var_A8
  loc_AB2603: FLdPr Me
  loc_AB2606: VCallAd Control_ID_rtfRecordSource
  loc_AB2609: FStAdFunc var_88
  loc_AB260C: FLdPr var_88
  loc_AB260F: LateIdLdVar var_98 DispID_-517 -1
  loc_AB2616: CStrVarTmp
  loc_AB2617: FStStrNoPop var_AC
  loc_AB261A: ConcatStr
  loc_AB261B: FStStrNoPop var_B0
  loc_AB261E: FLdPr Me
  loc_AB2621: MemStStrCopy
  loc_AB2625: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AB2634: FFree1Ad var_88
  loc_AB2637: FFree1Var var_98 = ""
  loc_AB263A: LitStr "Filtro aplicado: "
  loc_AB263D: FLdPr Me
  loc_AB2640: VCallAd Control_ID_rtfRecordSource
  loc_AB2643: FStAdFunc var_88
  loc_AB2646: FLdPr var_88
  loc_AB2649: LateIdLdVar var_98 DispID_-517 -1
  loc_AB2650: CStrVarTmp
  loc_AB2651: FStStrNoPop var_9C
  loc_AB2654: ConcatStr
  loc_AB2655: FStStrNoPop var_A0
  loc_AB2658: FLdPr Me
  loc_AB265B: MemStStrCopy
  loc_AB265F: FFreeStr var_9C = ""
  loc_AB2666: FFree1Ad var_88
  loc_AB2669: FFree1Var var_98 = ""
  loc_AB266C: Branch loc_AB2674
  loc_AB266F: Call CancelButton_Click()
  loc_AB2674: ILdRf Me
  loc_AB2677: FStAdNoPop
  loc_AB267B: ImpAdLdRf MemVar_D9C5D8
  loc_AB267E: NewIfNullPr Global
  loc_AB2681: Global.Unload from_stack_1
  loc_AB2686: FFree1Ad var_88
  loc_AB2689: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A41C58
  'Data Table: 442E54
  loc_A41C14: FLdPr Me
  loc_A41C17: VCallAd Control_ID_rtfRecordSource
  loc_A41C1A: FStAdFunc var_88
  loc_A41C1D: FLdPr var_88
  loc_A41C20: LateIdLdVar var_98 DispID_-517 -1
  loc_A41C27: CStrVarTmp
  loc_A41C28: FStStrNoPop var_9C
  loc_A41C2B: LitStr " AND "
  loc_A41C2E: ConcatStr
  loc_A41C2F: CVarStr var_AC
  loc_A41C32: PopAdLdVar
  loc_A41C33: FLdPr Me
  loc_A41C36: VCallAd Control_ID_rtfRecordSource
  loc_A41C39: FStAdFunc var_C0
  loc_A41C3C: FLdPr var_C0
  loc_A41C3F: LateIdSt
  loc_A41C44: FFree1Str var_9C
  loc_A41C47: FFreeAd var_88 = ""
  loc_A41C4E: FFreeVar var_98 = ""
  loc_A41C55: ExitProcHresult
  loc_A41C56: FLdRfVar var_2388
End Sub

Private Sub cmdAgregar_Click() 'B2AD94
  'Data Table: 442E54
  loc_B2AB2C: FLdRfVar var_90
  loc_B2AB2F: FLdPr Me
  loc_B2AB32: VCallAd Control_ID_txtValor
  loc_B2AB35: FStAdFunc var_8C
  loc_B2AB38: FLdPr var_8C
  loc_B2AB3B:  = Me.Text
  loc_B2AB40: ILdRf var_90
  loc_B2AB43: LitStr vbNullString
  loc_B2AB46: EqStr
  loc_B2AB48: FFree1Str var_90
  loc_B2AB4B: FFree1Ad var_8C
  loc_B2AB4E: BranchF loc_B2AB83
  loc_B2AB51: LitVar_Missing var_110
  loc_B2AB54: LitVar_Missing var_F0
  loc_B2AB57: LitVarStr var_C0, "InfoGov"
  loc_B2AB5C: FStVarCopyObj var_D0
  loc_B2AB5F: FLdRfVar var_D0
  loc_B2AB62: LitI4 &H30
  loc_B2AB67: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B2AB6C: FStVarCopyObj var_B0
  loc_B2AB6F: FLdRfVar var_B0
  loc_B2AB72: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2AB77: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B2AB82: ExitProcHresult
  loc_B2AB83: FLdPr Me
  loc_B2AB86: VCallAd Control_ID_rtfRecordSource
  loc_B2AB89: FStAdFunc var_8C
  loc_B2AB8C: FLdPr var_8C
  loc_B2AB8F: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2AB96: CStrVarTmp
  loc_B2AB97: FStStrNoPop var_90
  loc_B2AB9A: FLdPr Me
  loc_B2AB9D: MemStStrCopy
  loc_B2ABA1: FFree1Str var_90
  loc_B2ABA4: FFree1Ad var_8C
  loc_B2ABA7: FFree1Var var_B0 = ""
  loc_B2ABAA: FLdPr Me
  loc_B2ABAD: VCallAd Control_ID_rtfRecordSource
  loc_B2ABB0: FStAdFunc var_114
  loc_B2ABB3: FLdPr var_114
  loc_B2ABB6: LateIdLdVar var_D0 DispID_-517 -1
  loc_B2ABBD: PopAd
  loc_B2ABBF: FLdPr Me
  loc_B2ABC2: VCallAd Control_ID_rtfRecordSource
  loc_B2ABC5: FStAdFunc var_128
  loc_B2ABC8: FLdPr var_128
  loc_B2ABCB: LateIdLdVar var_138 DispID_-517 -1
  loc_B2ABD2: PopAd
  loc_B2ABD4: FLdPr Me
  loc_B2ABD7: VCallAd Control_ID_rtfRecordSource
  loc_B2ABDA: FStAdFunc var_8C
  loc_B2ABDD: FLdPr var_8C
  loc_B2ABE0: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2ABE7: CStrVarTmp
  loc_B2ABE8: FStStrNoPop var_90
  loc_B2ABEB: LitStr vbNullString
  loc_B2ABEE: NeStr
  loc_B2ABF0: CVarBoolI2 var_E0
  loc_B2ABF4: LitI4 4
  loc_B2ABF9: FLdRfVar var_D0
  loc_B2ABFC: CStrVarTmp
  loc_B2ABFD: CVarStr var_F0
  loc_B2AC00: FLdRfVar var_110
  loc_B2AC03: ImpAdCallFPR4  = Right(, )
  loc_B2AC08: FLdRfVar var_110
  loc_B2AC0B: LitVarStr var_A0, "AND "
  loc_B2AC10: HardType
  loc_B2AC11: EqVar var_124
  loc_B2AC15: LitI4 3
  loc_B2AC1A: FLdRfVar var_138
  loc_B2AC1D: CStrVarTmp
  loc_B2AC1E: CVarStr var_148
  loc_B2AC21: FLdRfVar var_158
  loc_B2AC24: ImpAdCallFPR4  = Right(, )
  loc_B2AC29: FLdRfVar var_158
  loc_B2AC2C: LitVarStr var_C0, "OR "
  loc_B2AC31: HardType
  loc_B2AC32: EqVar var_168
  loc_B2AC36: OrVar var_178
  loc_B2AC3A: NotVar var_188
  loc_B2AC3E: AndVar var_198
  loc_B2AC42: CBoolVarNull
  loc_B2AC44: FFree1Str var_90
  loc_B2AC47: FFreeAd var_8C = "": var_114 = ""
  loc_B2AC50: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B2AC63: BranchF loc_B2AC6B
  loc_B2AC66: Call cmdAnd_Click()
  loc_B2AC6B: FLdRfVar var_90
  loc_B2AC6E: FLdPr Me
  loc_B2AC71: VCallAd Control_ID_cboOperador
  loc_B2AC74: FStAdFunc var_8C
  loc_B2AC77: FLdPr var_8C
  loc_B2AC7A:  = Me.Text
  loc_B2AC7F: ILdRf var_90
  loc_B2AC82: LitStr "Contiene"
  loc_B2AC85: EqStr
  loc_B2AC87: FFree1Str var_90
  loc_B2AC8A: FFree1Ad var_8C
  loc_B2AC8D: BranchF loc_B2AC99
  loc_B2AC90: LitStr Chr(37)
  loc_B2AC93: FStStrCopy var_88
  loc_B2AC96: Branch loc_B2AC9F
  loc_B2AC99: LitStr vbNullString
  loc_B2AC9C: FStStrCopy var_88
  loc_B2AC9F: FLdPr Me
  loc_B2ACA2: VCallAd Control_ID_rtfRecordSource
  loc_B2ACA5: FStAdFunc var_8C
  loc_B2ACA8: FLdPr var_8C
  loc_B2ACAB: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2ACB2: CStrVarTmp
  loc_B2ACB3: FStStrNoPop var_1A0
  loc_B2ACB6: FLdRfVar var_90
  loc_B2ACB9: FLdRfVar var_19A
  loc_B2ACBC: FLdPr Me
  loc_B2ACBF: VCallAd Control_ID_lstCampos
  loc_B2ACC2: FStAdFunc var_114
  loc_B2ACC5: FLdPr var_114
  loc_B2ACC8:  = Me.ListIndex
  loc_B2ACCD: FLdI2 var_19A
  loc_B2ACD0: FLdPr Me
  loc_B2ACD3: VCallAd Control_ID_lstFields
  loc_B2ACD6: FStAdFunc var_128
  loc_B2ACD9: FLdPr var_128
  loc_B2ACDC: from_stack_2 = Me.List(from_stack_1)
  loc_B2ACE1: ILdRf var_90
  loc_B2ACE4: ConcatStr
  loc_B2ACE5: FStStrNoPop var_1A4
  loc_B2ACE8: LitStr " "
  loc_B2ACEB: ConcatStr
  loc_B2ACEC: FStStrNoPop var_1B4
  loc_B2ACEF: FLdRfVar var_1AC
  loc_B2ACF2: FLdPr Me
  loc_B2ACF5: VCallAd Control_ID_cboOperador
  loc_B2ACF8: FStAdFunc var_1A8
  loc_B2ACFB: FLdPr var_1A8
  loc_B2ACFE:  = Me.Text
  loc_B2AD03: FLdZeroAd var_1AC
  loc_B2AD06: PopTmpLdAdStr
  loc_B2AD0A: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2AD0F: FStStrNoPop var_1B8
  loc_B2AD12: ConcatStr
  loc_B2AD13: FStStrNoPop var_1BC
  loc_B2AD16: LitStr " '"
  loc_B2AD19: ILdRf var_88
  loc_B2AD1C: ConcatStr
  loc_B2AD1D: FStStrNoPop var_1C0
  loc_B2AD20: ConcatStr
  loc_B2AD21: FStStrNoPop var_1CC
  loc_B2AD24: FLdRfVar var_1C8
  loc_B2AD27: FLdPr Me
  loc_B2AD2A: VCallAd Control_ID_txtValor
  loc_B2AD2D: FStAdFunc var_1C4
  loc_B2AD30: FLdPr var_1C4
  loc_B2AD33:  = Me.Text
  loc_B2AD38: ILdRf var_1C8
  loc_B2AD3B: ConcatStr
  loc_B2AD3C: FStStrNoPop var_1D0
  loc_B2AD3F: ILdRf var_88
  loc_B2AD42: ConcatStr
  loc_B2AD43: FStStrNoPop var_1D4
  loc_B2AD46: LitStr "'"
  loc_B2AD49: ConcatStr
  loc_B2AD4A: CVarStr var_D0
  loc_B2AD4D: PopAdLdVar
  loc_B2AD4E: FLdPr Me
  loc_B2AD51: VCallAd Control_ID_rtfRecordSource
  loc_B2AD54: FStAdFunc var_1D8
  loc_B2AD57: FLdPr var_1D8
  loc_B2AD5A: LateIdSt
  loc_B2AD5F: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B2AD7A: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B2AD89: FFreeVar var_B0 = ""
  loc_B2AD90: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9DE52C
  'Data Table: 442E54
  loc_9DE510: LitVarStr var_94, vbNullString
  loc_9DE515: PopAdLdVar
  loc_9DE516: FLdPr Me
  loc_9DE519: VCallAd Control_ID_rtfRecordSource
  loc_9DE51C: FStAdFunc var_A8
  loc_9DE51F: FLdPr var_A8
  loc_9DE522: LateIdSt
  loc_9DE527: FFree1Ad var_A8
  loc_9DE52A: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'B01298
  'Data Table: 442E54
  loc_B010BC: FLdPr Me
  loc_B010BF: VCallAd Control_ID_rtfRecordSource
  loc_B010C2: FStAdFunc var_8C
  loc_B010C5: FLdPr var_8C
  loc_B010C8: LateIdLdVar var_9C DispID_-517 -1
  loc_B010CF: PopAd
  loc_B010D1: LitI4 0
  loc_B010D6: LitI4 -1
  loc_B010DB: LitStr " AND"
  loc_B010DE: FLdRfVar var_9C
  loc_B010E1: CStrVarTmp
  loc_B010E2: FStStrNoPop var_A0
  loc_B010E5: ImpAdCallI2 InStrRev(, , , )
  loc_B010EA: CI2I4
  loc_B010EB: FStI2 var_86
  loc_B010EE: FFree1Str var_A0
  loc_B010F1: FFree1Ad var_8C
  loc_B010F4: FFree1Var var_9C = ""
  loc_B010F7: FLdPr Me
  loc_B010FA: VCallAd Control_ID_rtfRecordSource
  loc_B010FD: FStAdFunc var_8C
  loc_B01100: FLdPr var_8C
  loc_B01103: LateIdLdVar var_9C DispID_-517 -1
  loc_B0110A: PopAd
  loc_B0110C: LitI4 0
  loc_B01111: LitI4 -1
  loc_B01116: LitStr " OR"
  loc_B01119: FLdRfVar var_9C
  loc_B0111C: CStrVarTmp
  loc_B0111D: FStStrNoPop var_A0
  loc_B01120: ImpAdCallI2 InStrRev(, , , )
  loc_B01125: CI2I4
  loc_B01126: FStI2 var_88
  loc_B01129: FFree1Str var_A0
  loc_B0112C: FFree1Ad var_8C
  loc_B0112F: FFree1Var var_9C = ""
  loc_B01132: FLdI2 var_86
  loc_B01135: LitI2_Byte 0
  loc_B01137: EqI2
  loc_B01138: FLdI2 var_88
  loc_B0113B: LitI2_Byte 0
  loc_B0113D: EqI2
  loc_B0113E: AndI4
  loc_B0113F: BranchF loc_B0115F
  loc_B01142: LitVarStr var_B0, vbNullString
  loc_B01147: PopAdLdVar
  loc_B01148: FLdPr Me
  loc_B0114B: VCallAd Control_ID_rtfRecordSource
  loc_B0114E: FStAdFunc var_8C
  loc_B01151: FLdPr var_8C
  loc_B01154: LateIdSt
  loc_B01159: FFree1Ad var_8C
  loc_B0115C: Branch loc_B01296
  loc_B0115F: FLdI2 var_86
  loc_B01162: FLdI2 var_88
  loc_B01165: GtI2
  loc_B01166: BranchF loc_B01201
  loc_B01169: FLdPr Me
  loc_B0116C: VCallAd Control_ID_rtfRecordSource
  loc_B0116F: FStAdFunc var_8C
  loc_B01172: FLdPr var_8C
  loc_B01175: LateIdLdVar var_9C DispID_-517 -1
  loc_B0117C: PopAd
  loc_B0117E: FLdPr Me
  loc_B01181: VCallAd Control_ID_rtfRecordSource
  loc_B01184: FStAdFunc var_C4
  loc_B01187: FLdPr var_C4
  loc_B0118A: LateIdLdVar var_D4 DispID_-517 -1
  loc_B01191: PopAd
  loc_B01193: LitI4 0
  loc_B01198: LitI4 -1
  loc_B0119D: LitStr " AND"
  loc_B011A0: FLdRfVar var_D4
  loc_B011A3: CStrVarTmp
  loc_B011A4: FStStrNoPop var_A0
  loc_B011A7: ImpAdCallI2 InStrRev(, , , )
  loc_B011AC: LitI4 1
  loc_B011B1: SubI4
  loc_B011B2: CVarI4
  loc_B011B6: LitI4 1
  loc_B011BB: FLdRfVar var_9C
  loc_B011BE: CStrVarTmp
  loc_B011BF: CVarStr var_E4
  loc_B011C2: FLdRfVar var_104
  loc_B011C5: ImpAdCallFPR4  = Mid(, , )
  loc_B011CA: FLdRfVar var_104
  loc_B011CD: CStrVarTmp
  loc_B011CE: CVarStr var_114
  loc_B011D1: PopAdLdVar
  loc_B011D2: FLdPr Me
  loc_B011D5: VCallAd Control_ID_rtfRecordSource
  loc_B011D8: FStAdFunc var_118
  loc_B011DB: FLdPr var_118
  loc_B011DE: LateIdSt
  loc_B011E3: FFree1Str var_A0
  loc_B011E6: FFreeAd var_8C = "": var_C4 = ""
  loc_B011EF: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B011FE: Branch loc_B01296
  loc_B01201: FLdPr Me
  loc_B01204: VCallAd Control_ID_rtfRecordSource
  loc_B01207: FStAdFunc var_8C
  loc_B0120A: FLdPr var_8C
  loc_B0120D: LateIdLdVar var_9C DispID_-517 -1
  loc_B01214: PopAd
  loc_B01216: FLdPr Me
  loc_B01219: VCallAd Control_ID_rtfRecordSource
  loc_B0121C: FStAdFunc var_C4
  loc_B0121F: FLdPr var_C4
  loc_B01222: LateIdLdVar var_D4 DispID_-517 -1
  loc_B01229: PopAd
  loc_B0122B: LitI4 0
  loc_B01230: LitI4 -1
  loc_B01235: LitStr " OR"
  loc_B01238: FLdRfVar var_D4
  loc_B0123B: CStrVarTmp
  loc_B0123C: FStStrNoPop var_A0
  loc_B0123F: ImpAdCallI2 InStrRev(, , , )
  loc_B01244: LitI4 1
  loc_B01249: SubI4
  loc_B0124A: CVarI4
  loc_B0124E: LitI4 1
  loc_B01253: FLdRfVar var_9C
  loc_B01256: CStrVarTmp
  loc_B01257: CVarStr var_E4
  loc_B0125A: FLdRfVar var_104
  loc_B0125D: ImpAdCallFPR4  = Mid(, , )
  loc_B01262: FLdRfVar var_104
  loc_B01265: CStrVarTmp
  loc_B01266: CVarStr var_114
  loc_B01269: PopAdLdVar
  loc_B0126A: FLdPr Me
  loc_B0126D: VCallAd Control_ID_rtfRecordSource
  loc_B01270: FStAdFunc var_118
  loc_B01273: FLdPr var_118
  loc_B01276: LateIdSt
  loc_B0127B: FFree1Str var_A0
  loc_B0127E: FFreeAd var_8C = "": var_C4 = ""
  loc_B01287: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_B01296: ExitProcHresult
End Sub

Private Sub cmdOr_Click() 'A41BD0
  'Data Table: 442E54
  loc_A41B8C: FLdPr Me
  loc_A41B8F: VCallAd Control_ID_rtfRecordSource
  loc_A41B92: FStAdFunc var_88
  loc_A41B95: FLdPr var_88
  loc_A41B98: LateIdLdVar var_98 DispID_-517 -1
  loc_A41B9F: CStrVarTmp
  loc_A41BA0: FStStrNoPop var_9C
  loc_A41BA3: LitStr " OR "
  loc_A41BA6: ConcatStr
  loc_A41BA7: CVarStr var_AC
  loc_A41BAA: PopAdLdVar
  loc_A41BAB: FLdPr Me
  loc_A41BAE: VCallAd Control_ID_rtfRecordSource
  loc_A41BB1: FStAdFunc var_C0
  loc_A41BB4: FLdPr var_C0
  loc_A41BB7: LateIdSt
  loc_A41BBC: FFree1Str var_9C
  loc_A41BBF: FFreeAd var_88 = ""
  loc_A41BC6: FFreeVar var_98 = ""
  loc_A41BCD: ExitProcHresult
End Sub

Private Sub CancelButton_Click() 'A5B454
  'Data Table: 442E54
  loc_A5B400: LitStr "SELECT taricome.CodiRamo, DetaRamo, taricome.CodiRubr, DetaRubr, ImpoTaco FROM taricome "
  loc_A5B403: LitStr " LEFT JOIN ramo ON taricome.CodiRamo = ramo.CodiRamo "
  loc_A5B406: ConcatStr
  loc_A5B407: FStStrNoPop var_88
  loc_A5B40A: LitStr " LEFT JOIN rubro ON taricome.CodiRamo = rubro.CodiRamo "
  loc_A5B40D: ConcatStr
  loc_A5B40E: FStStrNoPop var_8C
  loc_A5B411: LitStr " AND taricome.CodiRubr = rubro.CodiRubr "
  loc_A5B414: ConcatStr
  loc_A5B415: FStStrNoPop var_90
  loc_A5B418: LitStr " ORDER BY CodiRamo, CodiRubr"
  loc_A5B41B: ConcatStr
  loc_A5B41C: FStStrNoPop var_94
  loc_A5B41F: FLdPr Me
  loc_A5B422: MemStStrCopy
  loc_A5B426: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A5B431: LitStr vbNullString
  loc_A5B434: FLdPr Me
  loc_A5B437: MemStStrCopy
  loc_A5B43B: ILdRf Me
  loc_A5B43E: FStAdNoPop
  loc_A5B442: ImpAdLdRf MemVar_D9C5D8
  loc_A5B445: NewIfNullPr Global
  loc_A5B448: Global.Unload from_stack_1
  loc_A5B44D: FFree1Ad var_98
  loc_A5B450: ExitProcHresult
End Sub

Public Function sPasaSelectGet() '4436C4
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '4436D3
  sPasaSelect = Value
End Sub

Public Function sCaptionGet() '4436E2
  sCaptionGet = sCaption
End Function

Public Sub sCaptionPut(Value) '4436F1
  sCaption = Value
End Sub

Public Function translateField(Label) 'A8DBE4
  'Data Table: 442E54
  loc_A8DB44: ZeroRetVal
  loc_A8DB46: ILdI4 Label
  loc_A8DB49: FStStrCopy var_8C
  loc_A8DB4C: ILdRf var_8C
  loc_A8DB4F: FLdRfVar translateField
  loc_A8DB52: LitI2_Byte 0
  loc_A8DB54: FLdPr Me
  loc_A8DB57: VCallAd Control_ID_lstCampos
  loc_A8DB5A: FStAdFunc var_90
  loc_A8DB5D: FLdPr var_90
  loc_A8DB60: from_stack_2 = Me.List(from_stack_1)
  loc_A8DB65: ILdRf translateField
  loc_A8DB68: EqStr
  loc_A8DB6A: FFree1Str translateField
  loc_A8DB6D: FFree1Ad var_90
  loc_A8DB70: BranchF loc_A8DB95
  loc_A8DB73: FLdRfVar translateField
  loc_A8DB76: LitI2_Byte 0
  loc_A8DB78: FLdPr Me
  loc_A8DB7B: VCallAd Control_ID_lstFields
  loc_A8DB7E: FStAdFunc var_90
  loc_A8DB81: FLdPr var_90
  loc_A8DB84: from_stack_2 = Me.List(from_stack_1)
  loc_A8DB89: FLdZeroAd translateField
  loc_A8DB8C: FStStr var_88
  loc_A8DB8F: FFree1Ad var_90
  loc_A8DB92: Branch loc_A8DBDB
  loc_A8DB95: ILdRf var_8C
  loc_A8DB98: FLdRfVar translateField
  loc_A8DB9B: LitI2_Byte 1
  loc_A8DB9D: FLdPr Me
  loc_A8DBA0: VCallAd Control_ID_lstCampos
  loc_A8DBA3: FStAdFunc var_90
  loc_A8DBA6: FLdPr var_90
  loc_A8DBA9: from_stack_2 = Me.List(from_stack_1)
  loc_A8DBAE: ILdRf translateField
  loc_A8DBB1: EqStr
  loc_A8DBB3: FFree1Str translateField
  loc_A8DBB6: FFree1Ad var_90
  loc_A8DBB9: BranchF loc_A8DBDB
  loc_A8DBBC: FLdRfVar translateField
  loc_A8DBBF: LitI2_Byte 1
  loc_A8DBC1: FLdPr Me
  loc_A8DBC4: VCallAd Control_ID_lstFields
  loc_A8DBC7: FStAdFunc var_90
  loc_A8DBCA: FLdPr var_90
  loc_A8DBCD: from_stack_2 = Me.List(from_stack_1)
  loc_A8DBD2: FLdZeroAd translateField
  loc_A8DBD5: FStStr var_88
  loc_A8DBD8: FFree1Ad var_90
  loc_A8DBDB: ExitProcCbHresult
End Function
