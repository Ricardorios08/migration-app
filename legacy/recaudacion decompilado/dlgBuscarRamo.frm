VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarRamo
  Caption = "Buscar Ramo ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarRamo.frx":0000
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
    Width = 7935
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarRamo.frx":08CA
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

Attribute VB_Name = "dlgBuscarRamo"

Public BuscarCLS As New Class


Private Sub dgdABMS_DblClick() '9D54D0
  'Data Table: 411264
  loc_9D54B8: ILdRf Me
  loc_9D54BB: FStAdNoPop
  loc_9D54BF: ImpAdLdRf MemVar_D9C5D8
  loc_9D54C2: NewIfNullPr Global
  loc_9D54C5: Global.Unload from_stack_1
  loc_9D54CA: FFree1Ad var_88
  loc_9D54CD: ExitProcHresult
  loc_9D54CE: FLdFPR8 var_13D0
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EE170
  'Data Table: 411264
  loc_9EE14C: ILdI2 KeyCode
  loc_9EE14F: CI4UI1
  loc_9EE150: LitI4 &HD
  loc_9EE155: EqI4
  loc_9EE156: BranchF loc_9EE16E
  loc_9EE159: ILdRf Me
  loc_9EE15C: FStAdNoPop
  loc_9EE160: ImpAdLdRf MemVar_D9C5D8
  loc_9EE163: NewIfNullPr Global
  loc_9EE166: Global.Unload from_stack_1
  loc_9EE16B: FFree1Ad var_88
  loc_9EE16E: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A5B6B8
  'Data Table: 411264
  loc_A5B660: LitStr vbNullString
  loc_A5B663: FLdPr Me
  loc_A5B666: VCallAd Control_ID_Campo2Txt
  loc_A5B669: FStAdFunc var_88
  loc_A5B66C: FLdPr var_88
  loc_A5B66F: Me.Text = from_stack_1
  loc_A5B674: FFree1Ad var_88
  loc_A5B677: LitStr "SELECT * FROM ramo WHERE CodiRamo like '"
  loc_A5B67A: FLdRfVar var_8C
  loc_A5B67D: FLdPr Me
  loc_A5B680: VCallAd Control_ID_Campo1Txt
  loc_A5B683: FStAdFunc var_88
  loc_A5B686: FLdPr var_88
  loc_A5B689:  = Me.Text
  loc_A5B68E: ILdRf var_8C
  loc_A5B691: ConcatStr
  loc_A5B692: FStStrNoPop var_90
  loc_A5B695: LitStr Chr(37) & "' ORDER BY CodiRamo"
  loc_A5B698: ConcatStr
  loc_A5B699: FStStrNoPop var_94
  loc_A5B69C: FLdPr Me
  loc_A5B69F: MemLdRfVar from_stack_1.BuscarCLS
  loc_A5B6A2: NewIfNullPr clsbase
  loc_A5B6A5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5B6AA: FFreeStr var_8C = "": var_90 = ""
  loc_A5B6B3: FFree1Ad var_88
  loc_A5B6B6: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D53EC
  'Data Table: 411264
  loc_9D53D4: LitStr "0123456789"
  loc_9D53D7: FStStrCopy var_88
  loc_9D53DA: FLdRfVar var_88
  loc_9D53DD: ILdRf KeyAscii
  loc_9D53E0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D53E5: IStI2 KeyAscii
  loc_9D53E8: FFree1Str var_88
  loc_9D53EB: ExitProcHresult
End Sub

