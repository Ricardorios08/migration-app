VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTiposdeMultasdeTransito
  Caption = "Buscar Tipos de Multas de Transito ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTiposdeMultasdeTransito.frx":0000
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
    Width = 855
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
    OleObjectBlob = "dlgBuscarTiposdeMultasdeTransito.frx":08CA
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

Attribute VB_Name = "dlgBuscarTiposdeMultasdeTransito"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A5BC10
  'Data Table: 424B4C
  loc_A5BBB8: LitStr vbNullString
  loc_A5BBBB: FLdPr Me
  loc_A5BBBE: VCallAd Control_ID_Campo2Txt
  loc_A5BBC1: FStAdFunc var_88
  loc_A5BBC4: FLdPr var_88
  loc_A5BBC7: Me.Text = from_stack_1
  loc_A5BBCC: FFree1Ad var_88
  loc_A5BBCF: LitStr "SELECT * FROM tipomulta WHERE CodiTimu like '"
  loc_A5BBD2: FLdRfVar var_8C
  loc_A5BBD5: FLdPr Me
  loc_A5BBD8: VCallAd Control_ID_Campo1Txt
  loc_A5BBDB: FStAdFunc var_88
  loc_A5BBDE: FLdPr var_88
  loc_A5BBE1:  = Me.Text
  loc_A5BBE6: ILdRf var_8C
  loc_A5BBE9: ConcatStr
  loc_A5BBEA: FStStrNoPop var_90
  loc_A5BBED: LitStr Chr(37) & "' ORDER BY CodiTimu"
  loc_A5BBF0: ConcatStr
  loc_A5BBF1: FStStrNoPop var_94
  loc_A5BBF4: FLdPr Me
  loc_A5BBF7: MemLdRfVar from_stack_1.global_64
  loc_A5BBFA: NewIfNullPr clsbase
  loc_A5BBFD: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5BC02: FFreeStr var_8C = "": var_90 = ""
  loc_A5BC0B: FFree1Ad var_88
  loc_A5BC0E: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D3B48
  'Data Table: 424B4C
  loc_9D3B30: LitStr "0123456789"
  loc_9D3B33: FStStrCopy var_88
  loc_9D3B36: FLdRfVar var_88
  loc_9D3B39: ILdRf KeyAscii
  loc_9D3B3C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D3B41: IStI2 KeyAscii
  loc_9D3B44: FFree1Str var_88
  loc_9D3B47: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9AFA1C
  'Data Table: 424B4C
  loc_9AFA14: Call asignarTipodeMulta()
  loc_9AFA19: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B8E74
  'Data Table: 424B4C
  loc_9B8E60: ILdI2 KeyCode
  loc_9B8E63: CI4UI1
  loc_9B8E64: LitI4 &HD
  loc_9B8E69: EqI4
  loc_9B8E6A: BranchF loc_9B8E72
  loc_9B8E6D: Call asignarTipodeMulta()
  loc_9B8E72: ExitProcHresult
End Sub

