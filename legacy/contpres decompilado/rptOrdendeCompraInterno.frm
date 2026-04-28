VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptOrdendeCompraInterno
  Caption = "Orden de Compra Interno"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptOrdendeCompraInterno.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10230
  ClientHeight = 7185
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 6930
    Width = 10230
    Height = 255
    TabIndex = 49
    OleObjectBlob = "rptOrdendeCompraInterno.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8880
    Top = 6000
    Width = 735
    Height = 615
    TabIndex = 47
    Cancel = -1  'True
    Picture = "rptOrdendeCompraInterno.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptOrdendeCompraInterno.frx":0B9C
    Left = 9480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 5760
    Width = 1815
    Height = 1095
    TabIndex = 44
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 45
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 5760
    Width = 3015
    Height = 1095
    TabIndex = 41
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 43
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 42
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9975
    Height = 5655
    TabIndex = 0
    Begin VB.ComboBox cboTipoCompra
      Left = 6240
      Top = 2520
      Width = 3015
      Height = 315
      TabIndex = 22
    End
    Begin VB.Frame Frame4
      Left = 1800
      Top = 1755
      Width = 5535
      Height = 585
      TabIndex = 15
      Begin VB.OptionButton optMostrarConDef
        Caption = "CON Definitiva/s"
        Left = 3720
        Top = 150
        Width = 1695
        Height = 315
        TabIndex = 18
      End
      Begin VB.OptionButton optMostrarSinDef
        Caption = "SIN Definitiva/s"
        Left = 1680
        Top = 150
        Width = 1455
        Height = 315
        TabIndex = 17
      End
      Begin VB.OptionButton optMostrarTodas
        Caption = "Todas"
        Left = 240
        Top = 150
        Width = 975
        Height = 315
        TabIndex = 16
        Value = 255
      End
    End
    Begin VB.CheckBox chkSoloAnuladas
      Caption = "Solo Anuladas"
      Left = 1800
      Top = 1320
      Width = 1815
      Height = 375
      TabIndex = 13
    End
    Begin VB.TextBox CodiOrcoTxt
      Left = 1560
      Top = 840
      Width = 3615
      Height = 315
      TabIndex = 10
      MaxLength = 400
    End
    Begin VB.CommandButton CodiOrgaCmd
      Left = 2880
      Top = 4560
      Width = 375
      Height = 375
      TabIndex = 37
      Picture = "rptOrdendeCompraInterno.frx":0C00
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CommandButton cmdCodiPart
      Left = 3240
      Top = 4080
      Width = 375
      Height = 375
      TabIndex = 33
      Picture = "rptOrdendeCompraInterno.frx":0CFA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.CheckBox chkSoloEncabezados
      Caption = "Solo Encabezados"
      Left = 5280
      Top = 5160
      Width = 1695
      Height = 255
      TabIndex = 40
    End
    Begin VB.ComboBox cboJuri
      Style = 2
      Left = 5760
      Top = 3600
      Width = 2055
      Height = 315
      TabIndex = 30
    End
    Begin VB.CommandButton FechOrcoHastaCmd
      Left = 6285
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 8
      Picture = "rptOrdendeCompraInterno.frx":0DF4
      Style = 1
    End
    Begin VB.CommandButton FechOrcoDesdeCmd
      Left = 3885
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 5
      Picture = "rptOrdendeCompraInterno.frx":1336
      Style = 1
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 3120
      Top = 3000
      Width = 375
      Height = 375
      TabIndex = 25
      Picture = "rptOrdendeCompraInterno.frx":1878
      Style = 1
    End
    Begin VB.ComboBox cboExpeImpu
      Left = 1800
      Top = 3600
      Width = 2055
      Height = 315
      TabIndex = 28
    End
    Begin VB.CheckBox chkHojasSeparadas
      Caption = "Hojas separadas"
      Left = 3000
      Top = 5160
      Width = 1575
      Height = 255
      TabIndex = 39
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 960
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 8160
      Top = 1800
      Width = 1335
      Height = 495
      TabIndex = 46
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1800
      Top = 3000
      Width = 1215
      Height = 315
      TabIndex = 24
      OleObjectBlob = "rptOrdendeCompraInterno.frx":1972
    End
    Begin MSMask.MaskEdBox CodiNopeMsk
      Left = 1800
      Top = 2520
      Width = 975
      Height = 315
      TabIndex = 20
      OleObjectBlob = "rptOrdendeCompraInterno.frx":19E8
    End
    Begin MSMask.MaskEdBox MskDesde
      Left = 2760
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptOrdendeCompraInterno.frx":1A58
    End
    Begin MSMask.MaskEdBox MskHasta
      Left = 5160
      Top = 360
      Width = 1095
      Height = 285
      TabIndex = 7
      OleObjectBlob = "rptOrdendeCompraInterno.frx":1AE0
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 1800
      Top = 4080
      Width = 1335
      Height = 285
      TabIndex = 32
      OleObjectBlob = "rptOrdendeCompraInterno.frx":1B68
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 1800
      Top = 4560
      Width = 975
      Height = 315
      TabIndex = 36
      OleObjectBlob = "rptOrdendeCompraInterno.frx":1BC8
    End
    Begin VB.Label Label14
      Caption = "Tipo de Compra:"
      Left = 4920
      Top = 2520
      Width = 1170
      Height = 195
      TabIndex = 21
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Mostrar:"
      Left = 1080
      Top = 1950
      Width = 570
      Height = 195
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "(desde-hasta separar con guión; ejemplo: 18-21)"
      Left = 5370
      Top = 840
      Width = 3285
      Height = 195
      TabIndex = 11
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "(intercalar distintas órdenes con coma; ejemplo: 18,21,25)"
      Left = 5370
      Top = 1080
      Width = 4065
      Height = 195
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Orden de Compra:"
      Left = 120
      Top = 840
      Width = 1290
      Height = 315
      TabIndex = 9
      AutoSize = -1  'True
    End
    Begin VB.Label CodiOrgaLbl
      Left = 3360
      Top = 4560
      Width = 5895
      Height = 375
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label11
      Caption = "Organigrama:"
      Left = 750
      Top = 4560
      Width = 945
      Height = 195
      TabIndex = 35
    End
    Begin VB.Label Label10
      Caption = "Partida:"
      Left = 1080
      Top = 4080
      Width = 615
      Height = 315
      TabIndex = 31
    End
    Begin VB.Label CodiPartLbl
      Left = 3720
      Top = 4080
      Width = 5535
      Height = 375
      TabIndex = 34
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label9
      Caption = "Jurisdicción:"
      Left = 4755
      Top = 3600
      Width = 870
      Height = 195
      TabIndex = 29
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label8
      Caption = "Hasta:"
      Left = 4560
      Top = 360
      Width = 465
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "Desde:"
      Left = 2115
      Top = 360
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 885
      Top = 3000
      Width = 780
      Height = 195
      TabIndex = 23
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Nota de pedido Nº:"
      Left = 300
      Top = 2520
      Width = 1365
      Height = 195
      TabIndex = 19
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 3600
      Top = 3000
      Width = 5655
      Height = 315
      TabIndex = 26
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
    Begin VB.Label Label4
      Caption = "Expediente original:"
      Left = 195
      Top = 3600
      Width = 1380
      Height = 195
      TabIndex = 27
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 240
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9000
    Top = 5000
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 48
    OleObjectBlob = "rptOrdendeCompraInterno.frx":1C28
  End
End

Attribute VB_Name = "rptOrdendeCompraInterno"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_0059BFC4
  bStruc(72) As Byte ' String fields: 18
End Type

Private Type UDT_2_0059C018
  bStruc(72) As Byte ' String fields: 18
End Type


Private Sub Form_Load() '9E8FCC
  'Data Table: 4F7D24
  loc_9E8EAC: LitVarStr var_94, "######"
  loc_9E8EB1: PopAdLdVar
  loc_9E8EB2: FLdPr Me
  loc_9E8EB5: VCallAd Control_ID_CodiOrgaMsk
  loc_9E8EB8: FStAdFunc var_A8
  loc_9E8EBB: FLdPr var_A8
  loc_9E8EBE: LateIdSt
  loc_9E8EC3: FFree1Ad var_A8
  loc_9E8EC6: LitVarStr var_94, "#.#.#.#.##.##"
  loc_9E8ECB: PopAdLdVar
  loc_9E8ECC: FLdPr Me
  loc_9E8ECF: VCallAd Control_ID_CodiPartMsk
  loc_9E8ED2: FStAdFunc var_A8
  loc_9E8ED5: FLdPr var_A8
  loc_9E8ED8: LateIdSt
  loc_9E8EDD: FFree1Ad var_A8
  loc_9E8EE0: LitI2_Byte &HFF
  loc_9E8EE2: ImpAdStI2 MemVar_C3D840
  loc_9E8EE5: ILdRf Me
  loc_9E8EE8: CastAd
  loc_9E8EEB: FStAdFunc var_A8
  loc_9E8EEE: FLdRfVar var_A8
  loc_9E8EF1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E8EF6: FFree1Ad var_A8
  loc_9E8EF9: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E8EFC: FLdPr Me
  loc_9E8EFF: MemLdRfVar from_stack_1.global_76
  loc_9E8F02: NewIfNullPr clsbase
  loc_9E8F05: Call clsbase.RedefineRS(from_stack_1v)
  loc_9E8F0A: FLdRfVar var_AC
  loc_9E8F0D: FLdPr Me
  loc_9E8F10: MemLdRfVar from_stack_1.global_76
  loc_9E8F13: NewIfNullPr clsbase
  loc_9E8F16: from_stack_1 = clsbase.RecordCount
  loc_9E8F1B: ILdRf var_AC
  loc_9E8F1E: LitI4 0
  loc_9E8F23: GtI4
  loc_9E8F24: BranchF loc_9E8FC3
  loc_9E8F27: FLdPr Me
  loc_9E8F2A: MemLdRfVar from_stack_1.global_76
  loc_9E8F2D: NewIfNullPr clsbase
  loc_9E8F30: Call clsbase.MoveFirst()
  loc_9E8F35: FLdRfVar var_AE
  loc_9E8F38: FLdPr Me
  loc_9E8F3B: MemLdRfVar from_stack_1.global_76
  loc_9E8F3E: NewIfNullPr clsbase
  loc_9E8F41: from_stack_1 = clsbase.EOF
  loc_9E8F46: FLdI2 var_AE
  loc_9E8F49: NotI4
  loc_9E8F4A: BranchF loc_9E8FC3
  loc_9E8F4D: LitVar_Missing var_A4
  loc_9E8F50: PopAdLdVar
  loc_9E8F51: FLdRfVar var_C8
  loc_9E8F54: FLdRfVar var_B8
  loc_9E8F57: LitVarStr var_94, "PeriInfo"
  loc_9E8F5C: PopAdLdVar
  loc_9E8F5D: FLdRfVar var_B4
  loc_9E8F60: FLdRfVar var_A8
  loc_9E8F63: FLdPr Me
  loc_9E8F66: MemLdRfVar from_stack_1.global_76
  loc_9E8F69: NewIfNullPr clsbase
  loc_9E8F6C: from_stack_1v = clsbase.RsFrmGet()
  loc_9E8F71: FLdPr var_A8
  loc_9E8F74:  = Me.Fields
  loc_9E8F79: FLdPr var_B4
  loc_9E8F7C: from_stack_2 = Me.Item(from_stack_1)
  loc_9E8F81: FLdPr var_B8
  loc_9E8F84:  = Me.Value
  loc_9E8F89: FLdRfVar var_C8
  loc_9E8F8C: CStrVarTmp
  loc_9E8F8D: FStStrNoPop var_CC
  loc_9E8F90: FLdPr Me
  loc_9E8F93: VCallAd Control_ID_cboPeriodo
  loc_9E8F96: FStAdFunc var_D0
  loc_9E8F99: FLdPr var_D0
  loc_9E8F9C: Me.AddItem from_stack_1, from_stack_2
  loc_9E8FA1: FFree1Str var_CC
  loc_9E8FA4: FFreeAd var_A8 = "": var_B4 = "": var_B8 = ""
  loc_9E8FAF: FFree1Var var_C8 = ""
  loc_9E8FB2: FLdPr Me
  loc_9E8FB5: MemLdRfVar from_stack_1.global_76
  loc_9E8FB8: NewIfNullPr clsbase
  loc_9E8FBB: Call clsbase.MoveSiguiente()
  loc_9E8FC0: Branch loc_9E8F35
  loc_9E8FC3: Call cmdNueva_Click()
  loc_9E8FC8: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95F6AC
  'Data Table: 4F7D24
  loc_95F694: FLdPr Me
  loc_95F697: VCallAd Control_ID_wbbReporte
  loc_95F69A: FStAdFunc var_88
  loc_95F69D: FLdRfVar var_88
  loc_95F6A0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95F6A5: FFree1Ad var_88
  loc_95F6A8: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '94C098
  'Data Table: 4F7D24
  loc_94C084: FLdPr Me
  loc_94C087: VCallAd Control_ID_MskDesde
  loc_94C08A: CVarAd
  loc_94C08E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C093: FFree1Var var_94 = ""
  loc_94C096: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_8 '9B39A4
  'Data Table: 4F7D24
  loc_9B3908: FLdPr Me
  loc_9B390B: VCallAd Control_ID_MskDesde
  loc_9B390E: FStAdFunc var_88
  loc_9B3911: FLdPr var_88
  loc_9B3914: LateIdLdVar var_98 DispID_15 0
  loc_9B391B: PopAd
  loc_9B391D: FLdPr Me
  loc_9B3920: VCallAd Control_ID_MskDesde
  loc_9B3923: FStAdFunc var_AC
  loc_9B3926: LitI2_Byte 0
  loc_9B3928: PopTmpLdAd2 var_A2
  loc_9B392B: FLdZeroAd var_AC
  loc_9B392E: FStAdFunc var_A0
  loc_9B3931: FLdRfVar var_A0
  loc_9B3934: LitStr vbNullString
  loc_9B3937: LitI2_Byte 0
  loc_9B3939: LitI2_Byte 0
  loc_9B393B: FLdRfVar var_98
  loc_9B393E: CStrVarTmp
  loc_9B393F: FStStrNoPop var_9C
  loc_9B3942: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B3947: FStStrNoPop var_A8
  loc_9B394A: FLdPr Me
  loc_9B394D: MemStStrCopy
  loc_9B3951: FFreeStr var_9C = ""
  loc_9B3958: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3961: FFree1Var var_98 = ""
  loc_9B3964: FLdPr Me
  loc_9B3967: VCallAd Control_ID_MskDesde
  loc_9B396A: FStAdFunc var_B0
  loc_9B396D: LitNothing
  loc_9B396F: CastAd
  loc_9B3972: FStAdFunc var_AC
  loc_9B3975: FLdRfVar var_AC
  loc_9B3978: FLdZeroAd var_B0
  loc_9B397B: FStAdFuncNoPop
  loc_9B397E: CastAd
  loc_9B3981: FStAdFunc var_A0
  loc_9B3984: FLdRfVar var_A0
  loc_9B3987: FLdPr Me
  loc_9B398A: MemLdRfVar from_stack_1.global_108
  loc_9B398D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B3992: IStI2 Cancel
  loc_9B3995: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B39A0: ExitProcHresult
  loc_9B39A1: IStFPR8 arg_345
End Sub

Private Sub mskHasta_UnknownEvent_0 '94AD78
  'Data Table: 4F7D24
  loc_94AD64: FLdPr Me
  loc_94AD67: VCallAd Control_ID_MskHasta
  loc_94AD6A: CVarAd
  loc_94AD6E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AD73: FFree1Var var_94 = ""
  loc_94AD76: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_8 '9B38BC
  'Data Table: 4F7D24
  loc_9B3820: FLdPr Me
  loc_9B3823: VCallAd Control_ID_MskHasta
  loc_9B3826: FStAdFunc var_88
  loc_9B3829: FLdPr var_88
  loc_9B382C: LateIdLdVar var_98 DispID_15 0
  loc_9B3833: PopAd
  loc_9B3835: FLdPr Me
  loc_9B3838: VCallAd Control_ID_MskHasta
  loc_9B383B: FStAdFunc var_AC
  loc_9B383E: LitI2_Byte 0
  loc_9B3840: PopTmpLdAd2 var_A2
  loc_9B3843: FLdZeroAd var_AC
  loc_9B3846: FStAdFunc var_A0
  loc_9B3849: FLdRfVar var_A0
  loc_9B384C: LitStr vbNullString
  loc_9B384F: LitI2_Byte 0
  loc_9B3851: LitI2_Byte 0
  loc_9B3853: FLdRfVar var_98
  loc_9B3856: CStrVarTmp
  loc_9B3857: FStStrNoPop var_9C
  loc_9B385A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B385F: FStStrNoPop var_A8
  loc_9B3862: FLdPr Me
  loc_9B3865: MemStStrCopy
  loc_9B3869: FFreeStr var_9C = ""
  loc_9B3870: FFreeAd var_88 = "": var_A0 = ""
  loc_9B3879: FFree1Var var_98 = ""
  loc_9B387C: FLdPr Me
  loc_9B387F: VCallAd Control_ID_MskHasta
  loc_9B3882: FStAdFunc var_B0
  loc_9B3885: LitNothing
  loc_9B3887: CastAd
  loc_9B388A: FStAdFunc var_AC
  loc_9B388D: FLdRfVar var_AC
  loc_9B3890: FLdZeroAd var_B0
  loc_9B3893: FStAdFuncNoPop
  loc_9B3896: CastAd
  loc_9B3899: FStAdFunc var_A0
  loc_9B389C: FLdRfVar var_A0
  loc_9B389F: FLdPr Me
  loc_9B38A2: MemLdRfVar from_stack_1.global_108
  loc_9B38A5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B38AA: IStI2 Cancel
  loc_9B38AD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B38B8: ExitProcHresult
End Sub

Private Sub CodiOrgaCmd_Click() 'A13E60
  'Data Table: 4F7D24
  loc_A13CF0: FLdRfVar var_8C
  loc_A13CF3: FLdPr Me
  loc_A13CF6: VCallAd Control_ID_cboPeriodo
  loc_A13CF9: FStAdFunc var_88
  loc_A13CFC: FLdPr var_88
  loc_A13CFF:  = Me.Text
  loc_A13D04: ILdRf var_8C
  loc_A13D07: CI2Str
  loc_A13D09: ImpAdLdRf MemVar_C3D710
  loc_A13D0C: NewIfNullPr bscOrganigrama
  loc_A13D0F: Call bscOrganigrama.iPeriInfoPut(from_stack_1v)
  loc_A13D14: FFree1Str var_8C
  loc_A13D17: FFree1Ad var_88
  loc_A13D1A: LitI2_Byte &HFF
  loc_A13D1C: ImpAdLdRf MemVar_C3D710
  loc_A13D1F: NewIfNullPr bscOrganigrama
  loc_A13D22: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A13D27: LitNothing
  loc_A13D29: CastAd
  loc_A13D2C: FStAdFuncNoPop
  loc_A13D2F: ImpAdLdRf MemVar_C3D710
  loc_A13D32: NewIfNullPr bscOrganigrama
  loc_A13D35: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A13D3A: FFree1Ad var_88
  loc_A13D3D: LitVar_Missing var_AC
  loc_A13D40: PopAdLdVar
  loc_A13D41: LitVarI4
  loc_A13D49: PopAdLdVar
  loc_A13D4A: ImpAdLdRf MemVar_C3D710
  loc_A13D4D: NewIfNullPr bscOrganigrama
  loc_A13D50: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A13D55: FLdRfVar var_B0
  loc_A13D58: FLdRfVar var_88
  loc_A13D5B: ImpAdLdRf MemVar_C3D710
  loc_A13D5E: NewIfNullPr bscOrganigrama
  loc_A13D61: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A13D66: FLdPr var_88
  loc_A13D69: from_stack_1 = clsbase.RecordCount
  loc_A13D6E: ILdRf var_B0
  loc_A13D71: LitI4 0
  loc_A13D76: GtI4
  loc_A13D77: FFree1Ad var_88
  loc_A13D7A: BranchF loc_A13E55
  loc_A13D7D: FLdRfVar var_CC
  loc_A13D80: FLdRfVar var_BC
  loc_A13D83: LitVarStr var_9C, "CodiOrga"
  loc_A13D88: PopAdLdVar
  loc_A13D89: FLdRfVar var_B8
  loc_A13D8C: FLdRfVar var_B4
  loc_A13D8F: FLdRfVar var_88
  loc_A13D92: ImpAdLdRf MemVar_C3D710
  loc_A13D95: NewIfNullPr bscOrganigrama
  loc_A13D98: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A13D9D: FLdPr var_88
  loc_A13DA0: from_stack_1v = clsbase.RsFrmGet()
  loc_A13DA5: FLdPr var_B4
  loc_A13DA8:  = Me.Fields
  loc_A13DAD: FLdPr var_B8
  loc_A13DB0: from_stack_2 = Me.Item(from_stack_1)
  loc_A13DB5: FLdPr var_BC
  loc_A13DB8:  = Me.Value
  loc_A13DBD: FLdRfVar var_CC
  loc_A13DC0: CStrVarTmp
  loc_A13DC1: CVarStr var_DC
  loc_A13DC4: PopAdLdVar
  loc_A13DC5: FLdPr Me
  loc_A13DC8: VCallAd Control_ID_CodiOrgaMsk
  loc_A13DCB: FStAdFunc var_E0
  loc_A13DCE: FLdPr var_E0
  loc_A13DD1: LateIdSt
  loc_A13DD6: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A13DE3: FFreeVar var_CC = ""
  loc_A13DEA: FLdRfVar var_CC
  loc_A13DED: FLdRfVar var_BC
  loc_A13DF0: LitVarStr var_9C, "DetaOrga"
  loc_A13DF5: PopAdLdVar
  loc_A13DF6: FLdRfVar var_B8
  loc_A13DF9: FLdRfVar var_B4
  loc_A13DFC: FLdRfVar var_88
  loc_A13DFF: ImpAdLdRf MemVar_C3D710
  loc_A13E02: NewIfNullPr bscOrganigrama
  loc_A13E05: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A13E0A: FLdPr var_88
  loc_A13E0D: from_stack_1v = clsbase.RsFrmGet()
  loc_A13E12: FLdPr var_B4
  loc_A13E15:  = Me.Fields
  loc_A13E1A: FLdPr var_B8
  loc_A13E1D: from_stack_2 = Me.Item(from_stack_1)
  loc_A13E22: FLdPr var_BC
  loc_A13E25:  = Me.Value
  loc_A13E2A: FLdRfVar var_CC
  loc_A13E2D: CStrVarTmp
  loc_A13E2E: FStStrNoPop var_8C
  loc_A13E31: FLdPr Me
  loc_A13E34: VCallAd Control_ID_CodiOrgaLbl
  loc_A13E37: FStAdFunc var_E0
  loc_A13E3A: FLdPr var_E0
  loc_A13E3D: Me.Caption = from_stack_1
  loc_A13E42: FFree1Str var_8C
  loc_A13E45: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A13E52: FFree1Var var_CC = ""
  loc_A13E55: LitI2_Byte 0
  loc_A13E57: PopTmpLdAd2 var_E2
  loc_A13E5A: Call CodiOrgaMsk_UnknownEvent_8()
  loc_A13E5F: ExitProcHresult
End Sub

Private Sub cmdCodiPart_Click() '9F60C8
  'Data Table: 4F7D24
  loc_9F5F98: LitNothing
  loc_9F5F9A: CastAd
  loc_9F5F9D: FStAdFuncNoPop
  loc_9F5FA0: ImpAdLdRf MemVar_C3D724
  loc_9F5FA3: NewIfNullPr bscPartida
  loc_9F5FA6: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_9F5FAB: FFree1Ad var_88
  loc_9F5FAE: LitVar_Missing var_A8
  loc_9F5FB1: PopAdLdVar
  loc_9F5FB2: LitVarI4
  loc_9F5FBA: PopAdLdVar
  loc_9F5FBB: ImpAdLdRf MemVar_C3D724
  loc_9F5FBE: NewIfNullPr bscPartida
  loc_9F5FC1: bscPartida.Show from_stack_1, from_stack_2
  loc_9F5FC6: FLdRfVar var_AC
  loc_9F5FC9: FLdRfVar var_88
  loc_9F5FCC: ImpAdLdRf MemVar_C3D724
  loc_9F5FCF: NewIfNullPr bscPartida
  loc_9F5FD2: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F5FD7: FLdPr var_88
  loc_9F5FDA: from_stack_1 = clsbase.RecordCount
  loc_9F5FDF: ILdRf var_AC
  loc_9F5FE2: LitI4 0
  loc_9F5FE7: GtI4
  loc_9F5FE8: FFree1Ad var_88
  loc_9F5FEB: BranchF loc_9F60C6
  loc_9F5FEE: FLdRfVar var_C8
  loc_9F5FF1: FLdRfVar var_B8
  loc_9F5FF4: LitVarStr var_98, "CodiPart"
  loc_9F5FF9: PopAdLdVar
  loc_9F5FFA: FLdRfVar var_B4
  loc_9F5FFD: FLdRfVar var_B0
  loc_9F6000: FLdRfVar var_88
  loc_9F6003: ImpAdLdRf MemVar_C3D724
  loc_9F6006: NewIfNullPr bscPartida
  loc_9F6009: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F600E: FLdPr var_88
  loc_9F6011: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6016: FLdPr var_B0
  loc_9F6019:  = Me.Fields
  loc_9F601E: FLdPr var_B4
  loc_9F6021: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6026: FLdPr var_B8
  loc_9F6029:  = Me.Value
  loc_9F602E: FLdRfVar var_C8
  loc_9F6031: CStrVarTmp
  loc_9F6032: CVarStr var_D8
  loc_9F6035: PopAdLdVar
  loc_9F6036: FLdPr Me
  loc_9F6039: VCallAd Control_ID_CodiPartMsk
  loc_9F603C: FStAdFunc var_DC
  loc_9F603F: FLdPr var_DC
  loc_9F6042: LateIdSt
  loc_9F6047: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F6054: FFreeVar var_C8 = ""
  loc_9F605B: FLdRfVar var_C8
  loc_9F605E: FLdRfVar var_B8
  loc_9F6061: LitVarStr var_98, "DetaPart"
  loc_9F6066: PopAdLdVar
  loc_9F6067: FLdRfVar var_B4
  loc_9F606A: FLdRfVar var_B0
  loc_9F606D: FLdRfVar var_88
  loc_9F6070: ImpAdLdRf MemVar_C3D724
  loc_9F6073: NewIfNullPr bscPartida
  loc_9F6076: from_stack_1v = bscPartida.global_4332396Get()
  loc_9F607B: FLdPr var_88
  loc_9F607E: from_stack_1v = clsbase.RsFrmGet()
  loc_9F6083: FLdPr var_B0
  loc_9F6086:  = Me.Fields
  loc_9F608B: FLdPr var_B4
  loc_9F608E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F6093: FLdPr var_B8
  loc_9F6096:  = Me.Value
  loc_9F609B: FLdRfVar var_C8
  loc_9F609E: CStrVarTmp
  loc_9F609F: FStStrNoPop var_E0
  loc_9F60A2: FLdPr Me
  loc_9F60A5: VCallAd Control_ID_CodiPartLbl
  loc_9F60A8: FStAdFunc var_DC
  loc_9F60AB: FLdPr var_DC
  loc_9F60AE: Me.Caption = from_stack_1
  loc_9F60B3: FFree1Str var_E0
  loc_9F60B6: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F60C3: FFree1Var var_C8 = ""
  loc_9F60C6: ExitProcHresult
End Sub

Private Sub CodiNopeMsk_UnknownEvent_0 '94B1B0
  'Data Table: 4F7D24
  loc_94B19C: FLdPr Me
  loc_94B19F: VCallAd Control_ID_CodiNopeMsk
  loc_94B1A2: CVarAd
  loc_94B1A6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B1AB: FFree1Var var_94 = ""
  loc_94B1AE: ExitProcHresult
End Sub

Private Sub CodiOrcoTxt_GotFocus() '94AEE0
  'Data Table: 4F7D24
  loc_94AECC: FLdPr Me
  loc_94AECF: VCallAd Control_ID_CodiOrcoTxt
  loc_94AED2: CVarAd
  loc_94AED6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AEDB: FFree1Var var_94 = ""
  loc_94AEDE: ExitProcHresult
End Sub

Private Sub CodiOrcoTxt_KeyPress(KeyAscii As Integer) '97F0D8
  'Data Table: 4F7D24
  loc_97F0A4: LitStr "1234567890-,."
  loc_97F0A7: FStStrCopy var_88
  loc_97F0AA: FLdRfVar var_88
  loc_97F0AD: ILdRf KeyAscii
  loc_97F0B0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97F0B5: IStI2 KeyAscii
  loc_97F0B8: FFree1Str var_88
  loc_97F0BB: ILdI2 KeyAscii
  loc_97F0BE: LitStr "."
  loc_97F0C1: ImpAdCallI2 Asc()
  loc_97F0C6: EqI2
  loc_97F0C7: BranchF loc_97F0D5
  loc_97F0CA: LitStr ","
  loc_97F0CD: ImpAdCallI2 Asc()
  loc_97F0D2: IStI2 KeyAscii
  loc_97F0D5: ExitProcHresult
End Sub

