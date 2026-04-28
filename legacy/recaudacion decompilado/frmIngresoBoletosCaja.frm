VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{001FE100-B4EB-008C-F5B4-008C044E11F0}##0"; "OPOSPOSPrinter.ocx"
Begin VB.Form frmIngresoBoletosCaja
  Caption = "Ingresos de Boletos de Caja Municipal"
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
  Begin VB.ComboBox EnteRecaCbo
    Style = 2
    Left = 4200
    Top = 480
    Width = 3615
    Height = 420
    TabIndex = 1
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
  Begin VB.CommandButton ConfirmarCmd
    Left = 6480
    Top = 8760
    Width = 1695
    Height = 495
    TabIndex = 20
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "frmIngresoBoletosCaja.frx":0000
    Style = 1
  End
  Begin VB.TextBox VueltoTxt
    ForeColor = &HFF0000&
    Left = 6120
    Top = 8040
    Width = 2475
    Height = 420
    TabIndex = 18
    MaxLength = 13
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox PagaConTxt
    ForeColor = &HFF0000&
    Left = 6120
    Top = 7440
    Width = 2475
    Height = 420
    TabIndex = 16
    MaxLength = 13
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.TextBox TotalTxt
    ForeColor = &HFF0000&
    Left = 6120
    Top = 6840
    Width = 2475
    Height = 420
    TabIndex = 14
    MaxLength = 13
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
    DataFormat = 38
  End
  Begin VB.Frame Frame3
    Caption = "Codigo de Barra"
    Left = 2040
    Top = 1080
    Width = 9615
    Height = 855
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox BoletoBarraTxt
      ForeColor = &HFF0000&
      Left = 1560
      Top = 360
      Width = 7575
      Height = 345
      TabIndex = 5
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.Label Label10
      Caption = "Boleto Nro.:"
      Left = 240
      Top = 360
      Width = 1245
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
  Begin VB.CommandButton cmdSalir
    Left = 12120
    Top = 1440
    Width = 735
    Height = 615
    TabIndex = 19
    Picture = "frmIngresoBoletosCaja.frx":032E
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame2
    Caption = "Manual "
    Left = 2040
    Top = 2160
    Width = 6975
    Height = 855
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
    Begin VB.TextBox NumeBoleTxt
      ForeColor = &HFF0000&
      Left = 1560
      Top = 360
      Width = 1335
      Height = 345
      TabIndex = 8
      MaxLength = 8
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
    Begin VB.TextBox PeriBoleTxt
      ForeColor = &HFF0000&
      Left = 3000
      Top = 360
      Width = 735
      Height = 345
      TabIndex = 9
      MaxLength = 4
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
    Begin VB.CommandButton AgregarBoletoCmd
      Caption = "Agregar    >>>"
      Left = 4080
      Top = 360
      Width = 1935
      Height = 375
      TabIndex = 10
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
    Begin VB.Label Label8
      Caption = "Boleto Nro.:"
      Left = 240
      Top = 360
      Width = 1245
      Height = 300
      TabIndex = 7
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
  Begin MSFlexGridLib.MSFlexGrid BoletoFlex
    Left = 120
    Top = 3600
    Width = 15015
    Height = 3135
    TabIndex = 12
    OleObjectBlob = "frmIngresoBoletosCaja.frx":0580
    Appearance = 0 'Flat
  End
  Begin OposPOSPrinter_CCOCtl.OPOSPOSPrinter ImpresoraPtr
    OleObjectBlob = "frmIngresoBoletosCaja.frx":066C
    Left = 11280
    Top = 6840
  End
  Begin VB.Label DetaEnreLbl
    Left = 7920
    Top = 480
    Width = 4215
    Height = 435
    TabIndex = 2
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
    Left = 2160
    Top = 480
    Width = 1950
    Height = 300
    TabIndex = 0
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
  Begin VB.Label Label6
    Caption = "Vuelto:"
    Left = 5040
    Top = 8040
    Width = 975
    Height = 375
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Paga Con:"
    Left = 4680
    Top = 7440
    Width = 1335
    Height = 375
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Total:"
    Left = 5280
    Top = 6840
    Width = 735
    Height = 375
    TabIndex = 13
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label11
    Caption = "Detalle de los boletos cobrados"
    BackColor = &H808080&
    ForeColor = &HFFFFFF&
    Left = 120
    Top = 3240
    Width = 15105
    Height = 300
    TabIndex = 11
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

Attribute VB_Name = "frmIngresoBoletosCaja"


Private Sub BoletoBarraTxt_KeyPress(KeyAscii As Integer) 'C243C8
  'Data Table: 4B4C74
  loc_C23A10: ILdI2 KeyAscii
  loc_C23A13: CI4UI1
  loc_C23A14: LitI4 &HD
  loc_C23A19: EqI4
  loc_C23A1A: BranchF loc_C243C7
  loc_C23A1D: FLdRfVar var_9C
  loc_C23A20: FLdPrThis
  loc_C23A21: VCallAd Control_ID_BoletoBarraTxt
  loc_C23A24: FStAdFunc var_98
  loc_C23A27: FLdPr var_98
  loc_C23A2A:  = Me.Text
  loc_C23A2F: ILdRf var_9C
  loc_C23A32: LitStr vbNullString
  loc_C23A35: NeStr
  loc_C23A37: FFree1Str var_9C
  loc_C23A3A: FFree1Ad var_98
  loc_C23A3D: BranchF loc_C243B2
  loc_C23A40: LitI2_Byte 0
  loc_C23A42: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C23A47: FStFPR8 var_A8
  loc_C23A4A: FLdPr Me
  loc_C23A4D: MemLdI2 global_106
  loc_C23A50: CI4UI1
  loc_C23A51: FLdFPR8 var_A8
  loc_C23A54: CStrDate
  loc_C23A56: FStStrNoPop var_9C
  loc_C23A59: ImpAdCallI2 Proc_18_91_AC1E90(, )
  loc_C23A5E: FStStrNoPop var_A0
  loc_C23A61: FLdPr Me
  loc_C23A64: MemStStrCopy
  loc_C23A68: FFreeStr var_9C = ""
  loc_C23A6F: FLdPr Me
  loc_C23A72: MemLdStr global_96
  loc_C23A75: LitStr vbNullString
  loc_C23A78: NeStr
  loc_C23A7A: BranchF loc_C23A9B
  loc_C23A7D: FLdPr Me
  loc_C23A80: MemLdStr global_96
  loc_C23A83: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C23A88: FLdPr Me
  loc_C23A8B: VCallAd Control_ID_BoletoBarraTxt
  loc_C23A8E: CVarAd
  loc_C23A92: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C23A97: FFree1Var var_B8 = ""
  loc_C23A9A: ExitProcHresult
  loc_C23A9B: FLdRfVar var_9C
  loc_C23A9E: FLdPr Me
  loc_C23AA1: VCallAd Control_ID_BoletoBarraTxt
  loc_C23AA4: FStAdFunc var_98
  loc_C23AA7: FLdPr var_98
  loc_C23AAA:  = Me.Text
  loc_C23AAF: ILdRf var_9C
  loc_C23AB2: FnLenStr
  loc_C23AB3: LitI4 &H33
  loc_C23AB8: EqI4
  loc_C23AB9: FFree1Str var_9C
  loc_C23ABC: FFree1Ad var_98
  loc_C23ABF: BranchF loc_C23BBC
  loc_C23AC2: ImpAdLdI2 MemVar_D93034
  loc_C23AC5: FLdPr Me
  loc_C23AC8: MemStI2 global_120
  loc_C23ACB: FLdRfVar var_9C
  loc_C23ACE: FLdPr Me
  loc_C23AD1: VCallAd Control_ID_BoletoBarraTxt
  loc_C23AD4: FStAdFunc var_98
  loc_C23AD7: FLdPr var_98
  loc_C23ADA:  = Me.Text
  loc_C23ADF: LitVarI2 var_D8, 7
  loc_C23AE4: LitI4 6
  loc_C23AE9: FLdZeroAd var_9C
  loc_C23AEC: CVarStr var_B8
  loc_C23AEF: FLdRfVar var_E8
  loc_C23AF2: ImpAdCallFPR4  = Mid(, , )
  loc_C23AF7: FLdRfVar var_E8
  loc_C23AFA: FnCLngVar
  loc_C23AFC: FLdPr Me
  loc_C23AFF: MemStI4 global_124
  loc_C23B02: FFree1Ad var_98
  loc_C23B05: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_C23B10: FLdRfVar var_9C
  loc_C23B13: FLdPr Me
  loc_C23B16: VCallAd Control_ID_BoletoBarraTxt
  loc_C23B19: FStAdFunc var_98
  loc_C23B1C: FLdPr var_98
  loc_C23B1F:  = Me.Text
  loc_C23B24: LitVarI2 var_D8, 1
  loc_C23B29: LitI4 &H10
  loc_C23B2E: FLdZeroAd var_9C
  loc_C23B31: CVarStr var_B8
  loc_C23B34: FLdRfVar var_E8
  loc_C23B37: ImpAdCallFPR4  = Mid(, , )
  loc_C23B3C: FLdRfVar var_E8
  loc_C23B3F: FnCIntVar
  loc_C23B41: CUI1I2
  loc_C23B43: FStUI1 var_86
  loc_C23B47: FFree1Ad var_98
  loc_C23B4A: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_C23B55: FLdRfVar var_9C
  loc_C23B58: FLdPr Me
  loc_C23B5B: VCallAd Control_ID_BoletoBarraTxt
  loc_C23B5E: FStAdFunc var_98
  loc_C23B61: FLdPr var_98
  loc_C23B64:  = Me.Text
  loc_C23B69: LitVarI2 var_D8, 7
  loc_C23B6E: LitI4 &H11
  loc_C23B73: FLdZeroAd var_9C
  loc_C23B76: CVarStr var_B8
  loc_C23B79: FLdRfVar var_E8
  loc_C23B7C: ImpAdCallFPR4  = Mid(, , )
  loc_C23B81: FLdRfVar var_E8
  loc_C23B84: FnCLngVar
  loc_C23B86: CStrI4
  loc_C23B88: FStStr var_8C
  loc_C23B8B: FFree1Ad var_98
  loc_C23B8E: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_C23B99: FLdUI1
  loc_C23B9D: CI2UI1
  loc_C23B9F: LitI2_Byte 6
  loc_C23BA1: EqI2
  loc_C23BA2: ILdRf var_8C
  loc_C23BA5: LitStr "0"
  loc_C23BA8: EqStr
  loc_C23BAA: AndI4
  loc_C23BAB: BranchF loc_C23BBC
  loc_C23BAE: LitI2_Byte 3
  loc_C23BB0: CUI1I2
  loc_C23BB2: FStUI1 var_86
  loc_C23BB6: LitStr vbNullString
  loc_C23BB9: FStStrCopy var_8C
  loc_C23BBC: LitI2_Byte 1
  loc_C23BBE: FLdPr Me
  loc_C23BC1: MemLdRfVar from_stack_1.global_92
  loc_C23BC4: FLdPr Me
  loc_C23BC7: VCallAd Control_ID_BoletoFlex
  loc_C23BCA: FStAdFunc var_98
  loc_C23BCD: FLdPr var_98
  loc_C23BD0: LateIdLdVar var_B8 DispID_4 0
  loc_C23BD7: CI4Var
  loc_C23BD9: LitI4 1
  loc_C23BDE: SubI4
  loc_C23BDF: CI2I4
  loc_C23BE0: FFree1Ad var_98
  loc_C23BE3: FFree1Var var_B8 = ""
  loc_C23BE6: ForI2 var_EC
  loc_C23BEC: FLdPr Me
  loc_C23BEF: MemLdI2 global_92
  loc_C23BF2: CI4UI1
  loc_C23BF3: CVarI4
  loc_C23BF7: PopAdLdVar
  loc_C23BF8: LitVarI4
  loc_C23C00: PopAdLdVar
  loc_C23C01: FLdPr Me
  loc_C23C04: VCallAd Control_ID_BoletoFlex
  loc_C23C07: FStAdFunc var_98
  loc_C23C0A: FLdPr var_98
  loc_C23C0D: LateIdCallLdVar
  loc_C23C17: CStrVarTmp
  loc_C23C18: FStStrNoPop var_9C
  loc_C23C1B: CR8Str
  loc_C23C1D: FLdPr Me
  loc_C23C20: MemLdI2 global_120
  loc_C23C23: CR8I2
  loc_C23C24: EqR4
  loc_C23C25: FLdPr Me
  loc_C23C28: MemLdI2 global_92
  loc_C23C2B: CI4UI1
  loc_C23C2C: CVarI4
  loc_C23C30: PopAdLdVar
  loc_C23C31: LitVarI4
  loc_C23C39: PopAdLdVar
  loc_C23C3A: FLdPr Me
  loc_C23C3D: VCallAd Control_ID_BoletoFlex
  loc_C23C40: FStAdFunc var_160
  loc_C23C43: FLdPr var_160
  loc_C23C46: LateIdCallLdVar
  loc_C23C50: CStrVarTmp
  loc_C23C51: FStStrNoPop var_A0
  loc_C23C54: CR8Str
  loc_C23C56: FLdPr Me
  loc_C23C59: MemLdStr global_124
  loc_C23C5C: CR8I4
  loc_C23C5D: EqR4
  loc_C23C5E: AndI4
  loc_C23C5F: FFreeStr var_9C = ""
  loc_C23C66: FFreeAd var_98 = ""
  loc_C23C6D: FFreeVar var_B8 = ""
  loc_C23C74: BranchF loc_C23CCA
  loc_C23C77: LitVar_Missing var_170
  loc_C23C7A: LitVar_Missing var_E8
  loc_C23C7D: LitVar_Missing var_D8
  loc_C23C80: LitI4 0
  loc_C23C85: LitVarStr var_C8, "El boleto se encuentra ingresado. Verifique..."
  loc_C23C8A: FStVarCopyObj var_B8
  loc_C23C8D: FLdRfVar var_B8
  loc_C23C90: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C23C95: FFreeVar var_B8 = "": var_D8 = "": var_E8 = ""
  loc_C23CA0: LitStr vbNullString
  loc_C23CA3: FLdPr Me
  loc_C23CA6: VCallAd Control_ID_BoletoBarraTxt
  loc_C23CA9: FStAdFunc var_98
  loc_C23CAC: FLdPr var_98
  loc_C23CAF: Me.Text = from_stack_1
  loc_C23CB4: FFree1Ad var_98
  loc_C23CB7: FLdPr Me
  loc_C23CBA: VCallAd Control_ID_BoletoBarraTxt
  loc_C23CBD: CVarAd
  loc_C23CC1: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C23CC6: FFree1Var var_B8 = ""
  loc_C23CC9: ExitProcHresult
  loc_C23CCA: FLdPr Me
  loc_C23CCD: MemLdRfVar from_stack_1.global_92
  loc_C23CD0: NextI2 var_EC, loc_C23BEC
  loc_C23CD5: LitStr "SELECT PeriBole, NumeBole, CodiOfic, CuenCtct, FeveBole, CodiTili, NumeLiqu, infogov.persona.DetaPers, tipobole, EstaBole,"
  loc_C23CD8: LitStr " CapiBole, DecaBole, RecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, boleto.CodiUsua FROM boleto "
  loc_C23CDB: ConcatStr
  loc_C23CDC: FStStrNoPop var_9C
  loc_C23CDF: LitStr " LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers"
  loc_C23CE2: ConcatStr
  loc_C23CE3: FStStrNoPop var_A0
  loc_C23CE6: LitStr " WHERE PeriBole = "
  loc_C23CE9: ConcatStr
  loc_C23CEA: FStStrNoPop var_174
  loc_C23CED: FLdPr Me
  loc_C23CF0: MemLdI2 global_120
  loc_C23CF3: CStrUI1
  loc_C23CF5: FStStrNoPop var_178
  loc_C23CF8: ConcatStr
  loc_C23CF9: FStStrNoPop var_17C
  loc_C23CFC: LitStr " AND NumeBole = "
  loc_C23CFF: ConcatStr
  loc_C23D00: FStStrNoPop var_180
  loc_C23D03: FLdPr Me
  loc_C23D06: MemLdStr global_124
  loc_C23D09: CStrI4
  loc_C23D0B: FStStrNoPop var_184
  loc_C23D0E: ConcatStr
  loc_C23D0F: FStStrNoPop var_188
  loc_C23D12: LitStr " AND CodiOfic = "
  loc_C23D15: ConcatStr
  loc_C23D16: FStStrNoPop var_18C
  loc_C23D19: FLdUI1
  loc_C23D1D: CStrI2
  loc_C23D1F: FStStrNoPop var_190
  loc_C23D22: ConcatStr
  loc_C23D23: FStStrNoPop var_194
  loc_C23D26: LitStr " AND CuenCtct = '"
  loc_C23D29: ConcatStr
  loc_C23D2A: FStStrNoPop var_198
  loc_C23D2D: ILdRf var_8C
  loc_C23D30: ConcatStr
  loc_C23D31: FStStrNoPop var_19C
  loc_C23D34: LitStr "'"
  loc_C23D37: ConcatStr
  loc_C23D38: FStStrNoPop var_1A0
  loc_C23D3B: LitStr " ORDER BY PeriBole, NumeBole"
  loc_C23D3E: ConcatStr
  loc_C23D3F: FStStrNoPop var_1A4
  loc_C23D42: FLdPr Me
  loc_C23D45: MemLdRfVar from_stack_1.global_60
  loc_C23D48: NewIfNullPr clsboleto
  loc_C23D4B: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C23D50: FFreeStr var_9C = "": var_A0 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_19C = "": var_1A0 = ""
  loc_C23D71: FLdRfVar var_1A8
  loc_C23D74: FLdPr Me
  loc_C23D77: MemLdRfVar from_stack_1.global_60
  loc_C23D7A: NewIfNullPr clsboleto
  loc_C23D7D: from_stack_1 = clsboleto.RecordCount
  loc_C23D82: ILdRf var_1A8
  loc_C23D85: LitI4 0
  loc_C23D8A: GtI4
  loc_C23D8B: BranchF loc_C243B2
  loc_C23D8E: FLdRfVar var_9C
  loc_C23D91: FLdPr Me
  loc_C23D94: MemLdRfVar from_stack_1.global_60
  loc_C23D97: NewIfNullPr clsboleto
  loc_C23D9A: from_stack_1 = clsboleto.EstaBole
  loc_C23D9F: ILdRf var_9C
  loc_C23DA2: LitStr "Pagado"
  loc_C23DA5: EqStr
  loc_C23DA7: FFree1Str var_9C
  loc_C23DAA: BranchF loc_C23DDF
  loc_C23DAD: LitStr "El boleto se encuenta pagado, verifique..."
  loc_C23DB0: FLdPr Me
  loc_C23DB3: MemStStrCopy
  loc_C23DB7: FLdPr Me
  loc_C23DBA: MemLdStr global_96
  loc_C23DBD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C23DC2: LitStr vbNullString
  loc_C23DC5: FLdPr Me
  loc_C23DC8: MemStStrCopy
  loc_C23DCC: FLdPr Me
  loc_C23DCF: VCallAd Control_ID_NumeBoleTxt
  loc_C23DD2: CVarAd
  loc_C23DD6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C23DDB: FFree1Var var_B8 = ""
  loc_C23DDE: ExitProcHresult
  loc_C23DDF: FLdRfVar var_9C
  loc_C23DE2: FLdPr Me
  loc_C23DE5: MemLdRfVar from_stack_1.global_60
  loc_C23DE8: NewIfNullPr clsboleto
  loc_C23DEB: from_stack_1 = clsboleto.EstaBole
  loc_C23DF0: ILdRf var_9C
  loc_C23DF3: LitStr "Actualizado"
  loc_C23DF6: EqStr
  loc_C23DF8: FFree1Str var_9C
  loc_C23DFB: BranchF loc_C23E30
  loc_C23DFE: LitStr "El boleto se encuenta pagado y actualizado en la cuenta corriente, verifique..."
  loc_C23E01: FLdPr Me
  loc_C23E04: MemStStrCopy
  loc_C23E08: FLdPr Me
  loc_C23E0B: MemLdStr global_96
  loc_C23E0E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C23E13: LitStr vbNullString
  loc_C23E16: FLdPr Me
  loc_C23E19: MemStStrCopy
  loc_C23E1D: FLdPr Me
  loc_C23E20: VCallAd Control_ID_NumeBoleTxt
  loc_C23E23: CVarAd
  loc_C23E27: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C23E2C: FFree1Var var_B8 = ""
  loc_C23E2F: ExitProcHresult
  loc_C23E30: FLdRfVar var_9C
  loc_C23E33: FLdPr Me
  loc_C23E36: MemLdRfVar from_stack_1.global_60
  loc_C23E39: NewIfNullPr clsboleto
  loc_C23E3C: from_stack_1 = clsboleto.EstaBole
  loc_C23E41: ILdRf var_9C
  loc_C23E44: LitStr "Anulado"
  loc_C23E47: EqStr
  loc_C23E49: FFree1Str var_9C
  loc_C23E4C: BranchF loc_C23E81
  loc_C23E4F: LitStr "El boleto se encuenta anulado, verifique..."
  loc_C23E52: FLdPr Me
  loc_C23E55: MemStStrCopy
  loc_C23E59: FLdPr Me
  loc_C23E5C: MemLdStr global_96
  loc_C23E5F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C23E64: LitStr vbNullString
  loc_C23E67: FLdPr Me
  loc_C23E6A: MemStStrCopy
  loc_C23E6E: FLdPr Me
  loc_C23E71: VCallAd Control_ID_NumeBoleTxt
  loc_C23E74: CVarAd
  loc_C23E78: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_C23E7D: FFree1Var var_B8 = ""
  loc_C23E80: ExitProcHresult
  loc_C23E81: LitI2_Byte 1
  loc_C23E83: FLdPr Me
  loc_C23E86: MemLdRfVar from_stack_1.global_92
  loc_C23E89: FLdPr Me
  loc_C23E8C: VCallAd Control_ID_BoletoFlex
  loc_C23E8F: FStAdFunc var_98
  loc_C23E92: FLdPr var_98
  loc_C23E95: LateIdLdVar var_B8 DispID_4 0
  loc_C23E9C: CI4Var
  loc_C23E9E: LitI4 1
  loc_C23EA3: SubI4
  loc_C23EA4: CI2I4
  loc_C23EA5: FFree1Ad var_98
  loc_C23EA8: FFree1Var var_B8 = ""
  loc_C23EAB: ForI2 var_1AC
  loc_C23EB1: FLdPr Me
  loc_C23EB4: MemLdI2 global_92
  loc_C23EB7: CI4UI1
  loc_C23EB8: CVarI4
  loc_C23EBC: PopAdLdVar
  loc_C23EBD: LitVarI4
  loc_C23EC5: PopAdLdVar
  loc_C23EC6: FLdPr Me
  loc_C23EC9: VCallAd Control_ID_BoletoFlex
  loc_C23ECC: FStAdFunc var_98
  loc_C23ECF: FLdPr var_98
  loc_C23ED2: LateIdCallLdVar
  loc_C23EDC: CStrVarTmp
  loc_C23EDD: FStStrNoPop var_A0
  loc_C23EE0: FLdRfVar var_9C
  loc_C23EE3: FLdPr Me
  loc_C23EE6: VCallAd Control_ID_PeriBoleTxt
  loc_C23EE9: FStAdFunc var_160
  loc_C23EEC: FLdPr var_160
  loc_C23EEF:  = Me.Text
  loc_C23EF4: ILdRf var_9C
  loc_C23EF7: EqStr
  loc_C23EF9: FLdPr Me
  loc_C23EFC: MemLdI2 global_92
  loc_C23EFF: CI4UI1
  loc_C23F00: CVarI4
  loc_C23F04: PopAdLdVar
  loc_C23F05: LitVarI4
  loc_C23F0D: PopAdLdVar
  loc_C23F0E: FLdPr Me
  loc_C23F11: VCallAd Control_ID_BoletoFlex
  loc_C23F14: FStAdFunc var_1B0
  loc_C23F17: FLdPr var_1B0
  loc_C23F1A: LateIdCallLdVar
  loc_C23F24: CStrVarTmp
  loc_C23F25: FStStrNoPop var_178
  loc_C23F28: FLdRfVar var_174
  loc_C23F2B: FLdPr Me
  loc_C23F2E: VCallAd Control_ID_NumeBoleTxt
  loc_C23F31: FStAdFunc var_1B4
  loc_C23F34: FLdPr var_1B4
  loc_C23F37:  = Me.Text
  loc_C23F3C: ILdRf var_174
  loc_C23F3F: EqStr
  loc_C23F41: AndI4
  loc_C23F42: FFreeStr var_A0 = "": var_9C = "": var_178 = ""
  loc_C23F4D: FFreeAd var_98 = "": var_160 = "": var_1B0 = ""
  loc_C23F58: FFreeVar var_B8 = ""
  loc_C23F5F: BranchF loc_C23FAE
  loc_C23F62: LitStr "El valor que esta ingresando, ya se encuentra ingresado en la fila: "
  loc_C23F65: FLdPr Me
  loc_C23F68: MemLdI2 global_92
  loc_C23F6B: CStrUI1
  loc_C23F6D: FStStrNoPop var_9C
  loc_C23F70: ConcatStr
  loc_C23F71: FStStrNoPop var_A0
  loc_C23F74: LitStr ". Verifique"
  loc_C23F77: ConcatStr
  loc_C23F78: FStStrNoPop var_174
  loc_C23F7B: FLdPr Me
  loc_C23F7E: MemStStrCopy
  loc_C23F82: FFreeStr var_9C = "": var_A0 = ""
  loc_C23F8B: FLdPr Me
  loc_C23F8E: MemLdStr global_96
  loc_C23F91: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C23F96: FLdPr Me
  loc_C23F99: VCallAd Control_ID_BoletoFlex
  loc_C23F9C: FStAdFunc var_98
  loc_C23F9F: FLdPr var_98
  loc_C23FA2: LateIdCall
  loc_C23FAA: FFree1Ad var_98
  loc_C23FAD: ExitProcHresult
  loc_C23FAE: FLdPr Me
  loc_C23FB1: MemLdRfVar from_stack_1.global_92
  loc_C23FB4: NextI2 var_1AC, loc_C23EB1
  loc_C23FB9: FLdRfVar var_A8
  loc_C23FBC: FLdPr Me
  loc_C23FBF: MemLdRfVar from_stack_1.global_60
  loc_C23FC2: NewIfNullPr clsboleto
  loc_C23FC5: from_stack_1 = clsboleto.CapiBole
  loc_C23FCA: FLdRfVar var_2E4
  loc_C23FCD: FLdPr Me
  loc_C23FD0: MemLdRfVar from_stack_1.global_60
  loc_C23FD3: NewIfNullPr clsboleto
  loc_C23FD6: from_stack_1 = clsboleto.DecaBole
  loc_C23FDB: FLdRfVar var_34C
  loc_C23FDE: FLdPr Me
  loc_C23FE1: MemLdRfVar from_stack_1.global_60
  loc_C23FE4: NewIfNullPr clsboleto
  loc_C23FE7: from_stack_1 = clsboleto.RecaBole
  loc_C23FEC: FLdRfVar var_3C4
  loc_C23FEF: FLdPr Me
  loc_C23FF2: MemLdRfVar from_stack_1.global_60
  loc_C23FF5: NewIfNullPr clsboleto
  loc_C23FF8: from_stack_1 = clsboleto.DereBole
  loc_C23FFD: FLdRfVar var_44C
  loc_C24000: FLdPr Me
  loc_C24003: MemLdRfVar from_stack_1.global_60
  loc_C24006: NewIfNullPr clsboleto
  loc_C24009: from_stack_1 = clsboleto.InteBole
  loc_C2400E: FLdRfVar var_4D4
  loc_C24011: FLdPr Me
  loc_C24014: MemLdRfVar from_stack_1.global_60
  loc_C24017: NewIfNullPr clsboleto
  loc_C2401A: from_stack_1 = clsboleto.ApreBole
  loc_C2401F: FLdRfVar var_55C
  loc_C24022: FLdPr Me
  loc_C24025: MemLdRfVar from_stack_1.global_60
  loc_C24028: NewIfNullPr clsboleto
  loc_C2402B: from_stack_1 = clsboleto.TotaBole
  loc_C24030: FLdRfVar var_1B6
  loc_C24033: FLdPr Me
  loc_C24036: MemLdRfVar from_stack_1.global_60
  loc_C24039: NewIfNullPr clsboleto
  loc_C2403C: from_stack_1 = clsboleto.PeriBole
  loc_C24041: FLdI2 var_1B6
  loc_C24044: CVarI2 var_C8
  loc_C24047: LitI4 9
  loc_C2404C: FLdRfVar var_B8
  loc_C2404F: ImpAdCallFPR4  = Chr()
  loc_C24054: FLdRfVar var_B8
  loc_C24057: ConcatVar var_D8
  loc_C2405B: FLdRfVar var_1A8
  loc_C2405E: FLdPr Me
  loc_C24061: MemLdRfVar from_stack_1.global_60
  loc_C24064: NewIfNullPr clsboleto
  loc_C24067: from_stack_1 = clsboleto.NumeBole
  loc_C2406C: ILdRf var_1A8
  loc_C2406F: CVarI4
  loc_C24073: ConcatVar var_E8
  loc_C24077: LitI4 9
  loc_C2407C: FLdRfVar var_170
  loc_C2407F: ImpAdCallFPR4  = Chr()
  loc_C24084: FLdRfVar var_170
  loc_C24087: ConcatVar var_1C8
  loc_C2408B: FLdRfVar var_1CA
  loc_C2408E: FLdPr Me
  loc_C24091: MemLdRfVar from_stack_1.global_60
  loc_C24094: NewIfNullPr clsboleto
  loc_C24097: from_stack_1 = clsboleto.CodiOfic
  loc_C2409C: FLdI2 var_1CA
  loc_C2409F: CVarI2 var_10C
  loc_C240A2: ConcatVar var_1DC
  loc_C240A6: LitI4 9
  loc_C240AB: FLdRfVar var_1EC
  loc_C240AE: ImpAdCallFPR4  = Chr()
  loc_C240B3: FLdRfVar var_1EC
  loc_C240B6: ConcatVar var_1FC
  loc_C240BA: FLdRfVar var_9C
  loc_C240BD: FLdPr Me
  loc_C240C0: MemLdRfVar from_stack_1.global_60
  loc_C240C3: NewIfNullPr clsboleto
  loc_C240C6: from_stack_1 = clsboleto.CuenCtct
  loc_C240CB: FLdZeroAd var_9C
  loc_C240CE: CVarStr var_20C
  loc_C240D1: ConcatVar var_21C
  loc_C240D5: LitI4 9
  loc_C240DA: FLdRfVar var_22C
  loc_C240DD: ImpAdCallFPR4  = Chr()
  loc_C240E2: FLdRfVar var_22C
  loc_C240E5: ConcatVar var_23C
  loc_C240E9: FLdRfVar var_A0
  loc_C240EC: FLdPr Me
  loc_C240EF: MemLdRfVar from_stack_1.global_60
  loc_C240F2: NewIfNullPr clsboleto
  loc_C240F5: from_stack_1 = clsboleto.DetaPers
  loc_C240FA: FLdZeroAd var_A0
  loc_C240FD: CVarStr var_24C
  loc_C24100: ConcatVar var_25C
  loc_C24104: LitI4 9
  loc_C24109: FLdRfVar var_26C
  loc_C2410C: ImpAdCallFPR4  = Chr()
  loc_C24111: FLdRfVar var_26C
  loc_C24114: ConcatVar var_27C
  loc_C24118: LitI4 1
  loc_C2411D: LitI4 1
  loc_C24122: LitVarStr var_12C, "0.00"
  loc_C24127: FStVarCopyObj var_29C
  loc_C2412A: FLdRfVar var_29C
  loc_C2412D: FLdFPR8 var_A8
  loc_C24130: CVarR8
  loc_C24134: FLdRfVar var_2AC
  loc_C24137: ImpAdCallFPR4  = Format(, )
  loc_C2413C: FLdRfVar var_2AC
  loc_C2413F: ConcatVar var_2BC
  loc_C24143: LitI4 9
  loc_C24148: FLdRfVar var_2CC
  loc_C2414B: ImpAdCallFPR4  = Chr()
  loc_C24150: FLdRfVar var_2CC
  loc_C24153: ConcatVar var_2DC
  loc_C24157: LitI4 1
  loc_C2415C: LitI4 1
  loc_C24161: LitVarStr var_14C, "0.00"
  loc_C24166: FStVarCopyObj var_304
  loc_C24169: FLdRfVar var_304
  loc_C2416C: FLdFPR8 var_2E4
  loc_C2416F: CVarR8
  loc_C24173: FLdRfVar var_314
  loc_C24176: ImpAdCallFPR4  = Format(, )
  loc_C2417B: FLdRfVar var_314
  loc_C2417E: ConcatVar var_324
  loc_C24182: LitI4 9
  loc_C24187: FLdRfVar var_334
  loc_C2418A: ImpAdCallFPR4  = Chr()
  loc_C2418F: FLdRfVar var_334
  loc_C24192: ConcatVar var_344
  loc_C24196: LitI4 1
  loc_C2419B: LitI4 1
  loc_C241A0: LitVarStr var_36C, "0.00"
  loc_C241A5: FStVarCopyObj var_37C
  loc_C241A8: FLdRfVar var_37C
  loc_C241AB: FLdFPR8 var_34C
  loc_C241AE: CVarR8
  loc_C241B2: FLdRfVar var_38C
  loc_C241B5: ImpAdCallFPR4  = Format(, )
  loc_C241BA: FLdRfVar var_38C
  loc_C241BD: ConcatVar var_39C
  loc_C241C1: LitI4 9
  loc_C241C6: FLdRfVar var_3AC
  loc_C241C9: ImpAdCallFPR4  = Chr()
  loc_C241CE: FLdRfVar var_3AC
  loc_C241D1: ConcatVar var_3BC
  loc_C241D5: LitI4 1
  loc_C241DA: LitI4 1
  loc_C241DF: LitVarStr var_3F4, "0.00"
  loc_C241E4: FStVarCopyObj var_404
  loc_C241E7: FLdRfVar var_404
  loc_C241EA: FLdFPR8 var_3C4
  loc_C241ED: CVarR8
  loc_C241F1: FLdRfVar var_414
  loc_C241F4: ImpAdCallFPR4  = Format(, )
  loc_C241F9: FLdRfVar var_414
  loc_C241FC: ConcatVar var_424
  loc_C24200: LitI4 9
  loc_C24205: FLdRfVar var_434
  loc_C24208: ImpAdCallFPR4  = Chr()
  loc_C2420D: FLdRfVar var_434
  loc_C24210: ConcatVar var_444
  loc_C24214: LitI4 1
  loc_C24219: LitI4 1
  loc_C2421E: LitVarStr var_47C, "0.00"
  loc_C24223: FStVarCopyObj var_48C
  loc_C24226: FLdRfVar var_48C
  loc_C24229: FLdFPR8 var_44C
  loc_C2422C: CVarR8
  loc_C24230: FLdRfVar var_49C
  loc_C24233: ImpAdCallFPR4  = Format(, )
  loc_C24238: FLdRfVar var_49C
  loc_C2423B: ConcatVar var_4AC
  loc_C2423F: LitI4 9
  loc_C24244: FLdRfVar var_4BC
  loc_C24247: ImpAdCallFPR4  = Chr()
  loc_C2424C: FLdRfVar var_4BC
  loc_C2424F: ConcatVar var_4CC
  loc_C24253: LitI4 1
  loc_C24258: LitI4 1
  loc_C2425D: LitVarStr var_504, "0.00"
  loc_C24262: FStVarCopyObj var_514
  loc_C24265: FLdRfVar var_514
  loc_C24268: FLdFPR8 var_4D4
  loc_C2426B: CVarR8
  loc_C2426F: FLdRfVar var_524
  loc_C24272: ImpAdCallFPR4  = Format(, )
  loc_C24277: FLdRfVar var_524
  loc_C2427A: ConcatVar var_534
  loc_C2427E: LitI4 9
  loc_C24283: FLdRfVar var_544
  loc_C24286: ImpAdCallFPR4  = Chr()
  loc_C2428B: FLdRfVar var_544
  loc_C2428E: ConcatVar var_554
  loc_C24292: LitI4 1
  loc_C24297: LitI4 1
  loc_C2429C: LitVarStr var_58C, "0.00"
  loc_C242A1: FStVarCopyObj var_59C
  loc_C242A4: FLdRfVar var_59C
  loc_C242A7: FLdFPR8 var_55C
  loc_C242AA: CVarR8
  loc_C242AE: FLdRfVar var_5AC
  loc_C242B1: ImpAdCallFPR4  = Format(, )
  loc_C242B6: FLdRfVar var_5AC
  loc_C242B9: ConcatVar var_5BC
  loc_C242BD: LitI4 9
  loc_C242C2: FLdRfVar var_5CC
  loc_C242C5: ImpAdCallFPR4  = Chr()
  loc_C242CA: FLdRfVar var_5CC
  loc_C242CD: ConcatVar var_5DC
  loc_C242D1: FLdRfVar var_174
  loc_C242D4: FLdPr Me
  loc_C242D7: MemLdRfVar from_stack_1.global_60
  loc_C242DA: NewIfNullPr clsboleto
  loc_C242DD: from_stack_1 = clsboleto.CodiUsua
  loc_C242E2: FLdZeroAd var_174
  loc_C242E5: CVarStr var_5EC
  loc_C242E8: ConcatVar var_5FC
  loc_C242EC: CStrVarTmp
  loc_C242ED: FStStrNoPop var_178
  loc_C242F0: FLdPr Me
  loc_C242F3: MemStStrCopy
  loc_C242F7: FFree1Str var_178
  loc_C242FA: FFreeVar var_38C = "": var_39C = "": var_3AC = "": var_3E4 = "": var_404 = "": var_3BC = "": var_414 = "": var_424 = "": var_434 = "": var_46C = "": var_48C = "": var_444 = "": var_49C = "": var_4AC = "": var_4BC = "": var_4F4 = "": var_514 = "": var_4CC = "": var_524 = "": var_534 = "": var_544 = "": var_57C = "": var_59C = "": var_554 = "": var_5AC = "": var_5BC = "": var_5CC = "": var_5DC = "": var_5EC = "": var_5FC = "": var_B8 = "": var_D8 = "": var_E8 = "": var_170 = "": var_1C8 = "": var_1DC = "": var_1EC = "": var_1FC = "": var_20C = "": var_21C = "": var_22C = "": var_23C = "": var_24C = "": var_25C = "": var_26C = "": var_28C = "": var_29C = "": var_27C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2F4 = "": var_304 = "": var_2DC = "": var_314 = "": var_324 = "": var_334 = "": var_35C = "": var_37C = ""
  loc_C24375: FLdPr Me
  loc_C24378: MemLdRfVar from_stack_1.global_88
  loc_C2437B: CDargRef
  loc_C2437F: FLdPr Me
  loc_C24382: VCallAd Control_ID_BoletoFlex
  loc_C24385: FStAdFunc var_98
  loc_C24388: FLdPr var_98
  loc_C2438B: LateIdCall
  loc_C24393: FFree1Ad var_98
  loc_C24396: Call Proc_213_26_AC8950()
  loc_C2439B: LitStr vbNullString
  loc_C2439E: FLdPr Me
  loc_C243A1: VCallAd Control_ID_BoletoBarraTxt
  loc_C243A4: FStAdFunc var_98
  loc_C243A7: FLdPr var_98
  loc_C243AA: Me.Text = from_stack_1
  loc_C243AF: FFree1Ad var_98
  loc_C243B2: FLdPr Me
  loc_C243B5: VCallAd Control_ID_BoletoBarraTxt
  loc_C243B8: FStAdFunc var_98
  loc_C243BB: FLdPr var_98
  loc_C243BE: Me.SetFocus
  loc_C243C3: FFree1Ad var_98
  loc_C243C6: ExitProcHresult
  loc_C243C7: ExitProcHresult