Private Sub Form_Load() 'A86DE4
  'Data Table: 424B4C
  loc_A86D58: FLdPr Me
  loc_A86D5B: MemLdStr sPasaSelect
  loc_A86D5E: LitStr vbNullString
  loc_A86D61: EqStr
  loc_A86D63: BranchF loc_A86D70
  loc_A86D66: LitStr "SELECT * FROM tipomulta ORDER BY CodiTimu"
  loc_A86D69: FLdPr Me
  loc_A86D6C: MemStStrCopy
  loc_A86D70: FLdPr Me
  loc_A86D73: MemLdStr sPasaSelect
  loc_A86D76: FLdPr Me
  loc_A86D79: MemLdRfVar from_stack_1.global_64
  loc_A86D7C: NewIfNullPr clsbase
  loc_A86D7F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A86D84: LitI4 0
  loc_A86D89: LitI4 1
  loc_A86D8E: FLdRfVar var_88
  loc_A86D91: Redim
  loc_A86D9B: FLdPr Me
  loc_A86D9E: MemLdRfVar from_stack_1.global_64
  loc_A86DA1: NewIfNullAd
  loc_A86DA4: FStAd var_8C 
  loc_A86DA8: FLdRfVar var_8C
  loc_A86DAB: CVarRef
  loc_A86DB0: ParmAry1St
  loc_A86DB6: FLdPr Me
  loc_A86DB9: VCallAd Control_ID_dgdABMS
  loc_A86DBC: CVarAd
  loc_A86DC0: ParmAry1St
  loc_A86DC6: FLdRfVar var_88
  loc_A86DC9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A86DCE: ILdRf var_8C
  loc_A86DD1: CastAd
  loc_A86DD4: FLdPr Me
  loc_A86DD7: MemStAdFunc
  loc_A86DDB: FLdRfVar var_88
  loc_A86DDE: Erase
  loc_A86DDF: FFree1Ad var_8C
  loc_A86DE2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1740
  'Data Table: 424B4C
  loc_9B1734: LitStr vbNullString
  loc_9B1737: FLdPr Me
  loc_9B173A: MemStStrCopy
  loc_9B173E: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D39CC
  'Data Table: 424B4C
  loc_9D39B4: FLdPr Me
  loc_9D39B7: VCallAd Control_ID_Campo2Txt
  loc_9D39BA: FStAdFunc var_88
  loc_9D39BD: FLdPr var_88
  loc_9D39C0: Me.SetFocus
  loc_9D39C5: FFree1Ad var_88
  loc_9D39C8: ExitProcHresult
  loc_9D39C9: FFreeAd var_FFFFFF2C = ""
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10B80
  'Data Table: 424B4C
  loc_A10B44: ILdI2 KeyAscii
  loc_A10B47: LitI2_Byte &HD
  loc_A10B49: EqI2
  loc_A10B4A: BranchF loc_A10B5B
  loc_A10B4D: LitVar_TRUE var_A4
  loc_A10B50: LitStr "{Tab}"
  loc_A10B53: ImpAdCallFPR4 SendKeys , 
  loc_A10B58: FFree1Var var_A4 = ""
  loc_A10B5B: ILdI2 KeyAscii
  loc_A10B5E: LitI2_Byte &H1B
  loc_A10B60: EqI2
  loc_A10B61: BranchF loc_A10B7E
  loc_A10B64: ILdRf Me
  loc_A10B67: FStAdNoPop
  loc_A10B6B: ImpAdLdRf MemVar_D9C5D8
  loc_A10B6E: NewIfNullPr Global
  loc_A10B71: Global.Unload from_stack_1
  loc_A10B76: FFree1Ad var_A8
  loc_A10B79: LitI2_Byte 0
  loc_A10B7B: IStI2 KeyAscii
  loc_A10B7E: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B0154
  'Data Table: 424B4C
  loc_9B014C: Call asignarTipodeMulta()
  loc_9B0151: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9D3AB0
  'Data Table: 424B4C
  loc_9D3A98: ILdRf Me
  loc_9D3A9B: FStAdNoPop
  loc_9D3A9F: ImpAdLdRf MemVar_D9C5D8
  loc_9D3AA2: NewIfNullPr Global
  loc_9D3AA5: Global.Unload from_stack_1
  loc_9D3AAA: FFree1Ad var_88
  loc_9D3AAD: ExitProcHresult
  loc_9D3AAE: PopAdLdVar
End Sub

Private Sub Campo2Txt_Change() 'A5BD40
  'Data Table: 424B4C
  loc_A5BCE8: LitStr vbNullString
  loc_A5BCEB: FLdPr Me
  loc_A5BCEE: VCallAd Control_ID_Campo1Txt
  loc_A5BCF1: FStAdFunc var_88
  loc_A5BCF4: FLdPr var_88
  loc_A5BCF7: Me.Text = from_stack_1
  loc_A5BCFC: FFree1Ad var_88
  loc_A5BCFF: LitStr "SELECT * FROM tipomulta WHERE DetaTimu like '" & Chr(37)
  loc_A5BD02: FLdRfVar var_8C
  loc_A5BD05: FLdPr Me
  loc_A5BD08: VCallAd Control_ID_Campo2Txt
  loc_A5BD0B: FStAdFunc var_88
  loc_A5BD0E: FLdPr var_88
  loc_A5BD11:  = Me.Text
  loc_A5BD16: ILdRf var_8C
  loc_A5BD19: ConcatStr
  loc_A5BD1A: FStStrNoPop var_90
  loc_A5BD1D: LitStr Chr(37) & "' ORDER BY DetaTimu"
  loc_A5BD20: ConcatStr
  loc_A5BD21: FStStrNoPop var_94
  loc_A5BD24: FLdPr Me
  loc_A5BD27: MemLdRfVar from_stack_1.global_64
  loc_A5BD2A: NewIfNullPr clsbase
  loc_A5BD2D: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5BD32: FFreeStr var_8C = "": var_90 = ""
  loc_A5BD3B: FFree1Ad var_88
  loc_A5BD3E: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '42511C
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '42512B
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '42513A
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '425149
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '425158
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '425167
  sPasaSelect = Value
