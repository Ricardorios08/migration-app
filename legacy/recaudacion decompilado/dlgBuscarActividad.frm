VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarActividad
  Caption = "Buscar Actividad de Comercio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarActividad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8220
  ClientHeight = 5832
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1440
    Top = 840
    Width = 5055
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
    Left = 1440
    Top = 240
    Width = 735
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 3
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
    Top = 5160
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
    Top = 1440
    Width = 6495
    Height = 3495
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarActividad.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 600
    Top = 840
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
    Left = 600
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

Attribute VB_Name = "dlgBuscarActividad"

Public BuscarCLS As New Class


Private Sub dgdABMS_DblClick() '9CC734
  'Data Table: 4118EC
  loc_9CC71C: ILdRf Me
  loc_9CC71F: FStAdNoPop
  loc_9CC723: ImpAdLdRf MemVar_D9C5D8
  loc_9CC726: NewIfNullPr Global
  loc_9CC729: Global.Unload from_stack_1
  loc_9CC72E: FFree1Ad var_88
  loc_9CC731: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EA7B0
  'Data Table: 4118EC
  loc_9EA78C: ILdI2 KeyCode
  loc_9EA78F: CI4UI1
  loc_9EA790: LitI4 &HD
  loc_9EA795: EqI4
  loc_9EA796: BranchF loc_9EA7AE
  loc_9EA799: ILdRf Me
  loc_9EA79C: FStAdNoPop
  loc_9EA7A0: ImpAdLdRf MemVar_D9C5D8
  loc_9EA7A3: NewIfNullPr Global
  loc_9EA7A6: Global.Unload from_stack_1
  loc_9EA7AB: FFree1Ad var_88
  loc_9EA7AE: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'A6894C
  'Data Table: 4118EC
  loc_A688EC: LitStr vbNullString
  loc_A688EF: FLdPr Me
  loc_A688F2: VCallAd Control_ID_Campo2Txt
  loc_A688F5: FStAdFunc var_88
  loc_A688F8: FLdPr var_88
  loc_A688FB: Me.Text = from_stack_1
  loc_A68900: FFree1Ad var_88
  loc_A68903: LitStr "SELECT * FROM actividad "
  loc_A68906: LitStr " WHERE CodiActi >= "
  loc_A68909: ConcatStr
  loc_A6890A: FStStrNoPop var_90
  loc_A6890D: FLdRfVar var_8C
  loc_A68910: FLdPr Me
  loc_A68913: VCallAd Control_ID_Campo1Txt
  loc_A68916: FStAdFunc var_88
  loc_A68919: FLdPr var_88
  loc_A6891C:  = Me.Text
  loc_A68921: ILdRf var_8C
  loc_A68924: ConcatStr
  loc_A68925: FStStrNoPop var_94
  loc_A68928: LitStr " ORDER BY CodiActi"
  loc_A6892B: ConcatStr
  loc_A6892C: FStStrNoPop var_98
  loc_A6892F: FLdPr Me
  loc_A68932: MemLdRfVar from_stack_1.BuscarCLS
  loc_A68935: NewIfNullPr clsbase
  loc_A68938: Call clsbase.RedefineRS(from_stack_1v)
  loc_A6893D: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A68948: FFree1Ad var_88
  loc_A6894B: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CC650
  'Data Table: 4118EC
  loc_9CC638: LitStr "0123456789"
  loc_9CC63B: FStStrCopy var_88
  loc_9CC63E: FLdRfVar var_88
  loc_9CC641: ILdRf KeyAscii
  loc_9CC644: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CC649: IStI2 KeyAscii
  loc_9CC64C: FFree1Str var_88
  loc_9CC64F: ExitProcHresult
End Sub

