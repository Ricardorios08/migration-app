VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTipodeInspecciondeComercio
  Caption = "Buscar Tipo de Inspección de comercio por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTipodeInspecciondeComercio.frx":0000
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
    OleObjectBlob = "dlgBuscarTipodeInspecciondeComercio.frx":08CA
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

Attribute VB_Name = "dlgBuscarTipodeInspecciondeComercio"

Public TipoIncoCLS As New Class


Private Sub dgdABMS_DblClick() '9CEFE0
  'Data Table: 415474
  loc_9CEFC8: ILdRf Me
  loc_9CEFCB: FStAdNoPop
  loc_9CEFCF: ImpAdLdRf MemVar_D9C5D8
  loc_9CEFD2: NewIfNullPr Global
  loc_9CEFD5: Global.Unload from_stack_1
  loc_9CEFDA: FFree1Ad var_88
  loc_9CEFDD: ExitProcHresult
  loc_9CEFDE: FLdPr var_3F8
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EE068
  'Data Table: 415474
  loc_9EE044: ILdI2 KeyCode
  loc_9EE047: CI4UI1
  loc_9EE048: LitI4 &HD
  loc_9EE04D: EqI4
  loc_9EE04E: BranchF loc_9EE066
  loc_9EE051: ILdRf Me
  loc_9EE054: FStAdNoPop
  loc_9EE058: ImpAdLdRf MemVar_D9C5D8
  loc_9EE05B: NewIfNullPr Global
  loc_9EE05E: Global.Unload from_stack_1
  loc_9EE063: FFree1Ad var_88
  loc_9EE066: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A7ED4C
  'Data Table: 415474
  loc_A7ECCC: LitStr vbNullString
  loc_A7ECCF: FLdPr Me
  loc_A7ECD2: VCallAd Control_ID_Campo2Txt
  loc_A7ECD5: FStAdFunc var_88
  loc_A7ECD8: FLdPr var_88
  loc_A7ECDB: Me.Text = from_stack_1
  loc_A7ECE0: FFree1Ad var_88
  loc_A7ECE3: FLdRfVar var_8C
  loc_A7ECE6: FLdPr Me
  loc_A7ECE9: VCallAd Control_ID_Campo1Txt
  loc_A7ECEC: FStAdFunc var_88
  loc_A7ECEF: FLdPr var_88
  loc_A7ECF2:  = Me.Text
  loc_A7ECF7: FLdZeroAd var_8C
  loc_A7ECFA: CVarStr var_9C
  loc_A7ECFD: ImpAdCallI2 IsNumeric()
  loc_A7ED02: FFree1Ad var_88
  loc_A7ED05: FFree1Var var_9C = ""
  loc_A7ED08: BranchF loc_A7ED4A
  loc_A7ED0B: LitStr "SELECT CodiTiic, DetaTiic FROM tipoinco WHERE CodiTiic = "
  loc_A7ED0E: FLdRfVar var_8C
  loc_A7ED11: FLdPr Me
  loc_A7ED14: VCallAd Control_ID_Campo1Txt
  loc_A7ED17: FStAdFunc var_88
  loc_A7ED1A: FLdPr var_88
  loc_A7ED1D:  = Me.Text
  loc_A7ED22: ILdRf var_8C
  loc_A7ED25: ConcatStr
  loc_A7ED26: FStStrNoPop var_A0
  loc_A7ED29: LitStr " ORDER BY CodiTiic"
  loc_A7ED2C: ConcatStr
  loc_A7ED2D: FStStrNoPop var_A4
  loc_A7ED30: FLdPr Me
  loc_A7ED33: MemLdRfVar from_stack_1.TipoIncoCLS
  loc_A7ED36: NewIfNullPr clstipoinco
  loc_A7ED39: Call clstipoinco.RedefineRS(from_stack_1v)
  loc_A7ED3E: FFreeStr var_8C = "": var_A0 = ""
  loc_A7ED47: FFree1Ad var_88
  loc_A7ED4A: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CF0C4
  'Data Table: 415474
  loc_9CF0AC: LitStr "0123456789"
  loc_9CF0AF: FStStrCopy var_88
  loc_9CF0B2: FLdRfVar var_88
  loc_9CF0B5: ILdRf KeyAscii
  loc_9CF0B8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF0BD: IStI2 KeyAscii
  loc_9CF0C0: FFree1Str var_88
  loc_9CF0C3: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8D260
  'Data Table: 415474
  loc_A8D1D0: FLdRfVar var_94
  loc_A8D1D3: LitVarStr var_A4, vbNullString
  loc_A8D1D8: HardType
  loc_A8D1D9: EqVarBool
  loc_A8D1DB: BranchF loc_A8D1E7
  loc_A8D1DE: LitVarStr var_A4, "SELECT CodiTiic, DetaTiic FROM tipoinco ORDER BY DetaTiic"
  loc_A8D1E3: FStVarCopy
  loc_A8D1E7: FLdRfVar var_94
  loc_A8D1EA: CStrVarVal var_B8
  loc_A8D1EE: FLdPr Me
  loc_A8D1F1: MemLdRfVar from_stack_1.TipoIncoCLS
  loc_A8D1F4: NewIfNullPr clstipoinco
  loc_A8D1F7: Call clstipoinco.RedefineRS(from_stack_1v)
  loc_A8D1FC: FFree1Str var_B8
  loc_A8D1FF: LitI4 0
  loc_A8D204: LitI4 1
  loc_A8D209: FLdRfVar var_BC
  loc_A8D20C: Redim
  loc_A8D216: FLdPr Me
  loc_A8D219: MemLdRfVar from_stack_1.TipoIncoCLS
  loc_A8D21C: NewIfNullAd
  loc_A8D21F: FStAd var_C0 
  loc_A8D223: FLdRfVar var_C0
  loc_A8D226: CVarRef
  loc_A8D22B: ParmAry1St
  loc_A8D231: FLdPr Me
  loc_A8D234: VCallAd Control_ID_dgdABMS
  loc_A8D237: CVarAd
  loc_A8D23B: ParmAry1St
  loc_A8D241: FLdRfVar var_BC
  loc_A8D244: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8D249: ILdRf var_C0
  loc_A8D24C: CastAd
  loc_A8D24F: FLdPr Me
  loc_A8D252: MemStAdFunc
  loc_A8D256: FLdRfVar var_BC
  loc_A8D259: Erase
  loc_A8D25A: FFree1Ad var_C0
  loc_A8D25D: ExitProcHresult
  loc_A8D25E: NewIfNullPr Me
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B4A34
  'Data Table: 415474
  loc_9B4A28: LitVarStr var_A4, vbNullString
  loc_9B4A2D: FStVarCopy
  loc_9B4A31: ExitProcHresult
  loc_9B4A32: CExtInstUnk
