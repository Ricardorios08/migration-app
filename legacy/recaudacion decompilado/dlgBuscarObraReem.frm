VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarObraReem
  Caption = "Buscar Obra Reembolzable..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarObraReem.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9180
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2280
    Top = 720
    Width = 6615
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
    Left = 2280
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "3"
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
    OleObjectBlob = "dlgBuscarObraReem.frx":08CA
  End
  Begin VB.Label Label4
    Caption = "Detalle:"
    Left = 1365
    Top = 720
    Width = 810
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
  Begin VB.Label Label1
    Caption = "Obra reembolzable:"
    Left = 120
    Top = 240
    Width = 2070
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
End

Attribute VB_Name = "dlgBuscarObraReem"

Public ObraReemCLS As New Class


Private Sub Campo1Txt_Change() 'A5BE70
  'Data Table: 419278
  loc_A5BE18: LitStr vbNullString
  loc_A5BE1B: FLdPr Me
  loc_A5BE1E: VCallAd Control_ID_Campo2Txt
  loc_A5BE21: FStAdFunc var_88
  loc_A5BE24: FLdPr var_88
  loc_A5BE27: Me.Text = from_stack_1
  loc_A5BE2C: FFree1Ad var_88
  loc_A5BE2F: LitStr "SELECT OrdeObre, DetaObre FROM obrareem WHERE OrdeObre like '"
  loc_A5BE32: FLdRfVar var_8C
  loc_A5BE35: FLdPr Me
  loc_A5BE38: VCallAd Control_ID_Campo1Txt
  loc_A5BE3B: FStAdFunc var_88
  loc_A5BE3E: FLdPr var_88
  loc_A5BE41:  = Me.Text
  loc_A5BE46: ILdRf var_8C
  loc_A5BE49: ConcatStr
  loc_A5BE4A: FStStrNoPop var_90
  loc_A5BE4D: LitStr Chr(37) & "' ORDER BY OrdeObre"
  loc_A5BE50: ConcatStr
  loc_A5BE51: FStStrNoPop var_94
  loc_A5BE54: FLdPr Me
  loc_A5BE57: MemLdRfVar from_stack_1.ObraReemCLS
  loc_A5BE5A: NewIfNullPr clsobrareem
  loc_A5BE5D: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_A5BE62: FFreeStr var_8C = "": var_90 = ""
  loc_A5BE6B: FFree1Ad var_88
  loc_A5BE6E: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9DAFA8
  'Data Table: 419278
  loc_9DAF90: ILdRf Me
  loc_9DAF93: FStAdNoPop
  loc_9DAF97: ImpAdLdRf MemVar_D9C5D8
  loc_9DAF9A: NewIfNullPr Global
  loc_9DAF9D: Global.Unload from_stack_1
  loc_9DAFA2: FFree1Ad var_88
  loc_9DAFA5: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EC908
  'Data Table: 419278
  loc_9EC8E4: ILdI2 KeyCode
  loc_9EC8E7: CI4UI1
  loc_9EC8E8: LitI4 &HD
  loc_9EC8ED: EqI4
  loc_9EC8EE: BranchF loc_9EC906
  loc_9EC8F1: ILdRf Me
  loc_9EC8F4: FStAdNoPop
  loc_9EC8F8: ImpAdLdRf MemVar_D9C5D8
  loc_9EC8FB: NewIfNullPr Global
  loc_9EC8FE: Global.Unload from_stack_1
  loc_9EC903: FFree1Ad var_88
  loc_9EC906: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8DAF8
  'Data Table: 419278
  loc_A8DA68: FLdRfVar var_94
  loc_A8DA6B: LitVarStr var_A4, vbNullString
  loc_A8DA70: HardType
  loc_A8DA71: EqVarBool
  loc_A8DA73: BranchF loc_A8DA7F
  loc_A8DA76: LitVarStr var_A4, "SELECT OrdeObre, DetaObre FROM obrareem ORDER BY DetaObre"
  loc_A8DA7B: FStVarCopy
  loc_A8DA7F: FLdRfVar var_94
  loc_A8DA82: CStrVarVal var_B8
  loc_A8DA86: FLdPr Me
  loc_A8DA89: MemLdRfVar from_stack_1.ObraReemCLS
  loc_A8DA8C: NewIfNullPr clsobrareem
  loc_A8DA8F: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_A8DA94: FFree1Str var_B8
  loc_A8DA97: LitI4 0
  loc_A8DA9C: LitI4 1
  loc_A8DAA1: FLdRfVar var_BC
  loc_A8DAA4: Redim
  loc_A8DAAE: FLdPr Me
  loc_A8DAB1: MemLdRfVar from_stack_1.ObraReemCLS
  loc_A8DAB4: NewIfNullAd
  loc_A8DAB7: FStAd var_C0 
  loc_A8DABB: FLdRfVar var_C0
  loc_A8DABE: CVarRef
  loc_A8DAC3: ParmAry1St
  loc_A8DAC9: FLdPr Me
  loc_A8DACC: VCallAd Control_ID_dgdABMS
  loc_A8DACF: CVarAd
  loc_A8DAD3: ParmAry1St
  loc_A8DAD9: FLdRfVar var_BC
  loc_A8DADC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8DAE1: ILdRf var_C0
  loc_A8DAE4: CastAd
  loc_A8DAE7: FLdPr Me
  loc_A8DAEA: MemStAdFunc
  loc_A8DAEE: FLdRfVar var_BC
  loc_A8DAF1: Erase
  loc_A8DAF2: FFree1Ad var_C0
  loc_A8DAF5: ExitProcHresult