End Sub

Private Sub TotalTxt_GotFocus() '9C3728
  'Data Table: 4B4C74
  loc_9C3714: FLdPr Me
  loc_9C3717: VCallAd Control_ID_TotalTxt
  loc_9C371A: CVarAd
  loc_9C371E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3723: FFree1Var var_94 = ""
  loc_9C3726: ExitProcHresult
  loc_9C3727: ExitProcHresult
End Sub

Private Sub TotalTxt_KeyPress(KeyAscii As Integer) 'A06A18
  'Data Table: 4B4C74
  loc_A069E4: LitStr "1234567890,."
  loc_A069E7: FStStrCopy var_88
  loc_A069EA: FLdRfVar var_88
  loc_A069ED: ILdRf KeyAscii
  loc_A069F0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A069F5: IStI2 KeyAscii
  loc_A069F8: FFree1Str var_88
  loc_A069FB: ILdI2 KeyAscii
  loc_A069FE: LitStr "."
  loc_A06A01: ImpAdCallI2 Asc()
  loc_A06A06: EqI2
  loc_A06A07: BranchF loc_A06A15
  loc_A06A0A: LitStr ","
  loc_A06A0D: ImpAdCallI2 Asc()
  loc_A06A12: IStI2 KeyAscii
  loc_A06A15: ExitProcHresult
End Sub

Private Sub TotalTxt_LostFocus() 'A74FC8
  'Data Table: 4B4C74
  loc_A74F64: FLdRfVar var_8C
  loc_A74F67: FLdPr Me
  loc_A74F6A: VCallAd Control_ID_TotalTxt
  loc_A74F6D: FStAdFunc var_88
  loc_A74F70: FLdPr var_88
  loc_A74F73:  = Me.Text
  loc_A74F78: LitI4 1
  loc_A74F7D: LitI4 1
  loc_A74F82: LitVarStr var_AC, "0.00"
  loc_A74F87: FStVarCopyObj var_BC
  loc_A74F8A: FLdRfVar var_BC
  loc_A74F8D: FLdZeroAd var_8C
  loc_A74F90: CVarStr var_9C
  loc_A74F93: FLdRfVar var_CC
  loc_A74F96: ImpAdCallFPR4  = Format(, )
  loc_A74F9B: FLdRfVar var_CC
  loc_A74F9E: CStrVarVal var_D0
  loc_A74FA2: FLdPr Me
  loc_A74FA5: VCallAd Control_ID_TotalTxt
  loc_A74FA8: FStAdFunc var_D4
  loc_A74FAB: FLdPr var_D4
  loc_A74FAE: Me.Text = from_stack_1
  loc_A74FB3: FFree1Str var_D0
  loc_A74FB6: FFreeAd var_88 = ""
  loc_A74FBD: FFreeVar var_9C = "": var_BC = ""
  loc_A74FC6: ExitProcHresult
End Sub

Private Sub TotalTxt_Validate(Cancel As Boolean) 'A83094
  'Data Table: 4B4C74
  loc_A8300C: FLdRfVar var_8A
  loc_A8300F: FLdPrThis
  loc_A83010: VCallAd Control_ID_TotalTxt
  loc_A83013: FStAdFunc var_88
  loc_A83016: FLdPr var_88
  loc_A83019:  = Me.Enabled
  loc_A8301E: FLdI2 var_8A
  loc_A83021: LitI2_Byte &HFF
  loc_A83023: EqI2
  loc_A83024: FFree1Ad var_88
  loc_A83027: BranchF loc_A83092
  loc_A8302A: FLdRfVar var_90
  loc_A8302D: FLdPr Me
  loc_A83030: VCallAd Control_ID_TotalTxt
  loc_A83033: FStAdFunc var_88
  loc_A83036: FLdPr var_88
  loc_A83039:  = Me.Text
  loc_A8303E: LitI2_Byte &HFF
  loc_A83040: LitI2_Byte 0
  loc_A83042: ILdRf var_90
  loc_A83045: LitStr "Superficie total"
  loc_A83048: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A8304D: FStStrNoPop var_94
  loc_A83050: FLdPr Me
  loc_A83053: MemStStrCopy
  loc_A83057: FFreeStr var_90 = ""
  loc_A8305E: FFree1Ad var_88
  loc_A83061: FLdPr Me
  loc_A83064: MemLdStr global_96
  loc_A83067: LitStr vbNullString
  loc_A8306A: NeStr
  loc_A8306C: BranchF loc_A83092
  loc_A8306F: FLdPr Me
  loc_A83072: MemLdStr global_96
  loc_A83075: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8307A: FLdPr Me
  loc_A8307D: VCallAd Control_ID_TotalTxt
  loc_A83080: CVarAd
  loc_A83084: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83089: FFree1Var var_A4 = ""
  loc_A8308C: LitI2_Byte &HFF
  loc_A8308E: IStI2 Cancel
  loc_A83091: ExitProcHresult
  loc_A83092: ExitProcHresult
End Sub

Private Sub EnteRecaCbo_Validate(Cancel As Boolean) 'ACD6A8
  'Data Table: 4B4C74
  loc_ACD590: FLdRfVar var_94
  loc_ACD593: FLdRfVar var_8A
  loc_ACD596: FLdPr Me
  loc_ACD599: VCallAd Control_ID_EnteRecaCbo
  loc_ACD59C: FStAdFunc var_88
  loc_ACD59F: FLdPr var_88
  loc_ACD5A2:  = Me.ListIndex
  loc_ACD5A7: FLdI2 var_8A
  loc_ACD5AA: FLdPr Me
  loc_ACD5AD: VCallAd Control_ID_EnteRecaCbo
  loc_ACD5B0: FStAdFunc var_90
  loc_ACD5B3: FLdPr var_90
  loc_ACD5B6:  = Me.ItemData
  loc_ACD5BB: ILdRf var_94
  loc_ACD5BE: CI2I4
  loc_ACD5BF: FLdPr Me
  loc_ACD5C2: MemStI2 global_104
  loc_ACD5C5: FFreeAd var_88 = ""
  loc_ACD5CC: FLdPr Me
  loc_ACD5CF: MemLdI2 global_104
  loc_ACD5D2: CStrUI1
  loc_ACD5D4: FStStrNoPop var_98
  loc_ACD5D7: ImpAdCallI2 Proc_18_39_A5661C()
  loc_ACD5DC: FStStrNoPop var_9C
  loc_ACD5DF: FLdPr Me
  loc_ACD5E2: MemStStrCopy
  loc_ACD5E6: FFreeStr var_98 = ""
  loc_ACD5ED: FLdPr Me
  loc_ACD5F0: MemLdStr global_96
  loc_ACD5F3: LitStr vbNullString
  loc_ACD5F6: NeStr
  loc_ACD5F8: BranchF loc_ACD61E
  loc_ACD5FB: FLdPr Me
  loc_ACD5FE: MemLdStr global_96
  loc_ACD601: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACD606: LitStr vbNullString
  loc_ACD609: FLdPr Me
  loc_ACD60C: VCallAd Control_ID_DetaEnreLbl
  loc_ACD60F: FStAdFunc var_88
  loc_ACD612: FLdPr var_88
  loc_ACD615: Me.Caption = from_stack_1
  loc_ACD61A: FFree1Ad var_88
  loc_ACD61D: ExitProcHresult
  loc_ACD61E: FLdPr Me
  loc_ACD621: MemLdI2 global_104
  loc_ACD624: ImpAdCallI2 Proc_270_43_A79584()
  loc_ACD629: FLdPr Me
  loc_ACD62C: MemStI2 global_106
  loc_ACD62F: FLdPr Me
  loc_ACD632: MemLdI2 global_106
  loc_ACD635: LitI2_Byte 0
  loc_ACD637: EqI2
  loc_ACD638: BranchF loc_ACD65B
  loc_ACD63B: LitStr "El ente recaudador no tiene asociado ningún numero de grupo."
  loc_ACD63E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ACD643: LitStr vbNullString
  loc_ACD646: FLdPr Me
  loc_ACD649: VCallAd Control_ID_DetaEnreLbl
  loc_ACD64C: FStAdFunc var_88
  loc_ACD64F: FLdPr var_88
  loc_ACD652: Me.Caption = from_stack_1
  loc_ACD657: FFree1Ad var_88
  loc_ACD65A: ExitProcHresult
  loc_ACD65B: LitStr "Código: "
  loc_ACD65E: FLdPr Me
  loc_ACD661: MemLdI2 global_104
  loc_ACD664: CStrUI1
  loc_ACD666: FStStrNoPop var_98
  loc_ACD669: ConcatStr
  loc_ACD66A: FStStrNoPop var_9C
  loc_ACD66D: LitStr " - Nro de Grupo: "
  loc_ACD670: ConcatStr
  loc_ACD671: FStStrNoPop var_A0
  loc_ACD674: FLdPr Me
  loc_ACD677: MemLdI2 global_106
  loc_ACD67A: CStrUI1
  loc_ACD67C: FStStrNoPop var_A4
  loc_ACD67F: ConcatStr
  loc_ACD680: FStStrNoPop var_A8
  loc_ACD683: FLdPr Me
  loc_ACD686: VCallAd Control_ID_DetaEnreLbl
  loc_ACD689: FStAdFunc var_88
  loc_ACD68C: FLdPr var_88
  loc_ACD68F: Me.Caption = from_stack_1
  loc_ACD694: FFreeStr var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_ACD6A1: FFree1Ad var_88
  loc_ACD6A4: ExitProcHresult
  loc_ACD6A5: ModI2
  loc_ACD6A6: MulCy
End Sub

Private Sub Form_Load() 'B92F04
  'Data Table: 4B4C74
  loc_B929B0: LitI2_Byte 0
  loc_B929B2: CR8I2
  loc_B929B3: PopFPR4
  loc_B929B4: FLdPr Me
  loc_B929B7: Me.Left = from_stack_1s
  loc_B929BC: LitI2_Byte 0
  loc_B929BE: CR8I2
  loc_B929BF: PopFPR4
  loc_B929C0: FLdPr Me
  loc_B929C3: Me.Top = from_stack_1s
  loc_B929C8: ILdRf Me
  loc_B929CB: CastAd
  loc_B929CE: FStAdFunc var_88
  loc_B929D1: FLdRfVar var_88
  loc_B929D4: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_B929D9: FFree1Ad var_88
  loc_B929DC: LitI4 0
  loc_B929E1: LitI4 9
  loc_B929E6: FLdRfVar var_8C
  loc_B929E9: Redim
  loc_B929F3: FLdPr Me
  loc_B929F6: VCallAd Control_ID_EnteRecaCbo
  loc_B929F9: CVarAd
  loc_B929FD: ParmAry1St
  loc_B92A03: FLdPr Me
  loc_B92A06: VCallAd Control_ID_BoletoBarraTxt
  loc_B92A09: CVarAd
  loc_B92A0D: ParmAry1St
  loc_B92A13: FLdPr Me
  loc_B92A16: VCallAd Control_ID_PeriBoleTxt
  loc_B92A19: CVarAd
  loc_B92A1D: ParmAry1St
  loc_B92A23: FLdPr Me
  loc_B92A26: VCallAd Control_ID_NumeBoleTxt
  loc_B92A29: CVarAd
  loc_B92A2D: ParmAry1St
  loc_B92A33: FLdPr Me
  loc_B92A36: VCallAd Control_ID_AgregarBoletoCmd
  loc_B92A39: CVarAd
  loc_B92A3D: ParmAry1St
  loc_B92A43: FLdPr Me
  loc_B92A46: VCallAd Control_ID_ConfirmarCmd
  loc_B92A49: CVarAd
  loc_B92A4D: ParmAry1St
  loc_B92A53: FLdPr Me
  loc_B92A56: VCallAd Control_ID_TotalTxt
  loc_B92A59: CVarAd
  loc_B92A5D: ParmAry1St
  loc_B92A63: FLdPr Me
  loc_B92A66: VCallAd Control_ID_PagaConTxt
  loc_B92A69: CVarAd
  loc_B92A6D: ParmAry1St
  loc_B92A73: FLdPr Me
  loc_B92A76: VCallAd Control_ID_VueltoTxt
  loc_B92A79: CVarAd
  loc_B92A7D: ParmAry1St
  loc_B92A83: FLdPr Me
  loc_B92A86: VCallAd Control_ID_cmdSalir
  loc_B92A89: CVarAd
  loc_B92A8D: ParmAry1St
  loc_B92A93: FLdRfVar var_8C
  loc_B92A96: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B92A9B: FLdRfVar var_8C
  loc_B92A9E: Erase
  loc_B92A9F: LitStr vbNullString
  loc_B92AA2: FLdPr Me
  loc_B92AA5: MemStStrCopy
  loc_B92AA9: FLdPr Me
  loc_B92AAC: MemLdRfVar from_stack_1.global_84
  loc_B92AAF: NewIfNullAd
  loc_B92AB2: FStAd var_130 
  loc_B92AB6: LitStr "SELECT CodiEnre, DetaEnre, NumeAcpa FROM infogov.entereca ORDER BY CodiEnre"
  loc_B92AB9: FLdPr var_130
  loc_B92ABC: Call clsentereca.RedefineRS(from_stack_1v)
  loc_B92AC1: FLdRfVar var_134
  loc_B92AC4: FLdPr var_130
  loc_B92AC7: from_stack_1 = clsentereca.RecordCount
  loc_B92ACC: ILdRf var_134
  loc_B92ACF: LitI4 0
  loc_B92AD4: GtI4
  loc_B92AD5: BranchF loc_B92B7A
  loc_B92AD8: FLdPr var_130
  loc_B92ADB: Call clsentereca.MoveFirst()
  loc_B92AE0: FLdPr Me
  loc_B92AE3: VCallAd Control_ID_EnteRecaCbo
  loc_B92AE6: FStAdFunc var_88
  loc_B92AE9: FLdPr var_88
  loc_B92AEC: Me.Clear
  loc_B92AF1: FFree1Ad var_88
  loc_B92AF4: LitVar_Missing var_148
  loc_B92AF7: PopAdLdVar
  loc_B92AF8: FLdRfVar var_138
  loc_B92AFB: FLdPr var_130
  loc_B92AFE: from_stack_1 = clsentereca.DetaEnre
  loc_B92B03: ILdRf var_138
  loc_B92B06: FLdPr Me
  loc_B92B09: VCallAd Control_ID_EnteRecaCbo
  loc_B92B0C: FStAdFunc var_88
  loc_B92B0F: FLdPr var_88
  loc_B92B12: Me.AddItem from_stack_1, from_stack_2
  loc_B92B17: FFree1Str var_138
  loc_B92B1A: FFree1Ad var_88
  loc_B92B1D: FLdRfVar var_14A
  loc_B92B20: FLdPr var_130
  loc_B92B23: from_stack_1 = clsentereca.CodiEnre
  loc_B92B28: FLdI2 var_14A
  loc_B92B2B: CI4UI1
  loc_B92B2C: FLdRfVar var_14C
  loc_B92B2F: FLdPr Me
  loc_B92B32: VCallAd Control_ID_EnteRecaCbo
  loc_B92B35: FStAdFunc var_88
  loc_B92B38: FLdPr var_88
  loc_B92B3B:  = Me.NewIndex
  loc_B92B40: FLdI2 var_14C
  loc_B92B43: FLdPr Me
  loc_B92B46: VCallAd Control_ID_EnteRecaCbo
  loc_B92B49: FStAdFunc var_150
  loc_B92B4C: FLdPr var_150
  loc_B92B4F: Me.ItemData = from_stack_1
  loc_B92B54: FFreeAd var_88 = ""
  loc_B92B5B: LitI2_Byte 1
  loc_B92B5D: PopTmpLdAd2 var_14A
  loc_B92B60: FLdPr var_130
  loc_B92B63: Call clsentereca.Move(from_stack_1v)
  loc_B92B68: FLdRfVar var_14A
  loc_B92B6B: FLdPr var_130
  loc_B92B6E: from_stack_1 = clsentereca.EOF
  loc_B92B73: FLdI2 var_14A
  loc_B92B76: NotI4
  loc_B92B77: BranchT loc_B92AF4
  loc_B92B7A: LitNothing
  loc_B92B7C: FStAd var_130 
  loc_B92B80: LitI2_Byte 0
  loc_B92B82: FLdPr Me
  loc_B92B85: VCallAd Control_ID_EnteRecaCbo
  loc_B92B88: FStAdFunc var_88
  loc_B92B8B: FLdPr var_88
  loc_B92B8E: Me.ListIndex = from_stack_1
  loc_B92B93: FFree1Ad var_88
  loc_B92B96: LitI2_Byte 0
  loc_B92B98: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_B92B9D: CStrDate
  loc_B92B9F: FStStrNoPop var_138
  loc_B92BA2: FLdPr Me
  loc_B92BA5: MemStStrCopy
  loc_B92BA9: FFree1Str var_138
  loc_B92BAC: FLdPr Me
  loc_B92BAF: VCallAd Control_ID_BoletoFlex
  loc_B92BB2: FStAdFunc var_154
  loc_B92BB5: LitVarI4
  loc_B92BBD: PopAdLdVar
  loc_B92BBE: LitVarI4
  loc_B92BC6: PopAdLdVar
  loc_B92BC7: FLdPr var_154
  loc_B92BCA: LateIdCallSt
  loc_B92BD2: LitVarI4
  loc_B92BDA: PopAdLdVar
  loc_B92BDB: LitVarI4
  loc_B92BE3: PopAdLdVar
  loc_B92BE4: FLdPr var_154
  loc_B92BE7: LateIdCallSt
  loc_B92BEF: LitVarI4
  loc_B92BF7: PopAdLdVar
  loc_B92BF8: LitVarI4
  loc_B92C00: PopAdLdVar
  loc_B92C01: FLdPr var_154
  loc_B92C04: LateIdCallSt
  loc_B92C0C: LitVarI4
  loc_B92C14: PopAdLdVar
  loc_B92C15: LitVarI4
  loc_B92C1D: PopAdLdVar
  loc_B92C1E: FLdPr var_154
  loc_B92C21: LateIdCallSt
  loc_B92C29: LitVarI4
  loc_B92C31: PopAdLdVar
  loc_B92C32: LitVarI4
  loc_B92C3A: PopAdLdVar
  loc_B92C3B: FLdPr var_154
  loc_B92C3E: LateIdCallSt
  loc_B92C46: LitVarI4
  loc_B92C4E: PopAdLdVar
  loc_B92C4F: LitVarI4
  loc_B92C57: PopAdLdVar
  loc_B92C58: FLdPr var_154
  loc_B92C5B: LateIdCallSt
  loc_B92C63: LitVarI4
  loc_B92C6B: PopAdLdVar
  loc_B92C6C: LitVarI4
  loc_B92C74: PopAdLdVar
  loc_B92C75: FLdPr var_154
  loc_B92C78: LateIdCallSt
  loc_B92C80: LitVarI4
  loc_B92C88: PopAdLdVar
  loc_B92C89: LitVarI4
  loc_B92C91: PopAdLdVar
  loc_B92C92: FLdPr var_154
  loc_B92C95: LateIdCallSt
  loc_B92C9D: LitVarI4
  loc_B92CA5: PopAdLdVar
  loc_B92CA6: LitVarI4
  loc_B92CAE: PopAdLdVar
  loc_B92CAF: FLdPr var_154
  loc_B92CB2: LateIdCallSt
  loc_B92CBA: LitVarI4
  loc_B92CC2: PopAdLdVar
  loc_B92CC3: LitVarI4
  loc_B92CCB: PopAdLdVar
  loc_B92CCC: FLdPr var_154
  loc_B92CCF: LateIdCallSt
  loc_B92CD7: LitVarI4
  loc_B92CDF: PopAdLdVar
  loc_B92CE0: LitVarI4
  loc_B92CE8: PopAdLdVar
  loc_B92CE9: FLdPr var_154
  loc_B92CEC: LateIdCallSt
  loc_B92CF4: LitVarI4
  loc_B92CFC: PopAdLdVar
  loc_B92CFD: LitVarI4
  loc_B92D05: PopAdLdVar
  loc_B92D06: FLdPr var_154
  loc_B92D09: LateIdCallSt
  loc_B92D11: LitVarI4
  loc_B92D19: PopAdLdVar
  loc_B92D1A: LitVarI4
  loc_B92D22: PopAdLdVar
  loc_B92D23: FLdPr var_154
  loc_B92D26: LateIdCallSt
  loc_B92D2E: LitVarI4
  loc_B92D36: PopAdLdVar
  loc_B92D37: LitVarI4
  loc_B92D3F: PopAdLdVar
  loc_B92D40: LitVarStr var_194, "Periodo"
  loc_B92D45: PopAdLdVar
  loc_B92D46: FLdPr var_154
  loc_B92D49: LateIdCallSt
  loc_B92D51: LitVarI4
  loc_B92D59: PopAdLdVar
  loc_B92D5A: LitVarI4
  loc_B92D62: PopAdLdVar
  loc_B92D63: LitVarStr var_194, "Boleto"
  loc_B92D68: PopAdLdVar
  loc_B92D69: FLdPr var_154
  loc_B92D6C: LateIdCallSt
  loc_B92D74: LitVarI4
  loc_B92D7C: PopAdLdVar
  loc_B92D7D: LitVarI4
  loc_B92D85: PopAdLdVar
  loc_B92D86: LitVarStr var_194, "Of."
  loc_B92D8B: PopAdLdVar
  loc_B92D8C: FLdPr var_154
  loc_B92D8F: LateIdCallSt
  loc_B92D97: LitVarI4
  loc_B92D9F: PopAdLdVar
  loc_B92DA0: LitVarI4
  loc_B92DA8: PopAdLdVar
  loc_B92DA9: LitVarStr var_194, "Cuenta"
  loc_B92DAE: PopAdLdVar
  loc_B92DAF: FLdPr var_154
  loc_B92DB2: LateIdCallSt
  loc_B92DBA: LitVarI4
  loc_B92DC2: PopAdLdVar
  loc_B92DC3: LitVarI4
  loc_B92DCB: PopAdLdVar
  loc_B92DCC: LitVarStr var_194, "Apellido Y Nombre"
  loc_B92DD1: PopAdLdVar
  loc_B92DD2: FLdPr var_154
  loc_B92DD5: LateIdCallSt
  loc_B92DDD: LitVarI4
  loc_B92DE5: PopAdLdVar
  loc_B92DE6: LitVarI4
  loc_B92DEE: PopAdLdVar
  loc_B92DEF: LitVarStr var_194, "Capital"
  loc_B92DF4: PopAdLdVar
  loc_B92DF5: FLdPr var_154
  loc_B92DF8: LateIdCallSt
  loc_B92E00: LitVarI4
  loc_B92E08: PopAdLdVar
  loc_B92E09: LitVarI4
  loc_B92E11: PopAdLdVar
  loc_B92E12: LitVarStr var_194, "Desc. Cap."
  loc_B92E17: PopAdLdVar
  loc_B92E18: FLdPr var_154
  loc_B92E1B: LateIdCallSt
  loc_B92E23: LitVarI4
  loc_B92E2B: PopAdLdVar
  loc_B92E2C: LitVarI4
  loc_B92E34: PopAdLdVar
  loc_B92E35: LitVarStr var_194, "Recargo"
  loc_B92E3A: PopAdLdVar
  loc_B92E3B: FLdPr var_154
  loc_B92E3E: LateIdCallSt
  loc_B92E46: LitVarI4
  loc_B92E4E: PopAdLdVar
  loc_B92E4F: LitVarI4
  loc_B92E57: PopAdLdVar
  loc_B92E58: LitVarStr var_194, "Desc. Rec."
  loc_B92E5D: PopAdLdVar
  loc_B92E5E: FLdPr var_154
  loc_B92E61: LateIdCallSt
  loc_B92E69: LitVarI4
  loc_B92E71: PopAdLdVar
  loc_B92E72: LitVarI4
  loc_B92E7A: PopAdLdVar
  loc_B92E7B: LitVarStr var_194, "Interes"
  loc_B92E80: PopAdLdVar
  loc_B92E81: FLdPr var_154
  loc_B92E84: LateIdCallSt
  loc_B92E8C: LitVarI4
  loc_B92E94: PopAdLdVar
  loc_B92E95: LitVarI4
  loc_B92E9D: PopAdLdVar
  loc_B92E9E: LitVarStr var_194, "Apremio"
  loc_B92EA3: PopAdLdVar
  loc_B92EA4: FLdPr var_154
  loc_B92EA7: LateIdCallSt
  loc_B92EAF: LitVarI4
  loc_B92EB7: PopAdLdVar
  loc_B92EB8: LitVarI4
  loc_B92EC0: PopAdLdVar
  loc_B92EC1: LitVarStr var_194, "Total"
  loc_B92EC6: PopAdLdVar
  loc_B92EC7: FLdPr var_154
  loc_B92ECA: LateIdCallSt
  loc_B92ED2: LitVarI4
  loc_B92EDA: PopAdLdVar
  loc_B92EDB: LitVarI4
  loc_B92EE3: PopAdLdVar
  loc_B92EE4: LitVarStr var_194, "Usuario"
  loc_B92EE9: PopAdLdVar
  loc_B92EEA: FLdPr var_154
  loc_B92EED: LateIdCallSt
  loc_B92EF5: LitNothing
  loc_B92EF7: FStAd var_154 
  loc_B92EFB: Call Proc_213_27_AF1F60()
  loc_B92F00: ExitProcHresult
  loc_B92F01: Ary1LdRf
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9D99B0
  'Data Table: 4B4C74
  loc_9D9998: ILdI2 KeyAscii
  loc_9D999B: LitI2_Byte &HD
  loc_9D999D: EqI2
  loc_9D999E: BranchF loc_9D99AF
  loc_9D99A1: LitVar_TRUE var_A4
  loc_9D99A4: LitStr "{Tab}"
  loc_9D99A7: ImpAdCallFPR4 SendKeys , 
  loc_9D99AC: FFree1Var var_A4 = ""
  loc_9D99AF: ExitProcHresult
End Sub

Private Sub PagaConTxt_GotFocus() '9C3770
  'Data Table: 4B4C74
  loc_9C375C: FLdPr Me
  loc_9C375F: VCallAd Control_ID_PagaConTxt
  loc_9C3762: CVarAd
  loc_9C3766: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C376B: FFree1Var var_94 = ""
  loc_9C376E: ExitProcHresult
  loc_9C376F: CR8I4
End Sub

Private Sub PagaConTxt_KeyPress(KeyAscii As Integer) 'A06670
  'Data Table: 4B4C74
  loc_A0663C: LitStr "1234567890,."
  loc_A0663F: FStStrCopy var_88
  loc_A06642: FLdRfVar var_88
  loc_A06645: ILdRf KeyAscii
  loc_A06648: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_A0664D: IStI2 KeyAscii
  loc_A06650: FFree1Str var_88
  loc_A06653: ILdI2 KeyAscii
  loc_A06656: LitStr "."
  loc_A06659: ImpAdCallI2 Asc()
  loc_A0665E: EqI2
  loc_A0665F: BranchF loc_A0666D
  loc_A06662: LitStr ","
  loc_A06665: ImpAdCallI2 Asc()
  loc_A0666A: IStI2 KeyAscii
  loc_A0666D: ExitProcHresult
End Sub

Private Sub PagaConTxt_LostFocus() 'A74998
  'Data Table: 4B4C74
  loc_A74934: FLdRfVar var_8C
  loc_A74937: FLdPr Me
  loc_A7493A: VCallAd Control_ID_PagaConTxt
  loc_A7493D: FStAdFunc var_88
  loc_A74940: FLdPr var_88
  loc_A74943:  = Me.Text
  loc_A74948: LitI4 1
  loc_A7494D: LitI4 1
  loc_A74952: LitVarStr var_AC, "0.00"
  loc_A74957: FStVarCopyObj var_BC
  loc_A7495A: FLdRfVar var_BC
  loc_A7495D: FLdZeroAd var_8C
  loc_A74960: CVarStr var_9C
  loc_A74963: FLdRfVar var_CC
  loc_A74966: ImpAdCallFPR4  = Format(, )
  loc_A7496B: FLdRfVar var_CC
  loc_A7496E: CStrVarVal var_D0
  loc_A74972: FLdPr Me
  loc_A74975: VCallAd Control_ID_PagaConTxt
  loc_A74978: FStAdFunc var_D4
  loc_A7497B: FLdPr var_D4
  loc_A7497E: Me.Text = from_stack_1
  loc_A74983: FFree1Str var_D0
  loc_A74986: FFreeAd var_88 = ""
  loc_A7498D: FFreeVar var_9C = "": var_BC = ""
  loc_A74996: ExitProcHresult
End Sub