End Sub

Private Sub Form_Activate() '9CEF48
  'Data Table: 415474
  loc_9CEF30: FLdPr Me
  loc_9CEF33: VCallAd Control_ID_Campo2Txt
  loc_9CEF36: FStAdFunc var_88
  loc_9CEF39: FLdPr var_88
  loc_9CEF3C: Me.SetFocus
  loc_9CEF41: FFree1Ad var_88
  loc_9CEF44: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10A98
  'Data Table: 415474
  loc_A10A5C: ILdI2 KeyAscii
  loc_A10A5F: LitI2_Byte &HD
  loc_A10A61: EqI2
  loc_A10A62: BranchF loc_A10A73
  loc_A10A65: LitVar_TRUE var_A4
  loc_A10A68: LitStr "{Tab}"
  loc_A10A6B: ImpAdCallFPR4 SendKeys , 
  loc_A10A70: FFree1Var var_A4 = ""
  loc_A10A73: ILdI2 KeyAscii
  loc_A10A76: LitI2_Byte &H1B
  loc_A10A78: EqI2
  loc_A10A79: BranchF loc_A10A96
  loc_A10A7C: ILdRf Me
  loc_A10A7F: FStAdNoPop
  loc_A10A83: ImpAdLdRf MemVar_D9C5D8
  loc_A10A86: NewIfNullPr Global
  loc_A10A89: Global.Unload from_stack_1
  loc_A10A8E: FFree1Ad var_A8
  loc_A10A91: LitI2_Byte 0
  loc_A10A93: IStI2 KeyAscii
  loc_A10A96: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CEE18
  'Data Table: 415474
  loc_9CEE00: ILdRf Me
  loc_9CEE03: FStAdNoPop
  loc_9CEE07: ImpAdLdRf MemVar_D9C5D8
  loc_9CEE0A: NewIfNullPr Global
  loc_9CEE0D: Global.Unload from_stack_1
  loc_9CEE12: FFree1Ad var_88
  loc_9CEE15: ExitProcHresult
  loc_9CEE16: CExtInstUnk
End Sub

Private Sub Campo2Txt_Change() 'A5C920
  'Data Table: 415474
  loc_A5C8C8: LitStr vbNullString
  loc_A5C8CB: FLdPr Me
  loc_A5C8CE: VCallAd Control_ID_Campo1Txt
  loc_A5C8D1: FStAdFunc var_88
  loc_A5C8D4: FLdPr var_88
  loc_A5C8D7: Me.Text = from_stack_1
  loc_A5C8DC: FFree1Ad var_88
  loc_A5C8DF: LitStr "SELECT CodiTiic, DetaTiic FROM tipoinco WHERE DetaTiic like '" & Chr(37)
  loc_A5C8E2: FLdRfVar var_8C
  loc_A5C8E5: FLdPr Me
  loc_A5C8E8: VCallAd Control_ID_Campo2Txt
  loc_A5C8EB: FStAdFunc var_88
  loc_A5C8EE: FLdPr var_88
  loc_A5C8F1:  = Me.Text
  loc_A5C8F6: ILdRf var_8C
  loc_A5C8F9: ConcatStr
  loc_A5C8FA: FStStrNoPop var_90
  loc_A5C8FD: LitStr Chr(37) & "' ORDER BY DetaTiic"
  loc_A5C900: ConcatStr
  loc_A5C901: FStStrNoPop var_94
  loc_A5C904: FLdPr Me
  loc_A5C907: MemLdRfVar from_stack_1.TipoIncoCLS
  loc_A5C90A: NewIfNullPr clstipoinco
  loc_A5C90D: Call clstipoinco.RedefineRS(from_stack_1v)
  loc_A5C912: FFreeStr var_8C = "": var_90 = ""
  loc_A5C91B: FFree1Ad var_88
  loc_A5C91E: ExitProcHresult
End Sub

Public Function global_4281460Get() '415994
  global_4281460Get = global_4281460
End Function

Public Sub global_4281460Put(Value) '4159AE
  global_4281460 = Value
End Sub

Public Sub global_4281460Set(Value) '4159C8
  global_4281460 = Value
End Sub

Private Function Proc_147_13_9CF02C() '9CF02C
  'Data Table: 415474
  loc_9CF014: ILdRf Me
  loc_9CF017: FStAdNoPop
  loc_9CF01B: ImpAdLdRf MemVar_D9C5D8
  loc_9CF01E: NewIfNullPr Global
  loc_9CF021: Global.Unload from_stack_1
  loc_9CF026: FFree1Ad var_88
  loc_9CF029: ExitProcHresult
  loc_9CF02A: NewIfNullPr Me
End Function
