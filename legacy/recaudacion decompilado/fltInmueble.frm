VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B504021C009402}#1.2#0"; "C:\WINDOWS\SysWOW64\richtx32.ocx"
Begin VB.Form fltInmueble
  Caption = "Filtrar Inmueble"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "fltInmueble.frx":0000
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
    OleObjectBlob = "fltInmueble.frx":08CA
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

Attribute VB_Name = "fltInmueble"

Public sFiltro As String
Public sOrder As String


Private Sub txtValor_GotFocus() '9C6AE8
  'Data Table: 44563C
  loc_9C6AD4: FLdPr Me
  loc_9C6AD7: VCallAd Control_ID_txtValor
  loc_9C6ADA: CVarAd
  loc_9C6ADE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C6AE3: FFree1Var var_94 = ""
  loc_9C6AE6: ExitProcHresult
End Sub

Private Sub Form_Load() 'B086EC
  'Data Table: 44563C
  loc_B084D0: FLdPr Me
  loc_B084D3: VCallAd Control_ID_lstCampos
  loc_B084D6: FStAdFunc var_88
  loc_B084D9: LitVarI2 var_98, 0
  loc_B084DE: PopAdLdVar
  loc_B084DF: LitStr "Numero de Padrón"
  loc_B084E2: FLdPr var_88
  loc_B084E5: Me.AddItem from_stack_1, from_stack_2
  loc_B084EA: LitVarI2 var_98, 1
  loc_B084EF: PopAdLdVar
  loc_B084F0: LitStr "Apellido y Nombre"
  loc_B084F3: FLdPr var_88
  loc_B084F6: Me.AddItem from_stack_1, from_stack_2
  loc_B084FB: LitVarI2 var_98, 2
  loc_B08500: PopAdLdVar
  loc_B08501: LitStr "Departamento"
  loc_B08504: FLdPr var_88
  loc_B08507: Me.AddItem from_stack_1, from_stack_2
  loc_B0850C: LitVarI2 var_98, 3
  loc_B08511: PopAdLdVar
  loc_B08512: LitStr "Distrito"
  loc_B08515: FLdPr var_88
  loc_B08518: Me.AddItem from_stack_1, from_stack_2
  loc_B0851D: LitVarI2 var_98, 4
  loc_B08522: PopAdLdVar
  loc_B08523: LitStr "Sección"
  loc_B08526: FLdPr var_88
  loc_B08529: Me.AddItem from_stack_1, from_stack_2
  loc_B0852E: LitVarI2 var_98, 5
  loc_B08533: PopAdLdVar
  loc_B08534: LitStr "Manzana"
  loc_B08537: FLdPr var_88
  loc_B0853A: Me.AddItem from_stack_1, from_stack_2
  loc_B0853F: LitVarI2 var_98, 6
  loc_B08544: PopAdLdVar
  loc_B08545: LitStr "Parcela"
  loc_B08548: FLdPr var_88
  loc_B0854B: Me.AddItem from_stack_1, from_stack_2
  loc_B08550: LitVarI2 var_98, 7
  loc_B08555: PopAdLdVar
  loc_B08556: LitStr "SubParcela"
  loc_B08559: FLdPr var_88
  loc_B0855C: Me.AddItem from_stack_1, from_stack_2
  loc_B08561: LitVarI2 var_98, 8
  loc_B08566: PopAdLdVar
  loc_B08567: LitStr "Digito Verificador"
  loc_B0856A: FLdPr var_88
  loc_B0856D: Me.AddItem from_stack_1, from_stack_2
  loc_B08572: LitVarI2 var_98, 9
  loc_B08577: PopAdLdVar
  loc_B08578: LitStr "Nomenclatura"
  loc_B0857B: FLdPr var_88
  loc_B0857E: Me.AddItem from_stack_1, from_stack_2
  loc_B08583: LitNothing
  loc_B08585: FStAd var_88 
  loc_B08589: FLdPr Me
  loc_B0858C: VCallAd Control_ID_lstFields
  loc_B0858F: FStAdFunc var_9C
  loc_B08592: LitVarI2 var_98, 0
  loc_B08597: PopAdLdVar
  loc_B08598: LitStr "inmueble.CodiInmu"
  loc_B0859B: FLdPr var_9C
  loc_B0859E: Me.AddItem from_stack_1, from_stack_2
  loc_B085A3: LitVarI2 var_98, 1
  loc_B085A8: PopAdLdVar
  loc_B085A9: LitStr "persona.DetaPers"
  loc_B085AC: FLdPr var_9C
  loc_B085AF: Me.AddItem from_stack_1, from_stack_2
  loc_B085B4: LitVarI2 var_98, 2
  loc_B085B9: PopAdLdVar
  loc_B085BA: LitStr "inmueble.DptoInmu"
  loc_B085BD: FLdPr var_9C
  loc_B085C0: Me.AddItem from_stack_1, from_stack_2
  loc_B085C5: LitVarI2 var_98, 3
  loc_B085CA: PopAdLdVar
  loc_B085CB: LitStr "inmueble.DistInmu"
  loc_B085CE: FLdPr var_9C
  loc_B085D1: Me.AddItem from_stack_1, from_stack_2
  loc_B085D6: LitVarI2 var_98, 4
  loc_B085DB: PopAdLdVar
  loc_B085DC: LitStr "inmueble.SeccInmu"
  loc_B085DF: FLdPr var_9C
  loc_B085E2: Me.AddItem from_stack_1, from_stack_2
  loc_B085E7: LitVarI2 var_98, 5
  loc_B085EC: PopAdLdVar
  loc_B085ED: LitStr "inmueble.ManzInmu"
  loc_B085F0: FLdPr var_9C
  loc_B085F3: Me.AddItem from_stack_1, from_stack_2
  loc_B085F8: LitVarI2 var_98, 6
  loc_B085FD: PopAdLdVar
  loc_B085FE: LitStr "inmueble.ParcInmu"
  loc_B08601: FLdPr var_9C
  loc_B08604: Me.AddItem from_stack_1, from_stack_2
  loc_B08609: LitVarI2 var_98, 7
  loc_B0860E: PopAdLdVar
  loc_B0860F: LitStr "inmueble.SubpInmu"
  loc_B08612: FLdPr var_9C
  loc_B08615: Me.AddItem from_stack_1, from_stack_2
  loc_B0861A: LitVarI2 var_98, 8
  loc_B0861F: PopAdLdVar
  loc_B08620: LitStr "inmueble.DigiInmu"
  loc_B08623: FLdPr var_9C
  loc_B08626: Me.AddItem from_stack_1, from_stack_2
  loc_B0862B: LitVarI2 var_98, 9
  loc_B08630: PopAdLdVar
  loc_B08631: LitStr "inmueble.NomeInmu"
  loc_B08634: FLdPr var_9C
  loc_B08637: Me.AddItem from_stack_1, from_stack_2
  loc_B0863C: LitNothing
  loc_B0863E: FStAd var_9C 
  loc_B08642: FLdPr Me
  loc_B08645: VCallAd Control_ID_cboOperador
  loc_B08648: FStAdFunc var_A0
  loc_B0864B: LitVar_Missing var_98
  loc_B0864E: PopAdLdVar
  loc_B0864F: LitStr "Mayor o Igual que"
  loc_B08652: FLdPr var_A0
  loc_B08655: Me.AddItem from_stack_1, from_stack_2
  loc_B0865A: LitVar_Missing var_98
  loc_B0865D: PopAdLdVar
  loc_B0865E: LitStr "Mayor que"
  loc_B08661: FLdPr var_A0
  loc_B08664: Me.AddItem from_stack_1, from_stack_2
  loc_B08669: LitVar_Missing var_98
  loc_B0866C: PopAdLdVar
  loc_B0866D: LitStr "Igual a"
  loc_B08670: FLdPr var_A0
  loc_B08673: Me.AddItem from_stack_1, from_stack_2
  loc_B08678: LitVar_Missing var_98
  loc_B0867B: PopAdLdVar
  loc_B0867C: LitStr "Distinto a"
  loc_B0867F: FLdPr var_A0
  loc_B08682: Me.AddItem from_stack_1, from_stack_2
  loc_B08687: LitVar_Missing var_98
  loc_B0868A: PopAdLdVar
  loc_B0868B: LitStr "Contiene"
  loc_B0868E: FLdPr var_A0
  loc_B08691: Me.AddItem from_stack_1, from_stack_2
  loc_B08696: LitVar_Missing var_98
  loc_B08699: PopAdLdVar
  loc_B0869A: LitStr "Menor que"
  loc_B0869D: FLdPr var_A0
  loc_B086A0: Me.AddItem from_stack_1, from_stack_2
  loc_B086A5: LitVar_Missing var_98
  loc_B086A8: PopAdLdVar
  loc_B086A9: LitStr "Menor o Igual que"
  loc_B086AC: FLdPr var_A0
  loc_B086AF: Me.AddItem from_stack_1, from_stack_2
  loc_B086B4: LitNothing
  loc_B086B6: FStAd var_A0 
  loc_B086BA: LitI2_Byte &HFF
  loc_B086BC: LitI2_Byte 0
  loc_B086BE: FLdPr Me
  loc_B086C1: VCallAd Control_ID_lstCampos
  loc_B086C4: FStAdFunc var_A4
  loc_B086C7: FLdPr var_A4
  loc_B086CA: Me.Selected = from_stack_1
  loc_B086CF: FFree1Ad var_A4
  loc_B086D2: LitStr "Igual a"
  loc_B086D5: FLdPr Me
  loc_B086D8: VCallAd Control_ID_cboOperador
  loc_B086DB: FStAdFunc var_A4
  loc_B086DE: FLdPr var_A4
  loc_B086E1: Me.Text = from_stack_1
  loc_B086E6: FFree1Ad var_A4
  loc_B086E9: ExitProcHresult