Private Sub PagaConTxt_Validate(Cancel As Boolean) 'A8392C
  'Data Table: 4B4C74
  loc_A838A4: FLdRfVar var_8A
  loc_A838A7: FLdPrThis
  loc_A838A8: VCallAd Control_ID_PagaConTxt
  loc_A838AB: FStAdFunc var_88
  loc_A838AE: FLdPr var_88
  loc_A838B1:  = Me.Enabled
  loc_A838B6: FLdI2 var_8A
  loc_A838B9: LitI2_Byte &HFF
  loc_A838BB: EqI2
  loc_A838BC: FFree1Ad var_88
  loc_A838BF: BranchF loc_A8392A
  loc_A838C2: FLdRfVar var_90
  loc_A838C5: FLdPr Me
  loc_A838C8: VCallAd Control_ID_PagaConTxt
  loc_A838CB: FStAdFunc var_88
  loc_A838CE: FLdPr var_88
  loc_A838D1:  = Me.Text
  loc_A838D6: LitI2_Byte &HFF
  loc_A838D8: LitI2_Byte 0
  loc_A838DA: ILdRf var_90
  loc_A838DD: LitStr "Superficie total"
  loc_A838E0: ImpAdCallI2 Proc_18_16_A089D8(, , , )
  loc_A838E5: FStStrNoPop var_94
  loc_A838E8: FLdPr Me
  loc_A838EB: MemStStrCopy
  loc_A838EF: FFreeStr var_90 = ""
  loc_A838F6: FFree1Ad var_88
  loc_A838F9: FLdPr Me
  loc_A838FC: MemLdStr global_96
  loc_A838FF: LitStr vbNullString
  loc_A83902: NeStr
  loc_A83904: BranchF loc_A8392A
  loc_A83907: FLdPr Me
  loc_A8390A: MemLdStr global_96
  loc_A8390D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A83912: FLdPr Me
  loc_A83915: VCallAd Control_ID_PagaConTxt
  loc_A83918: CVarAd
  loc_A8391C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A83921: FFree1Var var_A4 = ""
  loc_A83924: LitI2_Byte &HFF
  loc_A83926: IStI2 Cancel
  loc_A83929: ExitProcHresult
  loc_A8392A: ExitProcHresult
End Sub

Private Sub NumeBoleTxt_GotFocus() '9C3698
  'Data Table: 4B4C74
  loc_9C3684: FLdPr Me
  loc_9C3687: VCallAd Control_ID_NumeBoleTxt
  loc_9C368A: CVarAd
  loc_9C368E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3693: FFree1Var var_94 = ""
  loc_9C3696: ExitProcHresult
End Sub

Private Sub NumeBoleTxt_KeyPress(KeyAscii As Integer) '9DB714
  'Data Table: 4B4C74
  loc_9DB6FC: LitStr "0123456789"
  loc_9DB6FF: FStStrCopy var_88
  loc_9DB702: FLdRfVar var_88
  loc_9DB705: ILdRf KeyAscii
  loc_9DB708: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DB70D: IStI2 KeyAscii
  loc_9DB710: FFree1Str var_88
  loc_9DB713: ExitProcHresult
End Sub

Private Sub NumeBoleTxt_Validate(Cancel As Boolean) 'A85018
  'Data Table: 4B4C74
  loc_A84F8C: FLdRfVar var_8A
  loc_A84F8F: FLdPr Me
  loc_A84F92: VCallAd Control_ID_NumeBoleTxt
  loc_A84F95: FStAdFunc var_88
  loc_A84F98: FLdPr var_88
  loc_A84F9B:  = Me.Enabled
  loc_A84FA0: FLdI2 var_8A
  loc_A84FA3: LitI2_Byte &HFF
  loc_A84FA5: EqI2
  loc_A84FA6: FFree1Ad var_88
  loc_A84FA9: BranchF loc_A85014
  loc_A84FAC: FLdRfVar var_90
  loc_A84FAF: FLdPr Me
  loc_A84FB2: VCallAd Control_ID_NumeBoleTxt
  loc_A84FB5: FStAdFunc var_88
  loc_A84FB8: FLdPr var_88
  loc_A84FBB:  = Me.Text
  loc_A84FC0: LitI2_Byte &HFF
  loc_A84FC2: LitI2_Byte 0
  loc_A84FC4: ILdRf var_90
  loc_A84FC7: LitStr "Numero de Boleto"
  loc_A84FCA: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A84FCF: FStStrNoPop var_94
  loc_A84FD2: FLdPr Me
  loc_A84FD5: MemStStrCopy
  loc_A84FD9: FFreeStr var_90 = ""
  loc_A84FE0: FFree1Ad var_88
  loc_A84FE3: FLdPr Me
  loc_A84FE6: MemLdStr global_96
  loc_A84FE9: LitStr vbNullString
  loc_A84FEC: NeStr
  loc_A84FEE: BranchF loc_A85014
  loc_A84FF1: FLdPr Me
  loc_A84FF4: MemLdStr global_96
  loc_A84FF7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A84FFC: FLdPr Me
  loc_A84FFF: VCallAd Control_ID_NumeBoleTxt
  loc_A85002: CVarAd
  loc_A85006: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8500B: FFree1Var var_A4 = ""
  loc_A8500E: LitI2_Byte &HFF
  loc_A85010: IStI2 Cancel
  loc_A85013: ExitProcHresult
  loc_A85014: ExitProcHresult
  loc_A85015: FStAdFunc var_8C
End Sub

Private Sub PeriBoleTxt_GotFocus() '9C3188
  'Data Table: 4B4C74
  loc_9C3174: FLdPr Me
  loc_9C3177: VCallAd Control_ID_PeriBoleTxt
  loc_9C317A: CVarAd
  loc_9C317E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C3183: FFree1Var var_94 = ""
  loc_9C3186: ExitProcHresult
End Sub

Private Sub PeriBoleTxt_KeyPress(KeyAscii As Integer) '9DCAF8
  'Data Table: 4B4C74
  loc_9DCAE0: LitStr "0123456789"
  loc_9DCAE3: FStStrCopy var_88
  loc_9DCAE6: FLdRfVar var_88
  loc_9DCAE9: ILdRf KeyAscii
  loc_9DCAEC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DCAF1: IStI2 KeyAscii
  loc_9DCAF4: FFree1Str var_88
  loc_9DCAF7: ExitProcHresult
End Sub

Private Sub PeriBoleTxt_Validate(Cancel As Boolean) 'A851B0
  'Data Table: 4B4C74
  loc_A85124: FLdRfVar var_8A
  loc_A85127: FLdPr Me
  loc_A8512A: VCallAd Control_ID_PeriBoleTxt
  loc_A8512D: FStAdFunc var_88
  loc_A85130: FLdPr var_88
  loc_A85133:  = Me.Enabled
  loc_A85138: FLdI2 var_8A
  loc_A8513B: LitI2_Byte &HFF
  loc_A8513D: EqI2
  loc_A8513E: FFree1Ad var_88
  loc_A85141: BranchF loc_A851AC
  loc_A85144: FLdRfVar var_90
  loc_A85147: FLdPr Me
  loc_A8514A: VCallAd Control_ID_PeriBoleTxt
  loc_A8514D: FStAdFunc var_88
  loc_A85150: FLdPr var_88
  loc_A85153:  = Me.Text
  loc_A85158: LitI2_Byte &HFF
  loc_A8515A: LitI2_Byte 0
  loc_A8515C: ILdRf var_90
  loc_A8515F: LitStr "Periodo de Boleto"
  loc_A85162: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A85167: FStStrNoPop var_94
  loc_A8516A: FLdPr Me
  loc_A8516D: MemStStrCopy
  loc_A85171: FFreeStr var_90 = ""
  loc_A85178: FFree1Ad var_88
  loc_A8517B: FLdPr Me
  loc_A8517E: MemLdStr global_96
  loc_A85181: LitStr vbNullString
  loc_A85184: NeStr
  loc_A85186: BranchF loc_A851AC
  loc_A85189: FLdPr Me
  loc_A8518C: MemLdStr global_96
  loc_A8518F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A85194: FLdPr Me
  loc_A85197: VCallAd Control_ID_PeriBoleTxt
  loc_A8519A: CVarAd
  loc_A8519E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A851A3: FFree1Var var_A4 = ""
  loc_A851A6: LitI2_Byte &HFF
  loc_A851A8: IStI2 Cancel
  loc_A851AB: ExitProcHresult
  loc_A851AC: ExitProcHresult
  loc_A851AD: FLdRfVar var_9C
End Sub

Private Sub AgregarBoletoCmd_Click() 'BECAD0
  'Data Table: 4B4C74
  loc_BEC3B0: LitI2_Byte 0
  loc_BEC3B2: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BEC3B7: FStFPR8 var_94
  loc_BEC3BA: FLdPr Me
  loc_BEC3BD: MemLdI2 global_106
  loc_BEC3C0: CI4UI1
  loc_BEC3C1: FLdFPR8 var_94
  loc_BEC3C4: CStrDate
  loc_BEC3C6: FStStrNoPop var_88
  loc_BEC3C9: ImpAdCallI2 Proc_18_91_AC1E90(, )
  loc_BEC3CE: FStStrNoPop var_8C
  loc_BEC3D1: FLdPr Me
  loc_BEC3D4: MemStStrCopy
  loc_BEC3D8: FFreeStr var_88 = ""
  loc_BEC3DF: FLdPr Me
  loc_BEC3E2: MemLdStr global_96
  loc_BEC3E5: LitStr vbNullString
  loc_BEC3E8: NeStr
  loc_BEC3EA: BranchF loc_BEC40B
  loc_BEC3ED: FLdPr Me
  loc_BEC3F0: MemLdStr global_96
  loc_BEC3F3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEC3F8: FLdPr Me
  loc_BEC3FB: VCallAd Control_ID_NumeBoleTxt
  loc_BEC3FE: CVarAd
  loc_BEC402: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BEC407: FFree1Var var_A4 = ""
  loc_BEC40A: ExitProcHresult
  loc_BEC40B: LitStr "SELECT PeriBole, NumeBole, CodiOfic, CuenCtct, FeveBole, CodiTili, NumeLiqu, infogov.persona.DetaPers, tipobole, EstaBole,"
  loc_BEC40E: LitStr " CapiBole, DecaBole, RecaBole, DereBole, InteBole, ExenBole, ApreBole, TotaBole, boleto.CodiUsua FROM boleto "
  loc_BEC411: ConcatStr
  loc_BEC412: FStStrNoPop var_88
  loc_BEC415: LitStr " LEFT JOIN infogov.persona ON boleto.CucuPers = infogov.persona.CucuPers"
  loc_BEC418: ConcatStr
  loc_BEC419: FStStrNoPop var_8C
  loc_BEC41C: LitStr " WHERE PeriBole = "
  loc_BEC41F: ConcatStr
  loc_BEC420: FStStrNoPop var_B0
  loc_BEC423: FLdRfVar var_AC
  loc_BEC426: FLdPr Me
  loc_BEC429: VCallAd Control_ID_PeriBoleTxt
  loc_BEC42C: FStAdFunc var_A8
  loc_BEC42F: FLdPr var_A8
  loc_BEC432:  = Me.Text
  loc_BEC437: ILdRf var_AC
  loc_BEC43A: ConcatStr
  loc_BEC43B: FStStrNoPop var_B4
  loc_BEC43E: LitStr " AND NumeBole = "
  loc_BEC441: ConcatStr
  loc_BEC442: FStStrNoPop var_C0
  loc_BEC445: FLdRfVar var_BC
  loc_BEC448: FLdPr Me
  loc_BEC44B: VCallAd Control_ID_NumeBoleTxt
  loc_BEC44E: FStAdFunc var_B8
  loc_BEC451: FLdPr var_B8
  loc_BEC454:  = Me.Text
  loc_BEC459: ILdRf var_BC
  loc_BEC45C: ConcatStr
  loc_BEC45D: FStStrNoPop var_C4
  loc_BEC460: LitStr " ORDER BY PeriBole, NumeBole"
  loc_BEC463: ConcatStr
  loc_BEC464: FStStrNoPop var_C8
  loc_BEC467: FLdPr Me
  loc_BEC46A: MemLdRfVar from_stack_1.global_60
  loc_BEC46D: NewIfNullPr clsboleto
  loc_BEC470: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BEC475: FFreeStr var_88 = "": var_8C = "": var_B0 = "": var_AC = "": var_B4 = "": var_C0 = "": var_BC = "": var_C4 = ""
  loc_BEC48A: FFreeAd var_A8 = ""
  loc_BEC491: FLdRfVar var_CC
  loc_BEC494: FLdPr Me
  loc_BEC497: MemLdRfVar from_stack_1.global_60
  loc_BEC49A: NewIfNullPr clsboleto
  loc_BEC49D: from_stack_1 = clsboleto.RecordCount
  loc_BEC4A2: ILdRf var_CC
  loc_BEC4A5: LitI4 0
  loc_BEC4AA: GtI4
  loc_BEC4AB: BranchF loc_BECACF
  loc_BEC4AE: FLdRfVar var_88
  loc_BEC4B1: FLdPr Me
  loc_BEC4B4: MemLdRfVar from_stack_1.global_60
  loc_BEC4B7: NewIfNullPr clsboleto
  loc_BEC4BA: from_stack_1 = clsboleto.EstaBole
  loc_BEC4BF: ILdRf var_88
  loc_BEC4C2: LitStr "Pagado"
  loc_BEC4C5: EqStr
  loc_BEC4C7: FFree1Str var_88
  loc_BEC4CA: BranchF loc_BEC4FF
  loc_BEC4CD: LitStr "El boleto se encuenta pagado, verifique..."
  loc_BEC4D0: FLdPr Me
  loc_BEC4D3: MemStStrCopy
  loc_BEC4D7: FLdPr Me
  loc_BEC4DA: MemLdStr global_96
  loc_BEC4DD: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEC4E2: LitStr vbNullString
  loc_BEC4E5: FLdPr Me
  loc_BEC4E8: MemStStrCopy
  loc_BEC4EC: FLdPr Me
  loc_BEC4EF: VCallAd Control_ID_NumeBoleTxt
  loc_BEC4F2: CVarAd
  loc_BEC4F6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BEC4FB: FFree1Var var_A4 = ""
  loc_BEC4FE: ExitProcHresult
  loc_BEC4FF: FLdRfVar var_88
  loc_BEC502: FLdPr Me
  loc_BEC505: MemLdRfVar from_stack_1.global_60
  loc_BEC508: NewIfNullPr clsboleto
  loc_BEC50B: from_stack_1 = clsboleto.EstaBole
  loc_BEC510: ILdRf var_88
  loc_BEC513: LitStr "Actualizado"
  loc_BEC516: EqStr
  loc_BEC518: FFree1Str var_88
  loc_BEC51B: BranchF loc_BEC550
  loc_BEC51E: LitStr "El boleto se encuenta pagado y actualizado en la cuenta corriente, verifique..."
  loc_BEC521: FLdPr Me
  loc_BEC524: MemStStrCopy
  loc_BEC528: FLdPr Me
  loc_BEC52B: MemLdStr global_96
  loc_BEC52E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEC533: LitStr vbNullString
  loc_BEC536: FLdPr Me
  loc_BEC539: MemStStrCopy
  loc_BEC53D: FLdPr Me
  loc_BEC540: VCallAd Control_ID_NumeBoleTxt
  loc_BEC543: CVarAd
  loc_BEC547: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BEC54C: FFree1Var var_A4 = ""
  loc_BEC54F: ExitProcHresult
  loc_BEC550: FLdRfVar var_88
  loc_BEC553: FLdPr Me
  loc_BEC556: MemLdRfVar from_stack_1.global_60
  loc_BEC559: NewIfNullPr clsboleto
  loc_BEC55C: from_stack_1 = clsboleto.EstaBole
  loc_BEC561: ILdRf var_88
  loc_BEC564: LitStr "Anulado"
  loc_BEC567: EqStr
  loc_BEC569: FFree1Str var_88
  loc_BEC56C: BranchF loc_BEC5A1
  loc_BEC56F: LitStr "El boleto se encuenta anulado, verifique..."
  loc_BEC572: FLdPr Me
  loc_BEC575: MemStStrCopy
  loc_BEC579: FLdPr Me
  loc_BEC57C: MemLdStr global_96
  loc_BEC57F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEC584: LitStr vbNullString
  loc_BEC587: FLdPr Me
  loc_BEC58A: MemStStrCopy
  loc_BEC58E: FLdPr Me
  loc_BEC591: VCallAd Control_ID_NumeBoleTxt
  loc_BEC594: CVarAd
  loc_BEC598: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_BEC59D: FFree1Var var_A4 = ""
  loc_BEC5A0: ExitProcHresult
  loc_BEC5A1: LitI2_Byte 1
  loc_BEC5A3: FLdPr Me
  loc_BEC5A6: MemLdRfVar from_stack_1.global_92
  loc_BEC5A9: FLdPr Me
  loc_BEC5AC: VCallAd Control_ID_BoletoFlex
  loc_BEC5AF: FStAdFunc var_A8
  loc_BEC5B2: FLdPr var_A8
  loc_BEC5B5: LateIdLdVar var_A4 DispID_4 0
  loc_BEC5BC: CI4Var
  loc_BEC5BE: LitI4 1
  loc_BEC5C3: SubI4
  loc_BEC5C4: CI2I4
  loc_BEC5C5: FFree1Ad var_A8
  loc_BEC5C8: FFree1Var var_A4 = ""
  loc_BEC5CB: ForI2 var_D0
  loc_BEC5D1: FLdPr Me
  loc_BEC5D4: MemLdI2 global_92
  loc_BEC5D7: CI4UI1
  loc_BEC5D8: CVarI4
  loc_BEC5DC: PopAdLdVar
  loc_BEC5DD: LitVarI4
  loc_BEC5E5: PopAdLdVar
  loc_BEC5E6: FLdPr Me
  loc_BEC5E9: VCallAd Control_ID_BoletoFlex
  loc_BEC5EC: FStAdFunc var_A8
  loc_BEC5EF: FLdPr var_A8
  loc_BEC5F2: LateIdCallLdVar
  loc_BEC5FC: CStrVarTmp
  loc_BEC5FD: FStStrNoPop var_8C
  loc_BEC600: FLdRfVar var_88
  loc_BEC603: FLdPr Me
  loc_BEC606: VCallAd Control_ID_PeriBoleTxt
  loc_BEC609: FStAdFunc var_B8
  loc_BEC60C: FLdPr var_B8
  loc_BEC60F:  = Me.Text
  loc_BEC614: ILdRf var_88
  loc_BEC617: EqStr
  loc_BEC619: FLdPr Me
  loc_BEC61C: MemLdI2 global_92
  loc_BEC61F: CI4UI1
  loc_BEC620: CVarI4
  loc_BEC624: PopAdLdVar
  loc_BEC625: LitVarI4
  loc_BEC62D: PopAdLdVar
  loc_BEC62E: FLdPr Me
  loc_BEC631: VCallAd Control_ID_BoletoFlex
  loc_BEC634: FStAdFunc var_154
  loc_BEC637: FLdPr var_154
  loc_BEC63A: LateIdCallLdVar
  loc_BEC644: CStrVarTmp
  loc_BEC645: FStStrNoPop var_B0
  loc_BEC648: FLdRfVar var_AC
  loc_BEC64B: FLdPr Me
  loc_BEC64E: VCallAd Control_ID_NumeBoleTxt
  loc_BEC651: FStAdFunc var_168
  loc_BEC654: FLdPr var_168
  loc_BEC657:  = Me.Text
  loc_BEC65C: ILdRf var_AC
  loc_BEC65F: EqStr
  loc_BEC661: AndI4
  loc_BEC662: FFreeStr var_8C = "": var_88 = "": var_B0 = ""
  loc_BEC66D: FFreeAd var_A8 = "": var_B8 = "": var_154 = ""
  loc_BEC678: FFreeVar var_A4 = ""
  loc_BEC67F: BranchF loc_BEC6CE
  loc_BEC682: LitStr "El valor que esta ingresando, ya se encuentra ingresado en la fila: "
  loc_BEC685: FLdPr Me
  loc_BEC688: MemLdI2 global_92
  loc_BEC68B: CStrUI1
  loc_BEC68D: FStStrNoPop var_88
  loc_BEC690: ConcatStr
  loc_BEC691: FStStrNoPop var_8C
  loc_BEC694: LitStr ". Verifique"
  loc_BEC697: ConcatStr
  loc_BEC698: FStStrNoPop var_AC
  loc_BEC69B: FLdPr Me
  loc_BEC69E: MemStStrCopy
  loc_BEC6A2: FFreeStr var_88 = "": var_8C = ""
  loc_BEC6AB: FLdPr Me
  loc_BEC6AE: MemLdStr global_96
  loc_BEC6B1: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BEC6B6: FLdPr Me
  loc_BEC6B9: VCallAd Control_ID_BoletoFlex
  loc_BEC6BC: FStAdFunc var_A8
  loc_BEC6BF: FLdPr var_A8
  loc_BEC6C2: LateIdCall
  loc_BEC6CA: FFree1Ad var_A8
  loc_BEC6CD: ExitProcHresult
  loc_BEC6CE: FLdPr Me
  loc_BEC6D1: MemLdRfVar from_stack_1.global_92
  loc_BEC6D4: NextI2 var_D0, loc_BEC5D1
  loc_BEC6D9: FLdRfVar var_94
  loc_BEC6DC: FLdPr Me
  loc_BEC6DF: MemLdRfVar from_stack_1.global_60
  loc_BEC6E2: NewIfNullPr clsboleto
  loc_BEC6E5: from_stack_1 = clsboleto.CapiBole
  loc_BEC6EA: FLdRfVar var_2B8
  loc_BEC6ED: FLdPr Me
  loc_BEC6F0: MemLdRfVar from_stack_1.global_60
  loc_BEC6F3: NewIfNullPr clsboleto
  loc_BEC6F6: from_stack_1 = clsboleto.DecaBole
  loc_BEC6FB: FLdRfVar var_320
  loc_BEC6FE: FLdPr Me
  loc_BEC701: MemLdRfVar from_stack_1.global_60
  loc_BEC704: NewIfNullPr clsboleto
  loc_BEC707: from_stack_1 = clsboleto.RecaBole
  loc_BEC70C: FLdRfVar var_398
  loc_BEC70F: FLdPr Me
  loc_BEC712: MemLdRfVar from_stack_1.global_60
  loc_BEC715: NewIfNullPr clsboleto
  loc_BEC718: from_stack_1 = clsboleto.DereBole
  loc_BEC71D: FLdRfVar var_420
  loc_BEC720: FLdPr Me
  loc_BEC723: MemLdRfVar from_stack_1.global_60
  loc_BEC726: NewIfNullPr clsboleto
  loc_BEC729: from_stack_1 = clsboleto.InteBole
  loc_BEC72E: FLdRfVar var_4A8
  loc_BEC731: FLdPr Me
  loc_BEC734: MemLdRfVar from_stack_1.global_60
  loc_BEC737: NewIfNullPr clsboleto
  loc_BEC73A: from_stack_1 = clsboleto.ApreBole
  loc_BEC73F: FLdRfVar var_530
  loc_BEC742: FLdPr Me
  loc_BEC745: MemLdRfVar from_stack_1.global_60
  loc_BEC748: NewIfNullPr clsboleto
  loc_BEC74B: from_stack_1 = clsboleto.TotaBole
  loc_BEC750: FLdRfVar var_16A
  loc_BEC753: FLdPr Me
  loc_BEC756: MemLdRfVar from_stack_1.global_60
  loc_BEC759: NewIfNullPr clsboleto
  loc_BEC75C: from_stack_1 = clsboleto.PeriBole
  loc_BEC761: FLdI2 var_16A
  loc_BEC764: CVarI2 var_E0
  loc_BEC767: LitI4 9
  loc_BEC76C: FLdRfVar var_A4
  loc_BEC76F: ImpAdCallFPR4  = Chr()
  loc_BEC774: FLdRfVar var_A4
  loc_BEC777: ConcatVar var_164
  loc_BEC77B: FLdRfVar var_CC
  loc_BEC77E: FLdPr Me
  loc_BEC781: MemLdRfVar from_stack_1.global_60
  loc_BEC784: NewIfNullPr clsboleto
  loc_BEC787: from_stack_1 = clsboleto.NumeBole
  loc_BEC78C: ILdRf var_CC
  loc_BEC78F: CVarI4
  loc_BEC793: ConcatVar var_17C
  loc_BEC797: LitI4 9
  loc_BEC79C: FLdRfVar var_18C
  loc_BEC79F: ImpAdCallFPR4  = Chr()
  loc_BEC7A4: FLdRfVar var_18C
  loc_BEC7A7: ConcatVar var_19C
  loc_BEC7AB: FLdRfVar var_19E
  loc_BEC7AE: FLdPr Me
  loc_BEC7B1: MemLdRfVar from_stack_1.global_60
  loc_BEC7B4: NewIfNullPr clsboleto
  loc_BEC7B7: from_stack_1 = clsboleto.CodiOfic
  loc_BEC7BC: FLdI2 var_19E
  loc_BEC7BF: CVarI2 var_100
  loc_BEC7C2: ConcatVar var_1B0
  loc_BEC7C6: LitI4 9
  loc_BEC7CB: FLdRfVar var_1C0
  loc_BEC7CE: ImpAdCallFPR4  = Chr()
  loc_BEC7D3: FLdRfVar var_1C0
  loc_BEC7D6: ConcatVar var_1D0
  loc_BEC7DA: FLdRfVar var_88
  loc_BEC7DD: FLdPr Me
  loc_BEC7E0: MemLdRfVar from_stack_1.global_60
  loc_BEC7E3: NewIfNullPr clsboleto
  loc_BEC7E6: from_stack_1 = clsboleto.CuenCtct
  loc_BEC7EB: FLdZeroAd var_88
  loc_BEC7EE: CVarStr var_1E0
  loc_BEC7F1: ConcatVar var_1F0
  loc_BEC7F5: LitI4 9
  loc_BEC7FA: FLdRfVar var_200
  loc_BEC7FD: ImpAdCallFPR4  = Chr()
  loc_BEC802: FLdRfVar var_200
  loc_BEC805: ConcatVar var_210
  loc_BEC809: FLdRfVar var_8C
  loc_BEC80C: FLdPr Me
  loc_BEC80F: MemLdRfVar from_stack_1.global_60
  loc_BEC812: NewIfNullPr clsboleto
  loc_BEC815: from_stack_1 = clsboleto.DetaPers
  loc_BEC81A: FLdZeroAd var_8C
  loc_BEC81D: CVarStr var_220
  loc_BEC820: ConcatVar var_230
  loc_BEC824: LitI4 9
  loc_BEC829: FLdRfVar var_240
  loc_BEC82C: ImpAdCallFPR4  = Chr()
  loc_BEC831: FLdRfVar var_240
  loc_BEC834: ConcatVar var_250
  loc_BEC838: LitI4 1
  loc_BEC83D: LitI4 1
  loc_BEC842: LitVarStr var_120, "0.00"
  loc_BEC847: FStVarCopyObj var_270
  loc_BEC84A: FLdRfVar var_270
  loc_BEC84D: FLdFPR8 var_94
  loc_BEC850: CVarR8
  loc_BEC854: FLdRfVar var_280
  loc_BEC857: ImpAdCallFPR4  = Format(, )
  loc_BEC85C: FLdRfVar var_280
  loc_BEC85F: ConcatVar var_290
  loc_BEC863: LitI4 9
  loc_BEC868: FLdRfVar var_2A0
  loc_BEC86B: ImpAdCallFPR4  = Chr()
  loc_BEC870: FLdRfVar var_2A0
  loc_BEC873: ConcatVar var_2B0
  loc_BEC877: LitI4 1
  loc_BEC87C: LitI4 1
  loc_BEC881: LitVarStr var_140, "0.00"
  loc_BEC886: FStVarCopyObj var_2D8
  loc_BEC889: FLdRfVar var_2D8
  loc_BEC88C: FLdFPR8 var_2B8
  loc_BEC88F: CVarR8
  loc_BEC893: FLdRfVar var_2E8
  loc_BEC896: ImpAdCallFPR4  = Format(, )
  loc_BEC89B: FLdRfVar var_2E8
  loc_BEC89E: ConcatVar var_2F8
  loc_BEC8A2: LitI4 9
  loc_BEC8A7: FLdRfVar var_308
  loc_BEC8AA: ImpAdCallFPR4  = Chr()
  loc_BEC8AF: FLdRfVar var_308
  loc_BEC8B2: ConcatVar var_318
  loc_BEC8B6: LitI4 1
  loc_BEC8BB: LitI4 1
  loc_BEC8C0: LitVarStr var_340, "0.00"
  loc_BEC8C5: FStVarCopyObj var_350
  loc_BEC8C8: FLdRfVar var_350
  loc_BEC8CB: FLdFPR8 var_320
  loc_BEC8CE: CVarR8
  loc_BEC8D2: FLdRfVar var_360
  loc_BEC8D5: ImpAdCallFPR4  = Format(, )
  loc_BEC8DA: FLdRfVar var_360
  loc_BEC8DD: ConcatVar var_370
  loc_BEC8E1: LitI4 9
  loc_BEC8E6: FLdRfVar var_380
  loc_BEC8E9: ImpAdCallFPR4  = Chr()
  loc_BEC8EE: FLdRfVar var_380
  loc_BEC8F1: ConcatVar var_390
  loc_BEC8F5: LitI4 1
  loc_BEC8FA: LitI4 1
  loc_BEC8FF: LitVarStr var_3C8, "0.00"
  loc_BEC904: FStVarCopyObj var_3D8
  loc_BEC907: FLdRfVar var_3D8
  loc_BEC90A: FLdFPR8 var_398
  loc_BEC90D: CVarR8
  loc_BEC911: FLdRfVar var_3E8
  loc_BEC914: ImpAdCallFPR4  = Format(, )
  loc_BEC919: FLdRfVar var_3E8
  loc_BEC91C: ConcatVar var_3F8
  loc_BEC920: LitI4 9
  loc_BEC925: FLdRfVar var_408
  loc_BEC928: ImpAdCallFPR4  = Chr()
  loc_BEC92D: FLdRfVar var_408
  loc_BEC930: ConcatVar var_418
  loc_BEC934: LitI4 1
  loc_BEC939: LitI4 1
  loc_BEC93E: LitVarStr var_450, "0.00"
  loc_BEC943: FStVarCopyObj var_460
  loc_BEC946: FLdRfVar var_460
  loc_BEC949: FLdFPR8 var_420
  loc_BEC94C: CVarR8
  loc_BEC950: FLdRfVar var_470
  loc_BEC953: ImpAdCallFPR4  = Format(, )
  loc_BEC958: FLdRfVar var_470
  loc_BEC95B: ConcatVar var_480
  loc_BEC95F: LitI4 9
  loc_BEC964: FLdRfVar var_490
  loc_BEC967: ImpAdCallFPR4  = Chr()
  loc_BEC96C: FLdRfVar var_490
  loc_BEC96F: ConcatVar var_4A0
  loc_BEC973: LitI4 1
  loc_BEC978: LitI4 1
  loc_BEC97D: LitVarStr var_4D8, "0.00"
  loc_BEC982: FStVarCopyObj var_4E8
  loc_BEC985: FLdRfVar var_4E8
  loc_BEC988: FLdFPR8 var_4A8
  loc_BEC98B: CVarR8
  loc_BEC98F: FLdRfVar var_4F8
  loc_BEC992: ImpAdCallFPR4  = Format(, )
  loc_BEC997: FLdRfVar var_4F8
  loc_BEC99A: ConcatVar var_508
  loc_BEC99E: LitI4 9
  loc_BEC9A3: FLdRfVar var_518
  loc_BEC9A6: ImpAdCallFPR4  = Chr()
  loc_BEC9AB: FLdRfVar var_518
  loc_BEC9AE: ConcatVar var_528
  loc_BEC9B2: LitI4 1
  loc_BEC9B7: LitI4 1
  loc_BEC9BC: LitVarStr var_560, "0.00"
  loc_BEC9C1: FStVarCopyObj var_570
  loc_BEC9C4: FLdRfVar var_570
  loc_BEC9C7: FLdFPR8 var_530
  loc_BEC9CA: CVarR8
  loc_BEC9CE: FLdRfVar var_580
  loc_BEC9D1: ImpAdCallFPR4  = Format(, )
  loc_BEC9D6: FLdRfVar var_580
  loc_BEC9D9: ConcatVar var_590
  loc_BEC9DD: LitI4 9
  loc_BEC9E2: FLdRfVar var_5A0
  loc_BEC9E5: ImpAdCallFPR4  = Chr()
  loc_BEC9EA: FLdRfVar var_5A0
  loc_BEC9ED: ConcatVar var_5B0
  loc_BEC9F1: FLdRfVar var_AC
  loc_BEC9F4: FLdPr Me
  loc_BEC9F7: MemLdRfVar from_stack_1.global_60
  loc_BEC9FA: NewIfNullPr clsboleto
  loc_BEC9FD: from_stack_1 = clsboleto.CodiUsua
  loc_BECA02: FLdZeroAd var_AC
  loc_BECA05: CVarStr var_5C0
  loc_BECA08: ConcatVar var_5D0
  loc_BECA0C: CStrVarTmp
  loc_BECA0D: FStStrNoPop var_B0
  loc_BECA10: FLdPr Me
  loc_BECA13: MemStStrCopy
  loc_BECA17: FFree1Str var_B0
  loc_BECA1A: FFreeVar var_360 = "": var_370 = "": var_380 = "": var_3B8 = "": var_3D8 = "": var_390 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_440 = "": var_460 = "": var_418 = "": var_470 = "": var_480 = "": var_490 = "": var_4C8 = "": var_4E8 = "": var_4A0 = "": var_4F8 = "": var_508 = "": var_518 = "": var_550 = "": var_570 = "": var_528 = "": var_580 = "": var_590 = "": var_5A0 = "": var_5B0 = "": var_5C0 = "": var_5D0 = "": var_A4 = "": var_164 = "": var_17C = "": var_18C = "": var_19C = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_1F0 = "": var_200 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_260 = "": var_270 = "": var_250 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2C8 = "": var_2D8 = "": var_2B0 = "": var_2E8 = "": var_2F8 = "": var_308 = "": var_330 = "": var_350 = ""
  loc_BECA95: FLdPr Me
  loc_BECA98: MemLdRfVar from_stack_1.global_88
  loc_BECA9B: CDargRef
  loc_BECA9F: FLdPr Me
  loc_BECAA2: VCallAd Control_ID_BoletoFlex
  loc_BECAA5: FStAdFunc var_A8
  loc_BECAA8: FLdPr var_A8
  loc_BECAAB: LateIdCall
  loc_BECAB3: FFree1Ad var_A8
  loc_BECAB6: Call Proc_213_26_AC8950()
  loc_BECABB: FLdPr Me
  loc_BECABE: VCallAd Control_ID_NumeBoleTxt
  loc_BECAC1: FStAdFunc var_A8
  loc_BECAC4: FLdPr var_A8
  loc_BECAC7: Me.SetFocus
  loc_BECACC: FFree1Ad var_A8
  loc_BECACF: ExitProcHresult
