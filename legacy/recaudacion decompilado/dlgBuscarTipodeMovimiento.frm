VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTipodeMovimiento
  Caption = "Buscar Tipo deMovimiento ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTipodeMovimiento.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10008
  ClientHeight = 5664
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 720
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
    Width = 1095
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 8
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
    Top = 5040
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
    Width = 9615
    Height = 3495
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarTipodeMovimiento.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 1560
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

Attribute VB_Name = "dlgBuscarTipodeMovimiento"

Public TipoMoviCLS As New Class
Public sDecrTimo As String


Private Sub dgdABMS_DblClick() '9CEF94
  'Data Table: 416FD4
  loc_9CEF7C: ILdRf Me
  loc_9CEF7F: FStAdNoPop
  loc_9CEF83: ImpAdLdRf MemVar_D9C5D8
  loc_9CEF86: NewIfNullPr Global
  loc_9CEF89: Global.Unload from_stack_1
  loc_9CEF8E: FFree1Ad var_88
  loc_9CEF91: ExitProcHresult
  loc_9CEF92: SubCy
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ED250
  'Data Table: 416FD4
  loc_9ED22C: ILdI2 KeyCode
  loc_9ED22F: CI4UI1
  loc_9ED230: LitI4 &HD
  loc_9ED235: EqI4
  loc_9ED236: BranchF loc_9ED24E
  loc_9ED239: ILdRf Me
  loc_9ED23C: FStAdNoPop
  loc_9ED240: ImpAdLdRf MemVar_D9C5D8
  loc_9ED243: NewIfNullPr Global
  loc_9ED246: Global.Unload from_stack_1
  loc_9ED24B: FFree1Ad var_88
  loc_9ED24E: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A783EC
  'Data Table: 416FD4
  loc_A78380: LitStr vbNullString
  loc_A78383: FLdPr Me
  loc_A78386: VCallAd Control_ID_Campo2Txt
  loc_A78389: FStAdFunc var_88
  loc_A7838C: FLdPr var_88
  loc_A7838F: Me.Text = from_stack_1
  loc_A78394: FFree1Ad var_88
  loc_A78397: LitStr "SELECT CodiTimo, DetaTimo FROM tipomovi WHERE DecrTimo = '"
  loc_A7839A: FLdPr Me
  loc_A7839D: MemLdStr sDecrTimo
  loc_A783A0: ConcatStr
  loc_A783A1: FStStrNoPop var_8C
  loc_A783A4: LitStr "' AND CodiTimo = "
  loc_A783A7: ConcatStr
  loc_A783A8: FStStrNoPop var_94
  loc_A783AB: FLdRfVar var_90
  loc_A783AE: FLdPr Me
  loc_A783B1: VCallAd Control_ID_Campo1Txt
  loc_A783B4: FStAdFunc var_88
  loc_A783B7: FLdPr var_88
  loc_A783BA:  = Me.Text
  loc_A783BF: ILdRf var_90
  loc_A783C2: ConcatStr
  loc_A783C3: FStStrNoPop var_98
  loc_A783C6: LitStr " ORDER BY CodiTimo"
  loc_A783C9: ConcatStr
  loc_A783CA: FStStrNoPop var_9C
  loc_A783CD: FLdPr Me
  loc_A783D0: MemLdRfVar from_stack_1.TipoMoviCLS
  loc_A783D3: NewIfNullPr clstipomovi
  loc_A783D6: Call clstipomovi.RedefineRS(from_stack_1v)
  loc_A783DB: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A783E8: FFree1Ad var_88
  loc_A783EB: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CED34
  'Data Table: 416FD4
  loc_9CED1C: LitStr "0123456789"
  loc_9CED1F: FStStrCopy var_88
  loc_9CED22: FLdRfVar var_88
  loc_9CED25: ILdRf KeyAscii
  loc_9CED28: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CED2D: IStI2 KeyAscii
  loc_9CED30: FFree1Str var_88
  loc_9CED33: ExitProcHresult
