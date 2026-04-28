VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarRubro
  Caption = "Buscar Rubro ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarRubro.frx":0000
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
    Width = 9015
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarRubro.frx":08CA
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

Attribute VB_Name = "dlgBuscarRubro"

Public iCodiRamo As Integer
Public iCodiTili As Integer
Public BuscarCLS As New Class


Private Sub Campo1Txt_Change() 'AC9130
  'Data Table: 41E99C
  loc_AC9034: LitStr vbNullString
  loc_AC9037: FLdPr Me
  loc_AC903A: VCallAd Control_ID_Campo2Txt
  loc_AC903D: FStAdFunc var_88
  loc_AC9040: FLdPr var_88
  loc_AC9043: Me.Text = from_stack_1
  loc_AC9048: FFree1Ad var_88
  loc_AC904B: FLdPr Me
  loc_AC904E: MemLdI2 iCodiTili
  loc_AC9051: LitI2_Byte 0
  loc_AC9053: NeI2
  loc_AC9054: BranchF loc_AC90D1
  loc_AC9057: LitStr "SELECT * FROM rubro WHERE CodiRamo = "
  loc_AC905A: FLdPr Me
  loc_AC905D: MemLdI2 iCodiRamo
  loc_AC9060: CStrUI1
  loc_AC9062: FStStrNoPop var_8C
  loc_AC9065: ConcatStr
  loc_AC9066: FStStrNoPop var_90
  loc_AC9069: LitStr " AND CodiTili = "
  loc_AC906C: ConcatStr
  loc_AC906D: FStStrNoPop var_94
  loc_AC9070: FLdPr Me
  loc_AC9073: MemLdI2 iCodiTili
  loc_AC9076: CStrUI1
  loc_AC9078: FStStrNoPop var_98
  loc_AC907B: ConcatStr
  loc_AC907C: FStStrNoPop var_9C
  loc_AC907F: LitStr " AND CodiRubr like '"
  loc_AC9082: ConcatStr
  loc_AC9083: FStStrNoPop var_A4
  loc_AC9086: FLdRfVar var_A0
  loc_AC9089: FLdPr Me
  loc_AC908C: VCallAd Control_ID_Campo1Txt
  loc_AC908F: FStAdFunc var_88
  loc_AC9092: FLdPr var_88
  loc_AC9095:  = Me.Text
  loc_AC909A: ILdRf var_A0
  loc_AC909D: ConcatStr
  loc_AC909E: FStStrNoPop var_A8
  loc_AC90A1: LitStr Chr(37) & "' ORDER BY CodiRubr"
  loc_AC90A4: ConcatStr
  loc_AC90A5: FStStrNoPop var_AC
  loc_AC90A8: FLdPr Me
  loc_AC90AB: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC90AE: NewIfNullPr clsbase
  loc_AC90B1: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC90B6: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_AC90CB: FFree1Ad var_88
  loc_AC90CE: Branch loc_AC912C
  loc_AC90D1: LitStr "SELECT * FROM rubro WHERE CodiRamo = "
  loc_AC90D4: FLdPr Me
  loc_AC90D7: MemLdI2 iCodiRamo
  loc_AC90DA: CStrUI1
  loc_AC90DC: FStStrNoPop var_8C
  loc_AC90DF: ConcatStr
  loc_AC90E0: FStStrNoPop var_90
  loc_AC90E3: LitStr " AND CodiRubr like '"
  loc_AC90E6: ConcatStr
  loc_AC90E7: FStStrNoPop var_98
  loc_AC90EA: FLdRfVar var_94
  loc_AC90ED: FLdPr Me
  loc_AC90F0: VCallAd Control_ID_Campo1Txt
  loc_AC90F3: FStAdFunc var_88
  loc_AC90F6: FLdPr var_88
  loc_AC90F9:  = Me.Text
  loc_AC90FE: ILdRf var_94
  loc_AC9101: ConcatStr
  loc_AC9102: FStStrNoPop var_9C
  loc_AC9105: LitStr Chr(37) & "' ORDER BY CodiRubr"
  loc_AC9108: ConcatStr
  loc_AC9109: FStStrNoPop var_A0
  loc_AC910C: FLdPr Me
  loc_AC910F: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC9112: NewIfNullPr clsbase
  loc_AC9115: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC911A: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AC9129: FFree1Ad var_88
  loc_AC912C: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D4B04
  'Data Table: 41E99C
  loc_9D4AEC: LitStr "0123456789"
  loc_9D4AEF: FStStrCopy var_88
  loc_9D4AF2: FLdRfVar var_88
  loc_9D4AF5: ILdRf KeyAscii
  loc_9D4AF8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D4AFD: IStI2 KeyAscii
  loc_9D4B00: FFree1Str var_88
  loc_9D4B03: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9D4BE8
  'Data Table: 41E99C
  loc_9D4BD0: ILdRf Me
  loc_9D4BD3: FStAdNoPop
  loc_9D4BD7: ImpAdLdRf MemVar_D9C5D8
  loc_9D4BDA: NewIfNullPr Global
  loc_9D4BDD: Global.Unload from_stack_1
  loc_9D4BE2: FFree1Ad var_88
  loc_9D4BE5: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EDDA8
  'Data Table: 41E99C
  loc_9EDD84: ILdI2 KeyCode
  loc_9EDD87: CI4UI1
  loc_9EDD88: LitI4 &HD
  loc_9EDD8D: EqI4
  loc_9EDD8E: BranchF loc_9EDDA6
  loc_9EDD91: ILdRf Me
  loc_9EDD94: FStAdNoPop
  loc_9EDD98: ImpAdLdRf MemVar_D9C5D8
  loc_9EDD9B: NewIfNullPr Global
  loc_9EDD9E: Global.Unload from_stack_1
  loc_9EDDA3: FFree1Ad var_88
  loc_9EDDA6: ExitProcHresult
