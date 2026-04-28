VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmAnulacionBoletosdeRentas
  Caption = "Anulación de Boletos por Rentas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15264
  ClientHeight = 10380
  Begin VB.CommandButton cmdSalir
    Left = 14400
    Top = 240
    Width = 735
    Height = 615
    TabIndex = 4
    Picture = "frmAnulacionBoletosdeRentas.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 720
    Width = 14175
    Height = 1005
    TabIndex = 3
    Begin VB.CommandButton FeenAcpaCmd
      Left = 3720
      Top = 480
      Width = 450
      Height = 345
      TabIndex = 1
      Picture = "frmAnulacionBoletosdeRentas.frx":0252
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton ConfirmarCmd
      Left = 4440
      Top = 480
      Width = 450
      Height = 345
      TabIndex = 2
      Picture = "frmAnulacionBoletosdeRentas.frx":0794
      Style = 1
    End
    Begin MSMask.MaskEdBox FeenAcpaMsk
      Left = 2280
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 0
      OleObjectBlob = "frmAnulacionBoletosdeRentas.frx":0876
    End
    Begin VB.Label DetaEnreLbl
      Left = 7920
      Top = 480
      Width = 6015
      Height = 345
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
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
      Caption = "Ente Recaudador:"
      Left = 5880
      Top = 480
      Width = 1950
      Height = 300
      TabIndex = 10
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
    Begin VB.Label Label7
      Caption = "  Grupo de Boletos"
      BackColor = &H808080&
      ForeColor = &HFFFFFF&
      Left = 0
      Top = 0
      Width = 14175
      Height = 255
      TabIndex = 6
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
    Begin VB.Label Label1
      Caption = "Fecha de Envio:"
      Left = 360
      Top = 480
      Width = 1710
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 2400
    Width = 15135
    Height = 7575
    TabIndex = 8
    OleObjectBlob = "frmAnulacionBoletosdeRentas.frx":0926
  End
  Begin VB.Label Label2
    Caption = "Para anular un boleto. Primero lo debe seleccionar y despues presionar la tecla ""Eliminar"""
    Left = 240
    Top = 10080
    Width = 8175
    Height = 255
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label11
    Caption = "Detalle de los boletos cobrados"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 105
    Top = 2040
    Width = 15105
    Height = 300
    TabIndex = 7
    Alignment = 2 'Center
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