End Sub

Private Sub Form_Load() 'A95A34
  'Data Table: 416FD4
  loc_A95994: FLdRfVar var_94
  loc_A95997: LitVarStr var_A4, vbNullString
  loc_A9599C: HardType
  loc_A9599D: EqVarBool
  loc_A9599F: BranchF loc_A959BD
  loc_A959A2: LitStr "SELECT CodiTimo, DetaTimo FROM tipomovi WHERE DecrTimo = '"
  loc_A959A5: FLdPr Me
  loc_A959A8: MemLdStr sDecrTimo
  loc_A959AB: ConcatStr
  loc_A959AC: FStStrNoPop var_B8
  loc_A959AF: LitStr "' ORDER BY DetaTimo"
  loc_A959B2: ConcatStr
  loc_A959B3: CVarStr var_B4
  loc_A959B6: FStVar var_94
  loc_A959BA: FFree1Str var_B8
  loc_A959BD: FLdRfVar var_94
  loc_A959C0: CStrVarVal var_B8
  loc_A959C4: FLdPr Me
  loc_A959C7: MemLdRfVar from_stack_1.TipoMoviCLS
  loc_A959CA: NewIfNullPr clstipomovi
  loc_A959CD: Call clstipomovi.RedefineRS(from_stack_1v)
  loc_A959D2: FFree1Str var_B8
  loc_A959D5: LitI4 0
  loc_A959DA: LitI4 1
  loc_A959DF: FLdRfVar var_BC
  loc_A959E2: Redim
  loc_A959EC: FLdPr Me
  loc_A959EF: MemLdRfVar from_stack_1.TipoMoviCLS
  loc_A959F2: NewIfNullAd
  loc_A959F5: FStAd var_C0 
  loc_A959F9: FLdRfVar var_C0
  loc_A959FC: CVarRef
  loc_A95A01: ParmAry1St
  loc_A95A07: FLdPr Me
  loc_A95A0A: VCallAd Control_ID_dgdABMS
  loc_A95A0D: CVarAd
  loc_A95A11: ParmAry1St
  loc_A95A17: FLdRfVar var_BC
  loc_A95A1A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A95A1F: ILdRf var_C0
  loc_A95A22: CastAd
  loc_A95A25: FLdPr Me
  loc_A95A28: MemStAdFunc
  loc_A95A2C: FLdRfVar var_BC
  loc_A95A2F: Erase
  loc_A95A30: FFree1Ad var_C0
  loc_A95A33: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B62F4
  'Data Table: 416FD4
  loc_9B62E8: LitVarStr var_A4, vbNullString
  loc_9B62ED: FStVarCopy
  loc_9B62F1: ExitProcHresult
  loc_9B62F2: Ary1StStrCopy
End Sub

Private Sub Form_Activate() '9C95A0
  'Data Table: 416FD4
  loc_9C9588: FLdPr Me
  loc_9C958B: VCallAd Control_ID_Campo2Txt
  loc_9C958E: FStAdFunc var_88
  loc_9C9591: FLdPr var_88
  loc_9C9594: Me.SetFocus
  loc_9C9599: FFree1Ad var_88
  loc_9C959C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A1198C
  'Data Table: 416FD4
  loc_A11950: ILdI2 KeyAscii
  loc_A11953: LitI2_Byte &HD
  loc_A11955: EqI2
  loc_A11956: BranchF loc_A11967
  loc_A11959: LitVar_TRUE var_A4
  loc_A1195C: LitStr "{Tab}"
  loc_A1195F: ImpAdCallFPR4 SendKeys , 
  loc_A11964: FFree1Var var_A4 = ""
  loc_A11967: ILdI2 KeyAscii
  loc_A1196A: LitI2_Byte &H1B
  loc_A1196C: EqI2
  loc_A1196D: BranchF loc_A1198A
  loc_A11970: ILdRf Me
  loc_A11973: FStAdNoPop
  loc_A11977: ImpAdLdRf MemVar_D9C5D8
  loc_A1197A: NewIfNullPr Global
  loc_A1197D: Global.Unload from_stack_1
  loc_A11982: FFree1Ad var_A8
  loc_A11985: LitI2_Byte 0
  loc_A11987: IStI2 KeyAscii
  loc_A1198A: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9C9554
  'Data Table: 416FD4
  loc_9C953C: ILdRf Me
  loc_9C953F: FStAdNoPop
  loc_9C9543: ImpAdLdRf MemVar_D9C5D8
  loc_9C9546: NewIfNullPr Global
  loc_9C9549: Global.Unload from_stack_1
  loc_9C954E: FFree1Ad var_88
  loc_9C9551: ExitProcHresult
  loc_9C9552: LtI4
