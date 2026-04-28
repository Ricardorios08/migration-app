VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarCalle
  Caption = "Buscar Calle por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarCalle.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11868
  ClientHeight = 5424
  LockControls = -1  'True
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
    Width = 11655
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarCalle.frx":08CA
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

Attribute VB_Name = "dlgBuscarCalle"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A7E4EC
  'Data Table: 428898
  loc_A7E478: LitStr vbNullString
  loc_A7E47B: FLdPr Me
  loc_A7E47E: VCallAd Control_ID_Campo2Txt
  loc_A7E481: FStAdFunc var_88
  loc_A7E484: FLdPr var_88
  loc_A7E487: Me.Text = from_stack_1
  loc_A7E48C: FFree1Ad var_88
  loc_A7E48F: LitStr "SELECT CodiCall, DetaCall, DetaBarr, DetaLoca FROM infogov.calle "
  loc_A7E492: LitStr " LEFT JOIN infogov.barrio ON infogov.calle.CodiBarr = infogov.barrio.CodiBarr "
  loc_A7E495: ConcatStr
  loc_A7E496: FStStrNoPop var_8C
  loc_A7E499: LitStr " LEFT JOIN infogov.localidad ON infogov.calle.CodiLoca = infogov.localidad.CodiLoca "
  loc_A7E49C: ConcatStr
  loc_A7E49D: FStStrNoPop var_90
  loc_A7E4A0: LitStr " WHERE infogov.calle.CodiCall like '"
  loc_A7E4A3: ConcatStr
  loc_A7E4A4: FStStrNoPop var_98
  loc_A7E4A7: FLdRfVar var_94
  loc_A7E4AA: FLdPr Me
  loc_A7E4AD: VCallAd Control_ID_Campo1Txt
  loc_A7E4B0: FStAdFunc var_88
  loc_A7E4B3: FLdPr var_88
  loc_A7E4B6:  = Me.Text
  loc_A7E4BB: ILdRf var_94
  loc_A7E4BE: ConcatStr
  loc_A7E4BF: FStStrNoPop var_9C
  loc_A7E4C2: LitStr Chr(37) & "' ORDER BY infogov.calle.CodiCall"
  loc_A7E4C5: ConcatStr
  loc_A7E4C6: FStStrNoPop var_A0
  loc_A7E4C9: FLdPr Me
  loc_A7E4CC: MemLdRfVar from_stack_1.global_64
  loc_A7E4CF: NewIfNullPr clscalle
  loc_A7E4D2: Call clscalle.RedefineRS(from_stack_1v)
  loc_A7E4D7: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A7E4E6: FFree1Ad var_88
  loc_A7E4E9: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CF454
  'Data Table: 428898
  loc_9CF43C: LitStr "0123456789"
  loc_9CF43F: FStStrCopy var_88
  loc_9CF442: FLdRfVar var_88
  loc_9CF445: ILdRf KeyAscii
  loc_9CF448: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CF44D: IStI2 KeyAscii
  loc_9CF450: FFree1Str var_88
  loc_9CF453: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9CF798
  'Data Table: 428898
  loc_9CF780: FLdPr Me
  loc_9CF783: VCallAd Control_ID_dgdABMS
  loc_9CF786: FStAdFunc var_88
  loc_9CF789: FLdRfVar var_88
  loc_9CF78C: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9CF791: FFree1Ad var_88
  loc_9CF794: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9CF7E4
  'Data Table: 428898
  loc_9CF7CC: FLdPr Me
  loc_9CF7CF: VCallAd Control_ID_dgdABMS
  loc_9CF7D2: FStAdFunc var_88
  loc_9CF7D5: FLdRfVar var_88
  loc_9CF7D8: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9CF7DD: FFree1Ad var_88
  loc_9CF7E0: ExitProcHresult
  loc_9CF7E1: Ary1LdPr
End Sub

Private Sub dgdABMS_DblClick() '9B0314
  'Data Table: 428898
  loc_9B030C: Call asignarCalle()
  loc_9B0311: ExitProcHresult
  loc_9B0312: CUI1I2
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9BACBC
  'Data Table: 428898
  loc_9BACA8: ILdI2 KeyCode
  loc_9BACAB: CI4UI1
  loc_9BACAC: LitI4 &HD
  loc_9BACB1: EqI4
  loc_9BACB2: BranchF loc_9BACBA
  loc_9BACB5: Call asignarCalle()
  loc_9BACBA: ExitProcHresult
  loc_9BACBB: CCyI2
End Sub