End Sub

Private Sub VueltoTxt_GotFocus() 'A8C8E4
  'Data Table: 4B4C74
  loc_A8C85C: FLdRfVar var_8C
  loc_A8C85F: FLdPr Me
  loc_A8C862: VCallAd Control_ID_PagaConTxt
  loc_A8C865: FStAdFunc var_88
  loc_A8C868: FLdPr var_88
  loc_A8C86B:  = Me.Text
  loc_A8C870: FLdRfVar var_94
  loc_A8C873: FLdPr Me
  loc_A8C876: VCallAd Control_ID_TotalTxt
  loc_A8C879: FStAdFunc var_90
  loc_A8C87C: FLdPr var_90
  loc_A8C87F:  = Me.Text
  loc_A8C884: LitI4 1
  loc_A8C889: LitI4 1
  loc_A8C88E: LitVarStr var_C4, "0.00"
  loc_A8C893: FStVarCopyObj var_D4
  loc_A8C896: FLdRfVar var_D4
  loc_A8C899: ILdRf var_8C
  loc_A8C89C: CR8Str
  loc_A8C89E: ILdRf var_94
  loc_A8C8A1: CR8Str
  loc_A8C8A3: SubR4
  loc_A8C8A4: CVarR8
  loc_A8C8A8: FLdRfVar var_E4
  loc_A8C8AB: ImpAdCallFPR4  = Format(, )
  loc_A8C8B0: FLdRfVar var_E4
  loc_A8C8B3: CStrVarVal var_E8
  loc_A8C8B7: FLdPr Me
  loc_A8C8BA: VCallAd Control_ID_VueltoTxt
  loc_A8C8BD: FStAdFunc var_EC
  loc_A8C8C0: FLdPr var_EC
  loc_A8C8C3: Me.Text = from_stack_1
  loc_A8C8C8: FFreeStr var_8C = "": var_94 = ""
  loc_A8C8D1: FFreeAd var_88 = "": var_90 = ""
  loc_A8C8DA: FFreeVar var_B4 = "": var_D4 = ""
  loc_A8C8E3: ExitProcHresult
End Sub