End Sub

Private Sub OKButton_Click() 'A6E518
  'Data Table: 44563C
  loc_A6E4A8: FLdPr Me
  loc_A6E4AB: VCallAd Control_ID_rtfRecordSource
  loc_A6E4AE: FStAdFunc var_88
  loc_A6E4B1: FLdPr var_88
  loc_A6E4B4: LateIdLdVar var_98 DispID_-517 -1
  loc_A6E4BB: CStrVarTmp
  loc_A6E4BC: FStStrNoPop var_9C
  loc_A6E4BF: LitStr vbNullString
  loc_A6E4C2: NeStr
  loc_A6E4C4: FFree1Str var_9C
  loc_A6E4C7: FFree1Ad var_88
  loc_A6E4CA: FFree1Var var_98 = ""
  loc_A6E4CD: BranchF loc_A6E4FA
  loc_A6E4D0: FLdPr Me
  loc_A6E4D3: VCallAd Control_ID_rtfRecordSource
  loc_A6E4D6: FStAdFunc var_88
  loc_A6E4D9: FLdPr var_88
  loc_A6E4DC: LateIdLdVar var_98 DispID_-517 -1
  loc_A6E4E3: CStrVarTmp
  loc_A6E4E4: FStStrNoPop var_9C
  loc_A6E4E7: FLdPr Me
  loc_A6E4EA: MemStStrCopy
  loc_A6E4EE: FFree1Str var_9C
  loc_A6E4F1: FFree1Ad var_88
  loc_A6E4F4: FFree1Var var_98 = ""
  loc_A6E4F7: Branch loc_A6E4FF
  loc_A6E4FA: Call CancelButton_Click()
  loc_A6E4FF: ILdRf Me
  loc_A6E502: FStAdNoPop
  loc_A6E506: ImpAdLdRf MemVar_D9C5D8
  loc_A6E509: NewIfNullPr Global
  loc_A6E50C: Global.Unload from_stack_1
  loc_A6E511: FFree1Ad var_88
  loc_A6E514: ExitProcHresult