Private Sub Form_Load() 'AA34C8
  'Data Table: 428898
  loc_AA341C: FLdPr Me
  loc_AA341F: MemLdStr sPasaSelect
  loc_AA3422: LitStr vbNullString
  loc_AA3425: EqStr
  loc_AA3427: BranchF loc_AA3452
  loc_AA342A: LitStr "SELECT CodiCall, DetaCall, DetaBarr, DetaLoca FROM infogov.calle "
  loc_AA342D: LitStr " LEFT JOIN infogov.barrio ON infogov.calle.CodiBarr = infogov.barrio.CodiBarr "
  loc_AA3430: ConcatStr
  loc_AA3431: FStStrNoPop var_88
  loc_AA3434: LitStr " LEFT JOIN infogov.localidad ON infogov.calle.CodiLoca = infogov.localidad.CodiLoca "
  loc_AA3437: ConcatStr
  loc_AA3438: FStStrNoPop var_8C
  loc_AA343B: LitStr " ORDER BY DetaCall"
  loc_AA343E: ConcatStr
  loc_AA343F: FStStrNoPop var_90
  loc_AA3442: FLdPr Me
  loc_AA3445: MemStStrCopy
  loc_AA3449: FFreeStr var_88 = "": var_8C = ""
  loc_AA3452: FLdPr Me
  loc_AA3455: MemLdStr sPasaSelect
  loc_AA3458: FLdPr Me
  loc_AA345B: MemLdRfVar from_stack_1.global_64
  loc_AA345E: NewIfNullPr clscalle
  loc_AA3461: Call clscalle.RedefineRS(from_stack_1v)
  loc_AA3466: LitI4 0
  loc_AA346B: LitI4 1
  loc_AA3470: FLdRfVar var_94
  loc_AA3473: Redim
  loc_AA347D: FLdPr Me
  loc_AA3480: MemLdRfVar from_stack_1.global_64
  loc_AA3483: NewIfNullAd
  loc_AA3486: FStAd var_98 
  loc_AA348A: FLdRfVar var_98
  loc_AA348D: CVarRef
  loc_AA3492: ParmAry1St
  loc_AA3498: FLdPr Me
  loc_AA349B: VCallAd Control_ID_dgdABMS
  loc_AA349E: CVarAd
  loc_AA34A2: ParmAry1St
  loc_AA34A8: FLdRfVar var_94
  loc_AA34AB: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AA34B0: ILdRf var_98
  loc_AA34B3: CastAd
  loc_AA34B6: FLdPr Me
  loc_AA34B9: MemStAdFunc
  loc_AA34BD: FLdRfVar var_94
  loc_AA34C0: Erase
  loc_AA34C1: FFree1Ad var_98
  loc_AA34C4: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1DD0
  'Data Table: 428898
  loc_9B1DC4: LitStr vbNullString
  loc_9B1DC7: FLdPr Me
  loc_9B1DCA: MemStStrCopy
  loc_9B1DCE: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CF668
  'Data Table: 428898
  loc_9CF650: FLdPr Me
  loc_9CF653: VCallAd Control_ID_Campo2Txt
  loc_9CF656: FStAdFunc var_88
  loc_9CF659: FLdPr var_88
  loc_9CF65C: Me.SetFocus
  loc_9CF661: FFree1Ad var_88
  loc_9CF664: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A106F8
  'Data Table: 428898
  loc_A106BC: ILdI2 KeyAscii
  loc_A106BF: LitI2_Byte &HD
  loc_A106C1: EqI2
  loc_A106C2: BranchF loc_A106D3
  loc_A106C5: LitVar_TRUE var_A4
  loc_A106C8: LitStr "{Tab}"
  loc_A106CB: ImpAdCallFPR4 SendKeys , 
  loc_A106D0: FFree1Var var_A4 = ""
  loc_A106D3: ILdI2 KeyAscii
  loc_A106D6: LitI2_Byte &H1B
  loc_A106D8: EqI2
  loc_A106D9: BranchF loc_A106F6
  loc_A106DC: ILdRf Me
  loc_A106DF: FStAdNoPop
  loc_A106E3: ImpAdLdRf MemVar_D9C5D8
  loc_A106E6: NewIfNullPr Global
  loc_A106E9: Global.Unload from_stack_1
  loc_A106EE: FFree1Ad var_A8
  loc_A106F1: LitI2_Byte 0
  loc_A106F3: IStI2 KeyAscii
  loc_A106F6: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B034C
  'Data Table: 428898
  loc_9B0344: Call asignarCalle()
  loc_9B0349: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9CDBFC
  'Data Table: 428898
  loc_9CDBE4: ILdRf Me
  loc_9CDBE7: FStAdNoPop
  loc_9CDBEB: ImpAdLdRf MemVar_D9C5D8
  loc_9CDBEE: NewIfNullPr Global
  loc_9CDBF1: Global.Unload from_stack_1
  loc_9CDBF6: FFree1Ad var_88
  loc_9CDBF9: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A7E8AC
  'Data Table: 428898
  loc_A7E838: LitStr vbNullString
  loc_A7E83B: FLdPr Me
  loc_A7E83E: VCallAd Control_ID_Campo1Txt
  loc_A7E841: FStAdFunc var_88
  loc_A7E844: FLdPr var_88
  loc_A7E847: Me.Text = from_stack_1
  loc_A7E84C: FFree1Ad var_88
  loc_A7E84F: LitStr "SELECT CodiCall, DetaCall, DetaBarr, DetaLoca FROM infogov.calle "
  loc_A7E852: LitStr " LEFT JOIN infogov.barrio ON infogov.calle.CodiBarr = infogov.barrio.CodiBarr "
  loc_A7E855: ConcatStr
  loc_A7E856: FStStrNoPop var_8C
  loc_A7E859: LitStr " LEFT JOIN infogov.localidad ON infogov.calle.CodiLoca = infogov.localidad.CodiLoca "
  loc_A7E85C: ConcatStr
  loc_A7E85D: FStStrNoPop var_90
  loc_A7E860: LitStr " WHERE infogov.calle.DetaCall like '" & Chr(37)
  loc_A7E863: ConcatStr
  loc_A7E864: FStStrNoPop var_98
  loc_A7E867: FLdRfVar var_94
  loc_A7E86A: FLdPr Me
  loc_A7E86D: VCallAd Control_ID_Campo2Txt
  loc_A7E870: FStAdFunc var_88
  loc_A7E873: FLdPr var_88
  loc_A7E876:  = Me.Text
  loc_A7E87B: ILdRf var_94
  loc_A7E87E: ConcatStr
  loc_A7E87F: FStStrNoPop var_9C
  loc_A7E882: LitStr Chr(37) & "' ORDER BY infogov.calle.DetaCall"
  loc_A7E885: ConcatStr
  loc_A7E886: FStStrNoPop var_A0
  loc_A7E889: FLdPr Me
  loc_A7E88C: MemLdRfVar from_stack_1.global_64
  loc_A7E88F: NewIfNullPr clscalle
  loc_A7E892: Call clscalle.RedefineRS(from_stack_1v)
  loc_A7E897: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A7E8A6: FFree1Ad var_88
  loc_A7E8A9: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '428E78
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '428E87
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '428E96
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '428EA5
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '428EB4
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '428EC3
  sPasaSelect = Value