End Sub

Private Sub Form_Activate() '9DAD94
  'Data Table: 419278
  loc_9DAD7C: FLdPr Me
  loc_9DAD7F: VCallAd Control_ID_Campo2Txt
  loc_9DAD82: FStAdFunc var_88
  loc_9DAD85: FLdPr var_88
  loc_9DAD88: Me.SetFocus
  loc_9DAD8D: FFree1Ad var_88
  loc_9DAD90: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10E38
  'Data Table: 419278
  loc_A10DFC: ILdI2 KeyAscii
  loc_A10DFF: LitI2_Byte &HD
  loc_A10E01: EqI2
  loc_A10E02: BranchF loc_A10E13
  loc_A10E05: LitVar_TRUE var_A4
  loc_A10E08: LitStr "{Tab}"
  loc_A10E0B: ImpAdCallFPR4 SendKeys , 
  loc_A10E10: FFree1Var var_A4 = ""
  loc_A10E13: ILdI2 KeyAscii
  loc_A10E16: LitI2_Byte &H1B
  loc_A10E18: EqI2
  loc_A10E19: BranchF loc_A10E36
  loc_A10E1C: ILdRf Me
  loc_A10E1F: FStAdNoPop
  loc_A10E23: ImpAdLdRf MemVar_D9C5D8
  loc_A10E26: NewIfNullPr Global
  loc_A10E29: Global.Unload from_stack_1
  loc_A10E2E: FFree1Ad var_A8
  loc_A10E31: LitI2_Byte 0
  loc_A10E33: IStI2 KeyAscii
  loc_A10E36: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D9FA0
  'Data Table: 419278
  loc_9D9F88: ILdRf Me
  loc_9D9F8B: FStAdNoPop
  loc_9D9F8F: ImpAdLdRf MemVar_D9C5D8
  loc_9D9F92: NewIfNullPr Global
  loc_9D9F95: Global.Unload from_stack_1
  loc_9D9F9A: FFree1Ad var_88
  loc_9D9F9D: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9DAF10
  'Data Table: 419278
  loc_9DAEF8: ILdRf Me
  loc_9DAEFB: FStAdNoPop
  loc_9DAEFF: ImpAdLdRf MemVar_D9C5D8
  loc_9DAF02: NewIfNullPr Global
  loc_9DAF05: Global.Unload from_stack_1
  loc_9DAF0A: FFree1Ad var_88
  loc_9DAF0D: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5BDD8
  'Data Table: 419278
  loc_A5BD80: LitStr vbNullString
  loc_A5BD83: FLdPr Me
  loc_A5BD86: VCallAd Control_ID_Campo1Txt
  loc_A5BD89: FStAdFunc var_88
  loc_A5BD8C: FLdPr var_88
  loc_A5BD8F: Me.Text = from_stack_1
  loc_A5BD94: FFree1Ad var_88
  loc_A5BD97: LitStr "SELECT OrdeObre, DetaObre FROM obrareem WHERE DetaObre like '" & Chr(37)
  loc_A5BD9A: FLdRfVar var_8C
  loc_A5BD9D: FLdPr Me
  loc_A5BDA0: VCallAd Control_ID_Campo2Txt
  loc_A5BDA3: FStAdFunc var_88
  loc_A5BDA6: FLdPr var_88
  loc_A5BDA9:  = Me.Text
  loc_A5BDAE: ILdRf var_8C
  loc_A5BDB1: ConcatStr
  loc_A5BDB2: FStStrNoPop var_90
  loc_A5BDB5: LitStr Chr(37) & "' ORDER BY DetaObre"
  loc_A5BDB8: ConcatStr
  loc_A5BDB9: FStStrNoPop var_94
  loc_A5BDBC: FLdPr Me
  loc_A5BDBF: MemLdRfVar from_stack_1.ObraReemCLS
  loc_A5BDC2: NewIfNullPr clsobrareem
  loc_A5BDC5: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_A5BDCA: FFreeStr var_8C = "": var_90 = ""
  loc_A5BDD3: FFree1Ad var_88
  loc_A5BDD6: ExitProcHresult
End Sub

Public Function global_4297336Get() '419800
  global_4297336Get = global_4297336
End Function

Public Sub global_4297336Put(Value) '41981A
  global_4297336 = Value
End Sub

Public Sub global_4297336Set(Value) '419834
  global_4297336 = Value
End Sub