End Sub

Private Sub cmdAnd_Click() 'A40BE0
  'Data Table: 44563C
  loc_A40B9C: FLdPr Me
  loc_A40B9F: VCallAd Control_ID_rtfRecordSource
  loc_A40BA2: FStAdFunc var_88
  loc_A40BA5: FLdPr var_88
  loc_A40BA8: LateIdLdVar var_98 DispID_-517 -1
  loc_A40BAF: CStrVarTmp
  loc_A40BB0: FStStrNoPop var_9C
  loc_A40BB3: LitStr " AND "
  loc_A40BB6: ConcatStr
  loc_A40BB7: CVarStr var_AC
  loc_A40BBA: PopAdLdVar
  loc_A40BBB: FLdPr Me
  loc_A40BBE: VCallAd Control_ID_rtfRecordSource
  loc_A40BC1: FStAdFunc var_C0
  loc_A40BC4: FLdPr var_C0
  loc_A40BC7: LateIdSt
  loc_A40BCC: FFree1Str var_9C
  loc_A40BCF: FFreeAd var_88 = ""
  loc_A40BD6: FFreeVar var_98 = ""
  loc_A40BDD: ExitProcHresult
  loc_A40BDE: ImpAdLdRf MemVar_C3004012
End Sub

Private Sub cmdAgregar_Click() 'B2B0AC
  'Data Table: 44563C
  loc_B2AE44: FLdRfVar var_90
  loc_B2AE47: FLdPr Me
  loc_B2AE4A: VCallAd Control_ID_txtValor
  loc_B2AE4D: FStAdFunc var_8C
  loc_B2AE50: FLdPr var_8C
  loc_B2AE53:  = Me.Text
  loc_B2AE58: ILdRf var_90
  loc_B2AE5B: LitStr vbNullString
  loc_B2AE5E: EqStr
  loc_B2AE60: FFree1Str var_90
  loc_B2AE63: FFree1Ad var_8C
  loc_B2AE66: BranchF loc_B2AE9B
  loc_B2AE69: LitVar_Missing var_110
  loc_B2AE6C: LitVar_Missing var_F0
  loc_B2AE6F: LitVarStr var_C0, "InfoGov"
  loc_B2AE74: FStVarCopyObj var_D0
  loc_B2AE77: FLdRfVar var_D0
  loc_B2AE7A: LitI4 &H30
  loc_B2AE7F: LitVarStr var_A0, "Debe ingresar un valor. Reintente..."
  loc_B2AE84: FStVarCopyObj var_B0
  loc_B2AE87: FLdRfVar var_B0
  loc_B2AE8A: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B2AE8F: FFreeVar var_B0 = "": var_D0 = "": var_F0 = ""
  loc_B2AE9A: ExitProcHresult
  loc_B2AE9B: FLdPr Me
  loc_B2AE9E: VCallAd Control_ID_rtfRecordSource
  loc_B2AEA1: FStAdFunc var_8C
  loc_B2AEA4: FLdPr var_8C
  loc_B2AEA7: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2AEAE: CStrVarTmp
  loc_B2AEAF: FStStrNoPop var_90
  loc_B2AEB2: FLdPr Me
  loc_B2AEB5: MemStStrCopy
  loc_B2AEB9: FFree1Str var_90
  loc_B2AEBC: FFree1Ad var_8C
  loc_B2AEBF: FFree1Var var_B0 = ""
  loc_B2AEC2: FLdPr Me
  loc_B2AEC5: VCallAd Control_ID_rtfRecordSource
  loc_B2AEC8: FStAdFunc var_114
  loc_B2AECB: FLdPr var_114
  loc_B2AECE: LateIdLdVar var_D0 DispID_-517 -1
  loc_B2AED5: PopAd
  loc_B2AED7: FLdPr Me
  loc_B2AEDA: VCallAd Control_ID_rtfRecordSource
  loc_B2AEDD: FStAdFunc var_128
  loc_B2AEE0: FLdPr var_128
  loc_B2AEE3: LateIdLdVar var_138 DispID_-517 -1
  loc_B2AEEA: PopAd
  loc_B2AEEC: FLdPr Me
  loc_B2AEEF: VCallAd Control_ID_rtfRecordSource
  loc_B2AEF2: FStAdFunc var_8C
  loc_B2AEF5: FLdPr var_8C
  loc_B2AEF8: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2AEFF: CStrVarTmp
  loc_B2AF00: FStStrNoPop var_90
  loc_B2AF03: LitStr vbNullString
  loc_B2AF06: NeStr
  loc_B2AF08: CVarBoolI2 var_E0
  loc_B2AF0C: LitI4 4
  loc_B2AF11: FLdRfVar var_D0
  loc_B2AF14: CStrVarTmp
  loc_B2AF15: CVarStr var_F0
  loc_B2AF18: FLdRfVar var_110
  loc_B2AF1B: ImpAdCallFPR4  = Right(, )
  loc_B2AF20: FLdRfVar var_110
  loc_B2AF23: LitVarStr var_A0, "AND "
  loc_B2AF28: HardType
  loc_B2AF29: EqVar var_124
  loc_B2AF2D: LitI4 3
  loc_B2AF32: FLdRfVar var_138
  loc_B2AF35: CStrVarTmp
  loc_B2AF36: CVarStr var_148
  loc_B2AF39: FLdRfVar var_158
  loc_B2AF3C: ImpAdCallFPR4  = Right(, )
  loc_B2AF41: FLdRfVar var_158
  loc_B2AF44: LitVarStr var_C0, "OR "
  loc_B2AF49: HardType
  loc_B2AF4A: EqVar var_168
  loc_B2AF4E: OrVar var_178
  loc_B2AF52: NotVar var_188
  loc_B2AF56: AndVar var_198
  loc_B2AF5A: CBoolVarNull
  loc_B2AF5C: FFree1Str var_90
  loc_B2AF5F: FFreeAd var_8C = "": var_114 = ""
  loc_B2AF68: FFreeVar var_B0 = "": var_D0 = "": var_F0 = "": var_110 = "": var_138 = "": var_148 = "": var_158 = ""
  loc_B2AF7B: BranchF loc_B2AF83
  loc_B2AF7E: Call cmdAnd_Click()
  loc_B2AF83: FLdRfVar var_90
  loc_B2AF86: FLdPr Me
  loc_B2AF89: VCallAd Control_ID_cboOperador
  loc_B2AF8C: FStAdFunc var_8C
  loc_B2AF8F: FLdPr var_8C
  loc_B2AF92:  = Me.Text
  loc_B2AF97: ILdRf var_90
  loc_B2AF9A: LitStr "Contiene"
  loc_B2AF9D: EqStr
  loc_B2AF9F: FFree1Str var_90
  loc_B2AFA2: FFree1Ad var_8C
  loc_B2AFA5: BranchF loc_B2AFB1
  loc_B2AFA8: LitStr Chr(37)
  loc_B2AFAB: FStStrCopy var_88
  loc_B2AFAE: Branch loc_B2AFB7
  loc_B2AFB1: LitStr vbNullString
  loc_B2AFB4: FStStrCopy var_88
  loc_B2AFB7: FLdPr Me
  loc_B2AFBA: VCallAd Control_ID_rtfRecordSource
  loc_B2AFBD: FStAdFunc var_8C
  loc_B2AFC0: FLdPr var_8C
  loc_B2AFC3: LateIdLdVar var_B0 DispID_-517 -1
  loc_B2AFCA: CStrVarTmp
  loc_B2AFCB: FStStrNoPop var_1A0
  loc_B2AFCE: FLdRfVar var_90
  loc_B2AFD1: FLdRfVar var_19A
  loc_B2AFD4: FLdPr Me
  loc_B2AFD7: VCallAd Control_ID_lstCampos
  loc_B2AFDA: FStAdFunc var_114
  loc_B2AFDD: FLdPr var_114
  loc_B2AFE0:  = Me.ListIndex
  loc_B2AFE5: FLdI2 var_19A
  loc_B2AFE8: FLdPr Me
  loc_B2AFEB: VCallAd Control_ID_lstFields
  loc_B2AFEE: FStAdFunc var_128
  loc_B2AFF1: FLdPr var_128
  loc_B2AFF4: from_stack_2 = Me.List(from_stack_1)
  loc_B2AFF9: ILdRf var_90
  loc_B2AFFC: ConcatStr
  loc_B2AFFD: FStStrNoPop var_1A4
  loc_B2B000: LitStr " "
  loc_B2B003: ConcatStr
  loc_B2B004: FStStrNoPop var_1B4
  loc_B2B007: FLdRfVar var_1AC
  loc_B2B00A: FLdPr Me
  loc_B2B00D: VCallAd Control_ID_cboOperador
  loc_B2B010: FStAdFunc var_1A8
  loc_B2B013: FLdPr var_1A8
  loc_B2B016:  = Me.Text
  loc_B2B01B: FLdZeroAd var_1AC
  loc_B2B01E: PopTmpLdAdStr
  loc_B2B022: ImpAdCallI2 Proc_272_0_A83C54()
  loc_B2B027: FStStrNoPop var_1B8
  loc_B2B02A: ConcatStr
  loc_B2B02B: FStStrNoPop var_1BC
  loc_B2B02E: LitStr " '"
  loc_B2B031: ILdRf var_88
  loc_B2B034: ConcatStr
  loc_B2B035: FStStrNoPop var_1C0
  loc_B2B038: ConcatStr
  loc_B2B039: FStStrNoPop var_1CC
  loc_B2B03C: FLdRfVar var_1C8
  loc_B2B03F: FLdPr Me
  loc_B2B042: VCallAd Control_ID_txtValor
  loc_B2B045: FStAdFunc var_1C4
  loc_B2B048: FLdPr var_1C4
  loc_B2B04B:  = Me.Text
  loc_B2B050: ILdRf var_1C8
  loc_B2B053: ConcatStr
  loc_B2B054: FStStrNoPop var_1D0
  loc_B2B057: ILdRf var_88
  loc_B2B05A: ConcatStr
  loc_B2B05B: FStStrNoPop var_1D4
  loc_B2B05E: LitStr "'"
  loc_B2B061: ConcatStr
  loc_B2B062: CVarStr var_D0
  loc_B2B065: PopAdLdVar
  loc_B2B066: FLdPr Me
  loc_B2B069: VCallAd Control_ID_rtfRecordSource
  loc_B2B06C: FStAdFunc var_1D8
  loc_B2B06F: FLdPr var_1D8
  loc_B2B072: LateIdSt
  loc_B2B077: FFreeStr var_1A0 = "": var_90 = "": var_1A4 = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1C0 = "": var_1CC = "": var_1C8 = "": var_1D0 = ""
  loc_B2B092: FFreeAd var_8C = "": var_114 = "": var_128 = "": var_1A8 = "": var_1C4 = ""
  loc_B2B0A1: FFreeVar var_B0 = ""
  loc_B2B0A8: ExitProcHresult