Private Sub CodiOrcoTxt_Validate(Cancel As Boolean) 'A7E884
  'Data Table: 4F7D24
  loc_A7E4B0: LitStr vbNullString
  loc_A7E4B3: FLdPr Me
  loc_A7E4B6: MemStStrCopy
  loc_A7E4BA: FLdRfVar var_8C
  loc_A7E4BD: FLdPr Me
  loc_A7E4C0: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E4C3: FStAdFunc var_88
  loc_A7E4C6: FLdPr var_88
  loc_A7E4C9:  = Me.Text
  loc_A7E4CE: LitI2_Byte 0
  loc_A7E4D0: PopTmpLdAd2 var_92
  loc_A7E4D3: LitI2_Byte 0
  loc_A7E4D5: PopTmpLdAd2 var_90
  loc_A7E4D8: LitI2_Byte 0
  loc_A7E4DA: PopTmpLdAd2 var_8E
  loc_A7E4DD: ILdRf var_8C
  loc_A7E4E0: LitStr "Orden de Compra"
  loc_A7E4E3: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A7E4E8: FStStrNoPop var_98
  loc_A7E4EB: FLdPr Me
  loc_A7E4EE: MemStStrCopy
  loc_A7E4F2: FFreeStr var_8C = ""
  loc_A7E4F9: FFree1Ad var_88
  loc_A7E4FC: FLdPr Me
  loc_A7E4FF: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E502: FStAdFunc var_A4
  loc_A7E505: LitNothing
  loc_A7E507: CastAd
  loc_A7E50A: FStAdFunc var_A0
  loc_A7E50D: FLdRfVar var_A0
  loc_A7E510: FLdZeroAd var_A4
  loc_A7E513: FStAdFuncNoPop
  loc_A7E516: CastAd
  loc_A7E519: FStAdFunc var_9C
  loc_A7E51C: FLdRfVar var_9C
  loc_A7E51F: FLdPr Me
  loc_A7E522: MemLdRfVar from_stack_1.global_108
  loc_A7E525: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7E52A: IStI2 Cancel
  loc_A7E52D: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E538: ILdI2 Cancel
  loc_A7E53B: NotI4
  loc_A7E53C: BranchF loc_A7E880
  loc_A7E53F: LitI4 1
  loc_A7E544: FLdRfVar var_8C
  loc_A7E547: FLdPr Me
  loc_A7E54A: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E54D: FStAdFunc var_88
  loc_A7E550: FLdPr var_88
  loc_A7E553:  = Me.Text
  loc_A7E558: ILdRf var_8C
  loc_A7E55B: LitStr "-"
  loc_A7E55E: LitI4 0
  loc_A7E563: FnInStr4
  loc_A7E565: LitI4 0
  loc_A7E56A: GtI4
  loc_A7E56B: FFree1Str var_8C
  loc_A7E56E: FFree1Ad var_88
  loc_A7E571: BranchF loc_A7E705
  loc_A7E574: LitI4 1
  loc_A7E579: FLdRfVar var_8C
  loc_A7E57C: FLdPr Me
  loc_A7E57F: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E582: FStAdFunc var_88
  loc_A7E585: FLdPr var_88
  loc_A7E588:  = Me.Text
  loc_A7E58D: ILdRf var_8C
  loc_A7E590: LitStr ","
  loc_A7E593: LitI4 0
  loc_A7E598: FnInStr4
  loc_A7E59A: LitI4 0
  loc_A7E59F: GtI4
  loc_A7E5A0: FFree1Str var_8C
  loc_A7E5A3: FFree1Ad var_88
  loc_A7E5A6: BranchF loc_A7E5B6
  loc_A7E5A9: LitStr "primero un guión, y luego una coma..."
  loc_A7E5AC: FLdPr Me
  loc_A7E5AF: MemStStrCopy
  loc_A7E5B3: Branch loc_A7E702
  loc_A7E5B6: FLdRfVar var_98
  loc_A7E5B9: FLdPr Me
  loc_A7E5BC: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E5BF: FStAdFunc var_9C
  loc_A7E5C2: FLdPr var_9C
  loc_A7E5C5:  = Me.Text
  loc_A7E5CA: LitI4 1
  loc_A7E5CF: FLdRfVar var_8C
  loc_A7E5D2: FLdPr Me
  loc_A7E5D5: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E5D8: FStAdFunc var_88
  loc_A7E5DB: FLdPr var_88
  loc_A7E5DE:  = Me.Text
  loc_A7E5E3: ILdRf var_8C
  loc_A7E5E6: LitStr "-"
  loc_A7E5E9: LitI4 0
  loc_A7E5EE: FnInStr4
  loc_A7E5F0: LitI4 0
  loc_A7E5F5: LitI4 -1
  loc_A7E5FA: LitStr "-"
  loc_A7E5FD: ILdRf var_98
  loc_A7E600: ImpAdCallI2 InStrRev(, , , )
  loc_A7E605: NeI4
  loc_A7E606: FFreeStr var_8C = ""
  loc_A7E60D: FFreeAd var_88 = ""
  loc_A7E614: BranchF loc_A7E624
  loc_A7E617: LitStr "tiene más de un guión..."
  loc_A7E61A: FLdPr Me
  loc_A7E61D: MemStStrCopy
  loc_A7E621: Branch loc_A7E702
  loc_A7E624: FLdRfVar var_8C
  loc_A7E627: FLdPr Me
  loc_A7E62A: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E62D: FStAdFunc var_88
  loc_A7E630: FLdPr var_88
  loc_A7E633:  = Me.Text
  loc_A7E638: FLdRfVar var_B0
  loc_A7E63B: FLdPr Me
  loc_A7E63E: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E641: FStAdFunc var_A0
  loc_A7E644: FLdPr var_A0
  loc_A7E647:  = Me.Text
  loc_A7E64C: FLdRfVar var_B4
  loc_A7E64F: FLdPr Me
  loc_A7E652: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E655: FStAdFunc var_A4
  loc_A7E658: FLdPr var_A4
  loc_A7E65B:  = Me.Text
  loc_A7E660: LitStr " AND oc.CodiOrco >= '"
  loc_A7E663: LitI4 1
  loc_A7E668: FLdRfVar var_98
  loc_A7E66B: FLdPr Me
  loc_A7E66E: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E671: FStAdFunc var_9C
  loc_A7E674: FLdPr var_9C
  loc_A7E677:  = Me.Text
  loc_A7E67C: ILdRf var_98
  loc_A7E67F: LitStr "-"
  loc_A7E682: LitI4 0
  loc_A7E687: FnInStr4
  loc_A7E689: LitI4 1
  loc_A7E68E: SubI4
  loc_A7E68F: ILdRf var_8C
  loc_A7E692: ImpAdCallI2 Left$(, )
  loc_A7E697: FStStrNoPop var_A8
  loc_A7E69A: ConcatStr
  loc_A7E69B: FStStrNoPop var_AC
  loc_A7E69E: LitStr "' AND oc.CodiOrco <= '"
  loc_A7E6A1: ConcatStr
  loc_A7E6A2: FStStrNoPop var_D8
  loc_A7E6A5: LitVar_Missing var_D4
  loc_A7E6A8: LitI4 1
  loc_A7E6AD: ILdRf var_B4
  loc_A7E6B0: LitStr "-"
  loc_A7E6B3: LitI4 0
  loc_A7E6B8: FnInStr4
  loc_A7E6BA: LitI4 1
  loc_A7E6BF: AddI4
  loc_A7E6C0: ILdRf var_B0
  loc_A7E6C3: ImpAdCallI2 Mid$(, , )
  loc_A7E6C8: FStStrNoPop var_DC
  loc_A7E6CB: ConcatStr
  loc_A7E6CC: FStStrNoPop var_E0
  loc_A7E6CF: LitStr "'"
  loc_A7E6D2: ConcatStr
  loc_A7E6D3: FStStrNoPop var_E4
  loc_A7E6D6: FLdPr Me
  loc_A7E6D9: MemStStrCopy
  loc_A7E6DD: FFreeStr var_98 = "": var_8C = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A7E6F4: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E6FF: FFree1Var var_D4 = ""
  loc_A7E702: Branch loc_A7E844
  loc_A7E705: LitI4 1
  loc_A7E70A: FLdRfVar var_8C
  loc_A7E70D: FLdPr Me
  loc_A7E710: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E713: FStAdFunc var_88
  loc_A7E716: FLdPr var_88
  loc_A7E719:  = Me.Text
  loc_A7E71E: ILdRf var_8C
  loc_A7E721: LitStr ","
  loc_A7E724: LitI4 0
  loc_A7E729: FnInStr4
  loc_A7E72B: LitI4 0
  loc_A7E730: GtI4
  loc_A7E731: FFree1Str var_8C
  loc_A7E734: FFree1Ad var_88
  loc_A7E737: BranchF loc_A7E7D6
  loc_A7E73A: LitI4 1
  loc_A7E73F: FLdRfVar var_8C
  loc_A7E742: FLdPr Me
  loc_A7E745: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E748: FStAdFunc var_88
  loc_A7E74B: FLdPr var_88
  loc_A7E74E:  = Me.Text
  loc_A7E753: ILdRf var_8C
  loc_A7E756: LitStr "-"
  loc_A7E759: LitI4 0
  loc_A7E75E: FnInStr4
  loc_A7E760: LitI4 0
  loc_A7E765: GtI4
  loc_A7E766: FFree1Str var_8C
  loc_A7E769: FFree1Ad var_88
  loc_A7E76C: BranchF loc_A7E77C
  loc_A7E76F: LitStr "primero un coma, y luego un guión..."
  loc_A7E772: FLdPr Me
  loc_A7E775: MemStStrCopy
  loc_A7E779: Branch loc_A7E7D3
  loc_A7E77C: FLdRfVar var_8C
  loc_A7E77F: FLdPr Me
  loc_A7E782: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E785: FStAdFunc var_88
  loc_A7E788: FLdPr var_88
  loc_A7E78B:  = Me.Text
  loc_A7E790: LitStr " AND oc.CodiOrco IN ('"
  loc_A7E793: LitI4 0
  loc_A7E798: LitI4 -1
  loc_A7E79D: LitI4 1
  loc_A7E7A2: LitStr "','"
  loc_A7E7A5: LitStr ","
  loc_A7E7A8: ILdRf var_8C
  loc_A7E7AB: ImpAdCallI2 Replace(, , , , , )
  loc_A7E7B0: FStStrNoPop var_98
  loc_A7E7B3: ConcatStr
  loc_A7E7B4: FStStrNoPop var_A8
  loc_A7E7B7: LitStr "')"
  loc_A7E7BA: ConcatStr
  loc_A7E7BB: FStStrNoPop var_AC
  loc_A7E7BE: FLdPr Me
  loc_A7E7C1: MemStStrCopy
  loc_A7E7C5: FFreeStr var_8C = "": var_98 = "": var_A8 = ""
  loc_A7E7D0: FFree1Ad var_88
  loc_A7E7D3: Branch loc_A7E844
  loc_A7E7D6: FLdRfVar var_8C
  loc_A7E7D9: FLdPr Me
  loc_A7E7DC: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E7DF: FStAdFunc var_88
  loc_A7E7E2: FLdPr var_88
  loc_A7E7E5:  = Me.Text
  loc_A7E7EA: FLdZeroAd var_8C
  loc_A7E7ED: CVarStr var_D4
  loc_A7E7F0: ImpAdCallI2 IsNumeric()
  loc_A7E7F5: NotI4
  loc_A7E7F6: FFree1Ad var_88
  loc_A7E7F9: FFree1Var var_D4 = ""
  loc_A7E7FC: BranchF loc_A7E80C
  loc_A7E7FF: LitStr "no es un número..."
  loc_A7E802: FLdPr Me
  loc_A7E805: MemStStrCopy
  loc_A7E809: Branch loc_A7E844
  loc_A7E80C: LitStr " AND oc.Codiorco = '"
  loc_A7E80F: FLdRfVar var_8C
  loc_A7E812: FLdPr Me
  loc_A7E815: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E818: FStAdFunc var_88
  loc_A7E81B: FLdPr var_88
  loc_A7E81E:  = Me.Text
  loc_A7E823: ILdRf var_8C
  loc_A7E826: ConcatStr
  loc_A7E827: FStStrNoPop var_98
  loc_A7E82A: LitStr "'"
  loc_A7E82D: ConcatStr
  loc_A7E82E: FStStrNoPop var_A8
  loc_A7E831: FLdPr Me
  loc_A7E834: MemStStrCopy
  loc_A7E838: FFreeStr var_8C = "": var_98 = ""
  loc_A7E841: FFree1Ad var_88
  loc_A7E844: FLdPr Me
  loc_A7E847: VCallAd Control_ID_CodiOrcoTxt
  loc_A7E84A: FStAdFunc var_A4
  loc_A7E84D: LitNothing
  loc_A7E84F: CastAd
  loc_A7E852: FStAdFunc var_A0
  loc_A7E855: FLdRfVar var_A0
  loc_A7E858: FLdZeroAd var_A4
  loc_A7E85B: FStAdFuncNoPop
  loc_A7E85E: CastAd
  loc_A7E861: FStAdFunc var_9C
  loc_A7E864: FLdRfVar var_9C
  loc_A7E867: FLdPr Me
  loc_A7E86A: MemLdRfVar from_stack_1.global_108
  loc_A7E86D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7E872: IStI2 Cancel
  loc_A7E875: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7E880: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95F024
  'Data Table: 4F7D24
  loc_95F00C: LitI2_Byte 0
  loc_95F00E: ILdRf Me
  loc_95F011: CastAd
  loc_95F014: FStAdFunc var_88
  loc_95F017: FLdRfVar var_88
  loc_95F01A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_95F01F: FFree1Ad var_88
  loc_95F022: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A31B98
  'Data Table: 4F7D24
  loc_A31994: LitI2_Byte 0
  loc_A31996: FLdPr Me
  loc_A31999: MemStI2 bGenerado
  loc_A3199C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A319A1: ImpAdLdI2 MemVar_C3D064
  loc_A319A4: CStrUI1
  loc_A319A6: FStStrNoPop var_88
  loc_A319A9: FLdPr Me
  loc_A319AC: VCallAd Control_ID_cboPeriodo
  loc_A319AF: FStAdFunc var_8C
  loc_A319B2: FLdPr var_8C
  loc_A319B5: Me.Text = from_stack_1
  loc_A319BA: FFree1Str var_88
  loc_A319BD: FFree1Ad var_8C
  loc_A319C0: LitStr vbNullString
  loc_A319C3: FLdPr Me
  loc_A319C6: VCallAd Control_ID_cboTipoCompra
  loc_A319C9: FStAdFunc var_8C
  loc_A319CC: FLdPr var_8C
  loc_A319CF: Me.Text = from_stack_1
  loc_A319D4: FFree1Ad var_8C
  loc_A319D7: LitStr vbNullString
  loc_A319DA: FLdPr Me
  loc_A319DD: VCallAd Control_ID_cboExpeImpu
  loc_A319E0: FStAdFunc var_8C
  loc_A319E3: FLdPr var_8C
  loc_A319E6: Me.Text = from_stack_1
  loc_A319EB: FFree1Ad var_8C
  loc_A319EE: LitI4 1
  loc_A319F3: CI2I4
  loc_A319F4: FLdPr Me
  loc_A319F7: VCallAd Control_ID_chkHojasSeparadas
  loc_A319FA: FStAdFunc var_8C
  loc_A319FD: FLdPr var_8C
  loc_A31A00: Me.Value = from_stack_1
  loc_A31A05: FFree1Ad var_8C
  loc_A31A08: LitI4 0
  loc_A31A0D: CI2I4
  loc_A31A0E: FLdPr Me
  loc_A31A11: VCallAd Control_ID_chkSoloEncabezados
  loc_A31A14: FStAdFunc var_8C
  loc_A31A17: FLdPr var_8C
  loc_A31A1A: Me.Value = from_stack_1
  loc_A31A1F: FFree1Ad var_8C
  loc_A31A22: LitI4 0
  loc_A31A27: CI2I4
  loc_A31A28: FLdPr Me
  loc_A31A2B: VCallAd Control_ID_chkSoloAnuladas
  loc_A31A2E: FStAdFunc var_8C
  loc_A31A31: FLdPr var_8C
  loc_A31A34: Me.Value = from_stack_1
  loc_A31A39: FFree1Ad var_8C
  loc_A31A3C: LitI2_Byte &HFF
  loc_A31A3E: FLdPr Me
  loc_A31A41: VCallAd Control_ID_optMostrarTodas
  loc_A31A44: FStAdFunc var_8C
  loc_A31A47: FLdPr var_8C
  loc_A31A4A: Me.Value = from_stack_1b
  loc_A31A4F: FFree1Ad var_8C
  loc_A31A52: LitI2_Byte 0
  loc_A31A54: FLdPr Me
  loc_A31A57: VCallAd Control_ID_optMostrarSinDef
  loc_A31A5A: FStAdFunc var_8C
  loc_A31A5D: FLdPr var_8C
  loc_A31A60: Me.Value = from_stack_1b
  loc_A31A65: FFree1Ad var_8C
  loc_A31A68: LitI2_Byte 0
  loc_A31A6A: FLdPr Me
  loc_A31A6D: VCallAd Control_ID_optMostrarConDef
  loc_A31A70: FStAdFunc var_8C
  loc_A31A73: FLdPr var_8C
  loc_A31A76: Me.Value = from_stack_1b
  loc_A31A7B: FFree1Ad var_8C
  loc_A31A7E: LitVarStr var_9C, vbNullString
  loc_A31A83: PopAdLdVar
  loc_A31A84: FLdPr Me
  loc_A31A87: VCallAd Control_ID_CucuPersMsk
  loc_A31A8A: FStAdFunc var_8C
  loc_A31A8D: FLdPr var_8C
  loc_A31A90: LateIdSt
  loc_A31A95: FFree1Ad var_8C
  loc_A31A98: LitStr vbNullString
  loc_A31A9B: FLdPr Me
  loc_A31A9E: VCallAd Control_ID_DetaProvLbl
  loc_A31AA1: FStAdFunc var_8C
  loc_A31AA4: FLdPr var_8C
  loc_A31AA7: Me.Caption = from_stack_1
  loc_A31AAC: FFree1Ad var_8C
  loc_A31AAF: LitVarStr var_9C, vbNullString
  loc_A31AB4: PopAdLdVar
  loc_A31AB5: FLdPr Me
  loc_A31AB8: VCallAd Control_ID_CodiNopeMsk
  loc_A31ABB: FStAdFunc var_8C
  loc_A31ABE: FLdPr var_8C
  loc_A31AC1: LateIdSt
  loc_A31AC6: FFree1Ad var_8C
  loc_A31AC9: LitI2_Byte 1
  loc_A31ACB: LitI2_Byte 1
  loc_A31ACD: ImpAdLdI2 MemVar_C3D064
  loc_A31AD0: FLdRfVar var_BC
  loc_A31AD3: ImpAdCallFPR4  = DateSerial(, , )
  loc_A31AD8: FLdRfVar var_BC
  loc_A31ADB: CStrVarTmp
  loc_A31ADC: CVarStr var_CC
  loc_A31ADF: PopAdLdVar
  loc_A31AE0: FLdPr Me
  loc_A31AE3: VCallAd Control_ID_MskDesde
  loc_A31AE6: FStAdFunc var_8C
  loc_A31AE9: FLdPr var_8C
  loc_A31AEC: LateIdSt
  loc_A31AF1: FFree1Ad var_8C
  loc_A31AF4: FFreeVar var_BC = ""
  loc_A31AFB: ImpAdLdFPR8 MemVar_C3D04C
  loc_A31AFE: CStrDate
  loc_A31B00: CVarStr var_BC
  loc_A31B03: PopAdLdVar
  loc_A31B04: FLdPr Me
  loc_A31B07: VCallAd Control_ID_MskHasta
  loc_A31B0A: FStAdFunc var_8C
  loc_A31B0D: FLdPr var_8C
  loc_A31B10: LateIdSt
  loc_A31B15: FFree1Ad var_8C
  loc_A31B18: FFree1Var var_BC = ""
  loc_A31B1B: LitI2_Byte 0
  loc_A31B1D: FLdPr Me
  loc_A31B20: VCallAd Control_ID_cboJuri
  loc_A31B23: FStAdFunc var_8C
  loc_A31B26: FLdPr var_8C
  loc_A31B29: Me.ListIndex = from_stack_1
  loc_A31B2E: FFree1Ad var_8C
  loc_A31B31: LitVarStr var_9C, vbNullString
  loc_A31B36: PopAdLdVar
  loc_A31B37: FLdPr Me
  loc_A31B3A: VCallAd Control_ID_CodiPartMsk
  loc_A31B3D: FStAdFunc var_8C
  loc_A31B40: FLdPr var_8C
  loc_A31B43: LateIdSt
  loc_A31B48: FFree1Ad var_8C
  loc_A31B4B: LitStr vbNullString
  loc_A31B4E: FLdPr Me
  loc_A31B51: VCallAd Control_ID_CodiPartLbl
  loc_A31B54: FStAdFunc var_8C
  loc_A31B57: FLdPr var_8C
  loc_A31B5A: Me.Caption = from_stack_1
  loc_A31B5F: FFree1Ad var_8C
  loc_A31B62: LitVarStr var_9C, vbNullString
  loc_A31B67: PopAdLdVar
  loc_A31B68: FLdPr Me
  loc_A31B6B: VCallAd Control_ID_CodiOrgaMsk
  loc_A31B6E: FStAdFunc var_8C
  loc_A31B71: FLdPr var_8C
  loc_A31B74: LateIdSt
  loc_A31B79: FFree1Ad var_8C
  loc_A31B7C: Call HabilitarCriterio()
  loc_A31B81: ILdRf Me
  loc_A31B84: CastAd
  loc_A31B87: FStAdFunc var_8C
  loc_A31B8A: FLdRfVar var_8C
  loc_A31B8D: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A31B92: FFree1Ad var_8C
  loc_A31B95: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9F9AB4
  'Data Table: 4F7D24
  loc_9F9978: LitI2_Byte &HFF
  loc_9F997A: ImpAdLdRf MemVar_C3D74C
  loc_9F997D: NewIfNullPr bscProveedor
  loc_9F9980: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9F9985: LitNothing
  loc_9F9987: CastAd
  loc_9F998A: FStAdFuncNoPop
  loc_9F998D: ImpAdLdRf MemVar_C3D74C
  loc_9F9990: NewIfNullPr bscProveedor
  loc_9F9993: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9F9998: FFree1Ad var_88
  loc_9F999B: LitVar_Missing var_A8
  loc_9F999E: PopAdLdVar
  loc_9F999F: LitVarI4
  loc_9F99A7: PopAdLdVar
  loc_9F99A8: ImpAdLdRf MemVar_C3D74C
  loc_9F99AB: NewIfNullPr bscProveedor
  loc_9F99AE: bscProveedor.Show from_stack_1, from_stack_2
  loc_9F99B3: FLdRfVar var_AC
  loc_9F99B6: FLdRfVar var_88
  loc_9F99B9: ImpAdLdRf MemVar_C3D74C
  loc_9F99BC: NewIfNullPr bscProveedor
  loc_9F99BF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F99C4: FLdPr var_88
  loc_9F99C7: from_stack_1 = clsbase.RecordCount
  loc_9F99CC: ILdRf var_AC
  loc_9F99CF: LitI4 0
  loc_9F99D4: GtI4
  loc_9F99D5: FFree1Ad var_88
  loc_9F99D8: BranchF loc_9F9AB3
  loc_9F99DB: FLdRfVar var_C8
  loc_9F99DE: FLdRfVar var_B8
  loc_9F99E1: LitVarStr var_98, "CucuPers"
  loc_9F99E6: PopAdLdVar
  loc_9F99E7: FLdRfVar var_B4
  loc_9F99EA: FLdRfVar var_B0
  loc_9F99ED: FLdRfVar var_88
  loc_9F99F0: ImpAdLdRf MemVar_C3D74C
  loc_9F99F3: NewIfNullPr bscProveedor
  loc_9F99F6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F99FB: FLdPr var_88
  loc_9F99FE: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9A03: FLdPr var_B0
  loc_9F9A06:  = Me.Fields
  loc_9F9A0B: FLdPr var_B4
  loc_9F9A0E: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9A13: FLdPr var_B8
  loc_9F9A16:  = Me.Value
  loc_9F9A1B: FLdRfVar var_C8
  loc_9F9A1E: CStrVarTmp
  loc_9F9A1F: CVarStr var_D8
  loc_9F9A22: PopAdLdVar
  loc_9F9A23: FLdPr Me
  loc_9F9A26: VCallAd Control_ID_CucuPersMsk
  loc_9F9A29: FStAdFunc var_DC
  loc_9F9A2C: FLdPr var_DC
  loc_9F9A2F: LateIdSt
  loc_9F9A34: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9A41: FFreeVar var_C8 = ""
  loc_9F9A48: FLdRfVar var_C8
  loc_9F9A4B: FLdRfVar var_B8
  loc_9F9A4E: LitVarStr var_98, "DetaProv"
  loc_9F9A53: PopAdLdVar
  loc_9F9A54: FLdRfVar var_B4
  loc_9F9A57: FLdRfVar var_B0
  loc_9F9A5A: FLdRfVar var_88
  loc_9F9A5D: ImpAdLdRf MemVar_C3D74C
  loc_9F9A60: NewIfNullPr bscProveedor
  loc_9F9A63: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9F9A68: FLdPr var_88
  loc_9F9A6B: from_stack_1v = clsbase.RsFrmGet()
  loc_9F9A70: FLdPr var_B0
  loc_9F9A73:  = Me.Fields
  loc_9F9A78: FLdPr var_B4
  loc_9F9A7B: from_stack_2 = Me.Item(from_stack_1)
  loc_9F9A80: FLdPr var_B8
  loc_9F9A83:  = Me.Value
  loc_9F9A88: FLdRfVar var_C8
  loc_9F9A8B: CStrVarTmp
  loc_9F9A8C: FStStrNoPop var_E0
  loc_9F9A8F: FLdPr Me
  loc_9F9A92: VCallAd Control_ID_DetaProvLbl
  loc_9F9A95: FStAdFunc var_DC
  loc_9F9A98: FLdPr var_DC
  loc_9F9A9B: Me.Caption = from_stack_1
  loc_9F9AA0: FFree1Str var_E0
  loc_9F9AA3: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F9AB0: FFree1Var var_C8 = ""
  loc_9F9AB3: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '989CBC
  'Data Table: 4F7D24
  loc_989C84: FLdPr Me
  loc_989C87: VCallAd Control_ID_statusBar
  loc_989C8A: FStAdFunc var_88
  loc_989C8D: FLdPr var_88
  loc_989C90: LateIdLdVar var_98 DispID_1 0
  loc_989C97: CStrVarTmp
  loc_989C98: CVarStr var_A8
  loc_989C9B: PopAdLdVar
  loc_989C9C: FLdPr Me
  loc_989C9F: VCallAd Control_ID_statusBar
  loc_989CA2: FStAdFunc var_BC
  loc_989CA5: FLdPr var_BC
  loc_989CA8: LateIdSt
  loc_989CAD: FFreeAd var_88 = ""
  loc_989CB4: FFreeVar var_98 = ""
  loc_989CBB: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95F0BC
  'Data Table: 4F7D24
  loc_95F0A4: ILdRf Me
  loc_95F0A7: CastAd
  loc_95F0AA: FStAdFunc var_88
  loc_95F0AD: FLdRfVar var_88
  loc_95F0B0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95F0B5: FFree1Ad var_88
  loc_95F0B8: ExitProcHresult
End Sub

Private Sub FechOrcoDesdeCmd_Click() '97F008
  'Data Table: 4F7D24
  loc_97EFD4: LitVar_Missing var_A4
  loc_97EFD7: PopAdLdVar
  loc_97EFD8: LitVarI4
  loc_97EFE0: PopAdLdVar
  loc_97EFE1: ImpAdLdRf MemVar_C3D9A8
  loc_97EFE4: NewIfNullPr frmCalendario
  loc_97EFE7: frmCalendario.Show from_stack_1, from_stack_2
  loc_97EFEC: ImpAdLdRf MemVar_C3D038
  loc_97EFEF: CDargRef
  loc_97EFF3: FLdPr Me
  loc_97EFF6: VCallAd Control_ID_MskDesde
  loc_97EFF9: FStAdFunc var_A8
  loc_97EFFC: FLdPr var_A8
  loc_97EFFF: LateIdSt
  loc_97F004: FFree1Ad var_A8
  loc_97F007: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '94B090
  'Data Table: 4F7D24
  loc_94B07C: FLdPr Me
  loc_94B07F: VCallAd Control_ID_CodiOrgaMsk
  loc_94B082: CVarAd
  loc_94B086: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B08B: FFree1Var var_94 = ""
  loc_94B08E: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'A0B204
  'Data Table: 4F7D24
  loc_A0B0B8: LitStr "SELECT DetaOrga FROM infogov.organigrama WHERE PeriInfo = "
  loc_A0B0BB: FLdRfVar var_90
  loc_A0B0BE: FLdPr Me
  loc_A0B0C1: VCallAd Control_ID_cboPeriodo
  loc_A0B0C4: FStAdFunc var_8C
  loc_A0B0C7: FLdPr var_8C
  loc_A0B0CA:  = Me.Text
  loc_A0B0CF: ILdRf var_90
  loc_A0B0D2: ConcatStr
  loc_A0B0D3: FStStrNoPop var_94
  loc_A0B0D6: LitStr " AND CodiOrga LIKE '"
  loc_A0B0D9: ConcatStr
  loc_A0B0DA: FStStrNoPop var_AC
  loc_A0B0DD: FLdPr Me
  loc_A0B0E0: VCallAd Control_ID_CodiOrgaMsk
  loc_A0B0E3: FStAdFunc var_98
  loc_A0B0E6: FLdPr var_98
  loc_A0B0E9: LateIdLdVar var_A8 DispID_22 0
  loc_A0B0F0: CStrVarTmp
  loc_A0B0F1: FStStrNoPop var_B0
  loc_A0B0F4: ConcatStr
  loc_A0B0F5: FStStrNoPop var_B4
  loc_A0B0F8: LitStr Chr(37) & "'"
  loc_A0B0FB: ConcatStr
  loc_A0B0FC: FStStrNoPop var_B8
  loc_A0B0FF: FLdRfVar var_88
  loc_A0B102: NewIfNullPr clsorganigrama
  loc_A0B105: Call clsorganigrama.RedefineRS(from_stack_1v)
  loc_A0B10A: FFreeStr var_90 = "": var_94 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_A0B119: FFreeAd var_8C = ""
  loc_A0B120: FFree1Var var_A8 = ""
  loc_A0B123: FLdRfVar var_BC
  loc_A0B126: FLdRfVar var_88
  loc_A0B129: NewIfNullPr clsorganigrama
  loc_A0B12C: from_stack_1 = clsorganigrama.RecordCount
  loc_A0B131: ILdRf var_BC
  loc_A0B134: FStR4 var_C0
  loc_A0B137: ILdRf var_C0
  loc_A0B13A: LitI4 0
  loc_A0B13F: EqI4
  loc_A0B140: BranchF loc_A0B15D
  loc_A0B143: LitStr "0 registros encontrados"
  loc_A0B146: FLdPr Me
  loc_A0B149: VCallAd Control_ID_CodiOrgaLbl
  loc_A0B14C: FStAdFunc var_8C
  loc_A0B14F: FLdPr var_8C
  loc_A0B152: Me.Caption = from_stack_1
  loc_A0B157: FFree1Ad var_8C
  loc_A0B15A: Branch loc_A0B202
  loc_A0B15D: ILdRf var_C0
  loc_A0B160: LitI4 1
  loc_A0B165: EqI4
  loc_A0B166: BranchF loc_A0B1CA
  loc_A0B169: FLdRfVar var_A8
  loc_A0B16C: FLdRfVar var_D4
  loc_A0B16F: LitVarStr var_D0, "DetaOrga"
  loc_A0B174: PopAdLdVar
  loc_A0B175: FLdRfVar var_98
  loc_A0B178: FLdRfVar var_8C
  loc_A0B17B: FLdRfVar var_88
  loc_A0B17E: NewIfNullPr clsorganigrama
  loc_A0B181: from_stack_1v = clsorganigrama.RsFrmGet()
  loc_A0B186: FLdPr var_8C
  loc_A0B189:  = Me.Fields
  loc_A0B18E: FLdPr var_98
  loc_A0B191: from_stack_2 = Me.Item(from_stack_1)
  loc_A0B196: FLdPr var_D4
  loc_A0B199:  = Me.Value
  loc_A0B19E: FLdRfVar var_A8
  loc_A0B1A1: CStrVarTmp
  loc_A0B1A2: FStStrNoPop var_90
  loc_A0B1A5: FLdPr Me
  loc_A0B1A8: VCallAd Control_ID_CodiOrgaLbl
  loc_A0B1AB: FStAdFunc var_D8
  loc_A0B1AE: FLdPr var_D8
  loc_A0B1B1: Me.Caption = from_stack_1
  loc_A0B1B6: FFree1Str var_90
  loc_A0B1B9: FFreeAd var_8C = "": var_98 = "": var_D4 = ""
  loc_A0B1C4: FFree1Var var_A8 = ""
  loc_A0B1C7: Branch loc_A0B202
  loc_A0B1CA: FLdRfVar var_BC
  loc_A0B1CD: FLdRfVar var_88
  loc_A0B1D0: NewIfNullPr clsorganigrama
  loc_A0B1D3: from_stack_1 = clsorganigrama.RecordCount
  loc_A0B1D8: ILdRf var_BC
  loc_A0B1DB: CStrI4
  loc_A0B1DD: FStStrNoPop var_90
  loc_A0B1E0: LitStr " organigramas encontrados"
  loc_A0B1E3: ConcatStr
  loc_A0B1E4: FStStrNoPop var_94
  loc_A0B1E7: FLdPr Me
  loc_A0B1EA: VCallAd Control_ID_CodiOrgaLbl
  loc_A0B1ED: FStAdFunc var_8C
  loc_A0B1F0: FLdPr var_8C
  loc_A0B1F3: Me.Caption = from_stack_1
  loc_A0B1F8: FFreeStr var_90 = ""
  loc_A0B1FF: FFree1Ad var_8C
  loc_A0B202: ExitProcHresult
End Sub

Private Sub FechOrcoHastaCmd_Click() '97F070
  'Data Table: 4F7D24
  loc_97F03C: LitVar_Missing var_A4
  loc_97F03F: PopAdLdVar
  loc_97F040: LitVarI4
  loc_97F048: PopAdLdVar
  loc_97F049: ImpAdLdRf MemVar_C3D9A8
  loc_97F04C: NewIfNullPr frmCalendario
  loc_97F04F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97F054: ImpAdLdRf MemVar_C3D038
  loc_97F057: CDargRef
  loc_97F05B: FLdPr Me
  loc_97F05E: VCallAd Control_ID_MskHasta
  loc_97F061: FStAdFunc var_A8
  loc_97F064: FLdPr var_A8
  loc_97F067: LateIdSt
  loc_97F06C: FFree1Ad var_A8
  loc_97F06F: ExitProcHresult
End Sub

