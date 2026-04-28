VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarTipodeLiquidacion
  Caption = "BuscarTipo de Liquidacion ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarTipodeLiquidacion.frx":0000
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
    OleObjectBlob = "dlgBuscarTipodeLiquidacion.frx":08CA
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

Attribute VB_Name = "dlgBuscarTipodeLiquidacion"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String
Public ByOficina As Byte


Private Sub Campo1Txt_Change() 'A7D5EC
  'Data Table: 425A78
  loc_A7D578: LitStr vbNullString
  loc_A7D57B: FLdPr Me
  loc_A7D57E: VCallAd Control_ID_Campo2Txt
  loc_A7D581: FStAdFunc var_88
  loc_A7D584: FLdPr var_88
  loc_A7D587: Me.Text = from_stack_1
  loc_A7D58C: FFree1Ad var_88
  loc_A7D58F: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = "
  loc_A7D592: FLdPr Me
  loc_A7D595: MemLdUI1 ByOficina
  loc_A7D599: CStrI2
  loc_A7D59B: FStStrNoPop var_8C
  loc_A7D59E: ConcatStr
  loc_A7D59F: FStStrNoPop var_90
  loc_A7D5A2: LitStr " AND CodiTili like '"
  loc_A7D5A5: ConcatStr
  loc_A7D5A6: FStStrNoPop var_98
  loc_A7D5A9: FLdRfVar var_94
  loc_A7D5AC: FLdPr Me
  loc_A7D5AF: VCallAd Control_ID_Campo1Txt
  loc_A7D5B2: FStAdFunc var_88
  loc_A7D5B5: FLdPr var_88
  loc_A7D5B8:  = Me.Text
  loc_A7D5BD: ILdRf var_94
  loc_A7D5C0: ConcatStr
  loc_A7D5C1: FStStrNoPop var_9C
  loc_A7D5C4: LitStr Chr(37) & "' ORDER BY CodiOfic, CodiTili"
  loc_A7D5C7: ConcatStr
  loc_A7D5C8: FStStrNoPop var_A0
  loc_A7D5CB: FLdPr Me
  loc_A7D5CE: MemLdRfVar from_stack_1.global_68
  loc_A7D5D1: NewIfNullPr clstipoliqu
  loc_A7D5D4: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_A7D5D9: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A7D5E8: FFree1Ad var_88
  loc_A7D5EB: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DC3D8
  'Data Table: 425A78
  loc_9DC3C0: LitStr "0123456789"
  loc_9DC3C3: FStStrCopy var_88
  loc_9DC3C6: FLdRfVar var_88
  loc_9DC3C9: ILdRf KeyAscii
  loc_9DC3CC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DC3D1: IStI2 KeyAscii
  loc_9DC3D4: FFree1Str var_88
  loc_9DC3D7: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B0774
  'Data Table: 425A78
  loc_9B076C: Call asignarTipoLiqu()
  loc_9B0771: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B922C
  'Data Table: 425A78
  loc_9B9218: ILdI2 KeyCode
  loc_9B921B: CI4UI1
  loc_9B921C: LitI4 &HD
  loc_9B9221: EqI4
  loc_9B9222: BranchF loc_9B922A
  loc_9B9225: Call asignarTipoLiqu()
  loc_9B922A: ExitProcHresult
End Sub