Private Sub BoletoFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A8A1C0
  'Data Table: 4B4C74
  loc_A8A124: ILdI2 KeyCode
  loc_A8A127: CI4UI1
  loc_A8A128: LitI4 &H2E
  loc_A8A12D: EqI4
  loc_A8A12E: BranchF loc_A8A190
  loc_A8A131: FLdPr Me
  loc_A8A134: VCallAd Control_ID_BoletoFlex
  loc_A8A137: FStAdFunc var_88
  loc_A8A13A: FLdPr var_88
  loc_A8A13D: LateIdLdVar var_98 DispID_4 0
  loc_A8A144: CI4Var
  loc_A8A146: LitI4 1
  loc_A8A14B: GtI4
  loc_A8A14C: FFree1Ad var_88
  loc_A8A14F: FFree1Var var_98 = ""
  loc_A8A152: BranchF loc_A8A190
  loc_A8A155: OnErrorGoto loc_A8A190
  loc_A8A158: FLdPr Me
  loc_A8A15B: VCallAd Control_ID_BoletoFlex
  loc_A8A15E: FStAdFunc var_88
  loc_A8A161: FLdPr var_88
  loc_A8A164: LateIdLdVar var_98 DispID_10 0
  loc_A8A16B: CI4Var
  loc_A8A16D: CVarI4
  loc_A8A171: PopAdLdVar
  loc_A8A172: FLdPr Me
  loc_A8A175: VCallAd Control_ID_BoletoFlex
  loc_A8A178: FStAdFunc var_BC
  loc_A8A17B: FLdPr var_BC
  loc_A8A17E: LateIdCall
  loc_A8A186: FFreeAd var_88 = ""
  loc_A8A18D: FFree1Var var_98 = ""
  loc_A8A190: FLdRfVar var_C0
  loc_A8A193: ImpAdCallI2 Err 'rtcErrObj
  loc_A8A198: FStAdFunc var_88
  loc_A8A19B: FLdPr var_88
  loc_A8A19E:  = Err.Number
  loc_A8A1A3: ILdRf var_C0
  loc_A8A1A6: LitI4 &H753F
  loc_A8A1AB: EqI4
  loc_A8A1AC: FFree1Ad var_88
  loc_A8A1AF: BranchF loc_A8A1B7
  loc_A8A1B2: Call Proc_213_25_B014F0()
  loc_A8A1B7: Call Proc_213_26_AC8950()
  loc_A8A1BC: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'CB32BC
  'Data Table: 4B4C74
  loc_CB141C: FLdPr Me
  loc_CB141F: VCallAd Control_ID_BoletoFlex
  loc_CB1422: FStAdFunc var_8C
  loc_CB1425: FLdPr var_8C
  loc_CB1428: LateIdLdVar var_9C DispID_4 0
  loc_CB142F: CI4Var
  loc_CB1431: LitI4 1
  loc_CB1436: LeI4
  loc_CB1437: FFree1Ad var_8C
  loc_CB143A: FFree1Var var_9C = ""
  loc_CB143D: BranchF loc_CB1472
  loc_CB1440: LitVar_Missing var_10C
  loc_CB1443: LitVar_Missing var_EC
  loc_CB1446: LitVarStr var_BC, "InfoGov"
  loc_CB144B: FStVarCopyObj var_CC
  loc_CB144E: FLdRfVar var_CC
  loc_CB1451: LitI4 &H30
  loc_CB1456: LitVarStr var_AC, "No existe ningún boleto para cobrar. Reintente..."
  loc_CB145B: FStVarCopyObj var_9C
  loc_CB145E: FLdRfVar var_9C
  loc_CB1461: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CB1466: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_CB1471: ExitProcHresult
  loc_CB1472: FLdPr Me
  loc_CB1475: MemLdI2 global_106
  loc_CB1478: LitI2_Byte 0
  loc_CB147A: LeI2
  loc_CB147B: BranchF loc_CB14B0
  loc_CB147E: LitVar_Missing var_10C
  loc_CB1481: LitVar_Missing var_EC
  loc_CB1484: LitVarStr var_BC, "InfoGov"
  loc_CB1489: FStVarCopyObj var_CC
  loc_CB148C: FLdRfVar var_CC
  loc_CB148F: LitI4 &H30
  loc_CB1494: LitVarStr var_AC, "No existe el numero de grupo. Verifique..."
  loc_CB1499: FStVarCopyObj var_9C
  loc_CB149C: FLdRfVar var_9C
  loc_CB149F: ImpAdCallFPR4 MsgBox(, , , , )
  loc_CB14A4: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_CB14AF: ExitProcHresult
  loc_CB14B0: LitI2_Byte 1
  loc_CB14B2: FLdPr Me
  loc_CB14B5: MemLdRfVar from_stack_1.global_92
  loc_CB14B8: FLdPr Me
  loc_CB14BB: VCallAd Control_ID_BoletoFlex
  loc_CB14BE: FStAdFunc var_8C
  loc_CB14C1: FLdPr var_8C
  loc_CB14C4: LateIdLdVar var_9C DispID_4 0
  loc_CB14CB: CI4Var
  loc_CB14CD: LitI4 1
  loc_CB14D2: SubI4
  loc_CB14D3: CI2I4
  loc_CB14D4: FFree1Ad var_8C
  loc_CB14D7: FFree1Var var_9C = ""
  loc_CB14DA: ForI2 var_110
  loc_CB14E0: LitStr "SELECT * FROM boleto "
  loc_CB14E3: LitStr " WHERE PeriBole = "
  loc_CB14E6: ConcatStr
  loc_CB14E7: FStStrNoPop var_114
  loc_CB14EA: FLdPr Me
  loc_CB14ED: MemLdI2 global_92
  loc_CB14F0: CI4UI1
  loc_CB14F1: CVarI4
  loc_CB14F5: PopAdLdVar
  loc_CB14F6: LitVarI4
  loc_CB14FE: PopAdLdVar
  loc_CB14FF: FLdPr Me
  loc_CB1502: VCallAd Control_ID_BoletoFlex
  loc_CB1505: FStAdFunc var_8C
  loc_CB1508: FLdPr var_8C
  loc_CB150B: LateIdCallLdVar
  loc_CB1515: CStrVarTmp
  loc_CB1516: FStStrNoPop var_118
  loc_CB1519: ConcatStr
  loc_CB151A: FStStrNoPop var_11C
  loc_CB151D: LitStr " AND NumeBole = "
  loc_CB1520: ConcatStr
  loc_CB1521: FStStrNoPop var_164
  loc_CB1524: FLdPr Me
  loc_CB1527: MemLdI2 global_92
  loc_CB152A: CI4UI1
  loc_CB152B: CVarI4
  loc_CB152F: PopAdLdVar
  loc_CB1530: LitVarI4
  loc_CB1538: PopAdLdVar
  loc_CB1539: FLdPr Me
  loc_CB153C: VCallAd Control_ID_BoletoFlex
  loc_CB153F: FStAdFunc var_160
  loc_CB1542: FLdPr var_160
  loc_CB1545: LateIdCallLdVar
  loc_CB154F: CStrVarTmp
  loc_CB1550: FStStrNoPop var_168
  loc_CB1553: ConcatStr
  loc_CB1554: FStStrNoPop var_16C
  loc_CB1557: LitStr " ORDER BY PeriBole, NumeBole"
  loc_CB155A: ConcatStr
  loc_CB155B: FStStrNoPop var_170
  loc_CB155E: FLdPr Me
  loc_CB1561: MemLdRfVar from_stack_1.global_60
  loc_CB1564: NewIfNullPr clsboleto
  loc_CB1567: Call clsboleto.RedefineRS(from_stack_1v)
  loc_CB156C: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = ""
  loc_CB157D: FFreeAd var_8C = ""
  loc_CB1584: FFreeVar var_9C = ""
  loc_CB158B: FLdRfVar var_174
  loc_CB158E: FLdPr Me
  loc_CB1591: MemLdRfVar from_stack_1.global_60
  loc_CB1594: NewIfNullPr clsboleto
  loc_CB1597: from_stack_1 = clsboleto.RecordCount
  loc_CB159C: ILdRf var_174
  loc_CB159F: LitI4 0
  loc_CB15A4: EqI4
  loc_CB15A5: BranchF loc_CB15D3
  loc_CB15A8: LitStr "El NUMERO de boleto no existe, verifique..."
  loc_CB15AB: FLdPr Me
  loc_CB15AE: MemStStrCopy
  loc_CB15B2: FLdPr Me
  loc_CB15B5: MemLdStr global_96
  loc_CB15B8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB15BD: FLdPr Me
  loc_CB15C0: VCallAd Control_ID_NumeBoleTxt
  loc_CB15C3: CVarAd
  loc_CB15C7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB15CC: FFree1Var var_9C = ""
  loc_CB15CF: ExitProcHresult
  loc_CB15D0: Branch loc_CB3292
  loc_CB15D3: FLdRfVar var_174
  loc_CB15D6: FLdPr Me
  loc_CB15D9: MemLdRfVar from_stack_1.global_60
  loc_CB15DC: NewIfNullPr clsboleto
  loc_CB15DF: from_stack_1 = clsboleto.RecordCount
  loc_CB15E4: ILdRf var_174
  loc_CB15E7: LitI4 1
  loc_CB15EC: EqI4
  loc_CB15ED: BranchF loc_CB3292
  loc_CB15F0: LitStr "SELECT * FROM pago "
  loc_CB15F3: LitStr " WHERE FeenAcpa = '"
  loc_CB15F6: ConcatStr
  loc_CB15F7: FStStrNoPop var_114
  loc_CB15FA: LitI4 1
  loc_CB15FF: LitI4 1
  loc_CB1604: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB1609: FStVarCopyObj var_9C
  loc_CB160C: FLdRfVar var_9C
  loc_CB160F: FLdPr Me
  loc_CB1612: MemLdRfVar from_stack_1.global_128
  loc_CB1615: CVarRef
  loc_CB161A: ImpAdCallI2 Format$(, )
  loc_CB161F: FStStrNoPop var_118
  loc_CB1622: ConcatStr
  loc_CB1623: FStStrNoPop var_11C
  loc_CB1626: LitStr "'"
  loc_CB1629: ConcatStr
  loc_CB162A: FStStrNoPop var_164
  loc_CB162D: LitStr " AND NumeAcpa = "
  loc_CB1630: ConcatStr
  loc_CB1631: FStStrNoPop var_168
  loc_CB1634: FLdPr Me
  loc_CB1637: MemLdI2 global_106
  loc_CB163A: CStrUI1
  loc_CB163C: FStStrNoPop var_16C
  loc_CB163F: ConcatStr
  loc_CB1640: FStStrNoPop var_170
  loc_CB1643: LitStr " AND PeriBole = "
  loc_CB1646: ConcatStr
  loc_CB1647: FStStrNoPop var_17C
  loc_CB164A: FLdRfVar var_176
  loc_CB164D: FLdPr Me
  loc_CB1650: MemLdRfVar from_stack_1.global_60
  loc_CB1653: NewIfNullPr clsboleto
  loc_CB1656: from_stack_1 = clsboleto.PeriBole
  loc_CB165B: FLdI2 var_176
  loc_CB165E: CStrUI1
  loc_CB1660: FStStrNoPop var_180
  loc_CB1663: ConcatStr
  loc_CB1664: FStStrNoPop var_184
  loc_CB1667: LitStr " AND NumeBole = "
  loc_CB166A: ConcatStr
  loc_CB166B: FStStrNoPop var_188
  loc_CB166E: FLdRfVar var_174
  loc_CB1671: FLdPr Me
  loc_CB1674: MemLdRfVar from_stack_1.global_60
  loc_CB1677: NewIfNullPr clsboleto
  loc_CB167A: from_stack_1 = clsboleto.NumeBole
  loc_CB167F: ILdRf var_174
  loc_CB1682: CStrI4
  loc_CB1684: FStStrNoPop var_18C
  loc_CB1687: ConcatStr
  loc_CB1688: FStStrNoPop var_190
  loc_CB168B: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole"
  loc_CB168E: ConcatStr
  loc_CB168F: FStStrNoPop var_194
  loc_CB1692: FLdPr Me
  loc_CB1695: MemLdRfVar from_stack_1.global_56
  loc_CB1698: NewIfNullPr clspago
  loc_CB169B: Call clspago.RedefineRS(from_stack_1v)
  loc_CB16A0: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_CB16BF: FFree1Var var_9C = ""
  loc_CB16C2: FLdRfVar var_174
  loc_CB16C5: FLdPr Me
  loc_CB16C8: MemLdRfVar from_stack_1.global_56
  loc_CB16CB: NewIfNullPr clspago
  loc_CB16CE: from_stack_1 = clspago.RecordCount
  loc_CB16D3: ILdRf var_174
  loc_CB16D6: LitI4 1
  loc_CB16DB: EqI4
  loc_CB16DC: BranchF loc_CB1751
  loc_CB16DF: LitStr "El boleto se encuenta ingresado y pagado, verifique..."
  loc_CB16E2: FLdPr Me
  loc_CB16E5: MemStStrCopy
  loc_CB16E9: FLdPr Me
  loc_CB16EC: MemLdStr global_96
  loc_CB16EF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB16F4: FLdPr Me
  loc_CB16F7: VCallAd Control_ID_NumeBoleTxt
  loc_CB16FA: CVarAd
  loc_CB16FE: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB1703: FFree1Var var_9C = ""
  loc_CB1706: ExitProcHresult
  loc_CB1707: FLdRfVar var_114
  loc_CB170A: FLdPr Me
  loc_CB170D: MemLdRfVar from_stack_1.global_56
  loc_CB1710: NewIfNullPr clspago
  loc_CB1713: from_stack_1 = clspago.ActuPago
  loc_CB1718: ILdRf var_114
  loc_CB171B: LitStr "Si"
  loc_CB171E: EqStr
  loc_CB1720: FFree1Str var_114
  loc_CB1723: BranchF loc_CB174E
  loc_CB1726: LitStr "El boleto se encuenta ingresado, pagado y actualizado en la cuenta corriente, verifique..."
  loc_CB1729: FLdPr Me
  loc_CB172C: MemStStrCopy
  loc_CB1730: FLdPr Me
  loc_CB1733: MemLdStr global_96
  loc_CB1736: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB173B: FLdPr Me
  loc_CB173E: VCallAd Control_ID_NumeBoleTxt
  loc_CB1741: CVarAd
  loc_CB1745: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB174A: FFree1Var var_9C = ""
  loc_CB174D: ExitProcHresult
  loc_CB174E: Branch loc_CB3148
  loc_CB1751: FLdRfVar var_174
  loc_CB1754: FLdPr Me
  loc_CB1757: MemLdRfVar from_stack_1.global_56
  loc_CB175A: NewIfNullPr clspago
  loc_CB175D: from_stack_1 = clspago.RecordCount
  loc_CB1762: ILdRf var_174
  loc_CB1765: LitI4 0
  loc_CB176A: EqI4
  loc_CB176B: BranchF loc_CB3148
  loc_CB176E: LitStr "START TRANSACTION;"
  loc_CB1771: FLdPr Me
  loc_CB1774: MemStStrCopy
  loc_CB1778: LitStr "SELECT * FROM acrepago "
  loc_CB177B: LitStr " WHERE FeenAcpa = '"
  loc_CB177E: ConcatStr
  loc_CB177F: FStStrNoPop var_114
  loc_CB1782: LitI4 1
  loc_CB1787: LitI4 1
  loc_CB178C: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB1791: FStVarCopyObj var_9C
  loc_CB1794: FLdRfVar var_9C
  loc_CB1797: FLdPr Me
  loc_CB179A: MemLdRfVar from_stack_1.global_128
  loc_CB179D: CVarRef
  loc_CB17A2: ImpAdCallI2 Format$(, )
  loc_CB17A7: FStStrNoPop var_118
  loc_CB17AA: ConcatStr
  loc_CB17AB: FStStrNoPop var_11C
  loc_CB17AE: LitStr "'"
  loc_CB17B1: ConcatStr
  loc_CB17B2: FStStrNoPop var_164
  loc_CB17B5: LitStr " AND NumeAcpa = "
  loc_CB17B8: ConcatStr
  loc_CB17B9: FStStrNoPop var_168
  loc_CB17BC: FLdPr Me
  loc_CB17BF: MemLdI2 global_106
  loc_CB17C2: CStrUI1
  loc_CB17C4: FStStrNoPop var_16C
  loc_CB17C7: ConcatStr
  loc_CB17C8: FStStrNoPop var_170
  loc_CB17CB: LitStr " ORDER BY FeenAcpa, NumeAcpa"
  loc_CB17CE: ConcatStr
  loc_CB17CF: FStStrNoPop var_17C
  loc_CB17D2: FLdPr Me
  loc_CB17D5: MemLdRfVar from_stack_1.global_52
  loc_CB17D8: NewIfNullPr clsacrepago
  loc_CB17DB: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_CB17E0: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = ""
  loc_CB17F3: FFree1Var var_9C = ""
  loc_CB17F6: FLdRfVar var_174
  loc_CB17F9: FLdPr Me
  loc_CB17FC: MemLdRfVar from_stack_1.global_52
  loc_CB17FF: NewIfNullPr clsacrepago
  loc_CB1802: from_stack_1 = clsacrepago.RecordCount
  loc_CB1807: ILdRf var_174
  loc_CB180A: LitI4 0
  loc_CB180F: EqI4
  loc_CB1810: BranchF loc_CB197E
  loc_CB1813: LitI2_Byte 0
  loc_CB1815: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB181A: FStFPR8 var_1C4
  loc_CB181D: FLdRfVar var_1A0
  loc_CB1820: FLdPr Me
  loc_CB1823: MemLdRfVar from_stack_1.global_60
  loc_CB1826: NewIfNullPr clsboleto
  loc_CB1829: from_stack_1 = clsboleto.TotaBole
  loc_CB182E: FLdPr Me
  loc_CB1831: MemLdStr global_100
  loc_CB1834: LitStr " INSERT INTO acrepago (FeenAcpa,NumeAcpa,ActuAcpa,CodiEnre,FealAcpa,FepaAcpa,TocoAcpa,ImpoAcpa,ObseAcpa,CodiUsua) VALUES ('"
  loc_CB1837: ConcatStr
  loc_CB1838: FStStrNoPop var_114
  loc_CB183B: LitI4 1
  loc_CB1840: LitI4 1
  loc_CB1845: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB184A: FStVarCopyObj var_9C
  loc_CB184D: FLdRfVar var_9C
  loc_CB1850: FLdPr Me
  loc_CB1853: MemLdRfVar from_stack_1.global_128
  loc_CB1856: CVarRef
  loc_CB185B: ImpAdCallI2 Format$(, )
  loc_CB1860: FStStrNoPop var_118
  loc_CB1863: ConcatStr
  loc_CB1864: FStStrNoPop var_11C
  loc_CB1867: LitStr "',"
  loc_CB186A: ConcatStr
  loc_CB186B: FStStrNoPop var_164
  loc_CB186E: FLdPr Me
  loc_CB1871: MemLdI2 global_106
  loc_CB1874: CStrUI1
  loc_CB1876: FStStrNoPop var_168
  loc_CB1879: ConcatStr
  loc_CB187A: FStStrNoPop var_16C
  loc_CB187D: LitStr " ,'No',"
  loc_CB1880: ConcatStr
  loc_CB1881: FStStrNoPop var_170
  loc_CB1884: FLdPr Me
  loc_CB1887: MemLdI2 global_104
  loc_CB188A: CStrUI1
  loc_CB188C: FStStrNoPop var_17C
  loc_CB188F: ConcatStr
  loc_CB1890: FStStrNoPop var_180
  loc_CB1893: LitStr ",'"
  loc_CB1896: ConcatStr
  loc_CB1897: FStStrNoPop var_184
  loc_CB189A: LitI4 1
  loc_CB189F: LitI4 1
  loc_CB18A4: LitVarStr var_FC, "yyyy-mm-dd"
  loc_CB18A9: FStVarCopyObj var_EC
  loc_CB18AC: FLdRfVar var_EC
  loc_CB18AF: FLdFPR8 var_1C4
  loc_CB18B2: CVarDate var_CC
  loc_CB18B6: ImpAdCallI2 Format$(, )
  loc_CB18BB: FStStrNoPop var_188
  loc_CB18BE: ConcatStr
  loc_CB18BF: FStStrNoPop var_18C
  loc_CB18C2: LitStr "','"
  loc_CB18C5: ConcatStr
  loc_CB18C6: FStStrNoPop var_190
  loc_CB18C9: LitI4 1
  loc_CB18CE: LitI4 1
  loc_CB18D3: LitVarStr var_13C, "yyyy-mm-dd"
  loc_CB18D8: FStVarCopyObj var_10C
  loc_CB18DB: FLdRfVar var_10C
  loc_CB18DE: FLdPr Me
  loc_CB18E1: MemLdRfVar from_stack_1.global_128
  loc_CB18E4: CVarRef
  loc_CB18E9: ImpAdCallI2 Format$(, )
  loc_CB18EE: FStStrNoPop var_194
  loc_CB18F1: ConcatStr
  loc_CB18F2: FStStrNoPop var_198
  loc_CB18F5: LitStr "',1,"
  loc_CB18F8: ConcatStr
  loc_CB18F9: FStStrNoPop var_1A8
  loc_CB18FC: LitI4 0
  loc_CB1901: LitI4 -1
  loc_CB1906: LitI4 1
  loc_CB190B: LitStr "."
  loc_CB190E: LitStr ","
  loc_CB1911: FLdFPR8 var_1A0
  loc_CB1914: CStrR8
  loc_CB1916: FStStrNoPop var_1A4
  loc_CB1919: ImpAdCallI2 Replace(, , , , , )
  loc_CB191E: FStStrNoPop var_1AC
  loc_CB1921: ConcatStr
  loc_CB1922: FStStrNoPop var_1B0
  loc_CB1925: LitStr ",'','"
  loc_CB1928: ConcatStr
  loc_CB1929: FStStrNoPop var_1B4
  loc_CB192C: ImpAdLdI4 MemVar_D9302C
  loc_CB192F: ConcatStr
  loc_CB1930: FStStrNoPop var_1B8
  loc_CB1933: LitStr "');"
  loc_CB1936: ConcatStr
  loc_CB1937: FStStrNoPop var_1BC
  loc_CB193A: FLdPr Me
  loc_CB193D: MemStStrCopy
  loc_CB1941: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_CB1970: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_CB197B: Branch loc_CB1A50
  loc_CB197E: FLdRfVar var_1A0
  loc_CB1981: FLdPr Me
  loc_CB1984: MemLdRfVar from_stack_1.global_60
  loc_CB1987: NewIfNullPr clsboleto
  loc_CB198A: from_stack_1 = clsboleto.TotaBole
  loc_CB198F: FLdPr Me
  loc_CB1992: MemLdStr global_100
  loc_CB1995: LitStr " UPDATE acrepago SET TocoAcpa = TocoAcpa + "
  loc_CB1998: ConcatStr
  loc_CB1999: FStStrNoPop var_114
  loc_CB199C: LitI2_Byte 1
  loc_CB199E: CStrUI1
  loc_CB19A0: FStStrNoPop var_118
  loc_CB19A3: ConcatStr
  loc_CB19A4: FStStrNoPop var_11C
  loc_CB19A7: LitStr ", ImpoAcpa = ImpoAcpa + "
  loc_CB19AA: ConcatStr
  loc_CB19AB: FStStrNoPop var_168
  loc_CB19AE: LitI4 0
  loc_CB19B3: LitI4 -1
  loc_CB19B8: LitI4 1
  loc_CB19BD: LitStr "."
  loc_CB19C0: LitStr ","
  loc_CB19C3: FLdFPR8 var_1A0
  loc_CB19C6: CStrR8
  loc_CB19C8: FStStrNoPop var_164
  loc_CB19CB: ImpAdCallI2 Replace(, , , , , )
  loc_CB19D0: FStStrNoPop var_16C
  loc_CB19D3: ConcatStr
  loc_CB19D4: FStStrNoPop var_170
  loc_CB19D7: LitStr " WHERE FeenAcpa = '"
  loc_CB19DA: ConcatStr
  loc_CB19DB: FStStrNoPop var_17C
  loc_CB19DE: LitI4 1
  loc_CB19E3: LitI4 1
  loc_CB19E8: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB19ED: FStVarCopyObj var_9C
  loc_CB19F0: FLdRfVar var_9C
  loc_CB19F3: FLdPr Me
  loc_CB19F6: MemLdRfVar from_stack_1.global_128
  loc_CB19F9: CVarRef
  loc_CB19FE: ImpAdCallI2 Format$(, )
  loc_CB1A03: FStStrNoPop var_180
  loc_CB1A06: ConcatStr
  loc_CB1A07: FStStrNoPop var_184
  loc_CB1A0A: LitStr "' AND NumeAcpa = "
  loc_CB1A0D: ConcatStr
  loc_CB1A0E: FStStrNoPop var_188
  loc_CB1A11: FLdPr Me
  loc_CB1A14: MemLdI2 global_106
  loc_CB1A17: CStrUI1
  loc_CB1A19: FStStrNoPop var_18C
  loc_CB1A1C: ConcatStr
  loc_CB1A1D: FStStrNoPop var_190
  loc_CB1A20: LitStr ";"
  loc_CB1A23: ConcatStr
  loc_CB1A24: FStStrNoPop var_194
  loc_CB1A27: FLdPr Me
  loc_CB1A2A: MemStStrCopy
  loc_CB1A2E: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_CB1A4D: FFree1Var var_9C = ""
  loc_CB1A50: LitI2_Byte 0
  loc_CB1A52: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB1A57: FStFPR8 var_2E4
  loc_CB1A5A: FLdRfVar var_1A0
  loc_CB1A5D: FLdPr Me
  loc_CB1A60: MemLdRfVar from_stack_1.global_60
  loc_CB1A63: NewIfNullPr clsboleto
  loc_CB1A66: from_stack_1 = clsboleto.CapiBole
  loc_CB1A6B: FLdRfVar var_1C4
  loc_CB1A6E: FLdPr Me
  loc_CB1A71: MemLdRfVar from_stack_1.global_60
  loc_CB1A74: NewIfNullPr clsboleto
  loc_CB1A77: from_stack_1 = clsboleto.DecaBole
  loc_CB1A7C: FLdRfVar var_230
  loc_CB1A7F: FLdPr Me
  loc_CB1A82: MemLdRfVar from_stack_1.global_60
  loc_CB1A85: NewIfNullPr clsboleto
  loc_CB1A88: from_stack_1 = clsboleto.RecaBole
  loc_CB1A8D: FLdRfVar var_248
  loc_CB1A90: FLdPr Me
  loc_CB1A93: MemLdRfVar from_stack_1.global_60
  loc_CB1A96: NewIfNullPr clsboleto
  loc_CB1A99: from_stack_1 = clsboleto.DereBole
  loc_CB1A9E: FLdRfVar var_260
  loc_CB1AA1: FLdPr Me
  loc_CB1AA4: MemLdRfVar from_stack_1.global_60
  loc_CB1AA7: NewIfNullPr clsboleto
  loc_CB1AAA: from_stack_1 = clsboleto.InteBole
  loc_CB1AAF: FLdRfVar var_278
  loc_CB1AB2: FLdPr Me
  loc_CB1AB5: MemLdRfVar from_stack_1.global_60
  loc_CB1AB8: NewIfNullPr clsboleto
  loc_CB1ABB: from_stack_1 = clsboleto.ExenBole
  loc_CB1AC0: FLdRfVar var_290
  loc_CB1AC3: FLdPr Me
  loc_CB1AC6: MemLdRfVar from_stack_1.global_60
  loc_CB1AC9: NewIfNullPr clsboleto
  loc_CB1ACC: from_stack_1 = clsboleto.CrafBole
  loc_CB1AD1: FLdRfVar var_2A8
  loc_CB1AD4: FLdPr Me
  loc_CB1AD7: MemLdRfVar from_stack_1.global_60
  loc_CB1ADA: NewIfNullPr clsboleto
  loc_CB1ADD: from_stack_1 = clsboleto.ApreBole
  loc_CB1AE2: FLdRfVar var_2C0
  loc_CB1AE5: FLdPr Me
  loc_CB1AE8: MemLdRfVar from_stack_1.global_60
  loc_CB1AEB: NewIfNullPr clsboleto
  loc_CB1AEE: from_stack_1 = clsboleto.TotaBole
  loc_CB1AF3: FLdPr Me
  loc_CB1AF6: MemLdStr global_100
  loc_CB1AF9: LitStr " INSERT INTO pago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,CodiOfic,CuenCtct,CucuPers,ActuPago,TipoPago,FealPago,FepaPago,CodiFapa,CuotDefa,CapiPago,DecaPago,RecaPago,DerePago,IntePago,ExenPago,CrafPago,AprePago,TotaPago,CodiUsua) VALUES ('"
  loc_CB1AFC: ConcatStr
  loc_CB1AFD: FStStrNoPop var_114
  loc_CB1B00: LitI4 1
  loc_CB1B05: LitI4 1
  loc_CB1B0A: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB1B0F: FStVarCopyObj var_9C
  loc_CB1B12: FLdRfVar var_9C
  loc_CB1B15: FLdPr Me
  loc_CB1B18: MemLdRfVar from_stack_1.global_128
  loc_CB1B1B: CVarRef
  loc_CB1B20: ImpAdCallI2 Format$(, )
  loc_CB1B25: FStStrNoPop var_118
  loc_CB1B28: ConcatStr
  loc_CB1B29: FStStrNoPop var_11C
  loc_CB1B2C: LitStr "',"
  loc_CB1B2F: ConcatStr
  loc_CB1B30: FStStrNoPop var_164
  loc_CB1B33: FLdPr Me
  loc_CB1B36: MemLdI2 global_106
  loc_CB1B39: CStrUI1
  loc_CB1B3B: FStStrNoPop var_168
  loc_CB1B3E: ConcatStr
  loc_CB1B3F: FStStrNoPop var_16C
  loc_CB1B42: LitStr ","
  loc_CB1B45: ConcatStr
  loc_CB1B46: FStStrNoPop var_170
  loc_CB1B49: FLdRfVar var_176
  loc_CB1B4C: FLdPr Me
  loc_CB1B4F: MemLdRfVar from_stack_1.global_60
  loc_CB1B52: NewIfNullPr clsboleto
  loc_CB1B55: from_stack_1 = clsboleto.PeriBole
  loc_CB1B5A: FLdI2 var_176
  loc_CB1B5D: CStrUI1
  loc_CB1B5F: FStStrNoPop var_17C
  loc_CB1B62: ConcatStr
  loc_CB1B63: FStStrNoPop var_180
  loc_CB1B66: LitStr ","
  loc_CB1B69: ConcatStr
  loc_CB1B6A: FStStrNoPop var_184
  loc_CB1B6D: FLdRfVar var_174
  loc_CB1B70: FLdPr Me
  loc_CB1B73: MemLdRfVar from_stack_1.global_60
  loc_CB1B76: NewIfNullPr clsboleto
  loc_CB1B79: from_stack_1 = clsboleto.NumeBole
  loc_CB1B7E: ILdRf var_174
  loc_CB1B81: CStrI4
  loc_CB1B83: FStStrNoPop var_188
  loc_CB1B86: ConcatStr
  loc_CB1B87: FStStrNoPop var_18C
  loc_CB1B8A: LitStr ","
  loc_CB1B8D: ConcatStr
  loc_CB1B8E: FStStrNoPop var_190
  loc_CB1B91: FLdRfVar var_1C6
  loc_CB1B94: FLdPr Me
  loc_CB1B97: MemLdRfVar from_stack_1.global_60
  loc_CB1B9A: NewIfNullPr clsboleto
  loc_CB1B9D: from_stack_1 = clsboleto.CodiOfic
  loc_CB1BA2: FLdI2 var_1C6
  loc_CB1BA5: CStrUI1
  loc_CB1BA7: FStStrNoPop var_194
  loc_CB1BAA: ConcatStr
  loc_CB1BAB: FStStrNoPop var_198
  loc_CB1BAE: LitStr ",'"
  loc_CB1BB1: ConcatStr
  loc_CB1BB2: FStStrNoPop var_1A8
  loc_CB1BB5: FLdRfVar var_1A4
  loc_CB1BB8: FLdPr Me
  loc_CB1BBB: MemLdRfVar from_stack_1.global_60
  loc_CB1BBE: NewIfNullPr clsboleto
  loc_CB1BC1: from_stack_1 = clsboleto.CuenCtct
  loc_CB1BC6: ILdRf var_1A4
  loc_CB1BC9: ConcatStr
  loc_CB1BCA: FStStrNoPop var_1AC
  loc_CB1BCD: LitStr "','"
  loc_CB1BD0: ConcatStr
  loc_CB1BD1: FStStrNoPop var_1B4
  loc_CB1BD4: FLdRfVar var_1B0
  loc_CB1BD7: FLdPr Me
  loc_CB1BDA: MemLdRfVar from_stack_1.global_60
  loc_CB1BDD: NewIfNullPr clsboleto
  loc_CB1BE0: from_stack_1 = clsboleto.CucuPers
  loc_CB1BE5: ILdRf var_1B0
  loc_CB1BE8: ConcatStr
  loc_CB1BE9: FStStrNoPop var_1B8
  loc_CB1BEC: LitStr "','No','"
  loc_CB1BEF: ConcatStr
  loc_CB1BF0: FStStrNoPop var_1CC
  loc_CB1BF3: FLdRfVar var_1BC
  loc_CB1BF6: FLdPr Me
  loc_CB1BF9: MemLdRfVar from_stack_1.global_60
  loc_CB1BFC: NewIfNullPr clsboleto
  loc_CB1BFF: from_stack_1 = clsboleto.TipoBole
  loc_CB1C04: ILdRf var_1BC
  loc_CB1C07: ConcatStr
  loc_CB1C08: FStStrNoPop var_1D0
  loc_CB1C0B: LitStr "','"
  loc_CB1C0E: ConcatStr
  loc_CB1C0F: FStStrNoPop var_1D4
  loc_CB1C12: LitI4 1
  loc_CB1C17: LitI4 1
  loc_CB1C1C: LitVarStr var_FC, "yyyy-mm-dd"
  loc_CB1C21: FStVarCopyObj var_EC
  loc_CB1C24: FLdRfVar var_EC
  loc_CB1C27: FLdFPR8 var_2E4
  loc_CB1C2A: CVarDate var_CC
  loc_CB1C2E: ImpAdCallI2 Format$(, )
  loc_CB1C33: FStStrNoPop var_1D8
  loc_CB1C36: ConcatStr
  loc_CB1C37: FStStrNoPop var_1DC
  loc_CB1C3A: LitStr "','"
  loc_CB1C3D: ConcatStr
  loc_CB1C3E: FStStrNoPop var_1E0
  loc_CB1C41: LitI4 1
  loc_CB1C46: LitI4 1
  loc_CB1C4B: LitVarStr var_13C, "yyyy-mm-dd"
  loc_CB1C50: FStVarCopyObj var_10C
  loc_CB1C53: FLdRfVar var_10C
  loc_CB1C56: FLdPr Me
  loc_CB1C59: MemLdRfVar from_stack_1.global_128
  loc_CB1C5C: CVarRef
  loc_CB1C61: ImpAdCallI2 Format$(, )
  loc_CB1C66: FStStrNoPop var_1E4
  loc_CB1C69: ConcatStr
  loc_CB1C6A: FStStrNoPop var_1E8
  loc_CB1C6D: LitStr "',"
  loc_CB1C70: ConcatStr
  loc_CB1C71: FStStrNoPop var_1F0
  loc_CB1C74: FLdRfVar var_1EC
  loc_CB1C77: FLdPr Me
  loc_CB1C7A: MemLdRfVar from_stack_1.global_60
  loc_CB1C7D: NewIfNullPr clsboleto
  loc_CB1C80: from_stack_1 = clsboleto.CodiFapa
  loc_CB1C85: ILdRf var_1EC
  loc_CB1C88: CStrI4
  loc_CB1C8A: FStStrNoPop var_1F4
  loc_CB1C8D: ConcatStr
  loc_CB1C8E: FStStrNoPop var_1F8
  loc_CB1C91: LitStr ","
  loc_CB1C94: ConcatStr
  loc_CB1C95: FStStrNoPop var_200
  loc_CB1C98: FLdRfVar var_1FA
  loc_CB1C9B: FLdPr Me
  loc_CB1C9E: MemLdRfVar from_stack_1.global_60
  loc_CB1CA1: NewIfNullPr clsboleto
  loc_CB1CA4: from_stack_1 = clsboleto.CuotDefa
  loc_CB1CA9: FLdI2 var_1FA
  loc_CB1CAC: CStrUI1
  loc_CB1CAE: FStStrNoPop var_204
  loc_CB1CB1: ConcatStr
  loc_CB1CB2: FStStrNoPop var_208
  loc_CB1CB5: LitStr ","
  loc_CB1CB8: ConcatStr
  loc_CB1CB9: FStStrNoPop var_210
  loc_CB1CBC: LitI4 0
  loc_CB1CC1: LitI4 -1
  loc_CB1CC6: LitI4 1
  loc_CB1CCB: LitStr "."
  loc_CB1CCE: LitStr ","
  loc_CB1CD1: FLdFPR8 var_1A0
  loc_CB1CD4: CStrR8
  loc_CB1CD6: FStStrNoPop var_20C
  loc_CB1CD9: ImpAdCallI2 Replace(, , , , , )
  loc_CB1CDE: FStStrNoPop var_214
  loc_CB1CE1: ConcatStr
  loc_CB1CE2: FStStrNoPop var_218
  loc_CB1CE5: LitStr ","
  loc_CB1CE8: ConcatStr
  loc_CB1CE9: FStStrNoPop var_220
  loc_CB1CEC: LitI4 0
  loc_CB1CF1: LitI4 -1
  loc_CB1CF6: LitI4 1
  loc_CB1CFB: LitStr "."
  loc_CB1CFE: LitStr ","
  loc_CB1D01: FLdFPR8 var_1C4
  loc_CB1D04: CStrR8
  loc_CB1D06: FStStrNoPop var_21C
  loc_CB1D09: ImpAdCallI2 Replace(, , , , , )
  loc_CB1D0E: FStStrNoPop var_224
  loc_CB1D11: ConcatStr
  loc_CB1D12: FStStrNoPop var_228
  loc_CB1D15: LitStr ","
  loc_CB1D18: ConcatStr
  loc_CB1D19: FStStrNoPop var_238
  loc_CB1D1C: LitI4 0
  loc_CB1D21: LitI4 -1
  loc_CB1D26: LitI4 1
  loc_CB1D2B: LitStr "."
  loc_CB1D2E: LitStr ","
  loc_CB1D31: FLdFPR8 var_230
  loc_CB1D34: CStrR8
  loc_CB1D36: FStStrNoPop var_234
  loc_CB1D39: ImpAdCallI2 Replace(, , , , , )
  loc_CB1D3E: FStStrNoPop var_23C
  loc_CB1D41: ConcatStr
  loc_CB1D42: FStStrNoPop var_240
  loc_CB1D45: LitStr ","
  loc_CB1D48: ConcatStr
  loc_CB1D49: FStStrNoPop var_250
  loc_CB1D4C: LitI4 0
  loc_CB1D51: LitI4 -1
  loc_CB1D56: LitI4 1
  loc_CB1D5B: LitStr "."
  loc_CB1D5E: LitStr ","
  loc_CB1D61: FLdFPR8 var_248
  loc_CB1D64: CStrR8
  loc_CB1D66: FStStrNoPop var_24C
  loc_CB1D69: ImpAdCallI2 Replace(, , , , , )
  loc_CB1D6E: FStStrNoPop var_254
  loc_CB1D71: ConcatStr
  loc_CB1D72: FStStrNoPop var_258
  loc_CB1D75: LitStr ","
  loc_CB1D78: ConcatStr
  loc_CB1D79: FStStrNoPop var_268
  loc_CB1D7C: LitI4 0
  loc_CB1D81: LitI4 -1
  loc_CB1D86: LitI4 1
  loc_CB1D8B: LitStr "."
  loc_CB1D8E: LitStr ","
  loc_CB1D91: FLdFPR8 var_260
  loc_CB1D94: CStrR8
  loc_CB1D96: FStStrNoPop var_264
  loc_CB1D99: ImpAdCallI2 Replace(, , , , , )
  loc_CB1D9E: FStStrNoPop var_26C
  loc_CB1DA1: ConcatStr
  loc_CB1DA2: FStStrNoPop var_270
  loc_CB1DA5: LitStr ","
  loc_CB1DA8: ConcatStr
  loc_CB1DA9: FStStrNoPop var_280
  loc_CB1DAC: LitI4 0
  loc_CB1DB1: LitI4 -1
  loc_CB1DB6: LitI4 1
  loc_CB1DBB: LitStr "."
  loc_CB1DBE: LitStr ","
  loc_CB1DC1: FLdFPR8 var_278
  loc_CB1DC4: CStrR8
  loc_CB1DC6: FStStrNoPop var_27C
  loc_CB1DC9: ImpAdCallI2 Replace(, , , , , )
  loc_CB1DCE: FStStrNoPop var_284
  loc_CB1DD1: ConcatStr
  loc_CB1DD2: FStStrNoPop var_288
  loc_CB1DD5: LitStr ","
  loc_CB1DD8: ConcatStr
  loc_CB1DD9: FStStrNoPop var_298
  loc_CB1DDC: LitI4 0
  loc_CB1DE1: LitI4 -1
  loc_CB1DE6: LitI4 1
  loc_CB1DEB: LitStr "."
  loc_CB1DEE: LitStr ","
  loc_CB1DF1: FLdFPR8 var_290
  loc_CB1DF4: CStrR8
  loc_CB1DF6: FStStrNoPop var_294
  loc_CB1DF9: ImpAdCallI2 Replace(, , , , , )
  loc_CB1DFE: FStStrNoPop var_29C
  loc_CB1E01: ConcatStr
  loc_CB1E02: FStStrNoPop var_2A0
  loc_CB1E05: LitStr ","
  loc_CB1E08: ConcatStr
  loc_CB1E09: FStStrNoPop var_2B0
  loc_CB1E0C: LitI4 0
  loc_CB1E11: LitI4 -1
  loc_CB1E16: LitI4 1
  loc_CB1E1B: LitStr "."
  loc_CB1E1E: LitStr ","
  loc_CB1E21: FLdFPR8 var_2A8
  loc_CB1E24: CStrR8
  loc_CB1E26: FStStrNoPop var_2AC
  loc_CB1E29: ImpAdCallI2 Replace(, , , , , )
  loc_CB1E2E: FStStrNoPop var_2B4
  loc_CB1E31: ConcatStr
  loc_CB1E32: FStStrNoPop var_2B8
  loc_CB1E35: LitStr ","
  loc_CB1E38: ConcatStr
  loc_CB1E39: FStStrNoPop var_2C8
  loc_CB1E3C: LitI4 0
  loc_CB1E41: LitI4 -1
  loc_CB1E46: LitI4 1
  loc_CB1E4B: LitStr "."
  loc_CB1E4E: LitStr ","
  loc_CB1E51: FLdFPR8 var_2C0
  loc_CB1E54: CStrR8
  loc_CB1E56: FStStrNoPop var_2C4
  loc_CB1E59: ImpAdCallI2 Replace(, , , , , )
  loc_CB1E5E: FStStrNoPop var_2CC
  loc_CB1E61: ConcatStr
  loc_CB1E62: FStStrNoPop var_2D0
  loc_CB1E65: LitStr ",'"
  loc_CB1E68: ConcatStr
  loc_CB1E69: FStStrNoPop var_2D4
  loc_CB1E6C: ImpAdLdI4 MemVar_D9302C
  loc_CB1E6F: ConcatStr
  loc_CB1E70: FStStrNoPop var_2D8
  loc_CB1E73: LitStr "');"
  loc_CB1E76: ConcatStr
  loc_CB1E77: FStStrNoPop var_2DC
  loc_CB1E7A: FLdPr Me
  loc_CB1E7D: MemStStrCopy
  loc_CB1E81: FFreeStr var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = "": var_224 = "": var_228 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_27C = "": var_280 = "": var_284 = "": var_288 = "": var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A8 = "": var_1A4 = "": var_1AC = "": var_1B4 = "": var_1B0 = "": var_1B8 = "": var_1CC = "": var_1BC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_CB1F1A: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_CB1F25: FLdRfVar var_9C
  loc_CB1F28: FLdPr Me
  loc_CB1F2B: MemLdRfVar from_stack_1.global_60
  loc_CB1F2E: NewIfNullPr clsboleto
  loc_CB1F31: from_stack_1 = clsboleto.FeveBole
  loc_CB1F36: FLdPr Me
  loc_CB1F39: MemLdStr global_128
  loc_CB1F3C: CDateStr
  loc_CB1F3E: FLdRfVar var_9C
  loc_CB1F41: FnCDateVar
  loc_CB1F43: GtR4
  loc_CB1F44: FFreeVar var_9C = ""
  loc_CB1F4B: BranchF loc_CB20E8
  loc_CB1F4E: LitI2_Byte 0
  loc_CB1F50: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB1F55: FStFPR8 var_1C4
  loc_CB1F58: FLdRfVar var_EC
  loc_CB1F5B: FLdPr Me
  loc_CB1F5E: MemLdRfVar from_stack_1.global_60
  loc_CB1F61: NewIfNullPr clsboleto
  loc_CB1F64: from_stack_1 = clsboleto.FeveBole
  loc_CB1F69: FLdRfVar var_1A0
  loc_CB1F6C: FLdPr Me
  loc_CB1F6F: MemLdRfVar from_stack_1.global_60
  loc_CB1F72: NewIfNullPr clsboleto
  loc_CB1F75: from_stack_1 = clsboleto.TotaBole
  loc_CB1F7A: FLdPr Me
  loc_CB1F7D: MemLdStr global_100
  loc_CB1F80: LitStr "INSERT INTO recabole (CodiOfic,CuenCtct,PeriBole,NumeBole,ActuRebo,FealRebo,FeveRebo,ImpoRebo) "
  loc_CB1F83: ConcatStr
  loc_CB1F84: FStStrNoPop var_114
  loc_CB1F87: LitStr " VALUES ("
  loc_CB1F8A: ConcatStr
  loc_CB1F8B: FStStrNoPop var_118
  loc_CB1F8E: FLdRfVar var_176
  loc_CB1F91: FLdPr Me
  loc_CB1F94: MemLdRfVar from_stack_1.global_60
  loc_CB1F97: NewIfNullPr clsboleto
  loc_CB1F9A: from_stack_1 = clsboleto.CodiOfic
  loc_CB1F9F: FLdI2 var_176
  loc_CB1FA2: CStrUI1
  loc_CB1FA4: FStStrNoPop var_11C
  loc_CB1FA7: ConcatStr
  loc_CB1FA8: FStStrNoPop var_164
  loc_CB1FAB: LitStr ",'"
  loc_CB1FAE: ConcatStr
  loc_CB1FAF: FStStrNoPop var_16C
  loc_CB1FB2: FLdRfVar var_168
  loc_CB1FB5: FLdPr Me
  loc_CB1FB8: MemLdRfVar from_stack_1.global_60
  loc_CB1FBB: NewIfNullPr clsboleto
  loc_CB1FBE: from_stack_1 = clsboleto.CuenCtct
  loc_CB1FC3: ILdRf var_168
  loc_CB1FC6: ConcatStr
  loc_CB1FC7: FStStrNoPop var_170
  loc_CB1FCA: LitStr "',"
  loc_CB1FCD: ConcatStr
  loc_CB1FCE: FStStrNoPop var_17C
  loc_CB1FD1: FLdRfVar var_1C6
  loc_CB1FD4: FLdPr Me
  loc_CB1FD7: MemLdRfVar from_stack_1.global_60
  loc_CB1FDA: NewIfNullPr clsboleto
  loc_CB1FDD: from_stack_1 = clsboleto.PeriBole
  loc_CB1FE2: FLdI2 var_1C6
  loc_CB1FE5: CStrUI1
  loc_CB1FE7: FStStrNoPop var_180
  loc_CB1FEA: ConcatStr
  loc_CB1FEB: FStStrNoPop var_184
  loc_CB1FEE: LitStr ","
  loc_CB1FF1: ConcatStr
  loc_CB1FF2: FStStrNoPop var_188
  loc_CB1FF5: FLdRfVar var_174
  loc_CB1FF8: FLdPr Me
  loc_CB1FFB: MemLdRfVar from_stack_1.global_60
  loc_CB1FFE: NewIfNullPr clsboleto
  loc_CB2001: from_stack_1 = clsboleto.NumeBole
  loc_CB2006: ILdRf var_174
  loc_CB2009: CStrI4
  loc_CB200B: FStStrNoPop var_18C
  loc_CB200E: ConcatStr
  loc_CB200F: FStStrNoPop var_190
  loc_CB2012: LitStr ",'No','"
  loc_CB2015: ConcatStr
  loc_CB2016: FStStrNoPop var_194
  loc_CB2019: LitI4 1
  loc_CB201E: LitI4 1
  loc_CB2023: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB2028: FStVarCopyObj var_CC
  loc_CB202B: FLdRfVar var_CC
  loc_CB202E: FLdFPR8 var_1C4
  loc_CB2031: CVarDate var_9C
  loc_CB2035: ImpAdCallI2 Format$(, )
  loc_CB203A: FStStrNoPop var_198
  loc_CB203D: ConcatStr
  loc_CB203E: FStStrNoPop var_1A4
  loc_CB2041: LitStr "','"
  loc_CB2044: ConcatStr
  loc_CB2045: FStStrNoPop var_1A8
  loc_CB2048: LitI4 1
  loc_CB204D: LitI4 1
  loc_CB2052: LitVarStr var_DC, "yyyy-mm-dd"
  loc_CB2057: FStVarCopyObj var_10C
  loc_CB205A: FLdRfVar var_10C
  loc_CB205D: FLdRfVar var_EC
  loc_CB2060: ImpAdCallI2 Format$(, )
  loc_CB2065: FStStrNoPop var_1AC
  loc_CB2068: ConcatStr
  loc_CB2069: FStStrNoPop var_1B0
  loc_CB206C: LitStr "',"
  loc_CB206F: ConcatStr
  loc_CB2070: FStStrNoPop var_1B8
  loc_CB2073: LitI4 0
  loc_CB2078: LitI4 -1
  loc_CB207D: LitI4 1
  loc_CB2082: LitStr "."
  loc_CB2085: LitStr ","
  loc_CB2088: FLdFPR8 var_1A0
  loc_CB208B: CStrR8
  loc_CB208D: FStStrNoPop var_1B4
  loc_CB2090: ImpAdCallI2 Replace(, , , , , )
  loc_CB2095: FStStrNoPop var_1BC
  loc_CB2098: ConcatStr
  loc_CB2099: FStStrNoPop var_1CC
  loc_CB209C: LitStr ");"
  loc_CB209F: ConcatStr
  loc_CB20A0: FStStrNoPop var_1D0
  loc_CB20A3: FLdPr Me
  loc_CB20A6: MemStStrCopy
  loc_CB20AA: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_16C = "": var_168 = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1CC = ""
  loc_CB20DD: FFreeVar var_9C = "": var_CC = "": var_EC = ""
  loc_CB20E8: FLdPr Me
  loc_CB20EB: MemLdStr global_100
  loc_CB20EE: LitStr " UPDATE boleapre SET EstaBoap = 'Pagado', FeenAcpa = "
  loc_CB20F1: ConcatStr
  loc_CB20F2: FStStrNoPop var_114
  loc_CB20F5: LitI4 1
  loc_CB20FA: LitI4 1
  loc_CB20FF: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_CB2104: FStVarCopyObj var_9C
  loc_CB2107: FLdRfVar var_9C
  loc_CB210A: FLdPr Me
  loc_CB210D: MemLdRfVar from_stack_1.global_128
  loc_CB2110: CVarRef
  loc_CB2115: ImpAdCallI2 Format$(, )
  loc_CB211A: FStStrNoPop var_118
  loc_CB211D: ConcatStr
  loc_CB211E: FStStrNoPop var_11C
  loc_CB2121: LitStr ", FeacBoap = Null WHERE PeriBole = "
  loc_CB2124: ConcatStr
  loc_CB2125: FStStrNoPop var_164
  loc_CB2128: FLdRfVar var_176
  loc_CB212B: FLdPr Me
  loc_CB212E: MemLdRfVar from_stack_1.global_60
  loc_CB2131: NewIfNullPr clsboleto
  loc_CB2134: from_stack_1 = clsboleto.PeriBole
  loc_CB2139: FLdI2 var_176
  loc_CB213C: CStrUI1
  loc_CB213E: FStStrNoPop var_168
  loc_CB2141: ConcatStr
  loc_CB2142: FStStrNoPop var_16C
  loc_CB2145: LitStr " AND NumeBole = "
  loc_CB2148: ConcatStr
  loc_CB2149: FStStrNoPop var_170
  loc_CB214C: FLdRfVar var_174
  loc_CB214F: FLdPr Me
  loc_CB2152: MemLdRfVar from_stack_1.global_60
  loc_CB2155: NewIfNullPr clsboleto
  loc_CB2158: from_stack_1 = clsboleto.NumeBole
  loc_CB215D: ILdRf var_174
  loc_CB2160: CStrI4
  loc_CB2162: FStStrNoPop var_17C
  loc_CB2165: ConcatStr
  loc_CB2166: FStStrNoPop var_180
  loc_CB2169: LitStr ";"
  loc_CB216C: ConcatStr
  loc_CB216D: FStStrNoPop var_184
  loc_CB2170: FLdPr Me
  loc_CB2173: MemStStrCopy
  loc_CB2177: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = ""
  loc_CB218E: FFree1Var var_9C = ""
  loc_CB2191: FLdPr Me
  loc_CB2194: MemLdStr global_100
  loc_CB2197: LitStr " UPDATE boleto SET EstaBole = 'Pagado' WHERE PeriBole = "
  loc_CB219A: ConcatStr
  loc_CB219B: FStStrNoPop var_114
  loc_CB219E: FLdRfVar var_176
  loc_CB21A1: FLdPr Me
  loc_CB21A4: MemLdRfVar from_stack_1.global_60
  loc_CB21A7: NewIfNullPr clsboleto
  loc_CB21AA: from_stack_1 = clsboleto.PeriBole
  loc_CB21AF: FLdI2 var_176
  loc_CB21B2: CStrUI1
  loc_CB21B4: FStStrNoPop var_118
  loc_CB21B7: ConcatStr
  loc_CB21B8: FStStrNoPop var_11C
  loc_CB21BB: LitStr " AND NumeBole = "
  loc_CB21BE: ConcatStr
  loc_CB21BF: FStStrNoPop var_164
  loc_CB21C2: FLdRfVar var_174
  loc_CB21C5: FLdPr Me
  loc_CB21C8: MemLdRfVar from_stack_1.global_60
  loc_CB21CB: NewIfNullPr clsboleto
  loc_CB21CE: from_stack_1 = clsboleto.NumeBole
  loc_CB21D3: ILdRf var_174
  loc_CB21D6: CStrI4
  loc_CB21D8: FStStrNoPop var_168
  loc_CB21DB: ConcatStr
  loc_CB21DC: FStStrNoPop var_16C
  loc_CB21DF: LitStr ";"
  loc_CB21E2: ConcatStr
  loc_CB21E3: FStStrNoPop var_170
  loc_CB21E6: FLdPr Me
  loc_CB21E9: MemStStrCopy
  loc_CB21ED: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = ""
  loc_CB21FE: LitStr "SELECT detabole.*, concepto.TipaConc FROM detabole "
  loc_CB2201: LitStr " INNER JOIN concepto ON concepto.PeriInfo = "
  loc_CB2204: ConcatStr
  loc_CB2205: FStStrNoPop var_114
  loc_CB2208: ImpAdLdI2 MemVar_D93034
  loc_CB220B: CStrUI1
  loc_CB220D: FStStrNoPop var_118
  loc_CB2210: ConcatStr
  loc_CB2211: FStStrNoPop var_11C
  loc_CB2214: LitStr " AND concepto.CodiConc = detabole.CodiConc"
  loc_CB2217: ConcatStr
  loc_CB2218: FStStrNoPop var_164
  loc_CB221B: LitStr " WHERE PeriBole = "
  loc_CB221E: ConcatStr
  loc_CB221F: FStStrNoPop var_168
  loc_CB2222: FLdRfVar var_176
  loc_CB2225: FLdPr Me
  loc_CB2228: MemLdRfVar from_stack_1.global_60
  loc_CB222B: NewIfNullPr clsboleto
  loc_CB222E: from_stack_1 = clsboleto.PeriBole
  loc_CB2233: FLdI2 var_176
  loc_CB2236: CStrUI1
  loc_CB2238: FStStrNoPop var_16C
  loc_CB223B: ConcatStr
  loc_CB223C: FStStrNoPop var_170
  loc_CB223F: LitStr " AND NumeBole = "
  loc_CB2242: ConcatStr
  loc_CB2243: FStStrNoPop var_17C
  loc_CB2246: FLdRfVar var_174
  loc_CB2249: FLdPr Me
  loc_CB224C: MemLdRfVar from_stack_1.global_60
  loc_CB224F: NewIfNullPr clsboleto
  loc_CB2252: from_stack_1 = clsboleto.NumeBole
  loc_CB2257: ILdRf var_174
  loc_CB225A: CStrI4
  loc_CB225C: FStStrNoPop var_180
  loc_CB225F: ConcatStr
  loc_CB2260: FStStrNoPop var_184
  loc_CB2263: LitStr " ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct"
  loc_CB2266: ConcatStr
  loc_CB2267: FStStrNoPop var_188
  loc_CB226A: FLdPr Me
  loc_CB226D: MemLdRfVar from_stack_1.global_68
  loc_CB2270: NewIfNullPr clsdetabole
  loc_CB2273: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CB2278: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = ""
  loc_CB2291: FLdRfVar var_174
  loc_CB2294: FLdPr Me
  loc_CB2297: MemLdRfVar from_stack_1.global_68
  loc_CB229A: NewIfNullPr clsdetabole
  loc_CB229D: from_stack_1 = clsdetabole.RecordCount
  loc_CB22A2: ILdRf var_174
  loc_CB22A5: LitI4 0
  loc_CB22AA: GtI4
  loc_CB22AB: BranchF loc_CB30FE
  loc_CB22AE: FLdPr Me
  loc_CB22B1: MemLdRfVar from_stack_1.global_68
  loc_CB22B4: NewIfNullPr clsdetabole
  loc_CB22B7: Call clsdetabole.MoveFirst()
  loc_CB22BC: FLdRfVar var_114
  loc_CB22BF: FLdPr Me
  loc_CB22C2: MemLdRfVar from_stack_1.global_60
  loc_CB22C5: NewIfNullPr clsboleto
  loc_CB22C8: from_stack_1 = clsboleto.TipoBole
  loc_CB22CD: ILdRf var_114
  loc_CB22D0: LitStr "Anual"
  loc_CB22D3: EqStr
  loc_CB22D5: FFree1Str var_114
  loc_CB22D8: BranchF loc_CB2301
  loc_CB22DB: LitStr "Anual del "
  loc_CB22DE: FLdRfVar var_174
  loc_CB22E1: FLdPr Me
  loc_CB22E4: MemLdRfVar from_stack_1.global_68
  loc_CB22E7: NewIfNullPr clsdetabole
  loc_CB22EA: from_stack_1 = clsdetabole.PeriCtct
  loc_CB22EF: ILdRf var_174
  loc_CB22F2: CStrI4
  loc_CB22F4: FStStrNoPop var_114
  loc_CB22F7: ConcatStr
  loc_CB22F8: FStStr var_88
  loc_CB22FB: FFree1Str var_114
  loc_CB22FE: Branch loc_CB236F
  loc_CB2301: FLdRfVar var_114
  loc_CB2304: FLdPr Me
  loc_CB2307: MemLdRfVar from_stack_1.global_60
  loc_CB230A: NewIfNullPr clsboleto
  loc_CB230D: from_stack_1 = clsboleto.TipoBole
  loc_CB2312: ILdRf var_114
  loc_CB2315: LitStr "Bimestral"
  loc_CB2318: EqStr
  loc_CB231A: FFree1Str var_114
  loc_CB231D: BranchF loc_CB2369
  loc_CB2320: FLdRfVar var_176
  loc_CB2323: FLdPr Me
  loc_CB2326: MemLdRfVar from_stack_1.global_68
  loc_CB2329: NewIfNullPr clsdetabole
  loc_CB232C: from_stack_1 = clsdetabole.BimeCtct
  loc_CB2331: FLdI2 var_176
  loc_CB2334: CStrUI1
  loc_CB2336: FStStrNoPop var_114
  loc_CB2339: LitStr "/"
  loc_CB233C: ConcatStr
  loc_CB233D: FStStrNoPop var_118
  loc_CB2340: FLdRfVar var_174
  loc_CB2343: FLdPr Me
  loc_CB2346: MemLdRfVar from_stack_1.global_68
  loc_CB2349: NewIfNullPr clsdetabole
  loc_CB234C: from_stack_1 = clsdetabole.PeriCtct
  loc_CB2351: ILdRf var_174
  loc_CB2354: CStrI4
  loc_CB2356: FStStrNoPop var_11C
  loc_CB2359: ConcatStr
  loc_CB235A: FStStr var_88
  loc_CB235D: FFreeStr var_114 = "": var_118 = ""
  loc_CB2366: Branch loc_CB236F
  loc_CB2369: LitStr vbNullString
  loc_CB236C: FStStrCopy var_88
  loc_CB236F: FLdRfVar var_176
  loc_CB2372: FLdPr Me
  loc_CB2375: MemLdRfVar from_stack_1.global_68
  loc_CB2378: NewIfNullPr clsdetabole
  loc_CB237B: from_stack_1 = clsdetabole.EOF
  loc_CB2380: FLdI2 var_176
  loc_CB2383: NotI4
  loc_CB2384: BranchF loc_CB30FB
  loc_CB2387: LitI2_Byte 0
  loc_CB2389: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_CB238E: CVarDate var_9C
  loc_CB2392: FLdRfVar var_CC
  loc_CB2395: ImpAdCallFPR4  = Year()
  loc_CB239A: FLdRfVar var_114
  loc_CB239D: FLdPr Me
  loc_CB23A0: MemLdRfVar from_stack_1.global_68
  loc_CB23A3: NewIfNullPr clsdetabole
  loc_CB23A6: from_stack_1 = clsdetabole.CodiConc
  loc_CB23AB: ILdRf var_114
  loc_CB23AE: FLdRfVar var_CC
  loc_CB23B1: CI2Var
  loc_CB23B2: ImpAdCallI2 Proc_270_58_A92A98(, )
  loc_CB23B7: FStStrNoPop var_118
  loc_CB23BA: LitStr vbNullString
  loc_CB23BD: EqStr
  loc_CB23BF: FFreeStr var_114 = ""
  loc_CB23C6: FFreeVar var_9C = ""
  loc_CB23CD: BranchF loc_CB240A
  loc_CB23D0: LitStr "El concepto: "
  loc_CB23D3: FLdRfVar var_114
  loc_CB23D6: FLdPr Me
  loc_CB23D9: MemLdRfVar from_stack_1.global_68
  loc_CB23DC: NewIfNullPr clsdetabole
  loc_CB23DF: from_stack_1 = clsdetabole.CodiConc
  loc_CB23E4: ILdRf var_114
  loc_CB23E7: ConcatStr
  loc_CB23E8: FStStrNoPop var_118
  loc_CB23EB: LitStr " No tiene asociado ninguna cuenta contable de ingresos. No se ingresa el boleto."
  loc_CB23EE: ConcatStr
  loc_CB23EF: FStStrNoPop var_11C
  loc_CB23F2: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB23F7: FFreeStr var_114 = "": var_118 = ""
  loc_CB2400: LitStr "ERRRROR"
  loc_CB2403: FLdPr Me
  loc_CB2406: MemStStrCopy
  loc_CB240A: FLdRfVar var_114
  loc_CB240D: FLdPr Me
  loc_CB2410: MemLdRfVar from_stack_1.global_68
  loc_CB2413: NewIfNullPr clsdetabole
  loc_CB2416: from_stack_1 = clsdetabole.CuenCtct
  loc_CB241B: ILdRf var_114
  loc_CB241E: LitStr vbNullString
  loc_CB2421: NeStr
  loc_CB2423: FFree1Str var_114
  loc_CB2426: BranchF loc_CB24D4
  loc_CB2429: FLdRfVar var_176
  loc_CB242C: FLdPr Me
  loc_CB242F: MemLdRfVar from_stack_1.global_68
  loc_CB2432: NewIfNullPr clsdetabole
  loc_CB2435: from_stack_1 = clsdetabole.CodiTimo
  loc_CB243A: FLdI2 var_176
  loc_CB243D: LitI2_Byte 0
  loc_CB243F: EqI2
  loc_CB2440: BranchF loc_CB247D
  loc_CB2443: LitStr "El concepto: "
  loc_CB2446: FLdRfVar var_114
  loc_CB2449: FLdPr Me
  loc_CB244C: MemLdRfVar from_stack_1.global_68
  loc_CB244F: NewIfNullPr clsdetabole
  loc_CB2452: from_stack_1 = clsdetabole.CodiConc
  loc_CB2457: ILdRf var_114
  loc_CB245A: ConcatStr
  loc_CB245B: FStStrNoPop var_118
  loc_CB245E: LitStr " No tiene asociado ningún tipo de movimiento de aforo. No se ingresa el boleto."
  loc_CB2461: ConcatStr
  loc_CB2462: FStStrNoPop var_11C
  loc_CB2465: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB246A: FFreeStr var_114 = "": var_118 = ""
  loc_CB2473: LitStr "ERRRROR"
  loc_CB2476: FLdPr Me
  loc_CB2479: MemStStrCopy
  loc_CB247D: FLdRfVar var_176
  loc_CB2480: FLdPr Me
  loc_CB2483: MemLdRfVar from_stack_1.global_68
  loc_CB2486: NewIfNullPr clsdetabole
  loc_CB2489: from_stack_1 = clsdetabole.TipaConc
  loc_CB248E: FLdUI1
  loc_CB2492: CI2UI1
  loc_CB2494: LitI2_Byte 0
  loc_CB2496: EqI2
  loc_CB2497: BranchF loc_CB24D4
  loc_CB249A: LitStr "El concepto: "
  loc_CB249D: FLdRfVar var_114
  loc_CB24A0: FLdPr Me
  loc_CB24A3: MemLdRfVar from_stack_1.global_68
  loc_CB24A6: NewIfNullPr clsdetabole
  loc_CB24A9: from_stack_1 = clsdetabole.CodiConc
  loc_CB24AE: ILdRf var_114
  loc_CB24B1: ConcatStr
  loc_CB24B2: FStStrNoPop var_118
  loc_CB24B5: LitStr " No tiene asociado ningún tipo de movimiento de pago. No se ingresa el boleto."
  loc_CB24B8: ConcatStr
  loc_CB24B9: FStStrNoPop var_11C
  loc_CB24BC: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB24C1: FFreeStr var_114 = "": var_118 = ""
  loc_CB24CA: LitStr "ERRRROR"
  loc_CB24CD: FLdPr Me
  loc_CB24D0: MemStStrCopy
  loc_CB24D4: FLdRfVar var_1A0
  loc_CB24D7: FLdPr Me
  loc_CB24DA: MemLdRfVar from_stack_1.global_68
  loc_CB24DD: NewIfNullPr clsdetabole
  loc_CB24E0: from_stack_1 = clsdetabole.CapiDebo
  loc_CB24E5: FLdRfVar var_1C4
  loc_CB24E8: FLdPr Me
  loc_CB24EB: MemLdRfVar from_stack_1.global_68
  loc_CB24EE: NewIfNullPr clsdetabole
  loc_CB24F1: from_stack_1 = clsdetabole.DecaDebo
  loc_CB24F6: FLdRfVar var_230
  loc_CB24F9: FLdPr Me
  loc_CB24FC: MemLdRfVar from_stack_1.global_68
  loc_CB24FF: NewIfNullPr clsdetabole
  loc_CB2502: from_stack_1 = clsdetabole.RecaDebo
  loc_CB2507: FLdRfVar var_248
  loc_CB250A: FLdPr Me
  loc_CB250D: MemLdRfVar from_stack_1.global_68
  loc_CB2510: NewIfNullPr clsdetabole
  loc_CB2513: from_stack_1 = clsdetabole.DereDebo
  loc_CB2518: FLdRfVar var_260
  loc_CB251B: FLdPr Me
  loc_CB251E: MemLdRfVar from_stack_1.global_68
  loc_CB2521: NewIfNullPr clsdetabole
  loc_CB2524: from_stack_1 = clsdetabole.InteDebo
  loc_CB2529: FLdRfVar var_278
  loc_CB252C: FLdPr Me
  loc_CB252F: MemLdRfVar from_stack_1.global_68
  loc_CB2532: NewIfNullPr clsdetabole
  loc_CB2535: from_stack_1 = clsdetabole.ExenDebo
  loc_CB253A: FLdRfVar var_290
  loc_CB253D: FLdPr Me
  loc_CB2540: MemLdRfVar from_stack_1.global_68
  loc_CB2543: NewIfNullPr clsdetabole
  loc_CB2546: from_stack_1 = clsdetabole.CrafDebo
  loc_CB254B: FLdRfVar var_2A8
  loc_CB254E: FLdPr Me
  loc_CB2551: MemLdRfVar from_stack_1.global_68
  loc_CB2554: NewIfNullPr clsdetabole
  loc_CB2557: from_stack_1 = clsdetabole.ApreDebo
  loc_CB255C: FLdRfVar var_2C0
  loc_CB255F: FLdPr Me
  loc_CB2562: MemLdRfVar from_stack_1.global_68
  loc_CB2565: NewIfNullPr clsdetabole
  loc_CB2568: from_stack_1 = clsdetabole.TotaDebo
  loc_CB256D: FLdPr Me
  loc_CB2570: MemLdStr global_100
  loc_CB2573: LitStr " INSERT INTO detapago (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,CodiTili,NumeLiqu,ActuDepa,CodiOfic,CuenCtct,TipoCtct,CodiFapa,CuotDefa,NumeApre,CodiTimo,PeriInfo,CodiConc,CapiDepa,DecaDepa,RecaDepa,DereDepa,InteDepa,ExenDepa,CrafDepa,ApreDepa,TotaDepa) VALUES ('"
  loc_CB2576: ConcatStr
  loc_CB2577: FStStrNoPop var_114
  loc_CB257A: LitI4 1
  loc_CB257F: LitI4 1
  loc_CB2584: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB2589: FStVarCopyObj var_9C
  loc_CB258C: FLdRfVar var_9C
  loc_CB258F: FLdPr Me
  loc_CB2592: MemLdRfVar from_stack_1.global_128
  loc_CB2595: CVarRef
  loc_CB259A: ImpAdCallI2 Format$(, )
  loc_CB259F: FStStrNoPop var_118
  loc_CB25A2: ConcatStr
  loc_CB25A3: FStStrNoPop var_11C
  loc_CB25A6: LitStr "',"
  loc_CB25A9: ConcatStr
  loc_CB25AA: FStStrNoPop var_164
  loc_CB25AD: FLdPr Me
  loc_CB25B0: MemLdI2 global_106
  loc_CB25B3: CStrUI1
  loc_CB25B5: FStStrNoPop var_168
  loc_CB25B8: ConcatStr
  loc_CB25B9: FStStrNoPop var_16C
  loc_CB25BC: LitStr ","
  loc_CB25BF: ConcatStr
  loc_CB25C0: FStStrNoPop var_170
  loc_CB25C3: FLdRfVar var_176
  loc_CB25C6: FLdPr Me
  loc_CB25C9: MemLdRfVar from_stack_1.global_68
  loc_CB25CC: NewIfNullPr clsdetabole
  loc_CB25CF: from_stack_1 = clsdetabole.PeriBole
  loc_CB25D4: FLdI2 var_176
  loc_CB25D7: CStrUI1
  loc_CB25D9: FStStrNoPop var_17C
  loc_CB25DC: ConcatStr
  loc_CB25DD: FStStrNoPop var_180
  loc_CB25E0: LitStr ","
  loc_CB25E3: ConcatStr
  loc_CB25E4: FStStrNoPop var_184
  loc_CB25E7: FLdRfVar var_174
  loc_CB25EA: FLdPr Me
  loc_CB25ED: MemLdRfVar from_stack_1.global_68
  loc_CB25F0: NewIfNullPr clsdetabole
  loc_CB25F3: from_stack_1 = clsdetabole.NumeBole
  loc_CB25F8: ILdRf var_174
  loc_CB25FB: CStrI4
  loc_CB25FD: FStStrNoPop var_188
  loc_CB2600: ConcatStr
  loc_CB2601: FStStrNoPop var_18C
  loc_CB2604: LitStr ","
  loc_CB2607: ConcatStr
  loc_CB2608: FStStrNoPop var_190
  loc_CB260B: FLdRfVar var_1EC
  loc_CB260E: FLdPr Me
  loc_CB2611: MemLdRfVar from_stack_1.global_68
  loc_CB2614: NewIfNullPr clsdetabole
  loc_CB2617: from_stack_1 = clsdetabole.PeriCtct
  loc_CB261C: ILdRf var_1EC
  loc_CB261F: CStrI4
  loc_CB2621: FStStrNoPop var_194
  loc_CB2624: ConcatStr
  loc_CB2625: FStStrNoPop var_198
  loc_CB2628: LitStr ","
  loc_CB262B: ConcatStr
  loc_CB262C: FStStrNoPop var_1A4
  loc_CB262F: FLdRfVar var_1C6
  loc_CB2632: FLdPr Me
  loc_CB2635: MemLdRfVar from_stack_1.global_68
  loc_CB2638: NewIfNullPr clsdetabole
  loc_CB263B: from_stack_1 = clsdetabole.BimeCtct
  loc_CB2640: FLdI2 var_1C6
  loc_CB2643: CStrUI1
  loc_CB2645: FStStrNoPop var_1A8
  loc_CB2648: ConcatStr
  loc_CB2649: FStStrNoPop var_1AC
  loc_CB264C: LitStr ","
  loc_CB264F: ConcatStr
  loc_CB2650: FStStrNoPop var_1B0
  loc_CB2653: FLdRfVar var_2E8
  loc_CB2656: FLdPr Me
  loc_CB2659: MemLdRfVar from_stack_1.global_68
  loc_CB265C: NewIfNullPr clsdetabole
  loc_CB265F: from_stack_1 = clsdetabole.NumeCtct
  loc_CB2664: ILdRf var_2E8
  loc_CB2667: CStrI4
  loc_CB2669: FStStrNoPop var_1B4
  loc_CB266C: ConcatStr
  loc_CB266D: FStStrNoPop var_1B8
  loc_CB2670: LitStr ","
  loc_CB2673: ConcatStr
  loc_CB2674: FStStrNoPop var_1BC
  loc_CB2677: FLdRfVar var_1FA
  loc_CB267A: FLdPr Me
  loc_CB267D: MemLdRfVar from_stack_1.global_68
  loc_CB2680: NewIfNullPr clsdetabole
  loc_CB2683: from_stack_1 = clsdetabole.MoviCtct
  loc_CB2688: FLdI2 var_1FA
  loc_CB268B: CStrUI1
  loc_CB268D: FStStrNoPop var_1CC
  loc_CB2690: ConcatStr
  loc_CB2691: FStStrNoPop var_1D0
  loc_CB2694: LitStr ","
  loc_CB2697: ConcatStr
  loc_CB2698: FStStrNoPop var_1D4
  loc_CB269B: FLdRfVar var_2EA
  loc_CB269E: FLdPr Me
  loc_CB26A1: MemLdRfVar from_stack_1.global_68
  loc_CB26A4: NewIfNullPr clsdetabole
  loc_CB26A7: from_stack_1 = clsdetabole.MoviDebo
  loc_CB26AC: FLdI2 var_2EA
  loc_CB26AF: CStrUI1
  loc_CB26B1: FStStrNoPop var_1D8
  loc_CB26B4: ConcatStr
  loc_CB26B5: FStStrNoPop var_1DC
  loc_CB26B8: LitStr ","
  loc_CB26BB: ConcatStr
  loc_CB26BC: FStStrNoPop var_1E0
  loc_CB26BF: FLdRfVar var_2EC
  loc_CB26C2: FLdPr Me
  loc_CB26C5: MemLdRfVar from_stack_1.global_68
  loc_CB26C8: NewIfNullPr clsdetabole
  loc_CB26CB: from_stack_1 = clsdetabole.CodiTili
  loc_CB26D0: FLdUI1
  loc_CB26D4: CStrI2
  loc_CB26D6: FStStrNoPop var_1E4
  loc_CB26D9: ConcatStr
  loc_CB26DA: FStStrNoPop var_1E8
  loc_CB26DD: LitStr ","
  loc_CB26E0: ConcatStr
  loc_CB26E1: FStStrNoPop var_1F0
  loc_CB26E4: FLdRfVar var_2EE
  loc_CB26E7: FLdPr Me
  loc_CB26EA: MemLdRfVar from_stack_1.global_68
  loc_CB26ED: NewIfNullPr clsdetabole
  loc_CB26F0: from_stack_1 = clsdetabole.NumeLiqu
  loc_CB26F5: FLdI2 var_2EE
  loc_CB26F8: CStrUI1
  loc_CB26FA: FStStrNoPop var_1F4
  loc_CB26FD: ConcatStr
  loc_CB26FE: FStStrNoPop var_1F8
  loc_CB2701: LitStr ",'No',"
  loc_CB2704: ConcatStr
  loc_CB2705: FStStrNoPop var_200
  loc_CB2708: FLdRfVar var_2F0
  loc_CB270B: FLdPr Me
  loc_CB270E: MemLdRfVar from_stack_1.global_68
  loc_CB2711: NewIfNullPr clsdetabole
  loc_CB2714: from_stack_1 = clsdetabole.CodiOfic
  loc_CB2719: FLdUI1
  loc_CB271D: CStrI2
  loc_CB271F: FStStrNoPop var_204
  loc_CB2722: ConcatStr
  loc_CB2723: FStStrNoPop var_208
  loc_CB2726: LitStr ",'"
  loc_CB2729: ConcatStr
  loc_CB272A: FStStrNoPop var_210
  loc_CB272D: FLdRfVar var_20C
  loc_CB2730: FLdPr Me
  loc_CB2733: MemLdRfVar from_stack_1.global_68
  loc_CB2736: NewIfNullPr clsdetabole
  loc_CB2739: from_stack_1 = clsdetabole.CuenCtct
  loc_CB273E: ILdRf var_20C
  loc_CB2741: ConcatStr
  loc_CB2742: FStStrNoPop var_214
  loc_CB2745: LitStr "','"
  loc_CB2748: ConcatStr
  loc_CB2749: FStStrNoPop var_21C
  loc_CB274C: FLdRfVar var_218
  loc_CB274F: FLdPr Me
  loc_CB2752: MemLdRfVar from_stack_1.global_68
  loc_CB2755: NewIfNullPr clsdetabole
  loc_CB2758: from_stack_1 = clsdetabole.TipoCtct
  loc_CB275D: ILdRf var_218
  loc_CB2760: ConcatStr
  loc_CB2761: FStStrNoPop var_220
  loc_CB2764: LitStr "',"
  loc_CB2767: ConcatStr
  loc_CB2768: FStStrNoPop var_224
  loc_CB276B: FLdRfVar var_2F4
  loc_CB276E: FLdPr Me
  loc_CB2771: MemLdRfVar from_stack_1.global_68
  loc_CB2774: NewIfNullPr clsdetabole
  loc_CB2777: from_stack_1 = clsdetabole.CodiFapa
  loc_CB277C: ILdRf var_2F4
  loc_CB277F: CStrI4
  loc_CB2781: FStStrNoPop var_228
  loc_CB2784: ConcatStr
  loc_CB2785: FStStrNoPop var_234
  loc_CB2788: LitStr ","
  loc_CB278B: ConcatStr
  loc_CB278C: FStStrNoPop var_238
  loc_CB278F: FLdRfVar var_2F6
  loc_CB2792: FLdPr Me
  loc_CB2795: MemLdRfVar from_stack_1.global_68
  loc_CB2798: NewIfNullPr clsdetabole
  loc_CB279B: from_stack_1 = clsdetabole.CuotDefa
  loc_CB27A0: FLdI2 var_2F6
  loc_CB27A3: CStrUI1
  loc_CB27A5: FStStrNoPop var_23C
  loc_CB27A8: ConcatStr
  loc_CB27A9: FStStrNoPop var_240
  loc_CB27AC: LitStr ","
  loc_CB27AF: ConcatStr
  loc_CB27B0: FStStrNoPop var_24C
  loc_CB27B3: FLdRfVar var_2FC
  loc_CB27B6: FLdPr Me
  loc_CB27B9: MemLdRfVar from_stack_1.global_68
  loc_CB27BC: NewIfNullPr clsdetabole
  loc_CB27BF: from_stack_1 = clsdetabole.NumeApre
  loc_CB27C4: ILdRf var_2FC
  loc_CB27C7: CStrI4
  loc_CB27C9: FStStrNoPop var_250
  loc_CB27CC: ConcatStr
  loc_CB27CD: FStStrNoPop var_254
  loc_CB27D0: LitStr ","
  loc_CB27D3: ConcatStr
  loc_CB27D4: FStStrNoPop var_258
  loc_CB27D7: FLdRfVar var_2FE
  loc_CB27DA: FLdPr Me
  loc_CB27DD: MemLdRfVar from_stack_1.global_68
  loc_CB27E0: NewIfNullPr clsdetabole
  loc_CB27E3: from_stack_1 = clsdetabole.TipaConc
  loc_CB27E8: FLdUI1
  loc_CB27EC: CStrI2
  loc_CB27EE: FStStrNoPop var_264
  loc_CB27F1: ConcatStr
  loc_CB27F2: FStStrNoPop var_268
  loc_CB27F5: LitStr ","
  loc_CB27F8: ConcatStr
  loc_CB27F9: FStStrNoPop var_26C
  loc_CB27FC: FLdRfVar var_300
  loc_CB27FF: FLdPr Me
  loc_CB2802: MemLdRfVar from_stack_1.global_68
  loc_CB2805: NewIfNullPr clsdetabole
  loc_CB2808: from_stack_1 = clsdetabole.PeriInfo
  loc_CB280D: FLdI2 var_300
  loc_CB2810: CStrUI1
  loc_CB2812: FStStrNoPop var_270
  loc_CB2815: ConcatStr
  loc_CB2816: FStStrNoPop var_27C
  loc_CB2819: LitStr ",'"
  loc_CB281C: ConcatStr
  loc_CB281D: FStStrNoPop var_284
  loc_CB2820: FLdRfVar var_280
  loc_CB2823: FLdPr Me
  loc_CB2826: MemLdRfVar from_stack_1.global_68
  loc_CB2829: NewIfNullPr clsdetabole
  loc_CB282C: from_stack_1 = clsdetabole.CodiConc
  loc_CB2831: ILdRf var_280
  loc_CB2834: ConcatStr
  loc_CB2835: FStStrNoPop var_288
  loc_CB2838: LitStr "',"
  loc_CB283B: ConcatStr
  loc_CB283C: FStStrNoPop var_298
  loc_CB283F: LitI4 0
  loc_CB2844: LitI4 -1
  loc_CB2849: LitI4 1
  loc_CB284E: LitStr "."
  loc_CB2851: LitStr ","
  loc_CB2854: FLdFPR8 var_1A0
  loc_CB2857: CStrR8
  loc_CB2859: FStStrNoPop var_294
  loc_CB285C: ImpAdCallI2 Replace(, , , , , )
  loc_CB2861: FStStrNoPop var_29C
  loc_CB2864: ConcatStr
  loc_CB2865: FStStrNoPop var_2A0
  loc_CB2868: LitStr ","
  loc_CB286B: ConcatStr
  loc_CB286C: FStStrNoPop var_2B0
  loc_CB286F: LitI4 0
  loc_CB2874: LitI4 -1
  loc_CB2879: LitI4 1
  loc_CB287E: LitStr "."
  loc_CB2881: LitStr ","
  loc_CB2884: FLdFPR8 var_1C4
  loc_CB2887: CStrR8
  loc_CB2889: FStStrNoPop var_2AC
  loc_CB288C: ImpAdCallI2 Replace(, , , , , )
  loc_CB2891: FStStrNoPop var_2B4
  loc_CB2894: ConcatStr
  loc_CB2895: FStStrNoPop var_2B8
  loc_CB2898: LitStr ","
  loc_CB289B: ConcatStr
  loc_CB289C: FStStrNoPop var_2C8
  loc_CB289F: LitI4 0
  loc_CB28A4: LitI4 -1
  loc_CB28A9: LitI4 1
  loc_CB28AE: LitStr "."
  loc_CB28B1: LitStr ","
  loc_CB28B4: FLdFPR8 var_230
  loc_CB28B7: CStrR8
  loc_CB28B9: FStStrNoPop var_2C4
  loc_CB28BC: ImpAdCallI2 Replace(, , , , , )
  loc_CB28C1: FStStrNoPop var_2CC
  loc_CB28C4: ConcatStr
  loc_CB28C5: FStStrNoPop var_2D0
  loc_CB28C8: LitStr ","
  loc_CB28CB: ConcatStr
  loc_CB28CC: FStStrNoPop var_2D8
  loc_CB28CF: LitI4 0
  loc_CB28D4: LitI4 -1
  loc_CB28D9: LitI4 1
  loc_CB28DE: LitStr "."
  loc_CB28E1: LitStr ","
  loc_CB28E4: FLdFPR8 var_248
  loc_CB28E7: CStrR8
  loc_CB28E9: FStStrNoPop var_2D4
  loc_CB28EC: ImpAdCallI2 Replace(, , , , , )
  loc_CB28F1: FStStrNoPop var_2DC
  loc_CB28F4: ConcatStr
  loc_CB28F5: FStStrNoPop var_304
  loc_CB28F8: LitStr ","
  loc_CB28FB: ConcatStr
  loc_CB28FC: FStStrNoPop var_30C
  loc_CB28FF: LitI4 0
  loc_CB2904: LitI4 -1
  loc_CB2909: LitI4 1
  loc_CB290E: LitStr "."
  loc_CB2911: LitStr ","
  loc_CB2914: FLdFPR8 var_260
  loc_CB2917: CStrR8
  loc_CB2919: FStStrNoPop var_308
  loc_CB291C: ImpAdCallI2 Replace(, , , , , )
  loc_CB2921: FStStrNoPop var_310
  loc_CB2924: ConcatStr
  loc_CB2925: FStStrNoPop var_314
  loc_CB2928: LitStr ","
  loc_CB292B: ConcatStr
  loc_CB292C: FStStrNoPop var_31C
  loc_CB292F: LitI4 0
  loc_CB2934: LitI4 -1
  loc_CB2939: LitI4 1
  loc_CB293E: LitStr "."
  loc_CB2941: LitStr ","
  loc_CB2944: FLdFPR8 var_278
  loc_CB2947: CStrR8
  loc_CB2949: FStStrNoPop var_318
  loc_CB294C: ImpAdCallI2 Replace(, , , , , )
  loc_CB2951: FStStrNoPop var_320
  loc_CB2954: ConcatStr
  loc_CB2955: FStStrNoPop var_324
  loc_CB2958: LitStr ","
  loc_CB295B: ConcatStr
  loc_CB295C: FStStrNoPop var_32C
  loc_CB295F: LitI4 0
  loc_CB2964: LitI4 -1
  loc_CB2969: LitI4 1
  loc_CB296E: LitStr "."
  loc_CB2971: LitStr ","
  loc_CB2974: FLdFPR8 var_290
  loc_CB2977: CStrR8
  loc_CB2979: FStStrNoPop var_328
  loc_CB297C: ImpAdCallI2 Replace(, , , , , )
  loc_CB2981: FStStrNoPop var_330
  loc_CB2984: ConcatStr
  loc_CB2985: FStStrNoPop var_334
  loc_CB2988: LitStr ","
  loc_CB298B: ConcatStr
  loc_CB298C: FStStrNoPop var_33C
  loc_CB298F: LitI4 0
  loc_CB2994: LitI4 -1
  loc_CB2999: LitI4 1
  loc_CB299E: LitStr "."
  loc_CB29A1: LitStr ","
  loc_CB29A4: FLdFPR8 var_2A8
  loc_CB29A7: CStrR8
  loc_CB29A9: FStStrNoPop var_338
  loc_CB29AC: ImpAdCallI2 Replace(, , , , , )
  loc_CB29B1: FStStrNoPop var_340
  loc_CB29B4: ConcatStr
  loc_CB29B5: FStStrNoPop var_344
  loc_CB29B8: LitStr ","
  loc_CB29BB: ConcatStr
  loc_CB29BC: FStStrNoPop var_34C
  loc_CB29BF: LitI4 0
  loc_CB29C4: LitI4 -1
  loc_CB29C9: LitI4 1
  loc_CB29CE: LitStr "."
  loc_CB29D1: LitStr ","
  loc_CB29D4: FLdFPR8 var_2C0
  loc_CB29D7: CStrR8
  loc_CB29D9: FStStrNoPop var_348
  loc_CB29DC: ImpAdCallI2 Replace(, , , , , )
  loc_CB29E1: FStStrNoPop var_350
  loc_CB29E4: ConcatStr
  loc_CB29E5: FStStrNoPop var_354
  loc_CB29E8: LitStr ");"
  loc_CB29EB: ConcatStr
  loc_CB29EC: FStStrNoPop var_358
  loc_CB29EF: FLdPr Me
  loc_CB29F2: MemStStrCopy
  loc_CB29F6: FFreeStr var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_294 = "": var_298 = "": var_29C = "": var_2A0 = "": var_2AC = "": var_2B0 = "": var_2B4 = "": var_2B8 = "": var_2C4 = "": var_2C8 = "": var_2CC = "": var_2D0 = "": var_2D4 = "": var_2D8 = "": var_2DC = "": var_304 = "": var_308 = "": var_30C = "": var_310 = "": var_314 = "": var_318 = "": var_31C = "": var_320 = "": var_324 = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_33C = "": var_1F0 = "": var_1F4 = "": var_1F8 = "": var_200 = "": var_204 = "": var_208 = "": var_210 = "": var_20C = "": var_214 = "": var_21C = "": var_218 = "": var_220 = "": var_224 = "": var_228 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_27C = "": var_284 = "": var_280 = "": var_288 = "": var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_CB2ABB: FFree1Var var_9C = ""
  loc_CB2ABE: FLdRfVar var_114
  loc_CB2AC1: FLdPr Me
  loc_CB2AC4: MemLdRfVar from_stack_1.global_60
  loc_CB2AC7: NewIfNullPr clsboleto
  loc_CB2ACA: from_stack_1 = clsboleto.TipoBole
  loc_CB2ACF: ILdRf var_114
  loc_CB2AD2: LitStr "Pago Anticipado"
  loc_CB2AD5: EqStr
  loc_CB2AD7: FFree1Str var_114
  loc_CB2ADA: BranchF loc_CB2BEE
  loc_CB2ADD: FLdPr Me
  loc_CB2AE0: MemLdStr global_100
  loc_CB2AE3: LitStr " UPDATE pagoanti SET EstaPaan = 'Pagado' WHERE CodiOfic = "
  loc_CB2AE6: ConcatStr
  loc_CB2AE7: FStStrNoPop var_114
  loc_CB2AEA: FLdRfVar var_176
  loc_CB2AED: FLdPr Me
  loc_CB2AF0: MemLdRfVar from_stack_1.global_68
  loc_CB2AF3: NewIfNullPr clsdetabole
  loc_CB2AF6: from_stack_1 = clsdetabole.CodiOfic
  loc_CB2AFB: FLdUI1
  loc_CB2AFF: CStrI2
  loc_CB2B01: FStStrNoPop var_118
  loc_CB2B04: ConcatStr
  loc_CB2B05: FStStrNoPop var_11C
  loc_CB2B08: LitStr " AND CuenCtct = '"
  loc_CB2B0B: ConcatStr
  loc_CB2B0C: FStStrNoPop var_168
  loc_CB2B0F: FLdRfVar var_164
  loc_CB2B12: FLdPr Me
  loc_CB2B15: MemLdRfVar from_stack_1.global_68
  loc_CB2B18: NewIfNullPr clsdetabole
  loc_CB2B1B: from_stack_1 = clsdetabole.CuenCtct
  loc_CB2B20: ILdRf var_164
  loc_CB2B23: ConcatStr
  loc_CB2B24: FStStrNoPop var_16C
  loc_CB2B27: LitStr "' AND PeriBole = "
  loc_CB2B2A: ConcatStr
  loc_CB2B2B: FStStrNoPop var_170
  loc_CB2B2E: FLdRfVar var_1C6
  loc_CB2B31: FLdPr Me
  loc_CB2B34: MemLdRfVar from_stack_1.global_68
  loc_CB2B37: NewIfNullPr clsdetabole
  loc_CB2B3A: from_stack_1 = clsdetabole.PeriBole
  loc_CB2B3F: FLdI2 var_1C6
  loc_CB2B42: CStrUI1
  loc_CB2B44: FStStrNoPop var_17C
  loc_CB2B47: ConcatStr
  loc_CB2B48: FStStrNoPop var_180
  loc_CB2B4B: LitStr " AND NumeBole = "
  loc_CB2B4E: ConcatStr
  loc_CB2B4F: FStStrNoPop var_184
  loc_CB2B52: FLdRfVar var_174
  loc_CB2B55: FLdPr Me
  loc_CB2B58: MemLdRfVar from_stack_1.global_68
  loc_CB2B5B: NewIfNullPr clsdetabole
  loc_CB2B5E: from_stack_1 = clsdetabole.NumeBole
  loc_CB2B63: ILdRf var_174
  loc_CB2B66: CStrI4
  loc_CB2B68: FStStrNoPop var_188
  loc_CB2B6B: ConcatStr
  loc_CB2B6C: FStStrNoPop var_18C
  loc_CB2B6F: LitStr " AND PeriLiqu = "
  loc_CB2B72: ConcatStr
  loc_CB2B73: FStStrNoPop var_190
  loc_CB2B76: FLdRfVar var_1EC
  loc_CB2B79: FLdPr Me
  loc_CB2B7C: MemLdRfVar from_stack_1.global_68
  loc_CB2B7F: NewIfNullPr clsdetabole
  loc_CB2B82: from_stack_1 = clsdetabole.PeriCtct
  loc_CB2B87: ILdRf var_1EC
  loc_CB2B8A: CStrI4
  loc_CB2B8C: FStStrNoPop var_194
  loc_CB2B8F: ConcatStr
  loc_CB2B90: FStStrNoPop var_198
  loc_CB2B93: LitStr " AND BimeLiqu = "
  loc_CB2B96: ConcatStr
  loc_CB2B97: FStStrNoPop var_1A4
  loc_CB2B9A: FLdRfVar var_1FA
  loc_CB2B9D: FLdPr Me
  loc_CB2BA0: MemLdRfVar from_stack_1.global_68
  loc_CB2BA3: NewIfNullPr clsdetabole
  loc_CB2BA6: from_stack_1 = clsdetabole.BimeCtct
  loc_CB2BAB: FLdI2 var_1FA
  loc_CB2BAE: CStrUI1
  loc_CB2BB0: FStStrNoPop var_1A8
  loc_CB2BB3: ConcatStr
  loc_CB2BB4: FStStrNoPop var_1AC
  loc_CB2BB7: LitStr ";"
  loc_CB2BBA: ConcatStr
  loc_CB2BBB: FStStrNoPop var_1B0
  loc_CB2BBE: FLdPr Me
  loc_CB2BC1: MemStStrCopy
  loc_CB2BC5: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_168 = "": var_164 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_CB2BEE: LitStr "SELECT * FROM boledeta "
  loc_CB2BF1: LitStr " WHERE PeriBole = "
  loc_CB2BF4: ConcatStr
  loc_CB2BF5: FStStrNoPop var_114
  loc_CB2BF8: FLdRfVar var_176
  loc_CB2BFB: FLdPr Me
  loc_CB2BFE: MemLdRfVar from_stack_1.global_68
  loc_CB2C01: NewIfNullPr clsdetabole
  loc_CB2C04: from_stack_1 = clsdetabole.PeriBole
  loc_CB2C09: FLdI2 var_176
  loc_CB2C0C: CStrUI1
  loc_CB2C0E: FStStrNoPop var_118
  loc_CB2C11: ConcatStr
  loc_CB2C12: FStStrNoPop var_11C
  loc_CB2C15: LitStr " AND NumeBole = "
  loc_CB2C18: ConcatStr
  loc_CB2C19: FStStrNoPop var_164
  loc_CB2C1C: FLdRfVar var_174
  loc_CB2C1F: FLdPr Me
  loc_CB2C22: MemLdRfVar from_stack_1.global_68
  loc_CB2C25: NewIfNullPr clsdetabole
  loc_CB2C28: from_stack_1 = clsdetabole.NumeBole
  loc_CB2C2D: ILdRf var_174
  loc_CB2C30: CStrI4
  loc_CB2C32: FStStrNoPop var_168
  loc_CB2C35: ConcatStr
  loc_CB2C36: FStStrNoPop var_16C
  loc_CB2C39: LitStr " AND PeriCtct = "
  loc_CB2C3C: ConcatStr
  loc_CB2C3D: FStStrNoPop var_170
  loc_CB2C40: FLdRfVar var_1EC
  loc_CB2C43: FLdPr Me
  loc_CB2C46: MemLdRfVar from_stack_1.global_68
  loc_CB2C49: NewIfNullPr clsdetabole
  loc_CB2C4C: from_stack_1 = clsdetabole.PeriCtct
  loc_CB2C51: ILdRf var_1EC
  loc_CB2C54: CStrI4
  loc_CB2C56: FStStrNoPop var_17C
  loc_CB2C59: ConcatStr
  loc_CB2C5A: FStStrNoPop var_180
  loc_CB2C5D: LitStr " AND BimeCtct = "
  loc_CB2C60: ConcatStr
  loc_CB2C61: FStStrNoPop var_184
  loc_CB2C64: FLdRfVar var_1C6
  loc_CB2C67: FLdPr Me
  loc_CB2C6A: MemLdRfVar from_stack_1.global_68
  loc_CB2C6D: NewIfNullPr clsdetabole
  loc_CB2C70: from_stack_1 = clsdetabole.BimeCtct
  loc_CB2C75: FLdI2 var_1C6
  loc_CB2C78: CStrUI1
  loc_CB2C7A: FStStrNoPop var_188
  loc_CB2C7D: ConcatStr
  loc_CB2C7E: FStStrNoPop var_18C
  loc_CB2C81: LitStr " AND NumeCtct = "
  loc_CB2C84: ConcatStr
  loc_CB2C85: FStStrNoPop var_190
  loc_CB2C88: FLdRfVar var_2E8
  loc_CB2C8B: FLdPr Me
  loc_CB2C8E: MemLdRfVar from_stack_1.global_68
  loc_CB2C91: NewIfNullPr clsdetabole
  loc_CB2C94: from_stack_1 = clsdetabole.NumeCtct
  loc_CB2C99: ILdRf var_2E8
  loc_CB2C9C: CStrI4
  loc_CB2C9E: FStStrNoPop var_194
  loc_CB2CA1: ConcatStr
  loc_CB2CA2: FStStrNoPop var_198
  loc_CB2CA5: LitStr " AND MoviCtct = "
  loc_CB2CA8: ConcatStr
  loc_CB2CA9: FStStrNoPop var_1A4
  loc_CB2CAC: FLdRfVar var_1FA
  loc_CB2CAF: FLdPr Me
  loc_CB2CB2: MemLdRfVar from_stack_1.global_68
  loc_CB2CB5: NewIfNullPr clsdetabole
  loc_CB2CB8: from_stack_1 = clsdetabole.MoviCtct
  loc_CB2CBD: FLdI2 var_1FA
  loc_CB2CC0: CStrUI1
  loc_CB2CC2: FStStrNoPop var_1A8
  loc_CB2CC5: ConcatStr
  loc_CB2CC6: FStStrNoPop var_1AC
  loc_CB2CC9: LitStr " AND MoviDebo = "
  loc_CB2CCC: ConcatStr
  loc_CB2CCD: FStStrNoPop var_1B0
  loc_CB2CD0: FLdRfVar var_2EA
  loc_CB2CD3: FLdPr Me
  loc_CB2CD6: MemLdRfVar from_stack_1.global_68
  loc_CB2CD9: NewIfNullPr clsdetabole
  loc_CB2CDC: from_stack_1 = clsdetabole.MoviDebo
  loc_CB2CE1: FLdI2 var_2EA
  loc_CB2CE4: CStrUI1
  loc_CB2CE6: FStStrNoPop var_1B4
  loc_CB2CE9: ConcatStr
  loc_CB2CEA: FStStrNoPop var_1B8
  loc_CB2CED: LitStr " ORDER BY PeriBole, NumeBole, PeriCtct, NumeCtct, MoviCtct, MoviDebo, PeriOrde, CodiCtde, NumeCtde, MoviCtde"
  loc_CB2CF0: ConcatStr
  loc_CB2CF1: FStStrNoPop var_1BC
  loc_CB2CF4: FLdPr Me
  loc_CB2CF7: MemLdRfVar from_stack_1.global_72
  loc_CB2CFA: NewIfNullPr clsdetabole
  loc_CB2CFD: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_CB2D02: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = ""
  loc_CB2D31: FLdRfVar var_174
  loc_CB2D34: FLdPr Me
  loc_CB2D37: MemLdRfVar from_stack_1.global_72
  loc_CB2D3A: NewIfNullPr clsdetabole
  loc_CB2D3D: from_stack_1 = clsdetabole.RecordCount
  loc_CB2D42: ILdRf var_174
  loc_CB2D45: LitI4 0
  loc_CB2D4A: GtI4
  loc_CB2D4B: BranchF loc_CB30EA
  loc_CB2D4E: FLdPr Me
  loc_CB2D51: MemLdRfVar from_stack_1.global_72
  loc_CB2D54: NewIfNullPr clsdetabole
  loc_CB2D57: Call clsdetabole.MoveFirst()
  loc_CB2D5C: FLdRfVar var_176
  loc_CB2D5F: FLdPr Me
  loc_CB2D62: MemLdRfVar from_stack_1.global_72
  loc_CB2D65: NewIfNullPr clsdetabole
  loc_CB2D68: from_stack_1 = clsdetabole.EOF
  loc_CB2D6D: FLdI2 var_176
  loc_CB2D70: NotI4
  loc_CB2D71: BranchF loc_CB30EA
  loc_CB2D74: FLdRfVar var_1A0
  loc_CB2D77: FLdPr Me
  loc_CB2D7A: MemLdRfVar from_stack_1.global_72
  loc_CB2D7D: NewIfNullPr clsdetabole
  loc_CB2D80: from_stack_1 = clsdetabole.ImpoBode
  loc_CB2D85: FLdRfVar var_1C4
  loc_CB2D88: FLdPr Me
  loc_CB2D8B: MemLdRfVar from_stack_1.global_72
  loc_CB2D8E: NewIfNullPr clsdetabole
  loc_CB2D91: from_stack_1 = clsdetabole.DecaBode
  loc_CB2D96: FLdRfVar var_230
  loc_CB2D99: FLdPr Me
  loc_CB2D9C: MemLdRfVar from_stack_1.global_72
  loc_CB2D9F: NewIfNullPr clsdetabole
  loc_CB2DA2: from_stack_1 = clsdetabole.TotaBode
  loc_CB2DA7: FLdPr Me
  loc_CB2DAA: MemLdStr global_100
  loc_CB2DAD: LitStr " INSERT INTO pagodeta (FeenAcpa,NumeAcpa,PeriBole,NumeBole,PeriCtct,BimeCtct,NumeCtct,MoviCtct,MoviDebo,PeriOrde,CodiCtde,NumeCtde,MoviCtde,CodiOfic,CuenCtct,ImpoPade,Decapade,TotaPade) VALUES ('"
  loc_CB2DB0: ConcatStr
  loc_CB2DB1: FStStrNoPop var_114
  loc_CB2DB4: LitI4 1
  loc_CB2DB9: LitI4 1
  loc_CB2DBE: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB2DC3: FStVarCopyObj var_9C
  loc_CB2DC6: FLdRfVar var_9C
  loc_CB2DC9: FLdPr Me
  loc_CB2DCC: MemLdRfVar from_stack_1.global_128
  loc_CB2DCF: CVarRef
  loc_CB2DD4: ImpAdCallI2 Format$(, )
  loc_CB2DD9: FStStrNoPop var_118
  loc_CB2DDC: ConcatStr
  loc_CB2DDD: FStStrNoPop var_11C
  loc_CB2DE0: LitStr "',"
  loc_CB2DE3: ConcatStr
  loc_CB2DE4: FStStrNoPop var_164
  loc_CB2DE7: FLdPr Me
  loc_CB2DEA: MemLdI2 global_106
  loc_CB2DED: CStrUI1
  loc_CB2DEF: FStStrNoPop var_168
  loc_CB2DF2: ConcatStr
  loc_CB2DF3: FStStrNoPop var_16C
  loc_CB2DF6: LitStr ","
  loc_CB2DF9: ConcatStr
  loc_CB2DFA: FStStrNoPop var_170
  loc_CB2DFD: FLdRfVar var_176
  loc_CB2E00: FLdPr Me
  loc_CB2E03: MemLdRfVar from_stack_1.global_72
  loc_CB2E06: NewIfNullPr clsdetabole
  loc_CB2E09: from_stack_1 = clsdetabole.PeriBole
  loc_CB2E0E: FLdI2 var_176
  loc_CB2E11: CStrUI1
  loc_CB2E13: FStStrNoPop var_17C
  loc_CB2E16: ConcatStr
  loc_CB2E17: FStStrNoPop var_180
  loc_CB2E1A: LitStr ","
  loc_CB2E1D: ConcatStr
  loc_CB2E1E: FStStrNoPop var_184
  loc_CB2E21: FLdRfVar var_174
  loc_CB2E24: FLdPr Me
  loc_CB2E27: MemLdRfVar from_stack_1.global_72
  loc_CB2E2A: NewIfNullPr clsdetabole
  loc_CB2E2D: from_stack_1 = clsdetabole.NumeBole
  loc_CB2E32: ILdRf var_174
  loc_CB2E35: CStrI4
  loc_CB2E37: FStStrNoPop var_188
  loc_CB2E3A: ConcatStr
  loc_CB2E3B: FStStrNoPop var_18C
  loc_CB2E3E: LitStr ","
  loc_CB2E41: ConcatStr
  loc_CB2E42: FStStrNoPop var_190
  loc_CB2E45: FLdRfVar var_1EC
  loc_CB2E48: FLdPr Me
  loc_CB2E4B: MemLdRfVar from_stack_1.global_72
  loc_CB2E4E: NewIfNullPr clsdetabole
  loc_CB2E51: from_stack_1 = clsdetabole.PeriCtct
  loc_CB2E56: ILdRf var_1EC
  loc_CB2E59: CStrI4
  loc_CB2E5B: FStStrNoPop var_194
  loc_CB2E5E: ConcatStr
  loc_CB2E5F: FStStrNoPop var_198
  loc_CB2E62: LitStr ","
  loc_CB2E65: ConcatStr
  loc_CB2E66: FStStrNoPop var_1A4
  loc_CB2E69: FLdRfVar var_1C6
  loc_CB2E6C: FLdPr Me
  loc_CB2E6F: MemLdRfVar from_stack_1.global_72
  loc_CB2E72: NewIfNullPr clsdetabole
  loc_CB2E75: from_stack_1 = clsdetabole.BimeCtct
  loc_CB2E7A: FLdI2 var_1C6
  loc_CB2E7D: CStrUI1
  loc_CB2E7F: FStStrNoPop var_1A8
  loc_CB2E82: ConcatStr
  loc_CB2E83: FStStrNoPop var_1AC
  loc_CB2E86: LitStr ","
  loc_CB2E89: ConcatStr
  loc_CB2E8A: FStStrNoPop var_1B0
  loc_CB2E8D: FLdRfVar var_2E8
  loc_CB2E90: FLdPr Me
  loc_CB2E93: MemLdRfVar from_stack_1.global_72
  loc_CB2E96: NewIfNullPr clsdetabole
  loc_CB2E99: from_stack_1 = clsdetabole.NumeCtct
  loc_CB2E9E: ILdRf var_2E8
  loc_CB2EA1: CStrI4
  loc_CB2EA3: FStStrNoPop var_1B4
  loc_CB2EA6: ConcatStr
  loc_CB2EA7: FStStrNoPop var_1B8
  loc_CB2EAA: LitStr ","
  loc_CB2EAD: ConcatStr
  loc_CB2EAE: FStStrNoPop var_1BC
  loc_CB2EB1: FLdRfVar var_1FA
  loc_CB2EB4: FLdPr Me
  loc_CB2EB7: MemLdRfVar from_stack_1.global_72
  loc_CB2EBA: NewIfNullPr clsdetabole
  loc_CB2EBD: from_stack_1 = clsdetabole.MoviCtct
  loc_CB2EC2: FLdI2 var_1FA
  loc_CB2EC5: CStrUI1
  loc_CB2EC7: FStStrNoPop var_1CC
  loc_CB2ECA: ConcatStr
  loc_CB2ECB: FStStrNoPop var_1D0
  loc_CB2ECE: LitStr ","
  loc_CB2ED1: ConcatStr
  loc_CB2ED2: FStStrNoPop var_1D4
  loc_CB2ED5: FLdRfVar var_2EA
  loc_CB2ED8: FLdPr Me
  loc_CB2EDB: MemLdRfVar from_stack_1.global_72
  loc_CB2EDE: NewIfNullPr clsdetabole
  loc_CB2EE1: from_stack_1 = clsdetabole.MoviDebo
  loc_CB2EE6: FLdI2 var_2EA
  loc_CB2EE9: CStrUI1
  loc_CB2EEB: FStStrNoPop var_1D8
  loc_CB2EEE: ConcatStr
  loc_CB2EEF: FStStrNoPop var_1DC
  loc_CB2EF2: LitStr ","
  loc_CB2EF5: ConcatStr
  loc_CB2EF6: FStStrNoPop var_1E0
  loc_CB2EF9: FLdRfVar var_2EC
  loc_CB2EFC: FLdPr Me
  loc_CB2EFF: MemLdRfVar from_stack_1.global_72
  loc_CB2F02: NewIfNullPr clsdetabole
  loc_CB2F05: from_stack_1 = clsdetabole.PeriOrde
  loc_CB2F0A: FLdI2 var_2EC
  loc_CB2F0D: CStrUI1
  loc_CB2F0F: FStStrNoPop var_1E4
  loc_CB2F12: ConcatStr
  loc_CB2F13: FStStrNoPop var_1E8
  loc_CB2F16: LitStr ","
  loc_CB2F19: ConcatStr
  loc_CB2F1A: FStStrNoPop var_1F4
  loc_CB2F1D: FLdRfVar var_1F0
  loc_CB2F20: FLdPr Me
  loc_CB2F23: MemLdRfVar from_stack_1.global_72
  loc_CB2F26: NewIfNullPr clsdetabole
  loc_CB2F29: from_stack_1 = clsdetabole.CodiCtde
  loc_CB2F2E: ILdRf var_1F0
  loc_CB2F31: ConcatStr
  loc_CB2F32: FStStrNoPop var_1F8
  loc_CB2F35: LitStr ","
  loc_CB2F38: ConcatStr
  loc_CB2F39: FStStrNoPop var_200
  loc_CB2F3C: FLdRfVar var_2F4
  loc_CB2F3F: FLdPr Me
  loc_CB2F42: MemLdRfVar from_stack_1.global_72
  loc_CB2F45: NewIfNullPr clsdetabole
  loc_CB2F48: from_stack_1 = clsdetabole.NumeCtde
  loc_CB2F4D: ILdRf var_2F4
  loc_CB2F50: CStrI4
  loc_CB2F52: FStStrNoPop var_204
  loc_CB2F55: ConcatStr
  loc_CB2F56: FStStrNoPop var_208
  loc_CB2F59: LitStr ","
  loc_CB2F5C: ConcatStr
  loc_CB2F5D: FStStrNoPop var_20C
  loc_CB2F60: FLdRfVar var_2EE
  loc_CB2F63: FLdPr Me
  loc_CB2F66: MemLdRfVar from_stack_1.global_72
  loc_CB2F69: NewIfNullPr clsdetabole
  loc_CB2F6C: from_stack_1 = clsdetabole.MoviCtde
  loc_CB2F71: FLdI2 var_2EE
  loc_CB2F74: CStrUI1
  loc_CB2F76: FStStrNoPop var_210
  loc_CB2F79: ConcatStr
  loc_CB2F7A: FStStrNoPop var_214
  loc_CB2F7D: LitStr ","
  loc_CB2F80: ConcatStr
  loc_CB2F81: FStStrNoPop var_218
  loc_CB2F84: FLdRfVar var_2F0
  loc_CB2F87: FLdPr Me
  loc_CB2F8A: MemLdRfVar from_stack_1.global_72
  loc_CB2F8D: NewIfNullPr clsdetabole
  loc_CB2F90: from_stack_1 = clsdetabole.CodiOfic
  loc_CB2F95: FLdUI1
  loc_CB2F99: CStrI2
  loc_CB2F9B: FStStrNoPop var_21C
  loc_CB2F9E: ConcatStr
  loc_CB2F9F: FStStrNoPop var_220
  loc_CB2FA2: LitStr ",'"
  loc_CB2FA5: ConcatStr
  loc_CB2FA6: FStStrNoPop var_228
  loc_CB2FA9: FLdRfVar var_224
  loc_CB2FAC: FLdPr Me
  loc_CB2FAF: MemLdRfVar from_stack_1.global_72
  loc_CB2FB2: NewIfNullPr clsdetabole
  loc_CB2FB5: from_stack_1 = clsdetabole.CuenCtct
  loc_CB2FBA: ILdRf var_224
  loc_CB2FBD: ConcatStr
  loc_CB2FBE: FStStrNoPop var_234
  loc_CB2FC1: LitStr "',"
  loc_CB2FC4: ConcatStr
  loc_CB2FC5: FStStrNoPop var_23C
  loc_CB2FC8: LitI4 0
  loc_CB2FCD: LitI4 -1
  loc_CB2FD2: LitI4 1
  loc_CB2FD7: LitStr "."
  loc_CB2FDA: LitStr ","
  loc_CB2FDD: FLdFPR8 var_1A0
  loc_CB2FE0: CStrR8
  loc_CB2FE2: FStStrNoPop var_238
  loc_CB2FE5: ImpAdCallI2 Replace(, , , , , )
  loc_CB2FEA: FStStrNoPop var_240
  loc_CB2FED: ConcatStr
  loc_CB2FEE: FStStrNoPop var_24C
  loc_CB2FF1: LitStr ","
  loc_CB2FF4: ConcatStr
  loc_CB2FF5: FStStrNoPop var_254
  loc_CB2FF8: LitI4 0
  loc_CB2FFD: LitI4 -1
  loc_CB3002: LitI4 1
  loc_CB3007: LitStr "."
  loc_CB300A: LitStr ","
  loc_CB300D: FLdFPR8 var_1C4
  loc_CB3010: CStrR8
  loc_CB3012: FStStrNoPop var_250
  loc_CB3015: ImpAdCallI2 Replace(, , , , , )
  loc_CB301A: FStStrNoPop var_258
  loc_CB301D: ConcatStr
  loc_CB301E: FStStrNoPop var_264
  loc_CB3021: LitStr ","
  loc_CB3024: ConcatStr
  loc_CB3025: FStStrNoPop var_26C
  loc_CB3028: LitI4 0
  loc_CB302D: LitI4 -1
  loc_CB3032: LitI4 1
  loc_CB3037: LitStr "."
  loc_CB303A: LitStr ","
  loc_CB303D: FLdFPR8 var_230
  loc_CB3040: CStrR8
  loc_CB3042: FStStrNoPop var_268
  loc_CB3045: ImpAdCallI2 Replace(, , , , , )
  loc_CB304A: FStStrNoPop var_270
  loc_CB304D: ConcatStr
  loc_CB304E: FStStrNoPop var_27C
  loc_CB3051: LitStr ");"
  loc_CB3054: ConcatStr
  loc_CB3055: FStStrNoPop var_280
  loc_CB3058: FLdPr Me
  loc_CB305B: MemStStrCopy
  loc_CB305F: FFreeStr var_1F4 = "": var_1F0 = "": var_1F8 = "": var_200 = "": var_204 = "": var_208 = "": var_20C = "": var_210 = "": var_214 = "": var_218 = "": var_21C = "": var_220 = "": var_228 = "": var_224 = "": var_234 = "": var_238 = "": var_23C = "": var_240 = "": var_24C = "": var_250 = "": var_254 = "": var_258 = "": var_264 = "": var_268 = "": var_26C = "": var_270 = "": var_27C = "": var_280 = "": var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B4 = "": var_1B8 = "": var_1BC = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = ""
  loc_CB30D6: FFree1Var var_9C = ""
  loc_CB30D9: FLdPr Me
  loc_CB30DC: MemLdRfVar from_stack_1.global_72
  loc_CB30DF: NewIfNullPr clsdetabole
  loc_CB30E2: Call clsdetabole.MoveSiguiente()
  loc_CB30E7: Branch loc_CB2D5C
  loc_CB30EA: FLdPr Me
  loc_CB30ED: MemLdRfVar from_stack_1.global_68
  loc_CB30F0: NewIfNullPr clsdetabole
  loc_CB30F3: Call clsdetabole.MoveSiguiente()
  loc_CB30F8: Branch loc_CB236F
  loc_CB30FB: Branch loc_CB3108
  loc_CB30FE: LitStr vbNullString
  loc_CB3101: FLdPr Me
  loc_CB3104: MemStStrCopy
  loc_CB3108: FLdPr Me
  loc_CB310B: MemLdStr global_100
  loc_CB310E: LitStr vbNullString
  loc_CB3111: EqStr
  loc_CB3113: BranchF loc_CB3134
  loc_CB3116: LitStr "No existe el detalle del boleto. NO SE CREO EL PAGO. verifique..."
  loc_CB3119: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_CB311E: FLdPr Me
  loc_CB3121: VCallAd Control_ID_NumeBoleTxt
  loc_CB3124: CVarAd
  loc_CB3128: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_CB312D: FFree1Var var_9C = ""
  loc_CB3130: ExitProcHresult
  loc_CB3131: Branch loc_CB3148
  loc_CB3134: FLdPr Me
  loc_CB3137: MemLdStr global_100
  loc_CB313A: FLdPr Me
  loc_CB313D: MemLdRfVar from_stack_1.global_56
  loc_CB3140: NewIfNullPr clspago
  loc_CB3143: Call clspago.AddnewTransaction(from_stack_1v)
  loc_CB3148: LitStr "SELECT * FROM pago "
  loc_CB314B: LitStr " WHERE FeenAcpa = '"
  loc_CB314E: ConcatStr
  loc_CB314F: FStStrNoPop var_114
  loc_CB3152: LitI4 1
  loc_CB3157: LitI4 1
  loc_CB315C: LitVarStr var_BC, "yyyy-mm-dd"
  loc_CB3161: FStVarCopyObj var_9C
  loc_CB3164: FLdRfVar var_9C
  loc_CB3167: FLdPr Me
  loc_CB316A: MemLdRfVar from_stack_1.global_128
  loc_CB316D: CVarRef
  loc_CB3172: ImpAdCallI2 Format$(, )
  loc_CB3177: FStStrNoPop var_118
  loc_CB317A: ConcatStr
  loc_CB317B: FStStrNoPop var_11C
  loc_CB317E: LitStr "'"
  loc_CB3181: ConcatStr
  loc_CB3182: FStStrNoPop var_164
  loc_CB3185: LitStr " AND NumeAcpa = "
  loc_CB3188: ConcatStr
  loc_CB3189: FStStrNoPop var_168
  loc_CB318C: FLdPr Me
  loc_CB318F: MemLdI2 global_106
  loc_CB3192: CStrUI1
  loc_CB3194: FStStrNoPop var_16C
  loc_CB3197: ConcatStr
  loc_CB3198: FStStrNoPop var_170
  loc_CB319B: LitStr " AND PeriBole = "
  loc_CB319E: ConcatStr
  loc_CB319F: FStStrNoPop var_17C
  loc_CB31A2: FLdRfVar var_176
  loc_CB31A5: FLdPr Me
  loc_CB31A8: MemLdRfVar from_stack_1.global_60
  loc_CB31AB: NewIfNullPr clsboleto
  loc_CB31AE: from_stack_1 = clsboleto.PeriBole
  loc_CB31B3: FLdI2 var_176
  loc_CB31B6: CStrUI1
  loc_CB31B8: FStStrNoPop var_180
  loc_CB31BB: ConcatStr
  loc_CB31BC: FStStrNoPop var_184
  loc_CB31BF: LitStr " AND NumeBole = "
  loc_CB31C2: ConcatStr
  loc_CB31C3: FStStrNoPop var_188
  loc_CB31C6: FLdRfVar var_174
  loc_CB31C9: FLdPr Me
  loc_CB31CC: MemLdRfVar from_stack_1.global_60
  loc_CB31CF: NewIfNullPr clsboleto
  loc_CB31D2: from_stack_1 = clsboleto.NumeBole
  loc_CB31D7: ILdRf var_174
  loc_CB31DA: CStrI4
  loc_CB31DC: FStStrNoPop var_18C
  loc_CB31DF: ConcatStr
  loc_CB31E0: FStStrNoPop var_190
  loc_CB31E3: LitStr " ORDER BY FeenAcpa, NumeAcpa, PeriBole, NumeBole"
  loc_CB31E6: ConcatStr
  loc_CB31E7: FStStrNoPop var_194
  loc_CB31EA: FLdPr Me
  loc_CB31ED: MemLdRfVar from_stack_1.global_56
  loc_CB31F0: NewIfNullPr clspago
  loc_CB31F3: Call clspago.RedefineRS(from_stack_1v)
  loc_CB31F8: FFreeStr var_114 = "": var_118 = "": var_11C = "": var_164 = "": var_168 = "": var_16C = "": var_170 = "": var_17C = "": var_180 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = ""
  loc_CB3217: FFree1Var var_9C = ""
  loc_CB321A: FLdRfVar var_174
  loc_CB321D: FLdPr Me
  loc_CB3220: MemLdRfVar from_stack_1.global_56
  loc_CB3223: NewIfNullPr clspago
  loc_CB3226: from_stack_1 = clspago.RecordCount
  loc_CB322B: ILdRf var_174
  loc_CB322E: LitI4 1
  loc_CB3233: EqI4
  loc_CB3234: BranchF loc_CB3292
  loc_CB3237: FLdRfVar var_114
  loc_CB323A: FLdPr Me
  loc_CB323D: MemLdRfVar from_stack_1.global_60
  loc_CB3240: NewIfNullPr clsboleto
  loc_CB3243: from_stack_1 = clsboleto.CucuPers
  loc_CB3248: FLdRfVar var_176
  loc_CB324B: FLdPr Me
  loc_CB324E: MemLdRfVar from_stack_1.global_60
  loc_CB3251: NewIfNullPr clsboleto
  loc_CB3254: from_stack_1 = clsboleto.PeriBole
  loc_CB3259: FLdRfVar var_174
  loc_CB325C: FLdPr Me
  loc_CB325F: MemLdRfVar from_stack_1.global_60
  loc_CB3262: NewIfNullPr clsboleto
  loc_CB3265: from_stack_1 = clsboleto.NumeBole
  loc_CB326A: FLdRfVar var_1A0
  loc_CB326D: FLdPr Me
  loc_CB3270: MemLdRfVar from_stack_1.global_60
  loc_CB3273: NewIfNullPr clsboleto
  loc_CB3276: from_stack_1 = clsboleto.TotaBole
  loc_CB327B: ILdRf var_88
  loc_CB327E: FLdR8 var_1A0
  loc_CB3281: ILdRf var_174
  loc_CB3284: FLdI2 var_176
  loc_CB3287: ILdRf var_114
  loc_CB328A: Call Proc_213_24_BA9260()
  loc_CB328F: FFree1Str var_114
  loc_CB3292: FLdPr Me
  loc_CB3295: MemLdRfVar from_stack_1.global_92
  loc_CB3298: NextI2 var_110, loc_CB14E0
  loc_CB329D: Call Proc_213_27_AF1F60()
  loc_CB32A2: Call Proc_213_25_B014F0()
  loc_CB32A7: FLdPr Me
  loc_CB32AA: VCallAd Control_ID_BoletoBarraTxt
  loc_CB32AD: FStAdFunc var_8C
  loc_CB32B0: FLdPr var_8C
  loc_CB32B3: Me.SetFocus
  loc_CB32B8: FFree1Ad var_8C
  loc_CB32BB: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9D33DC
  'Data Table: 4B4C74
  loc_9D33C4: ILdRf Me
  loc_9D33C7: FStAdNoPop
  loc_9D33CB: ImpAdLdRf MemVar_D9C5D8
  loc_9D33CE: NewIfNullPr Global
  loc_9D33D1: Global.Unload from_stack_1
  loc_9D33D6: FFree1Ad var_88
  loc_9D33D9: ExitProcHresult
  loc_9D33DA: CExtInstUnk
