VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarZonadeInmueble
  Caption = "Buscar Zona de inmueble ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarZonadeInmueble.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9360
  ClientHeight = 5436
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
    Width = 7935
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarZonadeInmueble.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
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
  Begin VB.Label Label2
    Caption = "Codigo:"
    Left = 840
    Top = 240
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
End

Attribute VB_Name = "dlgBuscarZonadeInmueble"

Public BuscaCLS As New Class


Private Sub Campo1Txt_Change() 'A5A450
  'Data Table: 418494
  loc_A5A3F8: LitStr vbNullString
  loc_A5A3FB: FLdPr Me
  loc_A5A3FE: VCallAd Control_ID_Campo2Txt
  loc_A5A401: FStAdFunc var_88
  loc_A5A404: FLdPr var_88
  loc_A5A407: Me.Text = from_stack_1
  loc_A5A40C: FFree1Ad var_88
  loc_A5A40F: LitStr "SELECT * FROM zonainmu WHERE CodiZoin like '"
  loc_A5A412: FLdRfVar var_8C
  loc_A5A415: FLdPr Me
  loc_A5A418: VCallAd Control_ID_Campo1Txt
  loc_A5A41B: FStAdFunc var_88
  loc_A5A41E: FLdPr var_88
  loc_A5A421:  = Me.Text
  loc_A5A426: ILdRf var_8C
  loc_A5A429: ConcatStr
  loc_A5A42A: FStStrNoPop var_90
  loc_A5A42D: LitStr Chr(37) & "' ORDER BY CodiZoin"
  loc_A5A430: ConcatStr
  loc_A5A431: FStStrNoPop var_94
  loc_A5A434: FLdPr Me
  loc_A5A437: MemLdRfVar from_stack_1.BuscaCLS
  loc_A5A43A: NewIfNullPr clsbase
  loc_A5A43D: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5A442: FFreeStr var_8C = "": var_90 = ""
  loc_A5A44B: FFree1Ad var_88
  loc_A5A44E: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DA96C
  'Data Table: 418494
  loc_9DA954: LitStr "0123456789"
  loc_9DA957: FStStrCopy var_88
  loc_9DA95A: FLdRfVar var_88
  loc_9DA95D: ILdRf KeyAscii
  loc_9DA960: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA965: IStI2 KeyAscii
  loc_9DA968: FFree1Str var_88
  loc_9DA96B: ExitProcHresult
End Sub

Private Sub Form_Load(arg_1C) 'A8BC08
  'Data Table: 418494
  loc_A8BB78: FLdRfVar var_94
  loc_A8BB7B: LitVarStr var_A4, vbNullString
  loc_A8BB80: HardType
  loc_A8BB81: EqVarBool
  loc_A8BB83: BranchF loc_A8BB8F
  loc_A8BB86: LitVarStr var_A4, "SELECT CodiZoin, DetaZoin FROM zonainmu ORDER BY DetaZoin"
  loc_A8BB8B: FStVarCopy
  loc_A8BB8F: FLdRfVar var_94
  loc_A8BB92: CStrVarVal var_B8
  loc_A8BB96: FLdPr Me
  loc_A8BB99: MemLdRfVar from_stack_1.BuscaCLS
  loc_A8BB9C: NewIfNullPr clsbase
  loc_A8BB9F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A8BBA4: FFree1Str var_B8
  loc_A8BBA7: LitI4 0
  loc_A8BBAC: LitI4 1
  loc_A8BBB1: FLdRfVar var_BC
  loc_A8BBB4: Redim
  loc_A8BBBE: FLdPr Me
  loc_A8BBC1: MemLdRfVar from_stack_1.BuscaCLS
  loc_A8BBC4: NewIfNullAd
  loc_A8BBC7: FStAd var_C0 
  loc_A8BBCB: FLdRfVar var_C0
  loc_A8BBCE: CVarRef
  loc_A8BBD3: ParmAry1St
  loc_A8BBD9: FLdPr Me
  loc_A8BBDC: VCallAd Control_ID_dgdABMS
  loc_A8BBDF: CVarAd
  loc_A8BBE3: ParmAry1St
  loc_A8BBE9: FLdRfVar var_BC
  loc_A8BBEC: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8BBF1: ILdRf var_C0
  loc_A8BBF4: CastAd
  loc_A8BBF7: FLdPr Me
  loc_A8BBFA: MemStAdFunc
  loc_A8BBFE: FLdRfVar var_BC
  loc_A8BC01: Erase
  loc_A8BC02: FFree1Ad var_C0
  loc_A8BC05: ExitProcHresult
  loc_A8BC06: FLdPr arg_1C00