Private Sub cboExpeImpu_KeyPress(KeyAscii As Integer) '975394
  'Data Table: 4F7D24
  loc_97536C: FLdPr Me
  loc_97536F: VCallAd Control_ID_cboExpeImpu
  loc_975372: FStAdFunc var_8C
  loc_975375: ILdI2 KeyAscii
  loc_975378: FLdZeroAd var_8C
  loc_97537B: FStAdFunc var_88
  loc_97537E: FLdRfVar var_88
  loc_975381: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975386: IStI2 KeyAscii
  loc_975389: FFreeAd var_88 = ""
  loc_975390: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97B16C
  'Data Table: 4F7D24
  loc_97B13C: LitVarStr var_94, "Cerrando..."
  loc_97B141: PopAdLdVar
  loc_97B142: FLdPr Me
  loc_97B145: VCallAd Control_ID_statusBar
  loc_97B148: FStAdFunc var_A8
  loc_97B14B: FLdPr var_A8
  loc_97B14E: LateIdSt
  loc_97B153: FFree1Ad var_A8
  loc_97B156: ILdRf Me
  loc_97B159: FStAdNoPop
  loc_97B15D: ImpAdLdRf MemVar_C44F9C
  loc_97B160: NewIfNullPr Me
  loc_97B163: Me.Global.Unload from_stack_1
  loc_97B168: FFree1Ad var_A8
  loc_97B16B: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '94A9D0
  'Data Table: 4F7D24
  loc_94A9BC: FLdPr Me
  loc_94A9BF: VCallAd Control_ID_CodiPartMsk
  loc_94A9C2: CVarAd
  loc_94A9C6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A9CB: FFree1Var var_94 = ""
  loc_94A9CE: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'A158CC
  'Data Table: 4F7D24
  loc_A1576C: LitStr "SELECT DetaPart"
  loc_A1576F: LitStr " FROM partida"
  loc_A15772: ConcatStr
  loc_A15773: FStStrNoPop var_8C
  loc_A15776: LitStr " WHERE PeriInfo = "
  loc_A15779: ConcatStr
  loc_A1577A: FStStrNoPop var_98
  loc_A1577D: FLdRfVar var_94
  loc_A15780: FLdPr Me
  loc_A15783: VCallAd Control_ID_cboPeriodo
  loc_A15786: FStAdFunc var_90
  loc_A15789: FLdPr var_90
  loc_A1578C:  = Me.Text
  loc_A15791: ILdRf var_94
  loc_A15794: ConcatStr
  loc_A15795: FStStrNoPop var_9C
  loc_A15798: LitStr " AND CodiPart LIKE '"
  loc_A1579B: ConcatStr
  loc_A1579C: FStStrNoPop var_B4
  loc_A1579F: FLdPr Me
  loc_A157A2: VCallAd Control_ID_CodiPartMsk
  loc_A157A5: FStAdFunc var_A0
  loc_A157A8: FLdPr var_A0
  loc_A157AB: LateIdLdVar var_B0 DispID_22 0
  loc_A157B2: CStrVarTmp
  loc_A157B3: FStStrNoPop var_B8
  loc_A157B6: ConcatStr
  loc_A157B7: FStStrNoPop var_BC
  loc_A157BA: LitStr Chr(37) & "'"
  loc_A157BD: ConcatStr
  loc_A157BE: FStStrNoPop var_C0
  loc_A157C1: FLdRfVar var_88
  loc_A157C4: NewIfNullPr clspartida
  loc_A157C7: Call clspartida.RedefineRS(from_stack_1v)
  loc_A157CC: FFreeStr var_8C = "": var_98 = "": var_94 = "": var_9C = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_A157DF: FFreeAd var_90 = ""
  loc_A157E6: FFree1Var var_B0 = ""
  loc_A157E9: FLdRfVar var_C4
  loc_A157EC: FLdRfVar var_88
  loc_A157EF: NewIfNullPr clspartida
  loc_A157F2: from_stack_1 = clspartida.RecordCount
  loc_A157F7: ILdRf var_C4
  loc_A157FA: FStR4 var_C8
  loc_A157FD: ILdRf var_C8
  loc_A15800: LitI4 0
  loc_A15805: EqI4
  loc_A15806: BranchF loc_A15823
  loc_A15809: LitStr "0 registros encontrados"
  loc_A1580C: FLdPr Me
  loc_A1580F: VCallAd Control_ID_CodiPartLbl
  loc_A15812: FStAdFunc var_90
  loc_A15815: FLdPr var_90
  loc_A15818: Me.Caption = from_stack_1
  loc_A1581D: FFree1Ad var_90
  loc_A15820: Branch loc_A158C8
  loc_A15823: ILdRf var_C8
  loc_A15826: LitI4 1
  loc_A1582B: EqI4
  loc_A1582C: BranchF loc_A15890
  loc_A1582F: FLdRfVar var_B0
  loc_A15832: FLdRfVar var_DC
  loc_A15835: LitVarStr var_D8, "DetaPart"
  loc_A1583A: PopAdLdVar
  loc_A1583B: FLdRfVar var_A0
  loc_A1583E: FLdRfVar var_90
  loc_A15841: FLdRfVar var_88
  loc_A15844: NewIfNullPr clspartida
  loc_A15847: from_stack_1v = clspartida.RsFrmGet()
  loc_A1584C: FLdPr var_90
  loc_A1584F:  = Me.Fields
  loc_A15854: FLdPr var_A0
  loc_A15857: from_stack_2 = Me.Item(from_stack_1)
  loc_A1585C: FLdPr var_DC
  loc_A1585F:  = Me.Value
  loc_A15864: FLdRfVar var_B0
  loc_A15867: CStrVarTmp
  loc_A15868: FStStrNoPop var_8C
  loc_A1586B: FLdPr Me
  loc_A1586E: VCallAd Control_ID_CodiPartLbl
  loc_A15871: FStAdFunc var_E0
  loc_A15874: FLdPr var_E0
  loc_A15877: Me.Caption = from_stack_1
  loc_A1587C: FFree1Str var_8C
  loc_A1587F: FFreeAd var_90 = "": var_A0 = "": var_DC = ""
  loc_A1588A: FFree1Var var_B0 = ""
  loc_A1588D: Branch loc_A158C8
  loc_A15890: FLdRfVar var_C4
  loc_A15893: FLdRfVar var_88
  loc_A15896: NewIfNullPr clspartida
  loc_A15899: from_stack_1 = clspartida.RecordCount
  loc_A1589E: ILdRf var_C4
  loc_A158A1: CStrI4
  loc_A158A3: FStStrNoPop var_8C
  loc_A158A6: LitStr " partidas encontradas"
  loc_A158A9: ConcatStr
  loc_A158AA: FStStrNoPop var_94
  loc_A158AD: FLdPr Me
  loc_A158B0: VCallAd Control_ID_CodiPartLbl
  loc_A158B3: FStAdFunc var_90
  loc_A158B6: FLdPr var_90
  loc_A158B9: Me.Caption = from_stack_1
  loc_A158BE: FFreeStr var_8C = ""
  loc_A158C5: FFree1Ad var_90
  loc_A158C8: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '95F1A0
  'Data Table: 4F7D24
  loc_95F188: ILdRf Me
  loc_95F18B: CastAd
  loc_95F18E: FStAdFunc var_88
  loc_95F191: FLdRfVar var_88
  loc_95F194: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_95F199: FFree1Ad var_88
  loc_95F19C: ExitProcHresult
End Sub

Private Sub cboTipoCompra_KeyPress(KeyAscii As Integer) '975334
  'Data Table: 4F7D24
  loc_97530C: FLdPr Me
  loc_97530F: VCallAd Control_ID_cboTipoCompra
  loc_975312: FStAdFunc var_8C
  loc_975315: ILdI2 KeyAscii
  loc_975318: FLdZeroAd var_8C
  loc_97531B: FStAdFunc var_88
  loc_97531E: FLdRfVar var_88
  loc_975321: ImpAdCallI2 Proc_265_8_A56F7C(, )
  loc_975326: IStI2 KeyAscii
  loc_975329: FFreeAd var_88 = ""
  loc_975330: ExitProcHresult
  loc_975331: LitI2_Byte 0
End Sub

Private Sub cboPeriodo_Click() 'ADAFC8
  'Data Table: 4F7D24
  loc_ADA95C: FLdRfVar var_8C
  loc_ADA95F: FLdPr Me
  loc_ADA962: VCallAd Control_ID_cboPeriodo
  loc_ADA965: FStAdFunc var_88
  loc_ADA968: FLdPr var_88
  loc_ADA96B:  = Me.Text
  loc_ADA970: LitI2_Byte 1
  loc_ADA972: LitI2_Byte 1
  loc_ADA974: ILdRf var_8C
  loc_ADA977: CI2Str
  loc_ADA979: FLdRfVar var_9C
  loc_ADA97C: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADA981: FLdRfVar var_9C
  loc_ADA984: CStrVarTmp
  loc_ADA985: CVarStr var_AC
  loc_ADA988: PopAdLdVar
  loc_ADA989: FLdPr Me
  loc_ADA98C: VCallAd Control_ID_MskDesde
  loc_ADA98F: FStAdFunc var_C0
  loc_ADA992: FLdPr var_C0
  loc_ADA995: LateIdSt
  loc_ADA99A: FFree1Str var_8C
  loc_ADA99D: FFreeAd var_88 = ""
  loc_ADA9A4: FFreeVar var_9C = ""
  loc_ADA9AB: ImpAdLdFPR8 MemVar_C3D04C
  loc_ADA9AE: CStrDate
  loc_ADA9B0: CVarStr var_9C
  loc_ADA9B3: PopAdLdVar
  loc_ADA9B4: FLdPr Me
  loc_ADA9B7: VCallAd Control_ID_MskHasta
  loc_ADA9BA: FStAdFunc var_88
  loc_ADA9BD: FLdPr var_88
  loc_ADA9C0: LateIdSt
  loc_ADA9C5: FFree1Ad var_88
  loc_ADA9C8: FFree1Var var_9C = ""
  loc_ADA9CB: FLdPr Me
  loc_ADA9CE: MemLdRfVar from_stack_1.global_80
  loc_ADA9D1: NewIfNullAd
  loc_ADA9D4: FStAd var_C4 
  loc_ADA9D8: LitStr "SELECT IFNULL(Max(CodiOrco),1) CodiOrco"
  loc_ADA9DB: LitStr " FROM ordencompra"
  loc_ADA9DE: ConcatStr
  loc_ADA9DF: FStStrNoPop var_8C
  loc_ADA9E2: LitStr " WHERE PeriInfo = "
  loc_ADA9E5: ConcatStr
  loc_ADA9E6: FStStrNoPop var_CC
  loc_ADA9E9: FLdRfVar var_C8
  loc_ADA9EC: FLdPr Me
  loc_ADA9EF: VCallAd Control_ID_cboPeriodo
  loc_ADA9F2: FStAdFunc var_88
  loc_ADA9F5: FLdPr var_88
  loc_ADA9F8:  = Me.Text
  loc_ADA9FD: ILdRf var_C8
  loc_ADAA00: ConcatStr
  loc_ADAA01: FStStrNoPop var_D0
  loc_ADAA04: LitStr " LIMIT 1;"
  loc_ADAA07: ConcatStr
  loc_ADAA08: FStStrNoPop var_D4
  loc_ADAA0B: FLdPr var_C4
  loc_ADAA0E: Call clsbase.RedefineRS(from_stack_1v)
  loc_ADAA13: FFreeStr var_8C = "": var_CC = "": var_C8 = "": var_D0 = ""
  loc_ADAA20: FFree1Ad var_88
  loc_ADAA23: LitStr vbNullString
  loc_ADAA26: FLdPr Me
  loc_ADAA29: VCallAd Control_ID_CodiOrcoTxt
  loc_ADAA2C: FStAdFunc var_88
  loc_ADAA2F: FLdPr var_88
  loc_ADAA32: Me.Text = from_stack_1
  loc_ADAA37: FFree1Ad var_88
  loc_ADAA3A: FLdRfVar var_D8
  loc_ADAA3D: FLdPr var_C4
  loc_ADAA40: from_stack_1 = clsbase.RecordCount
  loc_ADAA45: ILdRf var_D8
  loc_ADAA48: LitI4 0
  loc_ADAA4D: GtI4
  loc_ADAA4E: BranchF loc_ADAAAC
  loc_ADAA51: FLdRfVar var_9C
  loc_ADAA54: FLdRfVar var_DC
  loc_ADAA57: LitVarStr var_BC, "CodiOrco"
  loc_ADAA5C: PopAdLdVar
  loc_ADAA5D: FLdRfVar var_C0
  loc_ADAA60: FLdRfVar var_88
  loc_ADAA63: FLdPr var_C4
  loc_ADAA66: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAA6B: FLdPr var_88
  loc_ADAA6E:  = Me.Fields
  loc_ADAA73: FLdPr var_C0
  loc_ADAA76: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAA7B: FLdPr var_DC
  loc_ADAA7E:  = Me.Value
  loc_ADAA83: FLdRfVar var_9C
  loc_ADAA86: CStrVarTmp
  loc_ADAA87: FStStrNoPop var_8C
  loc_ADAA8A: FLdPr Me
  loc_ADAA8D: VCallAd Control_ID_CodiOrcoTxt
  loc_ADAA90: FStAdFunc var_E0
  loc_ADAA93: FLdPr var_E0
  loc_ADAA96: Me.Text = from_stack_1
  loc_ADAA9B: FFree1Str var_8C
  loc_ADAA9E: FFreeAd var_88 = "": var_C0 = "": var_DC = ""
  loc_ADAAA9: FFree1Var var_9C = ""
  loc_ADAAAC: FLdRfVar var_8C
  loc_ADAAAF: FLdPr Me
  loc_ADAAB2: VCallAd Control_ID_cboPeriodo
  loc_ADAAB5: FStAdFunc var_88
  loc_ADAAB8: FLdPr var_88
  loc_ADAABB:  = Me.Text
  loc_ADAAC0: LitI2_Byte 1
  loc_ADAAC2: LitI2_Byte 1
  loc_ADAAC4: ILdRf var_8C
  loc_ADAAC7: CI2Str
  loc_ADAAC9: FLdRfVar var_9C
  loc_ADAACC: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADAAD1: FLdRfVar var_9C
  loc_ADAAD4: CStrVarTmp
  loc_ADAAD5: CVarStr var_AC
  loc_ADAAD8: PopAdLdVar
  loc_ADAAD9: FLdPr Me
  loc_ADAADC: VCallAd Control_ID_MskDesde
  loc_ADAADF: FStAdFunc var_C0
  loc_ADAAE2: FLdPr var_C0
  loc_ADAAE5: LateIdSt
  loc_ADAAEA: FFree1Str var_8C
  loc_ADAAED: FFreeAd var_88 = ""
  loc_ADAAF4: FFreeVar var_9C = ""
  loc_ADAAFB: FLdRfVar var_8C
  loc_ADAAFE: FLdPr Me
  loc_ADAB01: VCallAd Control_ID_cboPeriodo
  loc_ADAB04: FStAdFunc var_88
  loc_ADAB07: FLdPr var_88
  loc_ADAB0A:  = Me.Text
  loc_ADAB0F: ILdRf var_8C
  loc_ADAB12: CI2Str
  loc_ADAB14: ImpAdLdI2 MemVar_C3D064
  loc_ADAB17: LtI2
  loc_ADAB18: FFree1Str var_8C
  loc_ADAB1B: FFree1Ad var_88
  loc_ADAB1E: BranchF loc_ADAB73
  loc_ADAB21: FLdRfVar var_8C
  loc_ADAB24: FLdPr Me
  loc_ADAB27: VCallAd Control_ID_cboPeriodo
  loc_ADAB2A: FStAdFunc var_88
  loc_ADAB2D: FLdPr var_88
  loc_ADAB30:  = Me.Text
  loc_ADAB35: LitI2_Byte &H1F
  loc_ADAB37: LitI2_Byte &HC
  loc_ADAB39: ILdRf var_8C
  loc_ADAB3C: CI2Str
  loc_ADAB3E: FLdRfVar var_9C
  loc_ADAB41: ImpAdCallFPR4  = DateSerial(, , )
  loc_ADAB46: FLdRfVar var_9C
  loc_ADAB49: CStrVarTmp
  loc_ADAB4A: CVarStr var_AC
  loc_ADAB4D: PopAdLdVar
  loc_ADAB4E: FLdPr Me
  loc_ADAB51: VCallAd Control_ID_MskHasta
  loc_ADAB54: FStAdFunc var_C0
  loc_ADAB57: FLdPr var_C0
  loc_ADAB5A: LateIdSt
  loc_ADAB5F: FFree1Str var_8C
  loc_ADAB62: FFreeAd var_88 = ""
  loc_ADAB69: FFreeVar var_9C = ""
  loc_ADAB70: Branch loc_ADAB93
  loc_ADAB73: ImpAdLdFPR8 MemVar_C3D04C
  loc_ADAB76: CStrDate
  loc_ADAB78: CVarStr var_9C
  loc_ADAB7B: PopAdLdVar
  loc_ADAB7C: FLdPr Me
  loc_ADAB7F: VCallAd Control_ID_MskHasta
  loc_ADAB82: FStAdFunc var_88
  loc_ADAB85: FLdPr var_88
  loc_ADAB88: LateIdSt
  loc_ADAB8D: FFree1Ad var_88
  loc_ADAB90: FFree1Var var_9C = ""
  loc_ADAB93: LitNothing
  loc_ADAB95: FStAd var_C4 
  loc_ADAB99: FLdPr Me
  loc_ADAB9C: VCallAd Control_ID_cboTipoCompra
  loc_ADAB9F: FStAdFunc var_88
  loc_ADABA2: FLdPr var_88
  loc_ADABA5: Me.Clear
  loc_ADABAA: FFree1Ad var_88
  loc_ADABAD: LitVar_Missing var_BC
  loc_ADABB0: PopAdLdVar
  loc_ADABB1: LitStr "Todos"
  loc_ADABB4: FLdPr Me
  loc_ADABB7: VCallAd Control_ID_cboTipoCompra
  loc_ADABBA: FStAdFunc var_88
  loc_ADABBD: FLdPr var_88
  loc_ADABC0: Me.AddItem from_stack_1, from_stack_2
  loc_ADABC5: FFree1Ad var_88
  loc_ADABC8: FLdPr Me
  loc_ADABCB: MemLdRfVar from_stack_1.global_88
  loc_ADABCE: NewIfNullAd
  loc_ADABD1: FStAd var_E4 
  loc_ADABD5: LitStr "SELECT CodiTico, DetaTico"
  loc_ADABD8: LitStr " FROM tipocompra"
  loc_ADABDB: ConcatStr
  loc_ADABDC: FStStrNoPop var_8C
  loc_ADABDF: LitStr " ORDER BY CodiTico;"
  loc_ADABE2: ConcatStr
  loc_ADABE3: FStStrNoPop var_C8
  loc_ADABE6: FLdPr var_E4
  loc_ADABE9: Call clsbase.RedefineRS(from_stack_1v)
  loc_ADABEE: FFreeStr var_8C = ""
  loc_ADABF5: FLdRfVar var_D8
  loc_ADABF8: FLdPr var_E4
  loc_ADABFB: from_stack_1 = clsbase.RecordCount
  loc_ADAC00: ILdRf var_D8
  loc_ADAC03: LitI4 0
  loc_ADAC08: GtI4
  loc_ADAC09: BranchF loc_ADACE0
  loc_ADAC0C: FLdPr var_E4
  loc_ADAC0F: Call clsbase.MoveFirst()
  loc_ADAC14: FLdRfVar var_E6
  loc_ADAC17: FLdPr var_E4
  loc_ADAC1A: from_stack_1 = clsbase.EOF
  loc_ADAC1F: FLdI2 var_E6
  loc_ADAC22: NotI4
  loc_ADAC23: BranchF loc_ADACE0
  loc_ADAC26: LitVar_Missing var_140
  loc_ADAC29: PopAdLdVar
  loc_ADAC2A: FLdRfVar var_9C
  loc_ADAC2D: FLdRfVar var_DC
  loc_ADAC30: LitVarStr var_BC, "CodiTico"
  loc_ADAC35: PopAdLdVar
  loc_ADAC36: FLdRfVar var_C0
  loc_ADAC39: FLdRfVar var_88
  loc_ADAC3C: FLdPr var_E4
  loc_ADAC3F: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAC44: FLdPr var_88
  loc_ADAC47:  = Me.Fields
  loc_ADAC4C: FLdPr var_C0
  loc_ADAC4F: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAC54: FLdPr var_DC
  loc_ADAC57:  = Me.Value
  loc_ADAC5C: FLdRfVar var_9C
  loc_ADAC5F: LitVarStr var_F8, " - "
  loc_ADAC64: ConcatVar var_AC
  loc_ADAC68: FLdRfVar var_120
  loc_ADAC6B: FLdRfVar var_110
  loc_ADAC6E: LitVarStr var_10C, "DetaTico"
  loc_ADAC73: PopAdLdVar
  loc_ADAC74: FLdRfVar var_FC
  loc_ADAC77: FLdRfVar var_E0
  loc_ADAC7A: FLdPr var_E4
  loc_ADAC7D: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAC82: FLdPr var_E0
  loc_ADAC85:  = Me.Fields
  loc_ADAC8A: FLdPr var_FC
  loc_ADAC8D: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAC92: FLdPr var_110
  loc_ADAC95:  = Me.Value
  loc_ADAC9A: FLdRfVar var_120
  loc_ADAC9D: ConcatVar var_130
  loc_ADACA1: CStrVarVal var_8C
  loc_ADACA5: FLdPr Me
  loc_ADACA8: VCallAd Control_ID_cboTipoCompra
  loc_ADACAB: FStAdFunc var_144
  loc_ADACAE: FLdPr var_144
  loc_ADACB1: Me.AddItem from_stack_1, from_stack_2
  loc_ADACB6: FFree1Str var_8C
  loc_ADACB9: FFreeAd var_88 = "": var_C0 = "": var_DC = "": var_E0 = "": var_FC = "": var_110 = ""
  loc_ADACCA: FFreeVar var_9C = "": var_AC = "": var_120 = ""
  loc_ADACD5: FLdPr var_E4
  loc_ADACD8: Call clsbase.MoveSiguiente()
  loc_ADACDD: Branch loc_ADAC14
  loc_ADACE0: LitNothing
  loc_ADACE2: FStAd var_E4 
  loc_ADACE6: FLdPr Me
  loc_ADACE9: VCallAd Control_ID_cboExpeImpu
  loc_ADACEC: FStAdFunc var_88
  loc_ADACEF: FLdPr var_88
  loc_ADACF2: Me.Clear
  loc_ADACF7: FFree1Ad var_88
  loc_ADACFA: FLdPr Me
  loc_ADACFD: VCallAd Control_ID_cboJuri
  loc_ADAD00: FStAdFunc var_88
  loc_ADAD03: FLdPr var_88
  loc_ADAD06: Me.Clear
  loc_ADAD0B: FFree1Ad var_88
  loc_ADAD0E: FLdPr Me
  loc_ADAD11: MemLdRfVar from_stack_1.global_88
  loc_ADAD14: NewIfNullAd
  loc_ADAD17: FStAd var_148 
  loc_ADAD1B: LitStr "SELECT DISTINCT ExpeImpu"
  loc_ADAD1E: LitStr " FROM ordencompra"
  loc_ADAD21: ConcatStr
  loc_ADAD22: FStStrNoPop var_8C
  loc_ADAD25: LitStr " WHERE ordencompra.PeriInfo = "
  loc_ADAD28: ConcatStr
  loc_ADAD29: FStStrNoPop var_CC
  loc_ADAD2C: FLdRfVar var_C8
  loc_ADAD2F: FLdPr Me
  loc_ADAD32: VCallAd Control_ID_cboPeriodo
  loc_ADAD35: FStAdFunc var_88
  loc_ADAD38: FLdPr var_88
  loc_ADAD3B:  = Me.Text
  loc_ADAD40: ILdRf var_C8
  loc_ADAD43: ConcatStr
  loc_ADAD44: FStStrNoPop var_D0
  loc_ADAD47: LitStr " ORDER BY ExpeImpu;"
  loc_ADAD4A: ConcatStr
  loc_ADAD4B: FStStrNoPop var_D4
  loc_ADAD4E: FLdPr var_148
  loc_ADAD51: Call clsbase.RedefineRS(from_stack_1v)
  loc_ADAD56: FFreeStr var_8C = "": var_CC = "": var_C8 = "": var_D0 = ""
  loc_ADAD63: FFree1Ad var_88
  loc_ADAD66: FLdRfVar var_D8
  loc_ADAD69: FLdPr var_148
  loc_ADAD6C: from_stack_1 = clsbase.RecordCount
  loc_ADAD71: ILdRf var_D8
  loc_ADAD74: LitI4 0
  loc_ADAD79: GtI4
  loc_ADAD7A: BranchF loc_ADAE01
  loc_ADAD7D: FLdPr var_148
  loc_ADAD80: Call clsbase.MoveFirst()
  loc_ADAD85: FLdRfVar var_E6
  loc_ADAD88: FLdPr var_148
  loc_ADAD8B: from_stack_1 = clsbase.EOF
  loc_ADAD90: FLdI2 var_E6
  loc_ADAD93: NotI4
  loc_ADAD94: BranchF loc_ADAE01
  loc_ADAD97: LitVar_Missing var_F8
  loc_ADAD9A: PopAdLdVar
  loc_ADAD9B: FLdRfVar var_9C
  loc_ADAD9E: FLdRfVar var_DC
  loc_ADADA1: LitVarStr var_BC, "ExpeImpu"
  loc_ADADA6: PopAdLdVar
  loc_ADADA7: FLdRfVar var_C0
  loc_ADADAA: FLdRfVar var_88
  loc_ADADAD: FLdPr var_148
  loc_ADADB0: from_stack_1v = clsbase.RsFrmGet()
  loc_ADADB5: FLdPr var_88
  loc_ADADB8:  = Me.Fields
  loc_ADADBD: FLdPr var_C0
  loc_ADADC0: from_stack_2 = Me.Item(from_stack_1)
  loc_ADADC5: FLdPr var_DC
  loc_ADADC8:  = Me.Value
  loc_ADADCD: FLdRfVar var_9C
  loc_ADADD0: CStrVarTmp
  loc_ADADD1: FStStrNoPop var_8C
  loc_ADADD4: FLdPr Me
  loc_ADADD7: VCallAd Control_ID_cboExpeImpu
  loc_ADADDA: FStAdFunc var_E0
  loc_ADADDD: FLdPr var_E0
  loc_ADADE0: Me.AddItem from_stack_1, from_stack_2
  loc_ADADE5: FFree1Str var_8C
  loc_ADADE8: FFreeAd var_88 = "": var_C0 = "": var_DC = ""
  loc_ADADF3: FFree1Var var_9C = ""
  loc_ADADF6: FLdPr var_148
  loc_ADADF9: Call clsbase.MoveSiguiente()
  loc_ADADFE: Branch loc_ADAD85
  loc_ADAE01: LitStr "SELECT Concat(Left(CodiOrga,1),repeat('0',5)) CodiOrga"
  loc_ADAE04: LitStr " FROM infogov.organigrama"
  loc_ADAE07: ConcatStr
  loc_ADAE08: FStStrNoPop var_8C
  loc_ADAE0B: LitStr " WHERE PeriInfo = "
  loc_ADAE0E: ConcatStr
  loc_ADAE0F: FStStrNoPop var_CC
  loc_ADAE12: FLdRfVar var_C8
  loc_ADAE15: FLdPr Me
  loc_ADAE18: VCallAd Control_ID_cboPeriodo
  loc_ADAE1B: FStAdFunc var_88
  loc_ADAE1E: FLdPr var_88
  loc_ADAE21:  = Me.Text
  loc_ADAE26: ILdRf var_C8
  loc_ADAE29: ConcatStr
  loc_ADAE2A: FStStrNoPop var_D0
  loc_ADAE2D: LitStr " GROUP BY Left(CodiOrga,1)"
  loc_ADAE30: ConcatStr
  loc_ADAE31: FStStrNoPop var_D4
  loc_ADAE34: LitStr " ORDER BY CodiOrga;"
  loc_ADAE37: ConcatStr
  loc_ADAE38: FStStrNoPop var_14C
  loc_ADAE3B: FLdPr var_148
  loc_ADAE3E: Call clsbase.RedefineRS(from_stack_1v)
  loc_ADAE43: FFreeStr var_8C = "": var_CC = "": var_C8 = "": var_D0 = "": var_D4 = ""
  loc_ADAE52: FFree1Ad var_88
  loc_ADAE55: FLdRfVar var_D8
  loc_ADAE58: FLdPr var_148
  loc_ADAE5B: from_stack_1 = clsbase.RecordCount
  loc_ADAE60: ILdRf var_D8
  loc_ADAE63: LitI4 0
  loc_ADAE68: GtI4
  loc_ADAE69: BranchF loc_ADAFAC
  loc_ADAE6C: FLdPr var_148
  loc_ADAE6F: Call clsbase.MoveFirst()
  loc_ADAE74: LitVar_Missing var_BC
  loc_ADAE77: PopAdLdVar
  loc_ADAE78: LitStr "TODAS"
  loc_ADAE7B: FLdPr Me
  loc_ADAE7E: VCallAd Control_ID_cboJuri
  loc_ADAE81: FStAdFunc var_88
  loc_ADAE84: FLdPr var_88
  loc_ADAE87: Me.AddItem from_stack_1, from_stack_2
  loc_ADAE8C: FFree1Ad var_88
  loc_ADAE8F: FLdRfVar var_E6
  loc_ADAE92: FLdPr var_148
  loc_ADAE95: from_stack_1 = clsbase.EOF
  loc_ADAE9A: FLdI2 var_E6
  loc_ADAE9D: NotI4
  loc_ADAE9E: BranchF loc_ADAF96
  loc_ADAEA1: LitVar_Missing var_F8
  loc_ADAEA4: PopAdLdVar
  loc_ADAEA5: FLdRfVar var_9C
  loc_ADAEA8: FLdRfVar var_DC
  loc_ADAEAB: LitVarStr var_BC, "CodiOrga"
  loc_ADAEB0: PopAdLdVar
  loc_ADAEB1: FLdRfVar var_C0
  loc_ADAEB4: FLdRfVar var_88
  loc_ADAEB7: FLdPr var_148
  loc_ADAEBA: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAEBF: FLdPr var_88
  loc_ADAEC2:  = Me.Fields
  loc_ADAEC7: FLdPr var_C0
  loc_ADAECA: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAECF: FLdPr var_DC
  loc_ADAED2:  = Me.Value
  loc_ADAED7: FLdRfVar var_9C
  loc_ADAEDA: CStrVarTmp
  loc_ADAEDB: FStStrNoPop var_8C
  loc_ADAEDE: FLdPr Me
  loc_ADAEE1: VCallAd Control_ID_cboJuri
  loc_ADAEE4: FStAdFunc var_E0
  loc_ADAEE7: FLdPr var_E0
  loc_ADAEEA: Me.AddItem from_stack_1, from_stack_2
  loc_ADAEEF: FFree1Str var_8C
  loc_ADAEF2: FFreeAd var_88 = "": var_C0 = "": var_DC = ""
  loc_ADAEFD: FFree1Var var_9C = ""
  loc_ADAF00: FLdRfVar var_E6
  loc_ADAF03: FLdPr Me
  loc_ADAF06: VCallAd Control_ID_cboJuri
  loc_ADAF09: FStAdFunc var_E0
  loc_ADAF0C: FLdPr var_E0
  loc_ADAF0F:  = Me.NewIndex
  loc_ADAF14: FLdRfVar var_9C
  loc_ADAF17: FLdRfVar var_DC
  loc_ADAF1A: LitVarStr var_BC, "CodiOrga"
  loc_ADAF1F: PopAdLdVar
  loc_ADAF20: FLdRfVar var_C0
  loc_ADAF23: FLdRfVar var_88
  loc_ADAF26: FLdPr var_148
  loc_ADAF29: from_stack_1v = clsbase.RsFrmGet()
  loc_ADAF2E: FLdPr var_88
  loc_ADAF31:  = Me.Fields
  loc_ADAF36: FLdPr var_C0
  loc_ADAF39: from_stack_2 = Me.Item(from_stack_1)
  loc_ADAF3E: FLdPr var_DC
  loc_ADAF41:  = Me.Value
  loc_ADAF46: LitI4 1
  loc_ADAF4B: FLdRfVar var_9C
  loc_ADAF4E: CStrVarTmp
  loc_ADAF4F: FStStrNoPop var_8C
  loc_ADAF52: ImpAdCallI2 Left$(, )
  loc_ADAF57: FStStrNoPop var_C8
  loc_ADAF5A: CI4Str
  loc_ADAF5B: FLdI2 var_E6
  loc_ADAF5E: FLdPr Me
  loc_ADAF61: VCallAd Control_ID_cboJuri
  loc_ADAF64: FStAdFunc var_FC
  loc_ADAF67: FLdPr var_FC
  loc_ADAF6A: Me.ItemData = from_stack_1
  loc_ADAF6F: FFreeStr var_8C = ""
  loc_ADAF76: FFreeAd var_88 = "": var_C0 = "": var_DC = "": var_E0 = ""
  loc_ADAF83: FFree1Var var_9C = ""
  loc_ADAF86: LitI2_Byte 1
  loc_ADAF88: PopTmpLdAd2 var_E6
  loc_ADAF8B: FLdPr var_148
  loc_ADAF8E: Call clsbase.Move(from_stack_1v)
  loc_ADAF93: Branch loc_ADAE8F
  loc_ADAF96: LitI2_Byte 0
  loc_ADAF98: FLdPr Me
  loc_ADAF9B: VCallAd Control_ID_cboJuri
  loc_ADAF9E: FStAdFunc var_88
  loc_ADAFA1: FLdPr var_88
  loc_ADAFA4: Me.ListIndex = from_stack_1
  loc_ADAFA9: FFree1Ad var_88
  loc_ADAFAC: LitNothing
  loc_ADAFAE: FStAd var_148 
  loc_ADAFB2: LitNothing
  loc_ADAFB4: CastAd
  loc_ADAFB7: FStAdFuncNoPop
  loc_ADAFBA: FLdPr Me
  loc_ADAFBD: MemStAd
  loc_ADAFC1: FFree1Ad var_88
  loc_ADAFC4: ExitProcHresult
  loc_ADAFC5: LitVar_Missing var_F8
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '94A988
  'Data Table: 4F7D24
  loc_94A974: FLdPr Me
  loc_94A977: VCallAd Control_ID_CucuPersMsk
  loc_94A97A: CVarAd
  loc_94A97E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A983: FFree1Var var_94 = ""
  loc_94A986: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_8 '9B58C4
  'Data Table: 4F7D24
  loc_9B581C: FLdPr Me
  loc_9B581F: VCallAd Control_ID_CucuPersMsk
  loc_9B5822: FStAdFunc var_88
  loc_9B5825: FLdPr var_88
  loc_9B5828: LateIdLdVar var_98 DispID_13 -32767
  loc_9B582F: CBoolVar
  loc_9B5831: FLdPr Me
  loc_9B5834: VCallAd Control_ID_CucuPersMsk
  loc_9B5837: FStAdFunc var_9C
  loc_9B583A: FLdPr var_9C
  loc_9B583D: LateIdLdVar var_AC DispID_22 0
  loc_9B5844: CStrVarTmp
  loc_9B5845: FStStrNoPop var_B0
  loc_9B5848: LitStr vbNullString
  loc_9B584B: NeStr
  loc_9B584D: AndI4
  loc_9B584E: FFree1Str var_B0
  loc_9B5851: FFreeAd var_88 = ""
  loc_9B5858: FFreeVar var_98 = ""
  loc_9B585F: BranchF loc_9B58C1
  loc_9B5862: FLdPr Me
  loc_9B5865: VCallAd Control_ID_CucuPersMsk
  loc_9B5868: FStAdFunc var_88
  loc_9B586B: FLdPr var_88
  loc_9B586E: LateIdLdVar var_98 DispID_22 0
  loc_9B5875: PopAd
  loc_9B5877: FLdPr Me
  loc_9B587A: MemLdRfVar from_stack_1.global_72
  loc_9B587D: NewIfNullRf
  loc_9B5881: FLdRfVar var_98
  loc_9B5884: CStrVarTmp
  loc_9B5885: FStStrNoPop var_B0
  loc_9B5888: ImpAdCallFPR4 Proc_259_26_B6A94C(, )
  loc_9B588D: FFree1Str var_B0
  loc_9B5890: FFree1Ad var_88
  loc_9B5893: FFree1Var var_98 = ""
  loc_9B5896: FLdRfVar var_B0
  loc_9B5899: FLdPr Me
  loc_9B589C: MemLdRfVar from_stack_1.global_72
  loc_9B589F: NewIfNullPr tblproveedor
  loc_9B58A2: from_stack_1v = tblproveedor.DetaProvGet()
  loc_9B58A7: ILdRf var_B0
  loc_9B58AA: FLdPr Me
  loc_9B58AD: VCallAd Control_ID_DetaProvLbl
  loc_9B58B0: FStAdFunc var_88
  loc_9B58B3: FLdPr var_88
  loc_9B58B6: Me.Caption = from_stack_1
  loc_9B58BB: FFree1Str var_B0
  loc_9B58BE: FFree1Ad var_88
  loc_9B58C1: ExitProcHresult