End Sub

Private Function Proc_213_23_AA41B0() 'AA41B0
  'Data Table: 4B4C74
  loc_AA40E8: FLdRfVar var_88
  loc_AA40EB: FLdPr Me
  loc_AA40EE: MemLdRfVar from_stack_1.global_60
  loc_AA40F1: NewIfNullPr clsboleto
  loc_AA40F4: from_stack_1 = clsboleto.RecordCount
  loc_AA40F9: ILdRf var_88
  loc_AA40FC: LitI4 0
  loc_AA4101: GtI4
  loc_AA4102: BranchF loc_AA41AF
  loc_AA4105: FLdRfVar var_8A
  loc_AA4108: FLdPr Me
  loc_AA410B: MemLdRfVar from_stack_1.global_60
  loc_AA410E: NewIfNullPr clsboleto
  loc_AA4111: from_stack_1 = clsboleto.BOF
  loc_AA4116: FLdI2 var_8A
  loc_AA4119: BranchF loc_AA412A
  loc_AA411C: FLdPr Me
  loc_AA411F: MemLdRfVar from_stack_1.global_60
  loc_AA4122: NewIfNullPr clsboleto
  loc_AA4125: Call clsboleto.MoveFirst()
  loc_AA412A: FLdRfVar var_8A
  loc_AA412D: FLdPr Me
  loc_AA4130: MemLdRfVar from_stack_1.global_60
  loc_AA4133: NewIfNullPr clsboleto
  loc_AA4136: from_stack_1 = clsboleto.EOF
  loc_AA413B: FLdI2 var_8A
  loc_AA413E: BranchF loc_AA414F
  loc_AA4141: FLdPr Me
  loc_AA4144: MemLdRfVar from_stack_1.global_60
  loc_AA4147: NewIfNullPr clsboleto
  loc_AA414A: Call clsboleto.MoveLast()
  loc_AA414F: FLdRfVar var_8A
  loc_AA4152: FLdPr Me
  loc_AA4155: MemLdRfVar from_stack_1.global_60
  loc_AA4158: NewIfNullPr clsboleto
  loc_AA415B: from_stack_1 = clsboleto.PeriBole
  loc_AA4160: FLdI2 var_8A
  loc_AA4163: CStrUI1
  loc_AA4165: FStStrNoPop var_90
  loc_AA4168: FLdPr Me
  loc_AA416B: VCallAd Control_ID_PeriBoleTxt
  loc_AA416E: FStAdFunc var_94
  loc_AA4171: FLdPr var_94
  loc_AA4174: Me.Text = from_stack_1
  loc_AA4179: FFree1Str var_90
  loc_AA417C: FFree1Ad var_94
  loc_AA417F: FLdRfVar var_88
  loc_AA4182: FLdPr Me
  loc_AA4185: MemLdRfVar from_stack_1.global_60
  loc_AA4188: NewIfNullPr clsboleto
  loc_AA418B: from_stack_1 = clsboleto.NumeBole
  loc_AA4190: ILdRf var_88
  loc_AA4193: CStrI4
  loc_AA4195: FStStrNoPop var_90
  loc_AA4198: FLdPr Me
  loc_AA419B: VCallAd Control_ID_NumeBoleTxt
  loc_AA419E: FStAdFunc var_94
  loc_AA41A1: FLdPr var_94
  loc_AA41A4: Me.Text = from_stack_1
  loc_AA41A9: FFree1Str var_90
  loc_AA41AC: FFree1Ad var_94
  loc_AA41AF: ExitProcHresult