End Sub

Private Sub cmdLimpiar_Click() '9DF24C
  'Data Table: 44563C
  loc_9DF230: LitVarStr var_94, vbNullString
  loc_9DF235: PopAdLdVar
  loc_9DF236: FLdPr Me
  loc_9DF239: VCallAd Control_ID_rtfRecordSource
  loc_9DF23C: FStAdFunc var_A8
  loc_9DF23F: FLdPr var_A8
  loc_9DF242: LateIdSt
  loc_9DF247: FFree1Ad var_A8
  loc_9DF24A: ExitProcHresult
End Sub

Private Sub cmdQuitar_Click() 'AFFA5C
  'Data Table: 44563C
  loc_AFF880: FLdPr Me
  loc_AFF883: VCallAd Control_ID_rtfRecordSource
  loc_AFF886: FStAdFunc var_8C
  loc_AFF889: FLdPr var_8C
  loc_AFF88C: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF893: PopAd
  loc_AFF895: LitI4 0
  loc_AFF89A: LitI4 -1
  loc_AFF89F: LitStr " AND"
  loc_AFF8A2: FLdRfVar var_9C
  loc_AFF8A5: CStrVarTmp
  loc_AFF8A6: FStStrNoPop var_A0
  loc_AFF8A9: ImpAdCallI2 InStrRev(, , , )
  loc_AFF8AE: CI2I4
  loc_AFF8AF: FStI2 var_86
  loc_AFF8B2: FFree1Str var_A0
  loc_AFF8B5: FFree1Ad var_8C
  loc_AFF8B8: FFree1Var var_9C = ""
  loc_AFF8BB: FLdPr Me
  loc_AFF8BE: VCallAd Control_ID_rtfRecordSource
  loc_AFF8C1: FStAdFunc var_8C
  loc_AFF8C4: FLdPr var_8C
  loc_AFF8C7: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF8CE: PopAd
  loc_AFF8D0: LitI4 0
  loc_AFF8D5: LitI4 -1
  loc_AFF8DA: LitStr " OR"
  loc_AFF8DD: FLdRfVar var_9C
  loc_AFF8E0: CStrVarTmp
  loc_AFF8E1: FStStrNoPop var_A0
  loc_AFF8E4: ImpAdCallI2 InStrRev(, , , )
  loc_AFF8E9: CI2I4
  loc_AFF8EA: FStI2 var_88
  loc_AFF8ED: FFree1Str var_A0
  loc_AFF8F0: FFree1Ad var_8C
  loc_AFF8F3: FFree1Var var_9C = ""
  loc_AFF8F6: FLdI2 var_86
  loc_AFF8F9: LitI2_Byte 0
  loc_AFF8FB: EqI2
  loc_AFF8FC: FLdI2 var_88
  loc_AFF8FF: LitI2_Byte 0
  loc_AFF901: EqI2
  loc_AFF902: AndI4
  loc_AFF903: BranchF loc_AFF923
  loc_AFF906: LitVarStr var_B0, vbNullString
  loc_AFF90B: PopAdLdVar
  loc_AFF90C: FLdPr Me
  loc_AFF90F: VCallAd Control_ID_rtfRecordSource
  loc_AFF912: FStAdFunc var_8C
  loc_AFF915: FLdPr var_8C
  loc_AFF918: LateIdSt
  loc_AFF91D: FFree1Ad var_8C
  loc_AFF920: Branch loc_AFFA5A
  loc_AFF923: FLdI2 var_86
  loc_AFF926: FLdI2 var_88
  loc_AFF929: GtI2
  loc_AFF92A: BranchF loc_AFF9C5
  loc_AFF92D: FLdPr Me
  loc_AFF930: VCallAd Control_ID_rtfRecordSource
  loc_AFF933: FStAdFunc var_8C
  loc_AFF936: FLdPr var_8C
  loc_AFF939: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF940: PopAd
  loc_AFF942: FLdPr Me
  loc_AFF945: VCallAd Control_ID_rtfRecordSource
  loc_AFF948: FStAdFunc var_C4
  loc_AFF94B: FLdPr var_C4
  loc_AFF94E: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFF955: PopAd
  loc_AFF957: LitI4 0
  loc_AFF95C: LitI4 -1
  loc_AFF961: LitStr " AND"
  loc_AFF964: FLdRfVar var_D4
  loc_AFF967: CStrVarTmp
  loc_AFF968: FStStrNoPop var_A0
  loc_AFF96B: ImpAdCallI2 InStrRev(, , , )
  loc_AFF970: LitI4 1
  loc_AFF975: SubI4
  loc_AFF976: CVarI4
  loc_AFF97A: LitI4 1
  loc_AFF97F: FLdRfVar var_9C
  loc_AFF982: CStrVarTmp
  loc_AFF983: CVarStr var_E4
  loc_AFF986: FLdRfVar var_104
  loc_AFF989: ImpAdCallFPR4  = Mid(, , )
  loc_AFF98E: FLdRfVar var_104
  loc_AFF991: CStrVarTmp
  loc_AFF992: CVarStr var_114
  loc_AFF995: PopAdLdVar
  loc_AFF996: FLdPr Me
  loc_AFF999: VCallAd Control_ID_rtfRecordSource
  loc_AFF99C: FStAdFunc var_118
  loc_AFF99F: FLdPr var_118
  loc_AFF9A2: LateIdSt
  loc_AFF9A7: FFree1Str var_A0
  loc_AFF9AA: FFreeAd var_8C = "": var_C4 = ""
  loc_AFF9B3: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_AFF9C2: Branch loc_AFFA5A
  loc_AFF9C5: FLdPr Me
  loc_AFF9C8: VCallAd Control_ID_rtfRecordSource
  loc_AFF9CB: FStAdFunc var_8C
  loc_AFF9CE: FLdPr var_8C
  loc_AFF9D1: LateIdLdVar var_9C DispID_-517 -1
  loc_AFF9D8: PopAd
  loc_AFF9DA: FLdPr Me
  loc_AFF9DD: VCallAd Control_ID_rtfRecordSource
  loc_AFF9E0: FStAdFunc var_C4
  loc_AFF9E3: FLdPr var_C4
  loc_AFF9E6: LateIdLdVar var_D4 DispID_-517 -1
  loc_AFF9ED: PopAd
  loc_AFF9EF: LitI4 0
  loc_AFF9F4: LitI4 -1
  loc_AFF9F9: LitStr " OR"
  loc_AFF9FC: FLdRfVar var_D4
  loc_AFF9FF: CStrVarTmp
  loc_AFFA00: FStStrNoPop var_A0
  loc_AFFA03: ImpAdCallI2 InStrRev(, , , )
  loc_AFFA08: LitI4 1
  loc_AFFA0D: SubI4
  loc_AFFA0E: CVarI4
  loc_AFFA12: LitI4 1
  loc_AFFA17: FLdRfVar var_9C
  loc_AFFA1A: CStrVarTmp
  loc_AFFA1B: CVarStr var_E4
  loc_AFFA1E: FLdRfVar var_104
  loc_AFFA21: ImpAdCallFPR4  = Mid(, , )
  loc_AFFA26: FLdRfVar var_104
  loc_AFFA29: CStrVarTmp
  loc_AFFA2A: CVarStr var_114
  loc_AFFA2D: PopAdLdVar
  loc_AFFA2E: FLdPr Me
  loc_AFFA31: VCallAd Control_ID_rtfRecordSource
  loc_AFFA34: FStAdFunc var_118
  loc_AFFA37: FLdPr var_118
  loc_AFFA3A: LateIdSt
  loc_AFFA3F: FFree1Str var_A0
  loc_AFFA42: FFreeAd var_8C = "": var_C4 = ""
  loc_AFFA4B: FFreeVar var_9C = "": var_D4 = "": var_E4 = "": var_F4 = "": var_104 = ""
  loc_AFFA5A: ExitProcHresult
