VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarCuentaContable
  Caption = "Buscar Cuenta Contable  por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarCuentaContable.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11112
  ClientHeight = 5520
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 960
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 10
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 960
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1920
    Top = 4800
    Width = 1335
    Height = 495
    TabIndex = 4
    Cancel = -1  'True
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
    Left = 240
    Top = 4800
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
    Width = 10815
    Height = 3255
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarCuentaContable.frx":08CA
  End
  Begin VB.Label Label2
    Caption = "Código:"
    Left = 120
    Top = 240
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
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 120
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
End

Attribute VB_Name = "dlgBuscarCuentaContable"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A9D8E0
  'Data Table: 421E1C
  loc_A9D82C: LitStr vbNullString
  loc_A9D82F: FLdPr Me
  loc_A9D832: VCallAd Control_ID_Campo2Txt
  loc_A9D835: FStAdFunc var_88
  loc_A9D838: FLdPr var_88
  loc_A9D83B: Me.Text = from_stack_1
  loc_A9D840: FFree1Ad var_88
  loc_A9D843: FLdRfVar var_8C
  loc_A9D846: FLdPr Me
  loc_A9D849: VCallAd Control_ID_Campo1Txt
  loc_A9D84C: FStAdFunc var_88
  loc_A9D84F: FLdPr var_88
  loc_A9D852:  = Me.Text
  loc_A9D857: ILdRf var_8C
  loc_A9D85A: LitStr vbNullString
  loc_A9D85D: NeStr
  loc_A9D85F: FFree1Str var_8C
  loc_A9D862: FFree1Ad var_88
  loc_A9D865: BranchF loc_A9D8AB
  loc_A9D868: LitStr "CodiCuco LIKE '"
  loc_A9D86B: FLdRfVar var_8C
  loc_A9D86E: FLdPr Me
  loc_A9D871: VCallAd Control_ID_Campo1Txt
  loc_A9D874: FStAdFunc var_88
  loc_A9D877: FLdPr var_88
  loc_A9D87A:  = Me.Text
  loc_A9D87F: ILdRf var_8C
  loc_A9D882: ConcatStr
  loc_A9D883: FStStrNoPop var_90
  loc_A9D886: LitStr Chr(37) & "'"
  loc_A9D889: ConcatStr
  loc_A9D88A: PopTmpLdAdStr
  loc_A9D88E: FLdPr Me
  loc_A9D891: MemLdRfVar from_stack_1.global_64
  loc_A9D894: NewIfNullPr clscuentacontable
  loc_A9D897: Call clscuentacontable.Filter(from_stack_1v)
  loc_A9D89C: FFreeStr var_8C = "": var_90 = ""
  loc_A9D8A5: FFree1Ad var_88
  loc_A9D8A8: Branch loc_A9D8C5
  loc_A9D8AB: LitStr vbNullString
  loc_A9D8AE: FStStrCopy var_8C
  loc_A9D8B1: FLdRfVar var_8C
  loc_A9D8B4: FLdPr Me
  loc_A9D8B7: MemLdRfVar from_stack_1.global_64
  loc_A9D8BA: NewIfNullPr clscuentacontable
  loc_A9D8BD: Call clscuentacontable.Filter(from_stack_1v)
  loc_A9D8C2: FFree1Str var_8C
  loc_A9D8C5: LitStr "PeriInfo, CodiCuco"
  loc_A9D8C8: FStStrCopy var_8C
  loc_A9D8CB: FLdRfVar var_8C
  loc_A9D8CE: FLdPr Me
  loc_A9D8D1: MemLdRfVar from_stack_1.global_64
  loc_A9D8D4: NewIfNullPr clscuentacontable
  loc_A9D8D7: Call clscuentacontable.Sort(from_stack_1v)
  loc_A9D8DC: FFree1Str var_8C
  loc_A9D8DF: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DA1B4
  'Data Table: 421E1C
  loc_9DA19C: LitStr "0123456789"
  loc_9DA19F: FStStrCopy var_88
  loc_9DA1A2: FLdRfVar var_88
  loc_9DA1A5: ILdRf KeyAscii
  loc_9DA1A8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA1AD: IStI2 KeyAscii
  loc_9DA1B0: FFree1Str var_88
  loc_9DA1B3: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9AFA8C
  'Data Table: 421E1C
  loc_9AFA84: Call asignarCuentaContable()
  loc_9AFA89: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B988C
  'Data Table: 421E1C
  loc_9B9878: ILdI2 KeyCode
  loc_9B987B: CI4UI1
  loc_9B987C: LitI4 &HD
  loc_9B9881: EqI4
  loc_9B9882: BranchF loc_9B988A
  loc_9B9885: Call asignarCuentaContable()
  loc_9B988A: ExitProcHresult
End Sub

