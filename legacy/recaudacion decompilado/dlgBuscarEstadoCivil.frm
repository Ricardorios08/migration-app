VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarEstadoCivil
  Caption = "Buscar Estado Civil ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarEstadoCivil.frx":0000
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
    OleObjectBlob = "dlgBuscarEstadoCivil.frx":08CA
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

Attribute VB_Name = "dlgBuscarEstadoCivil"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A5C038
  'Data Table: 420798
  loc_A5BFE0: LitStr vbNullString
  loc_A5BFE3: FLdPr Me
  loc_A5BFE6: VCallAd Control_ID_Campo2Txt
  loc_A5BFE9: FStAdFunc var_88
  loc_A5BFEC: FLdPr var_88
  loc_A5BFEF: Me.Text = from_stack_1
  loc_A5BFF4: FFree1Ad var_88
  loc_A5BFF7: LitStr "SELECT * FROM infogov.estacivi WHERE CodiEsci like '"
  loc_A5BFFA: FLdRfVar var_8C
  loc_A5BFFD: FLdPr Me
  loc_A5C000: VCallAd Control_ID_Campo1Txt
  loc_A5C003: FStAdFunc var_88
  loc_A5C006: FLdPr var_88
  loc_A5C009:  = Me.Text
  loc_A5C00E: ILdRf var_8C
  loc_A5C011: ConcatStr
  loc_A5C012: FStStrNoPop var_90
  loc_A5C015: LitStr Chr(37) & "' ORDER BY CodiEsci"
  loc_A5C018: ConcatStr
  loc_A5C019: FStStrNoPop var_94
  loc_A5C01C: FLdPr Me
  loc_A5C01F: MemLdRfVar from_stack_1.global_64
  loc_A5C022: NewIfNullPr clsestacivi
  loc_A5C025: Call clsestacivi.RedefineRS(from_stack_1v)
  loc_A5C02A: FFreeStr var_8C = "": var_90 = ""
  loc_A5C033: FFree1Ad var_88
  loc_A5C036: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D3D5C
  'Data Table: 420798
  loc_9D3D44: LitStr "0123456789"
  loc_9D3D47: FStStrCopy var_88
  loc_9D3D4A: FLdRfVar var_88
  loc_9D3D4D: ILdRf KeyAscii
  loc_9D3D50: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D3D55: IStI2 KeyAscii
  loc_9D3D58: FFree1Str var_88
  loc_9D3D5B: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9AFBA4
  'Data Table: 420798
  loc_9AFB9C: Call asignarEstaCivi()
  loc_9AFBA1: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B9804
  'Data Table: 420798
  loc_9B97F0: ILdI2 KeyCode
  loc_9B97F3: CI4UI1
  loc_9B97F4: LitI4 &HD
  loc_9B97F9: EqI4
  loc_9B97FA: BranchF loc_9B9802
  loc_9B97FD: Call asignarEstaCivi()
  loc_9B9802: ExitProcHresult
End Sub

