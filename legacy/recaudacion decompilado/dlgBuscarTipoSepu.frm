VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTipoSepu
  Caption = "Buscar Tipo De Sepultura"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTipoSepu.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10008
  ClientHeight = 5832
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 840
    Width = 6855
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
    Left = 2400
    Top = 240
    Width = 735
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 3
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
    Top = 5160
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
    Top = 1440
    Width = 9615
    Height = 3495
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarTipoSepu.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
    Top = 840
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
    Left = 1560
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

Attribute VB_Name = "dlgBuscarTipoSepu"

Public TipoSepuCLS As New Class


Private Sub dgdABMS_DblClick() '9CF584
  'Data Table: 41471C
  loc_9CF56C: ILdRf Me
  loc_9CF56F: FStAdNoPop
  loc_9CF573: ImpAdLdRf MemVar_D9C5D8
  loc_9CF576: NewIfNullPr Global
  loc_9CF579: Global.Unload from_stack_1
  loc_9CF57E: FFree1Ad var_88
  loc_9CF581: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED2A8
  'Data Table: 41471C
  loc_9ED284: ILdI2 KeyCode
  loc_9ED287: CI4UI1
  loc_9ED288: LitI4 &HD
  loc_9ED28D: EqI4
  loc_9ED28E: BranchF loc_9ED2A6
  loc_9ED291: ILdRf Me
  loc_9ED294: FStAdNoPop
  loc_9ED298: ImpAdLdRf MemVar_D9C5D8
  loc_9ED29B: NewIfNullPr Global
  loc_9ED29E: Global.Unload from_stack_1
  loc_9ED2A3: FFree1Ad var_88
  loc_9ED2A6: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A68054
  'Data Table: 41471C
  loc_A67FF4: LitStr vbNullString
  loc_A67FF7: FLdPr Me
  loc_A67FFA: VCallAd Control_ID_Campo2Txt
  loc_A67FFD: FStAdFunc var_88
  loc_A68000: FLdPr var_88
  loc_A68003: Me.Text = from_stack_1
  loc_A68008: FFree1Ad var_88
  loc_A6800B: LitStr "SELECT CodiTise, DetaTise FROM tiposepu "
  loc_A6800E: LitStr " WHERE CodiTise like '"
  loc_A68011: ConcatStr
  loc_A68012: FStStrNoPop var_90
  loc_A68015: FLdRfVar var_8C
  loc_A68018: FLdPr Me
  loc_A6801B: VCallAd Control_ID_Campo1Txt
  loc_A6801E: FStAdFunc var_88
  loc_A68021: FLdPr var_88
  loc_A68024:  = Me.Text
  loc_A68029: ILdRf var_8C
  loc_A6802C: ConcatStr
  loc_A6802D: FStStrNoPop var_94
  loc_A68030: LitStr Chr(37) & "' ORDER BY  CodiTise"
  loc_A68033: ConcatStr
  loc_A68034: FStStrNoPop var_98
  loc_A68037: FLdPr Me
  loc_A6803A: MemLdRfVar from_stack_1.TipoSepuCLS
  loc_A6803D: NewIfNullPr clstiposepu
  loc_A68040: Call clstiposepu.RedefineRS(from_stack_1v)
  loc_A68045: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A68050: FFree1Ad var_88
  loc_A68053: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CF5D0
  'Data Table: 41471C
  loc_9CF5B8: LitStr "0123456789"
  loc_9CF5BB: FStStrCopy var_88
  loc_9CF5BE: FLdRfVar var_88
  loc_9CF5C1: ILdRf KeyAscii
  loc_9CF5C4: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF5C9: IStI2 KeyAscii
  loc_9CF5CC: FFree1Str var_88
  loc_9CF5CF: ExitProcHresult
End Sub

