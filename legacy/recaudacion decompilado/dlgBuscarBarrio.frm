VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarBarrio
  Caption = "Buscar Barrio por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarBarrio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9012
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 720
    Width = 7215
    Height = 360
    TabIndex = 1
    Tag = "0"
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
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 6
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
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1320
    Width = 8775
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarBarrio.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
    Width = 810
    Height = 300
    TabIndex = 5
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
    Caption = "Codigo:"
    Left = 840
    Top = 240
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
End

Attribute VB_Name = "dlgBuscarBarrio"

Public BarrioCLS As New Class


Private Sub dgdABMS_UnknownEvent_0 '9DAE78
  'Data Table: 418B84
  loc_9DAE60: FLdPr Me
  loc_9DAE63: VCallAd Control_ID_dgdABMS
  loc_9DAE66: FStAdFunc var_88
  loc_9DAE69: FLdRfVar var_88
  loc_9DAE6C: ImpAdCallFPR4 Proc_58_0_9FD654()
  loc_9DAE71: FFree1Ad var_88
  loc_9DAE74: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9DAE2C
  'Data Table: 418B84
  loc_9DAE14: FLdPr Me
  loc_9DAE17: VCallAd Control_ID_dgdABMS
  loc_9DAE1A: FStAdFunc var_88
  loc_9DAE1D: FLdRfVar var_88
  loc_9DAE20: ImpAdCallFPR4 Proc_58_1_9EAB78()
  loc_9DAE25: FFree1Ad var_88
  loc_9DAE28: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9DB384
  'Data Table: 418B84
  loc_9DB36C: ILdRf Me
  loc_9DB36F: FStAdNoPop
  loc_9DB373: ImpAdLdRf MemVar_D9C5D8
  loc_9DB376: NewIfNullPr Global
  loc_9DB379: Global.Unload from_stack_1
  loc_9DB37E: FFree1Ad var_88
  loc_9DB381: ExitProcHresult
  loc_9DB382: LdFixedStr
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED3B0
  'Data Table: 418B84
  loc_9ED38C: ILdI2 KeyCode
  loc_9ED38F: CI4UI1
  loc_9ED390: LitI4 &HD
  loc_9ED395: EqI4
  loc_9ED396: BranchF loc_9ED3AE
  loc_9ED399: ILdRf Me
  loc_9ED39C: FStAdNoPop
  loc_9ED3A0: ImpAdLdRf MemVar_D9C5D8
  loc_9ED3A3: NewIfNullPr Global
  loc_9ED3A6: Global.Unload from_stack_1
  loc_9ED3AB: FFree1Ad var_88
  loc_9ED3AE: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A79094
  'Data Table: 418B84
  loc_A79028: LitStr vbNullString
  loc_A7902B: FLdPr Me
  loc_A7902E: VCallAd Control_ID_Campo2Txt
  loc_A79031: FStAdFunc var_88
  loc_A79034: FLdPr var_88
  loc_A79037: Me.Text = from_stack_1
  loc_A7903C: FFree1Ad var_88
  loc_A7903F: LitStr "SELECT CodiBarr, DetaBarr, DetaLoca FROM infogov.barrio "
  loc_A79042: LitStr " LEFT JOIN infogov.localidad ON infogov.barrio.CodiLoca = infogov.localidad.CodiLoca "
  loc_A79045: ConcatStr
  loc_A79046: FStStrNoPop var_8C
  loc_A79049: LitStr " WHERE infogov.barrio.CodiBarr like '"
  loc_A7904C: ConcatStr
  loc_A7904D: FStStrNoPop var_94
  loc_A79050: FLdRfVar var_90
  loc_A79053: FLdPr Me
  loc_A79056: VCallAd Control_ID_Campo1Txt
  loc_A79059: FStAdFunc var_88
  loc_A7905C: FLdPr var_88
  loc_A7905F:  = Me.Text
  loc_A79064: ILdRf var_90
  loc_A79067: ConcatStr
  loc_A79068: FStStrNoPop var_98
  loc_A7906B: LitStr Chr(37) & "' ORDER BY infogov.barrio.CodiBarr"
  loc_A7906E: ConcatStr
  loc_A7906F: FStStrNoPop var_9C
  loc_A79072: FLdPr Me
  loc_A79075: MemLdRfVar from_stack_1.BarrioCLS
  loc_A79078: NewIfNullPr clsBarrio
  loc_A7907B: Call clsBarrio.RedefineRS(from_stack_1v)
  loc_A79080: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A7908D: FFree1Ad var_88
  loc_A79090: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DCCC0
  'Data Table: 418B84
  loc_9DCCA8: LitStr "0123456789"
  loc_9DCCAB: FStStrCopy var_88
  loc_9DCCAE: FLdRfVar var_88
  loc_9DCCB1: ILdRf KeyAscii
  loc_9DCCB4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DCCB9: IStI2 KeyAscii
  loc_9DCCBC: FFree1Str var_88
  loc_9DCCBF: ExitProcHresult