Attribute VB_Name = "frmAnulacionBoletosdeRentas"


Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) 'B0A830
  'Data Table: 43CDBC
  loc_B0A644: ILdI2 KeyCode
  loc_B0A647: CI4UI1
  loc_B0A648: LitI4 &H2E
  loc_B0A64D: EqI4
  loc_B0A64E: BranchF loc_B0A82F
  loc_B0A651: FLdRfVar var_88
  loc_B0A654: FLdPr Me
  loc_B0A657: MemLdRfVar from_stack_1.global_64
  loc_B0A65A: NewIfNullPr clsboleto
  loc_B0A65D: from_stack_1 = clsboleto.RecordCount
  loc_B0A662: ILdRf var_88
  loc_B0A665: LitI4 0
  loc_B0A66A: GtI4
  loc_B0A66B: BranchF loc_B0A82F
  loc_B0A66E: LitVar_Missing var_108
  loc_B0A671: LitVar_Missing var_E8
  loc_B0A674: LitVarStr var_B8, "InfoGov"
  loc_B0A679: FStVarCopyObj var_C8
  loc_B0A67C: FLdRfVar var_C8
  loc_B0A67F: LitI4 &H144
  loc_B0A684: LitVarStr var_98, "¿Desea anular el boleto?"
  loc_B0A689: FStVarCopyObj var_A8
  loc_B0A68C: FLdRfVar var_A8
  loc_B0A68F: ImpAdCallI2 MsgBox(, , , , )
  loc_B0A694: LitI4 6
  loc_B0A699: EqI4
  loc_B0A69A: FFreeVar var_A8 = "": var_C8 = "": var_E8 = ""
  loc_B0A6A5: BranchF loc_B0A82F
  loc_B0A6A8: FLdRfVar var_88
  loc_B0A6AB: FLdPr Me
  loc_B0A6AE: MemLdRfVar from_stack_1.global_64
  loc_B0A6B1: NewIfNullPr clsboleto
  loc_B0A6B4: from_stack_1 = clsboleto.RecordCount
  loc_B0A6B9: ILdRf var_88
  loc_B0A6BC: LitI4 0
  loc_B0A6C1: GtI4
  loc_B0A6C2: BranchF loc_B0A71E
  loc_B0A6C5: FLdRfVar var_10A
  loc_B0A6C8: FLdPr Me
  loc_B0A6CB: MemLdRfVar from_stack_1.global_64
  loc_B0A6CE: NewIfNullPr clsboleto
  loc_B0A6D1: from_stack_1 = clsboleto.PeriBole
  loc_B0A6D6: FLdRfVar var_88
  loc_B0A6D9: FLdPr Me
  loc_B0A6DC: MemLdRfVar from_stack_1.global_64
  loc_B0A6DF: NewIfNullPr clsboleto
  loc_B0A6E2: from_stack_1 = clsboleto.NumeBole
  loc_B0A6E7: FLdPr Me
  loc_B0A6EA: VCallAd Control_ID_FeenAcpaMsk
  loc_B0A6ED: FStAdFunc var_110
  loc_B0A6F0: FLdPr var_110
  loc_B0A6F3: LateIdLdVar var_A8 DispID_15 0
  loc_B0A6FA: CStrVarTmp
  loc_B0A6FB: FStStrNoPop var_114
  loc_B0A6FE: LitStr "Anulado Rentas"
  loc_B0A701: ILdRf var_88
  loc_B0A704: FLdI2 var_10A
  loc_B0A707: FLdPr Me
  loc_B0A70A: MemLdRfVar from_stack_1.global_64
  loc_B0A70D: NewIfNullPr clsboleto
  loc_B0A710: Call clsboleto.ModificaEstadoBoleto(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_B0A715: FFree1Str var_114
  loc_B0A718: FFree1Ad var_110
  loc_B0A71B: FFree1Var var_A8 = ""
  loc_B0A71E: FLdPr Me
  loc_B0A721: VCallAd Control_ID_FeenAcpaMsk
  loc_B0A724: FStAdFunc var_110
  loc_B0A727: FLdPr var_110
  loc_B0A72A: LateIdLdVar var_A8 DispID_15 0
  loc_B0A731: PopAd
  loc_B0A733: LitStr "SELECT PeriBole, NumeBole, CodiOfic, CuenCtct, infogov.persona.DetaPers, tipobole, EstaBole,"
  loc_B0A736: LitStr " CapiBole, DecaBole, RecaBole, DereBole, InteBole, ApreBole, TotaBole, boleto.CodiUsua FROM boleto "
  loc_B0A739: ConcatStr
  loc_B0A73A: FStStrNoPop var_114
  loc_B0A73D: LitStr " LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers"
  loc_B0A740: ConcatStr
  loc_B0A741: FStStrNoPop var_118
  loc_B0A744: LitStr " WHERE FealBole = '"
  loc_B0A747: ConcatStr
  loc_B0A748: FStStrNoPop var_11C
  loc_B0A74B: LitI4 1
  loc_B0A750: LitI4 1
  loc_B0A755: LitVarStr var_98, "yyyy-mm-dd"
  loc_B0A75A: FStVarCopyObj var_E8
  loc_B0A75D: FLdRfVar var_E8
  loc_B0A760: FLdRfVar var_A8
  loc_B0A763: CStrVarTmp
  loc_B0A764: CVarStr var_C8
  loc_B0A767: ImpAdCallI2 Format$(, )
  loc_B0A76C: FStStrNoPop var_120
  loc_B0A76F: ConcatStr
  loc_B0A770: FStStrNoPop var_124
  loc_B0A773: LitStr "'"
  loc_B0A776: ConcatStr
  loc_B0A777: FStStrNoPop var_128
  loc_B0A77A: LitStr " AND CodiEnre = "
  loc_B0A77D: ConcatStr
  loc_B0A77E: FStStrNoPop var_12C
  loc_B0A781: FLdPr Me
  loc_B0A784: MemLdI2 global_148
  loc_B0A787: CStrUI1
  loc_B0A789: FStStrNoPop var_130
  loc_B0A78C: ConcatStr
  loc_B0A78D: FStStrNoPop var_134
  loc_B0A790: LitStr " AND EstaBole = 'Emitido'"
  loc_B0A793: ConcatStr
  loc_B0A794: FStStrNoPop var_138
  loc_B0A797: LitStr " ORDER BY PeriBole, NumeBole"
  loc_B0A79A: ConcatStr
  loc_B0A79B: FStStrNoPop var_13C
  loc_B0A79E: FLdPr Me
  loc_B0A7A1: MemLdRfVar from_stack_1.global_64
  loc_B0A7A4: NewIfNullPr clsboleto
  loc_B0A7A7: Call clsboleto.RedefineRS(from_stack_1v)
  loc_B0A7AC: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_B0A7C5: FFree1Ad var_110
  loc_B0A7C8: FFreeVar var_A8 = "": var_C8 = ""
  loc_B0A7D1: LitI4 0
  loc_B0A7D6: LitI4 1
  loc_B0A7DB: FLdRfVar var_140
  loc_B0A7DE: Redim
  loc_B0A7E8: FLdPr Me
  loc_B0A7EB: MemLdRfVar from_stack_1.global_64
  loc_B0A7EE: NewIfNullAd
  loc_B0A7F1: FStAd var_110 
  loc_B0A7F5: FLdRfVar var_110
  loc_B0A7F8: CVarRef
  loc_B0A7FD: ParmAry1St
  loc_B0A803: FLdPr Me
  loc_B0A806: VCallAd Control_ID_dgdABMS
  loc_B0A809: CVarAd
  loc_B0A80D: ParmAry1St
  loc_B0A813: FLdRfVar var_140
  loc_B0A816: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B0A81B: ILdRf var_110
  loc_B0A81E: CastAd
  loc_B0A821: FLdPr Me
  loc_B0A824: MemStAdFunc
  loc_B0A828: FLdRfVar var_140
  loc_B0A82B: Erase
  loc_B0A82C: FFree1Ad var_110
  loc_B0A82F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'A5A0D0
  'Data Table: 43CDBC
  loc_A5A068: FLdRfVar var_88
  loc_A5A06B: FLdPr Me
  loc_A5A06E: MemLdRfVar from_stack_1.global_64
  loc_A5A071: NewIfNullPr clsboleto
  loc_A5A074: from_stack_1 = clsboleto.RecordCount
  loc_A5A079: ILdRf var_88
  loc_A5A07C: LitI4 0
  loc_A5A081: GtI4
  loc_A5A082: BranchF loc_A5A0CF
  loc_A5A085: FLdRfVar var_8A
  loc_A5A088: FLdPr Me
  loc_A5A08B: MemLdRfVar from_stack_1.global_64
  loc_A5A08E: NewIfNullPr clsboleto
  loc_A5A091: from_stack_1 = clsboleto.BOF
  loc_A5A096: FLdI2 var_8A
  loc_A5A099: BranchF loc_A5A0AA
  loc_A5A09C: FLdPr Me
  loc_A5A09F: MemLdRfVar from_stack_1.global_64
  loc_A5A0A2: NewIfNullPr clsboleto
  loc_A5A0A5: Call clsboleto.MoveFirst()
  loc_A5A0AA: FLdRfVar var_8A
  loc_A5A0AD: FLdPr Me
  loc_A5A0B0: MemLdRfVar from_stack_1.global_64
  loc_A5A0B3: NewIfNullPr clsboleto
  loc_A5A0B6: from_stack_1 = clsboleto.EOF
  loc_A5A0BB: FLdI2 var_8A
  loc_A5A0BE: BranchF loc_A5A0CF
  loc_A5A0C1: FLdPr Me
  loc_A5A0C4: MemLdRfVar from_stack_1.global_64
  loc_A5A0C7: NewIfNullPr clsboleto
  loc_A5A0CA: Call clsboleto.MoveLast()
  loc_A5A0CF: ExitProcHresult
End Sub

Private Sub FeenAcpaCmd_Click() 'A4DA3C
  'Data Table: 43CDBC
  loc_A4D9E8: LitVar_Missing var_A4
  loc_A4D9EB: PopAdLdVar
  loc_A4D9EC: LitVarI4
  loc_A4D9F4: PopAdLdVar
  loc_A4D9F5: ImpAdLdRf MemVar_D930A4
  loc_A4D9F8: NewIfNullPr frmCalendario
  loc_A4D9FB: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4DA00: ImpAdLdI4 MemVar_D93028
  loc_A4DA03: LitStr vbNullString
  loc_A4DA06: NeStr
  loc_A4DA08: BranchF loc_A4DA26
  loc_A4DA0B: ImpAdLdRf MemVar_D93028
  loc_A4DA0E: CDargRef
  loc_A4DA12: FLdPr Me
  loc_A4DA15: VCallAd Control_ID_FeenAcpaMsk
  loc_A4DA18: FStAdFunc var_A8
  loc_A4DA1B: FLdPr var_A8
  loc_A4DA1E: LateIdSt
  loc_A4DA23: FFree1Ad var_A8
  loc_A4DA26: FLdPr Me
  loc_A4DA29: VCallAd Control_ID_FeenAcpaMsk
  loc_A4DA2C: CVarAd
  loc_A4DA30: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4DA35: FFree1Var var_B8 = ""
  loc_A4DA38: ExitProcHresult
  loc_A4DA39: ImpAdLdRf MemVar_0
End Sub

Private Sub Form_Load() 'AA53A0
  'Data Table: 43CDBC
  loc_AA52EC: LitI2_Byte 0
  loc_AA52EE: CR8I2
  loc_AA52EF: PopFPR4
  loc_AA52F0: FLdPr Me
  loc_AA52F3: Me.Left = from_stack_1s
  loc_AA52F8: LitI2_Byte 0
  loc_AA52FA: CR8I2
  loc_AA52FB: PopFPR4
  loc_AA52FC: FLdPr Me
  loc_AA52FF: Me.Top = from_stack_1s
  loc_AA5304: ILdRf Me
  loc_AA5307: CastAd
  loc_AA530A: FStAdFunc var_88
  loc_AA530D: FLdRfVar var_88
  loc_AA5310: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AA5315: FFree1Ad var_88
  loc_AA5318: LitI4 0
  loc_AA531D: LitI4 3
  loc_AA5322: FLdRfVar var_8C
  loc_AA5325: Redim
  loc_AA532F: FLdPr Me
  loc_AA5332: VCallAd Control_ID_FeenAcpaMsk
  loc_AA5335: CVarAd
  loc_AA5339: ParmAry1St
  loc_AA533F: FLdPr Me
  loc_AA5342: VCallAd Control_ID_FeenAcpaCmd
  loc_AA5345: CVarAd
  loc_AA5349: ParmAry1St
  loc_AA534F: FLdPr Me
  loc_AA5352: VCallAd Control_ID_ConfirmarCmd
  loc_AA5355: CVarAd
  loc_AA5359: ParmAry1St
  loc_AA535F: FLdPr Me
  loc_AA5362: VCallAd Control_ID_cmdSalir
  loc_AA5365: CVarAd
  loc_AA5369: ParmAry1St
  loc_AA536F: FLdRfVar var_8C
  loc_AA5372: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AA5377: FLdRfVar var_8C
  loc_AA537A: Erase
  loc_AA537B: LitI2_Byte 0
  loc_AA537D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AA5382: CStrDate
  loc_AA5384: CVarStr var_9C
  loc_AA5387: PopAdLdVar
  loc_AA5388: FLdPr Me
  loc_AA538B: VCallAd Control_ID_FeenAcpaMsk
  loc_AA538E: FStAdFunc var_88
  loc_AA5391: FLdPr var_88
  loc_AA5394: LateIdSt
  loc_AA5399: FFree1Ad var_88
  loc_AA539C: FFree1Var var_9C = ""
  loc_AA539F: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BAFEC
  'Data Table: 43CDBC
  loc_9BAFD8: ILdI2 KeyCode
  loc_9BAFDB: CI4UI1
  loc_9BAFDC: LitI4 &H78
  loc_9BAFE1: EqI4
  loc_9BAFE2: BranchF loc_9BAFEA
  loc_9BAFE5: Call cmdSalir_Click()
  loc_9BAFEA: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'B01D7C
  'Data Table: 43CDBC
  loc_B01BC0: LitStr vbNullString
  loc_B01BC3: FLdPr Me
  loc_B01BC6: MemStStrCopy
  loc_B01BCA: ImpAdLdI4 MemVar_D9302C
  loc_B01BCD: ImpAdCallI2 Proc_270_90_A7E070()
  loc_B01BD2: FLdPr Me
  loc_B01BD5: MemStI2 global_148
  loc_B01BD8: FLdPr Me
  loc_B01BDB: MemLdI2 global_148
  loc_B01BDE: LitI2_Byte 0
  loc_B01BE0: EqI2
  loc_B01BE1: BranchF loc_B01BED
  loc_B01BE4: LitStr "El usuario no tiene ningún ente recaudador asociado"
  loc_B01BE7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B01BEC: ExitProcHresult
  loc_B01BED: FLdPr Me
  loc_B01BF0: MemLdI2 global_148
  loc_B01BF3: CStrUI1
  loc_B01BF5: FStStrNoPop var_88
  loc_B01BF8: ImpAdCallI2 Proc_18_39_A5661C()
  loc_B01BFD: FStStrNoPop var_8C
  loc_B01C00: FLdPr Me
  loc_B01C03: MemStStrCopy
  loc_B01C07: FFreeStr var_88 = ""
  loc_B01C0E: FLdPr Me
  loc_B01C11: MemLdStr global_92
  loc_B01C14: LitStr vbNullString
  loc_B01C17: NeStr
  loc_B01C19: BranchF loc_B01C28
  loc_B01C1C: FLdPr Me
  loc_B01C1F: MemLdStr global_92
  loc_B01C22: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B01C27: ExitProcHresult
  loc_B01C28: FLdPr Me
  loc_B01C2B: MemLdI2 global_148
  loc_B01C2E: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_B01C33: FStStrNoPop var_88
  loc_B01C36: FLdPr Me
  loc_B01C39: VCallAd Control_ID_DetaEnreLbl
  loc_B01C3C: FStAdFunc var_90
  loc_B01C3F: FLdPr var_90
  loc_B01C42: Me.Caption = from_stack_1
  loc_B01C47: FFree1Str var_88
  loc_B01C4A: FFree1Ad var_90
  loc_B01C4D: LitVarStr var_A0, "##/##/####"
  loc_B01C52: PopAdLdVar
  loc_B01C53: FLdPr Me
  loc_B01C56: VCallAd Control_ID_FeenAcpaMsk
  loc_B01C59: FStAdFunc var_90
  loc_B01C5C: FLdPr var_90
  loc_B01C5F: LateIdSt
  loc_B01C64: FFree1Ad var_90
  loc_B01C67: FLdPr Me
  loc_B01C6A: VCallAd Control_ID_FeenAcpaMsk
  loc_B01C6D: FStAdFunc var_90
  loc_B01C70: FLdPr var_90
  loc_B01C73: LateIdLdVar var_C0 DispID_15 0
  loc_B01C7A: PopAd
  loc_B01C7C: LitStr "SELECT PeriBole, NumeBole, CodiOfic, CuenCtct, infogov.persona.DetaPers, tipobole, EstaBole,"
  loc_B01C7F: LitStr " CapiBole, DecaBole, RecaBole, DereBole, InteBole, ApreBole, TotaBole, boleto.CodiUsua FROM boleto "
  loc_B01C82: ConcatStr
  loc_B01C83: FStStrNoPop var_88
  loc_B01C86: LitStr " LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers"
  loc_B01C89: ConcatStr
  loc_B01C8A: FStStrNoPop var_8C
  loc_B01C8D: LitStr " WHERE FealBole = '"
  loc_B01C90: ConcatStr
  loc_B01C91: FStStrNoPop var_E4
  loc_B01C94: LitI4 1
  loc_B01C99: LitI4 1
  loc_B01C9E: LitVarStr var_A0, "yyyy-mm-dd"
  loc_B01CA3: FStVarCopyObj var_E0
  loc_B01CA6: FLdRfVar var_E0
  loc_B01CA9: FLdRfVar var_C0
  loc_B01CAC: CStrVarTmp
  loc_B01CAD: CVarStr var_D0
  loc_B01CB0: ImpAdCallI2 Format$(, )
  loc_B01CB5: FStStrNoPop var_E8
  loc_B01CB8: ConcatStr
  loc_B01CB9: FStStrNoPop var_EC
  loc_B01CBC: LitStr "'"
  loc_B01CBF: ConcatStr
  loc_B01CC0: FStStrNoPop var_F0
  loc_B01CC3: LitStr " AND CodiEnre = "
  loc_B01CC6: ConcatStr
  loc_B01CC7: FStStrNoPop var_F4
  loc_B01CCA: FLdPr Me
  loc_B01CCD: MemLdI2 global_148
  loc_B01CD0: CStrUI1
  loc_B01CD2: FStStrNoPop var_F8
  loc_B01CD5: ConcatStr
  loc_B01CD6: FStStrNoPop var_FC
  loc_B01CD9: LitStr " AND EstaBole = 'Emitido'"
  loc_B01CDC: ConcatStr
  loc_B01CDD: FStStrNoPop var_100
  loc_B01CE0: LitStr " ORDER BY PeriBole, NumeBole"
  loc_B01CE3: ConcatStr
  loc_B01CE4: FStStrNoPop var_104
  loc_B01CE7: FLdPr Me
  loc_B01CEA: MemLdRfVar from_stack_1.global_64
  loc_B01CED: NewIfNullPr clsboleto
  loc_B01CF0: Call clsboleto.RedefineRS(from_stack_1v)
  loc_B01CF5: FFreeStr var_88 = "": var_8C = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B01D0E: FFree1Ad var_90
  loc_B01D11: FFreeVar var_C0 = "": var_D0 = ""
  loc_B01D1A: LitI4 0
  loc_B01D1F: LitI4 1
  loc_B01D24: FLdRfVar var_108
  loc_B01D27: Redim
  loc_B01D31: FLdPr Me
  loc_B01D34: MemLdRfVar from_stack_1.global_64
  loc_B01D37: NewIfNullAd
  loc_B01D3A: FStAd var_90 
  loc_B01D3E: FLdRfVar var_90
  loc_B01D41: CVarRef
  loc_B01D46: ParmAry1St
  loc_B01D4C: FLdPr Me
  loc_B01D4F: VCallAd Control_ID_dgdABMS
  loc_B01D52: CVarAd
  loc_B01D56: ParmAry1St
  loc_B01D5C: FLdRfVar var_108
  loc_B01D5F: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B01D64: ILdRf var_90
  loc_B01D67: CastAd
  loc_B01D6A: FLdPr Me
  loc_B01D6D: MemStAdFunc
  loc_B01D71: FLdRfVar var_108
  loc_B01D74: Erase
  loc_B01D75: FFree1Ad var_90
  loc_B01D78: ExitProcHresult
  loc_B01D79: FLdPr arg_5800
End Sub

Private Sub cmdSalir_Click() '9C87F8
  'Data Table: 43CDBC
  loc_9C87E0: ILdRf Me
  loc_9C87E3: FStAdNoPop
  loc_9C87E7: ImpAdLdRf MemVar_D9C5D8
  loc_9C87EA: NewIfNullPr Global
  loc_9C87ED: Global.Unload from_stack_1
  loc_9C87F2: FFree1Ad var_88
  loc_9C87F5: ExitProcHresult
  loc_9C87F6: LitI2FP 17576
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_0 '9C5ED0
  'Data Table: 43CDBC
  loc_9C5EBC: FLdPr Me
  loc_9C5EBF: VCallAd Control_ID_FeenAcpaMsk
  loc_9C5EC2: CVarAd
  loc_9C5EC6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C5ECB: FFree1Var var_94 = ""
  loc_9C5ECE: ExitProcHresult
End Sub

Private Function FeenAcpaMsk_UnknownEvent_8(arg_C) 'AC3030
  'Data Table: 43CDBC
  loc_AC2F2C: FLdPr Me
  loc_AC2F2F: VCallAd Control_ID_FeenAcpaMsk
  loc_AC2F32: FStAdFunc var_88
  loc_AC2F35: FLdPr var_88
  loc_AC2F38: LateIdLdVar var_98 DispID_13 -32767
  loc_AC2F3F: CBoolVar
  loc_AC2F41: LitI2_Byte &HFF
  loc_AC2F43: EqI2
  loc_AC2F44: FFree1Ad var_88
  loc_AC2F47: FFree1Var var_98 = ""
  loc_AC2F4A: BranchF loc_AC302E
  loc_AC2F4D: LitVarStr var_A8, vbNullString
  loc_AC2F52: PopAdLdVar
  loc_AC2F53: FLdPr Me
  loc_AC2F56: VCallAd Control_ID_FeenAcpaMsk
  loc_AC2F59: FStAdFunc var_88
  loc_AC2F5C: FLdPr var_88
  loc_AC2F5F: LateIdSt
  loc_AC2F64: FFree1Ad var_88
  loc_AC2F67: FLdRfVar var_C0
  loc_AC2F6A: FLdPr Me
  loc_AC2F6D: VCallAd Control_ID_FeenAcpaMsk
  loc_AC2F70: FStAdFunc var_88
  loc_AC2F73: FLdPr var_88
  loc_AC2F76: LateIdLdVar var_98 DispID_22 0
  loc_AC2F7D: CStrVarTmp
  loc_AC2F7E: FStStrNoPop var_BC
  loc_AC2F81: FLdPr Me
  loc_AC2F84: MemLdRfVar from_stack_1.global_52
  loc_AC2F87: NewIfNullPr clsacrepago
  loc_AC2F8A: from_stack_2v = clsacrepago.ValidaFeenAcpa(from_stack_1v)
  loc_AC2F8F: ILdRf var_C0
  loc_AC2F92: FLdPr Me
  loc_AC2F95: MemStStrCopy
  loc_AC2F99: FFreeStr var_BC = ""
  loc_AC2FA0: FFree1Ad var_88
  loc_AC2FA3: FFree1Var var_98 = ""
  loc_AC2FA6: LitVarStr var_A8, "##/##/####"
  loc_AC2FAB: PopAdLdVar
  loc_AC2FAC: FLdPr Me
  loc_AC2FAF: VCallAd Control_ID_FeenAcpaMsk
  loc_AC2FB2: FStAdFunc var_88
  loc_AC2FB5: FLdPr var_88
  loc_AC2FB8: LateIdSt
  loc_AC2FBD: FFree1Ad var_88
  loc_AC2FC0: LitVarI2 var_A8, 10
  loc_AC2FC5: PopAdLdVar
  loc_AC2FC6: FLdPr Me
  loc_AC2FC9: VCallAd Control_ID_FeenAcpaMsk
  loc_AC2FCC: FStAdFunc var_88
  loc_AC2FCF: FLdPr var_88
  loc_AC2FD2: LateIdSt
  loc_AC2FD7: FFree1Ad var_88
  loc_AC2FDA: FLdPr Me
  loc_AC2FDD: MemLdStr global_92
  loc_AC2FE0: LitStr vbNullString
  loc_AC2FE3: NeStr
  loc_AC2FE5: BranchF loc_AC302E
  loc_AC2FE8: FLdPr Me
  loc_AC2FEB: MemLdStr global_92
  loc_AC2FEE: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC2FF3: LitI2_Byte 0
  loc_AC2FF5: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_AC2FFA: CStrDate
  loc_AC2FFC: CVarStr var_98
  loc_AC2FFF: PopAdLdVar
  loc_AC3000: FLdPr Me
  loc_AC3003: VCallAd Control_ID_FeenAcpaMsk
  loc_AC3006: FStAdFunc var_88
  loc_AC3009: FLdPr var_88
  loc_AC300C: LateIdSt
  loc_AC3011: FFree1Ad var_88
  loc_AC3014: FFree1Var var_98 = ""
  loc_AC3017: FLdPr Me
  loc_AC301A: VCallAd Control_ID_FeenAcpaMsk
  loc_AC301D: CVarAd
  loc_AC3021: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC3026: FFree1Var var_98 = ""
  loc_AC3029: LitI2_Byte &HFF
  loc_AC302B: IStI2 arg_C
  loc_AC302E: ExitProcHresult
End Function