End Sub

Private Sub chkSoloEncabezados_Click() '96AF9C
  'Data Table: 4F7D24
  loc_96AF80: LitI4 0
  loc_96AF85: CI2I4
  loc_96AF86: FLdPr Me
  loc_96AF89: VCallAd Control_ID_chkHojasSeparadas
  loc_96AF8C: FStAdFunc var_88
  loc_96AF8F: FLdPr var_88
  loc_96AF92: Me.Value = from_stack_1
  loc_96AF97: FFree1Ad var_88
  loc_96AF9A: ExitProcHresult
End Sub

Public Function htmFileGet() '4F9EC0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4F9ECF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4F9EDE
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4F9EED
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4F9EFC
  bGenerado = Value
End Sub

Public Sub GeneraHTML() '9C219C
  'Data Table: 4F7D24
  loc_9C20C8: FLdRfVar var_88
  loc_9C20CB: LitI2_Byte 0
  loc_9C20CD: LitI2_Byte &HFF
  loc_9C20CF: ImpAdLdI4 MemVar_C3D83C
  loc_9C20D2: FLdPr Me
  loc_9C20D5: MemLdRfVar from_stack_1.global_92
  loc_9C20D8: NewIfNullPr IFileSystem3
  loc_9C20DB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9C20E0: ILdRf var_88
  loc_9C20E3: FLdPr Me
  loc_9C20E6: MemStVarAd
  loc_9C20EA: FFree1Ad var_88
  loc_9C20ED: Call Proc_200_40_9B99CC()
  loc_9C20F2: LitI4 1
  loc_9C20F7: FLdPr Me
  loc_9C20FA: MemLdRfVar from_stack_1.global_100
  loc_9C20FD: FLdPr Me
  loc_9C2100: MemLdStr global_96
  loc_9C2103: LitI2_Byte 1
  loc_9C2105: FnUBound
  loc_9C2107: ForI4 var_90
  loc_9C210D: FLdRfVar var_92
  loc_9C2110: FLdPr Me
  loc_9C2113: VCallAd Control_ID_chkHojasSeparadas
  loc_9C2116: FStAdFunc var_88
  loc_9C2119: FLdPr var_88
  loc_9C211C:  = Me.Value
  loc_9C2121: FLdI2 var_92
  loc_9C2124: CI4UI1
  loc_9C2125: LitI4 1
  loc_9C212A: EqI4
  loc_9C212B: FFree1Ad var_88
  loc_9C212E: BranchF loc_9C215C
  loc_9C2131: FLdPr Me
  loc_9C2134: MemLdStr global_100
  loc_9C2137: LitI4 1
  loc_9C213C: NeI4
  loc_9C213D: BranchF loc_9C2154
  loc_9C2140: LitVarStr var_A4, "<div style=""page-break-before:always""></div>"
  loc_9C2145: PopAdLdVar
  loc_9C2146: FLdPr Me
  loc_9C2149: MemLdRfVar from_stack_1.htmFile
  loc_9C214C: LdPrVar
  loc_9C214E: LateMemCall
  loc_9C2154: Call Proc_200_41_A3DF6C()
  loc_9C2159: Branch loc_9C2170
  loc_9C215C: FLdPr Me
  loc_9C215F: MemLdStr global_100
  loc_9C2162: LitI4 1
  loc_9C2167: EqI4
  loc_9C2168: BranchF loc_9C2170
  loc_9C216B: Call Proc_200_41_A3DF6C()
  loc_9C2170: Call Proc_200_39_B42534()
  loc_9C2175: FLdPr Me
  loc_9C2178: MemLdRfVar from_stack_1.global_100
  loc_9C217B: NextI4 var_90, loc_9C210D
  loc_9C2180: Call Proc_200_42_973890()
  loc_9C2185: FLdPr Me
  loc_9C2188: MemLdRfVar from_stack_1.htmFile
  loc_9C218B: LdPrVar
  loc_9C218D: LateMemCall
  loc_9C2193: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9C2198: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BE8B8C
  'Data Table: 4F7D24
  loc_BE71F4: FLdPr Me
  loc_BE71F7: MemLdI2 bGenerado
  loc_BE71FA: BranchF loc_BE71FE
  loc_BE71FD: ExitProcHresult
  loc_BE71FE: LitVarStr var_BC, "Generando reporte..."
  loc_BE7203: PopAdLdVar
  loc_BE7204: FLdPr Me
  loc_BE7207: VCallAd Control_ID_statusBar
  loc_BE720A: FStAdFunc var_D0
  loc_BE720D: FLdPr var_D0
  loc_BE7210: LateIdSt
  loc_BE7215: FFree1Ad var_D0
  loc_BE7218: LitI4 &HB
  loc_BE721D: CI2I4
  loc_BE721E: FLdPr Me
  loc_BE7221: Me.MousePointer = from_stack_1
  loc_BE7226: LitI2_Byte 0
  loc_BE7228: PopTmpLdAd2 var_D2
  loc_BE722B: Call CodiOrcoTxt_Validate(from_stack_1v)
  loc_BE7230: FLdPr Me
  loc_BE7233: MemLdStr global_108
  loc_BE7236: LitStr vbNullString
  loc_BE7239: NeStr
  loc_BE723B: BranchF loc_BE7253
  loc_BE723E: FLdPr Me
  loc_BE7241: VCallAd Control_ID_CodiOrcoTxt
  loc_BE7244: CVarAd
  loc_BE7248: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BE724D: FFree1Var var_E4 = ""
  loc_BE7250: Branch loc_BE8B63
  loc_BE7253: LitI2_Byte 0
  loc_BE7255: PopTmpLdAd2 var_D2
  loc_BE7258: Call mskDesde_UnknownEvent_8()
  loc_BE725D: FLdPr Me
  loc_BE7260: MemLdStr global_108
  loc_BE7263: LitStr vbNullString
  loc_BE7266: NeStr
  loc_BE7268: BranchF loc_BE7280
  loc_BE726B: FLdPr Me
  loc_BE726E: VCallAd Control_ID_MskDesde
  loc_BE7271: CVarAd
  loc_BE7275: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BE727A: FFree1Var var_E4 = ""
  loc_BE727D: Branch loc_BE8B63
  loc_BE7280: LitI2_Byte 0
  loc_BE7282: PopTmpLdAd2 var_D2
  loc_BE7285: Call mskHasta_UnknownEvent_8()
  loc_BE728A: FLdPr Me
  loc_BE728D: MemLdStr global_108
  loc_BE7290: LitStr vbNullString
  loc_BE7293: NeStr
  loc_BE7295: BranchF loc_BE72AD
  loc_BE7298: FLdPr Me
  loc_BE729B: VCallAd Control_ID_MskHasta
  loc_BE729E: CVarAd
  loc_BE72A2: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_BE72A7: FFree1Var var_E4 = ""
  loc_BE72AA: Branch loc_BE8B63
  loc_BE72AD: LitI2_Byte 0
  loc_BE72AF: PopTmpLdAd2 var_D2
  loc_BE72B2: Call CodiOrgaMsk_UnknownEvent_8()
  loc_BE72B7: FLdRfVar var_E8
  loc_BE72BA: FLdPr Me
  loc_BE72BD: VCallAd Control_ID_cboTipoCompra
  loc_BE72C0: FStAdFunc var_D0
  loc_BE72C3: FLdPr var_D0
  loc_BE72C6:  = Me.Text
  loc_BE72CB: FLdRfVar var_F0
  loc_BE72CE: FLdPr Me
  loc_BE72D1: VCallAd Control_ID_cboTipoCompra
  loc_BE72D4: FStAdFunc var_EC
  loc_BE72D7: FLdPr var_EC
  loc_BE72DA:  = Me.Text
  loc_BE72DF: FLdPr Me
  loc_BE72E2: VCallAd Control_ID_cboTipoCompra
  loc_BE72E5: CVarAd
  loc_BE72E9: LitVarStr var_CC, "0 "
  loc_BE72EE: FStVarCopyObj var_E4
  loc_BE72F1: FLdRfVar var_E4
  loc_BE72F4: ILdRf var_E8
  loc_BE72F7: LitStr "Todos"
  loc_BE72FA: EqStr
  loc_BE72FC: ILdRf var_F0
  loc_BE72FF: LitStr vbNullString
  loc_BE7302: EqStr
  loc_BE7304: OrI4
  loc_BE7305: CVarBoolI2 var_BC
  loc_BE7309: FLdRfVar var_110
  loc_BE730C: ImpAdCallFPR4  = IIf(, , )
  loc_BE7311: FLdRfVar var_110
  loc_BE7314: CStrVarTmp
  loc_BE7315: FStStr var_88
  loc_BE7318: FFreeStr var_E8 = ""
  loc_BE731F: FFreeAd var_D0 = ""
  loc_BE7326: FFreeVar var_BC = "": var_E4 = "": var_100 = ""
  loc_BE7331: LitVarStr var_120, " AND oc.CodiTico = '"
  loc_BE7336: LitI4 1
  loc_BE733B: ILdRf var_88
  loc_BE733E: LitStr " "
  loc_BE7341: LitI4 0
  loc_BE7346: FnInStr4
  loc_BE7348: LitI4 1
  loc_BE734D: SubI4
  loc_BE734E: CVarI4
  loc_BE7352: LitI4 1
  loc_BE7357: FLdRfVar var_88
  loc_BE735A: CVarRef
  loc_BE735F: FLdRfVar var_100
  loc_BE7362: ImpAdCallFPR4  = Mid(, , )
  loc_BE7367: FLdRfVar var_100
  loc_BE736A: ConcatVar var_110
  loc_BE736E: LitVarStr var_130, "'"
  loc_BE7373: ConcatVar var_140
  loc_BE7377: LitVarStr var_160, vbNullString
  loc_BE737C: FStVarCopyObj var_170
  loc_BE737F: FLdRfVar var_170
  loc_BE7382: ILdRf var_88
  loc_BE7385: LitStr "0 "
  loc_BE7388: EqStr
  loc_BE738A: CVarBoolI2 var_150
  loc_BE738E: FLdRfVar var_180
  loc_BE7391: ImpAdCallFPR4  = IIf(, , )
  loc_BE7396: FLdRfVar var_180
  loc_BE7399: CStrVarTmp
  loc_BE739A: FStStr var_88
  loc_BE739D: FFreeVar var_E4 = "": var_100 = "": var_110 = "": var_150 = "": var_170 = "": var_140 = ""
  loc_BE73AE: FLdRfVar var_E8
  loc_BE73B1: FLdPr Me
  loc_BE73B4: VCallAd Control_ID_cboExpeImpu
  loc_BE73B7: FStAdFunc var_D0
  loc_BE73BA: FLdPr var_D0
  loc_BE73BD:  = Me.Text
  loc_BE73C2: FLdRfVar var_F0
  loc_BE73C5: FLdPr Me
  loc_BE73C8: VCallAd Control_ID_cboExpeImpu
  loc_BE73CB: FStAdFunc var_EC
  loc_BE73CE: FLdPr var_EC
  loc_BE73D1:  = Me.Text
  loc_BE73D6: LitVarStr var_CC, vbNullString
  loc_BE73DB: FStVarCopyObj var_100
  loc_BE73DE: FLdRfVar var_100
  loc_BE73E1: LitStr " AND oc.ExpeImpu = '"
  loc_BE73E4: ILdRf var_F0
  loc_BE73E7: ConcatStr
  loc_BE73E8: FStStrNoPop var_184
  loc_BE73EB: LitStr "'"
  loc_BE73EE: ConcatStr
  loc_BE73EF: CVarStr var_E4
  loc_BE73F2: ILdRf var_E8
  loc_BE73F5: LitStr vbNullString
  loc_BE73F8: NeStr
  loc_BE73FA: CVarBoolI2 var_BC
  loc_BE73FE: FLdRfVar var_110
  loc_BE7401: ImpAdCallFPR4  = IIf(, , )
  loc_BE7406: FLdRfVar var_110
  loc_BE7409: CStrVarTmp
  loc_BE740A: FStStr var_8C
  loc_BE740D: FFreeStr var_E8 = "": var_F0 = ""
  loc_BE7416: FFreeAd var_D0 = ""
  loc_BE741D: FFreeVar var_BC = "": var_E4 = "": var_100 = ""
  loc_BE7428: FLdPr Me
  loc_BE742B: VCallAd Control_ID_CucuPersMsk
  loc_BE742E: FStAdFunc var_D0
  loc_BE7431: FLdPr var_D0
  loc_BE7434: LateIdLdVar var_E4 DispID_0 0
  loc_BE743B: PopAd
  loc_BE743D: FLdPr Me
  loc_BE7440: VCallAd Control_ID_CucuPersMsk
  loc_BE7443: FStAdFunc var_EC
  loc_BE7446: FLdPr var_EC
  loc_BE7449: LateIdLdVar var_100 DispID_0 0
  loc_BE7450: PopAd
  loc_BE7452: LitVarStr var_CC, vbNullString
  loc_BE7457: FStVarCopyObj var_140
  loc_BE745A: FLdRfVar var_140
  loc_BE745D: LitStr " AND oc.CucuPers = '"
  loc_BE7460: FLdRfVar var_100
  loc_BE7463: CStrVarTmp
  loc_BE7464: FStStrNoPop var_F0
  loc_BE7467: ConcatStr
  loc_BE7468: FStStrNoPop var_184
  loc_BE746B: LitStr "'"
  loc_BE746E: ConcatStr
  loc_BE746F: CVarStr var_110
  loc_BE7472: FLdRfVar var_E4
  loc_BE7475: CStrVarTmp
  loc_BE7476: FStStrNoPop var_E8
  loc_BE7479: LitStr vbNullString
  loc_BE747C: NeStr
  loc_BE747E: CVarBoolI2 var_BC
  loc_BE7482: FLdRfVar var_170
  loc_BE7485: ImpAdCallFPR4  = IIf(, , )
  loc_BE748A: FLdRfVar var_170
  loc_BE748D: CStrVarTmp
  loc_BE748E: FStStr var_90
  loc_BE7491: FFreeStr var_E8 = "": var_F0 = ""
  loc_BE749A: FFreeAd var_D0 = ""
  loc_BE74A1: FFreeVar var_E4 = "": var_100 = "": var_BC = "": var_110 = "": var_140 = ""
  loc_BE74B0: FLdPr Me
  loc_BE74B3: VCallAd Control_ID_CodiNopeMsk
  loc_BE74B6: FStAdFunc var_D0
  loc_BE74B9: FLdPr var_D0
  loc_BE74BC: LateIdLdVar var_E4 DispID_0 0
  loc_BE74C3: PopAd
  loc_BE74C5: FLdPr Me
  loc_BE74C8: VCallAd Control_ID_CodiNopeMsk
  loc_BE74CB: FStAdFunc var_EC
  loc_BE74CE: FLdPr var_EC
  loc_BE74D1: LateIdLdVar var_100 DispID_0 0
  loc_BE74D8: PopAd
  loc_BE74DA: LitVarStr var_CC, vbNullString
  loc_BE74DF: FStVarCopyObj var_140
  loc_BE74E2: FLdRfVar var_140
  loc_BE74E5: LitStr " AND oc.CodiNope = "
  loc_BE74E8: FLdRfVar var_100
  loc_BE74EB: CStrVarTmp
  loc_BE74EC: FStStrNoPop var_F0
  loc_BE74EF: ConcatStr
  loc_BE74F0: CVarStr var_110
  loc_BE74F3: FLdRfVar var_E4
  loc_BE74F6: CStrVarTmp
  loc_BE74F7: FStStrNoPop var_E8
  loc_BE74FA: LitStr vbNullString
  loc_BE74FD: NeStr
  loc_BE74FF: CVarBoolI2 var_BC
  loc_BE7503: FLdRfVar var_170
  loc_BE7506: ImpAdCallFPR4  = IIf(, , )
  loc_BE750B: FLdRfVar var_170
  loc_BE750E: CStrVarTmp
  loc_BE750F: FStStr var_94
  loc_BE7512: FFreeStr var_E8 = ""
  loc_BE7519: FFreeAd var_D0 = ""
  loc_BE7520: FFreeVar var_E4 = "": var_100 = "": var_BC = "": var_110 = "": var_140 = ""
  loc_BE752F: ILdRf var_94
  loc_BE7532: LitStr vbNullString
  loc_BE7535: NeStr
  loc_BE7537: BranchF loc_BE7544
  loc_BE753A: LitStr vbNullString
  loc_BE753D: FLdPr Me
  loc_BE7540: MemStStrCopy
  loc_BE7544: FLdPr Me
  loc_BE7547: VCallAd Control_ID_MskDesde
  loc_BE754A: FStAdFunc var_D0
  loc_BE754D: FLdPr var_D0
  loc_BE7550: LateIdLdVar var_E4 DispID_15 0
  loc_BE7557: PopAd
  loc_BE7559: FLdPr Me
  loc_BE755C: VCallAd Control_ID_MskHasta
  loc_BE755F: FStAdFunc var_EC
  loc_BE7562: FLdPr var_EC
  loc_BE7565: LateIdLdVar var_140 DispID_15 0
  loc_BE756C: PopAd
  loc_BE756E: LitStr " AND FenoOrco BETWEEN "
  loc_BE7571: LitI4 1
  loc_BE7576: LitI4 1
  loc_BE757B: LitVarStr var_BC, "'yyyy-mm-dd'"
  loc_BE7580: FStVarCopyObj var_110
  loc_BE7583: FLdRfVar var_110
  loc_BE7586: FLdRfVar var_E4
  loc_BE7589: CStrVarTmp
  loc_BE758A: CVarStr var_100
  loc_BE758D: ImpAdCallI2 Format$(, )
  loc_BE7592: FStStrNoPop var_E8
  loc_BE7595: ConcatStr
  loc_BE7596: FStStrNoPop var_F0
  loc_BE7599: LitStr " AND "
  loc_BE759C: ConcatStr
  loc_BE759D: FStStrNoPop var_184
  loc_BE75A0: LitI4 1
  loc_BE75A5: LitI4 1
  loc_BE75AA: LitVarStr var_CC, "'yyyy-mm-dd'"
  loc_BE75AF: FStVarCopyObj var_180
  loc_BE75B2: FLdRfVar var_180
  loc_BE75B5: FLdRfVar var_140
  loc_BE75B8: CStrVarTmp
  loc_BE75B9: CVarStr var_170
  loc_BE75BC: ImpAdCallI2 Format$(, )
  loc_BE75C1: FStStrNoPop var_188
  loc_BE75C4: ConcatStr
  loc_BE75C5: FStStr var_98
  loc_BE75C8: FFreeStr var_E8 = "": var_F0 = "": var_184 = ""
  loc_BE75D3: FFreeAd var_D0 = ""
  loc_BE75DA: FFreeVar var_E4 = "": var_100 = "": var_110 = "": var_140 = "": var_170 = ""
  loc_BE75E9: FLdRfVar var_D2
  loc_BE75EC: FLdPr Me
  loc_BE75EF: VCallAd Control_ID_chkSoloAnuladas
  loc_BE75F2: FStAdFunc var_D0
  loc_BE75F5: FLdPr var_D0
  loc_BE75F8:  = Me.Value
  loc_BE75FD: FLdI2 var_D2
  loc_BE7600: CI4UI1
  loc_BE7601: LitI4 1
  loc_BE7606: EqI4
  loc_BE7607: FFree1Ad var_D0
  loc_BE760A: BranchF loc_BE7616
  loc_BE760D: LitStr " AND FeanOrco IS NOT NULL "
  loc_BE7610: FStStrCopy var_9C
  loc_BE7613: Branch loc_BE761C
  loc_BE7616: LitStr vbNullString
  loc_BE7619: FStStrCopy var_9C
  loc_BE761C: FLdRfVar var_D2
  loc_BE761F: FLdPr Me
  loc_BE7622: VCallAd Control_ID_optMostrarTodas
  loc_BE7625: FStAdFunc var_D0
  loc_BE7628: FLdPr var_D0
  loc_BE762B:  = Me.Value
  loc_BE7630: FLdI2 var_D2
  loc_BE7633: LitI2_Byte &HFF
  loc_BE7635: EqI2
  loc_BE7636: FFree1Ad var_D0
  loc_BE7639: BranchF loc_BE7645
  loc_BE763C: LitStr vbNullString
  loc_BE763F: FStStrCopy var_AC
  loc_BE7642: Branch loc_BE769D
  loc_BE7645: FLdRfVar var_D2
  loc_BE7648: FLdPr Me
  loc_BE764B: VCallAd Control_ID_optMostrarSinDef
  loc_BE764E: FStAdFunc var_D0
  loc_BE7651: FLdPr var_D0
  loc_BE7654:  = Me.Value
  loc_BE7659: FLdI2 var_D2
  loc_BE765C: LitI2_Byte &HFF
  loc_BE765E: EqI2
  loc_BE765F: FFree1Ad var_D0
  loc_BE7662: BranchF loc_BE766E
  loc_BE7665: LitStr " HAVING itcIdImpu = 0 "
  loc_BE7668: FStStrCopy var_AC
  loc_BE766B: Branch loc_BE769D
  loc_BE766E: FLdRfVar var_D2
  loc_BE7671: FLdPr Me
  loc_BE7674: VCallAd Control_ID_optMostrarConDef
  loc_BE7677: FStAdFunc var_D0
  loc_BE767A: FLdPr var_D0
  loc_BE767D:  = Me.Value
  loc_BE7682: FLdI2 var_D2
  loc_BE7685: LitI2_Byte &HFF
  loc_BE7687: EqI2
  loc_BE7688: FFree1Ad var_D0
  loc_BE768B: BranchF loc_BE7697
  loc_BE768E: LitStr " HAVING itcIdImpu != 0 "
  loc_BE7691: FStStrCopy var_AC
  loc_BE7694: Branch loc_BE769D
  loc_BE7697: LitStr vbNullString
  loc_BE769A: FStStrCopy var_AC
  loc_BE769D: FLdRfVar var_D2
  loc_BE76A0: FLdPr Me
  loc_BE76A3: VCallAd Control_ID_cboJuri
  loc_BE76A6: FStAdFunc var_D0
  loc_BE76A9: FLdPr var_D0
  loc_BE76AC:  = Me.ListIndex
  loc_BE76B1: FLdRfVar var_18A
  loc_BE76B4: FLdPr Me
  loc_BE76B7: VCallAd Control_ID_cboJuri
  loc_BE76BA: FStAdFunc var_EC
  loc_BE76BD: FLdPr var_EC
  loc_BE76C0:  = Me.ListIndex
  loc_BE76C5: FLdRfVar var_194
  loc_BE76C8: FLdI2 var_18A
  loc_BE76CB: FLdPr Me
  loc_BE76CE: VCallAd Control_ID_cboJuri
  loc_BE76D1: FStAdFunc var_190
  loc_BE76D4: FLdPr var_190
  loc_BE76D7:  = Me.ItemData
  loc_BE76DC: LitVarStr var_CC, vbNullString
  loc_BE76E1: FStVarCopyObj var_100
  loc_BE76E4: FLdRfVar var_100
  loc_BE76E7: LitStr " AND oc.CodiOrga LIKE '"
  loc_BE76EA: ILdRf var_194
  loc_BE76ED: CStrI4
  loc_BE76EF: FStStrNoPop var_E8
  loc_BE76F2: ConcatStr
  loc_BE76F3: FStStrNoPop var_F0
  loc_BE76F6: LitStr Chr(37) & "'"
  loc_BE76F9: ConcatStr
  loc_BE76FA: CVarStr var_E4
  loc_BE76FD: FLdI2 var_D2
  loc_BE7700: LitI2_Byte 0
  loc_BE7702: GtI2
  loc_BE7703: CVarBoolI2 var_BC
  loc_BE7707: FLdRfVar var_110
  loc_BE770A: ImpAdCallFPR4  = IIf(, , )
  loc_BE770F: FLdRfVar var_110
  loc_BE7712: CStrVarTmp
  loc_BE7713: FStStr var_A0
  loc_BE7716: FFreeStr var_E8 = ""
  loc_BE771D: FFreeAd var_D0 = "": var_EC = ""
  loc_BE7726: FFreeVar var_BC = "": var_E4 = "": var_100 = ""
  loc_BE7731: FLdPr Me
  loc_BE7734: VCallAd Control_ID_CodiPartMsk
  loc_BE7737: FStAdFunc var_D0
  loc_BE773A: FLdPr var_D0
  loc_BE773D: LateIdLdVar var_E4 DispID_22 0
  loc_BE7744: PopAd
  loc_BE7746: LitStr " AND CodiPart LIKE '"
  loc_BE7749: FLdPr Me
  loc_BE774C: VCallAd Control_ID_CodiPartMsk
  loc_BE774F: FStAdFunc var_EC
  loc_BE7752: FLdPr var_EC
  loc_BE7755: LateIdLdVar var_100 DispID_22 0
  loc_BE775C: CStrVarTmp
  loc_BE775D: FStStrNoPop var_F0
  loc_BE7760: ConcatStr
  loc_BE7761: FStStrNoPop var_184
  loc_BE7764: LitStr Chr(37) & "'"
  loc_BE7767: ConcatStr
  loc_BE7768: CVarStr var_140
  loc_BE776B: LitVarStr var_CC, vbNullString
  loc_BE7770: FStVarCopyObj var_110
  loc_BE7773: FLdRfVar var_110
  loc_BE7776: FLdRfVar var_E4
  loc_BE7779: CStrVarTmp
  loc_BE777A: FStStrNoPop var_E8
  loc_BE777D: LitStr vbNullString
  loc_BE7780: EqStr
  loc_BE7782: CVarBoolI2 var_BC
  loc_BE7786: FLdRfVar var_170
  loc_BE7789: ImpAdCallFPR4  = IIf(, , )
  loc_BE778E: FLdRfVar var_170
  loc_BE7791: CStrVarTmp
  loc_BE7792: FStStr var_A4
  loc_BE7795: FFreeStr var_E8 = "": var_F0 = ""
  loc_BE779E: FFreeAd var_D0 = ""
  loc_BE77A5: FFreeVar var_E4 = "": var_100 = "": var_BC = "": var_110 = "": var_140 = ""
  loc_BE77B4: FLdPr Me
  loc_BE77B7: VCallAd Control_ID_CodiOrgaMsk
  loc_BE77BA: FStAdFunc var_D0
  loc_BE77BD: FLdPr var_D0
  loc_BE77C0: LateIdLdVar var_E4 DispID_22 0
  loc_BE77C7: PopAd
  loc_BE77C9: FLdPr Me
  loc_BE77CC: VCallAd Control_ID_CodiOrgaMsk
  loc_BE77CF: FStAdFunc var_EC
  loc_BE77D2: FLdPr var_EC
  loc_BE77D5: LateIdLdVar var_100 DispID_22 0
  loc_BE77DC: PopAd
  loc_BE77DE: LitVarStr var_CC, vbNullString
  loc_BE77E3: FStVarCopyObj var_140
  loc_BE77E6: FLdRfVar var_140
  loc_BE77E9: LitStr " AND itc.CodiOrga LIKE '"
  loc_BE77EC: FLdRfVar var_100
  loc_BE77EF: CStrVarTmp
  loc_BE77F0: FStStrNoPop var_F0
  loc_BE77F3: ConcatStr
  loc_BE77F4: FStStrNoPop var_184
  loc_BE77F7: LitStr Chr(37) & "'"
  loc_BE77FA: ConcatStr
  loc_BE77FB: CVarStr var_110
  loc_BE77FE: FLdRfVar var_E4
  loc_BE7801: CStrVarTmp
  loc_BE7802: FStStrNoPop var_E8
  loc_BE7805: LitStr vbNullString
  loc_BE7808: NeStr
  loc_BE780A: CVarBoolI2 var_BC
  loc_BE780E: FLdRfVar var_170
  loc_BE7811: ImpAdCallFPR4  = IIf(, , )
  loc_BE7816: FLdRfVar var_170
  loc_BE7819: CStrVarTmp
  loc_BE781A: FStStr var_A8
  loc_BE781D: FFreeStr var_E8 = "": var_F0 = ""
  loc_BE7826: FFreeAd var_D0 = ""
  loc_BE782D: FFreeVar var_E4 = "": var_100 = "": var_BC = "": var_110 = "": var_140 = ""
  loc_BE783C: ILdRf var_8C
  loc_BE783F: LitStr vbNullString
  loc_BE7842: NeStr
  loc_BE7844: BranchF loc_BE7851
  loc_BE7847: LitStr vbNullString
  loc_BE784A: FLdPr Me
  loc_BE784D: MemStStrCopy
  loc_BE7851: ILdRf var_90
  loc_BE7854: LitStr vbNullString
  loc_BE7857: NeStr
  loc_BE7859: BranchF loc_BE7866
  loc_BE785C: LitStr vbNullString
  loc_BE785F: FLdPr Me
  loc_BE7862: MemStStrCopy
  loc_BE7866: ILdRf var_94
  loc_BE7869: LitStr vbNullString
  loc_BE786C: NeStr
  loc_BE786E: BranchF loc_BE787B
  loc_BE7871: LitStr vbNullString
  loc_BE7874: FLdPr Me
  loc_BE7877: MemStStrCopy
  loc_BE787B: LitStr "SELECT IF(oxu.PeriInfo IS NULL,'No','Si') Mostrar, oc.CodiOrco, DetaOrco, oc.CodiTico, DetaTico, DetaPers, oc.CucuPers, DetaProv, CodiNope"
  loc_BE787E: LitStr ", IdCoti, ExpeImpu, FechOrco, FenoOrco, FeanOrco, oc.BajaMoti, oc.AltaUsua"
  loc_BE7881: ConcatStr
  loc_BE7882: FStStrNoPop var_E8
  loc_BE7885: LitStr ", SUM(itc.IdImpu) itcIdImpu"
  loc_BE7888: ConcatStr
  loc_BE7889: FStStrNoPop var_F0
  loc_BE788C: LitStr " FROM ordencompra oc"
  loc_BE788F: ConcatStr
  loc_BE7890: FStStrNoPop var_184
  loc_BE7893: LitStr " LEFT JOIN orgaxusua oxu ON oxu.PeriInfo = oc.PeriInfo AND oxu.CodiOrga = oc.CodiOrga AND oxu.CodiUsua = '"
  loc_BE7896: ConcatStr
  loc_BE7897: FStStrNoPop var_188
  loc_BE789A: ImpAdLdI4 MemVar_C3D03C
  loc_BE789D: ConcatStr
  loc_BE789E: FStStrNoPop var_198
  loc_BE78A1: LitStr "'"
  loc_BE78A4: ConcatStr
  loc_BE78A5: FStStrNoPop var_19C
  loc_BE78A8: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco"
  loc_BE78AB: ConcatStr
  loc_BE78AC: FStStrNoPop var_1A0
  loc_BE78AF: ILdRf var_A8
  loc_BE78B2: ConcatStr
  loc_BE78B3: FStStrNoPop var_1A4
  loc_BE78B6: LitStr " INNER JOIN tipocompra ON tipocompra.CodiTico = oc.CodiTico"
  loc_BE78B9: ConcatStr
  loc_BE78BA: FStStrNoPop var_1A8
  loc_BE78BD: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = oc.CucuPers"
  loc_BE78C0: ConcatStr
  loc_BE78C1: FStStrNoPop var_1AC
  loc_BE78C4: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = tipocompra.CucuPers AND tipocompra.CucuPers > 0"
  loc_BE78C7: ConcatStr
  loc_BE78C8: FStStrNoPop var_1B0
  loc_BE78CB: LitStr " WHERE oc.PeriInfo = "
  loc_BE78CE: ConcatStr
  loc_BE78CF: FStStrNoPop var_1B8
  loc_BE78D2: FLdRfVar var_1B4
  loc_BE78D5: FLdPr Me
  loc_BE78D8: VCallAd Control_ID_cboPeriodo
  loc_BE78DB: FStAdFunc var_D0
  loc_BE78DE: FLdPr var_D0
  loc_BE78E1:  = Me.Text
  loc_BE78E6: ILdRf var_1B4
  loc_BE78E9: ConcatStr
  loc_BE78EA: FStStrNoPop var_1BC
  loc_BE78ED: FLdPr Me
  loc_BE78F0: MemLdStr global_112
  loc_BE78F3: ConcatStr
  loc_BE78F4: FStStrNoPop var_1C0
  loc_BE78F7: ILdRf var_88
  loc_BE78FA: ConcatStr
  loc_BE78FB: FStStrNoPop var_1C4
  loc_BE78FE: ILdRf var_8C
  loc_BE7901: ConcatStr
  loc_BE7902: FStStrNoPop var_1C8
  loc_BE7905: ILdRf var_90
  loc_BE7908: ConcatStr
  loc_BE7909: FStStrNoPop var_1CC
  loc_BE790C: ILdRf var_94
  loc_BE790F: ConcatStr
  loc_BE7910: FStStrNoPop var_1D0
  loc_BE7913: ILdRf var_98
  loc_BE7916: ConcatStr
  loc_BE7917: FStStrNoPop var_1D4
  loc_BE791A: ILdRf var_9C
  loc_BE791D: ConcatStr
  loc_BE791E: FStStrNoPop var_1D8
  loc_BE7921: ILdRf var_A0
  loc_BE7924: ConcatStr
  loc_BE7925: FStStrNoPop var_1DC
  loc_BE7928: ILdRf var_A4
  loc_BE792B: ConcatStr
  loc_BE792C: FStStrNoPop var_1E0
  loc_BE792F: LitStr " GROUP BY oc.CodiOrco"
  loc_BE7932: ConcatStr
  loc_BE7933: FStStrNoPop var_1E4
  loc_BE7936: ILdRf var_AC
  loc_BE7939: ConcatStr
  loc_BE793A: FStStrNoPop var_1E8
  loc_BE793D: LitStr " ORDER BY oc.CodiOrco;"
  loc_BE7940: ConcatStr
  loc_BE7941: FStStrNoPop var_1EC
  loc_BE7944: FLdPr Me
  loc_BE7947: MemLdRfVar from_stack_1.global_80
  loc_BE794A: NewIfNullPr clsbase
  loc_BE794D: Call clsbase.RedefineRS(from_stack_1v)
  loc_BE7952: FFreeStr var_E8 = "": var_F0 = "": var_184 = "": var_188 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1A4 = "": var_1A8 = "": var_1AC = "": var_1B0 = "": var_1B8 = "": var_1B4 = "": var_1BC = "": var_1C0 = "": var_1C4 = "": var_1C8 = "": var_1CC = "": var_1D0 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_1E4 = "": var_1E8 = ""
  loc_BE7989: FFree1Ad var_D0
  loc_BE798C: FLdRfVar var_194
  loc_BE798F: FLdPr Me
  loc_BE7992: MemLdRfVar from_stack_1.global_80
  loc_BE7995: NewIfNullPr clsbase
  loc_BE7998: from_stack_1 = clsbase.RecordCount
  loc_BE799D: ILdRf var_194
  loc_BE79A0: LitI4 0
  loc_BE79A5: EqI4
  loc_BE79A6: BranchF loc_BE79BC
  loc_BE79A9: LitI4 0
  loc_BE79AE: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BE79B1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE79B6: Branch loc_BE8B63
  loc_BE79B9: Branch loc_BE7B43
  loc_BE79BC: FLdPr Me
  loc_BE79BF: MemLdRfVar from_stack_1.global_80
  loc_BE79C2: NewIfNullPr clsbase
  loc_BE79C5: Call clsbase.MoveFirst()
  loc_BE79CA: FLdRfVar var_D2
  loc_BE79CD: FLdPr Me
  loc_BE79D0: MemLdRfVar from_stack_1.global_80
  loc_BE79D3: NewIfNullPr clsbase
  loc_BE79D6: from_stack_1 = clsbase.EOF
  loc_BE79DB: FLdI2 var_D2
  loc_BE79DE: NotI4
  loc_BE79DF: BranchF loc_BE7AA4
  loc_BE79E2: FLdRfVar var_E4
  loc_BE79E5: FLdRfVar var_190
  loc_BE79E8: LitVarStr var_BC, "Mostrar"
  loc_BE79ED: PopAdLdVar
  loc_BE79EE: FLdRfVar var_EC
  loc_BE79F1: FLdRfVar var_D0
  loc_BE79F4: FLdPr Me
  loc_BE79F7: MemLdRfVar from_stack_1.global_80
  loc_BE79FA: NewIfNullPr clsbase
  loc_BE79FD: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7A02: FLdPr var_D0
  loc_BE7A05:  = Me.Fields
  loc_BE7A0A: FLdPr var_EC
  loc_BE7A0D: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7A12: FLdPr var_190
  loc_BE7A15:  = Me.Value
  loc_BE7A1A: FLdRfVar var_E4
  loc_BE7A1D: LitVarStr var_CC, "No"
  loc_BE7A22: HardType
  loc_BE7A23: EqVarBool
  loc_BE7A25: FFreeAd var_D0 = "": var_EC = ""
  loc_BE7A2E: FFree1Var var_E4 = ""
  loc_BE7A31: BranchF loc_BE7A93
  loc_BE7A34: ILdRf var_1F0
  loc_BE7A37: LitStr " "
  loc_BE7A3A: ConcatStr
  loc_BE7A3B: CVarStr var_100
  loc_BE7A3E: FLdRfVar var_E4
  loc_BE7A41: FLdRfVar var_190
  loc_BE7A44: LitVarStr var_BC, "CodiOrco"
  loc_BE7A49: PopAdLdVar
  loc_BE7A4A: FLdRfVar var_EC
  loc_BE7A4D: FLdRfVar var_D0
  loc_BE7A50: FLdPr Me
  loc_BE7A53: MemLdRfVar from_stack_1.global_80
  loc_BE7A56: NewIfNullPr clsbase
  loc_BE7A59: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7A5E: FLdPr var_D0
  loc_BE7A61:  = Me.Fields
  loc_BE7A66: FLdPr var_EC
  loc_BE7A69: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7A6E: FLdPr var_190
  loc_BE7A71:  = Me.Value
  loc_BE7A76: FLdRfVar var_E4
  loc_BE7A79: ConcatVar var_110
  loc_BE7A7D: CStrVarTmp
  loc_BE7A7E: FStStr var_1F0
  loc_BE7A81: FFreeAd var_D0 = "": var_EC = ""
  loc_BE7A8A: FFreeVar var_100 = "": var_E4 = ""
  loc_BE7A93: FLdPr Me
  loc_BE7A96: MemLdRfVar from_stack_1.global_80
  loc_BE7A99: NewIfNullPr clsbase
  loc_BE7A9C: Call clsbase.MoveSiguiente()
  loc_BE7AA1: Branch loc_BE79CA
  loc_BE7AA4: ILdRf var_1F0
  loc_BE7AA7: LitStr vbNullString
  loc_BE7AAA: NeStr
  loc_BE7AAC: BranchF loc_BE7B43
  loc_BE7AAF: FLdRfVar var_1F0
  loc_BE7AB2: CVarRef
  loc_BE7AB7: FLdRfVar var_E4
  loc_BE7ABA: ImpAdCallFPR4  = Trim()
  loc_BE7ABF: LitI4 0
  loc_BE7AC4: LitI4 -1
  loc_BE7AC9: LitI4 1
  loc_BE7ACE: LitStr ", "
  loc_BE7AD1: LitStr " "
  loc_BE7AD4: FLdRfVar var_E4
  loc_BE7AD7: CStrVarVal var_E8
  loc_BE7ADB: ImpAdCallI2 Replace(, , , , , )
  loc_BE7AE0: FStStr var_1F0
  loc_BE7AE3: FFree1Str var_E8
  loc_BE7AE6: FFree1Var var_E4 = ""
  loc_BE7AE9: LitStr "Su Usuario no tiene Permiso para ver las órdenes de compra: "
  loc_BE7AEC: ILdRf var_1F0
  loc_BE7AEF: ConcatStr
  loc_BE7AF0: CVarStr var_100
  loc_BE7AF3: LitStr "Su Usuario no tiene Permiso para ver la OC: "
  loc_BE7AF6: ILdRf var_1F0
  loc_BE7AF9: ConcatStr
  loc_BE7AFA: CVarStr var_E4
  loc_BE7AFD: LitI4 1
  loc_BE7B02: ILdRf var_1F0
  loc_BE7B05: LitStr ","
  loc_BE7B08: LitI4 0
  loc_BE7B0D: FnInStr4
  loc_BE7B0F: LitI4 0
  loc_BE7B14: EqI4
  loc_BE7B15: CVarBoolI2 var_BC
  loc_BE7B19: FLdRfVar var_110
  loc_BE7B1C: ImpAdCallFPR4  = IIf(, , )
  loc_BE7B21: LitI4 0
  loc_BE7B26: FLdRfVar var_110
  loc_BE7B29: CStrVarVal var_E8
  loc_BE7B2D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE7B32: FFree1Str var_E8
  loc_BE7B35: FFreeVar var_BC = "": var_E4 = "": var_100 = ""
  loc_BE7B40: Branch loc_BE8B63
  loc_BE7B43: LitI4 1
  loc_BE7B48: FLdRfVar var_194
  loc_BE7B4B: FLdPr Me
  loc_BE7B4E: MemLdRfVar from_stack_1.global_80
  loc_BE7B51: NewIfNullPr clsbase
  loc_BE7B54: from_stack_1 = clsbase.RecordCount
  loc_BE7B59: ILdRf var_194
  loc_BE7B5C: FLdPr Me
  loc_BE7B5F: MemLdRfVar from_stack_1.global_96
  loc_BE7B62: Redim
  loc_BE7B6C: FLdPr Me
  loc_BE7B6F: MemLdRfVar from_stack_1.global_80
  loc_BE7B72: NewIfNullPr clsbase
  loc_BE7B75: Call clsbase.MoveFirst()
  loc_BE7B7A: LitI4 1
  loc_BE7B7F: FLdPr Me
  loc_BE7B82: MemLdRfVar from_stack_1.global_100
  loc_BE7B85: FLdPr Me
  loc_BE7B88: MemLdStr global_96
  loc_BE7B8B: LitI2_Byte 1
  loc_BE7B8D: FnUBound
  loc_BE7B8F: ForI4 var_1F8
  loc_BE7B95: FLdPr Me
  loc_BE7B98: MemLdRfVar from_stack_1.global_80
  loc_BE7B9B: NewIfNullAd
  loc_BE7B9E: FStAd var_1FC 
  loc_BE7BA2: FLdRfVar var_190
  loc_BE7BA5: LitVarStr var_BC, "CodiOrco"
  loc_BE7BAA: PopAdLdVar
  loc_BE7BAB: FLdRfVar var_EC
  loc_BE7BAE: FLdRfVar var_D0
  loc_BE7BB1: FLdPr var_1FC
  loc_BE7BB4: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7BB9: FLdPr var_D0
  loc_BE7BBC:  = Me.Fields
  loc_BE7BC1: FLdPr var_EC
  loc_BE7BC4: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7BC9: LitI2_Byte 0
  loc_BE7BCB: LitVar_Missing var_100
  loc_BE7BCE: LitI2_Byte 0
  loc_BE7BD0: FLdZeroAd var_190
  loc_BE7BD3: CVarAd
  loc_BE7BD7: PopAdLdVar
  loc_BE7BD8: FLdPr Me
  loc_BE7BDB: MemLdStr global_100
  loc_BE7BDE: FLdPr Me
  loc_BE7BE1: MemLdStr global_96
  loc_BE7BE4: AryLock
  loc_BE7BE7: Ary1LdPr
  loc_BE7BE8: MemLdRfVar from_stack_1.global_0
  loc_BE7BEB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7BF0: AryUnlock
  loc_BE7BF3: FFreeAd var_D0 = ""
  loc_BE7BFA: FFreeVar var_E4 = ""
  loc_BE7C01: FLdRfVar var_190
  loc_BE7C04: LitVarStr var_BC, "DetaOrco"
  loc_BE7C09: PopAdLdVar
  loc_BE7C0A: FLdRfVar var_EC
  loc_BE7C0D: FLdRfVar var_D0
  loc_BE7C10: FLdPr var_1FC
  loc_BE7C13: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7C18: FLdPr var_D0
  loc_BE7C1B:  = Me.Fields
  loc_BE7C20: FLdPr var_EC
  loc_BE7C23: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7C28: LitI2_Byte 0
  loc_BE7C2A: LitVar_Missing var_100
  loc_BE7C2D: LitI2_Byte 0
  loc_BE7C2F: FLdZeroAd var_190
  loc_BE7C32: CVarAd
  loc_BE7C36: PopAdLdVar
  loc_BE7C37: FLdPr Me
  loc_BE7C3A: MemLdStr global_100
  loc_BE7C3D: FLdPr Me
  loc_BE7C40: MemLdStr global_96
  loc_BE7C43: AryLock
  loc_BE7C46: Ary1LdPr
  loc_BE7C47: MemLdRfVar from_stack_1.global_4
  loc_BE7C4A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7C4F: AryUnlock
  loc_BE7C52: FFreeAd var_D0 = ""
  loc_BE7C59: FFreeVar var_E4 = ""
  loc_BE7C60: FLdRfVar var_190
  loc_BE7C63: LitVarStr var_BC, "CodiTico"
  loc_BE7C68: PopAdLdVar
  loc_BE7C69: FLdRfVar var_EC
  loc_BE7C6C: FLdRfVar var_D0
  loc_BE7C6F: FLdPr var_1FC
  loc_BE7C72: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7C77: FLdPr var_D0
  loc_BE7C7A:  = Me.Fields
  loc_BE7C7F: FLdPr var_EC
  loc_BE7C82: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7C87: LitI2_Byte 0
  loc_BE7C89: LitVar_Missing var_100
  loc_BE7C8C: LitI2_Byte 0
  loc_BE7C8E: FLdZeroAd var_190
  loc_BE7C91: CVarAd
  loc_BE7C95: PopAdLdVar
  loc_BE7C96: FLdPr Me
  loc_BE7C99: MemLdStr global_100
  loc_BE7C9C: FLdPr Me
  loc_BE7C9F: MemLdStr global_96
  loc_BE7CA2: AryLock
  loc_BE7CA5: Ary1LdPr
  loc_BE7CA6: MemLdRfVar from_stack_1.global_16
  loc_BE7CA9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7CAE: AryUnlock
  loc_BE7CB1: FFreeAd var_D0 = ""
  loc_BE7CB8: FFreeVar var_E4 = ""
  loc_BE7CBF: FLdRfVar var_190
  loc_BE7CC2: LitVarStr var_BC, "DetaTico"
  loc_BE7CC7: PopAdLdVar
  loc_BE7CC8: FLdRfVar var_EC
  loc_BE7CCB: FLdRfVar var_D0
  loc_BE7CCE: FLdPr var_1FC
  loc_BE7CD1: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7CD6: FLdPr var_D0
  loc_BE7CD9:  = Me.Fields
  loc_BE7CDE: FLdPr var_EC
  loc_BE7CE1: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7CE6: LitI2_Byte 0
  loc_BE7CE8: LitVar_Missing var_100
  loc_BE7CEB: LitI2_Byte 0
  loc_BE7CED: FLdZeroAd var_190
  loc_BE7CF0: CVarAd
  loc_BE7CF4: PopAdLdVar
  loc_BE7CF5: FLdPr Me
  loc_BE7CF8: MemLdStr global_100
  loc_BE7CFB: FLdPr Me
  loc_BE7CFE: MemLdStr global_96
  loc_BE7D01: AryLock
  loc_BE7D04: Ary1LdPr
  loc_BE7D05: MemLdRfVar from_stack_1.global_20
  loc_BE7D08: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7D0D: AryUnlock
  loc_BE7D10: FFreeAd var_D0 = ""
  loc_BE7D17: FFreeVar var_E4 = ""
  loc_BE7D1E: FLdRfVar var_190
  loc_BE7D21: LitVarStr var_BC, "DetaPers"
  loc_BE7D26: PopAdLdVar
  loc_BE7D27: FLdRfVar var_EC
  loc_BE7D2A: FLdRfVar var_D0
  loc_BE7D2D: FLdPr var_1FC
  loc_BE7D30: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7D35: FLdPr var_D0
  loc_BE7D38:  = Me.Fields
  loc_BE7D3D: FLdPr var_EC
  loc_BE7D40: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7D45: LitI2_Byte 0
  loc_BE7D47: LitVar_Missing var_100
  loc_BE7D4A: LitI2_Byte 0
  loc_BE7D4C: FLdZeroAd var_190
  loc_BE7D4F: CVarAd
  loc_BE7D53: PopAdLdVar
  loc_BE7D54: FLdPr Me
  loc_BE7D57: MemLdStr global_100
  loc_BE7D5A: FLdPr Me
  loc_BE7D5D: MemLdStr global_96
  loc_BE7D60: AryLock
  loc_BE7D63: Ary1LdPr
  loc_BE7D64: MemLdRfVar from_stack_1.global_24
  loc_BE7D67: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7D6C: AryUnlock
  loc_BE7D6F: FFreeAd var_D0 = ""
  loc_BE7D76: FFreeVar var_E4 = ""
  loc_BE7D7D: FLdRfVar var_190
  loc_BE7D80: LitVarStr var_BC, "CucuPers"
  loc_BE7D85: PopAdLdVar
  loc_BE7D86: FLdRfVar var_EC
  loc_BE7D89: FLdRfVar var_D0
  loc_BE7D8C: FLdPr var_1FC
  loc_BE7D8F: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7D94: FLdPr var_D0
  loc_BE7D97:  = Me.Fields
  loc_BE7D9C: FLdPr var_EC
  loc_BE7D9F: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7DA4: LitI2_Byte 0
  loc_BE7DA6: LitVar_Missing var_100
  loc_BE7DA9: LitI2_Byte 0
  loc_BE7DAB: FLdZeroAd var_190
  loc_BE7DAE: CVarAd
  loc_BE7DB2: PopAdLdVar
  loc_BE7DB3: FLdPr Me
  loc_BE7DB6: MemLdStr global_100
  loc_BE7DB9: FLdPr Me
  loc_BE7DBC: MemLdStr global_96
  loc_BE7DBF: AryLock
  loc_BE7DC2: Ary1LdPr
  loc_BE7DC3: MemLdRfVar from_stack_1.global_28
  loc_BE7DC6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7DCB: AryUnlock
  loc_BE7DCE: FFreeAd var_D0 = ""
  loc_BE7DD5: FFreeVar var_E4 = ""
  loc_BE7DDC: FLdRfVar var_190
  loc_BE7DDF: LitVarStr var_BC, "DetaProv"
  loc_BE7DE4: PopAdLdVar
  loc_BE7DE5: FLdRfVar var_EC
  loc_BE7DE8: FLdRfVar var_D0
  loc_BE7DEB: FLdPr var_1FC
  loc_BE7DEE: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7DF3: FLdPr var_D0
  loc_BE7DF6:  = Me.Fields
  loc_BE7DFB: FLdPr var_EC
  loc_BE7DFE: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7E03: LitI2_Byte 0
  loc_BE7E05: LitVar_Missing var_100
  loc_BE7E08: LitI2_Byte 0
  loc_BE7E0A: FLdZeroAd var_190
  loc_BE7E0D: CVarAd
  loc_BE7E11: PopAdLdVar
  loc_BE7E12: FLdPr Me
  loc_BE7E15: MemLdStr global_100
  loc_BE7E18: FLdPr Me
  loc_BE7E1B: MemLdStr global_96
  loc_BE7E1E: AryLock
  loc_BE7E21: Ary1LdPr
  loc_BE7E22: MemLdRfVar from_stack_1.global_32
  loc_BE7E25: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7E2A: AryUnlock
  loc_BE7E2D: FFreeAd var_D0 = ""
  loc_BE7E34: FFreeVar var_E4 = ""
  loc_BE7E3B: FLdRfVar var_190
  loc_BE7E3E: LitVarStr var_BC, "ExpeImpu"
  loc_BE7E43: PopAdLdVar
  loc_BE7E44: FLdRfVar var_EC
  loc_BE7E47: FLdRfVar var_D0
  loc_BE7E4A: FLdPr var_1FC
  loc_BE7E4D: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7E52: FLdPr var_D0
  loc_BE7E55:  = Me.Fields
  loc_BE7E5A: FLdPr var_EC
  loc_BE7E5D: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7E62: LitI2_Byte 0
  loc_BE7E64: LitVar_Missing var_100
  loc_BE7E67: LitI2_Byte 0
  loc_BE7E69: FLdZeroAd var_190
  loc_BE7E6C: CVarAd
  loc_BE7E70: PopAdLdVar
  loc_BE7E71: FLdPr Me
  loc_BE7E74: MemLdStr global_100
  loc_BE7E77: FLdPr Me
  loc_BE7E7A: MemLdStr global_96
  loc_BE7E7D: AryLock
  loc_BE7E80: Ary1LdPr
  loc_BE7E81: MemLdRfVar from_stack_1.global_36
  loc_BE7E84: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7E89: AryUnlock
  loc_BE7E8C: FFreeAd var_D0 = ""
  loc_BE7E93: FFreeVar var_E4 = ""
  loc_BE7E9A: FLdRfVar var_190
  loc_BE7E9D: LitVarStr var_BC, "CodiNope"
  loc_BE7EA2: PopAdLdVar
  loc_BE7EA3: FLdRfVar var_EC
  loc_BE7EA6: FLdRfVar var_D0
  loc_BE7EA9: FLdPr var_1FC
  loc_BE7EAC: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7EB1: FLdPr var_D0
  loc_BE7EB4:  = Me.Fields
  loc_BE7EB9: FLdPr var_EC
  loc_BE7EBC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7EC1: LitI2_Byte 0
  loc_BE7EC3: LitVar_Missing var_100
  loc_BE7EC6: LitI2_Byte 0
  loc_BE7EC8: FLdZeroAd var_190
  loc_BE7ECB: CVarAd
  loc_BE7ECF: PopAdLdVar
  loc_BE7ED0: FLdPr Me
  loc_BE7ED3: MemLdStr global_100
  loc_BE7ED6: FLdPr Me
  loc_BE7ED9: MemLdStr global_96
  loc_BE7EDC: AryLock
  loc_BE7EDF: Ary1LdPr
  loc_BE7EE0: MemLdRfVar from_stack_1.global_8
  loc_BE7EE3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7EE8: AryUnlock
  loc_BE7EEB: FFreeAd var_D0 = ""
  loc_BE7EF2: FFreeVar var_E4 = ""
  loc_BE7EF9: FLdRfVar var_190
  loc_BE7EFC: LitVarStr var_BC, "IdCoti"
  loc_BE7F01: PopAdLdVar
  loc_BE7F02: FLdRfVar var_EC
  loc_BE7F05: FLdRfVar var_D0
  loc_BE7F08: FLdPr var_1FC
  loc_BE7F0B: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7F10: FLdPr var_D0
  loc_BE7F13:  = Me.Fields
  loc_BE7F18: FLdPr var_EC
  loc_BE7F1B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7F20: LitI2_Byte 0
  loc_BE7F22: LitVar_Missing var_100
  loc_BE7F25: LitI2_Byte 0
  loc_BE7F27: FLdZeroAd var_190
  loc_BE7F2A: CVarAd
  loc_BE7F2E: PopAdLdVar
  loc_BE7F2F: FLdPr Me
  loc_BE7F32: MemLdStr global_100
  loc_BE7F35: FLdPr Me
  loc_BE7F38: MemLdStr global_96
  loc_BE7F3B: AryLock
  loc_BE7F3E: Ary1LdPr
  loc_BE7F3F: MemLdRfVar from_stack_1.global_12
  loc_BE7F42: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7F47: AryUnlock
  loc_BE7F4A: FFreeAd var_D0 = ""
  loc_BE7F51: FFreeVar var_E4 = ""
  loc_BE7F58: FLdRfVar var_190
  loc_BE7F5B: LitVarStr var_BC, "FechOrco"
  loc_BE7F60: PopAdLdVar
  loc_BE7F61: FLdRfVar var_EC
  loc_BE7F64: FLdRfVar var_D0
  loc_BE7F67: FLdPr var_1FC
  loc_BE7F6A: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7F6F: FLdPr var_D0
  loc_BE7F72:  = Me.Fields
  loc_BE7F77: FLdPr var_EC
  loc_BE7F7A: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7F7F: LitI2_Byte 0
  loc_BE7F81: LitVar_Missing var_100
  loc_BE7F84: LitI2_Byte 0
  loc_BE7F86: FLdZeroAd var_190
  loc_BE7F89: CVarAd
  loc_BE7F8D: PopAdLdVar
  loc_BE7F8E: FLdPr Me
  loc_BE7F91: MemLdStr global_100
  loc_BE7F94: FLdPr Me
  loc_BE7F97: MemLdStr global_96
  loc_BE7F9A: AryLock
  loc_BE7F9D: Ary1LdPr
  loc_BE7F9E: MemLdRfVar from_stack_1.global_44
  loc_BE7FA1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE7FA6: AryUnlock
  loc_BE7FA9: FFreeAd var_D0 = ""
  loc_BE7FB0: FFreeVar var_E4 = ""
  loc_BE7FB7: FLdRfVar var_190
  loc_BE7FBA: LitVarStr var_BC, "FenoOrco"
  loc_BE7FBF: PopAdLdVar
  loc_BE7FC0: FLdRfVar var_EC
  loc_BE7FC3: FLdRfVar var_D0
  loc_BE7FC6: FLdPr var_1FC
  loc_BE7FC9: from_stack_1v = clsbase.RsFrmGet()
  loc_BE7FCE: FLdPr var_D0
  loc_BE7FD1:  = Me.Fields
  loc_BE7FD6: FLdPr var_EC
  loc_BE7FD9: from_stack_2 = Me.Item(from_stack_1)
  loc_BE7FDE: LitI2_Byte 0
  loc_BE7FE0: LitVar_Missing var_100
  loc_BE7FE3: LitI2_Byte 0
  loc_BE7FE5: FLdZeroAd var_190
  loc_BE7FE8: CVarAd
  loc_BE7FEC: PopAdLdVar
  loc_BE7FED: FLdPr Me
  loc_BE7FF0: MemLdStr global_100
  loc_BE7FF3: FLdPr Me
  loc_BE7FF6: MemLdStr global_96
  loc_BE7FF9: AryLock
  loc_BE7FFC: Ary1LdPr
  loc_BE7FFD: MemLdRfVar from_stack_1.global_48
  loc_BE8000: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8005: AryUnlock
  loc_BE8008: FFreeAd var_D0 = ""
  loc_BE800F: FFreeVar var_E4 = ""
  loc_BE8016: FLdRfVar var_190
  loc_BE8019: LitVarStr var_BC, "FeanOrco"
  loc_BE801E: PopAdLdVar
  loc_BE801F: FLdRfVar var_EC
  loc_BE8022: FLdRfVar var_D0
  loc_BE8025: FLdPr var_1FC
  loc_BE8028: from_stack_1v = clsbase.RsFrmGet()
  loc_BE802D: FLdPr var_D0
  loc_BE8030:  = Me.Fields
  loc_BE8035: FLdPr var_EC
  loc_BE8038: from_stack_2 = Me.Item(from_stack_1)
  loc_BE803D: LitI2_Byte 0
  loc_BE803F: LitVar_Missing var_100
  loc_BE8042: LitI2_Byte 0
  loc_BE8044: FLdZeroAd var_190
  loc_BE8047: CVarAd
  loc_BE804B: PopAdLdVar
  loc_BE804C: FLdPr Me
  loc_BE804F: MemLdStr global_100
  loc_BE8052: FLdPr Me
  loc_BE8055: MemLdStr global_96
  loc_BE8058: AryLock
  loc_BE805B: Ary1LdPr
  loc_BE805C: MemLdRfVar from_stack_1.htmFile
  loc_BE805F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8064: AryUnlock
  loc_BE8067: FFreeAd var_D0 = ""
  loc_BE806E: FFreeVar var_E4 = ""
  loc_BE8075: FLdRfVar var_190
  loc_BE8078: LitVarStr var_BC, "BajaMoti"
  loc_BE807D: PopAdLdVar
  loc_BE807E: FLdRfVar var_EC
  loc_BE8081: FLdRfVar var_D0
  loc_BE8084: FLdPr var_1FC
  loc_BE8087: from_stack_1v = clsbase.RsFrmGet()
  loc_BE808C: FLdPr var_D0
  loc_BE808F:  = Me.Fields
  loc_BE8094: FLdPr var_EC
  loc_BE8097: from_stack_2 = Me.Item(from_stack_1)
  loc_BE809C: LitI2_Byte 0
  loc_BE809E: LitVar_Missing var_100
  loc_BE80A1: LitI2_Byte 0
  loc_BE80A3: FLdZeroAd var_190
  loc_BE80A6: CVarAd
  loc_BE80AA: PopAdLdVar
  loc_BE80AB: FLdPr Me
  loc_BE80AE: MemLdStr global_100
  loc_BE80B1: FLdPr Me
  loc_BE80B4: MemLdStr global_96
  loc_BE80B7: AryLock
  loc_BE80BA: Ary1LdPr
  loc_BE80BB: MemLdRfVar from_stack_1.global_56
  loc_BE80BE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE80C3: AryUnlock
  loc_BE80C6: FFreeAd var_D0 = ""
  loc_BE80CD: FFreeVar var_E4 = ""
  loc_BE80D4: FLdRfVar var_190
  loc_BE80D7: LitVarStr var_BC, "AltaUsua"
  loc_BE80DC: PopAdLdVar
  loc_BE80DD: FLdRfVar var_EC
  loc_BE80E0: FLdRfVar var_D0
  loc_BE80E3: FLdPr var_1FC
  loc_BE80E6: from_stack_1v = clsbase.RsFrmGet()
  loc_BE80EB: FLdPr var_D0
  loc_BE80EE:  = Me.Fields
  loc_BE80F3: FLdPr var_EC
  loc_BE80F6: from_stack_2 = Me.Item(from_stack_1)
  loc_BE80FB: LitI2_Byte 0
  loc_BE80FD: LitVar_Missing var_100
  loc_BE8100: LitI2_Byte 0
  loc_BE8102: FLdZeroAd var_190
  loc_BE8105: CVarAd
  loc_BE8109: PopAdLdVar
  loc_BE810A: FLdPr Me
  loc_BE810D: MemLdStr global_100
  loc_BE8110: FLdPr Me
  loc_BE8113: MemLdStr global_96
  loc_BE8116: AryLock
  loc_BE8119: Ary1LdPr
  loc_BE811A: MemLdRfVar from_stack_1.global_60
  loc_BE811D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8122: AryUnlock
  loc_BE8125: FFreeAd var_D0 = ""
  loc_BE812C: FFreeVar var_E4 = ""
  loc_BE8133: LitStr "Municipalidad de Guaymallén"
  loc_BE8136: LitStr "Municipalidad de General Alvear"
  loc_BE8139: EqStr
  loc_BE813B: BranchF loc_BE8211
  loc_BE813E: LitVarStr var_CC, "SELECT * FROM expediente WHERE ExpeInfo = '"
  loc_BE8143: FLdRfVar var_E4
  loc_BE8146: FLdRfVar var_190
  loc_BE8149: LitVarStr var_BC, "ExpeImpu"
  loc_BE814E: PopAdLdVar
  loc_BE814F: FLdRfVar var_EC
  loc_BE8152: FLdRfVar var_D0
  loc_BE8155: FLdPr var_1FC
  loc_BE8158: from_stack_1v = clsbase.RsFrmGet()
  loc_BE815D: FLdPr var_D0
  loc_BE8160:  = Me.Fields
  loc_BE8165: FLdPr var_EC
  loc_BE8168: from_stack_2 = Me.Item(from_stack_1)
  loc_BE816D: FLdPr var_190
  loc_BE8170:  = Me.Value
  loc_BE8175: FLdRfVar var_E4
  loc_BE8178: ConcatVar var_100
  loc_BE817C: LitVarStr var_120, "';"
  loc_BE8181: ConcatVar var_110
  loc_BE8185: CStrVarVal var_E8
  loc_BE8189: FLdPr Me
  loc_BE818C: MemLdRfVar from_stack_1.global_88
  loc_BE818F: NewIfNullPr clsbase
  loc_BE8192: Call clsbase.RedefineRS(from_stack_1v)
  loc_BE8197: FFree1Str var_E8
  loc_BE819A: FFreeAd var_D0 = "": var_EC = ""
  loc_BE81A3: FFreeVar var_E4 = "": var_100 = ""
  loc_BE81AC: FLdRfVar var_190
  loc_BE81AF: LitVarStr var_BC, "ExpeGDE"
  loc_BE81B4: PopAdLdVar
  loc_BE81B5: FLdRfVar var_EC
  loc_BE81B8: FLdRfVar var_D0
  loc_BE81BB: FLdPr Me
  loc_BE81BE: MemLdRfVar from_stack_1.global_88
  loc_BE81C1: NewIfNullPr clsbase
  loc_BE81C4: from_stack_1v = clsbase.RsFrmGet()
  loc_BE81C9: FLdPr var_D0
  loc_BE81CC:  = Me.Fields
  loc_BE81D1: FLdPr var_EC
  loc_BE81D4: from_stack_2 = Me.Item(from_stack_1)
  loc_BE81D9: LitI2_Byte 0
  loc_BE81DB: LitVar_Missing var_100
  loc_BE81DE: LitI2_Byte 0
  loc_BE81E0: FLdZeroAd var_190
  loc_BE81E3: CVarAd
  loc_BE81E7: PopAdLdVar
  loc_BE81E8: FLdPr Me
  loc_BE81EB: MemLdStr global_100
  loc_BE81EE: FLdPr Me
  loc_BE81F1: MemLdStr global_96
  loc_BE81F4: AryLock
  loc_BE81F7: Ary1LdPr
  loc_BE81F8: MemLdRfVar from_stack_1.global_40
  loc_BE81FB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8200: AryUnlock
  loc_BE8203: FFreeAd var_D0 = ""
  loc_BE820A: FFreeVar var_E4 = ""
  loc_BE8211: LitNothing
  loc_BE8213: FStAd var_1FC 
  loc_BE8217: LitStr "SELECT itemcompra.*, (CantItco * ImunItco) doImpoItco, DetaInsu, DetaOrga, DetaUnga"
  loc_BE821A: LitStr ", infogov.fnArmarJeraOrga(itemcompra.PeriInfo, itemcompra.CodiOrga) JeraOrga"
  loc_BE821D: ConcatStr
  loc_BE821E: FStStrNoPop var_E8
  loc_BE8221: LitStr " FROM itemcompra"
  loc_BE8224: ConcatStr
  loc_BE8225: FStStrNoPop var_F0
  loc_BE8228: LitStr " INNER JOIN infogov.insumo ON insumo.CodiInsu = itemcompra.CodiInsu"
  loc_BE822B: ConcatStr
  loc_BE822C: FStStrNoPop var_184
  loc_BE822F: LitStr " INNER JOIN infogov.organigrama ON organigrama.PeriInfo = itemcompra.PeriInfo AND organigrama.CodiOrga = itemcompra.CodiOrga"
  loc_BE8232: ConcatStr
  loc_BE8233: FStStrNoPop var_188
  loc_BE8236: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = itemcompra.CodiUnga"
  loc_BE8239: ConcatStr
  loc_BE823A: FStStrNoPop var_198
  loc_BE823D: LitStr " WHERE itemcompra.PeriInfo = "
  loc_BE8240: ConcatStr
  loc_BE8241: FStStrNoPop var_1A0
  loc_BE8244: FLdRfVar var_19C
  loc_BE8247: FLdPr Me
  loc_BE824A: VCallAd Control_ID_cboPeriodo
  loc_BE824D: FStAdFunc var_D0
  loc_BE8250: FLdPr var_D0
  loc_BE8253:  = Me.Text
  loc_BE8258: ILdRf var_19C
  loc_BE825B: ConcatStr
  loc_BE825C: FStStrNoPop var_1A4
  loc_BE825F: LitStr " AND CodiOrco = "
  loc_BE8262: ConcatStr
  loc_BE8263: FStStrNoPop var_1A8
  loc_BE8266: FLdPr Me
  loc_BE8269: MemLdStr global_100
  loc_BE826C: FLdPr Me
  loc_BE826F: MemLdStr global_96
  loc_BE8272: Ary1LdPr
  loc_BE8273: MemLdStr global_0
  loc_BE8276: ConcatStr
  loc_BE8277: FStStrNoPop var_1AC
  loc_BE827A: LitStr " ORDER BY CodiItco;"
  loc_BE827D: ConcatStr
  loc_BE827E: FStStrNoPop var_1B0
  loc_BE8281: FLdPr Me
  loc_BE8284: MemLdRfVar from_stack_1.global_84
  loc_BE8287: NewIfNullPr clsbase
  loc_BE828A: Call clsbase.RedefineRS(from_stack_1v)
  loc_BE828F: FFreeStr var_E8 = "": var_F0 = "": var_184 = "": var_188 = "": var_198 = "": var_1A0 = "": var_19C = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_BE82A8: FFree1Ad var_D0
  loc_BE82AB: FLdRfVar var_194
  loc_BE82AE: FLdPr Me
  loc_BE82B1: MemLdRfVar from_stack_1.global_84
  loc_BE82B4: NewIfNullPr clsbase
  loc_BE82B7: from_stack_1 = clsbase.RecordCount
  loc_BE82BC: LitI4 1
  loc_BE82C1: ILdRf var_194
  loc_BE82C4: FLdPr Me
  loc_BE82C7: MemLdStr global_100
  loc_BE82CA: FLdPr Me
  loc_BE82CD: MemLdStr global_96
  loc_BE82D0: Ary1LdPr
  loc_BE82D1: MemLdRfVar from_stack_1.global_64
  loc_BE82D4: Redim
  loc_BE82DE: FLdPr Me
  loc_BE82E1: MemLdRfVar from_stack_1.global_84
  loc_BE82E4: NewIfNullPr clsbase
  loc_BE82E7: Call clsbase.MoveFirst()
  loc_BE82EC: LitI4 1
  loc_BE82F1: FLdPr Me
  loc_BE82F4: MemLdRfVar from_stack_1.global_104
  loc_BE82F7: FLdPr Me
  loc_BE82FA: MemLdStr global_100
  loc_BE82FD: FLdPr Me
  loc_BE8300: MemLdStr global_96
  loc_BE8303: Ary1LdPr
  loc_BE8304: MemLdStr global_64
  loc_BE8307: LitI2_Byte 1
  loc_BE8309: FnUBound
  loc_BE830B: ForI4 var_208
  loc_BE8311: FLdPr Me
  loc_BE8314: MemLdRfVar from_stack_1.global_84
  loc_BE8317: NewIfNullAd
  loc_BE831A: FStAd var_20C 
  loc_BE831E: FLdRfVar var_190
  loc_BE8321: LitVarStr var_BC, "CodiItco"
  loc_BE8326: PopAdLdVar
  loc_BE8327: FLdRfVar var_EC
  loc_BE832A: FLdRfVar var_D0
  loc_BE832D: FLdPr var_20C
  loc_BE8330: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8335: FLdPr var_D0
  loc_BE8338:  = Me.Fields
  loc_BE833D: FLdPr var_EC
  loc_BE8340: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8345: LitI2_Byte 0
  loc_BE8347: LitVar_Missing var_100
  loc_BE834A: LitI2_Byte 0
  loc_BE834C: FLdZeroAd var_190
  loc_BE834F: CVarAd
  loc_BE8353: PopAdLdVar
  loc_BE8354: FLdPr Me
  loc_BE8357: MemLdStr global_104
  loc_BE835A: FLdPr Me
  loc_BE835D: MemLdStr global_100
  loc_BE8360: FLdPr Me
  loc_BE8363: MemLdStr global_96
  loc_BE8366: AryLock
  loc_BE8369: Ary1LdPr
  loc_BE836A: MemLdStr global_64
  loc_BE836D: AryLock
  loc_BE8370: Ary1LdPr
  loc_BE8371: MemLdRfVar from_stack_1.global_0
  loc_BE8374: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8379: AryUnlock
  loc_BE837C: AryUnlock
  loc_BE837F: FFreeAd var_D0 = ""
  loc_BE8386: FFreeVar var_E4 = ""
  loc_BE838D: FLdRfVar var_190
  loc_BE8390: LitVarStr var_BC, "AlteItco"
  loc_BE8395: PopAdLdVar
  loc_BE8396: FLdRfVar var_EC
  loc_BE8399: FLdRfVar var_D0
  loc_BE839C: FLdPr var_20C
  loc_BE839F: from_stack_1v = clsbase.RsFrmGet()
  loc_BE83A4: FLdPr var_D0
  loc_BE83A7:  = Me.Fields
  loc_BE83AC: FLdPr var_EC
  loc_BE83AF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE83B4: LitI2_Byte 0
  loc_BE83B6: LitVar_Missing var_100
  loc_BE83B9: LitI2_Byte 0
  loc_BE83BB: FLdZeroAd var_190
  loc_BE83BE: CVarAd
  loc_BE83C2: PopAdLdVar
  loc_BE83C3: FLdPr Me
  loc_BE83C6: MemLdStr global_104
  loc_BE83C9: FLdPr Me
  loc_BE83CC: MemLdStr global_100
  loc_BE83CF: FLdPr Me
  loc_BE83D2: MemLdStr global_96
  loc_BE83D5: AryLock
  loc_BE83D8: Ary1LdPr
  loc_BE83D9: MemLdStr global_64
  loc_BE83DC: AryLock
  loc_BE83DF: Ary1LdPr
  loc_BE83E0: MemLdRfVar from_stack_1.global_4
  loc_BE83E3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE83E8: AryUnlock
  loc_BE83EB: AryUnlock
  loc_BE83EE: FFreeAd var_D0 = ""
  loc_BE83F5: FFreeVar var_E4 = ""
  loc_BE83FC: FLdRfVar var_190
  loc_BE83FF: LitVarStr var_BC, "DetaItco"
  loc_BE8404: PopAdLdVar
  loc_BE8405: FLdRfVar var_EC
  loc_BE8408: FLdRfVar var_D0
  loc_BE840B: FLdPr var_20C
  loc_BE840E: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8413: FLdPr var_D0
  loc_BE8416:  = Me.Fields
  loc_BE841B: FLdPr var_EC
  loc_BE841E: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8423: LitI2_Byte 0
  loc_BE8425: LitVar_Missing var_100
  loc_BE8428: LitI2_Byte 0
  loc_BE842A: FLdZeroAd var_190
  loc_BE842D: CVarAd
  loc_BE8431: PopAdLdVar
  loc_BE8432: FLdPr Me
  loc_BE8435: MemLdStr global_104
  loc_BE8438: FLdPr Me
  loc_BE843B: MemLdStr global_100
  loc_BE843E: FLdPr Me
  loc_BE8441: MemLdStr global_96
  loc_BE8444: AryLock
  loc_BE8447: Ary1LdPr
  loc_BE8448: MemLdStr global_64
  loc_BE844B: AryLock
  loc_BE844E: Ary1LdPr
  loc_BE844F: MemLdRfVar from_stack_1.global_16
  loc_BE8452: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8457: AryUnlock
  loc_BE845A: AryUnlock
  loc_BE845D: FFreeAd var_D0 = ""
  loc_BE8464: FFreeVar var_E4 = ""
  loc_BE846B: FLdRfVar var_190
  loc_BE846E: LitVarStr var_BC, "MarcaItco"
  loc_BE8473: PopAdLdVar
  loc_BE8474: FLdRfVar var_EC
  loc_BE8477: FLdRfVar var_D0
  loc_BE847A: FLdPr var_20C
  loc_BE847D: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8482: FLdPr var_D0
  loc_BE8485:  = Me.Fields
  loc_BE848A: FLdPr var_EC
  loc_BE848D: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8492: LitI2_Byte 0
  loc_BE8494: LitVar_Missing var_100
  loc_BE8497: LitI2_Byte 0
  loc_BE8499: FLdZeroAd var_190
  loc_BE849C: CVarAd
  loc_BE84A0: PopAdLdVar
  loc_BE84A1: FLdPr Me
  loc_BE84A4: MemLdStr global_104
  loc_BE84A7: FLdPr Me
  loc_BE84AA: MemLdStr global_100
  loc_BE84AD: FLdPr Me
  loc_BE84B0: MemLdStr global_96
  loc_BE84B3: AryLock
  loc_BE84B6: Ary1LdPr
  loc_BE84B7: MemLdStr global_64
  loc_BE84BA: AryLock
  loc_BE84BD: Ary1LdPr
  loc_BE84BE: MemLdRfVar from_stack_1.global_20
  loc_BE84C1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE84C6: AryUnlock
  loc_BE84C9: AryUnlock
  loc_BE84CC: FFreeAd var_D0 = ""
  loc_BE84D3: FFreeVar var_E4 = ""
  loc_BE84DA: FLdRfVar var_190
  loc_BE84DD: LitVarStr var_BC, "CaraItco"
  loc_BE84E2: PopAdLdVar
  loc_BE84E3: FLdRfVar var_EC
  loc_BE84E6: FLdRfVar var_D0
  loc_BE84E9: FLdPr var_20C
  loc_BE84EC: from_stack_1v = clsbase.RsFrmGet()
  loc_BE84F1: FLdPr var_D0
  loc_BE84F4:  = Me.Fields
  loc_BE84F9: FLdPr var_EC
  loc_BE84FC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8501: LitI2_Byte 0
  loc_BE8503: LitVar_Missing var_100
  loc_BE8506: LitI2_Byte 0
  loc_BE8508: FLdZeroAd var_190
  loc_BE850B: CVarAd
  loc_BE850F: PopAdLdVar
  loc_BE8510: FLdPr Me
  loc_BE8513: MemLdStr global_104
  loc_BE8516: FLdPr Me
  loc_BE8519: MemLdStr global_100
  loc_BE851C: FLdPr Me
  loc_BE851F: MemLdStr global_96
  loc_BE8522: AryLock
  loc_BE8525: Ary1LdPr
  loc_BE8526: MemLdStr global_64
  loc_BE8529: AryLock
  loc_BE852C: Ary1LdPr
  loc_BE852D: MemLdRfVar from_stack_1.global_24
  loc_BE8530: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8535: AryUnlock
  loc_BE8538: AryUnlock
  loc_BE853B: FFreeAd var_D0 = ""
  loc_BE8542: FFreeVar var_E4 = ""
  loc_BE8549: FLdRfVar var_190
  loc_BE854C: LitVarStr var_BC, "CodiInsu"
  loc_BE8551: PopAdLdVar
  loc_BE8552: FLdRfVar var_EC
  loc_BE8555: FLdRfVar var_D0
  loc_BE8558: FLdPr var_20C
  loc_BE855B: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8560: FLdPr var_D0
  loc_BE8563:  = Me.Fields
  loc_BE8568: FLdPr var_EC
  loc_BE856B: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8570: LitI2_Byte 0
  loc_BE8572: LitVar_Missing var_100
  loc_BE8575: LitI2_Byte 0
  loc_BE8577: FLdZeroAd var_190
  loc_BE857A: CVarAd
  loc_BE857E: PopAdLdVar
  loc_BE857F: FLdPr Me
  loc_BE8582: MemLdStr global_104
  loc_BE8585: FLdPr Me
  loc_BE8588: MemLdStr global_100
  loc_BE858B: FLdPr Me
  loc_BE858E: MemLdStr global_96
  loc_BE8591: AryLock
  loc_BE8594: Ary1LdPr
  loc_BE8595: MemLdStr global_64
  loc_BE8598: AryLock
  loc_BE859B: Ary1LdPr
  loc_BE859C: MemLdRfVar from_stack_1.global_8
  loc_BE859F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE85A4: AryUnlock
  loc_BE85A7: AryUnlock
  loc_BE85AA: FFreeAd var_D0 = ""
  loc_BE85B1: FFreeVar var_E4 = ""
  loc_BE85B8: FLdRfVar var_190
  loc_BE85BB: LitVarStr var_BC, "DetaInsu"
  loc_BE85C0: PopAdLdVar
  loc_BE85C1: FLdRfVar var_EC
  loc_BE85C4: FLdRfVar var_D0
  loc_BE85C7: FLdPr var_20C
  loc_BE85CA: from_stack_1v = clsbase.RsFrmGet()
  loc_BE85CF: FLdPr var_D0
  loc_BE85D2:  = Me.Fields
  loc_BE85D7: FLdPr var_EC
  loc_BE85DA: from_stack_2 = Me.Item(from_stack_1)
  loc_BE85DF: LitI2_Byte 0
  loc_BE85E1: LitVar_Missing var_100
  loc_BE85E4: LitI2_Byte 0
  loc_BE85E6: FLdZeroAd var_190
  loc_BE85E9: CVarAd
  loc_BE85ED: PopAdLdVar
  loc_BE85EE: FLdPr Me
  loc_BE85F1: MemLdStr global_104
  loc_BE85F4: FLdPr Me
  loc_BE85F7: MemLdStr global_100
  loc_BE85FA: FLdPr Me
  loc_BE85FD: MemLdStr global_96
  loc_BE8600: AryLock
  loc_BE8603: Ary1LdPr
  loc_BE8604: MemLdStr global_64
  loc_BE8607: AryLock
  loc_BE860A: Ary1LdPr
  loc_BE860B: MemLdRfVar from_stack_1.global_12
  loc_BE860E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8613: AryUnlock
  loc_BE8616: AryUnlock
  loc_BE8619: FFreeAd var_D0 = ""
  loc_BE8620: FFreeVar var_E4 = ""
  loc_BE8627: FLdRfVar var_190
  loc_BE862A: LitVarStr var_BC, "CantItco"
  loc_BE862F: PopAdLdVar
  loc_BE8630: FLdRfVar var_EC
  loc_BE8633: FLdRfVar var_D0
  loc_BE8636: FLdPr var_20C
  loc_BE8639: from_stack_1v = clsbase.RsFrmGet()
  loc_BE863E: FLdPr var_D0
  loc_BE8641:  = Me.Fields
  loc_BE8646: FLdPr var_EC
  loc_BE8649: from_stack_2 = Me.Item(from_stack_1)
  loc_BE864E: LitI2_Byte 0
  loc_BE8650: LitVar_Missing var_100
  loc_BE8653: LitI2_Byte 0
  loc_BE8655: FLdZeroAd var_190
  loc_BE8658: CVarAd
  loc_BE865C: PopAdLdVar
  loc_BE865D: FLdPr Me
  loc_BE8660: MemLdStr global_104
  loc_BE8663: FLdPr Me
  loc_BE8666: MemLdStr global_100
  loc_BE8669: FLdPr Me
  loc_BE866C: MemLdStr global_96
  loc_BE866F: AryLock
  loc_BE8672: Ary1LdPr
  loc_BE8673: MemLdStr global_64
  loc_BE8676: AryLock
  loc_BE8679: Ary1LdPr
  loc_BE867A: MemLdRfVar from_stack_1.global_28
  loc_BE867D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8682: AryUnlock
  loc_BE8685: AryUnlock
  loc_BE8688: FFreeAd var_D0 = ""
  loc_BE868F: FFreeVar var_E4 = ""
  loc_BE8696: FLdRfVar var_190
  loc_BE8699: LitVarStr var_BC, "ImunItco"
  loc_BE869E: PopAdLdVar
  loc_BE869F: FLdRfVar var_EC
  loc_BE86A2: FLdRfVar var_D0
  loc_BE86A5: FLdPr var_20C
  loc_BE86A8: from_stack_1v = clsbase.RsFrmGet()
  loc_BE86AD: FLdPr var_D0
  loc_BE86B0:  = Me.Fields
  loc_BE86B5: FLdPr var_EC
  loc_BE86B8: from_stack_2 = Me.Item(from_stack_1)
  loc_BE86BD: LitI4 -1
  loc_BE86C2: LitI4 0
  loc_BE86C7: LitI4 -1
  loc_BE86CC: LitI4 3
  loc_BE86D1: FLdZeroAd var_190
  loc_BE86D4: CVarAd
  loc_BE86D8: ImpAdCallI2 FormatNumber(, , , , )
  loc_BE86DD: FStStr var_E8
  loc_BE86E0: LitI2_Byte 0
  loc_BE86E2: LitVar_Missing var_110
  loc_BE86E5: LitI2_Byte 0
  loc_BE86E7: FLdZeroAd var_E8
  loc_BE86EA: CVarStr var_100
  loc_BE86ED: PopAdLdVar
  loc_BE86EE: FLdPr Me
  loc_BE86F1: MemLdStr global_104
  loc_BE86F4: FLdPr Me
  loc_BE86F7: MemLdStr global_100
  loc_BE86FA: FLdPr Me
  loc_BE86FD: MemLdStr global_96
  loc_BE8700: AryLock
  loc_BE8703: Ary1LdPr
  loc_BE8704: MemLdStr global_64
  loc_BE8707: AryLock
  loc_BE870A: Ary1LdPr
  loc_BE870B: MemLdRfVar from_stack_1.global_32
  loc_BE870E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8713: AryUnlock
  loc_BE8716: AryUnlock
  loc_BE8719: FFree1Str var_E8
  loc_BE871C: FFreeAd var_D0 = ""
  loc_BE8723: FFreeVar var_E4 = "": var_100 = ""
  loc_BE872C: FLdRfVar var_190
  loc_BE872F: LitVarStr var_BC, "doImpoItco"
  loc_BE8734: PopAdLdVar
  loc_BE8735: FLdRfVar var_EC
  loc_BE8738: FLdRfVar var_D0
  loc_BE873B: FLdPr var_20C
  loc_BE873E: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8743: FLdPr var_D0
  loc_BE8746:  = Me.Fields
  loc_BE874B: FLdPr var_EC
  loc_BE874E: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8753: LitI2_Byte 2
  loc_BE8755: CUI1I2
  loc_BE8757: FLdPr Me
  loc_BE875A: MemLdStr global_100
  loc_BE875D: FLdPr Me
  loc_BE8760: MemLdStr global_96
  loc_BE8763: AryLock
  loc_BE8766: Ary1LdPr
  loc_BE8767: MemLdRfVar from_stack_1.bGenerado
  loc_BE876A: CVarRef
  loc_BE876F: LitI2_Byte &HFF
  loc_BE8771: FLdZeroAd var_190
  loc_BE8774: CVarAd
  loc_BE8778: PopAdLdVar
  loc_BE8779: FLdPr Me
  loc_BE877C: MemLdStr global_104
  loc_BE877F: FLdPr Me
  loc_BE8782: MemLdStr global_100
  loc_BE8785: FLdPr Me
  loc_BE8788: MemLdStr global_96
  loc_BE878B: AryLock
  loc_BE878E: Ary1LdPr
  loc_BE878F: MemLdStr global_64
  loc_BE8792: AryLock
  loc_BE8795: Ary1LdPr
  loc_BE8796: MemLdRfVar from_stack_1.global_36
  loc_BE8799: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE879E: AryUnlock
  loc_BE87A1: AryUnlock
  loc_BE87A4: AryUnlock
  loc_BE87A7: FFreeAd var_D0 = ""
  loc_BE87AE: FFree1Var var_E4 = ""
  loc_BE87B1: FLdRfVar var_190
  loc_BE87B4: LitVarStr var_BC, "CodiPart"
  loc_BE87B9: PopAdLdVar
  loc_BE87BA: FLdRfVar var_EC
  loc_BE87BD: FLdRfVar var_D0
  loc_BE87C0: FLdPr var_20C
  loc_BE87C3: from_stack_1v = clsbase.RsFrmGet()
  loc_BE87C8: FLdPr var_D0
  loc_BE87CB:  = Me.Fields
  loc_BE87D0: FLdPr var_EC
  loc_BE87D3: from_stack_2 = Me.Item(from_stack_1)
  loc_BE87D8: LitI2_Byte 0
  loc_BE87DA: LitVar_Missing var_100
  loc_BE87DD: LitI2_Byte 0
  loc_BE87DF: FLdZeroAd var_190
  loc_BE87E2: CVarAd
  loc_BE87E6: PopAdLdVar
  loc_BE87E7: FLdPr Me
  loc_BE87EA: MemLdStr global_104
  loc_BE87ED: FLdPr Me
  loc_BE87F0: MemLdStr global_100
  loc_BE87F3: FLdPr Me
  loc_BE87F6: MemLdStr global_96
  loc_BE87F9: AryLock
  loc_BE87FC: Ary1LdPr
  loc_BE87FD: MemLdStr global_64
  loc_BE8800: AryLock
  loc_BE8803: Ary1LdPr
  loc_BE8804: MemLdRfVar from_stack_1.global_40
  loc_BE8807: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE880C: AryUnlock
  loc_BE880F: AryUnlock
  loc_BE8812: FFreeAd var_D0 = ""
  loc_BE8819: FFreeVar var_E4 = ""
  loc_BE8820: FLdRfVar var_190
  loc_BE8823: LitVarStr var_BC, "CodiOrga"
  loc_BE8828: PopAdLdVar
  loc_BE8829: FLdRfVar var_EC
  loc_BE882C: FLdRfVar var_D0
  loc_BE882F: FLdPr var_20C
  loc_BE8832: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8837: FLdPr var_D0
  loc_BE883A:  = Me.Fields
  loc_BE883F: FLdPr var_EC
  loc_BE8842: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8847: LitI2_Byte 0
  loc_BE8849: LitVar_Missing var_100
  loc_BE884C: LitI2_Byte 0
  loc_BE884E: FLdZeroAd var_190
  loc_BE8851: CVarAd
  loc_BE8855: PopAdLdVar
  loc_BE8856: FLdPr Me
  loc_BE8859: MemLdStr global_104
  loc_BE885C: FLdPr Me
  loc_BE885F: MemLdStr global_100
  loc_BE8862: FLdPr Me
  loc_BE8865: MemLdStr global_96
  loc_BE8868: AryLock
  loc_BE886B: Ary1LdPr
  loc_BE886C: MemLdStr global_64
  loc_BE886F: AryLock
  loc_BE8872: Ary1LdPr
  loc_BE8873: MemLdRfVar from_stack_1.global_44
  loc_BE8876: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE887B: AryUnlock
  loc_BE887E: AryUnlock
  loc_BE8881: FFreeAd var_D0 = ""
  loc_BE8888: FFreeVar var_E4 = ""
  loc_BE888F: FLdRfVar var_190
  loc_BE8892: LitVarStr var_BC, "JeraOrga"
  loc_BE8897: PopAdLdVar
  loc_BE8898: FLdRfVar var_EC
  loc_BE889B: FLdRfVar var_D0
  loc_BE889E: FLdPr var_20C
  loc_BE88A1: from_stack_1v = clsbase.RsFrmGet()
  loc_BE88A6: FLdPr var_D0
  loc_BE88A9:  = Me.Fields
  loc_BE88AE: FLdPr var_EC
  loc_BE88B1: from_stack_2 = Me.Item(from_stack_1)
  loc_BE88B6: LitI2_Byte 0
  loc_BE88B8: LitVar_Missing var_100
  loc_BE88BB: LitI2_Byte 0
  loc_BE88BD: FLdZeroAd var_190
  loc_BE88C0: CVarAd
  loc_BE88C4: PopAdLdVar
  loc_BE88C5: FLdPr Me
  loc_BE88C8: MemLdStr global_104
  loc_BE88CB: FLdPr Me
  loc_BE88CE: MemLdStr global_100
  loc_BE88D1: FLdPr Me
  loc_BE88D4: MemLdStr global_96
  loc_BE88D7: AryLock
  loc_BE88DA: Ary1LdPr
  loc_BE88DB: MemLdStr global_64
  loc_BE88DE: AryLock
  loc_BE88E1: Ary1LdPr
  loc_BE88E2: MemLdRfVar from_stack_1.global_48
  loc_BE88E5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE88EA: AryUnlock
  loc_BE88ED: AryUnlock
  loc_BE88F0: FFreeAd var_D0 = ""
  loc_BE88F7: FFreeVar var_E4 = ""
  loc_BE88FE: FLdRfVar var_190
  loc_BE8901: LitVarStr var_BC, "DetaOrga"
  loc_BE8906: PopAdLdVar
  loc_BE8907: FLdRfVar var_EC
  loc_BE890A: FLdRfVar var_D0
  loc_BE890D: FLdPr var_20C
  loc_BE8910: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8915: FLdPr var_D0
  loc_BE8918:  = Me.Fields
  loc_BE891D: FLdPr var_EC
  loc_BE8920: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8925: LitI2_Byte 0
  loc_BE8927: LitVar_Missing var_100
  loc_BE892A: LitI2_Byte 0
  loc_BE892C: FLdZeroAd var_190
  loc_BE892F: CVarAd
  loc_BE8933: PopAdLdVar
  loc_BE8934: FLdPr Me
  loc_BE8937: MemLdStr global_104
  loc_BE893A: FLdPr Me
  loc_BE893D: MemLdStr global_100
  loc_BE8940: FLdPr Me
  loc_BE8943: MemLdStr global_96
  loc_BE8946: AryLock
  loc_BE8949: Ary1LdPr
  loc_BE894A: MemLdStr global_64
  loc_BE894D: AryLock
  loc_BE8950: Ary1LdPr
  loc_BE8951: MemLdRfVar from_stack_1.htmFile
  loc_BE8954: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8959: AryUnlock
  loc_BE895C: AryUnlock
  loc_BE895F: FFreeAd var_D0 = ""
  loc_BE8966: FFreeVar var_E4 = ""
  loc_BE896D: FLdRfVar var_190
  loc_BE8970: LitVarStr var_BC, "CodiUnga"
  loc_BE8975: PopAdLdVar
  loc_BE8976: FLdRfVar var_EC
  loc_BE8979: FLdRfVar var_D0
  loc_BE897C: FLdPr var_20C
  loc_BE897F: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8984: FLdPr var_D0
  loc_BE8987:  = Me.Fields
  loc_BE898C: FLdPr var_EC
  loc_BE898F: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8994: LitI2_Byte 0
  loc_BE8996: LitVar_Missing var_100
  loc_BE8999: LitI2_Byte 0
  loc_BE899B: FLdZeroAd var_190
  loc_BE899E: CVarAd
  loc_BE89A2: PopAdLdVar
  loc_BE89A3: FLdPr Me
  loc_BE89A6: MemLdStr global_104
  loc_BE89A9: FLdPr Me
  loc_BE89AC: MemLdStr global_100
  loc_BE89AF: FLdPr Me
  loc_BE89B2: MemLdStr global_96
  loc_BE89B5: AryLock
  loc_BE89B8: Ary1LdPr
  loc_BE89B9: MemLdStr global_64
  loc_BE89BC: AryLock
  loc_BE89BF: Ary1LdPr
  loc_BE89C0: MemLdRfVar from_stack_1.global_56
  loc_BE89C3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE89C8: AryUnlock
  loc_BE89CB: AryUnlock
  loc_BE89CE: FFreeAd var_D0 = ""
  loc_BE89D5: FFreeVar var_E4 = ""
  loc_BE89DC: FLdRfVar var_190
  loc_BE89DF: LitVarStr var_BC, "DetaUnga"
  loc_BE89E4: PopAdLdVar
  loc_BE89E5: FLdRfVar var_EC
  loc_BE89E8: FLdRfVar var_D0
  loc_BE89EB: FLdPr var_20C
  loc_BE89EE: from_stack_1v = clsbase.RsFrmGet()
  loc_BE89F3: FLdPr var_D0
  loc_BE89F6:  = Me.Fields
  loc_BE89FB: FLdPr var_EC
  loc_BE89FE: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8A03: LitI2_Byte 0
  loc_BE8A05: LitVar_Missing var_100
  loc_BE8A08: LitI2_Byte 0
  loc_BE8A0A: FLdZeroAd var_190
  loc_BE8A0D: CVarAd
  loc_BE8A11: PopAdLdVar
  loc_BE8A12: FLdPr Me
  loc_BE8A15: MemLdStr global_104
  loc_BE8A18: FLdPr Me
  loc_BE8A1B: MemLdStr global_100
  loc_BE8A1E: FLdPr Me
  loc_BE8A21: MemLdStr global_96
  loc_BE8A24: AryLock
  loc_BE8A27: Ary1LdPr
  loc_BE8A28: MemLdStr global_64
  loc_BE8A2B: AryLock
  loc_BE8A2E: Ary1LdPr
  loc_BE8A2F: MemLdRfVar from_stack_1.global_60
  loc_BE8A32: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8A37: AryUnlock
  loc_BE8A3A: AryUnlock
  loc_BE8A3D: FFreeAd var_D0 = ""
  loc_BE8A44: FFreeVar var_E4 = ""
  loc_BE8A4B: FLdRfVar var_190
  loc_BE8A4E: LitVarStr var_BC, "CodiFifu"
  loc_BE8A53: PopAdLdVar
  loc_BE8A54: FLdRfVar var_EC
  loc_BE8A57: FLdRfVar var_D0
  loc_BE8A5A: FLdPr var_20C
  loc_BE8A5D: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8A62: FLdPr var_D0
  loc_BE8A65:  = Me.Fields
  loc_BE8A6A: FLdPr var_EC
  loc_BE8A6D: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8A72: LitI2_Byte 0
  loc_BE8A74: LitVar_Missing var_100
  loc_BE8A77: LitI2_Byte 0
  loc_BE8A79: FLdZeroAd var_190
  loc_BE8A7C: CVarAd
  loc_BE8A80: PopAdLdVar
  loc_BE8A81: FLdPr Me
  loc_BE8A84: MemLdStr global_104
  loc_BE8A87: FLdPr Me
  loc_BE8A8A: MemLdStr global_100
  loc_BE8A8D: FLdPr Me
  loc_BE8A90: MemLdStr global_96
  loc_BE8A93: AryLock
  loc_BE8A96: Ary1LdPr
  loc_BE8A97: MemLdStr global_64
  loc_BE8A9A: AryLock
  loc_BE8A9D: Ary1LdPr
  loc_BE8A9E: MemLdRfVar from_stack_1.global_64
  loc_BE8AA1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8AA6: AryUnlock
  loc_BE8AA9: AryUnlock
  loc_BE8AAC: FFreeAd var_D0 = ""
  loc_BE8AB3: FFreeVar var_E4 = ""
  loc_BE8ABA: FLdRfVar var_190
  loc_BE8ABD: LitVarStr var_BC, "IdImpu"
  loc_BE8AC2: PopAdLdVar
  loc_BE8AC3: FLdRfVar var_EC
  loc_BE8AC6: FLdRfVar var_D0
  loc_BE8AC9: FLdPr var_20C
  loc_BE8ACC: from_stack_1v = clsbase.RsFrmGet()
  loc_BE8AD1: FLdPr var_D0
  loc_BE8AD4:  = Me.Fields
  loc_BE8AD9: FLdPr var_EC
  loc_BE8ADC: from_stack_2 = Me.Item(from_stack_1)
  loc_BE8AE1: LitI2_Byte 0
  loc_BE8AE3: LitVar_Missing var_100
  loc_BE8AE6: LitI2_Byte 0
  loc_BE8AE8: FLdZeroAd var_190
  loc_BE8AEB: CVarAd
  loc_BE8AEF: PopAdLdVar
  loc_BE8AF0: FLdPr Me
  loc_BE8AF3: MemLdStr global_104
  loc_BE8AF6: FLdPr Me
  loc_BE8AF9: MemLdStr global_100
  loc_BE8AFC: FLdPr Me
  loc_BE8AFF: MemLdStr global_96
  loc_BE8B02: AryLock
  loc_BE8B05: Ary1LdPr
  loc_BE8B06: MemLdStr global_64
  loc_BE8B09: AryLock
  loc_BE8B0C: Ary1LdPr
  loc_BE8B0D: MemLdRfVar from_stack_1.bGenerado
  loc_BE8B10: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_BE8B15: AryUnlock
  loc_BE8B18: AryUnlock
  loc_BE8B1B: FFreeAd var_D0 = ""
  loc_BE8B22: FFreeVar var_E4 = ""
  loc_BE8B29: FLdPr var_20C
  loc_BE8B2C: Call clsbase.MoveSiguiente()
  loc_BE8B31: LitNothing
  loc_BE8B33: FStAd var_20C 
  loc_BE8B37: FLdPr Me
  loc_BE8B3A: MemLdRfVar from_stack_1.global_104
  loc_BE8B3D: NextI4 var_208, loc_BE8311
  loc_BE8B42: FLdPr Me
  loc_BE8B45: MemLdRfVar from_stack_1.global_80
  loc_BE8B48: NewIfNullPr clsbase
  loc_BE8B4B: Call clsbase.MoveSiguiente()
  loc_BE8B50: FLdPr Me
  loc_BE8B53: MemLdRfVar from_stack_1.global_100
  loc_BE8B56: NextI4 var_1F8, loc_BE7B95
  loc_BE8B5B: LitI2_Byte &HFF
  loc_BE8B5D: FLdPr Me
  loc_BE8B60: MemStI2 bGenerado
  loc_BE8B63: LitI4 0
  loc_BE8B68: CI2I4
  loc_BE8B69: FLdPr Me
  loc_BE8B6C: Me.MousePointer = from_stack_1
  loc_BE8B71: LitVarStr var_BC, vbNullString
  loc_BE8B76: PopAdLdVar
  loc_BE8B77: FLdPr Me
  loc_BE8B7A: VCallAd Control_ID_statusBar
  loc_BE8B7D: FStAdFunc var_D0
  loc_BE8B80: FLdPr var_D0
  loc_BE8B83: LateIdSt
  loc_BE8B88: FFree1Ad var_D0
  loc_BE8B8B: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() 'A3348C
  'Data Table: 4F7D24
  loc_A332C0: LitI4 0
  loc_A332C5: LitI4 &H11
  loc_A332CA: FLdRfVar var_88
  loc_A332CD: Redim
  loc_A332D7: FLdPr Me
  loc_A332DA: VCallAd Control_ID_cboPeriodo
  loc_A332DD: CVarAd
  loc_A332E1: ParmAry1St
  loc_A332E7: FLdPr Me
  loc_A332EA: VCallAd Control_ID_MskDesde
  loc_A332ED: CVarAd
  loc_A332F1: ParmAry1St
  loc_A332F7: FLdPr Me
  loc_A332FA: VCallAd Control_ID_FechOrcoDesdeCmd
  loc_A332FD: CVarAd
  loc_A33301: ParmAry1St
  loc_A33307: FLdPr Me
  loc_A3330A: VCallAd Control_ID_MskHasta
  loc_A3330D: CVarAd
  loc_A33311: ParmAry1St
  loc_A33317: FLdPr Me
  loc_A3331A: VCallAd Control_ID_FechOrcoHastaCmd
  loc_A3331D: CVarAd
  loc_A33321: ParmAry1St
  loc_A33327: FLdPr Me
  loc_A3332A: VCallAd Control_ID_CodiOrcoTxt
  loc_A3332D: CVarAd
  loc_A33331: ParmAry1St
  loc_A33337: FLdPr Me
  loc_A3333A: VCallAd Control_ID_cboExpeImpu
  loc_A3333D: CVarAd
  loc_A33341: ParmAry1St
  loc_A33347: FLdPr Me
  loc_A3334A: VCallAd Control_ID_chkHojasSeparadas
  loc_A3334D: CVarAd
  loc_A33351: ParmAry1St
  loc_A33357: FLdPr Me
  loc_A3335A: VCallAd Control_ID_chkSoloAnuladas
  loc_A3335D: CVarAd
  loc_A33361: ParmAry1St
  loc_A33367: FLdPr Me
  loc_A3336A: VCallAd Control_ID_CucuPersMsk
  loc_A3336D: CVarAd
  loc_A33371: ParmAry1St
  loc_A33377: FLdPr Me
  loc_A3337A: VCallAd Control_ID_CucuPersCmd
  loc_A3337D: CVarAd
  loc_A33381: ParmAry1St
  loc_A33387: FLdPr Me
  loc_A3338A: VCallAd Control_ID_CodiNopeMsk
  loc_A3338D: CVarAd
  loc_A33391: ParmAry1St
  loc_A33397: FLdPr Me
  loc_A3339A: VCallAd Control_ID_cboJuri
  loc_A3339D: CVarAd
  loc_A333A1: ParmAry1St
  loc_A333A7: FLdPr Me
  loc_A333AA: VCallAd Control_ID_chkSoloEncabezados
  loc_A333AD: CVarAd
  loc_A333B1: ParmAry1St
  loc_A333B7: FLdPr Me
  loc_A333BA: VCallAd Control_ID_CodiPartMsk
  loc_A333BD: CVarAd
  loc_A333C1: ParmAry1St
  loc_A333C7: FLdPr Me
  loc_A333CA: VCallAd Control_ID_cmdCodiPart
  loc_A333CD: CVarAd
  loc_A333D1: ParmAry1St
  loc_A333D7: FLdPr Me
  loc_A333DA: VCallAd Control_ID_CodiOrgaMsk
  loc_A333DD: CVarAd
  loc_A333E1: ParmAry1St
  loc_A333E7: FLdPr Me
  loc_A333EA: VCallAd Control_ID_CodiOrgaCmd
  loc_A333ED: CVarAd
  loc_A333F1: ParmAry1St
  loc_A333F7: FLdRfVar var_88
  loc_A333FA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A333FF: FLdRfVar var_88
  loc_A33402: Erase
  loc_A33403: LitI4 0
  loc_A33408: LitI4 2
  loc_A3340D: FLdRfVar var_88
  loc_A33410: Redim
  loc_A3341A: FLdPr Me
  loc_A3341D: VCallAd Control_ID_optMostrarTodas
  loc_A33420: CVarAd
  loc_A33424: ParmAry1St
  loc_A3342A: FLdPr Me
  loc_A3342D: VCallAd Control_ID_optMostrarSinDef
  loc_A33430: CVarAd
  loc_A33434: ParmAry1St
  loc_A3343A: FLdPr Me
  loc_A3343D: VCallAd Control_ID_optMostrarConDef
  loc_A33440: CVarAd
  loc_A33444: ParmAry1St
  loc_A3344A: FLdRfVar var_88
  loc_A3344D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A33452: FLdRfVar var_88
  loc_A33455: Erase
  loc_A33456: LitI4 0
  loc_A3345B: LitI4 0
  loc_A33460: FLdRfVar var_88
  loc_A33463: Redim
  loc_A3346D: FLdPr Me
  loc_A33470: VCallAd Control_ID_cboTipoCompra
  loc_A33473: CVarAd
  loc_A33477: ParmAry1St
  loc_A3347D: FLdRfVar var_88
  loc_A33480: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A33485: FLdRfVar var_88
  loc_A33488: Erase
  loc_A33489: ExitProcHresult