End Sub

Private Sub Form_Load() 'A94150
  'Data Table: 418B84
  loc_A940B0: FLdRfVar var_94
  loc_A940B3: LitVarStr var_A4, vbNullString
  loc_A940B8: HardType
  loc_A940B9: EqVarBool
  loc_A940BB: BranchF loc_A940D6
  loc_A940BE: LitStr "SELECT barrio.CodiBarr, barrio.DetaBarr, DetaLoca FROM infogov.barrio "
  loc_A940C1: LitStr " LEFT JOIN infogov.localidad ON infogov.barrio.CodiLoca = infogov.localidad.CodiLoca "
  loc_A940C4: ConcatStr
  loc_A940C5: FStStrNoPop var_B8
  loc_A940C8: LitStr " ORDER BY DetaBarr"
  loc_A940CB: ConcatStr
  loc_A940CC: CVarStr var_B4
  loc_A940CF: FStVar var_94
  loc_A940D3: FFree1Str var_B8
  loc_A940D6: FLdRfVar var_94
  loc_A940D9: CStrVarVal var_B8
  loc_A940DD: FLdPr Me
  loc_A940E0: MemLdRfVar from_stack_1.BarrioCLS
  loc_A940E3: NewIfNullPr clsBarrio
  loc_A940E6: Call clsBarrio.RedefineRS(from_stack_1v)
  loc_A940EB: FFree1Str var_B8
  loc_A940EE: LitI4 0
  loc_A940F3: LitI4 1
  loc_A940F8: FLdRfVar var_BC
  loc_A940FB: Redim
  loc_A94105: FLdPr Me
  loc_A94108: MemLdRfVar from_stack_1.BarrioCLS
  loc_A9410B: NewIfNullAd
  loc_A9410E: FStAd var_C0 
  loc_A94112: FLdRfVar var_C0
  loc_A94115: CVarRef
  loc_A9411A: ParmAry1St
  loc_A94120: FLdPr Me
  loc_A94123: VCallAd Control_ID_dgdABMS
  loc_A94126: CVarAd
  loc_A9412A: ParmAry1St
  loc_A94130: FLdRfVar var_BC
  loc_A94133: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A94138: ILdRf var_C0
  loc_A9413B: CastAd
  loc_A9413E: FLdPr Me
  loc_A94141: MemStAdFunc
  loc_A94145: FLdRfVar var_BC
  loc_A94148: Erase
  loc_A94149: FFree1Ad var_C0
  loc_A9414C: ExitProcHresult
  loc_A9414D: SetLastSystemError
End Sub

Private Sub Form_Activate() '9DB890
  'Data Table: 418B84
  loc_9DB878: FLdPr Me
  loc_9DB87B: VCallAd Control_ID_Campo2Txt
  loc_9DB87E: FStAdFunc var_88
  loc_9DB881: FLdPr var_88
  loc_9DB884: Me.SetFocus
  loc_9DB889: FFree1Ad var_88
  loc_9DB88C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11EFC
  'Data Table: 418B84
  loc_A11EC0: ILdI2 KeyAscii
  loc_A11EC3: LitI2_Byte &HD
  loc_A11EC5: EqI2
  loc_A11EC6: BranchF loc_A11ED7
  loc_A11EC9: LitVar_TRUE var_A4
  loc_A11ECC: LitStr "{Tab}"
  loc_A11ECF: ImpAdCallFPR4 SendKeys , 
  loc_A11ED4: FFree1Var var_A4 = ""
  loc_A11ED7: ILdI2 KeyAscii
  loc_A11EDA: LitI2_Byte &H1B
  loc_A11EDC: EqI2
  loc_A11EDD: BranchF loc_A11EFA
  loc_A11EE0: ILdRf Me
  loc_A11EE3: FStAdNoPop
  loc_A11EE7: ImpAdLdRf MemVar_D9C5D8
  loc_A11EEA: NewIfNullPr Global
  loc_A11EED: Global.Unload from_stack_1
  loc_A11EF2: FFree1Ad var_A8
  loc_A11EF5: LitI2_Byte 0
  loc_A11EF7: IStI2 KeyAscii
  loc_A11EFA: ExitProcHresult