End Sub

Private Sub cmdOr_Click() 'A40C68
  'Data Table: 44563C
  loc_A40C24: FLdPr Me
  loc_A40C27: VCallAd Control_ID_rtfRecordSource
  loc_A40C2A: FStAdFunc var_88
  loc_A40C2D: FLdPr var_88
  loc_A40C30: LateIdLdVar var_98 DispID_-517 -1
  loc_A40C37: CStrVarTmp
  loc_A40C38: FStStrNoPop var_9C
  loc_A40C3B: LitStr " OR "
  loc_A40C3E: ConcatStr
  loc_A40C3F: CVarStr var_AC
  loc_A40C42: PopAdLdVar
  loc_A40C43: FLdPr Me
  loc_A40C46: VCallAd Control_ID_rtfRecordSource
  loc_A40C49: FStAdFunc var_C0
  loc_A40C4C: FLdPr var_C0
  loc_A40C4F: LateIdSt
  loc_A40C54: FFree1Str var_9C
  loc_A40C57: FFreeAd var_88 = ""
  loc_A40C5E: FFreeVar var_98 = ""
  loc_A40C65: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9E6404
  'Data Table: 44563C
  loc_9E63E4: LitStr vbNullString
  loc_9E63E7: FLdPr Me
  loc_9E63EA: MemStStrCopy
  loc_9E63EE: ILdRf Me
  loc_9E63F1: FStAdNoPop
  loc_9E63F5: ImpAdLdRf MemVar_D9C5D8
  loc_9E63F8: NewIfNullPr Global
  loc_9E63FB: Global.Unload from_stack_1
  loc_9E6400: FFree1Ad var_88
  loc_9E6403: ExitProcHresult