End Sub

Private Function Proc_200_39_B42534() 'B42534
  'Data Table: 4F7D24
  loc_B41AD4: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_B41AD9: PopAdLdVar
  loc_B41ADA: FLdPr Me
  loc_B41ADD: MemLdRfVar from_stack_1.htmFile
  loc_B41AE0: LdPrVar
  loc_B41AE2: LateMemCall
  loc_B41AE8: LitVarStr var_94, "  <tr align=""left"" valign=""top"" class=""Normal"" nowrap=""nowrap"">"
  loc_B41AED: PopAdLdVar
  loc_B41AEE: FLdPr Me
  loc_B41AF1: MemLdRfVar from_stack_1.htmFile
  loc_B41AF4: LdPrVar
  loc_B41AF6: LateMemCall
  loc_B41AFC: LitVarStr var_94, "    <th colspan=""13"" class=""LineaDato"">"
  loc_B41B01: PopAdLdVar
  loc_B41B02: FLdPr Me
  loc_B41B05: MemLdRfVar from_stack_1.htmFile
  loc_B41B08: LdPrVar
  loc_B41B0A: LateMemCall
  loc_B41B10: LitVarStr var_94, "  <table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" cellpadding=""1"">"
  loc_B41B15: PopAdLdVar
  loc_B41B16: FLdPr Me
  loc_B41B19: MemLdRfVar from_stack_1.htmFile
  loc_B41B1C: LdPrVar
  loc_B41B1E: LateMemCall
  loc_B41B24: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B41B29: PopAdLdVar
  loc_B41B2A: FLdPr Me
  loc_B41B2D: MemLdRfVar from_stack_1.htmFile
  loc_B41B30: LdPrVar
  loc_B41B32: LateMemCall
  loc_B41B38: LitStr "        <td align=""center"" class=""Encabezado"">Orden de compra N&ordm;<br>"
  loc_B41B3B: FLdPr Me
  loc_B41B3E: MemLdStr global_100
  loc_B41B41: FLdPr Me
  loc_B41B44: MemLdStr global_96
  loc_B41B47: Ary1LdPr
  loc_B41B48: MemLdStr global_0
  loc_B41B4B: ConcatStr
  loc_B41B4C: FStStrNoPop var_A8
  loc_B41B4F: LitStr "</td>"
  loc_B41B52: ConcatStr
  loc_B41B53: CVarStr var_B8
  loc_B41B56: PopAdLdVar
  loc_B41B57: FLdPr Me
  loc_B41B5A: MemLdRfVar from_stack_1.htmFile
  loc_B41B5D: LdPrVar
  loc_B41B5F: LateMemCall
  loc_B41B65: FFree1Str var_A8
  loc_B41B68: FFree1Var var_B8 = ""
  loc_B41B6B: LitStr "        <td>Fecha:<br>"
  loc_B41B6E: FLdPr Me
  loc_B41B71: MemLdStr global_100
  loc_B41B74: FLdPr Me
  loc_B41B77: MemLdStr global_96
  loc_B41B7A: Ary1LdPr
  loc_B41B7B: MemLdStr global_48
  loc_B41B7E: ConcatStr
  loc_B41B7F: FStStrNoPop var_A8
  loc_B41B82: LitStr "</td>"
  loc_B41B85: ConcatStr
  loc_B41B86: CVarStr var_B8
  loc_B41B89: PopAdLdVar
  loc_B41B8A: FLdPr Me
  loc_B41B8D: MemLdRfVar from_stack_1.htmFile
  loc_B41B90: LdPrVar
  loc_B41B92: LateMemCall
  loc_B41B98: FFree1Str var_A8
  loc_B41B9B: FFree1Var var_B8 = ""
  loc_B41B9E: LitStr "        <td>Tipo de compra:<br>"
  loc_B41BA1: FLdPr Me
  loc_B41BA4: MemLdStr global_100
  loc_B41BA7: FLdPr Me
  loc_B41BAA: MemLdStr global_96
  loc_B41BAD: Ary1LdPr
  loc_B41BAE: MemLdStr global_16
  loc_B41BB1: ConcatStr
  loc_B41BB2: FStStrNoPop var_A8
  loc_B41BB5: LitStr " - "
  loc_B41BB8: ConcatStr
  loc_B41BB9: FStStrNoPop var_BC
  loc_B41BBC: FLdPr Me
  loc_B41BBF: MemLdStr global_100
  loc_B41BC2: FLdPr Me
  loc_B41BC5: MemLdStr global_96
  loc_B41BC8: Ary1LdPr
  loc_B41BC9: MemLdStr global_20
  loc_B41BCC: ConcatStr
  loc_B41BCD: FStStrNoPop var_C0
  loc_B41BD0: LitStr "</td>"
  loc_B41BD3: ConcatStr
  loc_B41BD4: CVarStr var_B8
  loc_B41BD7: PopAdLdVar
  loc_B41BD8: FLdPr Me
  loc_B41BDB: MemLdRfVar from_stack_1.htmFile
  loc_B41BDE: LdPrVar
  loc_B41BE0: LateMemCall
  loc_B41BE6: FFreeStr var_A8 = "": var_BC = ""
  loc_B41BEF: FFree1Var var_B8 = ""
  loc_B41BF2: LitStr "Municipalidad de Guaymallén"
  loc_B41BF5: LitStr "Municipalidad de General Alvear"
  loc_B41BF8: EqStr
  loc_B41BFA: BranchF loc_B41C54
  loc_B41BFD: LitStr "        <td>Expediente:<br>"
  loc_B41C00: FLdPr Me
  loc_B41C03: MemLdStr global_100
  loc_B41C06: FLdPr Me
  loc_B41C09: MemLdStr global_96
  loc_B41C0C: Ary1LdPr
  loc_B41C0D: MemLdStr global_36
  loc_B41C10: ConcatStr
  loc_B41C11: FStStrNoPop var_A8
  loc_B41C14: LitStr "<br>"
  loc_B41C17: ConcatStr
  loc_B41C18: FStStrNoPop var_BC
  loc_B41C1B: FLdPr Me
  loc_B41C1E: MemLdStr global_100
  loc_B41C21: FLdPr Me
  loc_B41C24: MemLdStr global_96
  loc_B41C27: Ary1LdPr
  loc_B41C28: MemLdStr global_40
  loc_B41C2B: ConcatStr
  loc_B41C2C: FStStrNoPop var_C0
  loc_B41C2F: LitStr "</td>"
  loc_B41C32: ConcatStr
  loc_B41C33: CVarStr var_B8
  loc_B41C36: PopAdLdVar
  loc_B41C37: FLdPr Me
  loc_B41C3A: MemLdRfVar from_stack_1.htmFile
  loc_B41C3D: LdPrVar
  loc_B41C3F: LateMemCall
  loc_B41C45: FFreeStr var_A8 = "": var_BC = ""
  loc_B41C4E: FFree1Var var_B8 = ""
  loc_B41C51: Branch loc_B41C87
  loc_B41C54: LitStr "        <td>Expediente:<br>"
  loc_B41C57: FLdPr Me
  loc_B41C5A: MemLdStr global_100
  loc_B41C5D: FLdPr Me
  loc_B41C60: MemLdStr global_96
  loc_B41C63: Ary1LdPr
  loc_B41C64: MemLdStr global_36
  loc_B41C67: ConcatStr
  loc_B41C68: FStStrNoPop var_A8
  loc_B41C6B: LitStr "</td>"
  loc_B41C6E: ConcatStr
  loc_B41C6F: CVarStr var_B8
  loc_B41C72: PopAdLdVar
  loc_B41C73: FLdPr Me
  loc_B41C76: MemLdRfVar from_stack_1.htmFile
  loc_B41C79: LdPrVar
  loc_B41C7B: LateMemCall
  loc_B41C81: FFree1Str var_A8
  loc_B41C84: FFree1Var var_B8 = ""
  loc_B41C87: LitStr "        <td>Nota de pedido:<br>"
  loc_B41C8A: FLdPr Me
  loc_B41C8D: MemLdStr global_100
  loc_B41C90: FLdPr Me
  loc_B41C93: MemLdStr global_96
  loc_B41C96: Ary1LdPr
  loc_B41C97: MemLdStr global_8
  loc_B41C9A: ConcatStr
  loc_B41C9B: FStStrNoPop var_A8
  loc_B41C9E: LitStr " ("
  loc_B41CA1: ConcatStr
  loc_B41CA2: FStStrNoPop var_BC
  loc_B41CA5: FLdPr Me
  loc_B41CA8: MemLdStr global_100
  loc_B41CAB: FLdPr Me
  loc_B41CAE: MemLdStr global_96
  loc_B41CB1: Ary1LdPr
  loc_B41CB2: MemLdStr global_12
  loc_B41CB5: ConcatStr
  loc_B41CB6: FStStrNoPop var_C0
  loc_B41CB9: LitStr ")</td>"
  loc_B41CBC: ConcatStr
  loc_B41CBD: CVarStr var_B8
  loc_B41CC0: PopAdLdVar
  loc_B41CC1: FLdPr Me
  loc_B41CC4: MemLdRfVar from_stack_1.htmFile
  loc_B41CC7: LdPrVar
  loc_B41CC9: LateMemCall
  loc_B41CCF: FFreeStr var_A8 = "": var_BC = ""
  loc_B41CD8: FFree1Var var_B8 = ""
  loc_B41CDB: LitStr "        <td>Usuario:<br>"
  loc_B41CDE: FLdPr Me
  loc_B41CE1: MemLdStr global_100
  loc_B41CE4: FLdPr Me
  loc_B41CE7: MemLdStr global_96
  loc_B41CEA: Ary1LdPr
  loc_B41CEB: MemLdStr global_60
  loc_B41CEE: ConcatStr
  loc_B41CEF: FStStrNoPop var_A8
  loc_B41CF2: LitStr "</td>"
  loc_B41CF5: ConcatStr
  loc_B41CF6: CVarStr var_B8
  loc_B41CF9: PopAdLdVar
  loc_B41CFA: FLdPr Me
  loc_B41CFD: MemLdRfVar from_stack_1.htmFile
  loc_B41D00: LdPrVar
  loc_B41D02: LateMemCall
  loc_B41D08: FFree1Str var_A8
  loc_B41D0B: FFree1Var var_B8 = ""
  loc_B41D0E: LitStr "        <td class=""Totales"">Total:<br>"
  loc_B41D11: FLdPr Me
  loc_B41D14: MemLdStr global_100
  loc_B41D17: FLdPr Me
  loc_B41D1A: MemLdStr global_96
  loc_B41D1D: Ary1LdPr
  loc_B41D1E: MemLdStr bGenerado
  loc_B41D21: ConcatStr
  loc_B41D22: FStStrNoPop var_A8
  loc_B41D25: LitStr "</td>"
  loc_B41D28: ConcatStr
  loc_B41D29: CVarStr var_B8
  loc_B41D2C: PopAdLdVar
  loc_B41D2D: FLdPr Me
  loc_B41D30: MemLdRfVar from_stack_1.htmFile
  loc_B41D33: LdPrVar
  loc_B41D35: LateMemCall
  loc_B41D3B: FFree1Str var_A8
  loc_B41D3E: FFree1Var var_B8 = ""
  loc_B41D41: LitVarStr var_94, "        </tr>"
  loc_B41D46: PopAdLdVar
  loc_B41D47: FLdPr Me
  loc_B41D4A: MemLdRfVar from_stack_1.htmFile
  loc_B41D4D: LdPrVar
  loc_B41D4F: LateMemCall
  loc_B41D55: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B41D5A: PopAdLdVar
  loc_B41D5B: FLdPr Me
  loc_B41D5E: MemLdRfVar from_stack_1.htmFile
  loc_B41D61: LdPrVar
  loc_B41D63: LateMemCall
  loc_B41D69: LitStr "        <td colspan=""9"">Proveedor: "
  loc_B41D6C: FLdPr Me
  loc_B41D6F: MemLdStr global_100
  loc_B41D72: FLdPr Me
  loc_B41D75: MemLdStr global_96
  loc_B41D78: Ary1LdPr
  loc_B41D79: MemLdStr global_28
  loc_B41D7C: ConcatStr
  loc_B41D7D: FStStrNoPop var_A8
  loc_B41D80: LitStr " - "
  loc_B41D83: ConcatStr
  loc_B41D84: FStStrNoPop var_BC
  loc_B41D87: FLdPr Me
  loc_B41D8A: MemLdStr global_100
  loc_B41D8D: FLdPr Me
  loc_B41D90: MemLdStr global_96
  loc_B41D93: Ary1LdPr
  loc_B41D94: MemLdStr global_32
  loc_B41D97: ConcatStr
  loc_B41D98: FStStrNoPop var_C0
  loc_B41D9B: LitStr "</td>"
  loc_B41D9E: ConcatStr
  loc_B41D9F: CVarStr var_B8
  loc_B41DA2: PopAdLdVar
  loc_B41DA3: FLdPr Me
  loc_B41DA6: MemLdRfVar from_stack_1.htmFile
  loc_B41DA9: LdPrVar
  loc_B41DAB: LateMemCall
  loc_B41DB1: FFreeStr var_A8 = "": var_BC = ""
  loc_B41DBA: FFree1Var var_B8 = ""
  loc_B41DBD: LitVarStr var_94, "      </tr>"
  loc_B41DC2: PopAdLdVar
  loc_B41DC3: FLdPr Me
  loc_B41DC6: MemLdRfVar from_stack_1.htmFile
  loc_B41DC9: LdPrVar
  loc_B41DCB: LateMemCall
  loc_B41DD1: LitVarStr var_94, "      <tr valign=""top"" class=""LineaDato"">"
  loc_B41DD6: PopAdLdVar
  loc_B41DD7: FLdPr Me
  loc_B41DDA: MemLdRfVar from_stack_1.htmFile
  loc_B41DDD: LdPrVar
  loc_B41DDF: LateMemCall
  loc_B41DE5: LitStr "        <td colspan=""9"">Detalle: "
  loc_B41DE8: FLdPr Me
  loc_B41DEB: MemLdStr global_100
  loc_B41DEE: FLdPr Me
  loc_B41DF1: MemLdStr global_96
  loc_B41DF4: Ary1LdPr
  loc_B41DF5: MemLdStr global_4
  loc_B41DF8: ConcatStr
  loc_B41DF9: FStStrNoPop var_A8
  loc_B41DFC: LitStr "</td>"
  loc_B41DFF: ConcatStr
  loc_B41E00: CVarStr var_B8
  loc_B41E03: PopAdLdVar
  loc_B41E04: FLdPr Me
  loc_B41E07: MemLdRfVar from_stack_1.htmFile
  loc_B41E0A: LdPrVar
  loc_B41E0C: LateMemCall
  loc_B41E12: FFree1Str var_A8
  loc_B41E15: FFree1Var var_B8 = ""
  loc_B41E18: LitVarStr var_94, "      </tr>"
  loc_B41E1D: PopAdLdVar
  loc_B41E1E: FLdPr Me
  loc_B41E21: MemLdRfVar from_stack_1.htmFile
  loc_B41E24: LdPrVar
  loc_B41E26: LateMemCall
  loc_B41E2C: FLdPr Me
  loc_B41E2F: MemLdStr global_100
  loc_B41E32: FLdPr Me
  loc_B41E35: MemLdStr global_96
  loc_B41E38: Ary1LdPr
  loc_B41E39: MemLdStr htmFile
  loc_B41E3C: LitStr vbNullString
  loc_B41E3F: NeStr
  loc_B41E41: BranchF loc_B41EC0
  loc_B41E44: LitVarStr var_94, "      <tr valign=""top"" class=""Encabezado"">"
  loc_B41E49: PopAdLdVar
  loc_B41E4A: FLdPr Me
  loc_B41E4D: MemLdRfVar from_stack_1.htmFile
  loc_B41E50: LdPrVar
  loc_B41E52: LateMemCall
  loc_B41E58: LitStr "        <td colspan=""9"">ANULADA<br>Fecha: "
  loc_B41E5B: FLdPr Me
  loc_B41E5E: MemLdStr global_100
  loc_B41E61: FLdPr Me
  loc_B41E64: MemLdStr global_96
  loc_B41E67: Ary1LdPr
  loc_B41E68: MemLdStr htmFile
  loc_B41E6B: ConcatStr
  loc_B41E6C: FStStrNoPop var_A8
  loc_B41E6F: LitStr "<br>Motivo: "
  loc_B41E72: ConcatStr
  loc_B41E73: FStStrNoPop var_BC
  loc_B41E76: FLdPr Me
  loc_B41E79: MemLdStr global_100
  loc_B41E7C: FLdPr Me
  loc_B41E7F: MemLdStr global_96
  loc_B41E82: Ary1LdPr
  loc_B41E83: MemLdStr global_56
  loc_B41E86: ConcatStr
  loc_B41E87: FStStrNoPop var_C0
  loc_B41E8A: LitStr "</td>"
  loc_B41E8D: ConcatStr
  loc_B41E8E: CVarStr var_B8
  loc_B41E91: PopAdLdVar
  loc_B41E92: FLdPr Me
  loc_B41E95: MemLdRfVar from_stack_1.htmFile
  loc_B41E98: LdPrVar
  loc_B41E9A: LateMemCall
  loc_B41EA0: FFreeStr var_A8 = "": var_BC = ""
  loc_B41EA9: FFree1Var var_B8 = ""
  loc_B41EAC: LitVarStr var_94, "      </tr>"
  loc_B41EB1: PopAdLdVar
  loc_B41EB2: FLdPr Me
  loc_B41EB5: MemLdRfVar from_stack_1.htmFile
  loc_B41EB8: LdPrVar
  loc_B41EBA: LateMemCall
  loc_B41EC0: LitVarStr var_94, "    </table></th>"
  loc_B41EC5: PopAdLdVar
  loc_B41EC6: FLdPr Me
  loc_B41EC9: MemLdRfVar from_stack_1.htmFile
  loc_B41ECC: LdPrVar
  loc_B41ECE: LateMemCall
  loc_B41ED4: LitVarStr var_94, "  </tr>"
  loc_B41ED9: PopAdLdVar
  loc_B41EDA: FLdPr Me
  loc_B41EDD: MemLdRfVar from_stack_1.htmFile
  loc_B41EE0: LdPrVar
  loc_B41EE2: LateMemCall
  loc_B41EE8: FLdRfVar var_C6
  loc_B41EEB: FLdPr Me
  loc_B41EEE: VCallAd Control_ID_chkSoloEncabezados
  loc_B41EF1: FStAdFunc var_C4
  loc_B41EF4: FLdPr var_C4
  loc_B41EF7:  = Me.Value
  loc_B41EFC: FLdI2 var_C6
  loc_B41EFF: CI4UI1
  loc_B41F00: LitI4 0
  loc_B41F05: EqI4
  loc_B41F06: FFree1Ad var_C4
  loc_B41F09: BranchF loc_B4250A
  loc_B41F0C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_B41F11: PopAdLdVar
  loc_B41F12: FLdPr Me
  loc_B41F15: MemLdRfVar from_stack_1.htmFile
  loc_B41F18: LdPrVar
  loc_B41F1A: LateMemCall
  loc_B41F20: LitVarStr var_94, "    <th>Item</th>"
  loc_B41F25: PopAdLdVar
  loc_B41F26: FLdPr Me
  loc_B41F29: MemLdRfVar from_stack_1.htmFile
  loc_B41F2C: LdPrVar
  loc_B41F2E: LateMemCall
  loc_B41F34: LitVarStr var_94, "    <th>Alt.</th>"
  loc_B41F39: PopAdLdVar
  loc_B41F3A: FLdPr Me
  loc_B41F3D: MemLdRfVar from_stack_1.htmFile
  loc_B41F40: LdPrVar
  loc_B41F42: LateMemCall
  loc_B41F48: LitVarStr var_94, "    <th>Insumo</th>"
  loc_B41F4D: PopAdLdVar
  loc_B41F4E: FLdPr Me
  loc_B41F51: MemLdRfVar from_stack_1.htmFile
  loc_B41F54: LdPrVar
  loc_B41F56: LateMemCall
  loc_B41F5C: LitVarStr var_94, "    <th>Detalle</th>"
  loc_B41F61: PopAdLdVar
  loc_B41F62: FLdPr Me
  loc_B41F65: MemLdRfVar from_stack_1.htmFile
  loc_B41F68: LdPrVar
  loc_B41F6A: LateMemCall
  loc_B41F70: LitVarStr var_94, "    <th>Marca</th>"
  loc_B41F75: PopAdLdVar
  loc_B41F76: FLdPr Me
  loc_B41F79: MemLdRfVar from_stack_1.htmFile
  loc_B41F7C: LdPrVar
  loc_B41F7E: LateMemCall
  loc_B41F84: LitVarStr var_94, "    <th>Cantidad</th>"
  loc_B41F89: PopAdLdVar
  loc_B41F8A: FLdPr Me
  loc_B41F8D: MemLdRfVar from_stack_1.htmFile
  loc_B41F90: LdPrVar
  loc_B41F92: LateMemCall
  loc_B41F98: LitVarStr var_94, "    <th>Importe unitario</th>"
  loc_B41F9D: PopAdLdVar
  loc_B41F9E: FLdPr Me
  loc_B41FA1: MemLdRfVar from_stack_1.htmFile
  loc_B41FA4: LdPrVar
  loc_B41FA6: LateMemCall
  loc_B41FAC: LitVarStr var_94, "    <th>Total</th>"
  loc_B41FB1: PopAdLdVar
  loc_B41FB2: FLdPr Me
  loc_B41FB5: MemLdRfVar from_stack_1.htmFile
  loc_B41FB8: LdPrVar
  loc_B41FBA: LateMemCall
  loc_B41FC0: LitVarStr var_94, "    <th>Partida</th>"
  loc_B41FC5: PopAdLdVar
  loc_B41FC6: FLdPr Me
  loc_B41FC9: MemLdRfVar from_stack_1.htmFile
  loc_B41FCC: LdPrVar
  loc_B41FCE: LateMemCall
  loc_B41FD4: LitVarStr var_94, "    <th>Organigrama</th>"
  loc_B41FD9: PopAdLdVar
  loc_B41FDA: FLdPr Me
  loc_B41FDD: MemLdRfVar from_stack_1.htmFile
  loc_B41FE0: LdPrVar
  loc_B41FE2: LateMemCall
  loc_B41FE8: LitVarStr var_94, "    <th>Un. gasto</th>"
  loc_B41FED: PopAdLdVar
  loc_B41FEE: FLdPr Me
  loc_B41FF1: MemLdRfVar from_stack_1.htmFile
  loc_B41FF4: LdPrVar
  loc_B41FF6: LateMemCall
  loc_B41FFC: LitVarStr var_94, "    <th>Finalidad</th>"
  loc_B42001: PopAdLdVar
  loc_B42002: FLdPr Me
  loc_B42005: MemLdRfVar from_stack_1.htmFile
  loc_B42008: LdPrVar
  loc_B4200A: LateMemCall
  loc_B42010: LitVarStr var_94, "    <th>Imp.Def.</th>"
  loc_B42015: PopAdLdVar
  loc_B42016: FLdPr Me
  loc_B42019: MemLdRfVar from_stack_1.htmFile
  loc_B4201C: LdPrVar
  loc_B4201E: LateMemCall
  loc_B42024: LitVarStr var_94, "  </tr>"
  loc_B42029: PopAdLdVar
  loc_B4202A: FLdPr Me
  loc_B4202D: MemLdRfVar from_stack_1.htmFile
  loc_B42030: LdPrVar
  loc_B42032: LateMemCall
  loc_B42038: LitI4 1
  loc_B4203D: FLdPr Me
  loc_B42040: MemLdRfVar from_stack_1.global_104
  loc_B42043: FLdPr Me
  loc_B42046: MemLdStr global_100
  loc_B42049: FLdPr Me
  loc_B4204C: MemLdStr global_96
  loc_B4204F: Ary1LdPr
  loc_B42050: MemLdStr global_64
  loc_B42053: LitI2_Byte 1
  loc_B42055: FnUBound
  loc_B42057: ForI4 var_D0
  loc_B4205D: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B42062: PopAdLdVar
  loc_B42063: FLdPr Me
  loc_B42066: MemLdRfVar from_stack_1.htmFile
  loc_B42069: LdPrVar
  loc_B4206B: LateMemCall
  loc_B42071: FLdPr Me
  loc_B42074: MemLdStr global_104
  loc_B42077: FLdPr Me
  loc_B4207A: MemLdStr global_100
  loc_B4207D: FLdPr Me
  loc_B42080: MemLdStr global_96
  loc_B42083: AryLock
  loc_B42086: Ary1LdPr
  loc_B42087: MemLdStr global_64
  loc_B4208A: AryLock
  loc_B4208D: Ary1LdRf
  loc_B4208E: FStR4 var_DC
  loc_B42091: LitI4 0
  loc_B42096: LitI4 0
  loc_B4209B: LitI2_Byte 0
  loc_B4209D: LitStr "center"
  loc_B420A0: FMemLdR4 var_DC(0)
  loc_B420A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B420AA: CVarStr var_B8
  loc_B420AD: PopAdLdVar
  loc_B420AE: FLdPr Me
  loc_B420B1: MemLdRfVar from_stack_1.htmFile
  loc_B420B4: LdPrVar
  loc_B420B6: LateMemCall
  loc_B420BC: FFree1Var var_B8 = ""
  loc_B420BF: LitI4 0
  loc_B420C4: LitI4 0
  loc_B420C9: LitI2_Byte 0
  loc_B420CB: LitStr "center"
  loc_B420CE: FMemLdR4 var_DC(4)
  loc_B420D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B420D8: CVarStr var_B8
  loc_B420DB: PopAdLdVar
  loc_B420DC: FLdPr Me
  loc_B420DF: MemLdRfVar from_stack_1.htmFile
  loc_B420E2: LdPrVar
  loc_B420E4: LateMemCall
  loc_B420EA: FFree1Var var_B8 = ""
  loc_B420ED: LitI4 0
  loc_B420F2: LitI4 0
  loc_B420F7: LitI2_Byte 0
  loc_B420F9: LitStr "left"
  loc_B420FC: FMemLdR4 var_DC(8)
  loc_B42101: LitStr " - "
  loc_B42104: ConcatStr
  loc_B42105: FStStrNoPop var_A8
  loc_B42108: FMemLdR4 var_DC(12)
  loc_B4210D: ConcatStr
  loc_B4210E: FStStrNoPop var_BC
  loc_B42111: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B42116: CVarStr var_B8
  loc_B42119: PopAdLdVar
  loc_B4211A: FLdPr Me
  loc_B4211D: MemLdRfVar from_stack_1.htmFile
  loc_B42120: LdPrVar
  loc_B42122: LateMemCall
  loc_B42128: FFreeStr var_A8 = ""
  loc_B4212F: FFree1Var var_B8 = ""
  loc_B42132: LitI4 0
  loc_B42137: LitI4 0
  loc_B4213C: LitI2_Byte 0
  loc_B4213E: LitStr "left"
  loc_B42141: FMemLdR4 var_DC(16)
  loc_B42146: LitStr " - "
  loc_B42149: ConcatStr
  loc_B4214A: FStStrNoPop var_A8
  loc_B4214D: FMemLdR4 var_DC(24)
  loc_B42152: ConcatStr
  loc_B42153: FStStrNoPop var_BC
  loc_B42156: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4215B: CVarStr var_B8
  loc_B4215E: PopAdLdVar
  loc_B4215F: FLdPr Me
  loc_B42162: MemLdRfVar from_stack_1.htmFile
  loc_B42165: LdPrVar
  loc_B42167: LateMemCall
  loc_B4216D: FFreeStr var_A8 = ""
  loc_B42174: FFree1Var var_B8 = ""
  loc_B42177: LitI4 0
  loc_B4217C: LitI4 0
  loc_B42181: LitI2_Byte 0
  loc_B42183: LitStr "left"
  loc_B42186: FMemLdR4 var_DC(20)
  loc_B4218B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B42190: CVarStr var_B8
  loc_B42193: PopAdLdVar
  loc_B42194: FLdPr Me
  loc_B42197: MemLdRfVar from_stack_1.htmFile
  loc_B4219A: LdPrVar
  loc_B4219C: LateMemCall
  loc_B421A2: FFree1Var var_B8 = ""
  loc_B421A5: LitI4 0
  loc_B421AA: LitI4 0
  loc_B421AF: LitI2_Byte 0
  loc_B421B1: LitStr "right"
  loc_B421B4: FMemLdR4 var_DC(28)
  loc_B421B9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B421BE: CVarStr var_B8
  loc_B421C1: PopAdLdVar
  loc_B421C2: FLdPr Me
  loc_B421C5: MemLdRfVar from_stack_1.htmFile
  loc_B421C8: LdPrVar
  loc_B421CA: LateMemCall
  loc_B421D0: FFree1Var var_B8 = ""
  loc_B421D3: LitI4 0
  loc_B421D8: LitI4 0
  loc_B421DD: LitI2_Byte 0
  loc_B421DF: LitStr "right"
  loc_B421E2: FMemLdR4 var_DC(32)
  loc_B421E7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B421EC: CVarStr var_B8
  loc_B421EF: PopAdLdVar
  loc_B421F0: FLdPr Me
  loc_B421F3: MemLdRfVar from_stack_1.htmFile
  loc_B421F6: LdPrVar
  loc_B421F8: LateMemCall
  loc_B421FE: FFree1Var var_B8 = ""
  loc_B42201: LitI4 0
  loc_B42206: LitI4 0
  loc_B4220B: LitI2_Byte 0
  loc_B4220D: LitStr "right"
  loc_B42210: FMemLdR4 var_DC(36)
  loc_B42215: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4221A: CVarStr var_B8
  loc_B4221D: PopAdLdVar
  loc_B4221E: FLdPr Me
  loc_B42221: MemLdRfVar from_stack_1.htmFile
  loc_B42224: LdPrVar
  loc_B42226: LateMemCall
  loc_B4222C: FFree1Var var_B8 = ""
  loc_B4222F: LitI4 0
  loc_B42234: LitI4 0
  loc_B42239: LitI2_Byte 0
  loc_B4223B: LitStr "left"
  loc_B4223E: FMemLdR4 var_DC(40)
  loc_B42243: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B42248: CVarStr var_B8
  loc_B4224B: PopAdLdVar
  loc_B4224C: FLdPr Me
  loc_B4224F: MemLdRfVar from_stack_1.htmFile
  loc_B42252: LdPrVar
  loc_B42254: LateMemCall
  loc_B4225A: FFree1Var var_B8 = ""
  loc_B4225D: LitI4 0
  loc_B42262: LitI4 0
  loc_B42267: LitI2_Byte 0
  loc_B42269: LitStr "left"
  loc_B4226C: FMemLdR4 var_DC(48)
  loc_B42271: LitStr " - "
  loc_B42274: ConcatStr
  loc_B42275: FStStrNoPop var_A8
  loc_B42278: FMemLdR4 var_DC(52)
  loc_B4227D: ConcatStr
  loc_B4227E: FStStrNoPop var_BC
  loc_B42281: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B42286: CVarStr var_B8
  loc_B42289: PopAdLdVar
  loc_B4228A: FLdPr Me
  loc_B4228D: MemLdRfVar from_stack_1.htmFile
  loc_B42290: LdPrVar
  loc_B42292: LateMemCall
  loc_B42298: FFreeStr var_A8 = ""
  loc_B4229F: FFree1Var var_B8 = ""
  loc_B422A2: LitI4 0
  loc_B422A7: LitI4 0
  loc_B422AC: LitI2_Byte 0
  loc_B422AE: LitStr "left"
  loc_B422B1: FMemLdR4 var_DC(56)
  loc_B422B6: LitStr " - "
  loc_B422B9: ConcatStr
  loc_B422BA: FStStrNoPop var_A8
  loc_B422BD: FMemLdR4 var_DC(60)
  loc_B422C2: ConcatStr
  loc_B422C3: FStStrNoPop var_BC
  loc_B422C6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B422CB: CVarStr var_B8
  loc_B422CE: PopAdLdVar
  loc_B422CF: FLdPr Me
  loc_B422D2: MemLdRfVar from_stack_1.htmFile
  loc_B422D5: LdPrVar
  loc_B422D7: LateMemCall
  loc_B422DD: FFreeStr var_A8 = ""
  loc_B422E4: FFree1Var var_B8 = ""
  loc_B422E7: LitI4 0
  loc_B422EC: LitI4 0
  loc_B422F1: LitI2_Byte 0
  loc_B422F3: LitStr "left"
  loc_B422F6: FMemLdR4 var_DC(64)
  loc_B422FB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B42300: CVarStr var_B8
  loc_B42303: PopAdLdVar
  loc_B42304: FLdPr Me
  loc_B42307: MemLdRfVar from_stack_1.htmFile
  loc_B4230A: LdPrVar
  loc_B4230C: LateMemCall
  loc_B42312: FFree1Var var_B8 = ""
  loc_B42315: LitVarStr var_EC, "Si"
  loc_B4231A: FStVarCopyObj var_FC
  loc_B4231D: FLdRfVar var_FC
  loc_B42320: LitVarStr var_A4, "No"
  loc_B42325: FStVarCopyObj var_B8
  loc_B42328: FLdRfVar var_B8
  loc_B4232B: FMemLdR4 var_DC(68)
  loc_B42330: LitStr "0"
  loc_B42333: EqStr
  loc_B42335: CVarBoolI2 var_94
  loc_B42339: FLdRfVar var_10C
  loc_B4233C: ImpAdCallFPR4  = IIf(, , )
  loc_B42341: LitI4 0
  loc_B42346: LitI4 0
  loc_B4234B: LitI2_Byte 0
  loc_B4234D: LitStr "left"
  loc_B42350: FLdRfVar var_10C
  loc_B42353: CStrVarVal var_A8
  loc_B42357: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4235C: CVarStr var_11C
  loc_B4235F: PopAdLdVar
  loc_B42360: FLdPr Me
  loc_B42363: MemLdRfVar from_stack_1.htmFile
  loc_B42366: LdPrVar
  loc_B42368: LateMemCall
  loc_B4236E: FFree1Str var_A8
  loc_B42371: FFreeVar var_94 = "": var_B8 = "": var_FC = "": var_10C = ""
  loc_B4237E: LitVarStr var_94, "  </tr>"
  loc_B42383: PopAdLdVar
  loc_B42384: FLdPr Me
  loc_B42387: MemLdRfVar from_stack_1.htmFile
  loc_B4238A: LdPrVar
  loc_B4238C: LateMemCall
  loc_B42392: LitI4 0
  loc_B42397: FStR4 var_DC
  loc_B4239A: AryUnlock
  loc_B4239D: AryUnlock
  loc_B423A0: FLdPr Me
  loc_B423A3: MemLdRfVar from_stack_1.global_104
  loc_B423A6: NextI4 var_D0, loc_B4205D
  loc_B423AB: LitVarStr var_94, "    <tr valign=""top"">"
  loc_B423B0: PopAdLdVar
  loc_B423B1: FLdPr Me
  loc_B423B4: MemLdRfVar from_stack_1.htmFile
  loc_B423B7: LdPrVar
  loc_B423B9: LateMemCall
  loc_B423BF: LitVarStr var_94, "      <td colspan=""13""><p>&nbsp;</p>"
  loc_B423C4: PopAdLdVar
  loc_B423C5: FLdPr Me
  loc_B423C8: MemLdRfVar from_stack_1.htmFile
  loc_B423CB: LdPrVar
  loc_B423CD: LateMemCall
  loc_B423D3: LitVarStr var_94, "        <p>&nbsp;</p>"
  loc_B423D8: PopAdLdVar
  loc_B423D9: FLdPr Me
  loc_B423DC: MemLdRfVar from_stack_1.htmFile
  loc_B423DF: LdPrVar
  loc_B423E1: LateMemCall
  loc_B423E7: LitVarStr var_94, "        <table width=""100" & Chr(37) & """ border=""0"" align=""right"">"
  loc_B423EC: PopAdLdVar
  loc_B423ED: FLdPr Me
  loc_B423F0: MemLdRfVar from_stack_1.htmFile
  loc_B423F3: LdPrVar
  loc_B423F5: LateMemCall
  loc_B423FB: LitVarStr var_94, "         <tr align=""center"">"
  loc_B42400: PopAdLdVar
  loc_B42401: FLdPr Me
  loc_B42404: MemLdRfVar from_stack_1.htmFile
  loc_B42407: LdPrVar
  loc_B42409: LateMemCall
  loc_B4240F: LitVarStr var_94, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_B42414: PopAdLdVar
  loc_B42415: FLdPr Me
  loc_B42418: MemLdRfVar from_stack_1.htmFile
  loc_B4241B: LdPrVar
  loc_B4241D: LateMemCall
  loc_B42423: LitVarStr var_94, "           <td width=""33" & Chr(37) & """ >&nbsp;</td>"
  loc_B42428: PopAdLdVar
  loc_B42429: FLdPr Me
  loc_B4242C: MemLdRfVar from_stack_1.htmFile
  loc_B4242F: LdPrVar
  loc_B42431: LateMemCall
  loc_B42437: LitVarStr var_94, "           <td><hr width=""80" & Chr(37) & """></td>"
  loc_B4243C: PopAdLdVar
  loc_B4243D: FLdPr Me
  loc_B42440: MemLdRfVar from_stack_1.htmFile
  loc_B42443: LdPrVar
  loc_B42445: LateMemCall
  loc_B4244B: LitVarStr var_94, "         </tr>"
  loc_B42450: PopAdLdVar
  loc_B42451: FLdPr Me
  loc_B42454: MemLdRfVar from_stack_1.htmFile
  loc_B42457: LdPrVar
  loc_B42459: LateMemCall
  loc_B4245F: LitVarStr var_94, "         <tr>"
  loc_B42464: PopAdLdVar
  loc_B42465: FLdPr Me
  loc_B42468: MemLdRfVar from_stack_1.htmFile
  loc_B4246B: LdPrVar
  loc_B4246D: LateMemCall
  loc_B42473: LitVarStr var_94, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_B42478: PopAdLdVar
  loc_B42479: FLdPr Me
  loc_B4247C: MemLdRfVar from_stack_1.htmFile
  loc_B4247F: LdPrVar
  loc_B42481: LateMemCall
  loc_B42487: LitVarStr var_94, "           <td width=""33" & Chr(37) & """>&nbsp;</td>"
  loc_B4248C: PopAdLdVar
  loc_B4248D: FLdPr Me
  loc_B42490: MemLdRfVar from_stack_1.htmFile
  loc_B42493: LdPrVar
  loc_B42495: LateMemCall
  loc_B4249B: LitStr "           <td class=""Normal"" align=""center"">Firma<br>"
  loc_B4249E: FLdPr Me
  loc_B424A1: MemLdStr global_100
  loc_B424A4: FLdPr Me
  loc_B424A7: MemLdStr global_96
  loc_B424AA: Ary1LdPr
  loc_B424AB: MemLdStr global_24
  loc_B424AE: ConcatStr
  loc_B424AF: FStStrNoPop var_A8
  loc_B424B2: LitStr " </td>"
  loc_B424B5: ConcatStr
  loc_B424B6: CVarStr var_B8
  loc_B424B9: PopAdLdVar
  loc_B424BA: FLdPr Me
  loc_B424BD: MemLdRfVar from_stack_1.htmFile
  loc_B424C0: LdPrVar
  loc_B424C2: LateMemCall
  loc_B424C8: FFree1Str var_A8
  loc_B424CB: FFree1Var var_B8 = ""
  loc_B424CE: LitVarStr var_94, "         </tr>"
  loc_B424D3: PopAdLdVar
  loc_B424D4: FLdPr Me
  loc_B424D7: MemLdRfVar from_stack_1.htmFile
  loc_B424DA: LdPrVar
  loc_B424DC: LateMemCall
  loc_B424E2: LitVarStr var_94, "        </table></td>"
  loc_B424E7: PopAdLdVar
  loc_B424E8: FLdPr Me
  loc_B424EB: MemLdRfVar from_stack_1.htmFile
  loc_B424EE: LdPrVar
  loc_B424F0: LateMemCall
  loc_B424F6: LitVarStr var_94, "    </tr>"
  loc_B424FB: PopAdLdVar
  loc_B424FC: FLdPr Me
  loc_B424FF: MemLdRfVar from_stack_1.htmFile
  loc_B42502: LdPrVar
  loc_B42504: LateMemCall
  loc_B4250A: LitVarStr var_94, "</table>"
  loc_B4250F: PopAdLdVar
  loc_B42510: FLdPr Me
  loc_B42513: MemLdRfVar from_stack_1.htmFile
  loc_B42516: LdPrVar
  loc_B42518: LateMemCall
  loc_B4251E: LitVarStr var_94, "<br>"
  loc_B42523: PopAdLdVar
  loc_B42524: FLdPr Me
  loc_B42527: MemLdRfVar from_stack_1.htmFile
  loc_B4252A: LdPrVar
  loc_B4252C: LateMemCall
  loc_B42532: ExitProcHresult
