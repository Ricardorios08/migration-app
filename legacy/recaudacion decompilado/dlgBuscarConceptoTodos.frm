VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarConceptoTodos
  Caption = "Buscar Concepto por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarConceptoTodos.frx":0000
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
    Width = 1335
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
    OleObjectBlob = "dlgBuscarConceptoTodos.frx":08CA
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

Attribute VB_Name = "dlgBuscarConceptoTodos"

Public iPeriInfo As Integer
Public ConceptoCLS As New Class


Private Sub dgdABMS_DblClick(arg_30) '9D5BA4
  'Data Table: 417DA8
  loc_9D5B8C: ILdRf Me
  loc_9D5B8F: FStAdNoPop
  loc_9D5B93: ImpAdLdRf MemVar_D9C5D8
  loc_9D5B96: NewIfNullPr Global
  loc_9D5B99: Global.Unload from_stack_1
  loc_9D5B9E: FFree1Ad var_88
  loc_9D5BA1: ExitProcHresult
  loc_9D5BA2: FLdRfVar arg_3034
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EF4B0
  'Data Table: 417DA8
  loc_9EF48C: ILdI2 KeyCode
  loc_9EF48F: CI4UI1
  loc_9EF490: LitI4 &HD
  loc_9EF495: EqI4
  loc_9EF496: BranchF loc_9EF4AE
  loc_9EF499: ILdRf Me
  loc_9EF49C: FStAdNoPop
  loc_9EF4A0: ImpAdLdRf MemVar_D9C5D8
  loc_9EF4A3: NewIfNullPr Global
  loc_9EF4A6: Global.Unload from_stack_1
  loc_9EF4AB: FFree1Ad var_88
  loc_9EF4AE: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A9A750
  'Data Table: 417DA8
  loc_A9A69C: LitStr vbNullString
  loc_A9A69F: FLdPr Me
  loc_A9A6A2: VCallAd Control_ID_Campo2Txt
  loc_A9A6A5: FStAdFunc var_88
  loc_A9A6A8: FLdPr var_88
  loc_A9A6AB: Me.Text = from_stack_1
  loc_A9A6B0: FFree1Ad var_88
  loc_A9A6B3: FLdRfVar var_8C
  loc_A9A6B6: FLdPr Me
  loc_A9A6B9: VCallAd Control_ID_Campo1Txt
  loc_A9A6BC: FStAdFunc var_88
  loc_A9A6BF: FLdPr var_88
  loc_A9A6C2:  = Me.Text
  loc_A9A6C7: ILdRf var_8C
  loc_A9A6CA: LitStr vbNullString
  loc_A9A6CD: NeStr
  loc_A9A6CF: FFree1Str var_8C
  loc_A9A6D2: FFree1Ad var_88
  loc_A9A6D5: BranchF loc_A9A71B
  loc_A9A6D8: LitStr "CodiConc LIKE '"
  loc_A9A6DB: FLdRfVar var_8C
  loc_A9A6DE: FLdPr Me
  loc_A9A6E1: VCallAd Control_ID_Campo1Txt
  loc_A9A6E4: FStAdFunc var_88
  loc_A9A6E7: FLdPr var_88
  loc_A9A6EA:  = Me.Text
  loc_A9A6EF: ILdRf var_8C
  loc_A9A6F2: ConcatStr
  loc_A9A6F3: FStStrNoPop var_90
  loc_A9A6F6: LitStr Chr(37) & "'"
  loc_A9A6F9: ConcatStr
  loc_A9A6FA: PopTmpLdAdStr
  loc_A9A6FE: FLdPr Me
  loc_A9A701: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A9A704: NewIfNullPr clsconcepto
  loc_A9A707: Call clsconcepto.Filter(from_stack_1v)
  loc_A9A70C: FFreeStr var_8C = "": var_90 = ""
  loc_A9A715: FFree1Ad var_88
  loc_A9A718: Branch loc_A9A735
  loc_A9A71B: LitStr vbNullString
  loc_A9A71E: FStStrCopy var_8C
  loc_A9A721: FLdRfVar var_8C
  loc_A9A724: FLdPr Me
  loc_A9A727: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A9A72A: NewIfNullPr clsconcepto
  loc_A9A72D: Call clsconcepto.Filter(from_stack_1v)
  loc_A9A732: FFree1Str var_8C
  loc_A9A735: LitStr "CodiConc"
  loc_A9A738: FStStrCopy var_8C
  loc_A9A73B: FLdRfVar var_8C
  loc_A9A73E: FLdPr Me
  loc_A9A741: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A9A744: NewIfNullPr clsconcepto
  loc_A9A747: Call clsconcepto.Sort(from_stack_1v)
  loc_A9A74C: FFree1Str var_8C
  loc_A9A74F: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D5E9C
  'Data Table: 417DA8
  loc_9D5E84: LitStr "0123456789"
  loc_9D5E87: FStStrCopy var_88
  loc_9D5E8A: FLdRfVar var_88
  loc_9D5E8D: ILdRf KeyAscii
  loc_9D5E90: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D5E95: IStI2 KeyAscii
  loc_9D5E98: FFree1Str var_88
  loc_9D5E9B: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8E1F4
  'Data Table: 417DA8
  loc_A8E164: LitStr "SELECT CodiConc, DetaConc FROM concepto WHERE PeriInfo = "
  loc_A8E167: FLdPr Me
  loc_A8E16A: MemLdI2 iPeriInfo
  loc_A8E16D: CStrUI1
  loc_A8E16F: FStStrNoPop var_88
  loc_A8E172: ConcatStr
  loc_A8E173: FStStrNoPop var_8C
  loc_A8E176: LitStr " ORDER BY DetaConc"
  loc_A8E179: ConcatStr
  loc_A8E17A: FStStrNoPop var_90
  loc_A8E17D: FLdPr Me
  loc_A8E180: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A8E183: NewIfNullPr clsconcepto
  loc_A8E186: Call clsconcepto.RedefineRS(from_stack_1v)
  loc_A8E18B: FFreeStr var_88 = "": var_8C = ""
  loc_A8E194: LitI4 0
  loc_A8E199: LitI4 1
  loc_A8E19E: FLdRfVar var_94
  loc_A8E1A1: Redim
  loc_A8E1AB: FLdPr Me
  loc_A8E1AE: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A8E1B1: NewIfNullAd
  loc_A8E1B4: FStAd var_98 
  loc_A8E1B8: FLdRfVar var_98
  loc_A8E1BB: CVarRef
  loc_A8E1C0: ParmAry1St
  loc_A8E1C6: FLdPr Me
  loc_A8E1C9: VCallAd Control_ID_dgdABMS
  loc_A8E1CC: CVarAd
  loc_A8E1D0: ParmAry1St
  loc_A8E1D6: FLdRfVar var_94
  loc_A8E1D9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8E1DE: ILdRf var_98
  loc_A8E1E1: CastAd
  loc_A8E1E4: FLdPr Me
  loc_A8E1E7: MemStAdFunc
  loc_A8E1EB: FLdRfVar var_94
  loc_A8E1EE: Erase
  loc_A8E1EF: FFree1Ad var_98
  loc_A8E1F2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B57F4
  'Data Table: 417DA8
  loc_9B57E8: LitVarStr var_A4, vbNullString
  loc_9B57ED: FStVarCopy
  loc_9B57F1: ExitProcHresult
  loc_9B57F2: LdFixedStr