End Sub

Private Sub Campo2Txt_Change() 'A77B7C
  'Data Table: 416FD4
  loc_A77B10: LitStr vbNullString
  loc_A77B13: FLdPr Me
  loc_A77B16: VCallAd Control_ID_Campo1Txt
  loc_A77B19: FStAdFunc var_88
  loc_A77B1C: FLdPr var_88
  loc_A77B1F: Me.Text = from_stack_1
  loc_A77B24: FFree1Ad var_88
  loc_A77B27: LitStr "SELECT CodiTimo, DetaTimo FROM tipomovi WHERE DecrTimo = '"
  loc_A77B2A: FLdPr Me
  loc_A77B2D: MemLdStr sDecrTimo
  loc_A77B30: ConcatStr
  loc_A77B31: FStStrNoPop var_8C
  loc_A77B34: LitStr "' AND DetaConc like '" & Chr(37)
  loc_A77B37: ConcatStr
  loc_A77B38: FStStrNoPop var_94
  loc_A77B3B: FLdRfVar var_90
  loc_A77B3E: FLdPr Me
  loc_A77B41: VCallAd Control_ID_Campo2Txt
  loc_A77B44: FStAdFunc var_88
  loc_A77B47: FLdPr var_88
  loc_A77B4A:  = Me.Text
  loc_A77B4F: ILdRf var_90
  loc_A77B52: ConcatStr
  loc_A77B53: FStStrNoPop var_98
  loc_A77B56: LitStr Chr(37) & "' ORDER BY DetaConc"
  loc_A77B59: ConcatStr
  loc_A77B5A: FStStrNoPop var_9C
  loc_A77B5D: FLdPr Me
  loc_A77B60: MemLdRfVar from_stack_1.TipoMoviCLS
  loc_A77B63: NewIfNullPr clstipomovi
  loc_A77B66: Call clstipomovi.RedefineRS(from_stack_1v)
  loc_A77B6B: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A77B78: FFree1Ad var_88
  loc_A77B7B: ExitProcHresult
End Sub

Public Function global_4288468Get() '4174FC
  global_4288468Get = global_4288468
End Function

Public Sub global_4288468Put(Value) '417516
  global_4288468 = Value
End Sub

Public Sub global_4288468Set(Value) '417530
  global_4288468 = Value
End Sub

Public Function sDecrTimoGet() '41754A
  sDecrTimoGet = sDecrTimo
End Function

Public Sub sDecrTimoPut(Value) '417559
  sDecrTimo = Value
End Sub

Private Function Proc_197_15_9CF078() '9CF078
  'Data Table: 416FD4
  loc_9CF060: ILdRf Me
  loc_9CF063: FStAdNoPop
  loc_9CF067: ImpAdLdRf MemVar_D9C5D8
  loc_9CF06A: NewIfNullPr Global
  loc_9CF06D: Global.Unload from_stack_1
  loc_9CF072: FFree1Ad var_88
  loc_9CF075: ExitProcHresult
  loc_9CF076: SubCy
End Function
