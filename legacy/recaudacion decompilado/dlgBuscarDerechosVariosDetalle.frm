VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarDerechosVariosDetalle
  Caption = "Buscar Derechos Varios del Contribuyente: "
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarDerechosVariosDetalle.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12912
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
    Width = 12615
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarDerechosVariosDetalle.frx":08CA
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

Attribute VB_Name = "dlgBuscarDerechosVariosDetalle"

Public DevaDetaCLS As New Class
Public sCucuPers As String


Private Sub dgdABMS_DblClick() '9CD574
  'Data Table: 414DC4
  loc_9CD55C: ILdRf Me
  loc_9CD55F: FStAdNoPop
  loc_9CD563: ImpAdLdRf MemVar_D9C5D8
  loc_9CD566: NewIfNullPr Global
  loc_9CD569: Global.Unload from_stack_1
  loc_9CD56E: FFree1Ad var_88
  loc_9CD571: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EE7A0
  'Data Table: 414DC4
  loc_9EE77C: ILdI2 KeyCode
  loc_9EE77F: CI4UI1
  loc_9EE780: LitI4 &HD
  loc_9EE785: EqI4
  loc_9EE786: BranchF loc_9EE79E
  loc_9EE789: ILdRf Me
  loc_9EE78C: FStAdNoPop
  loc_9EE790: ImpAdLdRf MemVar_D9C5D8
  loc_9EE793: NewIfNullPr Global
  loc_9EE796: Global.Unload from_stack_1
  loc_9EE79B: FFree1Ad var_88
  loc_9EE79E: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() '9CD658
  'Data Table: 414DC4
  loc_9CD640: LitStr vbNullString
  loc_9CD643: FLdPr Me
  loc_9CD646: VCallAd Control_ID_Campo2Txt
  loc_9CD649: FStAdFunc var_88
  loc_9CD64C: FLdPr var_88
  loc_9CD64F: Me.Text = from_stack_1
  loc_9CD654: FFree1Ad var_88
  loc_9CD657: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CD60C
  'Data Table: 414DC4
  loc_9CD5F4: LitStr "0123456789"
  loc_9CD5F7: FStStrCopy var_88
  loc_9CD5FA: FLdRfVar var_88
  loc_9CD5FD: ILdRf KeyAscii
  loc_9CD600: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CD605: IStI2 KeyAscii
  loc_9CD608: FFree1Str var_88
  loc_9CD60B: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB4634
  'Data Table: 414DC4
  loc_AB4568: FLdRfVar var_88
  loc_AB456B: FLdPr Me
  loc_AB456E:  = Me.Caption
  loc_AB4573: ILdRf var_88
  loc_AB4576: FLdPr Me
  loc_AB4579: MemLdStr sCucuPers
  loc_AB457C: ConcatStr
  loc_AB457D: FStStrNoPop var_8C
  loc_AB4580: FLdPr Me
  loc_AB4583: Me.Caption = from_stack_1
  loc_AB4588: FFreeStr var_88 = ""
  loc_AB458F: LitStr "SELECT FealBole, devadeta.PeriBole, devadeta.NumeBole, devadeta.CodiSede, DetaSede, CantDede, PrunDede, SubtDede, DescDede, TotaDede, servdeva.PeriInfo, servdeva.CodiConc, servdeva.VariSede FROM devadeta "
  loc_AB4592: LitStr " LEFT JOIN boleto ON boleto.PeriBole = devadeta.PeriBole and boleto.NumeBole = devadeta.NumeBole"
  loc_AB4595: ConcatStr
  loc_AB4596: FStStrNoPop var_88
  loc_AB4599: LitStr " LEFT JOIN servdeva ON servdeva.PeriOrde = devadeta.PeriOrde and servdeva.CodiSede = devadeta.CodiSede "
  loc_AB459C: ConcatStr
  loc_AB459D: FStStrNoPop var_8C
  loc_AB45A0: LitStr " WHERE CucuPers  = "
  loc_AB45A3: ConcatStr
  loc_AB45A4: FStStrNoPop var_90
  loc_AB45A7: FLdPr Me
  loc_AB45AA: MemLdStr sCucuPers
  loc_AB45AD: ConcatStr
  loc_AB45AE: FStStrNoPop var_94
  loc_AB45B1: LitStr " ORDER BY FealBole"
  loc_AB45B4: ConcatStr
  loc_AB45B5: FStStrNoPop var_98
  loc_AB45B8: FLdPr Me
  loc_AB45BB: MemLdRfVar from_stack_1.DevaDetaCLS
  loc_AB45BE: NewIfNullPr clsdevadeta
  loc_AB45C1: Call clsdevadeta.RedefineRS(from_stack_1v)
  loc_AB45C6: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = ""
  loc_AB45D3: LitI4 0
  loc_AB45D8: LitI4 1
  loc_AB45DD: FLdRfVar var_9C
  loc_AB45E0: Redim
  loc_AB45EA: FLdPr Me
  loc_AB45ED: MemLdRfVar from_stack_1.DevaDetaCLS
  loc_AB45F0: NewIfNullAd
  loc_AB45F3: FStAd var_A0 
  loc_AB45F7: FLdRfVar var_A0
  loc_AB45FA: CVarRef
  loc_AB45FF: ParmAry1St
  loc_AB4605: FLdPr Me
  loc_AB4608: VCallAd Control_ID_dgdABMS
  loc_AB460B: CVarAd
  loc_AB460F: ParmAry1St
  loc_AB4615: FLdRfVar var_9C
  loc_AB4618: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB461D: ILdRf var_A0
  loc_AB4620: CastAd
  loc_AB4623: FLdPr Me
  loc_AB4626: MemStAdFunc
  loc_AB462A: FLdRfVar var_9C
  loc_AB462D: Erase
  loc_AB462E: FFree1Ad var_A0
  loc_AB4631: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CD4DC
  'Data Table: 414DC4
  loc_9CD4C4: FLdPr Me
  loc_9CD4C7: VCallAd Control_ID_Campo2Txt
  loc_9CD4CA: FStAdFunc var_88
  loc_9CD4CD: FLdPr var_88
  loc_9CD4D0: Me.SetFocus
  loc_9CD4D5: FFree1Ad var_88
  loc_9CD4D8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A1246C
  'Data Table: 414DC4
  loc_A12430: ILdI2 KeyAscii
  loc_A12433: LitI2_Byte &HD
  loc_A12435: EqI2
  loc_A12436: BranchF loc_A12447
  loc_A12439: LitVar_TRUE var_A4
  loc_A1243C: LitStr "{Tab}"
  loc_A1243F: ImpAdCallFPR4 SendKeys , 
  loc_A12444: FFree1Var var_A4 = ""
  loc_A12447: ILdI2 KeyAscii
  loc_A1244A: LitI2_Byte &H1B
  loc_A1244C: EqI2
  loc_A1244D: BranchF loc_A1246A
  loc_A12450: ILdRf Me
  loc_A12453: FStAdNoPop
  loc_A12457: ImpAdLdRf MemVar_D9C5D8
  loc_A1245A: NewIfNullPr Global
  loc_A1245D: Global.Unload from_stack_1
  loc_A12462: FFree1Ad var_A8
  loc_A12465: LitI2_Byte 0
  loc_A12467: IStI2 KeyAscii
  loc_A1246A: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CD3F8
  'Data Table: 414DC4
  loc_9CD3E0: ILdRf Me
  loc_9CD3E3: FStAdNoPop
  loc_9CD3E7: ImpAdLdRf MemVar_D9C5D8
  loc_9CD3EA: NewIfNullPr Global
  loc_9CD3ED: Global.Unload from_stack_1
  loc_9CD3F2: FFree1Ad var_88
  loc_9CD3F5: ExitProcHresult
  loc_9CD3F6: Ary1StI2
End Sub

Private Sub Campo2Txt_Change() '9CD5C0
  'Data Table: 414DC4
  loc_9CD5A8: LitStr vbNullString
  loc_9CD5AB: FLdPr Me
  loc_9CD5AE: VCallAd Control_ID_Campo1Txt
  loc_9CD5B1: FStAdFunc var_88
  loc_9CD5B4: FLdPr var_88
  loc_9CD5B7: Me.Text = from_stack_1
  loc_9CD5BC: FFree1Ad var_88
  loc_9CD5BF: ExitProcHresult
End Sub

Public Function global_4279748Get() '4152DC
  global_4279748Get = global_4279748
End Function

Public Sub global_4279748Put(Value) '4152F6
  global_4279748 = Value
End Sub

Public Sub global_4279748Set(Value) '415310
  global_4279748 = Value
End Sub

Public Function sCucuPersGet() '41532A
  sCucuPersGet = sCucuPers
End Function

Public Sub sCucuPersPut(Value) '415339
  sCucuPers = Value
End Sub