End Sub

Private Sub OKButton_Click(Index As Integer) '9DC7B4
  'Data Table: 418B84
  loc_9DC79C: ILdRf Me
  loc_9DC79F: FStAdNoPop
  loc_9DC7A3: ImpAdLdRf MemVar_D9C5D8
  loc_9DC7A6: NewIfNullPr Global
  loc_9DC7A9: Global.Unload from_stack_1
  loc_9DC7AE: FFree1Ad var_88
  loc_9DC7B1: ExitProcHresult
  loc_9DC7B2: FLdPr IndexD8
End Sub

Private Sub Campo2Txt_Change() 'A78770
  'Data Table: 418B84
  loc_A78704: LitStr vbNullString
  loc_A78707: FLdPr Me
  loc_A7870A: VCallAd Control_ID_Campo1Txt
  loc_A7870D: FStAdFunc var_88
  loc_A78710: FLdPr var_88
  loc_A78713: Me.Text = from_stack_1
  loc_A78718: FFree1Ad var_88
  loc_A7871B: LitStr "SELECT barrio.CodiBarr, DetaBarr, DetaLoca FROM infogov.barrio "
  loc_A7871E: LitStr " LEFT JOIN infogov.localidad ON infogov.barrio.CodiLoca = infogov.localidad.CodiLoca "
  loc_A78721: ConcatStr
  loc_A78722: FStStrNoPop var_8C
  loc_A78725: LitStr " WHERE infogov.barrio.DetaBarr like '" & Chr(37)
  loc_A78728: ConcatStr
  loc_A78729: FStStrNoPop var_94
  loc_A7872C: FLdRfVar var_90
  loc_A7872F: FLdPr Me
  loc_A78732: VCallAd Control_ID_Campo2Txt
  loc_A78735: FStAdFunc var_88
  loc_A78738: FLdPr var_88
  loc_A7873B:  = Me.Text
  loc_A78740: ILdRf var_90
  loc_A78743: ConcatStr
  loc_A78744: FStStrNoPop var_98
  loc_A78747: LitStr Chr(37) & "' ORDER BY infogov.barrio.DetaBarr"
  loc_A7874A: ConcatStr
  loc_A7874B: FStStrNoPop var_9C
  loc_A7874E: FLdPr Me
  loc_A78751: MemLdRfVar from_stack_1.BarrioCLS
  loc_A78754: NewIfNullPr clsBarrio
  loc_A78757: Call clsBarrio.RedefineRS(from_stack_1v)
  loc_A7875C: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A78769: FFree1Ad var_88
  loc_A7876C: ExitProcHresult
End Sub

Public Function global_4295556Get() '4190C0
  global_4295556Get = global_4295556
End Function

Public Sub global_4295556Put(Value) '4190DA
  global_4295556 = Value
End Sub

Public Sub global_4295556Set(Value) '4190F4
  global_4295556 = Value
End Sub

Private Function Proc_45_14_9DCD58() '9DCD58
  'Data Table: 418B84
  loc_9DCD40: ILdRf Me
  loc_9DCD43: FStAdNoPop
  loc_9DCD47: ImpAdLdRf MemVar_D9C5D8
  loc_9DCD4A: NewIfNullPr Global
  loc_9DCD4D: Global.Unload from_stack_1
  loc_9DCD52: FFree1Ad var_88
  loc_9DCD55: ExitProcHresult
End Function