End Sub

Public Sub asignarTipodeMulta() 'ABCDA0
  'Data Table: 424B4C
  loc_ABCCAC: FLdRfVar var_88
  loc_ABCCAF: FLdPr Me
  loc_ABCCB2: MemLdRfVar from_stack_1.global_64
  loc_ABCCB5: NewIfNullPr clsbase
  loc_ABCCB8: from_stack_1 = clsbase.RecordCount
  loc_ABCCBD: ILdRf var_88
  loc_ABCCC0: LitI4 0
  loc_ABCCC5: GtI4
  loc_ABCCC6: BranchF loc_ABCD76
  loc_ABCCC9: FLdRfVar var_B4
  loc_ABCCCC: FLdRfVar var_A4
  loc_ABCCCF: LitVarStr var_A0, "CodiTimu"
  loc_ABCCD4: PopAdLdVar
  loc_ABCCD5: FLdRfVar var_90
  loc_ABCCD8: FLdRfVar var_8C
  loc_ABCCDB: FLdPr Me
  loc_ABCCDE: MemLdRfVar from_stack_1.global_64
  loc_ABCCE1: NewIfNullPr clsbase
  loc_ABCCE4: from_stack_1v = clsbase.RsFrmGet()
  loc_ABCCE9: FLdPr var_8C
  loc_ABCCEC:  = Me.Fields
  loc_ABCCF1: FLdPr var_90
  loc_ABCCF4: from_stack_2 = Me.Item(from_stack_1)
  loc_ABCCF9: FLdPr var_A4
  loc_ABCCFC:  = Me.Value
  loc_ABCD01: FLdRfVar var_B4
  loc_ABCD04: CStrVarTmp
  loc_ABCD05: FStStrNoPop var_B8
  loc_ABCD08: FLdPr Me
  loc_ABCD0B: MemStStrCopy
  loc_ABCD0F: FFree1Str var_B8
  loc_ABCD12: FFreeAd var_8C = "": var_90 = ""
  loc_ABCD1B: FFree1Var var_B4 = ""
  loc_ABCD1E: FLdRfVar var_B4
  loc_ABCD21: FLdRfVar var_A4
  loc_ABCD24: LitVarStr var_A0, "DetaTimu"
  loc_ABCD29: PopAdLdVar
  loc_ABCD2A: FLdRfVar var_90
  loc_ABCD2D: FLdRfVar var_8C
  loc_ABCD30: FLdPr Me
  loc_ABCD33: MemLdRfVar from_stack_1.global_64
  loc_ABCD36: NewIfNullPr clsbase
  loc_ABCD39: from_stack_1v = clsbase.RsFrmGet()
  loc_ABCD3E: FLdPr var_8C
  loc_ABCD41:  = Me.Fields
  loc_ABCD46: FLdPr var_90
  loc_ABCD49: from_stack_2 = Me.Item(from_stack_1)
  loc_ABCD4E: FLdPr var_A4
  loc_ABCD51:  = Me.Value
  loc_ABCD56: FLdRfVar var_B4
  loc_ABCD59: CStrVarTmp
  loc_ABCD5A: FStStrNoPop var_B8
  loc_ABCD5D: FLdPr Me
  loc_ABCD60: MemStStrCopy
  loc_ABCD64: FFree1Str var_B8
  loc_ABCD67: FFreeAd var_8C = "": var_90 = ""
  loc_ABCD70: FFree1Var var_B4 = ""
  loc_ABCD73: Branch loc_ABCD8A
  loc_ABCD76: LitStr "0"
  loc_ABCD79: FLdPr Me
  loc_ABCD7C: MemStStrCopy
  loc_ABCD80: LitStr vbNullString
  loc_ABCD83: FLdPr Me
  loc_ABCD86: MemStStrCopy
  loc_ABCD8A: ILdRf Me
  loc_ABCD8D: FStAdNoPop
  loc_ABCD91: ImpAdLdRf MemVar_D9C5D8
  loc_ABCD94: NewIfNullPr Global
  loc_ABCD97: Global.Unload from_stack_1
  loc_ABCD9C: FFree1Ad var_8C
  loc_ABCD9F: ExitProcHresult
End Sub