Private Sub Form_Load() 'A94500
  'Data Table: 421E1C
  loc_A94460: FLdPr Me
  loc_A94463: MemLdStr sPasaSelect
  loc_A94466: LitStr vbNullString
  loc_A94469: EqStr
  loc_A9446B: BranchF loc_A9448B
  loc_A9446E: LitStr "SELECT cuentacontable.*, DetaTicu FROM infogov.cuentacontable LEFT JOIN contpres.tipocuco ON contpres.tipocuco.CodiTicu = cuentacontable.CodiTicu WHERE cuentacontable.PeriInfo = "
  loc_A94471: ImpAdLdI2 MemVar_D93034
  loc_A94474: CStrUI1
  loc_A94476: FStStrNoPop var_88
  loc_A94479: ConcatStr
  loc_A9447A: FStStrNoPop var_8C
  loc_A9447D: FLdPr Me
  loc_A94480: MemStStrCopy
  loc_A94484: FFreeStr var_88 = ""
  loc_A9448B: FLdPr Me
  loc_A9448E: MemLdStr sPasaSelect
  loc_A94491: FLdPr Me
  loc_A94494: MemLdRfVar from_stack_1.global_64
  loc_A94497: NewIfNullPr clscuentacontable
  loc_A9449A: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A9449F: LitI4 0
  loc_A944A4: LitI4 1
  loc_A944A9: FLdRfVar var_90
  loc_A944AC: Redim
  loc_A944B6: FLdPr Me
  loc_A944B9: MemLdRfVar from_stack_1.global_64
  loc_A944BC: NewIfNullAd
  loc_A944BF: FStAd var_94 
  loc_A944C3: FLdRfVar var_94
  loc_A944C6: CVarRef
  loc_A944CB: ParmAry1St
  loc_A944D1: FLdPr Me
  loc_A944D4: VCallAd Control_ID_dgdABMS
  loc_A944D7: CVarAd
  loc_A944DB: ParmAry1St
  loc_A944E1: FLdRfVar var_90
  loc_A944E4: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A944E9: ILdRf var_94
  loc_A944EC: CastAd
  loc_A944EF: FLdPr Me
  loc_A944F2: MemStAdFunc
  loc_A944F6: FLdRfVar var_90
  loc_A944F9: Erase
  loc_A944FA: FFree1Ad var_94
  loc_A944FD: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B14AC
  'Data Table: 421E1C
  loc_9B14A0: LitStr vbNullString
  loc_9B14A3: FLdPr Me
  loc_9B14A6: MemStStrCopy
  loc_9B14AA: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D9FEC
  'Data Table: 421E1C
  loc_9D9FD4: FLdPr Me
  loc_9D9FD7: VCallAd Control_ID_Campo2Txt
  loc_9D9FDA: FStAdFunc var_88
  loc_9D9FDD: FLdPr var_88
  loc_9D9FE0: Me.SetFocus
  loc_9D9FE5: FFree1Ad var_88
  loc_9D9FE8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9B977C
  'Data Table: 421E1C
  loc_9B9768: ILdI2 KeyAscii
  loc_9B976B: CI4UI1
  loc_9B976C: LitI4 &HD
  loc_9B9771: EqI4
  loc_9B9772: BranchF loc_9B977A
  loc_9B9775: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_9B977A: ExitProcHresult
  loc_9B977B: CCyI4
End Sub

Private Sub OKButton_Click() '9AFAFC
  'Data Table: 421E1C
  loc_9AFAF4: Call asignarCuentaContable()
  loc_9AFAF9: ExitProcHresult
  loc_9AFAFA: CopyBytes
End Sub

Private Sub CancelButton_Click() '9DA0D0
  'Data Table: 421E1C
  loc_9DA0B8: ILdRf Me
  loc_9DA0BB: FStAdNoPop
  loc_9DA0BF: ImpAdLdRf MemVar_D9C5D8
  loc_9DA0C2: NewIfNullPr Global
  loc_9DA0C5: Global.Unload from_stack_1
  loc_9DA0CA: FFree1Ad var_88
  loc_9DA0CD: ExitProcHresult
  loc_9DA0CE: IDvI2
End Sub

