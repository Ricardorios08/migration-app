VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTipoDocumento
  Caption = "Buscar Tipo de Documento por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTipoDocumento.frx":0000
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
    OleObjectBlob = "dlgBuscarTipoDocumento.frx":08CA
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

Attribute VB_Name = "dlgBuscarTipoDocumento"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A59AD0
  'Data Table: 420018
  loc_A59A78: LitStr vbNullString
  loc_A59A7B: FLdPr Me
  loc_A59A7E: VCallAd Control_ID_Campo2Txt
  loc_A59A81: FStAdFunc var_88
  loc_A59A84: FLdPr var_88
  loc_A59A87: Me.Text = from_stack_1
  loc_A59A8C: FFree1Ad var_88
  loc_A59A8F: LitStr "SELECT * FROM infogov.tipodocu WHERE CodiTido like '"
  loc_A59A92: FLdRfVar var_8C
  loc_A59A95: FLdPr Me
  loc_A59A98: VCallAd Control_ID_Campo1Txt
  loc_A59A9B: FStAdFunc var_88
  loc_A59A9E: FLdPr var_88
  loc_A59AA1:  = Me.Text
  loc_A59AA6: ILdRf var_8C
  loc_A59AA9: ConcatStr
  loc_A59AAA: FStStrNoPop var_90
  loc_A59AAD: LitStr Chr(37) & "' ORDER BY CodiTido"
  loc_A59AB0: ConcatStr
  loc_A59AB1: FStStrNoPop var_94
  loc_A59AB4: FLdPr Me
  loc_A59AB7: MemLdRfVar from_stack_1.global_64
  loc_A59ABA: NewIfNullPr clstipodocu
  loc_A59ABD: Call clstipodocu.RedefineRS(from_stack_1v)
  loc_A59AC2: FFreeStr var_8C = "": var_90 = ""
  loc_A59ACB: FFree1Ad var_88
  loc_A59ACE: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D4F2C
  'Data Table: 420018
  loc_9D4F14: LitStr "0123456789"
  loc_9D4F17: FStStrCopy var_88
  loc_9D4F1A: FLdRfVar var_88
  loc_9D4F1D: ILdRf KeyAscii
  loc_9D4F20: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D4F25: IStI2 KeyAscii
  loc_9D4F28: FFree1Str var_88
  loc_9D4F2B: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B081C
  'Data Table: 420018
  loc_9B0814: Call asignarTipoDocu()
  loc_9B0819: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B9B78
  'Data Table: 420018
  loc_9B9B64: ILdI2 KeyCode
  loc_9B9B67: CI4UI1
  loc_9B9B68: LitI4 &HD
  loc_9B9B6D: EqI4
  loc_9B9B6E: BranchF loc_9B9B76
  loc_9B9B71: Call asignarTipoDocu()
  loc_9B9B76: ExitProcHresult
End Sub

Private Sub Form_Load() 'A86354
  'Data Table: 420018
  loc_A862C8: FLdPr Me
  loc_A862CB: MemLdStr sPasaSelect
  loc_A862CE: LitStr vbNullString
  loc_A862D1: EqStr
  loc_A862D3: BranchF loc_A862E0
  loc_A862D6: LitStr "SELECT * FROM tipodocu ORDER BY DetaTido"
  loc_A862D9: FLdPr Me
  loc_A862DC: MemStStrCopy
  loc_A862E0: FLdPr Me
  loc_A862E3: MemLdStr sPasaSelect
  loc_A862E6: FLdPr Me
  loc_A862E9: MemLdRfVar from_stack_1.global_64
  loc_A862EC: NewIfNullPr clstipodocu
  loc_A862EF: Call clstipodocu.RedefineRS(from_stack_1v)
  loc_A862F4: LitI4 0
  loc_A862F9: LitI4 1
  loc_A862FE: FLdRfVar var_88
  loc_A86301: Redim
  loc_A8630B: FLdPr Me
  loc_A8630E: MemLdRfVar from_stack_1.global_64
  loc_A86311: NewIfNullAd
  loc_A86314: FStAd var_8C 
  loc_A86318: FLdRfVar var_8C
  loc_A8631B: CVarRef
  loc_A86320: ParmAry1St
  loc_A86326: FLdPr Me
  loc_A86329: VCallAd Control_ID_dgdABMS
  loc_A8632C: CVarAd
  loc_A86330: ParmAry1St
  loc_A86336: FLdRfVar var_88
  loc_A86339: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8633E: ILdRf var_8C
  loc_A86341: CastAd
  loc_A86344: FLdPr Me
  loc_A86347: MemStAdFunc
  loc_A8634B: FLdRfVar var_88
  loc_A8634E: Erase
  loc_A8634F: FFree1Ad var_8C
  loc_A86352: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1A4C
  'Data Table: 420018
  loc_9B1A40: LitStr vbNullString
  loc_9B1A43: FLdPr Me
  loc_9B1A46: MemStStrCopy
  loc_9B1A4A: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D5010
  'Data Table: 420018
  loc_9D4FF8: FLdPr Me
  loc_9D4FFB: VCallAd Control_ID_Campo2Txt
  loc_9D4FFE: FStAdFunc var_88
  loc_9D5001: FLdPr var_88
  loc_9D5004: Me.SetFocus
  loc_9D5009: FFree1Ad var_88
  loc_9D500C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11008
  'Data Table: 420018
  loc_A10FCC: ILdI2 KeyAscii
  loc_A10FCF: LitI2_Byte &HD
  loc_A10FD1: EqI2
  loc_A10FD2: BranchF loc_A10FE3
  loc_A10FD5: LitVar_TRUE var_A4
  loc_A10FD8: LitStr "{Tab}"
  loc_A10FDB: ImpAdCallFPR4 SendKeys , 
  loc_A10FE0: FFree1Var var_A4 = ""
  loc_A10FE3: ILdI2 KeyAscii
  loc_A10FE6: LitI2_Byte &H1B
  loc_A10FE8: EqI2
  loc_A10FE9: BranchF loc_A11006
  loc_A10FEC: ILdRf Me
  loc_A10FEF: FStAdNoPop
  loc_A10FF3: ImpAdLdRf MemVar_D9C5D8
  loc_A10FF6: NewIfNullPr Global
  loc_A10FF9: Global.Unload from_stack_1
  loc_A10FFE: FFree1Ad var_A8
  loc_A11001: LitI2_Byte 0
  loc_A11003: IStI2 KeyAscii
  loc_A11006: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B0934
  'Data Table: 420018
  loc_9B092C: Call asignarTipoDocu()
  loc_9B0931: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9DB630
  'Data Table: 420018
  loc_9DB618: ILdRf Me
  loc_9DB61B: FStAdNoPop
  loc_9DB61F: ImpAdLdRf MemVar_D9C5D8
  loc_9DB622: NewIfNullPr Global
  loc_9DB625: Global.Unload from_stack_1
  loc_9DB62A: FFree1Ad var_88
  loc_9DB62D: ExitProcHresult
  loc_9DB62E: FnAbsR4