End Sub

Private Sub Form_Activate() '9D5990
  'Data Table: 417DA8
  loc_9D5978: FLdPr Me
  loc_9D597B: VCallAd Control_ID_Campo2Txt
  loc_9D597E: FStAdFunc var_88
  loc_9D5981: FLdPr var_88
  loc_9D5984: Me.SetFocus
  loc_9D5989: FFree1Ad var_88
  loc_9D598C: ExitProcHresult
  loc_9D598D: CI2Var
  loc_9D598E: GtI2
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10854
  'Data Table: 417DA8
  loc_A10818: ILdI2 KeyAscii
  loc_A1081B: LitI2_Byte &HD
  loc_A1081D: EqI2
  loc_A1081E: BranchF loc_A1082F
  loc_A10821: LitVar_TRUE var_A4
  loc_A10824: LitStr "{Tab}"
  loc_A10827: ImpAdCallFPR4 SendKeys , 
  loc_A1082C: FFree1Var var_A4 = ""
  loc_A1082F: ILdI2 KeyAscii
  loc_A10832: LitI2_Byte &H1B
  loc_A10834: EqI2
  loc_A10835: BranchF loc_A10852
  loc_A10838: ILdRf Me
  loc_A1083B: FStAdNoPop
  loc_A1083F: ImpAdLdRf MemVar_D9C5D8
  loc_A10842: NewIfNullPr Global
  loc_A10845: Global.Unload from_stack_1
  loc_A1084A: FFree1Ad var_A8
  loc_A1084D: LitI2_Byte 0
  loc_A1084F: IStI2 KeyAscii
  loc_A10852: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D57C8
  'Data Table: 417DA8
  loc_9D57B0: ILdRf Me
  loc_9D57B3: FStAdNoPop
  loc_9D57B7: ImpAdLdRf MemVar_D9C5D8
  loc_9D57BA: NewIfNullPr Global
  loc_9D57BD: Global.Unload from_stack_1
  loc_9D57C2: FFree1Ad var_88
  loc_9D57C5: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A9A380
  'Data Table: 417DA8
  loc_A9A2CC: LitStr vbNullString
  loc_A9A2CF: FLdPr Me
  loc_A9A2D2: VCallAd Control_ID_Campo1Txt
  loc_A9A2D5: FStAdFunc var_88
  loc_A9A2D8: FLdPr var_88
  loc_A9A2DB: Me.Text = from_stack_1
  loc_A9A2E0: FFree1Ad var_88
  loc_A9A2E3: FLdRfVar var_8C
  loc_A9A2E6: FLdPr Me
  loc_A9A2E9: VCallAd Control_ID_Campo2Txt
  loc_A9A2EC: FStAdFunc var_88
  loc_A9A2EF: FLdPr var_88
  loc_A9A2F2:  = Me.Text
  loc_A9A2F7: ILdRf var_8C
  loc_A9A2FA: LitStr vbNullString
  loc_A9A2FD: NeStr
  loc_A9A2FF: FFree1Str var_8C
  loc_A9A302: FFree1Ad var_88
  loc_A9A305: BranchF loc_A9A34B
  loc_A9A308: LitStr "DetaConc LIKE '" & Chr(37)
  loc_A9A30B: FLdRfVar var_8C
  loc_A9A30E: FLdPr Me
  loc_A9A311: VCallAd Control_ID_Campo2Txt
  loc_A9A314: FStAdFunc var_88
  loc_A9A317: FLdPr var_88
  loc_A9A31A:  = Me.Text
  loc_A9A31F: ILdRf var_8C
  loc_A9A322: ConcatStr
  loc_A9A323: FStStrNoPop var_90
  loc_A9A326: LitStr Chr(37) & "'"
  loc_A9A329: ConcatStr
  loc_A9A32A: PopTmpLdAdStr
  loc_A9A32E: FLdPr Me
  loc_A9A331: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A9A334: NewIfNullPr clsconcepto
  loc_A9A337: Call clsconcepto.Filter(from_stack_1v)
  loc_A9A33C: FFreeStr var_8C = "": var_90 = ""
  loc_A9A345: FFree1Ad var_88
  loc_A9A348: Branch loc_A9A365
  loc_A9A34B: LitStr vbNullString
  loc_A9A34E: FStStrCopy var_8C
  loc_A9A351: FLdRfVar var_8C
  loc_A9A354: FLdPr Me
  loc_A9A357: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A9A35A: NewIfNullPr clsconcepto
  loc_A9A35D: Call clsconcepto.Filter(from_stack_1v)
  loc_A9A362: FFree1Str var_8C
  loc_A9A365: LitStr "DetaConc"
  loc_A9A368: FStStrCopy var_8C
  loc_A9A36B: FLdRfVar var_8C
  loc_A9A36E: FLdPr Me
  loc_A9A371: MemLdRfVar from_stack_1.ConceptoCLS
  loc_A9A374: NewIfNullPr clsconcepto
  loc_A9A377: Call clsconcepto.Sort(from_stack_1v)
  loc_A9A37C: FFree1Str var_8C
  loc_A9A37F: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '4182D4
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '4182E3
  iPeriInfo = Value
End Sub

Public Function global_4292008Get() '4182F2
  global_4292008Get = global_4292008
End Function

Public Sub global_4292008Put(Value) '41830C
  global_4292008 = Value
End Sub

Public Sub global_4292008Set(Value) '418326
  global_4292008 = Value
End Sub

Private Function Proc_54_15_9D5C88() '9D5C88
  'Data Table: 417DA8
  loc_9D5C70: ILdRf Me
  loc_9D5C73: FStAdNoPop
  loc_9D5C77: ImpAdLdRf MemVar_D9C5D8
  loc_9D5C7A: NewIfNullPr Global
  loc_9D5C7D: Global.Unload from_stack_1
  loc_9D5C82: FFree1Ad var_88
  loc_9D5C85: ExitProcHresult
End Function