End Sub

Private Sub Form_Activate() '9DA888
  'Data Table: 418494
  loc_9DA870: FLdPr Me
  loc_9DA873: VCallAd Control_ID_Campo2Txt
  loc_9DA876: FStAdFunc var_88
  loc_9DA879: FLdPr var_88
  loc_9DA87C: Me.SetFocus
  loc_9DA881: FFree1Ad var_88
  loc_9DA884: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A116D4
  'Data Table: 418494
  loc_A11698: ILdI2 KeyAscii
  loc_A1169B: LitI2_Byte &HD
  loc_A1169D: EqI2
  loc_A1169E: BranchF loc_A116AF
  loc_A116A1: LitVar_TRUE var_A4
  loc_A116A4: LitStr "{Tab}"
  loc_A116A7: ImpAdCallFPR4 SendKeys , 
  loc_A116AC: FFree1Var var_A4 = ""
  loc_A116AF: ILdI2 KeyAscii
  loc_A116B2: LitI2_Byte &H1B
  loc_A116B4: EqI2
  loc_A116B5: BranchF loc_A116D2
  loc_A116B8: ILdRf Me
  loc_A116BB: FStAdNoPop
  loc_A116BF: ImpAdLdRf MemVar_D9C5D8
  loc_A116C2: NewIfNullPr Global
  loc_A116C5: Global.Unload from_stack_1
  loc_A116CA: FFree1Ad var_A8
  loc_A116CD: LitI2_Byte 0
  loc_A116CF: IStI2 KeyAscii
  loc_A116D2: ExitProcHresult
  loc_A116D3: CI4Str
End Sub

Private Sub OKButton_Click() '9DA7A4
  'Data Table: 418494
  loc_9DA78C: ILdRf Me
  loc_9DA78F: FStAdNoPop
  loc_9DA793: ImpAdLdRf MemVar_D9C5D8
  loc_9DA796: NewIfNullPr Global
  loc_9DA799: Global.Unload from_stack_1
  loc_9DA79E: FFree1Ad var_88
  loc_9DA7A1: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9DA8D4
  'Data Table: 418494
  loc_9DA8BC: ILdRf Me
  loc_9DA8BF: FStAdNoPop
  loc_9DA8C3: ImpAdLdRf MemVar_D9C5D8
  loc_9DA8C6: NewIfNullPr Global
  loc_9DA8C9: Global.Unload from_stack_1
  loc_9DA8CE: FFree1Ad var_88
  loc_9DA8D1: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5B1F8
  'Data Table: 418494
  loc_A5B1A0: LitStr vbNullString
  loc_A5B1A3: FLdPr Me
  loc_A5B1A6: VCallAd Control_ID_Campo1Txt
  loc_A5B1A9: FStAdFunc var_88
  loc_A5B1AC: FLdPr var_88
  loc_A5B1AF: Me.Text = from_stack_1
  loc_A5B1B4: FFree1Ad var_88
  loc_A5B1B7: LitStr "SELECT * FROM zonainmu WHERE DetaZoin like '" & Chr(37)
  loc_A5B1BA: FLdRfVar var_8C
  loc_A5B1BD: FLdPr Me
  loc_A5B1C0: VCallAd Control_ID_Campo2Txt
  loc_A5B1C3: FStAdFunc var_88
  loc_A5B1C6: FLdPr var_88
  loc_A5B1C9:  = Me.Text
  loc_A5B1CE: ILdRf var_8C
  loc_A5B1D1: ConcatStr
  loc_A5B1D2: FStStrNoPop var_90
  loc_A5B1D5: LitStr Chr(37) & "' ORDER BY DetaZoin"
  loc_A5B1D8: ConcatStr
  loc_A5B1D9: FStStrNoPop var_94
  loc_A5B1DC: FLdPr Me
  loc_A5B1DF: MemLdRfVar from_stack_1.BuscaCLS
  loc_A5B1E2: NewIfNullPr clsbase
  loc_A5B1E5: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5B1EA: FFreeStr var_8C = "": var_90 = ""
  loc_A5B1F3: FFree1Ad var_88
  loc_A5B1F6: ExitProcHresult
End Sub

Public Function global_4293780Get() '418A1C
  global_4293780Get = global_4293780
End Function

Public Sub global_4293780Put(Value) '418A36
  global_4293780 = Value
End Sub

Public Sub global_4293780Set(Value) '418A50
  global_4293780 = Value
End Sub