Private Sub Form_Load() 'A77478
  'Data Table: 4118EC
  loc_A77408: LitStr "SELECT * FROM actividad"
  loc_A7740B: FLdPr Me
  loc_A7740E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A77411: NewIfNullPr clsbase
  loc_A77414: Call clsbase.RedefineRS(from_stack_1v)
  loc_A77419: LitI4 0
  loc_A7741E: LitI4 1
  loc_A77423: FLdRfVar var_88
  loc_A77426: Redim
  loc_A77430: FLdPr Me
  loc_A77433: MemLdRfVar from_stack_1.BuscarCLS
  loc_A77436: NewIfNullAd
  loc_A77439: FStAd var_8C 
  loc_A7743D: FLdRfVar var_8C
  loc_A77440: CVarRef
  loc_A77445: ParmAry1St
  loc_A7744B: FLdPr Me
  loc_A7744E: VCallAd Control_ID_dgdABMS
  loc_A77451: CVarAd
  loc_A77455: ParmAry1St
  loc_A7745B: FLdRfVar var_88
  loc_A7745E: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A77463: ILdRf var_8C
  loc_A77466: CastAd
  loc_A77469: FLdPr Me
  loc_A7746C: MemStAdFunc
  loc_A77470: FLdRfVar var_88
  loc_A77473: Erase
  loc_A77474: FFree1Ad var_8C
  loc_A77477: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CC864
  'Data Table: 4118EC
  loc_9CC84C: FLdPr Me
  loc_9CC84F: VCallAd Control_ID_Campo2Txt
  loc_9CC852: FStAdFunc var_88
  loc_9CC855: FLdPr var_88
  loc_9CC858: Me.SetFocus
  loc_9CC85D: FFree1Ad var_88
  loc_9CC860: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10270
  'Data Table: 4118EC
  loc_A10234: ILdI2 KeyAscii
  loc_A10237: LitI2_Byte &HD
  loc_A10239: EqI2
  loc_A1023A: BranchF loc_A1024B
  loc_A1023D: LitVar_TRUE var_A4
  loc_A10240: LitStr "{Tab}"
  loc_A10243: ImpAdCallFPR4 SendKeys , 
  loc_A10248: FFree1Var var_A4 = ""
  loc_A1024B: ILdI2 KeyAscii
  loc_A1024E: LitI2_Byte &H1B
  loc_A10250: EqI2
  loc_A10251: BranchF loc_A1026E
  loc_A10254: ILdRf Me
  loc_A10257: FStAdNoPop
  loc_A1025B: ImpAdLdRf MemVar_D9C5D8
  loc_A1025E: NewIfNullPr Global
  loc_A10261: Global.Unload from_stack_1
  loc_A10266: FFree1Ad var_A8
  loc_A10269: LitI2_Byte 0
  loc_A1026B: IStI2 KeyAscii
  loc_A1026E: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CC9E0
  'Data Table: 4118EC
  loc_9CC9C8: ILdRf Me
  loc_9CC9CB: FStAdNoPop
  loc_9CC9CF: ImpAdLdRf MemVar_D9C5D8
  loc_9CC9D2: NewIfNullPr Global
  loc_9CC9D5: Global.Unload from_stack_1
  loc_9CC9DA: FFree1Ad var_88
  loc_9CC9DD: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5205C
  'Data Table: 4118EC
  loc_A52010: LitStr "SELECT * FROM actividad "
  loc_A52013: LitStr " WHERE DetaActi like '"
  loc_A52016: ConcatStr
  loc_A52017: FStStrNoPop var_90
  loc_A5201A: FLdRfVar var_8C
  loc_A5201D: FLdPr Me
  loc_A52020: VCallAd Control_ID_Campo2Txt
  loc_A52023: FStAdFunc var_88
  loc_A52026: FLdPr var_88
  loc_A52029:  = Me.Text
  loc_A5202E: ILdRf var_8C
  loc_A52031: ConcatStr
  loc_A52032: FStStrNoPop var_94
  loc_A52035: LitStr Chr(37) & "' ORDER BY DetaActi"
  loc_A52038: ConcatStr
  loc_A52039: FStStrNoPop var_98
  loc_A5203C: FLdPr Me
  loc_A5203F: MemLdRfVar from_stack_1.BuscarCLS
  loc_A52042: NewIfNullPr clsbase
  loc_A52045: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5204A: FFreeStr var_90 = "": var_8C = "": var_94 = ""
  loc_A52055: FFree1Ad var_88
  loc_A52058: ExitProcHresult
End Sub

Public Function global_4266220Get() '411DFC
  global_4266220Get = global_4266220
End Function

Public Sub global_4266220Put(Value) '411E16
  global_4266220 = Value
End Sub

Public Sub global_4266220Set(Value) '411E30
  global_4266220 = Value
End Sub