End Function

Private Function Proc_200_40_9B99CC() '9B99CC
  'Data Table: 4F7D24
  loc_9B9914: LitVarStr var_94, "<html>"
  loc_9B9919: PopAdLdVar
  loc_9B991A: FLdPr Me
  loc_9B991D: MemLdRfVar from_stack_1.htmFile
  loc_9B9920: LdPrVar
  loc_9B9922: LateMemCall
  loc_9B9928: LitVarStr var_94, "<head>"
  loc_9B992D: PopAdLdVar
  loc_9B992E: FLdPr Me
  loc_9B9931: MemLdRfVar from_stack_1.htmFile
  loc_9B9934: LdPrVar
  loc_9B9936: LateMemCall
  loc_9B993C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9B9941: PopAdLdVar
  loc_9B9942: FLdPr Me
  loc_9B9945: MemLdRfVar from_stack_1.htmFile
  loc_9B9948: LdPrVar
  loc_9B994A: LateMemCall
  loc_9B9950: LitStr "<title>"
  loc_9B9953: FLdRfVar var_A8
  loc_9B9956: FLdPr Me
  loc_9B9959:  = Me.Caption
  loc_9B995E: ILdRf var_A8
  loc_9B9961: ConcatStr
  loc_9B9962: FStStrNoPop var_AC
  loc_9B9965: LitStr "</title>"
  loc_9B9968: ConcatStr
  loc_9B9969: CVarStr var_BC
  loc_9B996C: PopAdLdVar
  loc_9B996D: FLdPr Me
  loc_9B9970: MemLdRfVar from_stack_1.htmFile
  loc_9B9973: LdPrVar
  loc_9B9975: LateMemCall
  loc_9B997B: FFreeStr var_A8 = ""
  loc_9B9982: FFree1Var var_BC = ""
  loc_9B9985: LitStr vbNullString
  loc_9B9988: ILdRf Me
  loc_9B998B: CastAd
  loc_9B998E: FStAdFunc var_C0
  loc_9B9991: FLdRfVar var_C0
  loc_9B9994: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9B9999: FFree1Ad var_C0
  loc_9B999C: LitI4 0
  loc_9B99A1: FStStrCopy var_AC
  loc_9B99A4: FLdRfVar var_AC
  loc_9B99A7: LitI4 0
  loc_9B99AC: FStStrCopy var_A8
  loc_9B99AF: FLdRfVar var_A8
  loc_9B99B2: LitI2_Byte 0
  loc_9B99B4: PopTmpLdAd2 var_C2
  loc_9B99B7: FLdPr Me
  loc_9B99BA: MemLdRfVar from_stack_1.htmFile
  loc_9B99BD: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9B99C2: FFreeStr var_A8 = ""
  loc_9B99C9: ExitProcHresult