Private Sub Campo2Txt_Change() 'A9DBBC
  'Data Table: 421E1C
  loc_A9DB08: LitStr vbNullString
  loc_A9DB0B: FLdPr Me
  loc_A9DB0E: VCallAd Control_ID_Campo1Txt
  loc_A9DB11: FStAdFunc var_88
  loc_A9DB14: FLdPr var_88
  loc_A9DB17: Me.Text = from_stack_1
  loc_A9DB1C: FFree1Ad var_88
  loc_A9DB1F: FLdRfVar var_8C
  loc_A9DB22: FLdPr Me
  loc_A9DB25: VCallAd Control_ID_Campo2Txt
  loc_A9DB28: FStAdFunc var_88
  loc_A9DB2B: FLdPr var_88
  loc_A9DB2E:  = Me.Text
  loc_A9DB33: ILdRf var_8C
  loc_A9DB36: LitStr vbNullString
  loc_A9DB39: NeStr
  loc_A9DB3B: FFree1Str var_8C
  loc_A9DB3E: FFree1Ad var_88
  loc_A9DB41: BranchF loc_A9DB87
  loc_A9DB44: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A9DB47: FLdRfVar var_8C
  loc_A9DB4A: FLdPr Me
  loc_A9DB4D: VCallAd Control_ID_Campo2Txt
  loc_A9DB50: FStAdFunc var_88
  loc_A9DB53: FLdPr var_88
  loc_A9DB56:  = Me.Text
  loc_A9DB5B: ILdRf var_8C
  loc_A9DB5E: ConcatStr
  loc_A9DB5F: FStStrNoPop var_90
  loc_A9DB62: LitStr Chr(37) & "'"
  loc_A9DB65: ConcatStr
  loc_A9DB66: PopTmpLdAdStr
  loc_A9DB6A: FLdPr Me
  loc_A9DB6D: MemLdRfVar from_stack_1.global_64
  loc_A9DB70: NewIfNullPr clscuentacontable
  loc_A9DB73: Call clscuentacontable.Filter(from_stack_1v)
  loc_A9DB78: FFreeStr var_8C = "": var_90 = ""
  loc_A9DB81: FFree1Ad var_88
  loc_A9DB84: Branch loc_A9DBA1
  loc_A9DB87: LitStr vbNullString
  loc_A9DB8A: FStStrCopy var_8C
  loc_A9DB8D: FLdRfVar var_8C
  loc_A9DB90: FLdPr Me
  loc_A9DB93: MemLdRfVar from_stack_1.global_64
  loc_A9DB96: NewIfNullPr clscuentacontable
  loc_A9DB99: Call clscuentacontable.Filter(from_stack_1v)
  loc_A9DB9E: FFree1Str var_8C
  loc_A9DBA1: LitStr "PeriInfo, DetaCuco"
  loc_A9DBA4: FStStrCopy var_8C
  loc_A9DBA7: FLdRfVar var_8C
  loc_A9DBAA: FLdPr Me
  loc_A9DBAD: MemLdRfVar from_stack_1.global_64
  loc_A9DBB0: NewIfNullPr clscuentacontable
  loc_A9DBB3: Call clscuentacontable.Sort(from_stack_1v)
  loc_A9DBB8: FFree1Str var_8C
  loc_A9DBBB: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '4223DC
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '4223EB
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '4223FA
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '422409
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '422418
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '422427
  sPasaSelect = Value
End Sub

Public Sub asignarCuentaContable() 'A7DD80
  'Data Table: 421E1C
  loc_A7DCF8: FLdRfVar var_88
  loc_A7DCFB: FLdPr Me
  loc_A7DCFE: MemLdRfVar from_stack_1.global_64
  loc_A7DD01: NewIfNullPr clscuentacontable
  loc_A7DD04: from_stack_1 = clscuentacontable.RecordCount
  loc_A7DD09: ILdRf var_88
  loc_A7DD0C: LitI4 0
  loc_A7DD11: GtI4
  loc_A7DD12: BranchF loc_A7DD54
  loc_A7DD15: FLdRfVar var_8C
  loc_A7DD18: FLdPr Me
  loc_A7DD1B: MemLdRfVar from_stack_1.global_64
  loc_A7DD1E: NewIfNullPr clscuentacontable
  loc_A7DD21: from_stack_1 = clscuentacontable.CodiCuco
  loc_A7DD26: ILdRf var_8C
  loc_A7DD29: FLdPr Me
  loc_A7DD2C: MemStStrCopy
  loc_A7DD30: FFree1Str var_8C
  loc_A7DD33: FLdRfVar var_8C
  loc_A7DD36: FLdPr Me
  loc_A7DD39: MemLdRfVar from_stack_1.global_64
  loc_A7DD3C: NewIfNullPr clscuentacontable
  loc_A7DD3F: from_stack_1 = clscuentacontable.DetaCuco
  loc_A7DD44: ILdRf var_8C
  loc_A7DD47: FLdPr Me
  loc_A7DD4A: MemStStrCopy
  loc_A7DD4E: FFree1Str var_8C
  loc_A7DD51: Branch loc_A7DD68
  loc_A7DD54: LitStr "0"
  loc_A7DD57: FLdPr Me
  loc_A7DD5A: MemStStrCopy
  loc_A7DD5E: LitStr vbNullString
  loc_A7DD61: FLdPr Me
  loc_A7DD64: MemStStrCopy
  loc_A7DD68: ILdRf Me
  loc_A7DD6B: FStAdNoPop
  loc_A7DD6F: ImpAdLdRf MemVar_D9C5D8
  loc_A7DD72: NewIfNullPr Global
  loc_A7DD75: Global.Unload from_stack_1
  loc_A7DD7A: FFree1Ad var_90
  loc_A7DD7D: ExitProcHresult
  loc_A7DD7E: PopAdLdVar
End Sub