Private Sub Form_Load() 'A78F30
  'Data Table: 411264
  loc_A78EC0: LitStr "SELECT * FROM ramo ORDER BY DetaRamo"
  loc_A78EC3: FLdPr Me
  loc_A78EC6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78EC9: NewIfNullPr clsbase
  loc_A78ECC: Call clsbase.RedefineRS(from_stack_1v)
  loc_A78ED1: LitI4 0
  loc_A78ED6: LitI4 1
  loc_A78EDB: FLdRfVar var_88
  loc_A78EDE: Redim
  loc_A78EE8: FLdPr Me
  loc_A78EEB: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78EEE: NewIfNullAd
  loc_A78EF1: FStAd var_8C 
  loc_A78EF5: FLdRfVar var_8C
  loc_A78EF8: CVarRef
  loc_A78EFD: ParmAry1St
  loc_A78F03: FLdPr Me
  loc_A78F06: VCallAd Control_ID_dgdABMS
  loc_A78F09: CVarAd
  loc_A78F0D: ParmAry1St
  loc_A78F13: FLdRfVar var_88
  loc_A78F16: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A78F1B: ILdRf var_8C
  loc_A78F1E: CastAd
  loc_A78F21: FLdPr Me
  loc_A78F24: MemStAdFunc
  loc_A78F28: FLdRfVar var_88
  loc_A78F2B: Erase
  loc_A78F2C: FFree1Ad var_8C
  loc_A78F2F: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D5600
  'Data Table: 411264
  loc_9D55E8: FLdPr Me
  loc_9D55EB: VCallAd Control_ID_Campo2Txt
  loc_9D55EE: FStAdFunc var_88
  loc_9D55F1: FLdPr var_88
  loc_9D55F4: Me.SetFocus
  loc_9D55F9: FFree1Ad var_88
  loc_9D55FC: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10CDC
  'Data Table: 411264
  loc_A10CA0: ILdI2 KeyAscii
  loc_A10CA3: LitI2_Byte &HD
  loc_A10CA5: EqI2
  loc_A10CA6: BranchF loc_A10CB7
  loc_A10CA9: LitVar_TRUE var_A4
  loc_A10CAC: LitStr "{Tab}"
  loc_A10CAF: ImpAdCallFPR4 SendKeys , 
  loc_A10CB4: FFree1Var var_A4 = ""
  loc_A10CB7: ILdI2 KeyAscii
  loc_A10CBA: LitI2_Byte &H1B
  loc_A10CBC: EqI2
  loc_A10CBD: BranchF loc_A10CDA
  loc_A10CC0: ILdRf Me
  loc_A10CC3: FStAdNoPop
  loc_A10CC7: ImpAdLdRf MemVar_D9C5D8
  loc_A10CCA: NewIfNullPr Global
  loc_A10CCD: Global.Unload from_stack_1
  loc_A10CD2: FFree1Ad var_A8
  loc_A10CD5: LitI2_Byte 0
  loc_A10CD7: IStI2 KeyAscii
  loc_A10CDA: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D577C
  'Data Table: 411264
  loc_9D5764: ILdRf Me
  loc_9D5767: FStAdNoPop
  loc_9D576B: ImpAdLdRf MemVar_D9C5D8
  loc_9D576E: NewIfNullPr Global
  loc_9D5771: Global.Unload from_stack_1
  loc_9D5776: FFree1Ad var_88
  loc_9D5779: ExitProcHresult
  loc_9D577A: FLdRfVar var_13C0
End Sub

Private Sub Campo2Txt_Change() 'A5B290
  'Data Table: 411264
  loc_A5B238: LitStr vbNullString
  loc_A5B23B: FLdPr Me
  loc_A5B23E: VCallAd Control_ID_Campo1Txt
  loc_A5B241: FStAdFunc var_88
  loc_A5B244: FLdPr var_88
  loc_A5B247: Me.Text = from_stack_1
  loc_A5B24C: FFree1Ad var_88
  loc_A5B24F: LitStr "SELECT * FROM ramo WHERE DetaRamo like '" & Chr(37)
  loc_A5B252: FLdRfVar var_8C
  loc_A5B255: FLdPr Me
  loc_A5B258: VCallAd Control_ID_Campo2Txt
  loc_A5B25B: FStAdFunc var_88
  loc_A5B25E: FLdPr var_88
  loc_A5B261:  = Me.Text
  loc_A5B266: ILdRf var_8C
  loc_A5B269: ConcatStr
  loc_A5B26A: FStStrNoPop var_90
  loc_A5B26D: LitStr Chr(37) & "' ORDER BY DetaRamo"
  loc_A5B270: ConcatStr
  loc_A5B271: FStStrNoPop var_94
  loc_A5B274: FLdPr Me
  loc_A5B277: MemLdRfVar from_stack_1.BuscarCLS
  loc_A5B27A: NewIfNullPr clsbase
  loc_A5B27D: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5B282: FFreeStr var_8C = "": var_90 = ""
  loc_A5B28B: FFree1Ad var_88
  loc_A5B28E: ExitProcHresult
End Sub

Public Function global_4264548Get() '411770
  global_4264548Get = global_4264548
End Function

Public Sub global_4264548Put(Value) '41178A
  global_4264548 = Value
End Sub

Public Sub global_4264548Set(Value) '4117A4
  global_4264548 = Value
End Sub