End Sub

Public Sub asignarCalle() 'A80CBC
  'Data Table: 428898
  loc_A80C30: FLdRfVar var_88
  loc_A80C33: FLdPr Me
  loc_A80C36: MemLdRfVar from_stack_1.global_64
  loc_A80C39: NewIfNullPr clscalle
  loc_A80C3C: from_stack_1 = clscalle.RecordCount
  loc_A80C41: ILdRf var_88
  loc_A80C44: LitI4 0
  loc_A80C49: GtI4
  loc_A80C4A: BranchF loc_A80C91
  loc_A80C4D: FLdRfVar var_8A
  loc_A80C50: FLdPr Me
  loc_A80C53: MemLdRfVar from_stack_1.global_64
  loc_A80C56: NewIfNullPr clscalle
  loc_A80C59: from_stack_1 = clscalle.CodiCall
  loc_A80C5E: FLdI2 var_8A
  loc_A80C61: CStrUI1
  loc_A80C63: FStStrNoPop var_90
  loc_A80C66: FLdPr Me
  loc_A80C69: MemStStrCopy
  loc_A80C6D: FFree1Str var_90
  loc_A80C70: FLdRfVar var_90
  loc_A80C73: FLdPr Me
  loc_A80C76: MemLdRfVar from_stack_1.global_64
  loc_A80C79: NewIfNullPr clscalle
  loc_A80C7C: from_stack_1 = clscalle.DetaCall
  loc_A80C81: ILdRf var_90
  loc_A80C84: FLdPr Me
  loc_A80C87: MemStStrCopy
  loc_A80C8B: FFree1Str var_90
  loc_A80C8E: Branch loc_A80CA5
  loc_A80C91: LitStr "0"
  loc_A80C94: FLdPr Me
  loc_A80C97: MemStStrCopy
  loc_A80C9B: LitStr vbNullString
  loc_A80C9E: FLdPr Me
  loc_A80CA1: MemStStrCopy
  loc_A80CA5: ILdRf Me
  loc_A80CA8: FStAdNoPop
  loc_A80CAC: ImpAdLdRf MemVar_D9C5D8
  loc_A80CAF: NewIfNullPr Global
  loc_A80CB2: Global.Unload from_stack_1
  loc_A80CB7: FFree1Ad var_94
  loc_A80CBA: ExitProcHresult
End Sub