End Sub

Private Sub Campo2Txt_Change() 'A59B68
  'Data Table: 420018
  loc_A59B10: LitStr vbNullString
  loc_A59B13: FLdPr Me
  loc_A59B16: VCallAd Control_ID_Campo1Txt
  loc_A59B19: FStAdFunc var_88
  loc_A59B1C: FLdPr var_88
  loc_A59B1F: Me.Text = from_stack_1
  loc_A59B24: FFree1Ad var_88
  loc_A59B27: LitStr "SELECT * FROM infogov.tipodocu WHERE DetaTido like '" & Chr(37)
  loc_A59B2A: FLdRfVar var_8C
  loc_A59B2D: FLdPr Me
  loc_A59B30: VCallAd Control_ID_Campo2Txt
  loc_A59B33: FStAdFunc var_88
  loc_A59B36: FLdPr var_88
  loc_A59B39:  = Me.Text
  loc_A59B3E: ILdRf var_8C
  loc_A59B41: ConcatStr
  loc_A59B42: FStStrNoPop var_90
  loc_A59B45: LitStr Chr(37) & "' ORDER BY DetaTido"
  loc_A59B48: ConcatStr
  loc_A59B49: FStStrNoPop var_94
  loc_A59B4C: FLdPr Me
  loc_A59B4F: MemLdRfVar from_stack_1.global_64
  loc_A59B52: NewIfNullPr clstipodocu
  loc_A59B55: Call clstipodocu.RedefineRS(from_stack_1v)
  loc_A59B5A: FFreeStr var_8C = "": var_90 = ""
  loc_A59B63: FFree1Ad var_88
  loc_A59B66: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '4205D4
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '4205E3
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '4205F2
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '420601
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '420610
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '42061F
  sPasaSelect = Value
End Sub

Public Sub asignarTipoDocu() 'A80140
  'Data Table: 420018
  loc_A800B4: FLdRfVar var_88
  loc_A800B7: FLdPr Me
  loc_A800BA: MemLdRfVar from_stack_1.global_64
  loc_A800BD: NewIfNullPr clstipodocu
  loc_A800C0: from_stack_1 = clstipodocu.RecordCount
  loc_A800C5: ILdRf var_88
  loc_A800C8: LitI4 0
  loc_A800CD: GtI4
  loc_A800CE: BranchF loc_A80115
  loc_A800D1: FLdRfVar var_8A
  loc_A800D4: FLdPr Me
  loc_A800D7: MemLdRfVar from_stack_1.global_64
  loc_A800DA: NewIfNullPr clstipodocu
  loc_A800DD: from_stack_1 = clstipodocu.CodiTido
  loc_A800E2: FLdI2 var_8A
  loc_A800E5: CStrUI1
  loc_A800E7: FStStrNoPop var_90
  loc_A800EA: FLdPr Me
  loc_A800ED: MemStStrCopy
  loc_A800F1: FFree1Str var_90
  loc_A800F4: FLdRfVar var_90
  loc_A800F7: FLdPr Me
  loc_A800FA: MemLdRfVar from_stack_1.global_64
  loc_A800FD: NewIfNullPr clstipodocu
  loc_A80100: from_stack_1 = clstipodocu.DetaTido
  loc_A80105: ILdRf var_90
  loc_A80108: FLdPr Me
  loc_A8010B: MemStStrCopy
  loc_A8010F: FFree1Str var_90
  loc_A80112: Branch loc_A80129
  loc_A80115: LitStr "0"
  loc_A80118: FLdPr Me
  loc_A8011B: MemStStrCopy
  loc_A8011F: LitStr vbNullString
  loc_A80122: FLdPr Me
  loc_A80125: MemStStrCopy
  loc_A80129: ILdRf Me
  loc_A8012C: FStAdNoPop
  loc_A80130: ImpAdLdRf MemVar_D9C5D8
  loc_A80133: NewIfNullPr Global
  loc_A80136: Global.Unload from_stack_1
  loc_A8013B: FFree1Ad var_94
  loc_A8013E: ExitProcHresult
End Sub