End Function

Private Function Proc_213_24_BA9260(arg_C, arg_10, arg_14, arg_18) 'BA9260
  'Data Table: 4B4C74
  loc_BA8C64: ILdRf arg_C
  loc_BA8C67: FStStrCopy var_88
  loc_BA8C6A: ILdRf arg_20
  loc_BA8C6D: FStStrCopy var_8C
  loc_BA8C70: FLdRfVar var_90
  loc_BA8C73: FLdPr Me
  loc_BA8C76: MemLdRfVar from_stack_1.global_60
  loc_BA8C79: NewIfNullPr clsboleto
  loc_BA8C7C: from_stack_1 = clsboleto.CodiOfic
  loc_BA8C81: FLdI2 var_90
  loc_BA8C84: FStI2 var_92
  loc_BA8C87: FLdI2 var_92
  loc_BA8C8A: LitI2_Byte 1
  loc_BA8C8C: EqI2
  loc_BA8C8D: BranchF loc_BA8C9D
  loc_BA8C90: LitStr "SERVICIO A LA PROPIEDAD RAIZ"
  loc_BA8C93: FLdPr Me
  loc_BA8C96: MemStStrCopy
  loc_BA8C9A: Branch loc_BA8CDC
  loc_BA8C9D: FLdI2 var_92
  loc_BA8CA0: LitI2_Byte 2
  loc_BA8CA2: EqI2
  loc_BA8CA3: BranchF loc_BA8CB3
  loc_BA8CA6: LitStr "DERECHO DE COMERCIO"
  loc_BA8CA9: FLdPr Me
  loc_BA8CAC: MemStStrCopy
  loc_BA8CB0: Branch loc_BA8CDC
  loc_BA8CB3: FLdI2 var_92
  loc_BA8CB6: LitI2_Byte 3
  loc_BA8CB8: EqI2
  loc_BA8CB9: BranchF loc_BA8CC9
  loc_BA8CBC: LitStr "SERVICIOS VARIOS"
  loc_BA8CBF: FLdPr Me
  loc_BA8CC2: MemStStrCopy
  loc_BA8CC6: Branch loc_BA8CDC
  loc_BA8CC9: FLdI2 var_92
  loc_BA8CCC: LitI2_Byte 4
  loc_BA8CCE: EqI2
  loc_BA8CCF: BranchF loc_BA8CDC
  loc_BA8CD2: LitStr "DERECHO DE CEMENTERIO"
  loc_BA8CD5: FLdPr Me
  loc_BA8CD8: MemStStrCopy
  loc_BA8CDC: LitI4 &H1B
  loc_BA8CE1: FLdRfVar var_A4
  loc_BA8CE4: ImpAdCallFPR4  = Chr()
  loc_BA8CE9: FLdRfVar var_A4
  loc_BA8CEC: CStrVarTmp
  loc_BA8CED: FLdRfVar var_8E
  loc_BA8CF0: StFixedStrFree
  loc_BA8CF4: FFree1Var var_A4 = ""
  loc_BA8CF7: LitVarStr var_B4, "EpsonTMU220"
  loc_BA8CFC: PopAdLdVar
  loc_BA8CFD: FLdPr Me
  loc_BA8D00: VCallAd Control_ID_ImpresoraPtr
  loc_BA8D03: FStAdFunc var_C8
  loc_BA8D06: FLdPr var_C8
  loc_BA8D09: LateIdCall
  loc_BA8D11: FFree1Ad var_C8
  loc_BA8D14: LitVarI4
  loc_BA8D1C: PopAdLdVar
  loc_BA8D1D: FLdPr Me
  loc_BA8D20: VCallAd Control_ID_ImpresoraPtr
  loc_BA8D23: FStAdFunc var_C8
  loc_BA8D26: FLdPr var_C8
  loc_BA8D29: LateIdCall
  loc_BA8D31: FFree1Ad var_C8
  loc_BA8D34: LitVar_TRUE var_B4
  loc_BA8D37: PopAdLdVar
  loc_BA8D38: FLdPr Me
  loc_BA8D3B: VCallAd Control_ID_ImpresoraPtr
  loc_BA8D3E: FStAdFunc var_C8
  loc_BA8D41: FLdPr var_C8
  loc_BA8D44: LateIdSt
  loc_BA8D49: FFree1Ad var_C8
  loc_BA8D4C: LitVarI4
  loc_BA8D54: PopAdLdVar
  loc_BA8D55: FLdRfVar var_8E
  loc_BA8D58: LdFixedStr
  loc_BA8D5B: FStStrNoPop var_CC
  loc_BA8D5E: LitStr "|bC"
  loc_BA8D61: ConcatStr
  loc_BA8D62: FStStrNoPop var_D0
  loc_BA8D65: LitStr "MUNICIPALIDAD DE TUNUYÁN"
  loc_BA8D68: ConcatStr
  loc_BA8D69: FStStrNoPop var_D4
  loc_BA8D6C: FLdRfVar var_8E
  loc_BA8D6F: LdFixedStr
  loc_BA8D72: FStStrNoPop var_D8
  loc_BA8D75: ConcatStr
  loc_BA8D76: FStStrNoPop var_DC
  loc_BA8D79: LitStr "|N"
  loc_BA8D7C: ConcatStr
  loc_BA8D7D: FStStrNoPop var_E0
  loc_BA8D80: LitStr vbCrLf
  loc_BA8D83: ConcatStr
  loc_BA8D84: CVarStr var_A4
  loc_BA8D87: PopAdLdVar
  loc_BA8D88: FLdPr Me
  loc_BA8D8B: VCallAd Control_ID_ImpresoraPtr
  loc_BA8D8E: FStAdFunc var_C8
  loc_BA8D91: FLdPr var_C8
  loc_BA8D94: LateIdCall
  loc_BA8D9C: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_BA8DAB: FFree1Ad var_C8
  loc_BA8DAE: FFree1Var var_A4 = ""
  loc_BA8DB1: LitVarI4
  loc_BA8DB9: PopAdLdVar
  loc_BA8DBA: LitStr "C.U.I.T.: "
  loc_BA8DBD: LitStr "30-99914707-7"
  loc_BA8DC0: LitStr vbCrLf
  loc_BA8DC3: ConcatStr
  loc_BA8DC4: FStStrNoPop var_CC
  loc_BA8DC7: ConcatStr
  loc_BA8DC8: CVarStr var_A4
  loc_BA8DCB: PopAdLdVar
  loc_BA8DCC: FLdPr Me
  loc_BA8DCF: VCallAd Control_ID_ImpresoraPtr
  loc_BA8DD2: FStAdFunc var_C8
  loc_BA8DD5: FLdPr var_C8
  loc_BA8DD8: LateIdCall
  loc_BA8DE0: FFree1Str var_CC
  loc_BA8DE3: FFree1Ad var_C8
  loc_BA8DE6: FFree1Var var_A4 = ""
  loc_BA8DE9: LitVarI4
  loc_BA8DF1: PopAdLdVar
  loc_BA8DF2: LitVarStr var_B4, "FECHA: "
  loc_BA8DF7: LitI2_Byte &HFF
  loc_BA8DF9: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BA8DFE: CVarDate var_C4
  loc_BA8E02: ConcatVar var_A4
  loc_BA8E06: LitVarStr var_F0, vbCrLf
  loc_BA8E0B: ConcatVar var_100
  loc_BA8E0F: LitVarStr var_110, vbCrLf
  loc_BA8E14: ConcatVar var_120
  loc_BA8E18: LitVarStr var_130, vbCrLf
  loc_BA8E1D: ConcatVar var_140
  loc_BA8E21: CStrVarTmp
  loc_BA8E22: CVarStr var_170
  loc_BA8E25: PopAdLdVar
  loc_BA8E26: FLdPr Me
  loc_BA8E29: VCallAd Control_ID_ImpresoraPtr
  loc_BA8E2C: FStAdFunc var_C8
  loc_BA8E2F: FLdPr var_C8
  loc_BA8E32: LateIdCall
  loc_BA8E3A: FFree1Ad var_C8
  loc_BA8E3D: FFreeVar var_A4 = "": var_100 = "": var_120 = "": var_140 = ""
  loc_BA8E4A: LitVarI4
  loc_BA8E52: PopAdLdVar
  loc_BA8E53: FLdRfVar var_8E
  loc_BA8E56: LdFixedStr
  loc_BA8E59: FStStrNoPop var_CC
  loc_BA8E5C: LitStr "|bC"
  loc_BA8E5F: ConcatStr
  loc_BA8E60: FStStrNoPop var_D0
  loc_BA8E63: LitStr "Concepto: "
  loc_BA8E66: ConcatStr
  loc_BA8E67: FStStrNoPop var_D4
  loc_BA8E6A: FLdRfVar var_8E
  loc_BA8E6D: LdFixedStr
  loc_BA8E70: FStStrNoPop var_D8
  loc_BA8E73: ConcatStr
  loc_BA8E74: FStStrNoPop var_DC
  loc_BA8E77: LitStr "|N"
  loc_BA8E7A: ConcatStr
  loc_BA8E7B: FStStrNoPop var_E0
  loc_BA8E7E: FLdPr Me
  loc_BA8E81: MemLdStr global_108
  loc_BA8E84: ConcatStr
  loc_BA8E85: FStStrNoPop var_184
  loc_BA8E88: LitStr vbCrLf
  loc_BA8E8B: ConcatStr
  loc_BA8E8C: FStStrNoPop var_188
  loc_BA8E8F: LitStr vbCrLf
  loc_BA8E92: ConcatStr
  loc_BA8E93: CVarStr var_A4
  loc_BA8E96: PopAdLdVar
  loc_BA8E97: FLdPr Me
  loc_BA8E9A: VCallAd Control_ID_ImpresoraPtr
  loc_BA8E9D: FStAdFunc var_C8
  loc_BA8EA0: FLdPr var_C8
  loc_BA8EA3: LateIdCall
  loc_BA8EAB: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_184 = ""
  loc_BA8EBE: FFree1Ad var_C8
  loc_BA8EC1: FFree1Var var_A4 = ""
  loc_BA8EC4: LitVarI4
  loc_BA8ECC: PopAdLdVar
  loc_BA8ECD: FLdRfVar var_8E
  loc_BA8ED0: LdFixedStr
  loc_BA8ED3: FStStrNoPop var_CC
  loc_BA8ED6: LitStr "|bC"
  loc_BA8ED9: ConcatStr
  loc_BA8EDA: FStStrNoPop var_D0
  loc_BA8EDD: LitStr "Contribuyente: "
  loc_BA8EE0: ConcatStr
  loc_BA8EE1: FStStrNoPop var_D4
  loc_BA8EE4: FLdRfVar var_8E
  loc_BA8EE7: LdFixedStr
  loc_BA8EEA: FStStrNoPop var_D8
  loc_BA8EED: ConcatStr
  loc_BA8EEE: FStStrNoPop var_DC
  loc_BA8EF1: LitStr "|N"
  loc_BA8EF4: ConcatStr
  loc_BA8EF5: FStStrNoPop var_E0
  loc_BA8EF8: ILdRf var_88
  loc_BA8EFB: ImpAdCallI2 Proc_270_75_A80810()
  loc_BA8F00: FStStrNoPop var_184
  loc_BA8F03: ConcatStr
  loc_BA8F04: FStStrNoPop var_188
  loc_BA8F07: LitStr vbCrLf
  loc_BA8F0A: ConcatStr
  loc_BA8F0B: FStStrNoPop var_18C
  loc_BA8F0E: LitStr vbCrLf
  loc_BA8F11: ConcatStr
  loc_BA8F12: CVarStr var_A4
  loc_BA8F15: PopAdLdVar
  loc_BA8F16: FLdPr Me
  loc_BA8F19: VCallAd Control_ID_ImpresoraPtr
  loc_BA8F1C: FStAdFunc var_C8
  loc_BA8F1F: FLdPr var_C8
  loc_BA8F22: LateIdCall
  loc_BA8F2A: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_184 = "": var_188 = ""
  loc_BA8F3F: FFree1Ad var_C8
  loc_BA8F42: FFree1Var var_A4 = ""
  loc_BA8F45: LitVarI4
  loc_BA8F4D: PopAdLdVar
  loc_BA8F4E: FLdRfVar var_8E
  loc_BA8F51: LdFixedStr
  loc_BA8F54: FStStrNoPop var_CC
  loc_BA8F57: LitStr "|bC"
  loc_BA8F5A: ConcatStr
  loc_BA8F5B: FStStrNoPop var_D0
  loc_BA8F5E: LitStr "Boleto Nro: "
  loc_BA8F61: ConcatStr
  loc_BA8F62: FStStrNoPop var_D4
  loc_BA8F65: FLdRfVar var_8E
  loc_BA8F68: LdFixedStr
  loc_BA8F6B: FStStrNoPop var_D8
  loc_BA8F6E: ConcatStr
  loc_BA8F6F: FStStrNoPop var_DC
  loc_BA8F72: LitStr "|N"
  loc_BA8F75: ConcatStr
  loc_BA8F76: FStStrNoPop var_E0
  loc_BA8F79: FLdI2 arg_10
  loc_BA8F7C: CStrUI1
  loc_BA8F7E: FStStrNoPop var_184
  loc_BA8F81: ConcatStr
  loc_BA8F82: FStStrNoPop var_188
  loc_BA8F85: LitStr "-"
  loc_BA8F88: ConcatStr
  loc_BA8F89: FStStrNoPop var_18C
  loc_BA8F8C: ILdRf arg_14
  loc_BA8F8F: CStrI4
  loc_BA8F91: FStStrNoPop var_190
  loc_BA8F94: ConcatStr
  loc_BA8F95: FStStrNoPop var_194
  loc_BA8F98: LitStr vbCrLf
  loc_BA8F9B: ConcatStr
  loc_BA8F9C: FStStrNoPop var_198
  loc_BA8F9F: LitStr vbCrLf
  loc_BA8FA2: LitStr vbCrLf
  loc_BA8FA5: ConcatStr
  loc_BA8FA6: FStStrNoPop var_19C
  loc_BA8FA9: ConcatStr
  loc_BA8FAA: CVarStr var_A4
  loc_BA8FAD: PopAdLdVar
  loc_BA8FAE: FLdPr Me
  loc_BA8FB1: VCallAd Control_ID_ImpresoraPtr
  loc_BA8FB4: FStAdFunc var_C8
  loc_BA8FB7: FLdPr var_C8
  loc_BA8FBA: LateIdCall
  loc_BA8FC2: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_184 = "": var_188 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_BA8FDF: FFree1Ad var_C8
  loc_BA8FE2: FFree1Var var_A4 = ""
  loc_BA8FE5: ILdRf var_8C
  loc_BA8FE8: LitStr vbNullString
  loc_BA8FEB: NeStr
  loc_BA8FED: BranchF loc_BA905E
  loc_BA8FF0: LitVarI4
  loc_BA8FF8: PopAdLdVar
  loc_BA8FF9: FLdRfVar var_8E
  loc_BA8FFC: LdFixedStr
  loc_BA8FFF: FStStrNoPop var_CC
  loc_BA9002: LitStr "|bC"
  loc_BA9005: ConcatStr
  loc_BA9006: FStStrNoPop var_D0
  loc_BA9009: LitStr "Periodo: "
  loc_BA900C: ConcatStr
  loc_BA900D: FStStrNoPop var_D4
  loc_BA9010: FLdRfVar var_8E
  loc_BA9013: LdFixedStr
  loc_BA9016: FStStrNoPop var_D8
  loc_BA9019: ConcatStr
  loc_BA901A: FStStrNoPop var_DC
  loc_BA901D: LitStr "|N"
  loc_BA9020: ConcatStr
  loc_BA9021: FStStrNoPop var_E0
  loc_BA9024: ILdRf var_8C
  loc_BA9027: ConcatStr
  loc_BA9028: FStStrNoPop var_184
  loc_BA902B: LitStr vbCrLf
  loc_BA902E: ConcatStr
  loc_BA902F: CVarStr var_A4
  loc_BA9032: PopAdLdVar
  loc_BA9033: FLdPr Me
  loc_BA9036: VCallAd Control_ID_ImpresoraPtr
  loc_BA9039: FStAdFunc var_C8
  loc_BA903C: FLdPr var_C8
  loc_BA903F: LateIdCall
  loc_BA9047: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_BA9058: FFree1Ad var_C8
  loc_BA905B: FFree1Var var_A4 = ""
  loc_BA905E: LitVarI4
  loc_BA9066: PopAdLdVar
  loc_BA9067: FLdRfVar var_8E
  loc_BA906A: LdFixedStr
  loc_BA906D: FStStrNoPop var_CC
  loc_BA9070: LitStr "|bC"
  loc_BA9073: ConcatStr
  loc_BA9074: FStStrNoPop var_D0
  loc_BA9077: LitStr "Importe de su Pago: "
  loc_BA907A: ConcatStr
  loc_BA907B: FStStrNoPop var_D4
  loc_BA907E: FLdRfVar var_8E
  loc_BA9081: LdFixedStr
  loc_BA9084: FStStrNoPop var_D8
  loc_BA9087: ConcatStr
  loc_BA9088: FStStrNoPop var_DC
  loc_BA908B: LitStr "|N"
  loc_BA908E: ConcatStr
  loc_BA908F: CVarStr var_120
  loc_BA9092: LitI4 1
  loc_BA9097: LitI4 1
  loc_BA909C: LitVarStr var_C4, "0.00"
  loc_BA90A1: FStVarCopyObj var_A4
  loc_BA90A4: FLdRfVar var_A4
  loc_BA90A7: FLdRfVar arg_18
  loc_BA90AA: CVarRef
  loc_BA90AF: FLdRfVar var_100
  loc_BA90B2: ImpAdCallFPR4  = Format(, )
  loc_BA90B7: FLdRfVar var_100
  loc_BA90BA: ConcatVar var_140
  loc_BA90BE: LitVarStr var_F0, vbCrLf
  loc_BA90C3: ConcatVar var_170
  loc_BA90C7: LitStr vbCrLf
  loc_BA90CA: LitStr vbCrLf
  loc_BA90CD: ConcatStr
  loc_BA90CE: CVarStr var_1AC
  loc_BA90D1: ConcatVar var_1BC
  loc_BA90D5: CStrVarTmp
  loc_BA90D6: CVarStr var_1CC
  loc_BA90D9: PopAdLdVar
  loc_BA90DA: FLdPr Me
  loc_BA90DD: VCallAd Control_ID_ImpresoraPtr
  loc_BA90E0: FStAdFunc var_C8
  loc_BA90E3: FLdPr var_C8
  loc_BA90E6: LateIdCall
  loc_BA90EE: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_BA90FB: FFree1Ad var_C8
  loc_BA90FE: FFreeVar var_A4 = "": var_120 = "": var_100 = "": var_140 = "": var_170 = "": var_1AC = "": var_1BC = ""
  loc_BA9111: LitVarI4
  loc_BA9119: PopAdLdVar
  loc_BA911A: LitStr "Este comprobante es valido si "
  loc_BA911D: LitStr vbCrLf
  loc_BA9120: ConcatStr
  loc_BA9121: CVarStr var_A4
  loc_BA9124: PopAdLdVar
  loc_BA9125: FLdPr Me
  loc_BA9128: VCallAd Control_ID_ImpresoraPtr
  loc_BA912B: FStAdFunc var_C8
  loc_BA912E: FLdPr var_C8
  loc_BA9131: LateIdCall
  loc_BA9139: FFree1Ad var_C8
  loc_BA913C: FFree1Var var_A4 = ""
  loc_BA913F: LitVarI4
  loc_BA9147: PopAdLdVar
  loc_BA9148: LitStr "los datos se corresponden con los"
  loc_BA914B: LitStr vbCrLf
  loc_BA914E: ConcatStr
  loc_BA914F: CVarStr var_A4
  loc_BA9152: PopAdLdVar
  loc_BA9153: FLdPr Me
  loc_BA9156: VCallAd Control_ID_ImpresoraPtr
  loc_BA9159: FStAdFunc var_C8
  loc_BA915C: FLdPr var_C8
  loc_BA915F: LateIdCall
  loc_BA9167: FFree1Ad var_C8
  loc_BA916A: FFree1Var var_A4 = ""
  loc_BA916D: LitVarI4
  loc_BA9175: PopAdLdVar
  loc_BA9176: LitStr "del boleto."
  loc_BA9179: LitStr vbCrLf
  loc_BA917C: ConcatStr
  loc_BA917D: FStStrNoPop var_CC
  loc_BA9180: LitStr vbCrLf
  loc_BA9183: ConcatStr
  loc_BA9184: FStStrNoPop var_D0
  loc_BA9187: LitStr vbCrLf
  loc_BA918A: ConcatStr
  loc_BA918B: CVarStr var_A4
  loc_BA918E: PopAdLdVar
  loc_BA918F: FLdPr Me
  loc_BA9192: VCallAd Control_ID_ImpresoraPtr
  loc_BA9195: FStAdFunc var_C8
  loc_BA9198: FLdPr var_C8
  loc_BA919B: LateIdCall
  loc_BA91A3: FFreeStr var_CC = ""
  loc_BA91AA: FFree1Ad var_C8
  loc_BA91AD: FFree1Var var_A4 = ""
  loc_BA91B0: LitVarI4
  loc_BA91B8: PopAdLdVar
  loc_BA91B9: LitStr "TICKET VALIDO COMO COMPROBANTE DE PAGO"
  loc_BA91BC: LitStr vbCrLf
  loc_BA91BF: ConcatStr
  loc_BA91C0: FStStrNoPop var_CC
  loc_BA91C3: LitStr vbCrLf
  loc_BA91C6: ConcatStr
  loc_BA91C7: FStStrNoPop var_D0
  loc_BA91CA: LitStr vbCrLf
  loc_BA91CD: ConcatStr
  loc_BA91CE: FStStrNoPop var_D4
  loc_BA91D1: LitStr vbCrLf
  loc_BA91D4: ConcatStr
  loc_BA91D5: FStStrNoPop var_D8
  loc_BA91D8: LitStr vbCrLf
  loc_BA91DB: ConcatStr
  loc_BA91DC: FStStrNoPop var_DC
  loc_BA91DF: LitStr vbCrLf
  loc_BA91E2: ConcatStr
  loc_BA91E3: FStStrNoPop var_E0
  loc_BA91E6: LitStr vbCrLf
  loc_BA91E9: ConcatStr
  loc_BA91EA: CVarStr var_A4
  loc_BA91ED: PopAdLdVar
  loc_BA91EE: FLdPr Me
  loc_BA91F1: VCallAd Control_ID_ImpresoraPtr
  loc_BA91F4: FStAdFunc var_C8
  loc_BA91F7: FLdPr var_C8
  loc_BA91FA: LateIdCall
  loc_BA9202: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_BA9211: FFree1Ad var_C8
  loc_BA9214: FFree1Var var_A4 = ""
  loc_BA9217: LitVar_FALSE
  loc_BA921B: PopAdLdVar
  loc_BA921C: FLdPr Me
  loc_BA921F: VCallAd Control_ID_ImpresoraPtr
  loc_BA9222: FStAdFunc var_C8
  loc_BA9225: FLdPr var_C8
  loc_BA9228: LateIdSt
  loc_BA922D: FFree1Ad var_C8
  loc_BA9230: FLdPr Me
  loc_BA9233: VCallAd Control_ID_ImpresoraPtr
  loc_BA9236: FStAdFunc var_C8
  loc_BA9239: FLdPr var_C8
  loc_BA923C: LateIdCall
  loc_BA9244: FFree1Ad var_C8
  loc_BA9247: FLdPr Me
  loc_BA924A: VCallAd Control_ID_ImpresoraPtr
  loc_BA924D: FStAdFunc var_C8
  loc_BA9250: FLdPr var_C8
  loc_BA9253: LateIdCall
  loc_BA925B: FFree1Ad var_C8
  loc_BA925E: ExitProcHresult
