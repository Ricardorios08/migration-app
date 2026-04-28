VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPosicionFiscal
  Caption = "Buscar Posicion Fiscal ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPosicionFiscal.frx":0000
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
    OleObjectBlob = "dlgBuscarPosicionFiscal.frx":08CA
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

Attribute VB_Name = "dlgBuscarPosicionFiscal"

Public PosiFiscCLS As New Class


Private Sub dgdABMS_DblClick() '9D4B50
  'Data Table: 414078
  loc_9D4B38: ILdRf Me
  loc_9D4B3B: FStAdNoPop
  loc_9D4B3F: ImpAdLdRf MemVar_D9C5D8
  loc_9D4B42: NewIfNullPr Global
  loc_9D4B45: Global.Unload from_stack_1
  loc_9D4B4A: FFree1Ad var_88
  loc_9D4B4D: ExitProcHresult
  loc_9D4B4E: CRec2Uni arg_0
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EDA38
  'Data Table: 414078
  loc_9EDA14: ILdI2 KeyCode
  loc_9EDA17: CI4UI1
  loc_9EDA18: LitI4 &HD
  loc_9EDA1D: EqI4
  loc_9EDA1E: BranchF loc_9EDA36
  loc_9EDA21: ILdRf Me
  loc_9EDA24: FStAdNoPop
  loc_9EDA28: ImpAdLdRf MemVar_D9C5D8
  loc_9EDA2B: NewIfNullPr Global
  loc_9EDA2E: Global.Unload from_stack_1
  loc_9EDA33: FFree1Ad var_88
  loc_9EDA36: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A5C460
  'Data Table: 414078
  loc_A5C408: LitStr vbNullString
  loc_A5C40B: FLdPr Me
  loc_A5C40E: VCallAd Control_ID_Campo2Txt
  loc_A5C411: FStAdFunc var_88
  loc_A5C414: FLdPr var_88
  loc_A5C417: Me.Text = from_stack_1
  loc_A5C41C: FFree1Ad var_88
  loc_A5C41F: LitStr "SELECT * FROM infogov.posifisc WHERE CodiPofi like '"
  loc_A5C422: FLdRfVar var_8C
  loc_A5C425: FLdPr Me
  loc_A5C428: VCallAd Control_ID_Campo1Txt
  loc_A5C42B: FStAdFunc var_88
  loc_A5C42E: FLdPr var_88
  loc_A5C431:  = Me.Text
  loc_A5C436: ILdRf var_8C
  loc_A5C439: ConcatStr
  loc_A5C43A: FStStrNoPop var_90
  loc_A5C43D: LitStr Chr(37) & "' ORDER BY CodiPofi"
  loc_A5C440: ConcatStr
  loc_A5C441: FStStrNoPop var_94
  loc_A5C444: FLdPr Me
  loc_A5C447: MemLdRfVar from_stack_1.PosiFiscCLS
  loc_A5C44A: NewIfNullPr clsposifisc
  loc_A5C44D: Call clsposifisc.RedefineRS(from_stack_1v)
  loc_A5C452: FFreeStr var_8C = "": var_90 = ""
  loc_A5C45B: FFree1Ad var_88
  loc_A5C45E: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D4D18
  'Data Table: 414078
  loc_9D4D00: LitStr "0123456789"
  loc_9D4D03: FStStrCopy var_88
  loc_9D4D06: FLdRfVar var_88
  loc_9D4D09: ILdRf KeyAscii
  loc_9D4D0C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D4D11: IStI2 KeyAscii
  loc_9D4D14: FFree1Str var_88
  loc_9D4D17: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8D0A8
  'Data Table: 414078
  loc_A8D018: FLdRfVar var_94
  loc_A8D01B: LitVarStr var_A4, vbNullString
  loc_A8D020: HardType
  loc_A8D021: EqVarBool
  loc_A8D023: BranchF loc_A8D02F
  loc_A8D026: LitVarStr var_A4, "SELECT * FROM infogov.posifisc ORDER BY DetaPofi"
  loc_A8D02B: FStVarCopy
  loc_A8D02F: FLdRfVar var_94
  loc_A8D032: CStrVarVal var_B8
  loc_A8D036: FLdPr Me
  loc_A8D039: MemLdRfVar from_stack_1.PosiFiscCLS
  loc_A8D03C: NewIfNullPr clsposifisc
  loc_A8D03F: Call clsposifisc.RedefineRS(from_stack_1v)
  loc_A8D044: FFree1Str var_B8
  loc_A8D047: LitI4 0
  loc_A8D04C: LitI4 1
  loc_A8D051: FLdRfVar var_BC
  loc_A8D054: Redim
  loc_A8D05E: FLdPr Me
  loc_A8D061: MemLdRfVar from_stack_1.PosiFiscCLS
  loc_A8D064: NewIfNullAd
  loc_A8D067: FStAd var_C0 
  loc_A8D06B: FLdRfVar var_C0
  loc_A8D06E: CVarRef
  loc_A8D073: ParmAry1St
  loc_A8D079: FLdPr Me
  loc_A8D07C: VCallAd Control_ID_dgdABMS
  loc_A8D07F: CVarAd
  loc_A8D083: ParmAry1St
  loc_A8D089: FLdRfVar var_BC
  loc_A8D08C: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8D091: ILdRf var_C0
  loc_A8D094: CastAd
  loc_A8D097: FLdPr Me
  loc_A8D09A: MemStAdFunc
  loc_A8D09E: FLdRfVar var_BC
  loc_A8D0A1: Erase
  loc_A8D0A2: FFree1Ad var_C0
  loc_A8D0A5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B8274
  'Data Table: 414078
  loc_9B8268: LitVarStr var_A4, vbNullString
  loc_9B826D: FStVarCopy
  loc_9B8271: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D47C0
  'Data Table: 414078
  loc_9D47A8: FLdPr Me
  loc_9D47AB: VCallAd Control_ID_Campo2Txt
  loc_9D47AE: FStAdFunc var_88
  loc_9D47B1: FLdPr var_88
  loc_9D47B4: Me.SetFocus
  loc_9D47B9: FFree1Ad var_88
  loc_9D47BC: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11CB8
  'Data Table: 414078
  loc_A11C7C: ILdI2 KeyAscii
  loc_A11C7F: LitI2_Byte &HD
  loc_A11C81: EqI2
  loc_A11C82: BranchF loc_A11C93
  loc_A11C85: LitVar_TRUE var_A4
  loc_A11C88: LitStr "{Tab}"
  loc_A11C8B: ImpAdCallFPR4 SendKeys , 
  loc_A11C90: FFree1Var var_A4 = ""
  loc_A11C93: ILdI2 KeyAscii
  loc_A11C96: LitI2_Byte &H1B
  loc_A11C98: EqI2
  loc_A11C99: BranchF loc_A11CB6
  loc_A11C9C: ILdRf Me
  loc_A11C9F: FStAdNoPop
  loc_A11CA3: ImpAdLdRf MemVar_D9C5D8
  loc_A11CA6: NewIfNullPr Global
  loc_A11CA9: Global.Unload from_stack_1
  loc_A11CAE: FFree1Ad var_A8
  loc_A11CB1: LitI2_Byte 0
  loc_A11CB3: IStI2 KeyAscii
  loc_A11CB6: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D4560
  'Data Table: 414078
  loc_9D4548: ILdRf Me
  loc_9D454B: FStAdNoPop
  loc_9D454F: ImpAdLdRf MemVar_D9C5D8
  loc_9D4552: NewIfNullPr Global
  loc_9D4555: Global.Unload from_stack_1
  loc_9D455A: FFree1Ad var_88
  loc_9D455D: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5C7F0
  'Data Table: 414078
  loc_A5C798: LitStr vbNullString
  loc_A5C79B: FLdPr Me
  loc_A5C79E: VCallAd Control_ID_Campo1Txt
  loc_A5C7A1: FStAdFunc var_88
  loc_A5C7A4: FLdPr var_88
  loc_A5C7A7: Me.Text = from_stack_1
  loc_A5C7AC: FFree1Ad var_88
  loc_A5C7AF: LitStr "SELECT * FROM infogov.posifisc WHERE DetaPofi like '" & Chr(37)
  loc_A5C7B2: FLdRfVar var_8C
  loc_A5C7B5: FLdPr Me
  loc_A5C7B8: VCallAd Control_ID_Campo2Txt
  loc_A5C7BB: FStAdFunc var_88
  loc_A5C7BE: FLdPr var_88
  loc_A5C7C1:  = Me.Text
  loc_A5C7C6: ILdRf var_8C
  loc_A5C7C9: ConcatStr
  loc_A5C7CA: FStStrNoPop var_90
  loc_A5C7CD: LitStr Chr(37) & "' ORDER BY DetaPofi"
  loc_A5C7D0: ConcatStr
  loc_A5C7D1: FStStrNoPop var_94
  loc_A5C7D4: FLdPr Me
  loc_A5C7D7: MemLdRfVar from_stack_1.PosiFiscCLS
  loc_A5C7DA: NewIfNullPr clsposifisc
  loc_A5C7DD: Call clsposifisc.RedefineRS(from_stack_1v)
  loc_A5C7E2: FFreeStr var_8C = "": var_90 = ""
  loc_A5C7EB: FFree1Ad var_88
  loc_A5C7EE: ExitProcHresult
End Sub

Public Function global_4276344Get() '41458C
  global_4276344Get = global_4276344
End Function

Public Sub global_4276344Put(Value) '4145A6
  global_4276344 = Value
End Sub

Public Sub global_4276344Set(Value) '4145C0
  global_4276344 = Value
End Sub