End Sub

Private Sub Form_Load() 'AC59EC
  'Data Table: 41E99C
  loc_AC5900: FLdPr Me
  loc_AC5903: MemLdI2 iCodiTili
  loc_AC5906: LitI2_Byte 0
  loc_AC5908: NeI2
  loc_AC5909: BranchF loc_AC595B
  loc_AC590C: LitStr "SELECT * FROM rubro WHERE CodiRamo = "
  loc_AC590F: FLdPr Me
  loc_AC5912: MemLdI2 iCodiRamo
  loc_AC5915: CStrUI1
  loc_AC5917: FStStrNoPop var_88
  loc_AC591A: ConcatStr
  loc_AC591B: FStStrNoPop var_8C
  loc_AC591E: LitStr " AND CodiTili = "
  loc_AC5921: ConcatStr
  loc_AC5922: FStStrNoPop var_90
  loc_AC5925: FLdPr Me
  loc_AC5928: MemLdI2 iCodiTili
  loc_AC592B: CStrUI1
  loc_AC592D: FStStrNoPop var_94
  loc_AC5930: ConcatStr
  loc_AC5931: FStStrNoPop var_98
  loc_AC5934: LitStr " ORDER BY DetaRubr"
  loc_AC5937: ConcatStr
  loc_AC5938: FStStrNoPop var_9C
  loc_AC593B: FLdPr Me
  loc_AC593E: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC5941: NewIfNullPr clsbase
  loc_AC5944: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC5949: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_AC5958: Branch loc_AC598B
  loc_AC595B: LitStr "SELECT * FROM rubro WHERE CodiRamo = "
  loc_AC595E: FLdPr Me
  loc_AC5961: MemLdI2 iCodiRamo
  loc_AC5964: CStrUI1
  loc_AC5966: FStStrNoPop var_88
  loc_AC5969: ConcatStr
  loc_AC596A: FStStrNoPop var_8C
  loc_AC596D: LitStr " ORDER BY DetaRubr"
  loc_AC5970: ConcatStr
  loc_AC5971: FStStrNoPop var_90
  loc_AC5974: FLdPr Me
  loc_AC5977: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC597A: NewIfNullPr clsbase
  loc_AC597D: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC5982: FFreeStr var_88 = "": var_8C = ""
  loc_AC598B: LitI4 0
  loc_AC5990: LitI4 1
  loc_AC5995: FLdRfVar var_A0
  loc_AC5998: Redim
  loc_AC59A2: FLdPr Me
  loc_AC59A5: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC59A8: NewIfNullAd
  loc_AC59AB: FStAd var_A4 
  loc_AC59AF: FLdRfVar var_A4
  loc_AC59B2: CVarRef
  loc_AC59B7: ParmAry1St
  loc_AC59BD: FLdPr Me
  loc_AC59C0: VCallAd Control_ID_dgdABMS
  loc_AC59C3: CVarAd
  loc_AC59C7: ParmAry1St
  loc_AC59CD: FLdRfVar var_A0
  loc_AC59D0: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AC59D5: ILdRf var_A4
  loc_AC59D8: CastAd
  loc_AC59DB: FLdPr Me
  loc_AC59DE: MemStAdFunc
  loc_AC59E2: FLdRfVar var_A0
  loc_AC59E5: Erase
  loc_AC59E6: FFree1Ad var_A4
  loc_AC59E9: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D4C34
  'Data Table: 41E99C
  loc_9D4C1C: FLdPr Me
  loc_9D4C1F: VCallAd Control_ID_Campo2Txt
  loc_9D4C22: FStAdFunc var_88
  loc_9D4C25: FLdPr var_88
  loc_9D4C28: Me.SetFocus
  loc_9D4C2D: FFree1Ad var_88
  loc_9D4C30: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A12554
  'Data Table: 41E99C
  loc_A12518: ILdI2 KeyAscii
  loc_A1251B: LitI2_Byte &HD
  loc_A1251D: EqI2
  loc_A1251E: BranchF loc_A1252F
  loc_A12521: LitVar_TRUE var_A4
  loc_A12524: LitStr "{Tab}"
  loc_A12527: ImpAdCallFPR4 SendKeys , 
  loc_A1252C: FFree1Var var_A4 = ""
  loc_A1252F: ILdI2 KeyAscii
  loc_A12532: LitI2_Byte &H1B
  loc_A12534: EqI2
  loc_A12535: BranchF loc_A12552
  loc_A12538: ILdRf Me
  loc_A1253B: FStAdNoPop
  loc_A1253F: ImpAdLdRf MemVar_D9C5D8
  loc_A12542: NewIfNullPr Global
  loc_A12545: Global.Unload from_stack_1
  loc_A1254A: FFree1Ad var_A8
  loc_A1254D: LitI2_Byte 0
  loc_A1254F: IStI2 KeyAscii
  loc_A12552: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D4DB0
  'Data Table: 41E99C
  loc_9D4D98: ILdRf Me
  loc_9D4D9B: FStAdNoPop
  loc_9D4D9F: ImpAdLdRf MemVar_D9C5D8
  loc_9D4DA2: NewIfNullPr Global
  loc_9D4DA5: Global.Unload from_stack_1
  loc_9D4DAA: FFree1Ad var_88
  loc_9D4DAD: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9D4B9C
  'Data Table: 41E99C
  loc_9D4B84: ILdRf Me
  loc_9D4B87: FStAdNoPop
  loc_9D4B8B: ImpAdLdRf MemVar_D9C5D8
  loc_9D4B8E: NewIfNullPr Global
  loc_9D4B91: Global.Unload from_stack_1
  loc_9D4B96: FFree1Ad var_88
  loc_9D4B99: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'AC8690
  'Data Table: 41E99C
  loc_AC8594: LitStr vbNullString
  loc_AC8597: FLdPr Me
  loc_AC859A: VCallAd Control_ID_Campo1Txt
  loc_AC859D: FStAdFunc var_88
  loc_AC85A0: FLdPr var_88
  loc_AC85A3: Me.Text = from_stack_1
  loc_AC85A8: FFree1Ad var_88
  loc_AC85AB: FLdPr Me
  loc_AC85AE: MemLdI2 iCodiTili
  loc_AC85B1: LitI2_Byte 0
  loc_AC85B3: NeI2
  loc_AC85B4: BranchF loc_AC8631
  loc_AC85B7: LitStr "SELECT * FROM rubro WHERE CodiRamo = "
  loc_AC85BA: FLdPr Me
  loc_AC85BD: MemLdI2 iCodiRamo
  loc_AC85C0: CStrUI1
  loc_AC85C2: FStStrNoPop var_8C
  loc_AC85C5: ConcatStr
  loc_AC85C6: FStStrNoPop var_90
  loc_AC85C9: LitStr " AND CodiTili = "
  loc_AC85CC: ConcatStr
  loc_AC85CD: FStStrNoPop var_94
  loc_AC85D0: FLdPr Me
  loc_AC85D3: MemLdI2 iCodiTili
  loc_AC85D6: CStrUI1
  loc_AC85D8: FStStrNoPop var_98
  loc_AC85DB: ConcatStr
  loc_AC85DC: FStStrNoPop var_9C
  loc_AC85DF: LitStr " AND DetaRubr like '" & Chr(37)
  loc_AC85E2: ConcatStr
  loc_AC85E3: FStStrNoPop var_A4
  loc_AC85E6: FLdRfVar var_A0
  loc_AC85E9: FLdPr Me
  loc_AC85EC: VCallAd Control_ID_Campo2Txt
  loc_AC85EF: FStAdFunc var_88
  loc_AC85F2: FLdPr var_88
  loc_AC85F5:  = Me.Text
  loc_AC85FA: ILdRf var_A0
  loc_AC85FD: ConcatStr
  loc_AC85FE: FStStrNoPop var_A8
  loc_AC8601: LitStr Chr(37) & "' ORDER BY DetaRubr"
  loc_AC8604: ConcatStr
  loc_AC8605: FStStrNoPop var_AC
  loc_AC8608: FLdPr Me
  loc_AC860B: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC860E: NewIfNullPr clsbase
  loc_AC8611: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC8616: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_AC862B: FFree1Ad var_88
  loc_AC862E: Branch loc_AC868C
  loc_AC8631: LitStr "SELECT * FROM rubro WHERE CodiRamo = "
  loc_AC8634: FLdPr Me
  loc_AC8637: MemLdI2 iCodiRamo
  loc_AC863A: CStrUI1
  loc_AC863C: FStStrNoPop var_8C
  loc_AC863F: ConcatStr
  loc_AC8640: FStStrNoPop var_90
  loc_AC8643: LitStr " AND DetaRubr like '" & Chr(37)
  loc_AC8646: ConcatStr
  loc_AC8647: FStStrNoPop var_98
  loc_AC864A: FLdRfVar var_94
  loc_AC864D: FLdPr Me
  loc_AC8650: VCallAd Control_ID_Campo2Txt
  loc_AC8653: FStAdFunc var_88
  loc_AC8656: FLdPr var_88
  loc_AC8659:  = Me.Text
  loc_AC865E: ILdRf var_94
  loc_AC8661: ConcatStr
  loc_AC8662: FStStrNoPop var_9C
  loc_AC8665: LitStr Chr(37) & "' ORDER BY DetaRubr"
  loc_AC8668: ConcatStr
  loc_AC8669: FStStrNoPop var_A0
  loc_AC866C: FLdPr Me
  loc_AC866F: MemLdRfVar from_stack_1.BuscarCLS
  loc_AC8672: NewIfNullPr clsbase
  loc_AC8675: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC867A: FFreeStr var_8C = "": var_90 = "": var_98 = "": var_94 = "": var_9C = ""
  loc_AC8689: FFree1Ad var_88
  loc_AC868C: ExitProcHresult
End Sub

Public Function iCodiRamoGet() '41EF4C
  iCodiRamoGet = iCodiRamo
End Function

Public Sub iCodiRamoPut(Value) '41EF5B
  iCodiRamo = Value
End Sub

Public Function iCodiTiliGet() '41EF6A
  iCodiTiliGet = iCodiTili
End Function

Public Sub iCodiTiliPut(Value) '41EF79
  iCodiTili = Value
End Sub

Public Function global_4319644Get() '41EF88
  global_4319644Get = global_4319644
End Function

Public Sub global_4319644Put(Value) '41EFA2
  global_4319644 = Value
End Sub

Public Sub global_4319644Set(Value) '41EFBC
  global_4319644 = Value
End Sub