End Function

Private Function Proc_213_25_B014F0() 'B014F0
  'Data Table: 4B4C74
  loc_B012F0: FLdPr Me
  loc_B012F3: VCallAd Control_ID_BoletoFlex
  loc_B012F6: FStAdFunc var_88
  loc_B012F9: FLdPr var_88
  loc_B012FC: LateIdCall
  loc_B01304: LitVarI4
  loc_B0130C: PopAdLdVar
  loc_B0130D: FLdPr var_88
  loc_B01310: LateIdSt
  loc_B01315: LitVarI4
  loc_B0131D: PopAdLdVar
  loc_B0131E: LitVarI4
  loc_B01326: PopAdLdVar
  loc_B01327: LitVarStr var_D8, "Periodo"
  loc_B0132C: PopAdLdVar
  loc_B0132D: FLdPr var_88
  loc_B01330: LateIdCallSt
  loc_B01338: LitVarI4
  loc_B01340: PopAdLdVar
  loc_B01341: LitVarI4
  loc_B01349: PopAdLdVar
  loc_B0134A: LitVarStr var_D8, "Boleto"
  loc_B0134F: PopAdLdVar
  loc_B01350: FLdPr var_88
  loc_B01353: LateIdCallSt
  loc_B0135B: LitVarI4
  loc_B01363: PopAdLdVar
  loc_B01364: LitVarI4
  loc_B0136C: PopAdLdVar
  loc_B0136D: LitVarStr var_D8, "Of."
  loc_B01372: PopAdLdVar
  loc_B01373: FLdPr var_88
  loc_B01376: LateIdCallSt
  loc_B0137E: LitVarI4
  loc_B01386: PopAdLdVar
  loc_B01387: LitVarI4
  loc_B0138F: PopAdLdVar
  loc_B01390: LitVarStr var_D8, "Cuenta"
  loc_B01395: PopAdLdVar
  loc_B01396: FLdPr var_88
  loc_B01399: LateIdCallSt
  loc_B013A1: LitVarI4
  loc_B013A9: PopAdLdVar
  loc_B013AA: LitVarI4
  loc_B013B2: PopAdLdVar
  loc_B013B3: LitVarStr var_D8, "Apellido Y Nombre"
  loc_B013B8: PopAdLdVar
  loc_B013B9: FLdPr var_88
  loc_B013BC: LateIdCallSt
  loc_B013C4: LitVarI4
  loc_B013CC: PopAdLdVar
  loc_B013CD: LitVarI4
  loc_B013D5: PopAdLdVar
  loc_B013D6: LitVarStr var_D8, "Capital"
  loc_B013DB: PopAdLdVar
  loc_B013DC: FLdPr var_88
  loc_B013DF: LateIdCallSt
  loc_B013E7: LitVarI4
  loc_B013EF: PopAdLdVar
  loc_B013F0: LitVarI4
  loc_B013F8: PopAdLdVar
  loc_B013F9: LitVarStr var_D8, "Desc. Cap."
  loc_B013FE: PopAdLdVar
  loc_B013FF: FLdPr var_88
  loc_B01402: LateIdCallSt
  loc_B0140A: LitVarI4
  loc_B01412: PopAdLdVar
  loc_B01413: LitVarI4
  loc_B0141B: PopAdLdVar
  loc_B0141C: LitVarStr var_D8, "Recargo"
  loc_B01421: PopAdLdVar
  loc_B01422: FLdPr var_88
  loc_B01425: LateIdCallSt
  loc_B0142D: LitVarI4
  loc_B01435: PopAdLdVar
  loc_B01436: LitVarI4
  loc_B0143E: PopAdLdVar
  loc_B0143F: LitVarStr var_D8, "Desc. Rec."
  loc_B01444: PopAdLdVar
  loc_B01445: FLdPr var_88
  loc_B01448: LateIdCallSt
  loc_B01450: LitVarI4
  loc_B01458: PopAdLdVar
  loc_B01459: LitVarI4
  loc_B01461: PopAdLdVar
  loc_B01462: LitVarStr var_D8, "Interes"
  loc_B01467: PopAdLdVar
  loc_B01468: FLdPr var_88
  loc_B0146B: LateIdCallSt
  loc_B01473: LitVarI4
  loc_B0147B: PopAdLdVar
  loc_B0147C: LitVarI4
  loc_B01484: PopAdLdVar
  loc_B01485: LitVarStr var_D8, "Apremio"
  loc_B0148A: PopAdLdVar
  loc_B0148B: FLdPr var_88
  loc_B0148E: LateIdCallSt
  loc_B01496: LitVarI4
  loc_B0149E: PopAdLdVar
  loc_B0149F: LitVarI4
  loc_B014A7: PopAdLdVar
  loc_B014A8: LitVarStr var_D8, "Total"
  loc_B014AD: PopAdLdVar
  loc_B014AE: FLdPr var_88
  loc_B014B1: LateIdCallSt
  loc_B014B9: LitVarI4
  loc_B014C1: PopAdLdVar
  loc_B014C2: LitVarI4
  loc_B014CA: PopAdLdVar
  loc_B014CB: LitVarStr var_D8, "Usuario"
  loc_B014D0: PopAdLdVar
  loc_B014D1: FLdPr var_88
  loc_B014D4: LateIdCallSt
  loc_B014DC: FLdPr var_88
  loc_B014DF: LateIdCall
  loc_B014E7: LitNothing
  loc_B014E9: FStAd var_88 
  loc_B014ED: ExitProcHresult
  loc_B014EE: Ary1StFPR4
End Function

Private Function Proc_213_26_AC8950() 'AC8950
  'Data Table: 4B4C74
  loc_AC883C: LitI2_Byte 0
  loc_AC883E: CR8I2
  loc_AC883F: FStFPR8 var_8C
  loc_AC8842: LitI2_Byte 1
  loc_AC8844: FLdPr Me
  loc_AC8847: MemLdRfVar from_stack_1.global_92
  loc_AC884A: FLdPr Me
  loc_AC884D: VCallAd Control_ID_BoletoFlex
  loc_AC8850: FStAdFunc var_90
  loc_AC8853: FLdPr var_90
  loc_AC8856: LateIdLdVar var_A0 DispID_4 0
  loc_AC885D: CI4Var
  loc_AC885F: LitI4 1
  loc_AC8864: SubI4
  loc_AC8865: CI2I4
  loc_AC8866: FFree1Ad var_90
  loc_AC8869: FFree1Var var_A0 = ""
  loc_AC886C: ForI2 var_A4
  loc_AC8872: FLdPr Me
  loc_AC8875: MemLdI2 global_92
  loc_AC8878: CI4UI1
  loc_AC8879: CVarI4
  loc_AC887D: PopAdLdVar
  loc_AC887E: LitVarI4
  loc_AC8886: PopAdLdVar
  loc_AC8887: FLdPr Me
  loc_AC888A: VCallAd Control_ID_BoletoFlex
  loc_AC888D: FStAdFunc var_90
  loc_AC8890: FLdPr var_90
  loc_AC8893: LateIdCallLdVar
  loc_AC889D: CStrVarTmp
  loc_AC889E: CVarStr var_F4
  loc_AC88A1: ImpAdCallI2 IsNumeric()
  loc_AC88A6: FFree1Ad var_90
  loc_AC88A9: FFreeVar var_A0 = ""
  loc_AC88B0: BranchF loc_AC88F9
  loc_AC88B3: FLdPr Me
  loc_AC88B6: MemLdI2 global_92
  loc_AC88B9: CI4UI1
  loc_AC88BA: CVarI4
  loc_AC88BE: PopAdLdVar
  loc_AC88BF: LitVarI4
  loc_AC88C7: PopAdLdVar
  loc_AC88C8: FLdPr Me
  loc_AC88CB: VCallAd Control_ID_BoletoFlex
  loc_AC88CE: FStAdFunc var_90
  loc_AC88D1: FLdPr var_90
  loc_AC88D4: LateIdCallLdVar
  loc_AC88DE: PopAd
  loc_AC88E0: FLdFPR8 var_8C
  loc_AC88E3: FLdRfVar var_A0
  loc_AC88E6: CStrVarTmp
  loc_AC88E7: FStStrNoPop var_F8
  loc_AC88EA: CR8Str
  loc_AC88EC: AddR8
  loc_AC88ED: FStFPR8 var_8C
  loc_AC88F0: FFree1Str var_F8
  loc_AC88F3: FFree1Ad var_90
  loc_AC88F6: FFree1Var var_A0 = ""
  loc_AC88F9: FLdPr Me
  loc_AC88FC: MemLdRfVar from_stack_1.global_92
  loc_AC88FF: NextI2 var_A4, loc_AC8872
  loc_AC8904: LitI4 1
  loc_AC8909: LitI4 1
  loc_AC890E: LitVarStr var_C4, "0.00"
  loc_AC8913: FStVarCopyObj var_A0
  loc_AC8916: FLdRfVar var_A0
  loc_AC8919: FLdRfVar var_8C
  loc_AC891C: CVarRef
  loc_AC8921: FLdRfVar var_F4
  loc_AC8924: ImpAdCallFPR4  = Format(, )
  loc_AC8929: FLdRfVar var_F4
  loc_AC892C: CStrVarVal var_F8
  loc_AC8930: FLdPr Me
  loc_AC8933: VCallAd Control_ID_TotalTxt
  loc_AC8936: FStAdFunc var_90
  loc_AC8939: FLdPr var_90
  loc_AC893C: Me.Text = from_stack_1
  loc_AC8941: FFree1Str var_F8
  loc_AC8944: FFree1Ad var_90
  loc_AC8947: FFreeVar var_A0 = ""
  loc_AC894E: ExitProcHresult
End Function

Private Function Proc_213_27_AF1F60() 'AF1F60
  'Data Table: 4B4C74
  loc_AF1DBC: ImpAdLdI2 MemVar_D93034
  loc_AF1DBF: CStrUI1
  loc_AF1DC1: FStStrNoPop var_88
  loc_AF1DC4: FLdPr Me
  loc_AF1DC7: VCallAd Control_ID_PeriBoleTxt
  loc_AF1DCA: FStAdFunc var_8C
  loc_AF1DCD: FLdPr var_8C
  loc_AF1DD0: Me.Text = from_stack_1
  loc_AF1DD5: FFree1Str var_88
  loc_AF1DD8: FFree1Ad var_8C
  loc_AF1DDB: LitStr "0"
  loc_AF1DDE: FLdPr Me
  loc_AF1DE1: VCallAd Control_ID_NumeBoleTxt
  loc_AF1DE4: FStAdFunc var_8C
  loc_AF1DE7: FLdPr var_8C
  loc_AF1DEA: Me.Text = from_stack_1
  loc_AF1DEF: FFree1Ad var_8C
  loc_AF1DF2: LitStr "0"
  loc_AF1DF5: FLdPr Me
  loc_AF1DF8: VCallAd Control_ID_TotalTxt
  loc_AF1DFB: FStAdFunc var_8C
  loc_AF1DFE: FLdPr var_8C
  loc_AF1E01: Me.Text = from_stack_1
  loc_AF1E06: FFree1Ad var_8C
  loc_AF1E09: LitStr "0"
  loc_AF1E0C: FLdPr Me
  loc_AF1E0F: VCallAd Control_ID_PagaConTxt
  loc_AF1E12: FStAdFunc var_8C
  loc_AF1E15: FLdPr var_8C
  loc_AF1E18: Me.Text = from_stack_1
  loc_AF1E1D: FFree1Ad var_8C
  loc_AF1E20: LitStr "0"
  loc_AF1E23: FLdPr Me
  loc_AF1E26: VCallAd Control_ID_VueltoTxt
  loc_AF1E29: FStAdFunc var_8C
  loc_AF1E2C: FLdPr var_8C
  loc_AF1E2F: Me.Text = from_stack_1
  loc_AF1E34: FFree1Ad var_8C
  loc_AF1E37: FLdRfVar var_88
  loc_AF1E3A: FLdPr Me
  loc_AF1E3D: VCallAd Control_ID_TotalTxt
  loc_AF1E40: FStAdFunc var_8C
  loc_AF1E43: FLdPr var_8C
  loc_AF1E46:  = Me.Text
  loc_AF1E4B: LitI4 1
  loc_AF1E50: LitI4 1
  loc_AF1E55: LitVarStr var_AC, "0.00"
  loc_AF1E5A: FStVarCopyObj var_BC
  loc_AF1E5D: FLdRfVar var_BC
  loc_AF1E60: FLdZeroAd var_88
  loc_AF1E63: CVarStr var_9C
  loc_AF1E66: FLdRfVar var_CC
  loc_AF1E69: ImpAdCallFPR4  = Format(, )
  loc_AF1E6E: FLdRfVar var_CC
  loc_AF1E71: CStrVarVal var_D0
  loc_AF1E75: FLdPr Me
  loc_AF1E78: VCallAd Control_ID_TotalTxt
  loc_AF1E7B: FStAdFunc var_D4
  loc_AF1E7E: FLdPr var_D4
  loc_AF1E81: Me.Text = from_stack_1
  loc_AF1E86: FFree1Str var_D0
  loc_AF1E89: FFreeAd var_8C = ""
  loc_AF1E90: FFreeVar var_9C = "": var_BC = ""
  loc_AF1E99: FLdRfVar var_88
  loc_AF1E9C: FLdPr Me
  loc_AF1E9F: VCallAd Control_ID_PagaConTxt
  loc_AF1EA2: FStAdFunc var_8C
  loc_AF1EA5: FLdPr var_8C
  loc_AF1EA8:  = Me.Text
  loc_AF1EAD: LitI4 1
  loc_AF1EB2: LitI4 1
  loc_AF1EB7: LitVarStr var_AC, "0.00"
  loc_AF1EBC: FStVarCopyObj var_BC
  loc_AF1EBF: FLdRfVar var_BC
  loc_AF1EC2: FLdZeroAd var_88
  loc_AF1EC5: CVarStr var_9C
  loc_AF1EC8: FLdRfVar var_CC
  loc_AF1ECB: ImpAdCallFPR4  = Format(, )
  loc_AF1ED0: FLdRfVar var_CC
  loc_AF1ED3: CStrVarVal var_D0
  loc_AF1ED7: FLdPr Me
  loc_AF1EDA: VCallAd Control_ID_PagaConTxt
  loc_AF1EDD: FStAdFunc var_D4
  loc_AF1EE0: FLdPr var_D4
  loc_AF1EE3: Me.Text = from_stack_1
  loc_AF1EE8: FFree1Str var_D0
  loc_AF1EEB: FFreeAd var_8C = ""
  loc_AF1EF2: FFreeVar var_9C = "": var_BC = ""
  loc_AF1EFB: FLdRfVar var_88
  loc_AF1EFE: FLdPr Me
  loc_AF1F01: VCallAd Control_ID_VueltoTxt
  loc_AF1F04: FStAdFunc var_8C
  loc_AF1F07: FLdPr var_8C
  loc_AF1F0A:  = Me.Text
  loc_AF1F0F: LitI4 1
  loc_AF1F14: LitI4 1
  loc_AF1F19: LitVarStr var_AC, "0.00"
  loc_AF1F1E: FStVarCopyObj var_BC
  loc_AF1F21: FLdRfVar var_BC
  loc_AF1F24: FLdZeroAd var_88
  loc_AF1F27: CVarStr var_9C
  loc_AF1F2A: FLdRfVar var_CC
  loc_AF1F2D: ImpAdCallFPR4  = Format(, )
  loc_AF1F32: FLdRfVar var_CC
  loc_AF1F35: CStrVarVal var_D0
  loc_AF1F39: FLdPr Me
  loc_AF1F3C: VCallAd Control_ID_VueltoTxt
  loc_AF1F3F: FStAdFunc var_D4
  loc_AF1F42: FLdPr var_D4
  loc_AF1F45: Me.Text = from_stack_1
  loc_AF1F4A: FFree1Str var_D0
  loc_AF1F4D: FFreeAd var_8C = ""
  loc_AF1F54: FFreeVar var_9C = "": var_BC = ""
  loc_AF1F5D: ExitProcHresult
  loc_AF1F5E: LtCy
End Function