Private Sub Form_Load() 'A86F84
  'Data Table: 420798
  loc_A86EF8: FLdPr Me
  loc_A86EFB: MemLdStr sPasaSelect
  loc_A86EFE: LitStr vbNullString
  loc_A86F01: EqStr
  loc_A86F03: BranchF loc_A86F10
  loc_A86F06: LitStr "SELECT * FROM infogov.estacivi ORDER BY DetaEsci"
  loc_A86F09: FLdPr Me
  loc_A86F0C: MemStStrCopy
  loc_A86F10: FLdPr Me
  loc_A86F13: MemLdStr sPasaSelect
  loc_A86F16: FLdPr Me
  loc_A86F19: MemLdRfVar from_stack_1.global_64
  loc_A86F1C: NewIfNullPr clsestacivi
  loc_A86F1F: Call clsestacivi.RedefineRS(from_stack_1v)
  loc_A86F24: LitI4 0
  loc_A86F29: LitI4 1
  loc_A86F2E: FLdRfVar var_88
  loc_A86F31: Redim
  loc_A86F3B: FLdPr Me
  loc_A86F3E: MemLdRfVar from_stack_1.global_64
  loc_A86F41: NewIfNullAd
  loc_A86F44: FStAd var_8C 
  loc_A86F48: FLdRfVar var_8C
  loc_A86F4B: CVarRef
  loc_A86F50: ParmAry1St
  loc_A86F56: FLdPr Me
  loc_A86F59: VCallAd Control_ID_dgdABMS
  loc_A86F5C: CVarAd
  loc_A86F60: ParmAry1St
  loc_A86F66: FLdRfVar var_88
  loc_A86F69: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A86F6E: ILdRf var_8C
  loc_A86F71: CastAd
  loc_A86F74: FLdPr Me
  loc_A86F77: MemStAdFunc
  loc_A86F7B: FLdRfVar var_88
  loc_A86F7E: Erase
  loc_A86F7F: FFree1Ad var_8C
  loc_A86F82: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B0C00
  'Data Table: 420798
  loc_9B0BF4: LitStr vbNullString
  loc_9B0BF7: FLdPr Me
  loc_9B0BFA: MemStStrCopy
  loc_9B0BFE: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D44C8
  'Data Table: 420798
  loc_9D44B0: FLdPr Me
  loc_9D44B3: VCallAd Control_ID_Campo2Txt
  loc_9D44B6: FStAdFunc var_88
  loc_9D44B9: FLdPr var_88
  loc_9D44BC: Me.SetFocus
  loc_9D44C1: FFree1Ad var_88
  loc_9D44C4: ExitProcHresult
  loc_9D44C5: StAryMove
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A1124C
  'Data Table: 420798
  loc_A11210: ILdI2 KeyAscii
  loc_A11213: LitI2_Byte &HD
  loc_A11215: EqI2
  loc_A11216: BranchF loc_A11227
  loc_A11219: LitVar_TRUE var_A4
  loc_A1121C: LitStr "{Tab}"
  loc_A1121F: ImpAdCallFPR4 SendKeys , 
  loc_A11224: FFree1Var var_A4 = ""
  loc_A11227: ILdI2 KeyAscii
  loc_A1122A: LitI2_Byte &H1B
  loc_A1122C: EqI2
  loc_A1122D: BranchF loc_A1124A
  loc_A11230: ILdRf Me
  loc_A11233: FStAdNoPop
  loc_A11237: ImpAdLdRf MemVar_D9C5D8
  loc_A1123A: NewIfNullPr Global
  loc_A1123D: Global.Unload from_stack_1
  loc_A11242: FFree1Ad var_A8
  loc_A11245: LitI2_Byte 0
  loc_A11247: IStI2 KeyAscii
  loc_A1124A: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9AF93C
  'Data Table: 420798
  loc_9AF934: Call asignarEstaCivi()
  loc_9AF939: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9D3DF4
  'Data Table: 420798
  loc_9D3DDC: ILdRf Me
  loc_9D3DDF: FStAdNoPop
  loc_9D3DE3: ImpAdLdRf MemVar_D9C5D8
  loc_9D3DE6: NewIfNullPr Global
  loc_9D3DE9: Global.Unload from_stack_1
  loc_9D3DEE: FFree1Ad var_88
  loc_9D3DF1: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5BF08
  'Data Table: 420798
  loc_A5BEB0: LitStr vbNullString
  loc_A5BEB3: FLdPr Me
  loc_A5BEB6: VCallAd Control_ID_Campo1Txt
  loc_A5BEB9: FStAdFunc var_88
  loc_A5BEBC: FLdPr var_88
  loc_A5BEBF: Me.Text = from_stack_1
  loc_A5BEC4: FFree1Ad var_88
  loc_A5BEC7: LitStr "SELECT * FROM infogov.estacivi WHERE DetaEsci like '" & Chr(37)
  loc_A5BECA: FLdRfVar var_8C
  loc_A5BECD: FLdPr Me
  loc_A5BED0: VCallAd Control_ID_Campo2Txt
  loc_A5BED3: FStAdFunc var_88
  loc_A5BED6: FLdPr var_88
  loc_A5BED9:  = Me.Text
  loc_A5BEDE: ILdRf var_8C
  loc_A5BEE1: ConcatStr
  loc_A5BEE2: FStStrNoPop var_90
  loc_A5BEE5: LitStr Chr(37) & "' ORDER BY DetaEsci"
  loc_A5BEE8: ConcatStr
  loc_A5BEE9: FStStrNoPop var_94
  loc_A5BEEC: FLdPr Me
  loc_A5BEEF: MemLdRfVar from_stack_1.global_64
  loc_A5BEF2: NewIfNullPr clsestacivi
  loc_A5BEF5: Call clsestacivi.RedefineRS(from_stack_1v)
  loc_A5BEFA: FFreeStr var_8C = "": var_90 = ""
  loc_A5BF03: FFree1Ad var_88
  loc_A5BF06: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '420D54
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '420D63
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '420D72
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '420D81
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '420D90
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '420D9F
  sPasaSelect = Value
End Sub

Public Sub asignarEstaCivi() 'A7F8D4
  'Data Table: 420798
  loc_A7F848: FLdRfVar var_88
  loc_A7F84B: FLdPr Me
  loc_A7F84E: MemLdRfVar from_stack_1.global_64
  loc_A7F851: NewIfNullPr clsestacivi
  loc_A7F854: from_stack_1 = clsestacivi.RecordCount
  loc_A7F859: ILdRf var_88
  loc_A7F85C: LitI4 0
  loc_A7F861: GtI4
  loc_A7F862: BranchF loc_A7F8A9
  loc_A7F865: FLdRfVar var_8A
  loc_A7F868: FLdPr Me
  loc_A7F86B: MemLdRfVar from_stack_1.global_64
  loc_A7F86E: NewIfNullPr clsestacivi
  loc_A7F871: from_stack_1 = clsestacivi.CodiEsci
  loc_A7F876: FLdI2 var_8A
  loc_A7F879: CStrUI1
  loc_A7F87B: FStStrNoPop var_90
  loc_A7F87E: FLdPr Me
  loc_A7F881: MemStStrCopy
  loc_A7F885: FFree1Str var_90
  loc_A7F888: FLdRfVar var_90
  loc_A7F88B: FLdPr Me
  loc_A7F88E: MemLdRfVar from_stack_1.global_64
  loc_A7F891: NewIfNullPr clsestacivi
  loc_A7F894: from_stack_1 = clsestacivi.DetaEsci
  loc_A7F899: ILdRf var_90
  loc_A7F89C: FLdPr Me
  loc_A7F89F: MemStStrCopy
  loc_A7F8A3: FFree1Str var_90
  loc_A7F8A6: Branch loc_A7F8BD
  loc_A7F8A9: LitStr "0"
  loc_A7F8AC: FLdPr Me
  loc_A7F8AF: MemStStrCopy
  loc_A7F8B3: LitStr vbNullString
  loc_A7F8B6: FLdPr Me
  loc_A7F8B9: MemStStrCopy
  loc_A7F8BD: ILdRf Me
  loc_A7F8C0: FStAdNoPop
  loc_A7F8C4: ImpAdLdRf MemVar_D9C5D8
  loc_A7F8C7: NewIfNullPr Global
  loc_A7F8CA: Global.Unload from_stack_1
  loc_A7F8CF: FFree1Ad var_94
  loc_A7F8D2: ExitProcHresult
  loc_A7F8D3: PopAdLdVar
End Sub