End Sub

Public Function sFiltroGet() '445EC8
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '445ED7
  sFiltro = Value
End Sub

Public Function sOrderGet() '445EE6
  sOrderGet = sOrder
End Function

Public Sub sOrderPut(Value) '445EF5
  sOrder = Value
End Sub

Public Function translateField(Label) 'B2E950
  'Data Table: 44563C
  loc_B2E668: ZeroRetVal
  loc_B2E66A: ILdI4 Label
  loc_B2E66D: FStStrCopy var_8C
  loc_B2E670: ILdRf var_8C
  loc_B2E673: FLdRfVar translateField
  loc_B2E676: LitI2_Byte 0
  loc_B2E678: FLdPr Me
  loc_B2E67B: VCallAd Control_ID_lstCampos
  loc_B2E67E: FStAdFunc var_90
  loc_B2E681: FLdPr var_90
  loc_B2E684: from_stack_2 = Me.List(from_stack_1)
  loc_B2E689: ILdRf translateField
  loc_B2E68C: EqStr
  loc_B2E68E: FFree1Str translateField
  loc_B2E691: FFree1Ad var_90
  loc_B2E694: BranchF loc_B2E6B9
  loc_B2E697: FLdRfVar translateField
  loc_B2E69A: LitI2_Byte 0
  loc_B2E69C: FLdPr Me
  loc_B2E69F: VCallAd Control_ID_lstFields
  loc_B2E6A2: FStAdFunc var_90
  loc_B2E6A5: FLdPr var_90
  loc_B2E6A8: from_stack_2 = Me.List(from_stack_1)
  loc_B2E6AD: FLdZeroAd translateField
  loc_B2E6B0: FStStr var_88
  loc_B2E6B3: FFree1Ad var_90
  loc_B2E6B6: Branch loc_B2E947
  loc_B2E6B9: ILdRf var_8C
  loc_B2E6BC: FLdRfVar translateField
  loc_B2E6BF: LitI2_Byte 1
  loc_B2E6C1: FLdPr Me
  loc_B2E6C4: VCallAd Control_ID_lstCampos
  loc_B2E6C7: FStAdFunc var_90
  loc_B2E6CA: FLdPr var_90
  loc_B2E6CD: from_stack_2 = Me.List(from_stack_1)
  loc_B2E6D2: ILdRf translateField
  loc_B2E6D5: EqStr
  loc_B2E6D7: FFree1Str translateField
  loc_B2E6DA: FFree1Ad var_90
  loc_B2E6DD: BranchF loc_B2E702
  loc_B2E6E0: FLdRfVar translateField
  loc_B2E6E3: LitI2_Byte 1
  loc_B2E6E5: FLdPr Me
  loc_B2E6E8: VCallAd Control_ID_lstFields
  loc_B2E6EB: FStAdFunc var_90
  loc_B2E6EE: FLdPr var_90
  loc_B2E6F1: from_stack_2 = Me.List(from_stack_1)
  loc_B2E6F6: FLdZeroAd translateField
  loc_B2E6F9: FStStr var_88
  loc_B2E6FC: FFree1Ad var_90
  loc_B2E6FF: Branch loc_B2E947
  loc_B2E702: ILdRf var_8C
  loc_B2E705: FLdRfVar translateField
  loc_B2E708: LitI2_Byte 2
  loc_B2E70A: FLdPr Me
  loc_B2E70D: VCallAd Control_ID_lstCampos
  loc_B2E710: FStAdFunc var_90
  loc_B2E713: FLdPr var_90
  loc_B2E716: from_stack_2 = Me.List(from_stack_1)
  loc_B2E71B: ILdRf translateField
  loc_B2E71E: EqStr
  loc_B2E720: FFree1Str translateField
  loc_B2E723: FFree1Ad var_90
  loc_B2E726: BranchF loc_B2E74B
  loc_B2E729: FLdRfVar translateField
  loc_B2E72C: LitI2_Byte 2
  loc_B2E72E: FLdPr Me
  loc_B2E731: VCallAd Control_ID_lstFields
  loc_B2E734: FStAdFunc var_90
  loc_B2E737: FLdPr var_90
  loc_B2E73A: from_stack_2 = Me.List(from_stack_1)
  loc_B2E73F: FLdZeroAd translateField
  loc_B2E742: FStStr var_88
  loc_B2E745: FFree1Ad var_90
  loc_B2E748: Branch loc_B2E947
  loc_B2E74B: ILdRf var_8C
  loc_B2E74E: FLdRfVar translateField
  loc_B2E751: LitI2_Byte 3
  loc_B2E753: FLdPr Me
  loc_B2E756: VCallAd Control_ID_lstCampos
  loc_B2E759: FStAdFunc var_90
  loc_B2E75C: FLdPr var_90
  loc_B2E75F: from_stack_2 = Me.List(from_stack_1)
  loc_B2E764: ILdRf translateField
  loc_B2E767: EqStr
  loc_B2E769: FFree1Str translateField
  loc_B2E76C: FFree1Ad var_90
  loc_B2E76F: BranchF loc_B2E794
  loc_B2E772: FLdRfVar translateField
  loc_B2E775: LitI2_Byte 3
  loc_B2E777: FLdPr Me
  loc_B2E77A: VCallAd Control_ID_lstFields
  loc_B2E77D: FStAdFunc var_90
  loc_B2E780: FLdPr var_90
  loc_B2E783: from_stack_2 = Me.List(from_stack_1)
  loc_B2E788: FLdZeroAd translateField
  loc_B2E78B: FStStr var_88
  loc_B2E78E: FFree1Ad var_90
  loc_B2E791: Branch loc_B2E947
  loc_B2E794: ILdRf var_8C
  loc_B2E797: FLdRfVar translateField
  loc_B2E79A: LitI2_Byte 4
  loc_B2E79C: FLdPr Me
  loc_B2E79F: VCallAd Control_ID_lstCampos
  loc_B2E7A2: FStAdFunc var_90
  loc_B2E7A5: FLdPr var_90
  loc_B2E7A8: from_stack_2 = Me.List(from_stack_1)
  loc_B2E7AD: ILdRf translateField
  loc_B2E7B0: EqStr
  loc_B2E7B2: FFree1Str translateField
  loc_B2E7B5: FFree1Ad var_90
  loc_B2E7B8: BranchF loc_B2E7DD
  loc_B2E7BB: FLdRfVar translateField
  loc_B2E7BE: LitI2_Byte 4
  loc_B2E7C0: FLdPr Me
  loc_B2E7C3: VCallAd Control_ID_lstFields
  loc_B2E7C6: FStAdFunc var_90
  loc_B2E7C9: FLdPr var_90
  loc_B2E7CC: from_stack_2 = Me.List(from_stack_1)
  loc_B2E7D1: FLdZeroAd translateField
  loc_B2E7D4: FStStr var_88
  loc_B2E7D7: FFree1Ad var_90
  loc_B2E7DA: Branch loc_B2E947
  loc_B2E7DD: ILdRf var_8C
  loc_B2E7E0: FLdRfVar translateField
  loc_B2E7E3: LitI2_Byte 5
  loc_B2E7E5: FLdPr Me
  loc_B2E7E8: VCallAd Control_ID_lstCampos
  loc_B2E7EB: FStAdFunc var_90
  loc_B2E7EE: FLdPr var_90
  loc_B2E7F1: from_stack_2 = Me.List(from_stack_1)
  loc_B2E7F6: ILdRf translateField
  loc_B2E7F9: EqStr
  loc_B2E7FB: FFree1Str translateField
  loc_B2E7FE: FFree1Ad var_90
  loc_B2E801: BranchF loc_B2E826
  loc_B2E804: FLdRfVar translateField
  loc_B2E807: LitI2_Byte 5
  loc_B2E809: FLdPr Me
  loc_B2E80C: VCallAd Control_ID_lstFields
  loc_B2E80F: FStAdFunc var_90
  loc_B2E812: FLdPr var_90
  loc_B2E815: from_stack_2 = Me.List(from_stack_1)
  loc_B2E81A: FLdZeroAd translateField
  loc_B2E81D: FStStr var_88
  loc_B2E820: FFree1Ad var_90
  loc_B2E823: Branch loc_B2E947
  loc_B2E826: ILdRf var_8C
  loc_B2E829: FLdRfVar translateField
  loc_B2E82C: LitI2_Byte 6
  loc_B2E82E: FLdPr Me
  loc_B2E831: VCallAd Control_ID_lstCampos
  loc_B2E834: FStAdFunc var_90
  loc_B2E837: FLdPr var_90
  loc_B2E83A: from_stack_2 = Me.List(from_stack_1)
  loc_B2E83F: ILdRf translateField
  loc_B2E842: EqStr
  loc_B2E844: FFree1Str translateField
  loc_B2E847: FFree1Ad var_90
  loc_B2E84A: BranchF loc_B2E86F
  loc_B2E84D: FLdRfVar translateField
  loc_B2E850: LitI2_Byte 6
  loc_B2E852: FLdPr Me
  loc_B2E855: VCallAd Control_ID_lstFields
  loc_B2E858: FStAdFunc var_90
  loc_B2E85B: FLdPr var_90
  loc_B2E85E: from_stack_2 = Me.List(from_stack_1)
  loc_B2E863: FLdZeroAd translateField
  loc_B2E866: FStStr var_88
  loc_B2E869: FFree1Ad var_90
  loc_B2E86C: Branch loc_B2E947
  loc_B2E86F: ILdRf var_8C
  loc_B2E872: FLdRfVar translateField
  loc_B2E875: LitI2_Byte 7
  loc_B2E877: FLdPr Me
  loc_B2E87A: VCallAd Control_ID_lstCampos
  loc_B2E87D: FStAdFunc var_90
  loc_B2E880: FLdPr var_90
  loc_B2E883: from_stack_2 = Me.List(from_stack_1)
  loc_B2E888: ILdRf translateField
  loc_B2E88B: EqStr
  loc_B2E88D: FFree1Str translateField
  loc_B2E890: FFree1Ad var_90
  loc_B2E893: BranchF loc_B2E8B8
  loc_B2E896: FLdRfVar translateField
  loc_B2E899: LitI2_Byte 7
  loc_B2E89B: FLdPr Me
  loc_B2E89E: VCallAd Control_ID_lstFields
  loc_B2E8A1: FStAdFunc var_90
  loc_B2E8A4: FLdPr var_90
  loc_B2E8A7: from_stack_2 = Me.List(from_stack_1)
  loc_B2E8AC: FLdZeroAd translateField
  loc_B2E8AF: FStStr var_88
  loc_B2E8B2: FFree1Ad var_90
  loc_B2E8B5: Branch loc_B2E947
  loc_B2E8B8: ILdRf var_8C
  loc_B2E8BB: FLdRfVar translateField
  loc_B2E8BE: LitI2_Byte 8
  loc_B2E8C0: FLdPr Me
  loc_B2E8C3: VCallAd Control_ID_lstCampos
  loc_B2E8C6: FStAdFunc var_90
  loc_B2E8C9: FLdPr var_90
  loc_B2E8CC: from_stack_2 = Me.List(from_stack_1)
  loc_B2E8D1: ILdRf translateField
  loc_B2E8D4: EqStr
  loc_B2E8D6: FFree1Str translateField
  loc_B2E8D9: FFree1Ad var_90
  loc_B2E8DC: BranchF loc_B2E901
  loc_B2E8DF: FLdRfVar translateField
  loc_B2E8E2: LitI2_Byte 8
  loc_B2E8E4: FLdPr Me
  loc_B2E8E7: VCallAd Control_ID_lstFields
  loc_B2E8EA: FStAdFunc var_90
  loc_B2E8ED: FLdPr var_90
  loc_B2E8F0: from_stack_2 = Me.List(from_stack_1)
  loc_B2E8F5: FLdZeroAd translateField
  loc_B2E8F8: FStStr var_88
  loc_B2E8FB: FFree1Ad var_90
  loc_B2E8FE: Branch loc_B2E947
  loc_B2E901: ILdRf var_8C
  loc_B2E904: FLdRfVar translateField
  loc_B2E907: LitI2_Byte 9
  loc_B2E909: FLdPr Me
  loc_B2E90C: VCallAd Control_ID_lstCampos
  loc_B2E90F: FStAdFunc var_90
  loc_B2E912: FLdPr var_90
  loc_B2E915: from_stack_2 = Me.List(from_stack_1)
  loc_B2E91A: ILdRf translateField
  loc_B2E91D: EqStr
  loc_B2E91F: FFree1Str translateField
  loc_B2E922: FFree1Ad var_90
  loc_B2E925: BranchF loc_B2E947
  loc_B2E928: FLdRfVar translateField
  loc_B2E92B: LitI2_Byte 9
  loc_B2E92D: FLdPr Me
  loc_B2E930: VCallAd Control_ID_lstFields
  loc_B2E933: FStAdFunc var_90
  loc_B2E936: FLdPr var_90
  loc_B2E939: from_stack_2 = Me.List(from_stack_1)
  loc_B2E93E: FLdZeroAd translateField
  loc_B2E941: FStStr var_88
  loc_B2E944: FFree1Ad var_90
  loc_B2E947: ExitProcCbHresult
End Function