End Function

Private Function Proc_200_41_A3DF6C() 'A3DF6C
  'Data Table: 4F7D24
  loc_A3DD40: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A3DD45: PopAdLdVar
  loc_A3DD46: FLdPr Me
  loc_A3DD49: MemLdRfVar from_stack_1.htmFile
  loc_A3DD4C: LdPrVar
  loc_A3DD4E: LateMemCall
  loc_A3DD54: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A3DD59: PopAdLdVar
  loc_A3DD5A: FLdPr Me
  loc_A3DD5D: MemLdRfVar from_stack_1.htmFile
  loc_A3DD60: LdPrVar
  loc_A3DD62: LateMemCall
  loc_A3DD68: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""bottom""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><p>"
  loc_A3DD6D: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A3DD72: FStVarCopyObj var_B4
  loc_A3DD75: FLdRfVar var_B4
  loc_A3DD78: FLdRfVar var_C4
  loc_A3DD7B: ImpAdCallFPR4  = Ucase()
  loc_A3DD80: FLdRfVar var_C4
  loc_A3DD83: ConcatVar var_D4
  loc_A3DD87: LitVarStr var_E4, "</p>"
  loc_A3DD8C: ConcatVar var_F4
  loc_A3DD90: PopAdLdVar
  loc_A3DD91: FLdPr Me
  loc_A3DD94: MemLdRfVar from_stack_1.htmFile
  loc_A3DD97: LdPrVar
  loc_A3DD99: LateMemCall
  loc_A3DD9F: FFreeVar var_B4 = "": var_C4 = "": var_D4 = ""
  loc_A3DDAA: LitStr "    <p>"
  loc_A3DDAD: FLdRfVar var_108
  loc_A3DDB0: FLdPr Me
  loc_A3DDB3:  = Me.Caption
  loc_A3DDB8: ILdRf var_108
  loc_A3DDBB: ConcatStr
  loc_A3DDBC: FStStrNoPop var_10C
  loc_A3DDBF: LitStr "</p>"
  loc_A3DDC2: ConcatStr
  loc_A3DDC3: CVarStr var_B4
  loc_A3DDC6: PopAdLdVar
  loc_A3DDC7: FLdPr Me
  loc_A3DDCA: MemLdRfVar from_stack_1.htmFile
  loc_A3DDCD: LdPrVar
  loc_A3DDCF: LateMemCall
  loc_A3DDD5: FFreeStr var_108 = ""
  loc_A3DDDC: FFree1Var var_B4 = ""
  loc_A3DDDF: LitStr "    <p>"
  loc_A3DDE2: LitStr "Comprobante NO VALIDO para el Proveedor"
  loc_A3DDE5: ConcatStr
  loc_A3DDE6: FStStrNoPop var_108
  loc_A3DDE9: LitStr "</p></th>"
  loc_A3DDEC: ConcatStr
  loc_A3DDED: CVarStr var_B4
  loc_A3DDF0: PopAdLdVar
  loc_A3DDF1: FLdPr Me
  loc_A3DDF4: MemLdRfVar from_stack_1.htmFile
  loc_A3DDF7: LdPrVar
  loc_A3DDF9: LateMemCall
  loc_A3DDFF: FFree1Str var_108
  loc_A3DE02: FFree1Var var_B4 = ""
  loc_A3DE05: LitVarStr var_94, "  </tr>"
  loc_A3DE0A: PopAdLdVar
  loc_A3DE0B: FLdPr Me
  loc_A3DE0E: MemLdRfVar from_stack_1.htmFile
  loc_A3DE11: LdPrVar
  loc_A3DE13: LateMemCall
  loc_A3DE19: LitVarStr var_94, "  <tr>"
  loc_A3DE1E: PopAdLdVar
  loc_A3DE1F: FLdPr Me
  loc_A3DE22: MemLdRfVar from_stack_1.htmFile
  loc_A3DE25: LdPrVar
  loc_A3DE27: LateMemCall
  loc_A3DE2D: LitVarStr var_94, "    <th colspan=""3""><hr></th>"
  loc_A3DE32: PopAdLdVar
  loc_A3DE33: FLdPr Me
  loc_A3DE36: MemLdRfVar from_stack_1.htmFile
  loc_A3DE39: LdPrVar
  loc_A3DE3B: LateMemCall
  loc_A3DE41: LitVarStr var_94, "  </tr>"
  loc_A3DE46: PopAdLdVar
  loc_A3DE47: FLdPr Me
  loc_A3DE4A: MemLdRfVar from_stack_1.htmFile
  loc_A3DE4D: LdPrVar
  loc_A3DE4F: LateMemCall
  loc_A3DE55: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A3DE5A: PopAdLdVar
  loc_A3DE5B: FLdPr Me
  loc_A3DE5E: MemLdRfVar from_stack_1.htmFile
  loc_A3DE61: LdPrVar
  loc_A3DE63: LateMemCall
  loc_A3DE69: LitStr "    <th colspan=""3"" align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_A3DE6C: FLdRfVar var_108
  loc_A3DE6F: FLdPr Me
  loc_A3DE72: VCallAd Control_ID_cboPeriodo
  loc_A3DE75: FStAdFunc var_110
  loc_A3DE78: FLdPr var_110
  loc_A3DE7B:  = Me.Text
  loc_A3DE80: ILdRf var_108
  loc_A3DE83: ConcatStr
  loc_A3DE84: FStStrNoPop var_10C
  loc_A3DE87: LitStr "</span>"
  loc_A3DE8A: ConcatStr
  loc_A3DE8B: CVarStr var_B4
  loc_A3DE8E: PopAdLdVar
  loc_A3DE8F: FLdPr Me
  loc_A3DE92: MemLdRfVar from_stack_1.htmFile
  loc_A3DE95: LdPrVar
  loc_A3DE97: LateMemCall
  loc_A3DE9D: FFreeStr var_108 = ""
  loc_A3DEA4: FFree1Ad var_110
  loc_A3DEA7: FFree1Var var_B4 = ""
  loc_A3DEAA: FLdPr Me
  loc_A3DEAD: VCallAd Control_ID_CodiOrgaMsk
  loc_A3DEB0: FStAdFunc var_110
  loc_A3DEB3: FLdPr var_110
  loc_A3DEB6: LateIdLdVar var_B4 DispID_0 0
  loc_A3DEBD: CStrVarTmp
  loc_A3DEBE: FStStrNoPop var_108
  loc_A3DEC1: LitStr vbNullString
  loc_A3DEC4: NeStr
  loc_A3DEC6: FFree1Str var_108
  loc_A3DEC9: FFree1Ad var_110
  loc_A3DECC: FFree1Var var_B4 = ""
  loc_A3DECF: BranchF loc_A3DF43
  loc_A3DED2: LitStr "   <br>Organigrama: <span class=""Normal"">Comenzando con '"
  loc_A3DED5: FLdPr Me
  loc_A3DED8: VCallAd Control_ID_CodiOrgaMsk
  loc_A3DEDB: FStAdFunc var_110
  loc_A3DEDE: FLdPr var_110
  loc_A3DEE1: LateIdLdVar var_B4 DispID_0 0
  loc_A3DEE8: CStrVarTmp
  loc_A3DEE9: FStStrNoPop var_108
  loc_A3DEEC: ConcatStr
  loc_A3DEED: FStStrNoPop var_10C
  loc_A3DEF0: LitStr "'  -  "
  loc_A3DEF3: ConcatStr
  loc_A3DEF4: FStStrNoPop var_11C
  loc_A3DEF7: FLdRfVar var_118
  loc_A3DEFA: FLdPr Me
  loc_A3DEFD: VCallAd Control_ID_CodiOrgaLbl
  loc_A3DF00: FStAdFunc var_114
  loc_A3DF03: FLdPr var_114
  loc_A3DF06:  = Me.Caption
  loc_A3DF0B: ILdRf var_118
  loc_A3DF0E: ConcatStr
  loc_A3DF0F: FStStrNoPop var_120
  loc_A3DF12: LitStr "</span>"
  loc_A3DF15: ConcatStr
  loc_A3DF16: CVarStr var_C4
  loc_A3DF19: PopAdLdVar
  loc_A3DF1A: FLdPr Me
  loc_A3DF1D: MemLdRfVar from_stack_1.htmFile
  loc_A3DF20: LdPrVar
  loc_A3DF22: LateMemCall
  loc_A3DF28: FFreeStr var_108 = "": var_10C = "": var_11C = "": var_118 = ""
  loc_A3DF35: FFreeAd var_110 = ""
  loc_A3DF3C: FFreeVar var_B4 = ""
  loc_A3DF43: LitVarStr var_94, " </th>  </tr>"
  loc_A3DF48: PopAdLdVar
  loc_A3DF49: FLdPr Me
  loc_A3DF4C: MemLdRfVar from_stack_1.htmFile
  loc_A3DF4F: LdPrVar
  loc_A3DF51: LateMemCall
  loc_A3DF57: LitVarStr var_94, "</table>"
  loc_A3DF5C: PopAdLdVar
  loc_A3DF5D: FLdPr Me
  loc_A3DF60: MemLdRfVar from_stack_1.htmFile
  loc_A3DF63: LdPrVar
  loc_A3DF65: LateMemCall
  loc_A3DF6B: ExitProcHresult
End Function

Private Function Proc_200_42_973890() '973890
  'Data Table: 4F7D24
  loc_973864: LitVarStr var_94, "</body>"
  loc_973869: PopAdLdVar
  loc_97386A: FLdPr Me
  loc_97386D: MemLdRfVar from_stack_1.htmFile
  loc_973870: LdPrVar
  loc_973872: LateMemCall
  loc_973878: LitVarStr var_94, "</html>"
  loc_97387D: PopAdLdVar
  loc_97387E: FLdPr Me
  loc_973881: MemLdRfVar from_stack_1.htmFile
  loc_973884: LdPrVar
  loc_973886: LateMemCall
  loc_97388C: ExitProcHresult
End Function

Private Function Proc_200_43_940168() '940168
  'Data Table: 4F7D24
  loc_940164: ExitProcHresult
End Function