Private Sub Form_Load() 'A85DA4
  'Data Table: 425A78
  loc_A85D18: FLdPr Me
  loc_A85D1B: MemLdStr sPasaSelect
  loc_A85D1E: LitStr vbNullString
  loc_A85D21: EqStr
  loc_A85D23: BranchF loc_A85D30
  loc_A85D26: LitStr "SELECT * FROM tipoliqu ORDER BY DetaTili"
  loc_A85D29: FLdPr Me
  loc_A85D2C: MemStStrCopy
  loc_A85D30: FLdPr Me
  loc_A85D33: MemLdStr sPasaSelect
  loc_A85D36: FLdPr Me
  loc_A85D39: MemLdRfVar from_stack_1.global_68
  loc_A85D3C: NewIfNullPr clstipoliqu
  loc_A85D3F: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_A85D44: LitI4 0
  loc_A85D49: LitI4 1
  loc_A85D4E: FLdRfVar var_88
  loc_A85D51: Redim
  loc_A85D5B: FLdPr Me
  loc_A85D5E: MemLdRfVar from_stack_1.global_68
  loc_A85D61: NewIfNullAd
  loc_A85D64: FStAd var_8C 
  loc_A85D68: FLdRfVar var_8C
  loc_A85D6B: CVarRef
  loc_A85D70: ParmAry1St
  loc_A85D76: FLdPr Me
  loc_A85D79: VCallAd Control_ID_dgdABMS
  loc_A85D7C: CVarAd
  loc_A85D80: ParmAry1St
  loc_A85D86: FLdRfVar var_88
  loc_A85D89: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A85D8E: ILdRf var_8C
  loc_A85D91: CastAd
  loc_A85D94: FLdPr Me
  loc_A85D97: MemStAdFunc
  loc_A85D9B: FLdRfVar var_88
  loc_A85D9E: Erase
  loc_A85D9F: FFree1Ad var_8C
  loc_A85DA2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B13BC
  'Data Table: 425A78
  loc_9B13B0: LitStr vbNullString
  loc_9B13B3: FLdPr Me
  loc_9B13B6: MemStStrCopy
  loc_9B13BA: ExitProcHresult
End Sub

Private Sub Form_Activate() '9DB7AC
  'Data Table: 425A78
  loc_9DB794: FLdPr Me
  loc_9DB797: VCallAd Control_ID_Campo2Txt
  loc_9DB79A: FStAdFunc var_88
  loc_9DB79D: FLdPr var_88
  loc_9DB7A0: Me.SetFocus
  loc_9DB7A5: FFree1Ad var_88
  loc_9DB7A8: ExitProcHresult
  loc_9DB7A9: NewIfNullAd
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10188
  'Data Table: 425A78
  loc_A1014C: ILdI2 KeyAscii
  loc_A1014F: LitI2_Byte &HD
  loc_A10151: EqI2
  loc_A10152: BranchF loc_A10163
  loc_A10155: LitVar_TRUE var_A4
  loc_A10158: LitStr "{Tab}"
  loc_A1015B: ImpAdCallFPR4 SendKeys , 
  loc_A10160: FFree1Var var_A4 = ""
  loc_A10163: ILdI2 KeyAscii
  loc_A10166: LitI2_Byte &H1B
  loc_A10168: EqI2
  loc_A10169: BranchF loc_A10186
  loc_A1016C: ILdRf Me
  loc_A1016F: FStAdNoPop
  loc_A10173: ImpAdLdRf MemVar_D9C5D8
  loc_A10176: NewIfNullPr Global
  loc_A10179: Global.Unload from_stack_1
  loc_A1017E: FFree1Ad var_A8
  loc_A10181: LitI2_Byte 0
  loc_A10183: IStI2 KeyAscii
  loc_A10186: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B042C
  'Data Table: 425A78
  loc_9B0424: Call asignarTipoLiqu()
  loc_9B0429: ExitProcHresult
  loc_9B042A: NewIfNullPr Me
End Sub