Private Sub Form_Load() 'A7860C
  'Data Table: 41471C
  loc_A7859C: LitStr "SELECT CodiTise, DetaTise FROM tiposepu ORDER BY DetaTise"
  loc_A7859F: FLdPr Me
  loc_A785A2: MemLdRfVar from_stack_1.TipoSepuCLS
  loc_A785A5: NewIfNullPr clstiposepu
  loc_A785A8: Call clstiposepu.RedefineRS(from_stack_1v)
  loc_A785AD: LitI4 0
  loc_A785B2: LitI4 1
  loc_A785B7: FLdRfVar var_88
  loc_A785BA: Redim
  loc_A785C4: FLdPr Me
  loc_A785C7: MemLdRfVar from_stack_1.TipoSepuCLS
  loc_A785CA: NewIfNullAd
  loc_A785CD: FStAd var_8C 
  loc_A785D1: FLdRfVar var_8C
  loc_A785D4: CVarRef
  loc_A785D9: ParmAry1St
  loc_A785DF: FLdPr Me
  loc_A785E2: VCallAd Control_ID_dgdABMS
  loc_A785E5: CVarAd
  loc_A785E9: ParmAry1St
  loc_A785EF: FLdRfVar var_88
  loc_A785F2: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A785F7: ILdRf var_8C
  loc_A785FA: CastAd
  loc_A785FD: FLdPr Me
  loc_A78600: MemStAdFunc
  loc_A78604: FLdRfVar var_88
  loc_A78607: Erase
  loc_A78608: FFree1Ad var_8C
  loc_A7860B: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B5DF4
  'Data Table: 41471C
  loc_9B5DE8: LitVarStr var_A4, vbNullString
  loc_9B5DED: FStVarCopy
  loc_9B5DF1: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CF3BC
  'Data Table: 41471C
  loc_9CF3A4: FLdPr Me
  loc_9CF3A7: VCallAd Control_ID_Campo2Txt
  loc_9CF3AA: FStAdFunc var_88
  loc_9CF3AD: FLdPr var_88
  loc_9CF3B0: Me.SetFocus
  loc_9CF3B5: FFree1Ad var_88
  loc_9CF3B8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11BD0
  'Data Table: 41471C
  loc_A11B94: ILdI2 KeyAscii
  loc_A11B97: LitI2_Byte &HD
  loc_A11B99: EqI2
  loc_A11B9A: BranchF loc_A11BAB
  loc_A11B9D: LitVar_TRUE var_A4
  loc_A11BA0: LitStr "{Tab}"
  loc_A11BA3: ImpAdCallFPR4 SendKeys , 
  loc_A11BA8: FFree1Var var_A4 = ""
  loc_A11BAB: ILdI2 KeyAscii
  loc_A11BAE: LitI2_Byte &H1B
  loc_A11BB0: EqI2
  loc_A11BB1: BranchF loc_A11BCE
  loc_A11BB4: ILdRf Me
  loc_A11BB7: FStAdNoPop
  loc_A11BBB: ImpAdLdRf MemVar_D9C5D8
  loc_A11BBE: NewIfNullPr Global
  loc_A11BC1: Global.Unload from_stack_1
  loc_A11BC6: FFree1Ad var_A8
  loc_A11BC9: LitI2_Byte 0
  loc_A11BCB: IStI2 KeyAscii
  loc_A11BCE: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CDFD8
  'Data Table: 41471C
  loc_9CDFC0: ILdRf Me
  loc_9CDFC3: FStAdNoPop
  loc_9CDFC7: ImpAdLdRf MemVar_D9C5D8
  loc_9CDFCA: NewIfNullPr Global
  loc_9CDFCD: Global.Unload from_stack_1
  loc_9CDFD2: FFree1Ad var_88
  loc_9CDFD5: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A52EFC
  'Data Table: 41471C
  loc_A52EB0: LitStr "SELECT CodiTise, DetaTise FROM tiposepu "
  loc_A52EB3: LitStr " WHERE DetaTise like '"
  loc_A52EB6: ConcatStr
  loc_A52EB7: FStStrNoPop var_90
  loc_A52EBA: FLdRfVar var_8C
  loc_A52EBD: FLdPr Me
  loc_A52EC0: VCallAd Control_ID_Campo2Txt
  loc_A52EC3: FStAdFunc var_88
  loc_A52EC6: FLdPr var_88
  loc_A52EC9:  = Me.Text
  loc_A52ECE: ILdRf var_8C
  loc_A52ED1: ConcatStr
  loc_A52ED2: FStStrNoPop var_94
  loc_A52ED5: LitStr Chr(37) & "' ORDER BY CodiTise"
  loc_A52ED8: ConcatStr
  loc_A52ED9: FStStrNoPop var_98
  loc_A52EDC: FLdPr Me
  loc_A52EDF: MemLdRfVar from_stack_1.TipoSepuCLS
  loc_A52EE2: NewIfNullPr clstiposepu
  loc_A52EE5: Call clstiposepu.RedefineRS(from_stack_1v)
  loc_A52EEA: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A52EF5: FFree1Ad var_88
  loc_A52EF8: ExitProcHresult
  loc_A52EF9: Ary1LdPr
  loc_A52EFA: MemStI2 global_-23552
End Sub

Public Function global_4278044Get() '414C34
  global_4278044Get = global_4278044
End Function

Public Sub global_4278044Put(Value) '414C4E
  global_4278044 = Value
End Sub

Public Sub global_4278044Set(Value) '414C68
  global_4278044 = Value
End Sub