Private Sub CancelButton_Click() '9DB9C0
  'Data Table: 425A78
  loc_9DB9A8: ILdRf Me
  loc_9DB9AB: FStAdNoPop
  loc_9DB9AF: ImpAdLdRf MemVar_D9C5D8
  loc_9DB9B2: NewIfNullPr Global
  loc_9DB9B5: Global.Unload from_stack_1
  loc_9DB9BA: FFree1Ad var_88
  loc_9DB9BD: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A7D6AC
  'Data Table: 425A78
  loc_A7D638: LitStr vbNullString
  loc_A7D63B: FLdPr Me
  loc_A7D63E: VCallAd Control_ID_Campo1Txt
  loc_A7D641: FStAdFunc var_88
  loc_A7D644: FLdPr var_88
  loc_A7D647: Me.Text = from_stack_1
  loc_A7D64C: FFree1Ad var_88
  loc_A7D64F: LitStr "SELECT * FROM tipoliqu WHERE CodiOfic = "
  loc_A7D652: FLdPr Me
  loc_A7D655: MemLdUI1 ByOficina
  loc_A7D659: CStrI2
  loc_A7D65B: FStStrNoPop var_8C
  loc_A7D65E: ConcatStr
  loc_A7D65F: FStStrNoPop var_90
  loc_A7D662: LitStr " AND DetaTili like '" & Chr(37)
  loc_A7D665: ConcatStr
  loc_A7D666: FStStrNoPop var_98
  loc_A7D669: FLdRfVar var_94
  loc_A7D66C: FLdPr Me
  loc_A7D66F: VCallAd Control_ID_Campo2Txt
  loc_A7D672: FStAdFunc var_88
  loc_A7D675: FLdPr var_88
  loc_A7D678:  = Me.Text
  loc_A7D67D: ILdRf var_94
  loc_A7D680: ConcatStr
  loc_A7D681: FStStrNoPop var_9C
  loc_A7D684: LitStr Chr(37) & "' ORDER BY CodiOfic, DetaTili"
  loc_A7D687: ConcatStr
  loc_A7D688: FStStrNoPop var_A0
  loc_A7D68B: FLdPr Me
  loc_A7D68E: MemLdRfVar from_stack_1.global_68
  loc_A7D691: NewIfNullPr clstipoliqu
  loc_A7D694: Call clstipoliqu.RedefineRS(from_stack_1v)
  loc_A7D699: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_A7D6A8: FFree1Ad var_88
  loc_A7D6AB: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '426040
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '42604F
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '42605E
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '42606D
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '42607C
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '42608B
  sPasaSelect = Value
End Sub

Public Function ByOficinaGet() '42609A
  ByOficinaGet = ByOficina
End Function

Public Sub ByOficinaPut(Value) '4260A9
  ByOficina = Value
End Sub

Public Sub asignarTipoLiqu() 'A80FCC
  'Data Table: 425A78
  loc_A80F40: FLdRfVar var_88
  loc_A80F43: FLdPr Me
  loc_A80F46: MemLdRfVar from_stack_1.global_68
  loc_A80F49: NewIfNullPr clstipoliqu
  loc_A80F4C: from_stack_1 = clstipoliqu.RecordCount
  loc_A80F51: ILdRf var_88
  loc_A80F54: LitI4 0
  loc_A80F59: GtI4
  loc_A80F5A: BranchF loc_A80FA2
  loc_A80F5D: FLdRfVar var_8A
  loc_A80F60: FLdPr Me
  loc_A80F63: MemLdRfVar from_stack_1.global_68
  loc_A80F66: NewIfNullPr clstipoliqu
  loc_A80F69: from_stack_1 = clstipoliqu.CodiTili
  loc_A80F6E: FLdUI1
  loc_A80F72: CStrI2
  loc_A80F74: FStStrNoPop var_90
  loc_A80F77: FLdPr Me
  loc_A80F7A: MemStStrCopy
  loc_A80F7E: FFree1Str var_90
  loc_A80F81: FLdRfVar var_90
  loc_A80F84: FLdPr Me
  loc_A80F87: MemLdRfVar from_stack_1.global_68
  loc_A80F8A: NewIfNullPr clstipoliqu
  loc_A80F8D: from_stack_1 = clstipoliqu.DetaTili
  loc_A80F92: ILdRf var_90
  loc_A80F95: FLdPr Me
  loc_A80F98: MemStStrCopy
  loc_A80F9C: FFree1Str var_90
  loc_A80F9F: Branch loc_A80FB6
  loc_A80FA2: LitStr "0"
  loc_A80FA5: FLdPr Me
  loc_A80FA8: MemStStrCopy
  loc_A80FAC: LitStr vbNullString
  loc_A80FAF: FLdPr Me
  loc_A80FB2: MemStStrCopy
  loc_A80FB6: ILdRf Me
  loc_A80FB9: FStAdNoPop
  loc_A80FBD: ImpAdLdRf MemVar_D9C5D8
  loc_A80FC0: NewIfNullPr Global
  loc_A80FC3: Global.Unload from_stack_1
  loc_A80FC8: FFree1Ad var_94
  loc_A80FCB: ExitProcHresult
End Sub
