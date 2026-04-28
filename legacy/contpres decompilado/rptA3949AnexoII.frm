VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoII
  Caption = "Acuerdo 3949 - Anexo II"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7725
  ClientHeight = 4200
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3945
    Width = 7725
    Height = 255
    TabIndex = 19
    OleObjectBlob = "rptA3949AnexoII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 20
    Cancel = -1  'True
    Picture = "rptA3949AnexoII.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoII.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2760
    Width = 4455
    Height = 1095
    TabIndex = 15
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2760
    Width = 3015
    Height = 1095
    TabIndex = 12
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6255
    Height = 2655
    TabIndex = 0
    Begin VB.Frame Frame5
      Left = 2280
      Top = 1320
      Width = 1815
      Height = 1095
      TabIndex = 9
      Begin VB.OptionButton optConsolidado
        Caption = "Consolidado"
        Left = 240
        Top = 240
        Width = 1215
        Height = 255
        TabIndex = 10
      End
      Begin VB.OptionButton optJurisdiccion
        Caption = "Por Jurisdicción"
        Left = 240
        Top = 600
        Width = 1455
        Height = 255
        TabIndex = 11
      End
    End
    Begin VB.Frame Frame4
      Left = 960
      Top = 1320
      Width = 1455
      Height = 1095
      TabIndex = 6
      Begin VB.OptionButton optAnalitico
        Caption = "Analítico"
        Left = 240
        Top = 600
        Width = 1095
        Height = 255
        TabIndex = 8
      End
      Begin VB.OptionButton optSintetico
        Caption = "Sintético"
        Left = 240
        Top = 240
        Width = 1095
        Height = 255
        TabIndex = 7
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.ComboBox cboTrimestre
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 840
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1095
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 990
      Top = 840
      Width = 690
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 21
    OleObjectBlob = "rptA3949AnexoII.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoII"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00589EDC
  bStruc(52) As Byte ' String fields: 13
End Type

Private Type UDT_2_005C3418
  bStruc(56) As Byte ' String fields: 2
End Type

Private Type UDT_3_005C3460
  bStruc(56) As Byte ' String fields: 2
End Type

Private Type UDT_4_005C34A8
  bStruc(56) As Byte ' String fields: 2
End Type

Private Type UDT_5_005C34F0
  bStruc(64) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9859B4
  'Data Table: 480118
  loc_98597C: FLdPr Me
  loc_98597F: VCallAd Control_ID_statusBar
  loc_985982: FStAdFunc var_88
  loc_985985: FLdPr var_88
  loc_985988: LateIdLdVar var_98 DispID_1 0
  loc_98598F: CStrVarTmp
  loc_985990: CVarStr var_A8
  loc_985993: PopAdLdVar
  loc_985994: FLdPr Me
  loc_985997: VCallAd Control_ID_statusBar
  loc_98599A: FStAdFunc var_BC
  loc_98599D: FLdPr var_BC
  loc_9859A0: LateIdSt
  loc_9859A5: FFreeAd var_88 = ""
  loc_9859AC: FFreeVar var_98 = ""
  loc_9859B3: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '95896C
  'Data Table: 480118
  loc_958954: LitI2_Byte 0
  loc_958956: ILdRf Me
  loc_958959: CastAd
  loc_95895C: FStAdFunc var_88
  loc_95895F: FLdRfVar var_88
  loc_958962: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_958967: FFree1Ad var_88
  loc_95896A: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '958C64
  'Data Table: 480118
  loc_958C4C: ILdRf Me
  loc_958C4F: CastAd
  loc_958C52: FStAdFunc var_88
  loc_958C55: FLdRfVar var_88
  loc_958C58: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_958C5D: FFree1Ad var_88
  loc_958C60: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '996248
  'Data Table: 480118
  loc_9961E4: FLdRfVar var_92
  loc_9961E7: FLdPr Me
  loc_9961EA: VCallAd Control_ID_optConsolidado
  loc_9961ED: FStAdFunc var_90
  loc_9961F0: FLdPr var_90
  loc_9961F3:  = Me.Value
  loc_9961F8: FLdI2 var_92
  loc_9961FB: FLdRfVar var_8A
  loc_9961FE: FLdPr Me
  loc_996201: VCallAd Control_ID_optSintetico
  loc_996204: FStAdFunc var_88
  loc_996207: FLdPr var_88
  loc_99620A:  = Me.Value
  loc_99620F: FLdI2 var_8A
  loc_996212: AndI4
  loc_996213: NotI4
  loc_996214: FFreeAd var_88 = ""
  loc_99621B: BranchF loc_99622E
  loc_99621E: LitI4 0
  loc_996223: LitStr "Para generar el archivo de texto debe seleccionar: 'Sintético' y 'Consolidado'"
  loc_996226: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_99622B: Branch loc_996244
  loc_99622E: LitI2_Byte &HFF
  loc_996230: ILdRf Me
  loc_996233: CastAd
  loc_996236: FStAdFunc var_88
  loc_996239: FLdRfVar var_88
  loc_99623C: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_996241: FFree1Ad var_88
  loc_996244: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '958C18
  'Data Table: 480118
  loc_958C00: ILdRf Me
  loc_958C03: CastAd
  loc_958C06: FStAdFunc var_88
  loc_958C09: FLdRfVar var_88
  loc_958C0C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_958C11: FFree1Ad var_88
  loc_958C14: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1B3FC
  'Data Table: 480118
  loc_A1B26C: LitI2_Byte &HFF
  loc_A1B26E: ImpAdStI2 MemVar_C3D840
  loc_A1B271: ILdRf Me
  loc_A1B274: CastAd
  loc_A1B277: FStAdFunc var_8C
  loc_A1B27A: FLdRfVar var_8C
  loc_A1B27D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1B282: FFree1Ad var_8C
  loc_A1B285: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1B288: FLdRfVar var_88
  loc_A1B28B: NewIfNullPr clsperiodo
  loc_A1B28E: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1B293: FLdRfVar var_90
  loc_A1B296: FLdRfVar var_88
  loc_A1B299: NewIfNullPr clsperiodo
  loc_A1B29C: from_stack_1 = clsperiodo.RecordCount
  loc_A1B2A1: ILdRf var_90
  loc_A1B2A4: LitI4 0
  loc_A1B2A9: GtI4
  loc_A1B2AA: BranchF loc_A1B33D
  loc_A1B2AD: FLdRfVar var_88
  loc_A1B2B0: NewIfNullPr clsperiodo
  loc_A1B2B3: Call clsperiodo.MoveFirst()
  loc_A1B2B8: FLdRfVar var_92
  loc_A1B2BB: FLdRfVar var_88
  loc_A1B2BE: NewIfNullPr clsperiodo
  loc_A1B2C1: from_stack_1 = clsperiodo.EOF
  loc_A1B2C6: FLdI2 var_92
  loc_A1B2C9: NotI4
  loc_A1B2CA: BranchF loc_A1B33D
  loc_A1B2CD: LitVar_Missing var_D0
  loc_A1B2D0: PopAdLdVar
  loc_A1B2D1: FLdRfVar var_BC
  loc_A1B2D4: FLdRfVar var_AC
  loc_A1B2D7: LitVarStr var_A8, "PeriInfo"
  loc_A1B2DC: PopAdLdVar
  loc_A1B2DD: FLdRfVar var_98
  loc_A1B2E0: FLdRfVar var_8C
  loc_A1B2E3: FLdRfVar var_88
  loc_A1B2E6: NewIfNullPr clsperiodo
  loc_A1B2E9: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1B2EE: FLdPr var_8C
  loc_A1B2F1:  = Me.Fields
  loc_A1B2F6: FLdPr var_98
  loc_A1B2F9: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B2FE: FLdPr var_AC
  loc_A1B301:  = Me.Value
  loc_A1B306: FLdRfVar var_BC
  loc_A1B309: CStrVarTmp
  loc_A1B30A: FStStrNoPop var_C0
  loc_A1B30D: FLdPr Me
  loc_A1B310: VCallAd Control_ID_cboPeriodo
  loc_A1B313: FStAdFunc var_D4
  loc_A1B316: FLdPr var_D4
  loc_A1B319: Me.AddItem from_stack_1, from_stack_2
  loc_A1B31E: FFree1Str var_C0
  loc_A1B321: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_A1B32C: FFree1Var var_BC = ""
  loc_A1B32F: FLdRfVar var_88
  loc_A1B332: NewIfNullPr clsperiodo
  loc_A1B335: Call clsperiodo.MoveSiguiente()
  loc_A1B33A: Branch loc_A1B2B8
  loc_A1B33D: FLdPr Me
  loc_A1B340: VCallAd Control_ID_cboTrimestre
  loc_A1B343: FStAdFunc var_D8
  loc_A1B346: LitVar_Missing var_A8
  loc_A1B349: PopAdLdVar
  loc_A1B34A: LitStr "Primero"
  loc_A1B34D: FLdPr var_D8
  loc_A1B350: Me.AddItem from_stack_1, from_stack_2
  loc_A1B355: LitI4 1
  loc_A1B35A: FLdRfVar var_92
  loc_A1B35D: FLdPr var_D8
  loc_A1B360:  = Me.NewIndex
  loc_A1B365: FLdI2 var_92
  loc_A1B368: FLdPr var_D8
  loc_A1B36B: Me.ItemData = from_stack_1
  loc_A1B370: LitVar_Missing var_A8
  loc_A1B373: PopAdLdVar
  loc_A1B374: LitStr "Segundo"
  loc_A1B377: FLdPr var_D8
  loc_A1B37A: Me.AddItem from_stack_1, from_stack_2
  loc_A1B37F: LitI4 2
  loc_A1B384: FLdRfVar var_92
  loc_A1B387: FLdPr var_D8
  loc_A1B38A:  = Me.NewIndex
  loc_A1B38F: FLdI2 var_92
  loc_A1B392: FLdPr var_D8
  loc_A1B395: Me.ItemData = from_stack_1
  loc_A1B39A: LitVar_Missing var_A8
  loc_A1B39D: PopAdLdVar
  loc_A1B39E: LitStr "Tercero"
  loc_A1B3A1: FLdPr var_D8
  loc_A1B3A4: Me.AddItem from_stack_1, from_stack_2
  loc_A1B3A9: LitI4 3
  loc_A1B3AE: FLdRfVar var_92
  loc_A1B3B1: FLdPr var_D8
  loc_A1B3B4:  = Me.NewIndex
  loc_A1B3B9: FLdI2 var_92
  loc_A1B3BC: FLdPr var_D8
  loc_A1B3BF: Me.ItemData = from_stack_1
  loc_A1B3C4: LitVar_Missing var_A8
  loc_A1B3C7: PopAdLdVar
  loc_A1B3C8: LitStr "Cuarto"
  loc_A1B3CB: FLdPr var_D8
  loc_A1B3CE: Me.AddItem from_stack_1, from_stack_2
  loc_A1B3D3: LitI4 4
  loc_A1B3D8: FLdRfVar var_92
  loc_A1B3DB: FLdPr var_D8
  loc_A1B3DE:  = Me.NewIndex
  loc_A1B3E3: FLdI2 var_92
  loc_A1B3E6: FLdPr var_D8
  loc_A1B3E9: Me.ItemData = from_stack_1
  loc_A1B3EE: LitNothing
  loc_A1B3F0: FStAd var_D8 
  loc_A1B3F4: Call cmdNueva_Click()
  loc_A1B3F9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '958628
  'Data Table: 480118
  loc_958610: FLdPr Me
  loc_958613: VCallAd Control_ID_wbbReporte
  loc_958616: FStAdFunc var_88
  loc_958619: FLdRfVar var_88
  loc_95861C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_958621: FFree1Ad var_88
  loc_958624: ExitProcHresult
  loc_958625: LtI2
  loc_958626: GtCyR8
End Sub

Private Sub cmdSalir_Click() '9768C4
  'Data Table: 480118
  loc_976894: LitVarStr var_94, "Cerrando..."
  loc_976899: PopAdLdVar
  loc_97689A: FLdPr Me
  loc_97689D: VCallAd Control_ID_statusBar
  loc_9768A0: FStAdFunc var_A8
  loc_9768A3: FLdPr var_A8
  loc_9768A6: LateIdSt
  loc_9768AB: FFree1Ad var_A8
  loc_9768AE: ILdRf Me
  loc_9768B1: FStAdNoPop
  loc_9768B5: ImpAdLdRf MemVar_C44F9C
  loc_9768B8: NewIfNullPr Me
  loc_9768BB: Me.Global.Unload from_stack_1
  loc_9768C0: FFree1Ad var_A8
  loc_9768C3: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A1AC88
  'Data Table: 480118
  loc_A1AAEC: LitI2_Byte 0
  loc_A1AAEE: FLdPr Me
  loc_A1AAF1: MemStI2 bGenerado
  loc_A1AAF4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A1AAF9: ImpAdLdI2 MemVar_C3D064
  loc_A1AAFC: CStrUI1
  loc_A1AAFE: FStStrNoPop var_88
  loc_A1AB01: FLdPr Me
  loc_A1AB04: VCallAd Control_ID_cboPeriodo
  loc_A1AB07: FStAdFunc var_8C
  loc_A1AB0A: FLdPr var_8C
  loc_A1AB0D: Me.Text = from_stack_1
  loc_A1AB12: FFree1Str var_88
  loc_A1AB15: FFree1Ad var_8C
  loc_A1AB18: FLdRfVar var_9C
  loc_A1AB1B: ImpAdCallFPR4  = Date
  loc_A1AB20: FLdRfVar var_9C
  loc_A1AB23: FLdRfVar var_AC
  loc_A1AB26: ImpAdCallFPR4  = Month()
  loc_A1AB2B: FLdRfVar var_AC
  loc_A1AB2E: FStVar var_BC
  loc_A1AB32: FFree1Var var_9C = ""
  loc_A1AB35: FLdRfVar var_BC
  loc_A1AB38: LitVarI2 var_CC, 1
  loc_A1AB3D: HardType
  loc_A1AB3E: EqVarBool
  loc_A1AB40: BranchT loc_A1AB5F
  loc_A1AB43: FLdRfVar var_BC
  loc_A1AB46: LitVarI2 var_DC, 2
  loc_A1AB4B: HardType
  loc_A1AB4C: EqVarBool
  loc_A1AB4E: BranchT loc_A1AB5F
  loc_A1AB51: FLdRfVar var_BC
  loc_A1AB54: LitVarI2 var_EC, 3
  loc_A1AB59: HardType
  loc_A1AB5A: EqVarBool
  loc_A1AB5C: BranchF loc_A1AB79
  loc_A1AB5F: LitStr "Primero"
  loc_A1AB62: FLdPr Me
  loc_A1AB65: VCallAd Control_ID_cboTrimestre
  loc_A1AB68: FStAdFunc var_8C
  loc_A1AB6B: FLdPr var_8C
  loc_A1AB6E: Me.Text = from_stack_1
  loc_A1AB73: FFree1Ad var_8C
  loc_A1AB76: Branch loc_A1AC42
  loc_A1AB79: FLdRfVar var_BC
  loc_A1AB7C: LitVarI2 var_CC, 4
  loc_A1AB81: HardType
  loc_A1AB82: EqVarBool
  loc_A1AB84: BranchT loc_A1ABA3
  loc_A1AB87: FLdRfVar var_BC
  loc_A1AB8A: LitVarI2 var_DC, 5
  loc_A1AB8F: HardType
  loc_A1AB90: EqVarBool
  loc_A1AB92: BranchT loc_A1ABA3
  loc_A1AB95: FLdRfVar var_BC
  loc_A1AB98: LitVarI2 var_EC, 6
  loc_A1AB9D: HardType
  loc_A1AB9E: EqVarBool
  loc_A1ABA0: BranchF loc_A1ABBD
  loc_A1ABA3: LitStr "Segundo"
  loc_A1ABA6: FLdPr Me
  loc_A1ABA9: VCallAd Control_ID_cboTrimestre
  loc_A1ABAC: FStAdFunc var_8C
  loc_A1ABAF: FLdPr var_8C
  loc_A1ABB2: Me.Text = from_stack_1
  loc_A1ABB7: FFree1Ad var_8C
  loc_A1ABBA: Branch loc_A1AC42
  loc_A1ABBD: FLdRfVar var_BC
  loc_A1ABC0: LitVarI2 var_CC, 7
  loc_A1ABC5: HardType
  loc_A1ABC6: EqVarBool
  loc_A1ABC8: BranchT loc_A1ABE7
  loc_A1ABCB: FLdRfVar var_BC
  loc_A1ABCE: LitVarI2 var_DC, 8
  loc_A1ABD3: HardType
  loc_A1ABD4: EqVarBool
  loc_A1ABD6: BranchT loc_A1ABE7
  loc_A1ABD9: FLdRfVar var_BC
  loc_A1ABDC: LitVarI2 var_EC, 9
  loc_A1ABE1: HardType
  loc_A1ABE2: EqVarBool
  loc_A1ABE4: BranchF loc_A1AC01
  loc_A1ABE7: LitStr "Tercero"
  loc_A1ABEA: FLdPr Me
  loc_A1ABED: VCallAd Control_ID_cboTrimestre
  loc_A1ABF0: FStAdFunc var_8C
  loc_A1ABF3: FLdPr var_8C
  loc_A1ABF6: Me.Text = from_stack_1
  loc_A1ABFB: FFree1Ad var_8C
  loc_A1ABFE: Branch loc_A1AC42
  loc_A1AC01: FLdRfVar var_BC
  loc_A1AC04: LitVarI2 var_CC, 10
  loc_A1AC09: HardType
  loc_A1AC0A: EqVarBool
  loc_A1AC0C: BranchT loc_A1AC2B
  loc_A1AC0F: FLdRfVar var_BC
  loc_A1AC12: LitVarI2 var_DC, 11
  loc_A1AC17: HardType
  loc_A1AC18: EqVarBool
  loc_A1AC1A: BranchT loc_A1AC2B
  loc_A1AC1D: FLdRfVar var_BC
  loc_A1AC20: LitVarI2 var_EC, 12
  loc_A1AC25: HardType
  loc_A1AC26: EqVarBool
  loc_A1AC28: BranchF loc_A1AC42
  loc_A1AC2B: LitStr "Cuarto"
  loc_A1AC2E: FLdPr Me
  loc_A1AC31: VCallAd Control_ID_cboTrimestre
  loc_A1AC34: FStAdFunc var_8C
  loc_A1AC37: FLdPr var_8C
  loc_A1AC3A: Me.Text = from_stack_1
  loc_A1AC3F: FFree1Ad var_8C
  loc_A1AC42: LitI2_Byte &HFF
  loc_A1AC44: FLdPr Me
  loc_A1AC47: VCallAd Control_ID_optSintetico
  loc_A1AC4A: FStAdFunc var_8C
  loc_A1AC4D: FLdPr var_8C
  loc_A1AC50: Me.Value = from_stack_1b
  loc_A1AC55: FFree1Ad var_8C
  loc_A1AC58: LitI2_Byte &HFF
  loc_A1AC5A: FLdPr Me
  loc_A1AC5D: VCallAd Control_ID_optConsolidado
  loc_A1AC60: FStAdFunc var_8C
  loc_A1AC63: FLdPr var_8C
  loc_A1AC66: Me.Value = from_stack_1b
  loc_A1AC6B: FFree1Ad var_8C
  loc_A1AC6E: Call HabilitarCriterio()
  loc_A1AC73: ILdRf Me
  loc_A1AC76: CastAd
  loc_A1AC79: FStAdFunc var_8C
  loc_A1AC7C: FLdRfVar var_8C
  loc_A1AC7F: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A1AC84: FFree1Ad var_8C
  loc_A1AC87: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '954CDC
  'Data Table: 480118
  loc_954CC4: ILdRf Me
  loc_954CC7: CastAd
  loc_954CCA: FStAdFunc var_88
  loc_954CCD: FLdRfVar var_88
  loc_954CD0: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_954CD5: FFree1Ad var_88
  loc_954CD8: ExitProcHresult
End Sub

Public Function htmFileGet() '4810EC
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4810FB
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '48110A
  htmFile = Value
End Sub

Public Function bGeneradoGet() '481119
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '481128
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AB41C
  'Data Table: 480118
  loc_9AB398: LitI4 0
  loc_9AB39D: LitI4 5
  loc_9AB3A2: FLdRfVar var_88
  loc_9AB3A5: Redim
  loc_9AB3AF: FLdPr Me
  loc_9AB3B2: VCallAd Control_ID_cboPeriodo
  loc_9AB3B5: CVarAd
  loc_9AB3B9: ParmAry1St
  loc_9AB3BF: FLdPr Me
  loc_9AB3C2: VCallAd Control_ID_cboTrimestre
  loc_9AB3C5: CVarAd
  loc_9AB3C9: ParmAry1St
  loc_9AB3CF: FLdPr Me
  loc_9AB3D2: VCallAd Control_ID_optSintetico
  loc_9AB3D5: CVarAd
  loc_9AB3D9: ParmAry1St
  loc_9AB3DF: FLdPr Me
  loc_9AB3E2: VCallAd Control_ID_optAnalitico
  loc_9AB3E5: CVarAd
  loc_9AB3E9: ParmAry1St
  loc_9AB3EF: FLdPr Me
  loc_9AB3F2: VCallAd Control_ID_optConsolidado
  loc_9AB3F5: CVarAd
  loc_9AB3F9: ParmAry1St
  loc_9AB3FF: FLdPr Me
  loc_9AB402: VCallAd Control_ID_optJurisdiccion
  loc_9AB405: CVarAd
  loc_9AB409: ParmAry1St
  loc_9AB40F: FLdRfVar var_88
  loc_9AB412: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AB417: FLdRfVar var_88
  loc_9AB41A: Erase
  loc_9AB41B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B35DFC
  'Data Table: 480118
  loc_B35460: FLdPr Me
  loc_B35463: MemLdI2 bGenerado
  loc_B35466: BranchF loc_B3546A
  loc_B35469: ExitProcHresult
  loc_B3546A: LitVarStr var_A0, "Generando reporte..."
  loc_B3546F: PopAdLdVar
  loc_B35470: FLdPr Me
  loc_B35473: VCallAd Control_ID_statusBar
  loc_B35476: FStAdFunc var_B4
  loc_B35479: FLdPr var_B4
  loc_B3547C: LateIdSt
  loc_B35481: FFree1Ad var_B4
  loc_B35484: LitI4 &HB
  loc_B35489: CI2I4
  loc_B3548A: FLdPr Me
  loc_B3548D: Me.MousePointer = from_stack_1
  loc_B35492: FLdPr Me
  loc_B35495: MemLdRfVar from_stack_1.global_72
  loc_B35498: NewIfNullAd
  loc_B3549B: FStAd var_B8 
  loc_B3549F: FLdRfVar var_C0
  loc_B354A2: FLdRfVar var_BC
  loc_B354A5: FLdPr Me
  loc_B354A8: VCallAd Control_ID_cboPeriodo
  loc_B354AB: FStAdFunc var_B4
  loc_B354AE: FLdPr var_B4
  loc_B354B1:  = Me.Text
  loc_B354B6: ILdRf var_BC
  loc_B354B9: FLdPr var_B8
  loc_B354BC: from_stack_2v = clsimputacion.BuscaPartExtra(from_stack_1v)
  loc_B354C1: FLdZeroAd var_C0
  loc_B354C4: FStStr var_90
  loc_B354C7: FFree1Str var_BC
  loc_B354CA: FFree1Ad var_B4
  loc_B354CD: FLdRfVar var_CC
  loc_B354D0: FLdRfVar var_C2
  loc_B354D3: FLdPr Me
  loc_B354D6: VCallAd Control_ID_cboTrimestre
  loc_B354D9: FStAdFunc var_B4
  loc_B354DC: FLdPr var_B4
  loc_B354DF:  = Me.ListIndex
  loc_B354E4: FLdI2 var_C2
  loc_B354E7: FLdPr Me
  loc_B354EA: VCallAd Control_ID_cboTrimestre
  loc_B354ED: FStAdFunc var_C8
  loc_B354F0: FLdPr var_C8
  loc_B354F3:  = Me.ItemData
  loc_B354F8: ILdRf var_CC
  loc_B354FB: LitI4 3
  loc_B35500: MulI4
  loc_B35501: CUI1I4
  loc_B35503: FStUI1 var_86
  loc_B35507: FFreeAd var_B4 = ""
  loc_B3550E: FLdRfVar var_104
  loc_B35511: FLdPr Me
  loc_B35514: VCallAd Control_ID_cboPeriodo
  loc_B35517: FStAdFunc var_100
  loc_B3551A: FLdPr var_100
  loc_B3551D:  = Me.Text
  loc_B35522: FLdRfVar var_BC
  loc_B35525: FLdPr Me
  loc_B35528: VCallAd Control_ID_cboPeriodo
  loc_B3552B: FStAdFunc var_B4
  loc_B3552E: FLdPr var_B4
  loc_B35531:  = Me.Text
  loc_B35536: LitI2_Byte 1
  loc_B35538: LitI2_Byte 1
  loc_B3553A: ILdRf var_BC
  loc_B3553D: CI2Str
  loc_B3553F: FLdRfVar var_DC
  loc_B35542: ImpAdCallFPR4  = DateSerial(, , )
  loc_B35547: FLdRfVar var_C0
  loc_B3554A: FLdPr Me
  loc_B3554D: VCallAd Control_ID_cboPeriodo
  loc_B35550: FStAdFunc var_C8
  loc_B35553: FLdPr var_C8
  loc_B35556:  = Me.Text
  loc_B3555B: LitI2_Byte 1
  loc_B3555D: FLdUI1
  loc_B35561: CI2UI1
  loc_B35563: LitI2_Byte 1
  loc_B35565: AddI2
  loc_B35566: ILdRf var_C0
  loc_B35569: CI2Str
  loc_B3556B: FLdRfVar var_EC
  loc_B3556E: ImpAdCallFPR4  = DateSerial(, , )
  loc_B35573: FLdRfVar var_C2
  loc_B35576: FLdPr Me
  loc_B35579: VCallAd Control_ID_optSintetico
  loc_B3557C: FStAdFunc var_110
  loc_B3557F: FLdPr var_110
  loc_B35582:  = Me.Value
  loc_B35587: FLdRfVar var_116
  loc_B3558A: FLdPr Me
  loc_B3558D: VCallAd Control_ID_optConsolidado
  loc_B35590: FStAdFunc var_114
  loc_B35593: FLdPr var_114
  loc_B35596:  = Me.Value
  loc_B3559B: FLdRfVar var_118
  loc_B3559E: FLdI2 var_116
  loc_B355A1: FLdI2 var_C2
  loc_B355A4: FLdRfVar var_EC
  loc_B355A7: LitVarI2 var_A0, 1
  loc_B355AC: SubVar var_FC
  loc_B355B0: CStrVarVal var_10C
  loc_B355B4: FLdRfVar var_DC
  loc_B355B7: CStrVarVal var_108
  loc_B355BB: LitI2_Byte 0
  loc_B355BD: ILdRf var_90
  loc_B355C0: ILdRf var_104
  loc_B355C3: FLdPr var_B8
  loc_B355C6: from_stack_8v = clsimputacion.GenerarEjecucion(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_B355CB: FLdI2 var_118
  loc_B355CE: NotI4
  loc_B355CF: FFreeStr var_BC = "": var_C0 = "": var_104 = "": var_108 = ""
  loc_B355DC: FFreeAd var_B4 = "": var_C8 = "": var_100 = "": var_110 = ""
  loc_B355E9: FFreeVar var_EC = ""
  loc_B355F0: BranchF loc_B35603
  loc_B355F3: LitI4 0
  loc_B355F8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B355FB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B35600: Branch loc_B35DD5
  loc_B35603: LitI4 1
  loc_B35608: LitI4 1
  loc_B3560D: FLdPr Me
  loc_B35610: MemLdRfVar from_stack_1.global_100
  loc_B35613: Redim
  loc_B3561D: LitI2_Byte 0
  loc_B3561F: FLdPr Me
  loc_B35622: MemStI2 global_104
  loc_B35625: LitI4 1
  loc_B3562A: LitI4 1
  loc_B3562F: FLdPr Me
  loc_B35632: MemLdRfVar from_stack_1.global_116
  loc_B35635: Redim
  loc_B3563F: FLdPr var_B8
  loc_B35642: Call clsimputacion.MoveFirst()
  loc_B35647: Call Proc_161_19_9E0C44()
  loc_B3564C: FLdPr Me
  loc_B3564F: VCallAd Control_ID_optJurisdiccion
  loc_B35652: CVarAd
  loc_B35656: CBoolVarNull
  loc_B35658: FFree1Var var_DC = ""
  loc_B3565B: BranchF loc_B358C4
  loc_B3565E: FLdRfVar var_C2
  loc_B35661: FLdPr var_B8
  loc_B35664: from_stack_1 = clsimputacion.EOF
  loc_B35669: FLdI2 var_C2
  loc_B3566C: NotI4
  loc_B3566D: BranchF loc_B358C1
  loc_B35670: FLdRfVar var_DC
  loc_B35673: FLdRfVar var_100
  loc_B35676: LitVarStr var_A0, "CodiOrga"
  loc_B3567B: PopAdLdVar
  loc_B3567C: FLdRfVar var_C8
  loc_B3567F: FLdRfVar var_B4
  loc_B35682: FLdPr var_B8
  loc_B35685: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3568A: FLdPr var_B4
  loc_B3568D:  = Me.Fields
  loc_B35692: FLdPr var_C8
  loc_B35695: from_stack_2 = Me.Item(from_stack_1)
  loc_B3569A: FLdPr var_100
  loc_B3569D:  = Me.Value
  loc_B356A2: FLdRfVar var_DC
  loc_B356A5: FLdPr Me
  loc_B356A8: MemLdI2 global_104
  loc_B356AB: CI4UI1
  loc_B356AC: FLdPr Me
  loc_B356AF: MemLdStr global_100
  loc_B356B2: Ary1LdPr
  loc_B356B3: MemLdStr global_0
  loc_B356B6: CVarStr var_B0
  loc_B356B9: HardType
  loc_B356BA: NeVarBool
  loc_B356BC: FFreeAd var_B4 = "": var_C8 = ""
  loc_B356C5: FFree1Var var_DC = ""
  loc_B356C8: BranchF loc_B356D3
  loc_B356CB: Call Proc_161_19_9E0C44()
  loc_B356D0: Branch loc_B358BE
  loc_B356D3: FLdRfVar var_DC
  loc_B356D6: FLdRfVar var_100
  loc_B356D9: LitVarStr var_A0, "CodiPart"
  loc_B356DE: PopAdLdVar
  loc_B356DF: FLdRfVar var_C8
  loc_B356E2: FLdRfVar var_B4
  loc_B356E5: FLdPr var_B8
  loc_B356E8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B356ED: FLdPr var_B4
  loc_B356F0:  = Me.Fields
  loc_B356F5: FLdPr var_C8
  loc_B356F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B356FD: FLdPr var_100
  loc_B35700:  = Me.Value
  loc_B35705: LitI4 1
  loc_B3570A: FLdRfVar var_DC
  loc_B3570D: CStrVarTmp
  loc_B3570E: FStStrNoPop var_BC
  loc_B35711: ImpAdCallI2 Left$(, )
  loc_B35716: FStStrNoPop var_C0
  loc_B35719: LitI4 1
  loc_B3571E: FLdPr Me
  loc_B35721: MemLdI2 global_106
  loc_B35724: CI4UI1
  loc_B35725: FLdPr Me
  loc_B35728: MemLdI2 global_104
  loc_B3572B: CI4UI1
  loc_B3572C: FLdPr Me
  loc_B3572F: MemLdStr global_100
  loc_B35732: Ary1LdPr
  loc_B35733: MemLdStr global_8
  loc_B35736: Ary1LdPr
  loc_B35737: MemLdStr global_0
  loc_B3573A: ImpAdCallI2 Left$(, )
  loc_B3573F: FStStrNoPop var_104
  loc_B35742: NeStr
  loc_B35744: FFreeStr var_BC = "": var_C0 = ""
  loc_B3574D: FFreeAd var_B4 = "": var_C8 = ""
  loc_B35756: FFree1Var var_DC = ""
  loc_B35759: BranchF loc_B35764
  loc_B3575C: Call Proc_161_20_A27724()
  loc_B35761: Branch loc_B358BE
  loc_B35764: FLdRfVar var_DC
  loc_B35767: FLdRfVar var_100
  loc_B3576A: LitVarStr var_A0, "CodiPart"
  loc_B3576F: PopAdLdVar
  loc_B35770: FLdRfVar var_C8
  loc_B35773: FLdRfVar var_B4
  loc_B35776: FLdPr var_B8
  loc_B35779: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3577E: FLdPr var_B4
  loc_B35781:  = Me.Fields
  loc_B35786: FLdPr var_C8
  loc_B35789: from_stack_2 = Me.Item(from_stack_1)
  loc_B3578E: FLdPr var_100
  loc_B35791:  = Me.Value
  loc_B35796: LitI4 2
  loc_B3579B: FLdRfVar var_DC
  loc_B3579E: CStrVarTmp
  loc_B3579F: FStStrNoPop var_BC
  loc_B357A2: ImpAdCallI2 Left$(, )
  loc_B357A7: FStStrNoPop var_C0
  loc_B357AA: LitI4 2
  loc_B357AF: FLdPr Me
  loc_B357B2: MemLdI2 global_108
  loc_B357B5: CI4UI1
  loc_B357B6: FLdPr Me
  loc_B357B9: MemLdI2 global_106
  loc_B357BC: CI4UI1
  loc_B357BD: FLdPr Me
  loc_B357C0: MemLdI2 global_104
  loc_B357C3: CI4UI1
  loc_B357C4: FLdPr Me
  loc_B357C7: MemLdStr global_100
  loc_B357CA: Ary1LdPr
  loc_B357CB: MemLdStr global_8
  loc_B357CE: Ary1LdPr
  loc_B357CF: MemLdStr htmFile
  loc_B357D2: Ary1LdPr
  loc_B357D3: MemLdStr global_0
  loc_B357D6: ImpAdCallI2 Left$(, )
  loc_B357DB: FStStrNoPop var_104
  loc_B357DE: NeStr
  loc_B357E0: FFreeStr var_BC = "": var_C0 = ""
  loc_B357E9: FFreeAd var_B4 = "": var_C8 = ""
  loc_B357F2: FFree1Var var_DC = ""
  loc_B357F5: BranchF loc_B35800
  loc_B357F8: Call Proc_161_21_A326E4()
  loc_B357FD: Branch loc_B358BE
  loc_B35800: FLdRfVar var_DC
  loc_B35803: FLdRfVar var_100
  loc_B35806: LitVarStr var_A0, "CodiPart"
  loc_B3580B: PopAdLdVar
  loc_B3580C: FLdRfVar var_C8
  loc_B3580F: FLdRfVar var_B4
  loc_B35812: FLdPr var_B8
  loc_B35815: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B3581A: FLdPr var_B4
  loc_B3581D:  = Me.Fields
  loc_B35822: FLdPr var_C8
  loc_B35825: from_stack_2 = Me.Item(from_stack_1)
  loc_B3582A: FLdPr var_100
  loc_B3582D:  = Me.Value
  loc_B35832: LitI4 3
  loc_B35837: FLdRfVar var_DC
  loc_B3583A: CStrVarTmp
  loc_B3583B: FStStrNoPop var_BC
  loc_B3583E: ImpAdCallI2 Left$(, )
  loc_B35843: FStStrNoPop var_C0
  loc_B35846: LitI4 3
  loc_B3584B: FLdPr Me
  loc_B3584E: MemLdI2 global_110
  loc_B35851: CI4UI1
  loc_B35852: FLdPr Me
  loc_B35855: MemLdI2 global_108
  loc_B35858: CI4UI1
  loc_B35859: FLdPr Me
  loc_B3585C: MemLdI2 global_106
  loc_B3585F: CI4UI1
  loc_B35860: FLdPr Me
  loc_B35863: MemLdI2 global_104
  loc_B35866: CI4UI1
  loc_B35867: FLdPr Me
  loc_B3586A: MemLdStr global_100
  loc_B3586D: Ary1LdPr
  loc_B3586E: MemLdStr global_8
  loc_B35871: Ary1LdPr
  loc_B35872: MemLdStr htmFile
  loc_B35875: Ary1LdPr
  loc_B35876: MemLdStr htmFile
  loc_B35879: Ary1LdPr
  loc_B3587A: MemLdStr global_0
  loc_B3587D: ImpAdCallI2 Left$(, )
  loc_B35882: FStStrNoPop var_104
  loc_B35885: NeStr
  loc_B35887: FFreeStr var_BC = "": var_C0 = ""
  loc_B35890: FFreeAd var_B4 = "": var_C8 = ""
  loc_B35899: FFree1Var var_DC = ""
  loc_B3589C: BranchF loc_B358A7
  loc_B3589F: Call Proc_161_22_A5B310()
  loc_B358A4: Branch loc_B358BE
  loc_B358A7: FLdPr Me
  loc_B358AA: VCallAd Control_ID_optAnalitico
  loc_B358AD: CVarAd
  loc_B358B1: CBoolVarNull
  loc_B358B3: FFree1Var var_DC = ""
  loc_B358B6: BranchF loc_B358BE
  loc_B358B9: Call Proc_161_23_A4A3BC()
  loc_B358BE: Branch loc_B3565E
  loc_B358C1: Branch loc_B35ADD
  loc_B358C4: FLdRfVar var_C2
  loc_B358C7: FLdPr var_B8
  loc_B358CA: from_stack_1 = clsimputacion.EOF
  loc_B358CF: FLdI2 var_C2
  loc_B358D2: NotI4
  loc_B358D3: BranchF loc_B35ADD
  loc_B358D6: FLdRfVar var_DC
  loc_B358D9: FLdRfVar var_100
  loc_B358DC: LitVarStr var_A0, "CodiPart"
  loc_B358E1: PopAdLdVar
  loc_B358E2: FLdRfVar var_C8
  loc_B358E5: FLdRfVar var_B4
  loc_B358E8: FLdPr var_B8
  loc_B358EB: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B358F0: FLdPr var_B4
  loc_B358F3:  = Me.Fields
  loc_B358F8: FLdPr var_C8
  loc_B358FB: from_stack_2 = Me.Item(from_stack_1)
  loc_B35900: FLdPr var_100
  loc_B35903:  = Me.Value
  loc_B35908: LitI4 1
  loc_B3590D: FLdRfVar var_DC
  loc_B35910: CStrVarTmp
  loc_B35911: FStStrNoPop var_BC
  loc_B35914: ImpAdCallI2 Left$(, )
  loc_B35919: FStStrNoPop var_C0
  loc_B3591C: LitI4 1
  loc_B35921: FLdPr Me
  loc_B35924: MemLdI2 global_106
  loc_B35927: CI4UI1
  loc_B35928: FLdPr Me
  loc_B3592B: MemLdI2 global_104
  loc_B3592E: CI4UI1
  loc_B3592F: FLdPr Me
  loc_B35932: MemLdStr global_100
  loc_B35935: Ary1LdPr
  loc_B35936: MemLdStr global_8
  loc_B35939: Ary1LdPr
  loc_B3593A: MemLdStr global_0
  loc_B3593D: ImpAdCallI2 Left$(, )
  loc_B35942: FStStrNoPop var_104
  loc_B35945: NeStr
  loc_B35947: FFreeStr var_BC = "": var_C0 = ""
  loc_B35950: FFreeAd var_B4 = "": var_C8 = ""
  loc_B35959: FFree1Var var_DC = ""
  loc_B3595C: BranchF loc_B35967
  loc_B3595F: Call Proc_161_20_A27724()
  loc_B35964: Branch loc_B35ADA
  loc_B35967: FLdRfVar var_DC
  loc_B3596A: FLdRfVar var_100
  loc_B3596D: LitVarStr var_A0, "CodiPart"
  loc_B35972: PopAdLdVar
  loc_B35973: FLdRfVar var_C8
  loc_B35976: FLdRfVar var_B4
  loc_B35979: FLdPr var_B8
  loc_B3597C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B35981: FLdPr var_B4
  loc_B35984:  = Me.Fields
  loc_B35989: FLdPr var_C8
  loc_B3598C: from_stack_2 = Me.Item(from_stack_1)
  loc_B35991: FLdPr var_100
  loc_B35994:  = Me.Value
  loc_B35999: LitI4 2
  loc_B3599E: FLdRfVar var_DC
  loc_B359A1: CStrVarTmp
  loc_B359A2: FStStrNoPop var_BC
  loc_B359A5: ImpAdCallI2 Left$(, )
  loc_B359AA: FStStrNoPop var_C0
  loc_B359AD: LitI4 2
  loc_B359B2: FLdPr Me
  loc_B359B5: MemLdI2 global_108
  loc_B359B8: CI4UI1
  loc_B359B9: FLdPr Me
  loc_B359BC: MemLdI2 global_106
  loc_B359BF: CI4UI1
  loc_B359C0: FLdPr Me
  loc_B359C3: MemLdI2 global_104
  loc_B359C6: CI4UI1
  loc_B359C7: FLdPr Me
  loc_B359CA: MemLdStr global_100
  loc_B359CD: Ary1LdPr
  loc_B359CE: MemLdStr global_8
  loc_B359D1: Ary1LdPr
  loc_B359D2: MemLdStr htmFile
  loc_B359D5: Ary1LdPr
  loc_B359D6: MemLdStr global_0
  loc_B359D9: ImpAdCallI2 Left$(, )
  loc_B359DE: FStStrNoPop var_104
  loc_B359E1: NeStr
  loc_B359E3: FFreeStr var_BC = "": var_C0 = ""
  loc_B359EC: FFreeAd var_B4 = "": var_C8 = ""
  loc_B359F5: FFree1Var var_DC = ""
  loc_B359F8: BranchF loc_B35A03
  loc_B359FB: Call Proc_161_21_A326E4()
  loc_B35A00: Branch loc_B35ADA
  loc_B35A03: FLdRfVar var_DC
  loc_B35A06: FLdRfVar var_100
  loc_B35A09: LitVarStr var_A0, "CodiPart"
  loc_B35A0E: PopAdLdVar
  loc_B35A0F: FLdRfVar var_C8
  loc_B35A12: FLdRfVar var_B4
  loc_B35A15: FLdPr var_B8
  loc_B35A18: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B35A1D: FLdPr var_B4
  loc_B35A20:  = Me.Fields
  loc_B35A25: FLdPr var_C8
  loc_B35A28: from_stack_2 = Me.Item(from_stack_1)
  loc_B35A2D: FLdPr var_100
  loc_B35A30:  = Me.Value
  loc_B35A35: LitI4 3
  loc_B35A3A: FLdRfVar var_DC
  loc_B35A3D: CStrVarTmp
  loc_B35A3E: FStStrNoPop var_BC
  loc_B35A41: ImpAdCallI2 Left$(, )
  loc_B35A46: FStStrNoPop var_C0
  loc_B35A49: LitI4 3
  loc_B35A4E: FLdPr Me
  loc_B35A51: MemLdI2 global_110
  loc_B35A54: CI4UI1
  loc_B35A55: FLdPr Me
  loc_B35A58: MemLdI2 global_108
  loc_B35A5B: CI4UI1
  loc_B35A5C: FLdPr Me
  loc_B35A5F: MemLdI2 global_106
  loc_B35A62: CI4UI1
  loc_B35A63: FLdPr Me
  loc_B35A66: MemLdI2 global_104
  loc_B35A69: CI4UI1
  loc_B35A6A: FLdPr Me
  loc_B35A6D: MemLdStr global_100
  loc_B35A70: Ary1LdPr
  loc_B35A71: MemLdStr global_8
  loc_B35A74: Ary1LdPr
  loc_B35A75: MemLdStr htmFile
  loc_B35A78: Ary1LdPr
  loc_B35A79: MemLdStr htmFile
  loc_B35A7C: Ary1LdPr
  loc_B35A7D: MemLdStr global_0
  loc_B35A80: ImpAdCallI2 Left$(, )
  loc_B35A85: FStStrNoPop var_104
  loc_B35A88: NeStr
  loc_B35A8A: FFreeStr var_BC = "": var_C0 = ""
  loc_B35A93: FFreeAd var_B4 = "": var_C8 = ""
  loc_B35A9C: FFree1Var var_DC = ""
  loc_B35A9F: BranchF loc_B35AAA
  loc_B35AA2: Call Proc_161_22_A5B310()
  loc_B35AA7: Branch loc_B35ADA
  loc_B35AAA: FLdPr Me
  loc_B35AAD: VCallAd Control_ID_optAnalitico
  loc_B35AB0: CVarAd
  loc_B35AB4: CBoolVarNull
  loc_B35AB6: FFree1Var var_DC = ""
  loc_B35AB9: BranchF loc_B35AC4
  loc_B35ABC: Call Proc_161_23_A4A3BC()
  loc_B35AC1: Branch loc_B35ADA
  loc_B35AC4: LitI4 1
  loc_B35AC9: PopTmpLdAdStr var_CC
  loc_B35ACC: FLdPr Me
  loc_B35ACF: MemLdRfVar from_stack_1.global_72
  loc_B35AD2: NewIfNullPr clsimputacion
  loc_B35AD5: Call clsimputacion.Mover(from_stack_1v)
  loc_B35ADA: Branch loc_B358C4
  loc_B35ADD: LitNothing
  loc_B35ADF: FStAd var_B8 
  loc_B35AE3: LitI2_Byte 1
  loc_B35AE5: FLdPr Me
  loc_B35AE8: MemLdRfVar from_stack_1.global_104
  loc_B35AEB: FLdPr Me
  loc_B35AEE: MemLdStr global_100
  loc_B35AF1: LitI2_Byte 1
  loc_B35AF3: FnUBound
  loc_B35AF5: CI2I4
  loc_B35AF6: ForI2 var_11C
  loc_B35AFC: LitI2_Byte 1
  loc_B35AFE: FLdPr Me
  loc_B35B01: MemLdRfVar from_stack_1.global_106
  loc_B35B04: FLdPr Me
  loc_B35B07: MemLdI2 global_104
  loc_B35B0A: CI4UI1
  loc_B35B0B: FLdPr Me
  loc_B35B0E: MemLdStr global_100
  loc_B35B11: Ary1LdPr
  loc_B35B12: MemLdStr global_8
  loc_B35B15: LitI2_Byte 1
  loc_B35B17: FnUBound
  loc_B35B19: CI2I4
  loc_B35B1A: ForI2 var_120
  loc_B35B20: LitI2_Byte 1
  loc_B35B22: FLdPr Me
  loc_B35B25: MemLdRfVar from_stack_1.global_108
  loc_B35B28: FLdPr Me
  loc_B35B2B: MemLdI2 global_106
  loc_B35B2E: CI4UI1
  loc_B35B2F: FLdPr Me
  loc_B35B32: MemLdI2 global_104
  loc_B35B35: CI4UI1
  loc_B35B36: FLdPr Me
  loc_B35B39: MemLdStr global_100
  loc_B35B3C: Ary1LdPr
  loc_B35B3D: MemLdStr global_8
  loc_B35B40: Ary1LdPr
  loc_B35B41: MemLdStr htmFile
  loc_B35B44: LitI2_Byte 1
  loc_B35B46: FnUBound
  loc_B35B48: CI2I4
  loc_B35B49: ForI2 var_124
  loc_B35B4F: FLdPr Me
  loc_B35B52: VCallAd Control_ID_optAnalitico
  loc_B35B55: CVarAd
  loc_B35B59: CBoolVarNull
  loc_B35B5B: FFree1Var var_DC = ""
  loc_B35B5E: BranchF loc_B35C2E
  loc_B35B61: LitI2_Byte 1
  loc_B35B63: FLdPr Me
  loc_B35B66: MemLdRfVar from_stack_1.global_110
  loc_B35B69: FLdPr Me
  loc_B35B6C: MemLdI2 global_108
  loc_B35B6F: CI4UI1
  loc_B35B70: FLdPr Me
  loc_B35B73: MemLdI2 global_106
  loc_B35B76: CI4UI1
  loc_B35B77: FLdPr Me
  loc_B35B7A: MemLdI2 global_104
  loc_B35B7D: CI4UI1
  loc_B35B7E: FLdPr Me
  loc_B35B81: MemLdStr global_100
  loc_B35B84: Ary1LdPr
  loc_B35B85: MemLdStr global_8
  loc_B35B88: Ary1LdPr
  loc_B35B89: MemLdStr htmFile
  loc_B35B8C: Ary1LdPr
  loc_B35B8D: MemLdStr htmFile
  loc_B35B90: LitI2_Byte 1
  loc_B35B92: FnUBound
  loc_B35B94: CI2I4
  loc_B35B95: ForI2 var_128
  loc_B35B9B: FLdPr Me
  loc_B35B9E: MemLdI2 global_108
  loc_B35BA1: CI4UI1
  loc_B35BA2: FLdPr Me
  loc_B35BA5: MemLdI2 global_106
  loc_B35BA8: CI4UI1
  loc_B35BA9: FLdPr Me
  loc_B35BAC: MemLdI2 global_104
  loc_B35BAF: CI4UI1
  loc_B35BB0: FLdPr Me
  loc_B35BB3: MemLdStr global_100
  loc_B35BB6: AryLock
  loc_B35BB9: Ary1LdPr
  loc_B35BBA: MemLdStr global_8
  loc_B35BBD: AryLock
  loc_B35BC0: Ary1LdPr
  loc_B35BC1: MemLdStr htmFile
  loc_B35BC4: AryLock
  loc_B35BC7: Ary1LdPr
  loc_B35BC8: MemLdRfVar from_stack_1.global_0
  loc_B35BCB: FLdPr Me
  loc_B35BCE: MemLdI2 global_110
  loc_B35BD1: CI4UI1
  loc_B35BD2: FLdPr Me
  loc_B35BD5: MemLdI2 global_108
  loc_B35BD8: CI4UI1
  loc_B35BD9: FLdPr Me
  loc_B35BDC: MemLdI2 global_106
  loc_B35BDF: CI4UI1
  loc_B35BE0: FLdPr Me
  loc_B35BE3: MemLdI2 global_104
  loc_B35BE6: CI4UI1
  loc_B35BE7: FLdPr Me
  loc_B35BEA: MemLdStr global_100
  loc_B35BED: AryLock
  loc_B35BF0: Ary1LdPr
  loc_B35BF1: MemLdStr global_8
  loc_B35BF4: AryLock
  loc_B35BF7: Ary1LdPr
  loc_B35BF8: MemLdStr htmFile
  loc_B35BFB: AryLock
  loc_B35BFE: Ary1LdPr
  loc_B35BFF: MemLdStr htmFile
  loc_B35C02: AryLock
  loc_B35C05: Ary1LdPr
  loc_B35C06: MemLdRfVar from_stack_1.global_0
  loc_B35C09: Call Proc_161_25_9FA28C()
  loc_B35C0E: AryUnlock
  loc_B35C11: AryUnlock
  loc_B35C14: AryUnlock
  loc_B35C17: AryUnlock
  loc_B35C1A: AryUnlock
  loc_B35C1D: AryUnlock
  loc_B35C20: AryUnlock
  loc_B35C23: FLdPr Me
  loc_B35C26: MemLdRfVar from_stack_1.global_110
  loc_B35C29: NextI2 var_128, loc_B35B9B
  loc_B35C2E: FLdPr Me
  loc_B35C31: MemLdI2 global_106
  loc_B35C34: CI4UI1
  loc_B35C35: FLdPr Me
  loc_B35C38: MemLdI2 global_104
  loc_B35C3B: CI4UI1
  loc_B35C3C: FLdPr Me
  loc_B35C3F: MemLdStr global_100
  loc_B35C42: AryLock
  loc_B35C45: Ary1LdPr
  loc_B35C46: MemLdStr global_8
  loc_B35C49: AryLock
  loc_B35C4C: Ary1LdPr
  loc_B35C4D: MemLdRfVar from_stack_1.global_0
  loc_B35C50: FLdPr Me
  loc_B35C53: MemLdI2 global_108
  loc_B35C56: CI4UI1
  loc_B35C57: FLdPr Me
  loc_B35C5A: MemLdI2 global_106
  loc_B35C5D: CI4UI1
  loc_B35C5E: FLdPr Me
  loc_B35C61: MemLdI2 global_104
  loc_B35C64: CI4UI1
  loc_B35C65: FLdPr Me
  loc_B35C68: MemLdStr global_100
  loc_B35C6B: AryLock
  loc_B35C6E: Ary1LdPr
  loc_B35C6F: MemLdStr global_8
  loc_B35C72: AryLock
  loc_B35C75: Ary1LdPr
  loc_B35C76: MemLdStr htmFile
  loc_B35C79: AryLock
  loc_B35C7C: Ary1LdPr
  loc_B35C7D: MemLdRfVar from_stack_1.global_0
  loc_B35C80: Call Proc_161_25_9FA28C()
  loc_B35C85: AryUnlock
  loc_B35C88: AryUnlock
  loc_B35C8B: AryUnlock
  loc_B35C8E: AryUnlock
  loc_B35C91: AryUnlock
  loc_B35C94: FLdPr Me
  loc_B35C97: MemLdRfVar from_stack_1.global_108
  loc_B35C9A: NextI2 var_124, loc_B35B4F
  loc_B35C9F: FLdPr Me
  loc_B35CA2: MemLdI2 global_104
  loc_B35CA5: CI4UI1
  loc_B35CA6: FLdPr Me
  loc_B35CA9: MemLdStr global_100
  loc_B35CAC: AryLock
  loc_B35CAF: Ary1LdPr
  loc_B35CB0: MemLdRfVar from_stack_1.global_12
  loc_B35CB3: FLdPr Me
  loc_B35CB6: MemLdI2 global_106
  loc_B35CB9: CI4UI1
  loc_B35CBA: FLdPr Me
  loc_B35CBD: MemLdI2 global_104
  loc_B35CC0: CI4UI1
  loc_B35CC1: FLdPr Me
  loc_B35CC4: MemLdStr global_100
  loc_B35CC7: AryLock
  loc_B35CCA: Ary1LdPr
  loc_B35CCB: MemLdStr global_8
  loc_B35CCE: AryLock
  loc_B35CD1: Ary1LdPr
  loc_B35CD2: MemLdRfVar from_stack_1.global_0
  loc_B35CD5: Call Proc_161_25_9FA28C()
  loc_B35CDA: AryUnlock
  loc_B35CDD: AryUnlock
  loc_B35CE0: AryUnlock
  loc_B35CE3: FLdPr Me
  loc_B35CE6: MemLdRfVar from_stack_1.global_106
  loc_B35CE9: NextI2 var_120, loc_B35B20
  loc_B35CEE: LitI4 1
  loc_B35CF3: FLdPr Me
  loc_B35CF6: MemLdStr global_116
  loc_B35CF9: AryLock
  loc_B35CFC: Ary1LdRf
  loc_B35CFD: FLdPr Me
  loc_B35D00: MemLdI2 global_104
  loc_B35D03: CI4UI1
  loc_B35D04: FLdPr Me
  loc_B35D07: MemLdStr global_100
  loc_B35D0A: AryLock
  loc_B35D0D: Ary1LdPr
  loc_B35D0E: MemLdRfVar from_stack_1.global_12
  loc_B35D11: Call Proc_161_25_9FA28C()
  loc_B35D16: AryUnlock
  loc_B35D19: AryUnlock
  loc_B35D1C: FLdPr Me
  loc_B35D1F: MemLdRfVar from_stack_1.global_104
  loc_B35D22: NextI2 var_11C, loc_B35AFC
  loc_B35D27: LitI2_Byte &HFF
  loc_B35D29: FLdPr Me
  loc_B35D2C: MemStI2 bGenerado
  loc_B35D2F: FLdRfVar var_C2
  loc_B35D32: FLdPr Me
  loc_B35D35: VCallAd Control_ID_optSintetico
  loc_B35D38: FStAdFunc var_B4
  loc_B35D3B: FLdPr var_B4
  loc_B35D3E:  = Me.Value
  loc_B35D43: FLdI2 var_C2
  loc_B35D46: FFree1Ad var_B4
  loc_B35D49: BranchF loc_B35D92
  loc_B35D4C: LitI4 0
  loc_B35D51: LitI4 1
  loc_B35D56: FLdRfVar var_148
  loc_B35D59: Redim
  loc_B35D63: FLdPr Me
  loc_B35D66: VCallAd Control_ID_optAnalitico
  loc_B35D69: CVarAd
  loc_B35D6D: ParmAry1St
  loc_B35D73: FLdPr Me
  loc_B35D76: VCallAd Control_ID_optSintetico
  loc_B35D79: CVarAd
  loc_B35D7D: ParmAry1St
  loc_B35D83: FLdRfVar var_148
  loc_B35D86: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B35D8B: FLdRfVar var_148
  loc_B35D8E: Erase
  loc_B35D8F: Branch loc_B35DD5
  loc_B35D92: LitI4 0
  loc_B35D97: LitI4 1
  loc_B35D9C: FLdRfVar var_148
  loc_B35D9F: Redim
  loc_B35DA9: FLdPr Me
  loc_B35DAC: VCallAd Control_ID_optSintetico
  loc_B35DAF: CVarAd
  loc_B35DB3: ParmAry1St
  loc_B35DB9: FLdPr Me
  loc_B35DBC: VCallAd Control_ID_optAnalitico
  loc_B35DBF: CVarAd
  loc_B35DC3: ParmAry1St
  loc_B35DC9: FLdRfVar var_148
  loc_B35DCC: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B35DD1: FLdRfVar var_148
  loc_B35DD4: Erase
  loc_B35DD5: LitI2_Byte 0
  loc_B35DD7: FLdPr Me
  loc_B35DDA: Me.MousePointer = from_stack_1
  loc_B35DDF: LitVarStr var_A0, vbNullString
  loc_B35DE4: PopAdLdVar
  loc_B35DE5: FLdPr Me
  loc_B35DE8: VCallAd Control_ID_statusBar
  loc_B35DEB: FStAdFunc var_B4
  loc_B35DEE: FLdPr var_B4
  loc_B35DF1: LateIdSt
  loc_B35DF6: FFree1Ad var_B4
  loc_B35DF9: ExitProcHresult
  loc_B35DFA: CStrVarTmp
End Sub

Public Sub GeneraHTML() 'BFA128
  'Data Table: 480118
  loc_BF8094: FLdRfVar var_88
  loc_BF8097: LitI2_Byte 0
  loc_BF8099: LitI2_Byte &HFF
  loc_BF809B: ImpAdLdI4 MemVar_C3D83C
  loc_BF809E: FLdPr Me
  loc_BF80A1: MemLdRfVar from_stack_1.global_80
  loc_BF80A4: NewIfNullPr IFileSystem3
  loc_BF80A7: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_BF80AC: ILdRf var_88
  loc_BF80AF: FLdPr Me
  loc_BF80B2: MemStVarAd
  loc_BF80B6: FFree1Ad var_88
  loc_BF80B9: Call Proc_161_26_A9DAA4()
  loc_BF80BE: LitI2_Byte 1
  loc_BF80C0: FLdPr Me
  loc_BF80C3: MemLdRfVar from_stack_1.global_104
  loc_BF80C6: FLdPr Me
  loc_BF80C9: MemLdStr global_100
  loc_BF80CC: LitI2_Byte 1
  loc_BF80CE: FnUBound
  loc_BF80D0: CI2I4
  loc_BF80D1: ForI2 var_8C
  loc_BF80D7: FLdPr Me
  loc_BF80DA: VCallAd Control_ID_optJurisdiccion
  loc_BF80DD: CVarAd
  loc_BF80E1: CBoolVarNull
  loc_BF80E3: FFree1Var var_9C = ""
  loc_BF80E6: BranchF loc_BF8167
  loc_BF80E9: LitVarStr var_AC, "  <tr align=""left"" class=""Encabezado"">"
  loc_BF80EE: PopAdLdVar
  loc_BF80EF: FLdPr Me
  loc_BF80F2: MemLdRfVar from_stack_1.htmFile
  loc_BF80F5: LdPrVar
  loc_BF80F7: LateMemCall
  loc_BF80FD: LitStr "    <td colspan=""12"">Jurisdicción: "
  loc_BF8100: FLdPr Me
  loc_BF8103: MemLdI2 global_104
  loc_BF8106: CI4UI1
  loc_BF8107: FLdPr Me
  loc_BF810A: MemLdStr global_100
  loc_BF810D: Ary1LdPr
  loc_BF810E: MemLdStr global_0
  loc_BF8111: ConcatStr
  loc_BF8112: FStStrNoPop var_C0
  loc_BF8115: LitStr " - "
  loc_BF8118: ConcatStr
  loc_BF8119: FStStrNoPop var_C4
  loc_BF811C: FLdPr Me
  loc_BF811F: MemLdI2 global_104
  loc_BF8122: CI4UI1
  loc_BF8123: FLdPr Me
  loc_BF8126: MemLdStr global_100
  loc_BF8129: Ary1LdPr
  loc_BF812A: MemLdStr global_4
  loc_BF812D: ConcatStr
  loc_BF812E: FStStrNoPop var_C8
  loc_BF8131: LitStr "</td>"
  loc_BF8134: ConcatStr
  loc_BF8135: CVarStr var_9C
  loc_BF8138: PopAdLdVar
  loc_BF8139: FLdPr Me
  loc_BF813C: MemLdRfVar from_stack_1.htmFile
  loc_BF813F: LdPrVar
  loc_BF8141: LateMemCall
  loc_BF8147: FFreeStr var_C0 = "": var_C4 = ""
  loc_BF8150: FFree1Var var_9C = ""
  loc_BF8153: LitVarStr var_AC, "     </tr>"
  loc_BF8158: PopAdLdVar
  loc_BF8159: FLdPr Me
  loc_BF815C: MemLdRfVar from_stack_1.htmFile
  loc_BF815F: LdPrVar
  loc_BF8161: LateMemCall
  loc_BF8167: LitI2_Byte 1
  loc_BF8169: FLdPr Me
  loc_BF816C: MemLdRfVar from_stack_1.global_106
  loc_BF816F: FLdPr Me
  loc_BF8172: MemLdI2 global_104
  loc_BF8175: CI4UI1
  loc_BF8176: FLdPr Me
  loc_BF8179: MemLdStr global_100
  loc_BF817C: Ary1LdPr
  loc_BF817D: MemLdStr global_8
  loc_BF8180: LitI2_Byte 1
  loc_BF8182: FnUBound
  loc_BF8184: CI2I4
  loc_BF8185: ForI2 var_CC
  loc_BF818B: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_BF8190: PopAdLdVar
  loc_BF8191: FLdPr Me
  loc_BF8194: MemLdRfVar from_stack_1.htmFile
  loc_BF8197: LdPrVar
  loc_BF8199: LateMemCall
  loc_BF819F: FLdPr Me
  loc_BF81A2: MemLdI2 global_106
  loc_BF81A5: CI4UI1
  loc_BF81A6: FLdPr Me
  loc_BF81A9: MemLdI2 global_104
  loc_BF81AC: CI4UI1
  loc_BF81AD: FLdPr Me
  loc_BF81B0: MemLdStr global_100
  loc_BF81B3: AryLock
  loc_BF81B6: Ary1LdPr
  loc_BF81B7: MemLdStr global_8
  loc_BF81BA: AryLock
  loc_BF81BD: Ary1LdPr
  loc_BF81BE: MemLdRfVar from_stack_1.global_0
  loc_BF81C1: FStR4 var_D8
  loc_BF81C4: LitI4 0
  loc_BF81C9: LitI4 0
  loc_BF81CE: LitI2_Byte 0
  loc_BF81D0: LitStr "left"
  loc_BF81D3: FMemLdR4 var_D8(0)
  loc_BF81D8: LitStr "&nbsp;(Subtotal)<br>"
  loc_BF81DB: ConcatStr
  loc_BF81DC: FStStrNoPop var_C0
  loc_BF81DF: FMemLdR4 var_D8(4)
  loc_BF81E4: ConcatStr
  loc_BF81E5: FStStrNoPop var_C4
  loc_BF81E8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF81ED: CVarStr var_9C
  loc_BF81F0: PopAdLdVar
  loc_BF81F1: FLdPr Me
  loc_BF81F4: MemLdRfVar from_stack_1.htmFile
  loc_BF81F7: LdPrVar
  loc_BF81F9: LateMemCall
  loc_BF81FF: FFreeStr var_C0 = ""
  loc_BF8206: FFree1Var var_9C = ""
  loc_BF8209: LitStr "Municipalidad de Guaymallén"
  loc_BF820C: LitStr "Municipalidad de Maipú"
  loc_BF820F: EqStr
  loc_BF8211: FLdRfVar var_C0
  loc_BF8214: FLdPr Me
  loc_BF8217: VCallAd Control_ID_cboPeriodo
  loc_BF821A: FStAdFunc var_88
  loc_BF821D: FLdPr var_88
  loc_BF8220:  = Me.Text
  loc_BF8225: ILdRf var_C0
  loc_BF8228: CI2Str
  loc_BF822A: LitI2 2025
  loc_BF822D: LeI2
  loc_BF822E: AndI4
  loc_BF822F: FFree1Str var_C0
  loc_BF8232: FFree1Ad var_88
  loc_BF8235: BranchF loc_BF82F3
  loc_BF8238: LitI4 0
  loc_BF823D: LitI4 0
  loc_BF8242: LitI2_Byte 0
  loc_BF8244: LitStr "right"
  loc_BF8247: FMemLdR4 var_D8(8)
  loc_BF824C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8251: CVarStr var_9C
  loc_BF8254: PopAdLdVar
  loc_BF8255: FLdPr Me
  loc_BF8258: MemLdRfVar from_stack_1.htmFile
  loc_BF825B: LdPrVar
  loc_BF825D: LateMemCall
  loc_BF8263: FFree1Var var_9C = ""
  loc_BF8266: LitI4 0
  loc_BF826B: LitI4 0
  loc_BF8270: LitI2_Byte 0
  loc_BF8272: LitStr "right"
  loc_BF8275: FMemLdR4 var_D8(12)
  loc_BF827A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF827F: CVarStr var_9C
  loc_BF8282: PopAdLdVar
  loc_BF8283: FLdPr Me
  loc_BF8286: MemLdRfVar from_stack_1.htmFile
  loc_BF8289: LdPrVar
  loc_BF828B: LateMemCall
  loc_BF8291: FFree1Var var_9C = ""
  loc_BF8294: LitI4 0
  loc_BF8299: LitI4 0
  loc_BF829E: LitI2_Byte 0
  loc_BF82A0: LitStr "right"
  loc_BF82A3: FMemLdR4 var_D8(16)
  loc_BF82A8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF82AD: CVarStr var_9C
  loc_BF82B0: PopAdLdVar
  loc_BF82B1: FLdPr Me
  loc_BF82B4: MemLdRfVar from_stack_1.htmFile
  loc_BF82B7: LdPrVar
  loc_BF82B9: LateMemCall
  loc_BF82BF: FFree1Var var_9C = ""
  loc_BF82C2: LitI4 0
  loc_BF82C7: LitI4 0
  loc_BF82CC: LitI2_Byte 0
  loc_BF82CE: LitStr "right"
  loc_BF82D1: FMemLdR4 var_D8(20)
  loc_BF82D6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF82DB: CVarStr var_9C
  loc_BF82DE: PopAdLdVar
  loc_BF82DF: FLdPr Me
  loc_BF82E2: MemLdRfVar from_stack_1.htmFile
  loc_BF82E5: LdPrVar
  loc_BF82E7: LateMemCall
  loc_BF82ED: FFree1Var var_9C = ""
  loc_BF82F0: Branch loc_BF8477
  loc_BF82F3: LitI4 1
  loc_BF82F8: LitI4 1
  loc_BF82FD: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8302: FStVarCopyObj var_9C
  loc_BF8305: FLdRfVar var_9C
  loc_BF8308: FMemLdRf 0
  loc_BF830D: CVarRef
  loc_BF8312: ImpAdCallI2 Format$(, )
  loc_BF8317: FStStr var_C4
  loc_BF831A: LitI4 0
  loc_BF831F: LitI4 0
  loc_BF8324: LitI2_Byte 0
  loc_BF8326: LitStr "right"
  loc_BF8329: FLdZeroAd var_C4
  loc_BF832C: FStStrNoPop var_C0
  loc_BF832F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8334: CVarStr var_E8
  loc_BF8337: PopAdLdVar
  loc_BF8338: FLdPr Me
  loc_BF833B: MemLdRfVar from_stack_1.htmFile
  loc_BF833E: LdPrVar
  loc_BF8340: LateMemCall
  loc_BF8346: FFreeStr var_C0 = ""
  loc_BF834D: FFreeVar var_9C = ""
  loc_BF8354: LitI4 1
  loc_BF8359: LitI4 1
  loc_BF835E: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8363: FStVarCopyObj var_9C
  loc_BF8366: FLdRfVar var_9C
  loc_BF8369: FMemLdRf 0
  loc_BF836E: CVarRef
  loc_BF8373: ImpAdCallI2 Format$(, )
  loc_BF8378: FStStr var_C4
  loc_BF837B: LitI4 0
  loc_BF8380: LitI4 0
  loc_BF8385: LitI2_Byte 0
  loc_BF8387: LitStr "right"
  loc_BF838A: FLdZeroAd var_C4
  loc_BF838D: FStStrNoPop var_C0
  loc_BF8390: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8395: CVarStr var_E8
  loc_BF8398: PopAdLdVar
  loc_BF8399: FLdPr Me
  loc_BF839C: MemLdRfVar from_stack_1.htmFile
  loc_BF839F: LdPrVar
  loc_BF83A1: LateMemCall
  loc_BF83A7: FFreeStr var_C0 = ""
  loc_BF83AE: FFreeVar var_9C = ""
  loc_BF83B5: LitI4 1
  loc_BF83BA: LitI4 1
  loc_BF83BF: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF83C4: FStVarCopyObj var_9C
  loc_BF83C7: FLdRfVar var_9C
  loc_BF83CA: FMemLdRf 0
  loc_BF83CF: CVarRef
  loc_BF83D4: ImpAdCallI2 Format$(, )
  loc_BF83D9: FStStr var_C4
  loc_BF83DC: LitI4 0
  loc_BF83E1: LitI4 0
  loc_BF83E6: LitI2_Byte 0
  loc_BF83E8: LitStr "right"
  loc_BF83EB: FLdZeroAd var_C4
  loc_BF83EE: FStStrNoPop var_C0
  loc_BF83F1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF83F6: CVarStr var_E8
  loc_BF83F9: PopAdLdVar
  loc_BF83FA: FLdPr Me
  loc_BF83FD: MemLdRfVar from_stack_1.htmFile
  loc_BF8400: LdPrVar
  loc_BF8402: LateMemCall
  loc_BF8408: FFreeStr var_C0 = ""
  loc_BF840F: FFreeVar var_9C = ""
  loc_BF8416: LitI4 1
  loc_BF841B: LitI4 1
  loc_BF8420: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8425: FStVarCopyObj var_9C
  loc_BF8428: FLdRfVar var_9C
  loc_BF842B: FMemLdRf 0
  loc_BF8430: CVarRef
  loc_BF8435: ImpAdCallI2 Format$(, )
  loc_BF843A: FStStr var_C4
  loc_BF843D: LitI4 0
  loc_BF8442: LitI4 0
  loc_BF8447: LitI2_Byte 0
  loc_BF8449: LitStr "right"
  loc_BF844C: FLdZeroAd var_C4
  loc_BF844F: FStStrNoPop var_C0
  loc_BF8452: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8457: CVarStr var_E8
  loc_BF845A: PopAdLdVar
  loc_BF845B: FLdPr Me
  loc_BF845E: MemLdRfVar from_stack_1.htmFile
  loc_BF8461: LdPrVar
  loc_BF8463: LateMemCall
  loc_BF8469: FFreeStr var_C0 = ""
  loc_BF8470: FFreeVar var_9C = ""
  loc_BF8477: LitI4 0
  loc_BF847C: LitI4 0
  loc_BF8481: LitI2_Byte 0
  loc_BF8483: LitStr "right"
  loc_BF8486: FMemLdR4 var_D8(24)
  loc_BF848B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8490: CVarStr var_9C
  loc_BF8493: PopAdLdVar
  loc_BF8494: FLdPr Me
  loc_BF8497: MemLdRfVar from_stack_1.htmFile
  loc_BF849A: LdPrVar
  loc_BF849C: LateMemCall
  loc_BF84A2: FFree1Var var_9C = ""
  loc_BF84A5: LitI4 0
  loc_BF84AA: LitI4 0
  loc_BF84AF: LitI2_Byte 0
  loc_BF84B1: LitStr "right"
  loc_BF84B4: FMemLdR4 var_D8(28)
  loc_BF84B9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF84BE: CVarStr var_9C
  loc_BF84C1: PopAdLdVar
  loc_BF84C2: FLdPr Me
  loc_BF84C5: MemLdRfVar from_stack_1.htmFile
  loc_BF84C8: LdPrVar
  loc_BF84CA: LateMemCall
  loc_BF84D0: FFree1Var var_9C = ""
  loc_BF84D3: LitI4 0
  loc_BF84D8: LitI4 0
  loc_BF84DD: LitI2_Byte 0
  loc_BF84DF: LitStr "right"
  loc_BF84E2: FMemLdR4 var_D8(32)
  loc_BF84E7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF84EC: CVarStr var_9C
  loc_BF84EF: PopAdLdVar
  loc_BF84F0: FLdPr Me
  loc_BF84F3: MemLdRfVar from_stack_1.htmFile
  loc_BF84F6: LdPrVar
  loc_BF84F8: LateMemCall
  loc_BF84FE: FFree1Var var_9C = ""
  loc_BF8501: LitI4 0
  loc_BF8506: LitI4 0
  loc_BF850B: LitI2_Byte 0
  loc_BF850D: LitStr "right"
  loc_BF8510: FMemLdR4 var_D8(36)
  loc_BF8515: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF851A: CVarStr var_9C
  loc_BF851D: PopAdLdVar
  loc_BF851E: FLdPr Me
  loc_BF8521: MemLdRfVar from_stack_1.htmFile
  loc_BF8524: LdPrVar
  loc_BF8526: LateMemCall
  loc_BF852C: FFree1Var var_9C = ""
  loc_BF852F: LitStr "Municipalidad de Guaymallén"
  loc_BF8532: LitStr "Municipalidad de Tupungato"
  loc_BF8535: EqStr
  loc_BF8537: FLdRfVar var_C0
  loc_BF853A: FLdPr Me
  loc_BF853D: VCallAd Control_ID_cboTrimestre
  loc_BF8540: FStAdFunc var_88
  loc_BF8543: FLdPr var_88
  loc_BF8546:  = Me.Text
  loc_BF854B: ILdRf var_C0
  loc_BF854E: LitStr "Cuarto"
  loc_BF8551: NeStr
  loc_BF8553: AndI4
  loc_BF8554: FFree1Str var_C0
  loc_BF8557: FFree1Ad var_88
  loc_BF855A: BranchF loc_BF858C
  loc_BF855D: LitI4 0
  loc_BF8562: LitI4 0
  loc_BF8567: LitI2_Byte 0
  loc_BF8569: LitStr "right"
  loc_BF856C: LitStr "&nbsp;"
  loc_BF856F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8574: CVarStr var_9C
  loc_BF8577: PopAdLdVar
  loc_BF8578: FLdPr Me
  loc_BF857B: MemLdRfVar from_stack_1.htmFile
  loc_BF857E: LdPrVar
  loc_BF8580: LateMemCall
  loc_BF8586: FFree1Var var_9C = ""
  loc_BF8589: Branch loc_BF85BA
  loc_BF858C: LitI4 0
  loc_BF8591: LitI4 0
  loc_BF8596: LitI2_Byte 0
  loc_BF8598: LitStr "right"
  loc_BF859B: FMemLdR4 var_D8(40)
  loc_BF85A0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF85A5: CVarStr var_9C
  loc_BF85A8: PopAdLdVar
  loc_BF85A9: FLdPr Me
  loc_BF85AC: MemLdRfVar from_stack_1.htmFile
  loc_BF85AF: LdPrVar
  loc_BF85B1: LateMemCall
  loc_BF85B7: FFree1Var var_9C = ""
  loc_BF85BA: LitI4 0
  loc_BF85BF: LitI4 0
  loc_BF85C4: LitI2_Byte 0
  loc_BF85C6: LitStr "right"
  loc_BF85C9: FMemLdR4 var_D8(44)
  loc_BF85CE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF85D3: CVarStr var_9C
  loc_BF85D6: PopAdLdVar
  loc_BF85D7: FLdPr Me
  loc_BF85DA: MemLdRfVar from_stack_1.htmFile
  loc_BF85DD: LdPrVar
  loc_BF85DF: LateMemCall
  loc_BF85E5: FFree1Var var_9C = ""
  loc_BF85E8: LitStr "Municipalidad de Guaymallén"
  loc_BF85EB: LitStr "Municipalidad de Tupungato"
  loc_BF85EE: EqStr
  loc_BF85F0: FLdRfVar var_C0
  loc_BF85F3: FLdPr Me
  loc_BF85F6: VCallAd Control_ID_cboTrimestre
  loc_BF85F9: FStAdFunc var_88
  loc_BF85FC: FLdPr var_88
  loc_BF85FF:  = Me.Text
  loc_BF8604: ILdRf var_C0
  loc_BF8607: LitStr "Cuarto"
  loc_BF860A: NeStr
  loc_BF860C: AndI4
  loc_BF860D: FFree1Str var_C0
  loc_BF8610: FFree1Ad var_88
  loc_BF8613: BranchF loc_BF8645
  loc_BF8616: LitI4 0
  loc_BF861B: LitI4 0
  loc_BF8620: LitI2_Byte 0
  loc_BF8622: LitStr "right"
  loc_BF8625: LitStr "&nbsp;"
  loc_BF8628: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF862D: CVarStr var_9C
  loc_BF8630: PopAdLdVar
  loc_BF8631: FLdPr Me
  loc_BF8634: MemLdRfVar from_stack_1.htmFile
  loc_BF8637: LdPrVar
  loc_BF8639: LateMemCall
  loc_BF863F: FFree1Var var_9C = ""
  loc_BF8642: Branch loc_BF8673
  loc_BF8645: LitI4 0
  loc_BF864A: LitI4 0
  loc_BF864F: LitI2_Byte 0
  loc_BF8651: LitStr "right"
  loc_BF8654: FMemLdR4 var_D8(48)
  loc_BF8659: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF865E: CVarStr var_9C
  loc_BF8661: PopAdLdVar
  loc_BF8662: FLdPr Me
  loc_BF8665: MemLdRfVar from_stack_1.htmFile
  loc_BF8668: LdPrVar
  loc_BF866A: LateMemCall
  loc_BF8670: FFree1Var var_9C = ""
  loc_BF8673: LitI4 0
  loc_BF8678: FStR4 var_D8
  loc_BF867B: AryUnlock
  loc_BF867E: AryUnlock
  loc_BF8681: LitVarStr var_AC, "     </tr>"
  loc_BF8686: PopAdLdVar
  loc_BF8687: FLdPr Me
  loc_BF868A: MemLdRfVar from_stack_1.htmFile
  loc_BF868D: LdPrVar
  loc_BF868F: LateMemCall
  loc_BF8695: LitI2_Byte 1
  loc_BF8697: FLdPr Me
  loc_BF869A: MemLdRfVar from_stack_1.global_108
  loc_BF869D: FLdPr Me
  loc_BF86A0: MemLdI2 global_106
  loc_BF86A3: CI4UI1
  loc_BF86A4: FLdPr Me
  loc_BF86A7: MemLdI2 global_104
  loc_BF86AA: CI4UI1
  loc_BF86AB: FLdPr Me
  loc_BF86AE: MemLdStr global_100
  loc_BF86B1: Ary1LdPr
  loc_BF86B2: MemLdStr global_8
  loc_BF86B5: Ary1LdPr
  loc_BF86B6: MemLdStr htmFile
  loc_BF86B9: LitI2_Byte 1
  loc_BF86BB: FnUBound
  loc_BF86BD: CI2I4
  loc_BF86BE: ForI2 var_FC
  loc_BF86C4: LitVarStr var_AC, "  <tr align=""left"" class=""Totales2"">"
  loc_BF86C9: PopAdLdVar
  loc_BF86CA: FLdPr Me
  loc_BF86CD: MemLdRfVar from_stack_1.htmFile
  loc_BF86D0: LdPrVar
  loc_BF86D2: LateMemCall
  loc_BF86D8: FLdPr Me
  loc_BF86DB: MemLdI2 global_108
  loc_BF86DE: CI4UI1
  loc_BF86DF: FLdPr Me
  loc_BF86E2: MemLdI2 global_106
  loc_BF86E5: CI4UI1
  loc_BF86E6: FLdPr Me
  loc_BF86E9: MemLdI2 global_104
  loc_BF86EC: CI4UI1
  loc_BF86ED: FLdPr Me
  loc_BF86F0: MemLdStr global_100
  loc_BF86F3: AryLock
  loc_BF86F6: Ary1LdPr
  loc_BF86F7: MemLdStr global_8
  loc_BF86FA: AryLock
  loc_BF86FD: Ary1LdPr
  loc_BF86FE: MemLdStr htmFile
  loc_BF8701: AryLock
  loc_BF8704: Ary1LdPr
  loc_BF8705: MemLdRfVar from_stack_1.global_0
  loc_BF8708: FStR4 var_10C
  loc_BF870B: LitI4 0
  loc_BF8710: LitI4 0
  loc_BF8715: LitI2_Byte 0
  loc_BF8717: LitStr "left"
  loc_BF871A: LitStr "&nbsp;&nbsp;"
  loc_BF871D: FMemLdR4 var_10C(0)
  loc_BF8722: ConcatStr
  loc_BF8723: FStStrNoPop var_C0
  loc_BF8726: LitStr "&nbsp;(Subtotal)<br>&nbsp;&nbsp;"
  loc_BF8729: ConcatStr
  loc_BF872A: FStStrNoPop var_C4
  loc_BF872D: FMemLdR4 var_10C(4)
  loc_BF8732: ConcatStr
  loc_BF8733: FStStrNoPop var_C8
  loc_BF8736: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF873B: CVarStr var_9C
  loc_BF873E: PopAdLdVar
  loc_BF873F: FLdPr Me
  loc_BF8742: MemLdRfVar from_stack_1.htmFile
  loc_BF8745: LdPrVar
  loc_BF8747: LateMemCall
  loc_BF874D: FFreeStr var_C0 = "": var_C4 = ""
  loc_BF8756: FFree1Var var_9C = ""
  loc_BF8759: LitStr "Municipalidad de Guaymallén"
  loc_BF875C: LitStr "Municipalidad de Maipú"
  loc_BF875F: EqStr
  loc_BF8761: FLdRfVar var_C0
  loc_BF8764: FLdPr Me
  loc_BF8767: VCallAd Control_ID_cboPeriodo
  loc_BF876A: FStAdFunc var_88
  loc_BF876D: FLdPr var_88
  loc_BF8770:  = Me.Text
  loc_BF8775: ILdRf var_C0
  loc_BF8778: CI2Str
  loc_BF877A: LitI2 2025
  loc_BF877D: LeI2
  loc_BF877E: AndI4
  loc_BF877F: FFree1Str var_C0
  loc_BF8782: FFree1Ad var_88
  loc_BF8785: BranchF loc_BF8843
  loc_BF8788: LitI4 0
  loc_BF878D: LitI4 0
  loc_BF8792: LitI2_Byte 0
  loc_BF8794: LitStr "right"
  loc_BF8797: FMemLdR4 var_10C(8)
  loc_BF879C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF87A1: CVarStr var_9C
  loc_BF87A4: PopAdLdVar
  loc_BF87A5: FLdPr Me
  loc_BF87A8: MemLdRfVar from_stack_1.htmFile
  loc_BF87AB: LdPrVar
  loc_BF87AD: LateMemCall
  loc_BF87B3: FFree1Var var_9C = ""
  loc_BF87B6: LitI4 0
  loc_BF87BB: LitI4 0
  loc_BF87C0: LitI2_Byte 0
  loc_BF87C2: LitStr "right"
  loc_BF87C5: FMemLdR4 var_10C(12)
  loc_BF87CA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF87CF: CVarStr var_9C
  loc_BF87D2: PopAdLdVar
  loc_BF87D3: FLdPr Me
  loc_BF87D6: MemLdRfVar from_stack_1.htmFile
  loc_BF87D9: LdPrVar
  loc_BF87DB: LateMemCall
  loc_BF87E1: FFree1Var var_9C = ""
  loc_BF87E4: LitI4 0
  loc_BF87E9: LitI4 0
  loc_BF87EE: LitI2_Byte 0
  loc_BF87F0: LitStr "right"
  loc_BF87F3: FMemLdR4 var_10C(16)
  loc_BF87F8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF87FD: CVarStr var_9C
  loc_BF8800: PopAdLdVar
  loc_BF8801: FLdPr Me
  loc_BF8804: MemLdRfVar from_stack_1.htmFile
  loc_BF8807: LdPrVar
  loc_BF8809: LateMemCall
  loc_BF880F: FFree1Var var_9C = ""
  loc_BF8812: LitI4 0
  loc_BF8817: LitI4 0
  loc_BF881C: LitI2_Byte 0
  loc_BF881E: LitStr "right"
  loc_BF8821: FMemLdR4 var_10C(20)
  loc_BF8826: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF882B: CVarStr var_9C
  loc_BF882E: PopAdLdVar
  loc_BF882F: FLdPr Me
  loc_BF8832: MemLdRfVar from_stack_1.htmFile
  loc_BF8835: LdPrVar
  loc_BF8837: LateMemCall
  loc_BF883D: FFree1Var var_9C = ""
  loc_BF8840: Branch loc_BF89C7
  loc_BF8843: LitI4 1
  loc_BF8848: LitI4 1
  loc_BF884D: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8852: FStVarCopyObj var_9C
  loc_BF8855: FLdRfVar var_9C
  loc_BF8858: FMemLdRf 0
  loc_BF885D: CVarRef
  loc_BF8862: ImpAdCallI2 Format$(, )
  loc_BF8867: FStStr var_C4
  loc_BF886A: LitI4 0
  loc_BF886F: LitI4 0
  loc_BF8874: LitI2_Byte 0
  loc_BF8876: LitStr "right"
  loc_BF8879: FLdZeroAd var_C4
  loc_BF887C: FStStrNoPop var_C0
  loc_BF887F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8884: CVarStr var_E8
  loc_BF8887: PopAdLdVar
  loc_BF8888: FLdPr Me
  loc_BF888B: MemLdRfVar from_stack_1.htmFile
  loc_BF888E: LdPrVar
  loc_BF8890: LateMemCall
  loc_BF8896: FFreeStr var_C0 = ""
  loc_BF889D: FFreeVar var_9C = ""
  loc_BF88A4: LitI4 1
  loc_BF88A9: LitI4 1
  loc_BF88AE: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF88B3: FStVarCopyObj var_9C
  loc_BF88B6: FLdRfVar var_9C
  loc_BF88B9: FMemLdRf 0
  loc_BF88BE: CVarRef
  loc_BF88C3: ImpAdCallI2 Format$(, )
  loc_BF88C8: FStStr var_C4
  loc_BF88CB: LitI4 0
  loc_BF88D0: LitI4 0
  loc_BF88D5: LitI2_Byte 0
  loc_BF88D7: LitStr "right"
  loc_BF88DA: FLdZeroAd var_C4
  loc_BF88DD: FStStrNoPop var_C0
  loc_BF88E0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF88E5: CVarStr var_E8
  loc_BF88E8: PopAdLdVar
  loc_BF88E9: FLdPr Me
  loc_BF88EC: MemLdRfVar from_stack_1.htmFile
  loc_BF88EF: LdPrVar
  loc_BF88F1: LateMemCall
  loc_BF88F7: FFreeStr var_C0 = ""
  loc_BF88FE: FFreeVar var_9C = ""
  loc_BF8905: LitI4 1
  loc_BF890A: LitI4 1
  loc_BF890F: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8914: FStVarCopyObj var_9C
  loc_BF8917: FLdRfVar var_9C
  loc_BF891A: FMemLdRf 0
  loc_BF891F: CVarRef
  loc_BF8924: ImpAdCallI2 Format$(, )
  loc_BF8929: FStStr var_C4
  loc_BF892C: LitI4 0
  loc_BF8931: LitI4 0
  loc_BF8936: LitI2_Byte 0
  loc_BF8938: LitStr "right"
  loc_BF893B: FLdZeroAd var_C4
  loc_BF893E: FStStrNoPop var_C0
  loc_BF8941: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8946: CVarStr var_E8
  loc_BF8949: PopAdLdVar
  loc_BF894A: FLdPr Me
  loc_BF894D: MemLdRfVar from_stack_1.htmFile
  loc_BF8950: LdPrVar
  loc_BF8952: LateMemCall
  loc_BF8958: FFreeStr var_C0 = ""
  loc_BF895F: FFreeVar var_9C = ""
  loc_BF8966: LitI4 1
  loc_BF896B: LitI4 1
  loc_BF8970: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8975: FStVarCopyObj var_9C
  loc_BF8978: FLdRfVar var_9C
  loc_BF897B: FMemLdRf 0
  loc_BF8980: CVarRef
  loc_BF8985: ImpAdCallI2 Format$(, )
  loc_BF898A: FStStr var_C4
  loc_BF898D: LitI4 0
  loc_BF8992: LitI4 0
  loc_BF8997: LitI2_Byte 0
  loc_BF8999: LitStr "right"
  loc_BF899C: FLdZeroAd var_C4
  loc_BF899F: FStStrNoPop var_C0
  loc_BF89A2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF89A7: CVarStr var_E8
  loc_BF89AA: PopAdLdVar
  loc_BF89AB: FLdPr Me
  loc_BF89AE: MemLdRfVar from_stack_1.htmFile
  loc_BF89B1: LdPrVar
  loc_BF89B3: LateMemCall
  loc_BF89B9: FFreeStr var_C0 = ""
  loc_BF89C0: FFreeVar var_9C = ""
  loc_BF89C7: LitI4 0
  loc_BF89CC: LitI4 0
  loc_BF89D1: LitI2_Byte 0
  loc_BF89D3: LitStr "right"
  loc_BF89D6: FMemLdR4 var_10C(24)
  loc_BF89DB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF89E0: CVarStr var_9C
  loc_BF89E3: PopAdLdVar
  loc_BF89E4: FLdPr Me
  loc_BF89E7: MemLdRfVar from_stack_1.htmFile
  loc_BF89EA: LdPrVar
  loc_BF89EC: LateMemCall
  loc_BF89F2: FFree1Var var_9C = ""
  loc_BF89F5: LitI4 0
  loc_BF89FA: LitI4 0
  loc_BF89FF: LitI2_Byte 0
  loc_BF8A01: LitStr "right"
  loc_BF8A04: FMemLdR4 var_10C(28)
  loc_BF8A09: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8A0E: CVarStr var_9C
  loc_BF8A11: PopAdLdVar
  loc_BF8A12: FLdPr Me
  loc_BF8A15: MemLdRfVar from_stack_1.htmFile
  loc_BF8A18: LdPrVar
  loc_BF8A1A: LateMemCall
  loc_BF8A20: FFree1Var var_9C = ""
  loc_BF8A23: LitI4 0
  loc_BF8A28: LitI4 0
  loc_BF8A2D: LitI2_Byte 0
  loc_BF8A2F: LitStr "right"
  loc_BF8A32: FMemLdR4 var_10C(32)
  loc_BF8A37: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8A3C: CVarStr var_9C
  loc_BF8A3F: PopAdLdVar
  loc_BF8A40: FLdPr Me
  loc_BF8A43: MemLdRfVar from_stack_1.htmFile
  loc_BF8A46: LdPrVar
  loc_BF8A48: LateMemCall
  loc_BF8A4E: FFree1Var var_9C = ""
  loc_BF8A51: LitI4 0
  loc_BF8A56: LitI4 0
  loc_BF8A5B: LitI2_Byte 0
  loc_BF8A5D: LitStr "right"
  loc_BF8A60: FMemLdR4 var_10C(36)
  loc_BF8A65: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8A6A: CVarStr var_9C
  loc_BF8A6D: PopAdLdVar
  loc_BF8A6E: FLdPr Me
  loc_BF8A71: MemLdRfVar from_stack_1.htmFile
  loc_BF8A74: LdPrVar
  loc_BF8A76: LateMemCall
  loc_BF8A7C: FFree1Var var_9C = ""
  loc_BF8A7F: LitStr "Municipalidad de Guaymallén"
  loc_BF8A82: LitStr "Municipalidad de Tupungato"
  loc_BF8A85: EqStr
  loc_BF8A87: FLdRfVar var_C0
  loc_BF8A8A: FLdPr Me
  loc_BF8A8D: VCallAd Control_ID_cboTrimestre
  loc_BF8A90: FStAdFunc var_88
  loc_BF8A93: FLdPr var_88
  loc_BF8A96:  = Me.Text
  loc_BF8A9B: ILdRf var_C0
  loc_BF8A9E: LitStr "Cuarto"
  loc_BF8AA1: NeStr
  loc_BF8AA3: AndI4
  loc_BF8AA4: FFree1Str var_C0
  loc_BF8AA7: FFree1Ad var_88
  loc_BF8AAA: BranchF loc_BF8ADC
  loc_BF8AAD: LitI4 0
  loc_BF8AB2: LitI4 0
  loc_BF8AB7: LitI2_Byte 0
  loc_BF8AB9: LitStr "right"
  loc_BF8ABC: LitStr "&nbsp;"
  loc_BF8ABF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8AC4: CVarStr var_9C
  loc_BF8AC7: PopAdLdVar
  loc_BF8AC8: FLdPr Me
  loc_BF8ACB: MemLdRfVar from_stack_1.htmFile
  loc_BF8ACE: LdPrVar
  loc_BF8AD0: LateMemCall
  loc_BF8AD6: FFree1Var var_9C = ""
  loc_BF8AD9: Branch loc_BF8B0A
  loc_BF8ADC: LitI4 0
  loc_BF8AE1: LitI4 0
  loc_BF8AE6: LitI2_Byte 0
  loc_BF8AE8: LitStr "right"
  loc_BF8AEB: FMemLdR4 var_10C(40)
  loc_BF8AF0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8AF5: CVarStr var_9C
  loc_BF8AF8: PopAdLdVar
  loc_BF8AF9: FLdPr Me
  loc_BF8AFC: MemLdRfVar from_stack_1.htmFile
  loc_BF8AFF: LdPrVar
  loc_BF8B01: LateMemCall
  loc_BF8B07: FFree1Var var_9C = ""
  loc_BF8B0A: LitI4 0
  loc_BF8B0F: LitI4 0
  loc_BF8B14: LitI2_Byte 0
  loc_BF8B16: LitStr "right"
  loc_BF8B19: FMemLdR4 var_10C(44)
  loc_BF8B1E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8B23: CVarStr var_9C
  loc_BF8B26: PopAdLdVar
  loc_BF8B27: FLdPr Me
  loc_BF8B2A: MemLdRfVar from_stack_1.htmFile
  loc_BF8B2D: LdPrVar
  loc_BF8B2F: LateMemCall
  loc_BF8B35: FFree1Var var_9C = ""
  loc_BF8B38: LitStr "Municipalidad de Guaymallén"
  loc_BF8B3B: LitStr "Municipalidad de Tupungato"
  loc_BF8B3E: EqStr
  loc_BF8B40: FLdRfVar var_C0
  loc_BF8B43: FLdPr Me
  loc_BF8B46: VCallAd Control_ID_cboTrimestre
  loc_BF8B49: FStAdFunc var_88
  loc_BF8B4C: FLdPr var_88
  loc_BF8B4F:  = Me.Text
  loc_BF8B54: ILdRf var_C0
  loc_BF8B57: LitStr "Cuarto"
  loc_BF8B5A: NeStr
  loc_BF8B5C: AndI4
  loc_BF8B5D: FFree1Str var_C0
  loc_BF8B60: FFree1Ad var_88
  loc_BF8B63: BranchF loc_BF8B95
  loc_BF8B66: LitI4 0
  loc_BF8B6B: LitI4 0
  loc_BF8B70: LitI2_Byte 0
  loc_BF8B72: LitStr "right"
  loc_BF8B75: LitStr "&nbsp;"
  loc_BF8B78: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8B7D: CVarStr var_9C
  loc_BF8B80: PopAdLdVar
  loc_BF8B81: FLdPr Me
  loc_BF8B84: MemLdRfVar from_stack_1.htmFile
  loc_BF8B87: LdPrVar
  loc_BF8B89: LateMemCall
  loc_BF8B8F: FFree1Var var_9C = ""
  loc_BF8B92: Branch loc_BF8BC3
  loc_BF8B95: LitI4 0
  loc_BF8B9A: LitI4 0
  loc_BF8B9F: LitI2_Byte 0
  loc_BF8BA1: LitStr "right"
  loc_BF8BA4: FMemLdR4 var_10C(48)
  loc_BF8BA9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8BAE: CVarStr var_9C
  loc_BF8BB1: PopAdLdVar
  loc_BF8BB2: FLdPr Me
  loc_BF8BB5: MemLdRfVar from_stack_1.htmFile
  loc_BF8BB8: LdPrVar
  loc_BF8BBA: LateMemCall
  loc_BF8BC0: FFree1Var var_9C = ""
  loc_BF8BC3: LitI4 0
  loc_BF8BC8: FStR4 var_10C
  loc_BF8BCB: AryUnlock
  loc_BF8BCE: AryUnlock
  loc_BF8BD1: AryUnlock
  loc_BF8BD4: LitVarStr var_AC, "     </tr>"
  loc_BF8BD9: PopAdLdVar
  loc_BF8BDA: FLdPr Me
  loc_BF8BDD: MemLdRfVar from_stack_1.htmFile
  loc_BF8BE0: LdPrVar
  loc_BF8BE2: LateMemCall
  loc_BF8BE8: LitI2_Byte 1
  loc_BF8BEA: FLdPr Me
  loc_BF8BED: MemLdRfVar from_stack_1.global_110
  loc_BF8BF0: FLdPr Me
  loc_BF8BF3: MemLdI2 global_108
  loc_BF8BF6: CI4UI1
  loc_BF8BF7: FLdPr Me
  loc_BF8BFA: MemLdI2 global_106
  loc_BF8BFD: CI4UI1
  loc_BF8BFE: FLdPr Me
  loc_BF8C01: MemLdI2 global_104
  loc_BF8C04: CI4UI1
  loc_BF8C05: FLdPr Me
  loc_BF8C08: MemLdStr global_100
  loc_BF8C0B: Ary1LdPr
  loc_BF8C0C: MemLdStr global_8
  loc_BF8C0F: Ary1LdPr
  loc_BF8C10: MemLdStr htmFile
  loc_BF8C13: Ary1LdPr
  loc_BF8C14: MemLdStr htmFile
  loc_BF8C17: LitI2_Byte 1
  loc_BF8C19: FnUBound
  loc_BF8C1B: CI2I4
  loc_BF8C1C: ForI2 var_110
  loc_BF8C22: LitVarStr var_AC, "  <tr align=""left"" class=""Totales3"">"
  loc_BF8C27: PopAdLdVar
  loc_BF8C28: FLdPr Me
  loc_BF8C2B: MemLdRfVar from_stack_1.htmFile
  loc_BF8C2E: LdPrVar
  loc_BF8C30: LateMemCall
  loc_BF8C36: FLdPr Me
  loc_BF8C39: MemLdI2 global_110
  loc_BF8C3C: CI4UI1
  loc_BF8C3D: FLdPr Me
  loc_BF8C40: MemLdI2 global_108
  loc_BF8C43: CI4UI1
  loc_BF8C44: FLdPr Me
  loc_BF8C47: MemLdI2 global_106
  loc_BF8C4A: CI4UI1
  loc_BF8C4B: FLdPr Me
  loc_BF8C4E: MemLdI2 global_104
  loc_BF8C51: CI4UI1
  loc_BF8C52: FLdPr Me
  loc_BF8C55: MemLdStr global_100
  loc_BF8C58: AryLock
  loc_BF8C5B: Ary1LdPr
  loc_BF8C5C: MemLdStr global_8
  loc_BF8C5F: AryLock
  loc_BF8C62: Ary1LdPr
  loc_BF8C63: MemLdStr htmFile
  loc_BF8C66: AryLock
  loc_BF8C69: Ary1LdPr
  loc_BF8C6A: MemLdStr htmFile
  loc_BF8C6D: AryLock
  loc_BF8C70: Ary1LdPr
  loc_BF8C71: MemLdRfVar from_stack_1.global_0
  loc_BF8C74: FStR4 var_124
  loc_BF8C77: LitI4 0
  loc_BF8C7C: LitI4 0
  loc_BF8C81: LitI2_Byte 0
  loc_BF8C83: LitStr "left"
  loc_BF8C86: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_BF8C89: FMemLdR4 var_124(0)
  loc_BF8C8E: ConcatStr
  loc_BF8C8F: FStStrNoPop var_C0
  loc_BF8C92: LitStr "&nbsp;(Subtotal)<br>&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_BF8C95: ConcatStr
  loc_BF8C96: FStStrNoPop var_C4
  loc_BF8C99: FMemLdR4 var_124(4)
  loc_BF8C9E: ConcatStr
  loc_BF8C9F: FStStrNoPop var_C8
  loc_BF8CA2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8CA7: CVarStr var_9C
  loc_BF8CAA: PopAdLdVar
  loc_BF8CAB: FLdPr Me
  loc_BF8CAE: MemLdRfVar from_stack_1.htmFile
  loc_BF8CB1: LdPrVar
  loc_BF8CB3: LateMemCall
  loc_BF8CB9: FFreeStr var_C0 = "": var_C4 = ""
  loc_BF8CC2: FFree1Var var_9C = ""
  loc_BF8CC5: LitStr "Municipalidad de Guaymallén"
  loc_BF8CC8: LitStr "Municipalidad de Maipú"
  loc_BF8CCB: EqStr
  loc_BF8CCD: FLdRfVar var_C0
  loc_BF8CD0: FLdPr Me
  loc_BF8CD3: VCallAd Control_ID_cboPeriodo
  loc_BF8CD6: FStAdFunc var_88
  loc_BF8CD9: FLdPr var_88
  loc_BF8CDC:  = Me.Text
  loc_BF8CE1: ILdRf var_C0
  loc_BF8CE4: CI2Str
  loc_BF8CE6: LitI2 2025
  loc_BF8CE9: LeI2
  loc_BF8CEA: AndI4
  loc_BF8CEB: FFree1Str var_C0
  loc_BF8CEE: FFree1Ad var_88
  loc_BF8CF1: BranchF loc_BF8DAF
  loc_BF8CF4: LitI4 0
  loc_BF8CF9: LitI4 0
  loc_BF8CFE: LitI2_Byte 0
  loc_BF8D00: LitStr "right"
  loc_BF8D03: FMemLdR4 var_124(8)
  loc_BF8D08: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8D0D: CVarStr var_9C
  loc_BF8D10: PopAdLdVar
  loc_BF8D11: FLdPr Me
  loc_BF8D14: MemLdRfVar from_stack_1.htmFile
  loc_BF8D17: LdPrVar
  loc_BF8D19: LateMemCall
  loc_BF8D1F: FFree1Var var_9C = ""
  loc_BF8D22: LitI4 0
  loc_BF8D27: LitI4 0
  loc_BF8D2C: LitI2_Byte 0
  loc_BF8D2E: LitStr "right"
  loc_BF8D31: FMemLdR4 var_124(12)
  loc_BF8D36: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8D3B: CVarStr var_9C
  loc_BF8D3E: PopAdLdVar
  loc_BF8D3F: FLdPr Me
  loc_BF8D42: MemLdRfVar from_stack_1.htmFile
  loc_BF8D45: LdPrVar
  loc_BF8D47: LateMemCall
  loc_BF8D4D: FFree1Var var_9C = ""
  loc_BF8D50: LitI4 0
  loc_BF8D55: LitI4 0
  loc_BF8D5A: LitI2_Byte 0
  loc_BF8D5C: LitStr "right"
  loc_BF8D5F: FMemLdR4 var_124(16)
  loc_BF8D64: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8D69: CVarStr var_9C
  loc_BF8D6C: PopAdLdVar
  loc_BF8D6D: FLdPr Me
  loc_BF8D70: MemLdRfVar from_stack_1.htmFile
  loc_BF8D73: LdPrVar
  loc_BF8D75: LateMemCall
  loc_BF8D7B: FFree1Var var_9C = ""
  loc_BF8D7E: LitI4 0
  loc_BF8D83: LitI4 0
  loc_BF8D88: LitI2_Byte 0
  loc_BF8D8A: LitStr "right"
  loc_BF8D8D: FMemLdR4 var_124(20)
  loc_BF8D92: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8D97: CVarStr var_9C
  loc_BF8D9A: PopAdLdVar
  loc_BF8D9B: FLdPr Me
  loc_BF8D9E: MemLdRfVar from_stack_1.htmFile
  loc_BF8DA1: LdPrVar
  loc_BF8DA3: LateMemCall
  loc_BF8DA9: FFree1Var var_9C = ""
  loc_BF8DAC: Branch loc_BF8F33
  loc_BF8DAF: LitI4 1
  loc_BF8DB4: LitI4 1
  loc_BF8DB9: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8DBE: FStVarCopyObj var_9C
  loc_BF8DC1: FLdRfVar var_9C
  loc_BF8DC4: FMemLdRf 0
  loc_BF8DC9: CVarRef
  loc_BF8DCE: ImpAdCallI2 Format$(, )
  loc_BF8DD3: FStStr var_C4
  loc_BF8DD6: LitI4 0
  loc_BF8DDB: LitI4 0
  loc_BF8DE0: LitI2_Byte 0
  loc_BF8DE2: LitStr "right"
  loc_BF8DE5: FLdZeroAd var_C4
  loc_BF8DE8: FStStrNoPop var_C0
  loc_BF8DEB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8DF0: CVarStr var_E8
  loc_BF8DF3: PopAdLdVar
  loc_BF8DF4: FLdPr Me
  loc_BF8DF7: MemLdRfVar from_stack_1.htmFile
  loc_BF8DFA: LdPrVar
  loc_BF8DFC: LateMemCall
  loc_BF8E02: FFreeStr var_C0 = ""
  loc_BF8E09: FFreeVar var_9C = ""
  loc_BF8E10: LitI4 1
  loc_BF8E15: LitI4 1
  loc_BF8E1A: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8E1F: FStVarCopyObj var_9C
  loc_BF8E22: FLdRfVar var_9C
  loc_BF8E25: FMemLdRf 0
  loc_BF8E2A: CVarRef
  loc_BF8E2F: ImpAdCallI2 Format$(, )
  loc_BF8E34: FStStr var_C4
  loc_BF8E37: LitI4 0
  loc_BF8E3C: LitI4 0
  loc_BF8E41: LitI2_Byte 0
  loc_BF8E43: LitStr "right"
  loc_BF8E46: FLdZeroAd var_C4
  loc_BF8E49: FStStrNoPop var_C0
  loc_BF8E4C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8E51: CVarStr var_E8
  loc_BF8E54: PopAdLdVar
  loc_BF8E55: FLdPr Me
  loc_BF8E58: MemLdRfVar from_stack_1.htmFile
  loc_BF8E5B: LdPrVar
  loc_BF8E5D: LateMemCall
  loc_BF8E63: FFreeStr var_C0 = ""
  loc_BF8E6A: FFreeVar var_9C = ""
  loc_BF8E71: LitI4 1
  loc_BF8E76: LitI4 1
  loc_BF8E7B: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8E80: FStVarCopyObj var_9C
  loc_BF8E83: FLdRfVar var_9C
  loc_BF8E86: FMemLdRf 0
  loc_BF8E8B: CVarRef
  loc_BF8E90: ImpAdCallI2 Format$(, )
  loc_BF8E95: FStStr var_C4
  loc_BF8E98: LitI4 0
  loc_BF8E9D: LitI4 0
  loc_BF8EA2: LitI2_Byte 0
  loc_BF8EA4: LitStr "right"
  loc_BF8EA7: FLdZeroAd var_C4
  loc_BF8EAA: FStStrNoPop var_C0
  loc_BF8EAD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8EB2: CVarStr var_E8
  loc_BF8EB5: PopAdLdVar
  loc_BF8EB6: FLdPr Me
  loc_BF8EB9: MemLdRfVar from_stack_1.htmFile
  loc_BF8EBC: LdPrVar
  loc_BF8EBE: LateMemCall
  loc_BF8EC4: FFreeStr var_C0 = ""
  loc_BF8ECB: FFreeVar var_9C = ""
  loc_BF8ED2: LitI4 1
  loc_BF8ED7: LitI4 1
  loc_BF8EDC: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF8EE1: FStVarCopyObj var_9C
  loc_BF8EE4: FLdRfVar var_9C
  loc_BF8EE7: FMemLdRf 0
  loc_BF8EEC: CVarRef
  loc_BF8EF1: ImpAdCallI2 Format$(, )
  loc_BF8EF6: FStStr var_C4
  loc_BF8EF9: LitI4 0
  loc_BF8EFE: LitI4 0
  loc_BF8F03: LitI2_Byte 0
  loc_BF8F05: LitStr "right"
  loc_BF8F08: FLdZeroAd var_C4
  loc_BF8F0B: FStStrNoPop var_C0
  loc_BF8F0E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8F13: CVarStr var_E8
  loc_BF8F16: PopAdLdVar
  loc_BF8F17: FLdPr Me
  loc_BF8F1A: MemLdRfVar from_stack_1.htmFile
  loc_BF8F1D: LdPrVar
  loc_BF8F1F: LateMemCall
  loc_BF8F25: FFreeStr var_C0 = ""
  loc_BF8F2C: FFreeVar var_9C = ""
  loc_BF8F33: LitI4 0
  loc_BF8F38: LitI4 0
  loc_BF8F3D: LitI2_Byte 0
  loc_BF8F3F: LitStr "right"
  loc_BF8F42: FMemLdR4 var_124(24)
  loc_BF8F47: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8F4C: CVarStr var_9C
  loc_BF8F4F: PopAdLdVar
  loc_BF8F50: FLdPr Me
  loc_BF8F53: MemLdRfVar from_stack_1.htmFile
  loc_BF8F56: LdPrVar
  loc_BF8F58: LateMemCall
  loc_BF8F5E: FFree1Var var_9C = ""
  loc_BF8F61: LitI4 0
  loc_BF8F66: LitI4 0
  loc_BF8F6B: LitI2_Byte 0
  loc_BF8F6D: LitStr "right"
  loc_BF8F70: FMemLdR4 var_124(28)
  loc_BF8F75: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8F7A: CVarStr var_9C
  loc_BF8F7D: PopAdLdVar
  loc_BF8F7E: FLdPr Me
  loc_BF8F81: MemLdRfVar from_stack_1.htmFile
  loc_BF8F84: LdPrVar
  loc_BF8F86: LateMemCall
  loc_BF8F8C: FFree1Var var_9C = ""
  loc_BF8F8F: LitI4 0
  loc_BF8F94: LitI4 0
  loc_BF8F99: LitI2_Byte 0
  loc_BF8F9B: LitStr "right"
  loc_BF8F9E: FMemLdR4 var_124(32)
  loc_BF8FA3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8FA8: CVarStr var_9C
  loc_BF8FAB: PopAdLdVar
  loc_BF8FAC: FLdPr Me
  loc_BF8FAF: MemLdRfVar from_stack_1.htmFile
  loc_BF8FB2: LdPrVar
  loc_BF8FB4: LateMemCall
  loc_BF8FBA: FFree1Var var_9C = ""
  loc_BF8FBD: LitI4 0
  loc_BF8FC2: LitI4 0
  loc_BF8FC7: LitI2_Byte 0
  loc_BF8FC9: LitStr "right"
  loc_BF8FCC: FMemLdR4 var_124(36)
  loc_BF8FD1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF8FD6: CVarStr var_9C
  loc_BF8FD9: PopAdLdVar
  loc_BF8FDA: FLdPr Me
  loc_BF8FDD: MemLdRfVar from_stack_1.htmFile
  loc_BF8FE0: LdPrVar
  loc_BF8FE2: LateMemCall
  loc_BF8FE8: FFree1Var var_9C = ""
  loc_BF8FEB: LitStr "Municipalidad de Guaymallén"
  loc_BF8FEE: LitStr "Municipalidad de Tupungato"
  loc_BF8FF1: EqStr
  loc_BF8FF3: FLdRfVar var_C0
  loc_BF8FF6: FLdPr Me
  loc_BF8FF9: VCallAd Control_ID_cboTrimestre
  loc_BF8FFC: FStAdFunc var_88
  loc_BF8FFF: FLdPr var_88
  loc_BF9002:  = Me.Text
  loc_BF9007: ILdRf var_C0
  loc_BF900A: LitStr "Cuarto"
  loc_BF900D: NeStr
  loc_BF900F: AndI4
  loc_BF9010: FFree1Str var_C0
  loc_BF9013: FFree1Ad var_88
  loc_BF9016: BranchF loc_BF9048
  loc_BF9019: LitI4 0
  loc_BF901E: LitI4 0
  loc_BF9023: LitI2_Byte 0
  loc_BF9025: LitStr "right"
  loc_BF9028: LitStr "&nbsp;"
  loc_BF902B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9030: CVarStr var_9C
  loc_BF9033: PopAdLdVar
  loc_BF9034: FLdPr Me
  loc_BF9037: MemLdRfVar from_stack_1.htmFile
  loc_BF903A: LdPrVar
  loc_BF903C: LateMemCall
  loc_BF9042: FFree1Var var_9C = ""
  loc_BF9045: Branch loc_BF9076
  loc_BF9048: LitI4 0
  loc_BF904D: LitI4 0
  loc_BF9052: LitI2_Byte 0
  loc_BF9054: LitStr "right"
  loc_BF9057: FMemLdR4 var_124(40)
  loc_BF905C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9061: CVarStr var_9C
  loc_BF9064: PopAdLdVar
  loc_BF9065: FLdPr Me
  loc_BF9068: MemLdRfVar from_stack_1.htmFile
  loc_BF906B: LdPrVar
  loc_BF906D: LateMemCall
  loc_BF9073: FFree1Var var_9C = ""
  loc_BF9076: LitI4 0
  loc_BF907B: LitI4 0
  loc_BF9080: LitI2_Byte 0
  loc_BF9082: LitStr "right"
  loc_BF9085: FMemLdR4 var_124(44)
  loc_BF908A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF908F: CVarStr var_9C
  loc_BF9092: PopAdLdVar
  loc_BF9093: FLdPr Me
  loc_BF9096: MemLdRfVar from_stack_1.htmFile
  loc_BF9099: LdPrVar
  loc_BF909B: LateMemCall
  loc_BF90A1: FFree1Var var_9C = ""
  loc_BF90A4: LitStr "Municipalidad de Guaymallén"
  loc_BF90A7: LitStr "Municipalidad de Tupungato"
  loc_BF90AA: EqStr
  loc_BF90AC: FLdRfVar var_C0
  loc_BF90AF: FLdPr Me
  loc_BF90B2: VCallAd Control_ID_cboTrimestre
  loc_BF90B5: FStAdFunc var_88
  loc_BF90B8: FLdPr var_88
  loc_BF90BB:  = Me.Text
  loc_BF90C0: ILdRf var_C0
  loc_BF90C3: LitStr "Cuarto"
  loc_BF90C6: NeStr
  loc_BF90C8: AndI4
  loc_BF90C9: FFree1Str var_C0
  loc_BF90CC: FFree1Ad var_88
  loc_BF90CF: BranchF loc_BF9101
  loc_BF90D2: LitI4 0
  loc_BF90D7: LitI4 0
  loc_BF90DC: LitI2_Byte 0
  loc_BF90DE: LitStr "right"
  loc_BF90E1: LitStr "&nbsp;"
  loc_BF90E4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF90E9: CVarStr var_9C
  loc_BF90EC: PopAdLdVar
  loc_BF90ED: FLdPr Me
  loc_BF90F0: MemLdRfVar from_stack_1.htmFile
  loc_BF90F3: LdPrVar
  loc_BF90F5: LateMemCall
  loc_BF90FB: FFree1Var var_9C = ""
  loc_BF90FE: Branch loc_BF912F
  loc_BF9101: LitI4 0
  loc_BF9106: LitI4 0
  loc_BF910B: LitI2_Byte 0
  loc_BF910D: LitStr "right"
  loc_BF9110: FMemLdR4 var_124(48)
  loc_BF9115: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF911A: CVarStr var_9C
  loc_BF911D: PopAdLdVar
  loc_BF911E: FLdPr Me
  loc_BF9121: MemLdRfVar from_stack_1.htmFile
  loc_BF9124: LdPrVar
  loc_BF9126: LateMemCall
  loc_BF912C: FFree1Var var_9C = ""
  loc_BF912F: LitI4 0
  loc_BF9134: FStR4 var_124
  loc_BF9137: AryUnlock
  loc_BF913A: AryUnlock
  loc_BF913D: AryUnlock
  loc_BF9140: AryUnlock
  loc_BF9143: LitVarStr var_AC, "     </tr>"
  loc_BF9148: PopAdLdVar
  loc_BF9149: FLdPr Me
  loc_BF914C: MemLdRfVar from_stack_1.htmFile
  loc_BF914F: LdPrVar
  loc_BF9151: LateMemCall
  loc_BF9157: FLdPr Me
  loc_BF915A: VCallAd Control_ID_optAnalitico
  loc_BF915D: CVarAd
  loc_BF9161: CBoolVarNull
  loc_BF9163: FFree1Var var_9C = ""
  loc_BF9166: BranchF loc_BF96FC
  loc_BF9169: LitI2_Byte 1
  loc_BF916B: FLdPr Me
  loc_BF916E: MemLdRfVar from_stack_1.global_112
  loc_BF9171: FLdPr Me
  loc_BF9174: MemLdI2 global_110
  loc_BF9177: CI4UI1
  loc_BF9178: FLdPr Me
  loc_BF917B: MemLdI2 global_108
  loc_BF917E: CI4UI1
  loc_BF917F: FLdPr Me
  loc_BF9182: MemLdI2 global_106
  loc_BF9185: CI4UI1
  loc_BF9186: FLdPr Me
  loc_BF9189: MemLdI2 global_104
  loc_BF918C: CI4UI1
  loc_BF918D: FLdPr Me
  loc_BF9190: MemLdStr global_100
  loc_BF9193: Ary1LdPr
  loc_BF9194: MemLdStr global_8
  loc_BF9197: Ary1LdPr
  loc_BF9198: MemLdStr htmFile
  loc_BF919B: Ary1LdPr
  loc_BF919C: MemLdStr htmFile
  loc_BF919F: Ary1LdPr
  loc_BF91A0: MemLdStr htmFile
  loc_BF91A3: LitI2_Byte 1
  loc_BF91A5: FnUBound
  loc_BF91A7: CI2I4
  loc_BF91A8: ForI2 var_128
  loc_BF91AE: LitVarStr var_AC, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BF91B3: PopAdLdVar
  loc_BF91B4: FLdPr Me
  loc_BF91B7: MemLdRfVar from_stack_1.htmFile
  loc_BF91BA: LdPrVar
  loc_BF91BC: LateMemCall
  loc_BF91C2: FLdPr Me
  loc_BF91C5: MemLdI2 global_112
  loc_BF91C8: CI4UI1
  loc_BF91C9: FLdPr Me
  loc_BF91CC: MemLdI2 global_110
  loc_BF91CF: CI4UI1
  loc_BF91D0: FLdPr Me
  loc_BF91D3: MemLdI2 global_108
  loc_BF91D6: CI4UI1
  loc_BF91D7: FLdPr Me
  loc_BF91DA: MemLdI2 global_106
  loc_BF91DD: CI4UI1
  loc_BF91DE: FLdPr Me
  loc_BF91E1: MemLdI2 global_104
  loc_BF91E4: CI4UI1
  loc_BF91E5: FLdPr Me
  loc_BF91E8: MemLdStr global_100
  loc_BF91EB: AryLock
  loc_BF91EE: Ary1LdPr
  loc_BF91EF: MemLdStr global_8
  loc_BF91F2: AryLock
  loc_BF91F5: Ary1LdPr
  loc_BF91F6: MemLdStr htmFile
  loc_BF91F9: AryLock
  loc_BF91FC: Ary1LdPr
  loc_BF91FD: MemLdStr htmFile
  loc_BF9200: AryLock
  loc_BF9203: Ary1LdPr
  loc_BF9204: MemLdStr htmFile
  loc_BF9207: AryLock
  loc_BF920A: Ary1LdRf
  loc_BF920B: FStR4 var_140
  loc_BF920E: LitI4 0
  loc_BF9213: LitI4 0
  loc_BF9218: LitI2_Byte 0
  loc_BF921A: LitStr "left"
  loc_BF921D: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_BF9220: FMemLdR4 var_140(0)
  loc_BF9225: ConcatStr
  loc_BF9226: FStStrNoPop var_C0
  loc_BF9229: LitStr "<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
  loc_BF922C: ConcatStr
  loc_BF922D: FStStrNoPop var_C4
  loc_BF9230: FMemLdR4 var_140(4)
  loc_BF9235: ConcatStr
  loc_BF9236: FStStrNoPop var_C8
  loc_BF9239: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF923E: CVarStr var_9C
  loc_BF9241: PopAdLdVar
  loc_BF9242: FLdPr Me
  loc_BF9245: MemLdRfVar from_stack_1.htmFile
  loc_BF9248: LdPrVar
  loc_BF924A: LateMemCall
  loc_BF9250: FFreeStr var_C0 = "": var_C4 = ""
  loc_BF9259: FFree1Var var_9C = ""
  loc_BF925C: LitStr "Municipalidad de Guaymallén"
  loc_BF925F: LitStr "Municipalidad de Maipú"
  loc_BF9262: EqStr
  loc_BF9264: FLdRfVar var_C0
  loc_BF9267: FLdPr Me
  loc_BF926A: VCallAd Control_ID_cboPeriodo
  loc_BF926D: FStAdFunc var_88
  loc_BF9270: FLdPr var_88
  loc_BF9273:  = Me.Text
  loc_BF9278: ILdRf var_C0
  loc_BF927B: CI2Str
  loc_BF927D: LitI2 2025
  loc_BF9280: LeI2
  loc_BF9281: AndI4
  loc_BF9282: FFree1Str var_C0
  loc_BF9285: FFree1Ad var_88
  loc_BF9288: BranchF loc_BF9346
  loc_BF928B: LitI4 0
  loc_BF9290: LitI4 0
  loc_BF9295: LitI2_Byte 0
  loc_BF9297: LitStr "right"
  loc_BF929A: FMemLdR4 var_140(8)
  loc_BF929F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF92A4: CVarStr var_9C
  loc_BF92A7: PopAdLdVar
  loc_BF92A8: FLdPr Me
  loc_BF92AB: MemLdRfVar from_stack_1.htmFile
  loc_BF92AE: LdPrVar
  loc_BF92B0: LateMemCall
  loc_BF92B6: FFree1Var var_9C = ""
  loc_BF92B9: LitI4 0
  loc_BF92BE: LitI4 0
  loc_BF92C3: LitI2_Byte 0
  loc_BF92C5: LitStr "right"
  loc_BF92C8: FMemLdR4 var_140(12)
  loc_BF92CD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF92D2: CVarStr var_9C
  loc_BF92D5: PopAdLdVar
  loc_BF92D6: FLdPr Me
  loc_BF92D9: MemLdRfVar from_stack_1.htmFile
  loc_BF92DC: LdPrVar
  loc_BF92DE: LateMemCall
  loc_BF92E4: FFree1Var var_9C = ""
  loc_BF92E7: LitI4 0
  loc_BF92EC: LitI4 0
  loc_BF92F1: LitI2_Byte 0
  loc_BF92F3: LitStr "right"
  loc_BF92F6: FMemLdR4 var_140(16)
  loc_BF92FB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9300: CVarStr var_9C
  loc_BF9303: PopAdLdVar
  loc_BF9304: FLdPr Me
  loc_BF9307: MemLdRfVar from_stack_1.htmFile
  loc_BF930A: LdPrVar
  loc_BF930C: LateMemCall
  loc_BF9312: FFree1Var var_9C = ""
  loc_BF9315: LitI4 0
  loc_BF931A: LitI4 0
  loc_BF931F: LitI2_Byte 0
  loc_BF9321: LitStr "right"
  loc_BF9324: FMemLdR4 var_140(20)
  loc_BF9329: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF932E: CVarStr var_9C
  loc_BF9331: PopAdLdVar
  loc_BF9332: FLdPr Me
  loc_BF9335: MemLdRfVar from_stack_1.htmFile
  loc_BF9338: LdPrVar
  loc_BF933A: LateMemCall
  loc_BF9340: FFree1Var var_9C = ""
  loc_BF9343: Branch loc_BF94CA
  loc_BF9346: LitI4 1
  loc_BF934B: LitI4 1
  loc_BF9350: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9355: FStVarCopyObj var_9C
  loc_BF9358: FLdRfVar var_9C
  loc_BF935B: FMemLdRf 0
  loc_BF9360: CVarRef
  loc_BF9365: ImpAdCallI2 Format$(, )
  loc_BF936A: FStStr var_C4
  loc_BF936D: LitI4 0
  loc_BF9372: LitI4 0
  loc_BF9377: LitI2_Byte 0
  loc_BF9379: LitStr "right"
  loc_BF937C: FLdZeroAd var_C4
  loc_BF937F: FStStrNoPop var_C0
  loc_BF9382: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9387: CVarStr var_E8
  loc_BF938A: PopAdLdVar
  loc_BF938B: FLdPr Me
  loc_BF938E: MemLdRfVar from_stack_1.htmFile
  loc_BF9391: LdPrVar
  loc_BF9393: LateMemCall
  loc_BF9399: FFreeStr var_C0 = ""
  loc_BF93A0: FFreeVar var_9C = ""
  loc_BF93A7: LitI4 1
  loc_BF93AC: LitI4 1
  loc_BF93B1: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF93B6: FStVarCopyObj var_9C
  loc_BF93B9: FLdRfVar var_9C
  loc_BF93BC: FMemLdRf 0
  loc_BF93C1: CVarRef
  loc_BF93C6: ImpAdCallI2 Format$(, )
  loc_BF93CB: FStStr var_C4
  loc_BF93CE: LitI4 0
  loc_BF93D3: LitI4 0
  loc_BF93D8: LitI2_Byte 0
  loc_BF93DA: LitStr "right"
  loc_BF93DD: FLdZeroAd var_C4
  loc_BF93E0: FStStrNoPop var_C0
  loc_BF93E3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF93E8: CVarStr var_E8
  loc_BF93EB: PopAdLdVar
  loc_BF93EC: FLdPr Me
  loc_BF93EF: MemLdRfVar from_stack_1.htmFile
  loc_BF93F2: LdPrVar
  loc_BF93F4: LateMemCall
  loc_BF93FA: FFreeStr var_C0 = ""
  loc_BF9401: FFreeVar var_9C = ""
  loc_BF9408: LitI4 1
  loc_BF940D: LitI4 1
  loc_BF9412: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9417: FStVarCopyObj var_9C
  loc_BF941A: FLdRfVar var_9C
  loc_BF941D: FMemLdRf 0
  loc_BF9422: CVarRef
  loc_BF9427: ImpAdCallI2 Format$(, )
  loc_BF942C: FStStr var_C4
  loc_BF942F: LitI4 0
  loc_BF9434: LitI4 0
  loc_BF9439: LitI2_Byte 0
  loc_BF943B: LitStr "right"
  loc_BF943E: FLdZeroAd var_C4
  loc_BF9441: FStStrNoPop var_C0
  loc_BF9444: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9449: CVarStr var_E8
  loc_BF944C: PopAdLdVar
  loc_BF944D: FLdPr Me
  loc_BF9450: MemLdRfVar from_stack_1.htmFile
  loc_BF9453: LdPrVar
  loc_BF9455: LateMemCall
  loc_BF945B: FFreeStr var_C0 = ""
  loc_BF9462: FFreeVar var_9C = ""
  loc_BF9469: LitI4 1
  loc_BF946E: LitI4 1
  loc_BF9473: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9478: FStVarCopyObj var_9C
  loc_BF947B: FLdRfVar var_9C
  loc_BF947E: FMemLdRf 0
  loc_BF9483: CVarRef
  loc_BF9488: ImpAdCallI2 Format$(, )
  loc_BF948D: FStStr var_C4
  loc_BF9490: LitI4 0
  loc_BF9495: LitI4 0
  loc_BF949A: LitI2_Byte 0
  loc_BF949C: LitStr "right"
  loc_BF949F: FLdZeroAd var_C4
  loc_BF94A2: FStStrNoPop var_C0
  loc_BF94A5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF94AA: CVarStr var_E8
  loc_BF94AD: PopAdLdVar
  loc_BF94AE: FLdPr Me
  loc_BF94B1: MemLdRfVar from_stack_1.htmFile
  loc_BF94B4: LdPrVar
  loc_BF94B6: LateMemCall
  loc_BF94BC: FFreeStr var_C0 = ""
  loc_BF94C3: FFreeVar var_9C = ""
  loc_BF94CA: LitI4 0
  loc_BF94CF: LitI4 0
  loc_BF94D4: LitI2_Byte 0
  loc_BF94D6: LitStr "right"
  loc_BF94D9: FMemLdR4 var_140(24)
  loc_BF94DE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF94E3: CVarStr var_9C
  loc_BF94E6: PopAdLdVar
  loc_BF94E7: FLdPr Me
  loc_BF94EA: MemLdRfVar from_stack_1.htmFile
  loc_BF94ED: LdPrVar
  loc_BF94EF: LateMemCall
  loc_BF94F5: FFree1Var var_9C = ""
  loc_BF94F8: LitI4 0
  loc_BF94FD: LitI4 0
  loc_BF9502: LitI2_Byte 0
  loc_BF9504: LitStr "right"
  loc_BF9507: FMemLdR4 var_140(28)
  loc_BF950C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9511: CVarStr var_9C
  loc_BF9514: PopAdLdVar
  loc_BF9515: FLdPr Me
  loc_BF9518: MemLdRfVar from_stack_1.htmFile
  loc_BF951B: LdPrVar
  loc_BF951D: LateMemCall
  loc_BF9523: FFree1Var var_9C = ""
  loc_BF9526: LitI4 0
  loc_BF952B: LitI4 0
  loc_BF9530: LitI2_Byte 0
  loc_BF9532: LitStr "right"
  loc_BF9535: FMemLdR4 var_140(32)
  loc_BF953A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF953F: CVarStr var_9C
  loc_BF9542: PopAdLdVar
  loc_BF9543: FLdPr Me
  loc_BF9546: MemLdRfVar from_stack_1.htmFile
  loc_BF9549: LdPrVar
  loc_BF954B: LateMemCall
  loc_BF9551: FFree1Var var_9C = ""
  loc_BF9554: LitI4 0
  loc_BF9559: LitI4 0
  loc_BF955E: LitI2_Byte 0
  loc_BF9560: LitStr "right"
  loc_BF9563: FMemLdR4 var_140(36)
  loc_BF9568: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF956D: CVarStr var_9C
  loc_BF9570: PopAdLdVar
  loc_BF9571: FLdPr Me
  loc_BF9574: MemLdRfVar from_stack_1.htmFile
  loc_BF9577: LdPrVar
  loc_BF9579: LateMemCall
  loc_BF957F: FFree1Var var_9C = ""
  loc_BF9582: LitStr "Municipalidad de Guaymallén"
  loc_BF9585: LitStr "Municipalidad de Tupungato"
  loc_BF9588: EqStr
  loc_BF958A: FLdRfVar var_C0
  loc_BF958D: FLdPr Me
  loc_BF9590: VCallAd Control_ID_cboTrimestre
  loc_BF9593: FStAdFunc var_88
  loc_BF9596: FLdPr var_88
  loc_BF9599:  = Me.Text
  loc_BF959E: ILdRf var_C0
  loc_BF95A1: LitStr "Cuarto"
  loc_BF95A4: NeStr
  loc_BF95A6: AndI4
  loc_BF95A7: FFree1Str var_C0
  loc_BF95AA: FFree1Ad var_88
  loc_BF95AD: BranchF loc_BF95DF
  loc_BF95B0: LitI4 0
  loc_BF95B5: LitI4 0
  loc_BF95BA: LitI2_Byte 0
  loc_BF95BC: LitStr "right"
  loc_BF95BF: LitStr "&nbsp;"
  loc_BF95C2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF95C7: CVarStr var_9C
  loc_BF95CA: PopAdLdVar
  loc_BF95CB: FLdPr Me
  loc_BF95CE: MemLdRfVar from_stack_1.htmFile
  loc_BF95D1: LdPrVar
  loc_BF95D3: LateMemCall
  loc_BF95D9: FFree1Var var_9C = ""
  loc_BF95DC: Branch loc_BF960D
  loc_BF95DF: LitI4 0
  loc_BF95E4: LitI4 0
  loc_BF95E9: LitI2_Byte 0
  loc_BF95EB: LitStr "right"
  loc_BF95EE: FMemLdR4 var_140(40)
  loc_BF95F3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF95F8: CVarStr var_9C
  loc_BF95FB: PopAdLdVar
  loc_BF95FC: FLdPr Me
  loc_BF95FF: MemLdRfVar from_stack_1.htmFile
  loc_BF9602: LdPrVar
  loc_BF9604: LateMemCall
  loc_BF960A: FFree1Var var_9C = ""
  loc_BF960D: LitI4 0
  loc_BF9612: LitI4 0
  loc_BF9617: LitI2_Byte 0
  loc_BF9619: LitStr "right"
  loc_BF961C: FMemLdR4 var_140(44)
  loc_BF9621: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9626: CVarStr var_9C
  loc_BF9629: PopAdLdVar
  loc_BF962A: FLdPr Me
  loc_BF962D: MemLdRfVar from_stack_1.htmFile
  loc_BF9630: LdPrVar
  loc_BF9632: LateMemCall
  loc_BF9638: FFree1Var var_9C = ""
  loc_BF963B: LitStr "Municipalidad de Guaymallén"
  loc_BF963E: LitStr "Municipalidad de Tupungato"
  loc_BF9641: EqStr
  loc_BF9643: FLdRfVar var_C0
  loc_BF9646: FLdPr Me
  loc_BF9649: VCallAd Control_ID_cboTrimestre
  loc_BF964C: FStAdFunc var_88
  loc_BF964F: FLdPr var_88
  loc_BF9652:  = Me.Text
  loc_BF9657: ILdRf var_C0
  loc_BF965A: LitStr "Cuarto"
  loc_BF965D: NeStr
  loc_BF965F: AndI4
  loc_BF9660: FFree1Str var_C0
  loc_BF9663: FFree1Ad var_88
  loc_BF9666: BranchF loc_BF9698
  loc_BF9669: LitI4 0
  loc_BF966E: LitI4 0
  loc_BF9673: LitI2_Byte 0
  loc_BF9675: LitStr "right"
  loc_BF9678: LitStr "&nbsp;"
  loc_BF967B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9680: CVarStr var_9C
  loc_BF9683: PopAdLdVar
  loc_BF9684: FLdPr Me
  loc_BF9687: MemLdRfVar from_stack_1.htmFile
  loc_BF968A: LdPrVar
  loc_BF968C: LateMemCall
  loc_BF9692: FFree1Var var_9C = ""
  loc_BF9695: Branch loc_BF96C6
  loc_BF9698: LitI4 0
  loc_BF969D: LitI4 0
  loc_BF96A2: LitI2_Byte 0
  loc_BF96A4: LitStr "right"
  loc_BF96A7: FMemLdR4 var_140(48)
  loc_BF96AC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF96B1: CVarStr var_9C
  loc_BF96B4: PopAdLdVar
  loc_BF96B5: FLdPr Me
  loc_BF96B8: MemLdRfVar from_stack_1.htmFile
  loc_BF96BB: LdPrVar
  loc_BF96BD: LateMemCall
  loc_BF96C3: FFree1Var var_9C = ""
  loc_BF96C6: LitI4 0
  loc_BF96CB: FStR4 var_140
  loc_BF96CE: AryUnlock
  loc_BF96D1: AryUnlock
  loc_BF96D4: AryUnlock
  loc_BF96D7: AryUnlock
  loc_BF96DA: AryUnlock
  loc_BF96DD: LitVarStr var_AC, "     </tr>"
  loc_BF96E2: PopAdLdVar
  loc_BF96E3: FLdPr Me
  loc_BF96E6: MemLdRfVar from_stack_1.htmFile
  loc_BF96E9: LdPrVar
  loc_BF96EB: LateMemCall
  loc_BF96F1: FLdPr Me
  loc_BF96F4: MemLdRfVar from_stack_1.global_112
  loc_BF96F7: NextI2 var_128, loc_BF91AE
  loc_BF96FC: FLdPr Me
  loc_BF96FF: MemLdRfVar from_stack_1.global_110
  loc_BF9702: NextI2 var_110, loc_BF8C22
  loc_BF9707: FLdPr Me
  loc_BF970A: MemLdRfVar from_stack_1.global_108
  loc_BF970D: NextI2 var_FC, loc_BF86C4
  loc_BF9712: FLdPr Me
  loc_BF9715: MemLdRfVar from_stack_1.global_106
  loc_BF9718: NextI2 var_CC, loc_BF818B
  loc_BF971D: FLdPr Me
  loc_BF9720: VCallAd Control_ID_optJurisdiccion
  loc_BF9723: CVarAd
  loc_BF9727: CBoolVarNull
  loc_BF9729: FFree1Var var_9C = ""
  loc_BF972C: BranchF loc_BF9C27
  loc_BF972F: FLdPr Me
  loc_BF9732: MemLdI2 global_104
  loc_BF9735: CI4UI1
  loc_BF9736: FLdPr Me
  loc_BF9739: MemLdStr global_100
  loc_BF973C: AryLock
  loc_BF973F: Ary1LdPr
  loc_BF9740: MemLdRfVar from_stack_1.global_12
  loc_BF9743: FStR4 var_148
  loc_BF9746: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_BF974B: PopAdLdVar
  loc_BF974C: FLdPr Me
  loc_BF974F: MemLdRfVar from_stack_1.htmFile
  loc_BF9752: LdPrVar
  loc_BF9754: LateMemCall
  loc_BF975A: LitI4 0
  loc_BF975F: LitI4 0
  loc_BF9764: LitI2_Byte 0
  loc_BF9766: LitStr "right"
  loc_BF9769: LitStr "Subtotal Juris."
  loc_BF976C: FLdPr Me
  loc_BF976F: MemLdI2 global_104
  loc_BF9772: CI4UI1
  loc_BF9773: FLdPr Me
  loc_BF9776: MemLdStr global_100
  loc_BF9779: Ary1LdPr
  loc_BF977A: MemLdStr global_0
  loc_BF977D: ConcatStr
  loc_BF977E: FStStrNoPop var_C0
  loc_BF9781: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9786: CVarStr var_9C
  loc_BF9789: PopAdLdVar
  loc_BF978A: FLdPr Me
  loc_BF978D: MemLdRfVar from_stack_1.htmFile
  loc_BF9790: LdPrVar
  loc_BF9792: LateMemCall
  loc_BF9798: FFree1Str var_C0
  loc_BF979B: FFree1Var var_9C = ""
  loc_BF979E: LitStr "Municipalidad de Guaymallén"
  loc_BF97A1: LitStr "Municipalidad de Maipú"
  loc_BF97A4: EqStr
  loc_BF97A6: FLdRfVar var_C0
  loc_BF97A9: FLdPr Me
  loc_BF97AC: VCallAd Control_ID_cboPeriodo
  loc_BF97AF: FStAdFunc var_88
  loc_BF97B2: FLdPr var_88
  loc_BF97B5:  = Me.Text
  loc_BF97BA: ILdRf var_C0
  loc_BF97BD: CI2Str
  loc_BF97BF: LitI2 2025
  loc_BF97C2: LeI2
  loc_BF97C3: AndI4
  loc_BF97C4: FFree1Str var_C0
  loc_BF97C7: FFree1Ad var_88
  loc_BF97CA: BranchF loc_BF9888
  loc_BF97CD: LitI4 0
  loc_BF97D2: LitI4 0
  loc_BF97D7: LitI2_Byte 0
  loc_BF97D9: LitStr "right"
  loc_BF97DC: FMemLdR4 var_148(8)
  loc_BF97E1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF97E6: CVarStr var_9C
  loc_BF97E9: PopAdLdVar
  loc_BF97EA: FLdPr Me
  loc_BF97ED: MemLdRfVar from_stack_1.htmFile
  loc_BF97F0: LdPrVar
  loc_BF97F2: LateMemCall
  loc_BF97F8: FFree1Var var_9C = ""
  loc_BF97FB: LitI4 0
  loc_BF9800: LitI4 0
  loc_BF9805: LitI2_Byte 0
  loc_BF9807: LitStr "right"
  loc_BF980A: FMemLdR4 var_148(12)
  loc_BF980F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9814: CVarStr var_9C
  loc_BF9817: PopAdLdVar
  loc_BF9818: FLdPr Me
  loc_BF981B: MemLdRfVar from_stack_1.htmFile
  loc_BF981E: LdPrVar
  loc_BF9820: LateMemCall
  loc_BF9826: FFree1Var var_9C = ""
  loc_BF9829: LitI4 0
  loc_BF982E: LitI4 0
  loc_BF9833: LitI2_Byte 0
  loc_BF9835: LitStr "right"
  loc_BF9838: FMemLdR4 var_148(16)
  loc_BF983D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9842: CVarStr var_9C
  loc_BF9845: PopAdLdVar
  loc_BF9846: FLdPr Me
  loc_BF9849: MemLdRfVar from_stack_1.htmFile
  loc_BF984C: LdPrVar
  loc_BF984E: LateMemCall
  loc_BF9854: FFree1Var var_9C = ""
  loc_BF9857: LitI4 0
  loc_BF985C: LitI4 0
  loc_BF9861: LitI2_Byte 0
  loc_BF9863: LitStr "right"
  loc_BF9866: FMemLdR4 var_148(20)
  loc_BF986B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9870: CVarStr var_9C
  loc_BF9873: PopAdLdVar
  loc_BF9874: FLdPr Me
  loc_BF9877: MemLdRfVar from_stack_1.htmFile
  loc_BF987A: LdPrVar
  loc_BF987C: LateMemCall
  loc_BF9882: FFree1Var var_9C = ""
  loc_BF9885: Branch loc_BF9A0C
  loc_BF9888: LitI4 1
  loc_BF988D: LitI4 1
  loc_BF9892: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9897: FStVarCopyObj var_9C
  loc_BF989A: FLdRfVar var_9C
  loc_BF989D: FMemLdRf ext_4010B8
  loc_BF98A2: CVarRef
  loc_BF98A7: ImpAdCallI2 Format$(, )
  loc_BF98AC: FStStr var_C4
  loc_BF98AF: LitI4 0
  loc_BF98B4: LitI4 0
  loc_BF98B9: LitI2_Byte 0
  loc_BF98BB: LitStr "right"
  loc_BF98BE: FLdZeroAd var_C4
  loc_BF98C1: FStStrNoPop var_C0
  loc_BF98C4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF98C9: CVarStr var_E8
  loc_BF98CC: PopAdLdVar
  loc_BF98CD: FLdPr Me
  loc_BF98D0: MemLdRfVar from_stack_1.htmFile
  loc_BF98D3: LdPrVar
  loc_BF98D5: LateMemCall
  loc_BF98DB: FFreeStr var_C0 = ""
  loc_BF98E2: FFreeVar var_9C = ""
  loc_BF98E9: LitI4 1
  loc_BF98EE: LitI4 1
  loc_BF98F3: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF98F8: FStVarCopyObj var_9C
  loc_BF98FB: FLdRfVar var_9C
  loc_BF98FE: FMemLdRf ext_4010B8
  loc_BF9903: CVarRef
  loc_BF9908: ImpAdCallI2 Format$(, )
  loc_BF990D: FStStr var_C4
  loc_BF9910: LitI4 0
  loc_BF9915: LitI4 0
  loc_BF991A: LitI2_Byte 0
  loc_BF991C: LitStr "right"
  loc_BF991F: FLdZeroAd var_C4
  loc_BF9922: FStStrNoPop var_C0
  loc_BF9925: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF992A: CVarStr var_E8
  loc_BF992D: PopAdLdVar
  loc_BF992E: FLdPr Me
  loc_BF9931: MemLdRfVar from_stack_1.htmFile
  loc_BF9934: LdPrVar
  loc_BF9936: LateMemCall
  loc_BF993C: FFreeStr var_C0 = ""
  loc_BF9943: FFreeVar var_9C = ""
  loc_BF994A: LitI4 1
  loc_BF994F: LitI4 1
  loc_BF9954: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9959: FStVarCopyObj var_9C
  loc_BF995C: FLdRfVar var_9C
  loc_BF995F: FMemLdRf ext_4010B8
  loc_BF9964: CVarRef
  loc_BF9969: ImpAdCallI2 Format$(, )
  loc_BF996E: FStStr var_C4
  loc_BF9971: LitI4 0
  loc_BF9976: LitI4 0
  loc_BF997B: LitI2_Byte 0
  loc_BF997D: LitStr "right"
  loc_BF9980: FLdZeroAd var_C4
  loc_BF9983: FStStrNoPop var_C0
  loc_BF9986: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF998B: CVarStr var_E8
  loc_BF998E: PopAdLdVar
  loc_BF998F: FLdPr Me
  loc_BF9992: MemLdRfVar from_stack_1.htmFile
  loc_BF9995: LdPrVar
  loc_BF9997: LateMemCall
  loc_BF999D: FFreeStr var_C0 = ""
  loc_BF99A4: FFreeVar var_9C = ""
  loc_BF99AB: LitI4 1
  loc_BF99B0: LitI4 1
  loc_BF99B5: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF99BA: FStVarCopyObj var_9C
  loc_BF99BD: FLdRfVar var_9C
  loc_BF99C0: FMemLdRf ext_4010B8
  loc_BF99C5: CVarRef
  loc_BF99CA: ImpAdCallI2 Format$(, )
  loc_BF99CF: FStStr var_C4
  loc_BF99D2: LitI4 0
  loc_BF99D7: LitI4 0
  loc_BF99DC: LitI2_Byte 0
  loc_BF99DE: LitStr "right"
  loc_BF99E1: FLdZeroAd var_C4
  loc_BF99E4: FStStrNoPop var_C0
  loc_BF99E7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF99EC: CVarStr var_E8
  loc_BF99EF: PopAdLdVar
  loc_BF99F0: FLdPr Me
  loc_BF99F3: MemLdRfVar from_stack_1.htmFile
  loc_BF99F6: LdPrVar
  loc_BF99F8: LateMemCall
  loc_BF99FE: FFreeStr var_C0 = ""
  loc_BF9A05: FFreeVar var_9C = ""
  loc_BF9A0C: LitI4 0
  loc_BF9A11: LitI4 0
  loc_BF9A16: LitI2_Byte 0
  loc_BF9A18: LitStr "right"
  loc_BF9A1B: FMemLdR4 var_148(24)
  loc_BF9A20: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9A25: CVarStr var_9C
  loc_BF9A28: PopAdLdVar
  loc_BF9A29: FLdPr Me
  loc_BF9A2C: MemLdRfVar from_stack_1.htmFile
  loc_BF9A2F: LdPrVar
  loc_BF9A31: LateMemCall
  loc_BF9A37: FFree1Var var_9C = ""
  loc_BF9A3A: LitI4 0
  loc_BF9A3F: LitI4 0
  loc_BF9A44: LitI2_Byte 0
  loc_BF9A46: LitStr "right"
  loc_BF9A49: FMemLdR4 var_148(28)
  loc_BF9A4E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9A53: CVarStr var_9C
  loc_BF9A56: PopAdLdVar
  loc_BF9A57: FLdPr Me
  loc_BF9A5A: MemLdRfVar from_stack_1.htmFile
  loc_BF9A5D: LdPrVar
  loc_BF9A5F: LateMemCall
  loc_BF9A65: FFree1Var var_9C = ""
  loc_BF9A68: LitI4 0
  loc_BF9A6D: LitI4 0
  loc_BF9A72: LitI2_Byte 0
  loc_BF9A74: LitStr "right"
  loc_BF9A77: FMemLdR4 var_148(32)
  loc_BF9A7C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9A81: CVarStr var_9C
  loc_BF9A84: PopAdLdVar
  loc_BF9A85: FLdPr Me
  loc_BF9A88: MemLdRfVar from_stack_1.htmFile
  loc_BF9A8B: LdPrVar
  loc_BF9A8D: LateMemCall
  loc_BF9A93: FFree1Var var_9C = ""
  loc_BF9A96: LitI4 0
  loc_BF9A9B: LitI4 0
  loc_BF9AA0: LitI2_Byte 0
  loc_BF9AA2: LitStr "right"
  loc_BF9AA5: FMemLdR4 var_148(36)
  loc_BF9AAA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9AAF: CVarStr var_9C
  loc_BF9AB2: PopAdLdVar
  loc_BF9AB3: FLdPr Me
  loc_BF9AB6: MemLdRfVar from_stack_1.htmFile
  loc_BF9AB9: LdPrVar
  loc_BF9ABB: LateMemCall
  loc_BF9AC1: FFree1Var var_9C = ""
  loc_BF9AC4: LitStr "Municipalidad de Guaymallén"
  loc_BF9AC7: LitStr "Municipalidad de Tupungato"
  loc_BF9ACA: EqStr
  loc_BF9ACC: FLdRfVar var_C0
  loc_BF9ACF: FLdPr Me
  loc_BF9AD2: VCallAd Control_ID_cboTrimestre
  loc_BF9AD5: FStAdFunc var_88
  loc_BF9AD8: FLdPr var_88
  loc_BF9ADB:  = Me.Text
  loc_BF9AE0: ILdRf var_C0
  loc_BF9AE3: LitStr "Cuarto"
  loc_BF9AE6: NeStr
  loc_BF9AE8: AndI4
  loc_BF9AE9: FFree1Str var_C0
  loc_BF9AEC: FFree1Ad var_88
  loc_BF9AEF: BranchF loc_BF9B21
  loc_BF9AF2: LitI4 0
  loc_BF9AF7: LitI4 0
  loc_BF9AFC: LitI2_Byte 0
  loc_BF9AFE: LitStr "right"
  loc_BF9B01: LitStr "&nbsp;"
  loc_BF9B04: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9B09: CVarStr var_9C
  loc_BF9B0C: PopAdLdVar
  loc_BF9B0D: FLdPr Me
  loc_BF9B10: MemLdRfVar from_stack_1.htmFile
  loc_BF9B13: LdPrVar
  loc_BF9B15: LateMemCall
  loc_BF9B1B: FFree1Var var_9C = ""
  loc_BF9B1E: Branch loc_BF9B4F
  loc_BF9B21: LitI4 0
  loc_BF9B26: LitI4 0
  loc_BF9B2B: LitI2_Byte 0
  loc_BF9B2D: LitStr "right"
  loc_BF9B30: FMemLdR4 var_148(40)
  loc_BF9B35: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9B3A: CVarStr var_9C
  loc_BF9B3D: PopAdLdVar
  loc_BF9B3E: FLdPr Me
  loc_BF9B41: MemLdRfVar from_stack_1.htmFile
  loc_BF9B44: LdPrVar
  loc_BF9B46: LateMemCall
  loc_BF9B4C: FFree1Var var_9C = ""
  loc_BF9B4F: LitI4 0
  loc_BF9B54: LitI4 0
  loc_BF9B59: LitI2_Byte 0
  loc_BF9B5B: LitStr "right"
  loc_BF9B5E: FMemLdR4 var_148(44)
  loc_BF9B63: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9B68: CVarStr var_9C
  loc_BF9B6B: PopAdLdVar
  loc_BF9B6C: FLdPr Me
  loc_BF9B6F: MemLdRfVar from_stack_1.htmFile
  loc_BF9B72: LdPrVar
  loc_BF9B74: LateMemCall
  loc_BF9B7A: FFree1Var var_9C = ""
  loc_BF9B7D: LitStr "Municipalidad de Guaymallén"
  loc_BF9B80: LitStr "Municipalidad de Tupungato"
  loc_BF9B83: EqStr
  loc_BF9B85: FLdRfVar var_C0
  loc_BF9B88: FLdPr Me
  loc_BF9B8B: VCallAd Control_ID_cboTrimestre
  loc_BF9B8E: FStAdFunc var_88
  loc_BF9B91: FLdPr var_88
  loc_BF9B94:  = Me.Text
  loc_BF9B99: ILdRf var_C0
  loc_BF9B9C: LitStr "Cuarto"
  loc_BF9B9F: NeStr
  loc_BF9BA1: AndI4
  loc_BF9BA2: FFree1Str var_C0
  loc_BF9BA5: FFree1Ad var_88
  loc_BF9BA8: BranchF loc_BF9BDA
  loc_BF9BAB: LitI4 0
  loc_BF9BB0: LitI4 0
  loc_BF9BB5: LitI2_Byte 0
  loc_BF9BB7: LitStr "right"
  loc_BF9BBA: LitStr "&nbsp;"
  loc_BF9BBD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9BC2: CVarStr var_9C
  loc_BF9BC5: PopAdLdVar
  loc_BF9BC6: FLdPr Me
  loc_BF9BC9: MemLdRfVar from_stack_1.htmFile
  loc_BF9BCC: LdPrVar
  loc_BF9BCE: LateMemCall
  loc_BF9BD4: FFree1Var var_9C = ""
  loc_BF9BD7: Branch loc_BF9C08
  loc_BF9BDA: LitI4 0
  loc_BF9BDF: LitI4 0
  loc_BF9BE4: LitI2_Byte 0
  loc_BF9BE6: LitStr "right"
  loc_BF9BE9: FMemLdR4 var_148(48)
  loc_BF9BEE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9BF3: CVarStr var_9C
  loc_BF9BF6: PopAdLdVar
  loc_BF9BF7: FLdPr Me
  loc_BF9BFA: MemLdRfVar from_stack_1.htmFile
  loc_BF9BFD: LdPrVar
  loc_BF9BFF: LateMemCall
  loc_BF9C05: FFree1Var var_9C = ""
  loc_BF9C08: LitVarStr var_AC, "     </tr>"
  loc_BF9C0D: PopAdLdVar
  loc_BF9C0E: FLdPr Me
  loc_BF9C11: MemLdRfVar from_stack_1.htmFile
  loc_BF9C14: LdPrVar
  loc_BF9C16: LateMemCall
  loc_BF9C1C: LitI4 0
  loc_BF9C21: FStR4 var_148
  loc_BF9C24: AryUnlock
  loc_BF9C27: FLdPr Me
  loc_BF9C2A: MemLdRfVar from_stack_1.global_104
  loc_BF9C2D: NextI2 var_8C, loc_BF80D7
  loc_BF9C32: LitI4 1
  loc_BF9C37: FLdPr Me
  loc_BF9C3A: MemLdStr global_116
  loc_BF9C3D: AryLock
  loc_BF9C40: Ary1LdRf
  loc_BF9C41: FStR4 var_150
  loc_BF9C44: LitVarStr var_AC, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_BF9C49: PopAdLdVar
  loc_BF9C4A: FLdPr Me
  loc_BF9C4D: MemLdRfVar from_stack_1.htmFile
  loc_BF9C50: LdPrVar
  loc_BF9C52: LateMemCall
  loc_BF9C58: LitI4 0
  loc_BF9C5D: LitI4 0
  loc_BF9C62: LitI2_Byte 0
  loc_BF9C64: LitStr "right"
  loc_BF9C67: LitStr "TOTAL GENERAL"
  loc_BF9C6A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9C6F: CVarStr var_9C
  loc_BF9C72: PopAdLdVar
  loc_BF9C73: FLdPr Me
  loc_BF9C76: MemLdRfVar from_stack_1.htmFile
  loc_BF9C79: LdPrVar
  loc_BF9C7B: LateMemCall
  loc_BF9C81: FFree1Var var_9C = ""
  loc_BF9C84: LitStr "Municipalidad de Guaymallén"
  loc_BF9C87: LitStr "Municipalidad de Maipú"
  loc_BF9C8A: EqStr
  loc_BF9C8C: FLdRfVar var_C0
  loc_BF9C8F: FLdPr Me
  loc_BF9C92: VCallAd Control_ID_cboPeriodo
  loc_BF9C95: FStAdFunc var_88
  loc_BF9C98: FLdPr var_88
  loc_BF9C9B:  = Me.Text
  loc_BF9CA0: ILdRf var_C0
  loc_BF9CA3: CI2Str
  loc_BF9CA5: LitI2 2025
  loc_BF9CA8: LeI2
  loc_BF9CA9: AndI4
  loc_BF9CAA: FFree1Str var_C0
  loc_BF9CAD: FFree1Ad var_88
  loc_BF9CB0: BranchF loc_BF9D6E
  loc_BF9CB3: LitI4 0
  loc_BF9CB8: LitI4 0
  loc_BF9CBD: LitI2_Byte 0
  loc_BF9CBF: LitStr "right"
  loc_BF9CC2: FMemLdR4 var_150(8)
  loc_BF9CC7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9CCC: CVarStr var_9C
  loc_BF9CCF: PopAdLdVar
  loc_BF9CD0: FLdPr Me
  loc_BF9CD3: MemLdRfVar from_stack_1.htmFile
  loc_BF9CD6: LdPrVar
  loc_BF9CD8: LateMemCall
  loc_BF9CDE: FFree1Var var_9C = ""
  loc_BF9CE1: LitI4 0
  loc_BF9CE6: LitI4 0
  loc_BF9CEB: LitI2_Byte 0
  loc_BF9CED: LitStr "right"
  loc_BF9CF0: FMemLdR4 var_150(12)
  loc_BF9CF5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9CFA: CVarStr var_9C
  loc_BF9CFD: PopAdLdVar
  loc_BF9CFE: FLdPr Me
  loc_BF9D01: MemLdRfVar from_stack_1.htmFile
  loc_BF9D04: LdPrVar
  loc_BF9D06: LateMemCall
  loc_BF9D0C: FFree1Var var_9C = ""
  loc_BF9D0F: LitI4 0
  loc_BF9D14: LitI4 0
  loc_BF9D19: LitI2_Byte 0
  loc_BF9D1B: LitStr "right"
  loc_BF9D1E: FMemLdR4 var_150(16)
  loc_BF9D23: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9D28: CVarStr var_9C
  loc_BF9D2B: PopAdLdVar
  loc_BF9D2C: FLdPr Me
  loc_BF9D2F: MemLdRfVar from_stack_1.htmFile
  loc_BF9D32: LdPrVar
  loc_BF9D34: LateMemCall
  loc_BF9D3A: FFree1Var var_9C = ""
  loc_BF9D3D: LitI4 0
  loc_BF9D42: LitI4 0
  loc_BF9D47: LitI2_Byte 0
  loc_BF9D49: LitStr "right"
  loc_BF9D4C: FMemLdR4 var_150(20)
  loc_BF9D51: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9D56: CVarStr var_9C
  loc_BF9D59: PopAdLdVar
  loc_BF9D5A: FLdPr Me
  loc_BF9D5D: MemLdRfVar from_stack_1.htmFile
  loc_BF9D60: LdPrVar
  loc_BF9D62: LateMemCall
  loc_BF9D68: FFree1Var var_9C = ""
  loc_BF9D6B: Branch loc_BF9EF2
  loc_BF9D6E: LitI4 1
  loc_BF9D73: LitI4 1
  loc_BF9D78: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9D7D: FStVarCopyObj var_9C
  loc_BF9D80: FLdRfVar var_9C
  loc_BF9D83: FMemLdRf 0
  loc_BF9D88: CVarRef
  loc_BF9D8D: ImpAdCallI2 Format$(, )
  loc_BF9D92: FStStr var_C4
  loc_BF9D95: LitI4 0
  loc_BF9D9A: LitI4 0
  loc_BF9D9F: LitI2_Byte 0
  loc_BF9DA1: LitStr "right"
  loc_BF9DA4: FLdZeroAd var_C4
  loc_BF9DA7: FStStrNoPop var_C0
  loc_BF9DAA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9DAF: CVarStr var_E8
  loc_BF9DB2: PopAdLdVar
  loc_BF9DB3: FLdPr Me
  loc_BF9DB6: MemLdRfVar from_stack_1.htmFile
  loc_BF9DB9: LdPrVar
  loc_BF9DBB: LateMemCall
  loc_BF9DC1: FFreeStr var_C0 = ""
  loc_BF9DC8: FFreeVar var_9C = ""
  loc_BF9DCF: LitI4 1
  loc_BF9DD4: LitI4 1
  loc_BF9DD9: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9DDE: FStVarCopyObj var_9C
  loc_BF9DE1: FLdRfVar var_9C
  loc_BF9DE4: FMemLdRf 0
  loc_BF9DE9: CVarRef
  loc_BF9DEE: ImpAdCallI2 Format$(, )
  loc_BF9DF3: FStStr var_C4
  loc_BF9DF6: LitI4 0
  loc_BF9DFB: LitI4 0
  loc_BF9E00: LitI2_Byte 0
  loc_BF9E02: LitStr "right"
  loc_BF9E05: FLdZeroAd var_C4
  loc_BF9E08: FStStrNoPop var_C0
  loc_BF9E0B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9E10: CVarStr var_E8
  loc_BF9E13: PopAdLdVar
  loc_BF9E14: FLdPr Me
  loc_BF9E17: MemLdRfVar from_stack_1.htmFile
  loc_BF9E1A: LdPrVar
  loc_BF9E1C: LateMemCall
  loc_BF9E22: FFreeStr var_C0 = ""
  loc_BF9E29: FFreeVar var_9C = ""
  loc_BF9E30: LitI4 1
  loc_BF9E35: LitI4 1
  loc_BF9E3A: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9E3F: FStVarCopyObj var_9C
  loc_BF9E42: FLdRfVar var_9C
  loc_BF9E45: FMemLdRf 0
  loc_BF9E4A: CVarRef
  loc_BF9E4F: ImpAdCallI2 Format$(, )
  loc_BF9E54: FStStr var_C4
  loc_BF9E57: LitI4 0
  loc_BF9E5C: LitI4 0
  loc_BF9E61: LitI2_Byte 0
  loc_BF9E63: LitStr "right"
  loc_BF9E66: FLdZeroAd var_C4
  loc_BF9E69: FStStrNoPop var_C0
  loc_BF9E6C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9E71: CVarStr var_E8
  loc_BF9E74: PopAdLdVar
  loc_BF9E75: FLdPr Me
  loc_BF9E78: MemLdRfVar from_stack_1.htmFile
  loc_BF9E7B: LdPrVar
  loc_BF9E7D: LateMemCall
  loc_BF9E83: FFreeStr var_C0 = ""
  loc_BF9E8A: FFreeVar var_9C = ""
  loc_BF9E91: LitI4 1
  loc_BF9E96: LitI4 1
  loc_BF9E9B: LitVarStr var_BC, "###,###,###,###,##0"
  loc_BF9EA0: FStVarCopyObj var_9C
  loc_BF9EA3: FLdRfVar var_9C
  loc_BF9EA6: FMemLdRf 0
  loc_BF9EAB: CVarRef
  loc_BF9EB0: ImpAdCallI2 Format$(, )
  loc_BF9EB5: FStStr var_C4
  loc_BF9EB8: LitI4 0
  loc_BF9EBD: LitI4 0
  loc_BF9EC2: LitI2_Byte 0
  loc_BF9EC4: LitStr "right"
  loc_BF9EC7: FLdZeroAd var_C4
  loc_BF9ECA: FStStrNoPop var_C0
  loc_BF9ECD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9ED2: CVarStr var_E8
  loc_BF9ED5: PopAdLdVar
  loc_BF9ED6: FLdPr Me
  loc_BF9ED9: MemLdRfVar from_stack_1.htmFile
  loc_BF9EDC: LdPrVar
  loc_BF9EDE: LateMemCall
  loc_BF9EE4: FFreeStr var_C0 = ""
  loc_BF9EEB: FFreeVar var_9C = ""
  loc_BF9EF2: LitI4 0
  loc_BF9EF7: LitI4 0
  loc_BF9EFC: LitI2_Byte 0
  loc_BF9EFE: LitStr "right"
  loc_BF9F01: FMemLdR4 var_150(24)
  loc_BF9F06: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9F0B: CVarStr var_9C
  loc_BF9F0E: PopAdLdVar
  loc_BF9F0F: FLdPr Me
  loc_BF9F12: MemLdRfVar from_stack_1.htmFile
  loc_BF9F15: LdPrVar
  loc_BF9F17: LateMemCall
  loc_BF9F1D: FFree1Var var_9C = ""
  loc_BF9F20: LitI4 0
  loc_BF9F25: LitI4 0
  loc_BF9F2A: LitI2_Byte 0
  loc_BF9F2C: LitStr "right"
  loc_BF9F2F: FMemLdR4 var_150(28)
  loc_BF9F34: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9F39: CVarStr var_9C
  loc_BF9F3C: PopAdLdVar
  loc_BF9F3D: FLdPr Me
  loc_BF9F40: MemLdRfVar from_stack_1.htmFile
  loc_BF9F43: LdPrVar
  loc_BF9F45: LateMemCall
  loc_BF9F4B: FFree1Var var_9C = ""
  loc_BF9F4E: LitI4 0
  loc_BF9F53: LitI4 0
  loc_BF9F58: LitI2_Byte 0
  loc_BF9F5A: LitStr "right"
  loc_BF9F5D: FMemLdR4 var_150(32)
  loc_BF9F62: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9F67: CVarStr var_9C
  loc_BF9F6A: PopAdLdVar
  loc_BF9F6B: FLdPr Me
  loc_BF9F6E: MemLdRfVar from_stack_1.htmFile
  loc_BF9F71: LdPrVar
  loc_BF9F73: LateMemCall
  loc_BF9F79: FFree1Var var_9C = ""
  loc_BF9F7C: LitI4 0
  loc_BF9F81: LitI4 0
  loc_BF9F86: LitI2_Byte 0
  loc_BF9F88: LitStr "right"
  loc_BF9F8B: FMemLdR4 var_150(36)
  loc_BF9F90: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9F95: CVarStr var_9C
  loc_BF9F98: PopAdLdVar
  loc_BF9F99: FLdPr Me
  loc_BF9F9C: MemLdRfVar from_stack_1.htmFile
  loc_BF9F9F: LdPrVar
  loc_BF9FA1: LateMemCall
  loc_BF9FA7: FFree1Var var_9C = ""
  loc_BF9FAA: LitStr "Municipalidad de Guaymallén"
  loc_BF9FAD: LitStr "Municipalidad de Tupungato"
  loc_BF9FB0: EqStr
  loc_BF9FB2: FLdRfVar var_C0
  loc_BF9FB5: FLdPr Me
  loc_BF9FB8: VCallAd Control_ID_cboTrimestre
  loc_BF9FBB: FStAdFunc var_88
  loc_BF9FBE: FLdPr var_88
  loc_BF9FC1:  = Me.Text
  loc_BF9FC6: ILdRf var_C0
  loc_BF9FC9: LitStr "Cuarto"
  loc_BF9FCC: NeStr
  loc_BF9FCE: AndI4
  loc_BF9FCF: FFree1Str var_C0
  loc_BF9FD2: FFree1Ad var_88
  loc_BF9FD5: BranchF loc_BFA007
  loc_BF9FD8: LitI4 0
  loc_BF9FDD: LitI4 0
  loc_BF9FE2: LitI2_Byte 0
  loc_BF9FE4: LitStr "right"
  loc_BF9FE7: LitStr "&nbsp;"
  loc_BF9FEA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BF9FEF: CVarStr var_9C
  loc_BF9FF2: PopAdLdVar
  loc_BF9FF3: FLdPr Me
  loc_BF9FF6: MemLdRfVar from_stack_1.htmFile
  loc_BF9FF9: LdPrVar
  loc_BF9FFB: LateMemCall
  loc_BFA001: FFree1Var var_9C = ""
  loc_BFA004: Branch loc_BFA035
  loc_BFA007: LitI4 0
  loc_BFA00C: LitI4 0
  loc_BFA011: LitI2_Byte 0
  loc_BFA013: LitStr "right"
  loc_BFA016: FMemLdR4 var_150(40)
  loc_BFA01B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BFA020: CVarStr var_9C
  loc_BFA023: PopAdLdVar
  loc_BFA024: FLdPr Me
  loc_BFA027: MemLdRfVar from_stack_1.htmFile
  loc_BFA02A: LdPrVar
  loc_BFA02C: LateMemCall
  loc_BFA032: FFree1Var var_9C = ""
  loc_BFA035: LitI4 0
  loc_BFA03A: LitI4 0
  loc_BFA03F: LitI2_Byte 0
  loc_BFA041: LitStr "right"
  loc_BFA044: FMemLdR4 var_150(44)
  loc_BFA049: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BFA04E: CVarStr var_9C
  loc_BFA051: PopAdLdVar
  loc_BFA052: FLdPr Me
  loc_BFA055: MemLdRfVar from_stack_1.htmFile
  loc_BFA058: LdPrVar
  loc_BFA05A: LateMemCall
  loc_BFA060: FFree1Var var_9C = ""
  loc_BFA063: LitStr "Municipalidad de Guaymallén"
  loc_BFA066: LitStr "Municipalidad de Tupungato"
  loc_BFA069: EqStr
  loc_BFA06B: FLdRfVar var_C0
  loc_BFA06E: FLdPr Me
  loc_BFA071: VCallAd Control_ID_cboTrimestre
  loc_BFA074: FStAdFunc var_88
  loc_BFA077: FLdPr var_88
  loc_BFA07A:  = Me.Text
  loc_BFA07F: ILdRf var_C0
  loc_BFA082: LitStr "Cuarto"
  loc_BFA085: NeStr
  loc_BFA087: AndI4
  loc_BFA088: FFree1Str var_C0
  loc_BFA08B: FFree1Ad var_88
  loc_BFA08E: BranchF loc_BFA0C0
  loc_BFA091: LitI4 0
  loc_BFA096: LitI4 0
  loc_BFA09B: LitI2_Byte 0
  loc_BFA09D: LitStr "right"
  loc_BFA0A0: LitStr "&nbsp;"
  loc_BFA0A3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BFA0A8: CVarStr var_9C
  loc_BFA0AB: PopAdLdVar
  loc_BFA0AC: FLdPr Me
  loc_BFA0AF: MemLdRfVar from_stack_1.htmFile
  loc_BFA0B2: LdPrVar
  loc_BFA0B4: LateMemCall
  loc_BFA0BA: FFree1Var var_9C = ""
  loc_BFA0BD: Branch loc_BFA0EE
  loc_BFA0C0: LitI4 0
  loc_BFA0C5: LitI4 0
  loc_BFA0CA: LitI2_Byte 0
  loc_BFA0CC: LitStr "right"
  loc_BFA0CF: FMemLdR4 var_150(48)
  loc_BFA0D4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_BFA0D9: CVarStr var_9C
  loc_BFA0DC: PopAdLdVar
  loc_BFA0DD: FLdPr Me
  loc_BFA0E0: MemLdRfVar from_stack_1.htmFile
  loc_BFA0E3: LdPrVar
  loc_BFA0E5: LateMemCall
  loc_BFA0EB: FFree1Var var_9C = ""
  loc_BFA0EE: LitVarStr var_AC, "     </tr>"
  loc_BFA0F3: PopAdLdVar
  loc_BFA0F4: FLdPr Me
  loc_BFA0F7: MemLdRfVar from_stack_1.htmFile
  loc_BFA0FA: LdPrVar
  loc_BFA0FC: LateMemCall
  loc_BFA102: LitI4 0
  loc_BFA107: FStR4 var_150
  loc_BFA10A: AryUnlock
  loc_BFA10D: Call Proc_161_27_9ECD74()
  loc_BFA112: FLdPr Me
  loc_BFA115: MemLdRfVar from_stack_1.htmFile
  loc_BFA118: LdPrVar
  loc_BFA11A: LateMemCall
  loc_BFA120: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_BFA125: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'A8A308
  'Data Table: 480118
  loc_A89ED4: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A89ED9: FStStrNoPop var_88
  loc_A89EDC: LitStr "\Acuerdo 3949\"
  loc_A89EDF: ConcatStr
  loc_A89EE0: FStStrNoPop var_94
  loc_A89EE3: FLdRfVar var_90
  loc_A89EE6: FLdPr Me
  loc_A89EE9: VCallAd Control_ID_cboPeriodo
  loc_A89EEC: FStAdFunc var_8C
  loc_A89EEF: FLdPr var_8C
  loc_A89EF2:  = Me.Text
  loc_A89EF7: ILdRf var_90
  loc_A89EFA: ConcatStr
  loc_A89EFB: FStStrNoPop var_98
  loc_A89EFE: LitStr "\Trimestre "
  loc_A89F01: ConcatStr
  loc_A89F02: FStStrNoPop var_AC
  loc_A89F05: FLdRfVar var_A8
  loc_A89F08: FLdRfVar var_9E
  loc_A89F0B: FLdPr Me
  loc_A89F0E: VCallAd Control_ID_cboTrimestre
  loc_A89F11: FStAdFunc var_9C
  loc_A89F14: FLdPr var_9C
  loc_A89F17:  = Me.ListIndex
  loc_A89F1C: FLdI2 var_9E
  loc_A89F1F: FLdPr Me
  loc_A89F22: VCallAd Control_ID_cboTrimestre
  loc_A89F25: FStAdFunc var_A4
  loc_A89F28: FLdPr var_A4
  loc_A89F2B:  = Me.ItemData
  loc_A89F30: ILdRf var_A8
  loc_A89F33: CStrI4
  loc_A89F35: FStStrNoPop var_B0
  loc_A89F38: ConcatStr
  loc_A89F39: FStStrNoPop var_B4
  loc_A89F3C: LitStr "\ejeprecreacu.txt"
  loc_A89F3F: ConcatStr
  loc_A89F40: ImpAdStStr MemVar_C3D05C
  loc_A89F44: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_A89F55: FFreeAd var_8C = "": var_9C = ""
  loc_A89F5E: ImpAdLdI4 MemVar_C3D05C
  loc_A89F61: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_A89F66: FLdRfVar var_8C
  loc_A89F69: LitI2_Byte 0
  loc_A89F6B: LitI2_Byte &HFF
  loc_A89F6D: ImpAdLdI4 MemVar_C3D05C
  loc_A89F70: FLdPr Me
  loc_A89F73: MemLdRfVar from_stack_1.global_80
  loc_A89F76: NewIfNullPr IFileSystem3
  loc_A89F79: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A89F7E: ILdRf var_8C
  loc_A89F81: FLdPr Me
  loc_A89F84: MemStVarAd
  loc_A89F88: FFree1Ad var_8C
  loc_A89F8B: LitVarStr var_C8, "Ejercicio|Trimestre|Nomenclador|Partida|PartidaDsc|CreAutOri|ModAcuFinAum|ModAcuFinDis|CreAutDefFin|ComCon|Devengado|ManPag|Pagado|PasivosSinOP|SalNoUti|PasivosConOP"
  loc_A89F90: PopAdLdVar
  loc_A89F91: FLdPr Me
  loc_A89F94: MemLdRfVar from_stack_1.global_84
  loc_A89F97: LdPrVar
  loc_A89F99: LateMemCall
  loc_A89F9F: LitI2_Byte 1
  loc_A89FA1: FLdPr Me
  loc_A89FA4: MemLdRfVar from_stack_1.global_104
  loc_A89FA7: FLdPr Me
  loc_A89FAA: MemLdStr global_100
  loc_A89FAD: LitI2_Byte 1
  loc_A89FAF: FnUBound
  loc_A89FB1: CI2I4
  loc_A89FB2: ForI2 var_DC
  loc_A89FB8: LitI2_Byte 1
  loc_A89FBA: FLdPr Me
  loc_A89FBD: MemLdRfVar from_stack_1.global_106
  loc_A89FC0: FLdPr Me
  loc_A89FC3: MemLdI2 global_104
  loc_A89FC6: CI4UI1
  loc_A89FC7: FLdPr Me
  loc_A89FCA: MemLdStr global_100
  loc_A89FCD: Ary1LdPr
  loc_A89FCE: MemLdStr global_8
  loc_A89FD1: LitI2_Byte 1
  loc_A89FD3: FnUBound
  loc_A89FD5: CI2I4
  loc_A89FD6: ForI2 var_E0
  loc_A89FDC: LitI2_Byte 1
  loc_A89FDE: FLdPr Me
  loc_A89FE1: MemLdRfVar from_stack_1.global_108
  loc_A89FE4: FLdPr Me
  loc_A89FE7: MemLdI2 global_106
  loc_A89FEA: CI4UI1
  loc_A89FEB: FLdPr Me
  loc_A89FEE: MemLdI2 global_104
  loc_A89FF1: CI4UI1
  loc_A89FF2: FLdPr Me
  loc_A89FF5: MemLdStr global_100
  loc_A89FF8: Ary1LdPr
  loc_A89FF9: MemLdStr global_8
  loc_A89FFC: Ary1LdPr
  loc_A89FFD: MemLdStr htmFile
  loc_A8A000: LitI2_Byte 1
  loc_A8A002: FnUBound
  loc_A8A004: CI2I4
  loc_A8A005: ForI2 var_E4
  loc_A8A00B: LitI2_Byte 1
  loc_A8A00D: FLdPr Me
  loc_A8A010: MemLdRfVar from_stack_1.global_110
  loc_A8A013: FLdPr Me
  loc_A8A016: MemLdI2 global_108
  loc_A8A019: CI4UI1
  loc_A8A01A: FLdPr Me
  loc_A8A01D: MemLdI2 global_106
  loc_A8A020: CI4UI1
  loc_A8A021: FLdPr Me
  loc_A8A024: MemLdI2 global_104
  loc_A8A027: CI4UI1
  loc_A8A028: FLdPr Me
  loc_A8A02B: MemLdStr global_100
  loc_A8A02E: Ary1LdPr
  loc_A8A02F: MemLdStr global_8
  loc_A8A032: Ary1LdPr
  loc_A8A033: MemLdStr htmFile
  loc_A8A036: Ary1LdPr
  loc_A8A037: MemLdStr htmFile
  loc_A8A03A: LitI2_Byte 1
  loc_A8A03C: FnUBound
  loc_A8A03E: CI2I4
  loc_A8A03F: ForI2 var_E8
  loc_A8A045: FLdRfVar var_88
  loc_A8A048: FLdPr Me
  loc_A8A04B: VCallAd Control_ID_cboPeriodo
  loc_A8A04E: FStAdFunc var_8C
  loc_A8A051: FLdPr var_8C
  loc_A8A054:  = Me.Text
  loc_A8A059: ILdRf var_88
  loc_A8A05C: LitStr "|"
  loc_A8A05F: ConcatStr
  loc_A8A060: FStStrNoPop var_90
  loc_A8A063: FLdRfVar var_A8
  loc_A8A066: FLdRfVar var_9E
  loc_A8A069: FLdPr Me
  loc_A8A06C: VCallAd Control_ID_cboTrimestre
  loc_A8A06F: FStAdFunc var_9C
  loc_A8A072: FLdPr var_9C
  loc_A8A075:  = Me.ListIndex
  loc_A8A07A: FLdI2 var_9E
  loc_A8A07D: FLdPr Me
  loc_A8A080: VCallAd Control_ID_cboTrimestre
  loc_A8A083: FStAdFunc var_A4
  loc_A8A086: FLdPr var_A4
  loc_A8A089:  = Me.ItemData
  loc_A8A08E: ILdRf var_A8
  loc_A8A091: CStrI4
  loc_A8A093: FStStrNoPop var_94
  loc_A8A096: ConcatStr
  loc_A8A097: FStStrNoPop var_98
  loc_A8A09A: LitStr "|"
  loc_A8A09D: ConcatStr
  loc_A8A09E: FStStrNoPop var_AC
  loc_A8A0A1: LitStr "060204"
  loc_A8A0A4: ConcatStr
  loc_A8A0A5: FStStr var_B8
  loc_A8A0A8: FFreeStr var_88 = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8A0B5: FFreeAd var_8C = "": var_9C = ""
  loc_A8A0BE: FLdPr Me
  loc_A8A0C1: MemLdI2 global_110
  loc_A8A0C4: CI4UI1
  loc_A8A0C5: FLdPr Me
  loc_A8A0C8: MemLdI2 global_108
  loc_A8A0CB: CI4UI1
  loc_A8A0CC: FLdPr Me
  loc_A8A0CF: MemLdI2 global_106
  loc_A8A0D2: CI4UI1
  loc_A8A0D3: FLdPr Me
  loc_A8A0D6: MemLdI2 global_104
  loc_A8A0D9: CI4UI1
  loc_A8A0DA: FLdPr Me
  loc_A8A0DD: MemLdStr global_100
  loc_A8A0E0: AryLock
  loc_A8A0E3: Ary1LdPr
  loc_A8A0E4: MemLdStr global_8
  loc_A8A0E7: AryLock
  loc_A8A0EA: Ary1LdPr
  loc_A8A0EB: MemLdStr htmFile
  loc_A8A0EE: AryLock
  loc_A8A0F1: Ary1LdPr
  loc_A8A0F2: MemLdStr htmFile
  loc_A8A0F5: AryLock
  loc_A8A0F8: Ary1LdPr
  loc_A8A0F9: MemLdRfVar from_stack_1.global_0
  loc_A8A0FC: FStR4 var_FC
  loc_A8A0FF: ILdRf var_B8
  loc_A8A102: LitStr "|"
  loc_A8A105: ConcatStr
  loc_A8A106: FStStrNoPop var_88
  loc_A8A109: FMemLdR4 var_FC(0)
  loc_A8A10E: ConcatStr
  loc_A8A10F: FStStr var_B8
  loc_A8A112: FFree1Str var_88
  loc_A8A115: ILdRf var_B8
  loc_A8A118: LitStr "|"
  loc_A8A11B: ConcatStr
  loc_A8A11C: FStStrNoPop var_88
  loc_A8A11F: FMemLdR4 var_FC(4)
  loc_A8A124: ConcatStr
  loc_A8A125: FStStr var_B8
  loc_A8A128: FFree1Str var_88
  loc_A8A12B: ILdRf var_B8
  loc_A8A12E: LitStr "|"
  loc_A8A131: ConcatStr
  loc_A8A132: FStStrNoPop var_88
  loc_A8A135: FMemLdR4 var_FC(8)
  loc_A8A13A: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A13F: FStStrNoPop var_90
  loc_A8A142: ConcatStr
  loc_A8A143: FStStr var_B8
  loc_A8A146: FFreeStr var_88 = ""
  loc_A8A14D: ILdRf var_B8
  loc_A8A150: LitStr "|"
  loc_A8A153: ConcatStr
  loc_A8A154: FStStrNoPop var_88
  loc_A8A157: FMemLdR4 var_FC(12)
  loc_A8A15C: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A161: FStStrNoPop var_90
  loc_A8A164: ConcatStr
  loc_A8A165: FStStr var_B8
  loc_A8A168: FFreeStr var_88 = ""
  loc_A8A16F: ILdRf var_B8
  loc_A8A172: LitStr "|"
  loc_A8A175: ConcatStr
  loc_A8A176: FStStrNoPop var_88
  loc_A8A179: FMemLdR4 var_FC(16)
  loc_A8A17E: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A183: FStStrNoPop var_90
  loc_A8A186: ConcatStr
  loc_A8A187: FStStr var_B8
  loc_A8A18A: FFreeStr var_88 = ""
  loc_A8A191: ILdRf var_B8
  loc_A8A194: LitStr "|"
  loc_A8A197: ConcatStr
  loc_A8A198: FStStrNoPop var_88
  loc_A8A19B: FMemLdR4 var_FC(20)
  loc_A8A1A0: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A1A5: FStStrNoPop var_90
  loc_A8A1A8: ConcatStr
  loc_A8A1A9: FStStr var_B8
  loc_A8A1AC: FFreeStr var_88 = ""
  loc_A8A1B3: ILdRf var_B8
  loc_A8A1B6: LitStr "|"
  loc_A8A1B9: ConcatStr
  loc_A8A1BA: FStStrNoPop var_88
  loc_A8A1BD: FMemLdR4 var_FC(24)
  loc_A8A1C2: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A1C7: FStStrNoPop var_90
  loc_A8A1CA: ConcatStr
  loc_A8A1CB: FStStr var_B8
  loc_A8A1CE: FFreeStr var_88 = ""
  loc_A8A1D5: ILdRf var_B8
  loc_A8A1D8: LitStr "|"
  loc_A8A1DB: ConcatStr
  loc_A8A1DC: FStStrNoPop var_88
  loc_A8A1DF: FMemLdR4 var_FC(28)
  loc_A8A1E4: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A1E9: FStStrNoPop var_90
  loc_A8A1EC: ConcatStr
  loc_A8A1ED: FStStr var_B8
  loc_A8A1F0: FFreeStr var_88 = ""
  loc_A8A1F7: ILdRf var_B8
  loc_A8A1FA: LitStr "|"
  loc_A8A1FD: ConcatStr
  loc_A8A1FE: FStStrNoPop var_88
  loc_A8A201: FMemLdR4 var_FC(32)
  loc_A8A206: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A20B: FStStrNoPop var_90
  loc_A8A20E: ConcatStr
  loc_A8A20F: FStStr var_B8
  loc_A8A212: FFreeStr var_88 = ""
  loc_A8A219: ILdRf var_B8
  loc_A8A21C: LitStr "|"
  loc_A8A21F: ConcatStr
  loc_A8A220: FStStrNoPop var_88
  loc_A8A223: FMemLdR4 var_FC(36)
  loc_A8A228: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A22D: FStStrNoPop var_90
  loc_A8A230: ConcatStr
  loc_A8A231: FStStr var_B8
  loc_A8A234: FFreeStr var_88 = ""
  loc_A8A23B: ILdRf var_B8
  loc_A8A23E: LitStr "|"
  loc_A8A241: ConcatStr
  loc_A8A242: FStStrNoPop var_88
  loc_A8A245: FMemLdR4 var_FC(40)
  loc_A8A24A: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A24F: FStStrNoPop var_90
  loc_A8A252: ConcatStr
  loc_A8A253: FStStr var_B8
  loc_A8A256: FFreeStr var_88 = ""
  loc_A8A25D: ILdRf var_B8
  loc_A8A260: LitStr "|"
  loc_A8A263: ConcatStr
  loc_A8A264: FStStrNoPop var_88
  loc_A8A267: FMemLdR4 var_FC(44)
  loc_A8A26C: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A271: FStStrNoPop var_90
  loc_A8A274: ConcatStr
  loc_A8A275: FStStr var_B8
  loc_A8A278: FFreeStr var_88 = ""
  loc_A8A27F: ILdRf var_B8
  loc_A8A282: LitStr "|"
  loc_A8A285: ConcatStr
  loc_A8A286: FStStrNoPop var_88
  loc_A8A289: FMemLdR4 var_FC(48)
  loc_A8A28E: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A8A293: FStStrNoPop var_90
  loc_A8A296: ConcatStr
  loc_A8A297: FStStr var_B8
  loc_A8A29A: FFreeStr var_88 = ""
  loc_A8A2A1: LitI4 0
  loc_A8A2A6: FStR4 var_FC
  loc_A8A2A9: AryUnlock
  loc_A8A2AC: AryUnlock
  loc_A8A2AF: AryUnlock
  loc_A8A2B2: AryUnlock
  loc_A8A2B5: FLdRfVar var_B8
  loc_A8A2B8: CDargRef
  loc_A8A2BC: FLdPr Me
  loc_A8A2BF: MemLdRfVar from_stack_1.global_84
  loc_A8A2C2: LdPrVar
  loc_A8A2C4: LateMemCall
  loc_A8A2CA: FLdPr Me
  loc_A8A2CD: MemLdRfVar from_stack_1.global_110
  loc_A8A2D0: NextI2 var_E8, loc_A8A045
  loc_A8A2D5: FLdPr Me
  loc_A8A2D8: MemLdRfVar from_stack_1.global_108
  loc_A8A2DB: NextI2 var_E4, loc_A8A00B
  loc_A8A2E0: FLdPr Me
  loc_A8A2E3: MemLdRfVar from_stack_1.global_106
  loc_A8A2E6: NextI2 var_E0, loc_A89FDC
  loc_A8A2EB: FLdPr Me
  loc_A8A2EE: MemLdRfVar from_stack_1.global_104
  loc_A8A2F1: NextI2 var_DC, loc_A89FB8
  loc_A8A2F6: FLdPr Me
  loc_A8A2F9: MemLdRfVar from_stack_1.global_84
  loc_A8A2FC: LdPrVar
  loc_A8A2FE: LateMemCall
  loc_A8A304: ExitProcHresult
  loc_A8A305: MemLdRfVar from_stack_1.htmFile
End Sub

Private Function Proc_161_19_9E0C44() '9E0C44
  'Data Table: 480118
  loc_9E0B3C: FLdPr Me
  loc_9E0B3F: MemLdI2 global_104
  loc_9E0B42: LitI2_Byte 1
  loc_9E0B44: AddI2
  loc_9E0B45: FLdPr Me
  loc_9E0B48: MemStI2 global_104
  loc_9E0B4B: LitI2_Byte 0
  loc_9E0B4D: FLdPr Me
  loc_9E0B50: MemStI2 global_106
  loc_9E0B53: LitI4 1
  loc_9E0B58: FLdPr Me
  loc_9E0B5B: MemLdI2 global_104
  loc_9E0B5E: CI4UI1
  loc_9E0B5F: FLdPr Me
  loc_9E0B62: MemLdRfVar from_stack_1.global_100
  loc_9E0B65: RedimPreserve
  loc_9E0B6F: FLdRfVar var_A0
  loc_9E0B72: LitVarStr var_9C, "CodiOrga"
  loc_9E0B77: PopAdLdVar
  loc_9E0B78: FLdRfVar var_8C
  loc_9E0B7B: FLdRfVar var_88
  loc_9E0B7E: FLdPr Me
  loc_9E0B81: MemLdRfVar from_stack_1.global_72
  loc_9E0B84: NewIfNullPr clsimputacion
  loc_9E0B87: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0B8C: FLdPr var_88
  loc_9E0B8F:  = Me.Fields
  loc_9E0B94: FLdPr var_8C
  loc_9E0B97: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0B9C: LitI2_Byte 0
  loc_9E0B9E: LitVar_Missing var_D4
  loc_9E0BA1: LitI2_Byte 0
  loc_9E0BA3: FLdZeroAd var_A0
  loc_9E0BA6: CVarAd
  loc_9E0BAA: PopAdLdVar
  loc_9E0BAB: FLdPr Me
  loc_9E0BAE: MemLdI2 global_104
  loc_9E0BB1: CI4UI1
  loc_9E0BB2: FLdPr Me
  loc_9E0BB5: MemLdStr global_100
  loc_9E0BB8: AryLock
  loc_9E0BBB: Ary1LdPr
  loc_9E0BBC: MemLdRfVar from_stack_1.global_0
  loc_9E0BBF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0BC4: AryUnlock
  loc_9E0BC7: FFreeAd var_88 = ""
  loc_9E0BCE: FFreeVar var_B4 = ""
  loc_9E0BD5: FLdRfVar var_A0
  loc_9E0BD8: LitVarStr var_9C, "DetaOrga"
  loc_9E0BDD: PopAdLdVar
  loc_9E0BDE: FLdRfVar var_8C
  loc_9E0BE1: FLdRfVar var_88
  loc_9E0BE4: FLdPr Me
  loc_9E0BE7: MemLdRfVar from_stack_1.global_72
  loc_9E0BEA: NewIfNullPr clsimputacion
  loc_9E0BED: from_stack_1v = clsimputacion.RsFrmGet()
  loc_9E0BF2: FLdPr var_88
  loc_9E0BF5:  = Me.Fields
  loc_9E0BFA: FLdPr var_8C
  loc_9E0BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_9E0C02: LitI2_Byte 0
  loc_9E0C04: LitVar_Missing var_D4
  loc_9E0C07: LitI2_Byte 0
  loc_9E0C09: FLdZeroAd var_A0
  loc_9E0C0C: CVarAd
  loc_9E0C10: PopAdLdVar
  loc_9E0C11: FLdPr Me
  loc_9E0C14: MemLdI2 global_104
  loc_9E0C17: CI4UI1
  loc_9E0C18: FLdPr Me
  loc_9E0C1B: MemLdStr global_100
  loc_9E0C1E: AryLock
  loc_9E0C21: Ary1LdPr
  loc_9E0C22: MemLdRfVar from_stack_1.global_4
  loc_9E0C25: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9E0C2A: AryUnlock
  loc_9E0C2D: FFreeAd var_88 = ""
  loc_9E0C34: FFreeVar var_B4 = ""
  loc_9E0C3B: Call Proc_161_20_A27724()
  loc_9E0C40: ExitProcHresult
  loc_9E0C43: Ary1LdRf
End Function

Private Function Proc_161_20_A27724() 'A27724
  'Data Table: 480118
  loc_A27570: FLdPr Me
  loc_A27573: MemLdI2 global_106
  loc_A27576: LitI2_Byte 1
  loc_A27578: AddI2
  loc_A27579: FLdPr Me
  loc_A2757C: MemStI2 global_106
  loc_A2757F: LitI2_Byte 0
  loc_A27581: FLdPr Me
  loc_A27584: MemStI2 global_108
  loc_A27587: LitI4 1
  loc_A2758C: FLdPr Me
  loc_A2758F: MemLdI2 global_106
  loc_A27592: CI4UI1
  loc_A27593: FLdPr Me
  loc_A27596: MemLdI2 global_104
  loc_A27599: CI4UI1
  loc_A2759A: FLdPr Me
  loc_A2759D: MemLdStr global_100
  loc_A275A0: Ary1LdPr
  loc_A275A1: MemLdRfVar from_stack_1.global_8
  loc_A275A4: RedimPreserve
  loc_A275AE: FLdRfVar var_B0
  loc_A275B1: FLdRfVar var_A0
  loc_A275B4: LitVarStr var_9C, "CodiPart"
  loc_A275B9: PopAdLdVar
  loc_A275BA: FLdRfVar var_8C
  loc_A275BD: FLdRfVar var_88
  loc_A275C0: FLdPr Me
  loc_A275C3: MemLdRfVar from_stack_1.global_72
  loc_A275C6: NewIfNullPr clsimputacion
  loc_A275C9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A275CE: FLdPr var_88
  loc_A275D1:  = Me.Fields
  loc_A275D6: FLdPr var_8C
  loc_A275D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A275DE: FLdPr var_A0
  loc_A275E1:  = Me.Value
  loc_A275E6: LitI4 1
  loc_A275EB: FLdRfVar var_B0
  loc_A275EE: CStrVarTmp
  loc_A275EF: FStStrNoPop var_B4
  loc_A275F2: ImpAdCallI2 Left$(, )
  loc_A275F7: FStStr var_F4
  loc_A275FA: LitI2_Byte 0
  loc_A275FC: LitVar_Missing var_F0
  loc_A275FF: LitI2_Byte 0
  loc_A27601: FLdZeroAd var_F4
  loc_A27604: FStStrNoPop var_B8
  loc_A27607: LitStr "0000000"
  loc_A2760A: ConcatStr
  loc_A2760B: CVarStr var_D0
  loc_A2760E: PopAdLdVar
  loc_A2760F: FLdPr Me
  loc_A27612: MemLdI2 global_106
  loc_A27615: CI4UI1
  loc_A27616: FLdPr Me
  loc_A27619: MemLdI2 global_104
  loc_A2761C: CI4UI1
  loc_A2761D: FLdPr Me
  loc_A27620: MemLdStr global_100
  loc_A27623: AryLock
  loc_A27626: Ary1LdPr
  loc_A27627: MemLdStr global_8
  loc_A2762A: AryLock
  loc_A2762D: Ary1LdPr
  loc_A2762E: MemLdRfVar from_stack_1.global_0
  loc_A27631: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A27636: AryUnlock
  loc_A27639: AryUnlock
  loc_A2763C: FFreeStr var_B4 = "": var_B8 = ""
  loc_A27645: FFreeAd var_88 = "": var_8C = ""
  loc_A2764E: FFreeVar var_B0 = "": var_D0 = ""
  loc_A27657: FLdRfVar var_B0
  loc_A2765A: FLdRfVar var_A0
  loc_A2765D: LitVarStr var_9C, "PeriInfo"
  loc_A27662: PopAdLdVar
  loc_A27663: FLdRfVar var_8C
  loc_A27666: FLdRfVar var_88
  loc_A27669: FLdPr Me
  loc_A2766C: MemLdRfVar from_stack_1.global_72
  loc_A2766F: NewIfNullPr clsimputacion
  loc_A27672: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A27677: FLdPr var_88
  loc_A2767A:  = Me.Fields
  loc_A2767F: FLdPr var_8C
  loc_A27682: from_stack_2 = Me.Item(from_stack_1)
  loc_A27687: FLdPr var_A0
  loc_A2768A:  = Me.Value
  loc_A2768F: FLdPr Me
  loc_A27692: MemLdRfVar from_stack_1.global_76
  loc_A27695: NewIfNullRf
  loc_A27699: FLdPr Me
  loc_A2769C: MemLdI2 global_106
  loc_A2769F: CI4UI1
  loc_A276A0: FLdPr Me
  loc_A276A3: MemLdI2 global_104
  loc_A276A6: CI4UI1
  loc_A276A7: FLdPr Me
  loc_A276AA: MemLdStr global_100
  loc_A276AD: Ary1LdPr
  loc_A276AE: MemLdStr global_8
  loc_A276B1: Ary1LdPr
  loc_A276B2: MemLdStr global_0
  loc_A276B5: FLdRfVar var_B0
  loc_A276B8: CI2Var
  loc_A276B9: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A276BE: FFreeAd var_88 = "": var_8C = ""
  loc_A276C7: FFree1Var var_B0 = ""
  loc_A276CA: FLdRfVar var_B4
  loc_A276CD: FLdPr Me
  loc_A276D0: MemLdRfVar from_stack_1.global_76
  loc_A276D3: NewIfNullPr tblpartida
  loc_A276D6: from_stack_1v = tblpartida.DetaPartGet()
  loc_A276DB: LitI2_Byte 0
  loc_A276DD: LitVar_Missing var_D0
  loc_A276E0: LitI2_Byte 0
  loc_A276E2: FLdZeroAd var_B4
  loc_A276E5: CVarStr var_B0
  loc_A276E8: PopAdLdVar
  loc_A276E9: FLdPr Me
  loc_A276EC: MemLdI2 global_106
  loc_A276EF: CI4UI1
  loc_A276F0: FLdPr Me
  loc_A276F3: MemLdI2 global_104
  loc_A276F6: CI4UI1
  loc_A276F7: FLdPr Me
  loc_A276FA: MemLdStr global_100
  loc_A276FD: AryLock
  loc_A27700: Ary1LdPr
  loc_A27701: MemLdStr global_8
  loc_A27704: AryLock
  loc_A27707: Ary1LdPr
  loc_A27708: MemLdRfVar from_stack_1.global_4
  loc_A2770B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A27710: AryUnlock
  loc_A27713: AryUnlock
  loc_A27716: FFreeVar var_B0 = ""
  loc_A2771D: Call Proc_161_21_A326E4()
  loc_A27722: ExitProcHresult
End Function

Private Function Proc_161_21_A326E4() 'A326E4
  'Data Table: 480118
  loc_A324F8: FLdPr Me
  loc_A324FB: MemLdI2 global_108
  loc_A324FE: LitI2_Byte 1
  loc_A32500: AddI2
  loc_A32501: FLdPr Me
  loc_A32504: MemStI2 global_108
  loc_A32507: LitI2_Byte 0
  loc_A32509: FLdPr Me
  loc_A3250C: MemStI2 global_110
  loc_A3250F: LitI4 1
  loc_A32514: FLdPr Me
  loc_A32517: MemLdI2 global_108
  loc_A3251A: CI4UI1
  loc_A3251B: FLdPr Me
  loc_A3251E: MemLdI2 global_106
  loc_A32521: CI4UI1
  loc_A32522: FLdPr Me
  loc_A32525: MemLdI2 global_104
  loc_A32528: CI4UI1
  loc_A32529: FLdPr Me
  loc_A3252C: MemLdStr global_100
  loc_A3252F: Ary1LdPr
  loc_A32530: MemLdStr global_8
  loc_A32533: Ary1LdPr
  loc_A32534: MemLdRfVar from_stack_1.htmFile
  loc_A32537: RedimPreserve
  loc_A32541: FLdRfVar var_B0
  loc_A32544: FLdRfVar var_A0
  loc_A32547: LitVarStr var_9C, "CodiPart"
  loc_A3254C: PopAdLdVar
  loc_A3254D: FLdRfVar var_8C
  loc_A32550: FLdRfVar var_88
  loc_A32553: FLdPr Me
  loc_A32556: MemLdRfVar from_stack_1.global_72
  loc_A32559: NewIfNullPr clsimputacion
  loc_A3255C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A32561: FLdPr var_88
  loc_A32564:  = Me.Fields
  loc_A32569: FLdPr var_8C
  loc_A3256C: from_stack_2 = Me.Item(from_stack_1)
  loc_A32571: FLdPr var_A0
  loc_A32574:  = Me.Value
  loc_A32579: LitI4 2
  loc_A3257E: FLdRfVar var_B0
  loc_A32581: CStrVarTmp
  loc_A32582: FStStrNoPop var_B4
  loc_A32585: ImpAdCallI2 Left$(, )
  loc_A3258A: FStStr var_F8
  loc_A3258D: LitI2_Byte 0
  loc_A3258F: LitVar_Missing var_F4
  loc_A32592: LitI2_Byte 0
  loc_A32594: FLdZeroAd var_F8
  loc_A32597: FStStrNoPop var_B8
  loc_A3259A: LitStr "000000"
  loc_A3259D: ConcatStr
  loc_A3259E: CVarStr var_D4
  loc_A325A1: PopAdLdVar
  loc_A325A2: FLdPr Me
  loc_A325A5: MemLdI2 global_108
  loc_A325A8: CI4UI1
  loc_A325A9: FLdPr Me
  loc_A325AC: MemLdI2 global_106
  loc_A325AF: CI4UI1
  loc_A325B0: FLdPr Me
  loc_A325B3: MemLdI2 global_104
  loc_A325B6: CI4UI1
  loc_A325B7: FLdPr Me
  loc_A325BA: MemLdStr global_100
  loc_A325BD: AryLock
  loc_A325C0: Ary1LdPr
  loc_A325C1: MemLdStr global_8
  loc_A325C4: AryLock
  loc_A325C7: Ary1LdPr
  loc_A325C8: MemLdStr htmFile
  loc_A325CB: AryLock
  loc_A325CE: Ary1LdPr
  loc_A325CF: MemLdRfVar from_stack_1.global_0
  loc_A325D2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A325D7: AryUnlock
  loc_A325DA: AryUnlock
  loc_A325DD: AryUnlock
  loc_A325E0: FFreeStr var_B4 = "": var_B8 = ""
  loc_A325E9: FFreeAd var_88 = "": var_8C = ""
  loc_A325F2: FFreeVar var_B0 = "": var_D4 = ""
  loc_A325FB: FLdRfVar var_B0
  loc_A325FE: FLdRfVar var_A0
  loc_A32601: LitVarStr var_9C, "PeriInfo"
  loc_A32606: PopAdLdVar
  loc_A32607: FLdRfVar var_8C
  loc_A3260A: FLdRfVar var_88
  loc_A3260D: FLdPr Me
  loc_A32610: MemLdRfVar from_stack_1.global_72
  loc_A32613: NewIfNullPr clsimputacion
  loc_A32616: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3261B: FLdPr var_88
  loc_A3261E:  = Me.Fields
  loc_A32623: FLdPr var_8C
  loc_A32626: from_stack_2 = Me.Item(from_stack_1)
  loc_A3262B: FLdPr var_A0
  loc_A3262E:  = Me.Value
  loc_A32633: FLdPr Me
  loc_A32636: MemLdRfVar from_stack_1.global_76
  loc_A32639: NewIfNullRf
  loc_A3263D: FLdPr Me
  loc_A32640: MemLdI2 global_108
  loc_A32643: CI4UI1
  loc_A32644: FLdPr Me
  loc_A32647: MemLdI2 global_106
  loc_A3264A: CI4UI1
  loc_A3264B: FLdPr Me
  loc_A3264E: MemLdI2 global_104
  loc_A32651: CI4UI1
  loc_A32652: FLdPr Me
  loc_A32655: MemLdStr global_100
  loc_A32658: Ary1LdPr
  loc_A32659: MemLdStr global_8
  loc_A3265C: Ary1LdPr
  loc_A3265D: MemLdStr htmFile
  loc_A32660: Ary1LdPr
  loc_A32661: MemLdStr global_0
  loc_A32664: FLdRfVar var_B0
  loc_A32667: CI2Var
  loc_A32668: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A3266D: FFreeAd var_88 = "": var_8C = ""
  loc_A32676: FFree1Var var_B0 = ""
  loc_A32679: FLdRfVar var_B4
  loc_A3267C: FLdPr Me
  loc_A3267F: MemLdRfVar from_stack_1.global_76
  loc_A32682: NewIfNullPr tblpartida
  loc_A32685: from_stack_1v = tblpartida.DetaPartGet()
  loc_A3268A: LitI2_Byte 0
  loc_A3268C: LitVar_Missing var_D4
  loc_A3268F: LitI2_Byte 0
  loc_A32691: FLdZeroAd var_B4
  loc_A32694: CVarStr var_B0
  loc_A32697: PopAdLdVar
  loc_A32698: FLdPr Me
  loc_A3269B: MemLdI2 global_108
  loc_A3269E: CI4UI1
  loc_A3269F: FLdPr Me
  loc_A326A2: MemLdI2 global_106
  loc_A326A5: CI4UI1
  loc_A326A6: FLdPr Me
  loc_A326A9: MemLdI2 global_104
  loc_A326AC: CI4UI1
  loc_A326AD: FLdPr Me
  loc_A326B0: MemLdStr global_100
  loc_A326B3: AryLock
  loc_A326B6: Ary1LdPr
  loc_A326B7: MemLdStr global_8
  loc_A326BA: AryLock
  loc_A326BD: Ary1LdPr
  loc_A326BE: MemLdStr htmFile
  loc_A326C1: AryLock
  loc_A326C4: Ary1LdPr
  loc_A326C5: MemLdRfVar from_stack_1.global_4
  loc_A326C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A326CD: AryUnlock
  loc_A326D0: AryUnlock
  loc_A326D3: AryUnlock
  loc_A326D6: FFreeVar var_B0 = ""
  loc_A326DD: Call Proc_161_22_A5B310()
  loc_A326E2: ExitProcHresult
End Function

Private Function Proc_161_22_A5B310() 'A5B310
  'Data Table: 480118
  loc_A5B038: FLdPr Me
  loc_A5B03B: MemLdI2 global_110
  loc_A5B03E: LitI2_Byte 1
  loc_A5B040: AddI2
  loc_A5B041: FLdPr Me
  loc_A5B044: MemStI2 global_110
  loc_A5B047: LitI2_Byte 0
  loc_A5B049: FLdPr Me
  loc_A5B04C: MemStI2 global_112
  loc_A5B04F: LitI4 1
  loc_A5B054: FLdPr Me
  loc_A5B057: MemLdI2 global_110
  loc_A5B05A: CI4UI1
  loc_A5B05B: FLdPr Me
  loc_A5B05E: MemLdI2 global_108
  loc_A5B061: CI4UI1
  loc_A5B062: FLdPr Me
  loc_A5B065: MemLdI2 global_106
  loc_A5B068: CI4UI1
  loc_A5B069: FLdPr Me
  loc_A5B06C: MemLdI2 global_104
  loc_A5B06F: CI4UI1
  loc_A5B070: FLdPr Me
  loc_A5B073: MemLdStr global_100
  loc_A5B076: Ary1LdPr
  loc_A5B077: MemLdStr global_8
  loc_A5B07A: Ary1LdPr
  loc_A5B07B: MemLdStr htmFile
  loc_A5B07E: Ary1LdPr
  loc_A5B07F: MemLdRfVar from_stack_1.htmFile
  loc_A5B082: RedimPreserve
  loc_A5B08C: FLdRfVar var_B0
  loc_A5B08F: FLdRfVar var_A0
  loc_A5B092: LitVarStr var_9C, "CodiPart"
  loc_A5B097: PopAdLdVar
  loc_A5B098: FLdRfVar var_8C
  loc_A5B09B: FLdRfVar var_88
  loc_A5B09E: FLdPr Me
  loc_A5B0A1: MemLdRfVar from_stack_1.global_72
  loc_A5B0A4: NewIfNullPr clsimputacion
  loc_A5B0A7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5B0AC: FLdPr var_88
  loc_A5B0AF:  = Me.Fields
  loc_A5B0B4: FLdPr var_8C
  loc_A5B0B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A5B0BC: FLdPr var_A0
  loc_A5B0BF:  = Me.Value
  loc_A5B0C4: LitI4 3
  loc_A5B0C9: FLdRfVar var_B0
  loc_A5B0CC: CStrVarTmp
  loc_A5B0CD: FStStrNoPop var_B4
  loc_A5B0D0: ImpAdCallI2 Left$(, )
  loc_A5B0D5: FStStr var_FC
  loc_A5B0D8: LitI2_Byte 0
  loc_A5B0DA: LitVar_Missing var_F8
  loc_A5B0DD: LitI2_Byte 0
  loc_A5B0DF: FLdZeroAd var_FC
  loc_A5B0E2: FStStrNoPop var_B8
  loc_A5B0E5: LitStr "00000"
  loc_A5B0E8: ConcatStr
  loc_A5B0E9: CVarStr var_D8
  loc_A5B0EC: PopAdLdVar
  loc_A5B0ED: FLdPr Me
  loc_A5B0F0: MemLdI2 global_110
  loc_A5B0F3: CI4UI1
  loc_A5B0F4: FLdPr Me
  loc_A5B0F7: MemLdI2 global_108
  loc_A5B0FA: CI4UI1
  loc_A5B0FB: FLdPr Me
  loc_A5B0FE: MemLdI2 global_106
  loc_A5B101: CI4UI1
  loc_A5B102: FLdPr Me
  loc_A5B105: MemLdI2 global_104
  loc_A5B108: CI4UI1
  loc_A5B109: FLdPr Me
  loc_A5B10C: MemLdStr global_100
  loc_A5B10F: AryLock
  loc_A5B112: Ary1LdPr
  loc_A5B113: MemLdStr global_8
  loc_A5B116: AryLock
  loc_A5B119: Ary1LdPr
  loc_A5B11A: MemLdStr htmFile
  loc_A5B11D: AryLock
  loc_A5B120: Ary1LdPr
  loc_A5B121: MemLdStr htmFile
  loc_A5B124: AryLock
  loc_A5B127: Ary1LdPr
  loc_A5B128: MemLdRfVar from_stack_1.global_0
  loc_A5B12B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5B130: AryUnlock
  loc_A5B133: AryUnlock
  loc_A5B136: AryUnlock
  loc_A5B139: AryUnlock
  loc_A5B13C: FFreeStr var_B4 = "": var_B8 = ""
  loc_A5B145: FFreeAd var_88 = "": var_8C = ""
  loc_A5B14E: FFreeVar var_B0 = "": var_D8 = ""
  loc_A5B157: FLdRfVar var_B0
  loc_A5B15A: FLdRfVar var_A0
  loc_A5B15D: LitVarStr var_9C, "PeriInfo"
  loc_A5B162: PopAdLdVar
  loc_A5B163: FLdRfVar var_8C
  loc_A5B166: FLdRfVar var_88
  loc_A5B169: FLdPr Me
  loc_A5B16C: MemLdRfVar from_stack_1.global_72
  loc_A5B16F: NewIfNullPr clsimputacion
  loc_A5B172: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5B177: FLdPr var_88
  loc_A5B17A:  = Me.Fields
  loc_A5B17F: FLdPr var_8C
  loc_A5B182: from_stack_2 = Me.Item(from_stack_1)
  loc_A5B187: FLdPr var_A0
  loc_A5B18A:  = Me.Value
  loc_A5B18F: FLdPr Me
  loc_A5B192: MemLdRfVar from_stack_1.global_76
  loc_A5B195: NewIfNullRf
  loc_A5B199: FLdPr Me
  loc_A5B19C: MemLdI2 global_110
  loc_A5B19F: CI4UI1
  loc_A5B1A0: FLdPr Me
  loc_A5B1A3: MemLdI2 global_108
  loc_A5B1A6: CI4UI1
  loc_A5B1A7: FLdPr Me
  loc_A5B1AA: MemLdI2 global_106
  loc_A5B1AD: CI4UI1
  loc_A5B1AE: FLdPr Me
  loc_A5B1B1: MemLdI2 global_104
  loc_A5B1B4: CI4UI1
  loc_A5B1B5: FLdPr Me
  loc_A5B1B8: MemLdStr global_100
  loc_A5B1BB: Ary1LdPr
  loc_A5B1BC: MemLdStr global_8
  loc_A5B1BF: Ary1LdPr
  loc_A5B1C0: MemLdStr htmFile
  loc_A5B1C3: Ary1LdPr
  loc_A5B1C4: MemLdStr htmFile
  loc_A5B1C7: Ary1LdPr
  loc_A5B1C8: MemLdStr global_0
  loc_A5B1CB: FLdRfVar var_B0
  loc_A5B1CE: CI2Var
  loc_A5B1CF: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_A5B1D4: FFreeAd var_88 = "": var_8C = ""
  loc_A5B1DD: FFree1Var var_B0 = ""
  loc_A5B1E0: FLdRfVar var_B4
  loc_A5B1E3: FLdPr Me
  loc_A5B1E6: MemLdRfVar from_stack_1.global_76
  loc_A5B1E9: NewIfNullPr tblpartida
  loc_A5B1EC: from_stack_1v = tblpartida.DetaPartGet()
  loc_A5B1F1: LitI2_Byte 0
  loc_A5B1F3: LitVar_Missing var_D8
  loc_A5B1F6: LitI2_Byte 0
  loc_A5B1F8: FLdZeroAd var_B4
  loc_A5B1FB: CVarStr var_B0
  loc_A5B1FE: PopAdLdVar
  loc_A5B1FF: FLdPr Me
  loc_A5B202: MemLdI2 global_110
  loc_A5B205: CI4UI1
  loc_A5B206: FLdPr Me
  loc_A5B209: MemLdI2 global_108
  loc_A5B20C: CI4UI1
  loc_A5B20D: FLdPr Me
  loc_A5B210: MemLdI2 global_106
  loc_A5B213: CI4UI1
  loc_A5B214: FLdPr Me
  loc_A5B217: MemLdI2 global_104
  loc_A5B21A: CI4UI1
  loc_A5B21B: FLdPr Me
  loc_A5B21E: MemLdStr global_100
  loc_A5B221: AryLock
  loc_A5B224: Ary1LdPr
  loc_A5B225: MemLdStr global_8
  loc_A5B228: AryLock
  loc_A5B22B: Ary1LdPr
  loc_A5B22C: MemLdStr htmFile
  loc_A5B22F: AryLock
  loc_A5B232: Ary1LdPr
  loc_A5B233: MemLdStr htmFile
  loc_A5B236: AryLock
  loc_A5B239: Ary1LdPr
  loc_A5B23A: MemLdRfVar from_stack_1.global_4
  loc_A5B23D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A5B242: AryUnlock
  loc_A5B245: AryUnlock
  loc_A5B248: AryUnlock
  loc_A5B24B: AryUnlock
  loc_A5B24E: FFreeVar var_B0 = ""
  loc_A5B255: FLdPr Me
  loc_A5B258: VCallAd Control_ID_optSintetico
  loc_A5B25B: CVarAd
  loc_A5B25F: CBoolVarNull
  loc_A5B261: FFree1Var var_B0 = ""
  loc_A5B264: BranchF loc_A5B308
  loc_A5B267: FLdPr Me
  loc_A5B26A: MemLdI2 global_108
  loc_A5B26D: CI4UI1
  loc_A5B26E: FLdPr Me
  loc_A5B271: MemLdI2 global_106
  loc_A5B274: CI4UI1
  loc_A5B275: FLdPr Me
  loc_A5B278: MemLdI2 global_104
  loc_A5B27B: CI4UI1
  loc_A5B27C: FLdPr Me
  loc_A5B27F: MemLdStr global_100
  loc_A5B282: AryLock
  loc_A5B285: Ary1LdPr
  loc_A5B286: MemLdStr global_8
  loc_A5B289: AryLock
  loc_A5B28C: Ary1LdPr
  loc_A5B28D: MemLdStr htmFile
  loc_A5B290: AryLock
  loc_A5B293: Ary1LdPr
  loc_A5B294: MemLdRfVar from_stack_1.global_0
  loc_A5B297: FLdPr Me
  loc_A5B29A: MemLdI2 global_110
  loc_A5B29D: CI4UI1
  loc_A5B29E: FLdPr Me
  loc_A5B2A1: MemLdI2 global_108
  loc_A5B2A4: CI4UI1
  loc_A5B2A5: FLdPr Me
  loc_A5B2A8: MemLdI2 global_106
  loc_A5B2AB: CI4UI1
  loc_A5B2AC: FLdPr Me
  loc_A5B2AF: MemLdI2 global_104
  loc_A5B2B2: CI4UI1
  loc_A5B2B3: FLdPr Me
  loc_A5B2B6: MemLdStr global_100
  loc_A5B2B9: AryLock
  loc_A5B2BC: Ary1LdPr
  loc_A5B2BD: MemLdStr global_8
  loc_A5B2C0: AryLock
  loc_A5B2C3: Ary1LdPr
  loc_A5B2C4: MemLdStr htmFile
  loc_A5B2C7: AryLock
  loc_A5B2CA: Ary1LdPr
  loc_A5B2CB: MemLdStr htmFile
  loc_A5B2CE: AryLock
  loc_A5B2D1: Ary1LdPr
  loc_A5B2D2: MemLdRfVar from_stack_1.global_0
  loc_A5B2D5: Call Proc_161_24_AA18E0()
  loc_A5B2DA: AryUnlock
  loc_A5B2DD: AryUnlock
  loc_A5B2E0: AryUnlock
  loc_A5B2E3: AryUnlock
  loc_A5B2E6: AryUnlock
  loc_A5B2E9: AryUnlock
  loc_A5B2EC: AryUnlock
  loc_A5B2EF: LitI4 1
  loc_A5B2F4: PopTmpLdAdStr var_10C
  loc_A5B2F7: FLdPr Me
  loc_A5B2FA: MemLdRfVar from_stack_1.global_72
  loc_A5B2FD: NewIfNullPr clsimputacion
  loc_A5B300: Call clsimputacion.Mover(from_stack_1v)
  loc_A5B305: Branch loc_A5B30D
  loc_A5B308: Call Proc_161_23_A4A3BC()
  loc_A5B30D: ExitProcHresult
  loc_A5B30E: CCyI2
End Function

Private Function Proc_161_23_A4A3BC() 'A4A3BC
  'Data Table: 480118
  loc_A4A150: FLdPr Me
  loc_A4A153: MemLdI2 global_112
  loc_A4A156: LitI2_Byte 1
  loc_A4A158: AddI2
  loc_A4A159: FLdPr Me
  loc_A4A15C: MemStI2 global_112
  loc_A4A15F: LitI4 1
  loc_A4A164: FLdPr Me
  loc_A4A167: MemLdI2 global_112
  loc_A4A16A: CI4UI1
  loc_A4A16B: FLdPr Me
  loc_A4A16E: MemLdI2 global_110
  loc_A4A171: CI4UI1
  loc_A4A172: FLdPr Me
  loc_A4A175: MemLdI2 global_108
  loc_A4A178: CI4UI1
  loc_A4A179: FLdPr Me
  loc_A4A17C: MemLdI2 global_106
  loc_A4A17F: CI4UI1
  loc_A4A180: FLdPr Me
  loc_A4A183: MemLdI2 global_104
  loc_A4A186: CI4UI1
  loc_A4A187: FLdPr Me
  loc_A4A18A: MemLdStr global_100
  loc_A4A18D: Ary1LdPr
  loc_A4A18E: MemLdStr global_8
  loc_A4A191: Ary1LdPr
  loc_A4A192: MemLdStr htmFile
  loc_A4A195: Ary1LdPr
  loc_A4A196: MemLdStr htmFile
  loc_A4A199: Ary1LdPr
  loc_A4A19A: MemLdRfVar from_stack_1.htmFile
  loc_A4A19D: RedimPreserve
  loc_A4A1A7: FLdRfVar var_A0
  loc_A4A1AA: LitVarStr var_9C, "CodiPart"
  loc_A4A1AF: PopAdLdVar
  loc_A4A1B0: FLdRfVar var_8C
  loc_A4A1B3: FLdRfVar var_88
  loc_A4A1B6: FLdPr Me
  loc_A4A1B9: MemLdRfVar from_stack_1.global_72
  loc_A4A1BC: NewIfNullPr clsimputacion
  loc_A4A1BF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4A1C4: FLdPr var_88
  loc_A4A1C7:  = Me.Fields
  loc_A4A1CC: FLdPr var_8C
  loc_A4A1CF: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A1D4: LitI2_Byte 0
  loc_A4A1D6: LitVar_Missing var_E4
  loc_A4A1D9: LitI2_Byte 0
  loc_A4A1DB: FLdZeroAd var_A0
  loc_A4A1DE: CVarAd
  loc_A4A1E2: PopAdLdVar
  loc_A4A1E3: FLdPr Me
  loc_A4A1E6: MemLdI2 global_112
  loc_A4A1E9: CI4UI1
  loc_A4A1EA: FLdPr Me
  loc_A4A1ED: MemLdI2 global_110
  loc_A4A1F0: CI4UI1
  loc_A4A1F1: FLdPr Me
  loc_A4A1F4: MemLdI2 global_108
  loc_A4A1F7: CI4UI1
  loc_A4A1F8: FLdPr Me
  loc_A4A1FB: MemLdI2 global_106
  loc_A4A1FE: CI4UI1
  loc_A4A1FF: FLdPr Me
  loc_A4A202: MemLdI2 global_104
  loc_A4A205: CI4UI1
  loc_A4A206: FLdPr Me
  loc_A4A209: MemLdStr global_100
  loc_A4A20C: AryLock
  loc_A4A20F: Ary1LdPr
  loc_A4A210: MemLdStr global_8
  loc_A4A213: AryLock
  loc_A4A216: Ary1LdPr
  loc_A4A217: MemLdStr htmFile
  loc_A4A21A: AryLock
  loc_A4A21D: Ary1LdPr
  loc_A4A21E: MemLdStr htmFile
  loc_A4A221: AryLock
  loc_A4A224: Ary1LdPr
  loc_A4A225: MemLdStr htmFile
  loc_A4A228: AryLock
  loc_A4A22B: Ary1LdPr
  loc_A4A22C: MemLdRfVar from_stack_1.global_0
  loc_A4A22F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4A234: AryUnlock
  loc_A4A237: AryUnlock
  loc_A4A23A: AryUnlock
  loc_A4A23D: AryUnlock
  loc_A4A240: AryUnlock
  loc_A4A243: FFreeAd var_88 = ""
  loc_A4A24A: FFreeVar var_C4 = ""
  loc_A4A251: FLdRfVar var_A0
  loc_A4A254: LitVarStr var_9C, "DetaPart"
  loc_A4A259: PopAdLdVar
  loc_A4A25A: FLdRfVar var_8C
  loc_A4A25D: FLdRfVar var_88
  loc_A4A260: FLdPr Me
  loc_A4A263: MemLdRfVar from_stack_1.global_72
  loc_A4A266: NewIfNullPr clsimputacion
  loc_A4A269: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A4A26E: FLdPr var_88
  loc_A4A271:  = Me.Fields
  loc_A4A276: FLdPr var_8C
  loc_A4A279: from_stack_2 = Me.Item(from_stack_1)
  loc_A4A27E: LitI2_Byte 0
  loc_A4A280: LitVar_Missing var_E4
  loc_A4A283: LitI2_Byte 0
  loc_A4A285: FLdZeroAd var_A0
  loc_A4A288: CVarAd
  loc_A4A28C: PopAdLdVar
  loc_A4A28D: FLdPr Me
  loc_A4A290: MemLdI2 global_112
  loc_A4A293: CI4UI1
  loc_A4A294: FLdPr Me
  loc_A4A297: MemLdI2 global_110
  loc_A4A29A: CI4UI1
  loc_A4A29B: FLdPr Me
  loc_A4A29E: MemLdI2 global_108
  loc_A4A2A1: CI4UI1
  loc_A4A2A2: FLdPr Me
  loc_A4A2A5: MemLdI2 global_106
  loc_A4A2A8: CI4UI1
  loc_A4A2A9: FLdPr Me
  loc_A4A2AC: MemLdI2 global_104
  loc_A4A2AF: CI4UI1
  loc_A4A2B0: FLdPr Me
  loc_A4A2B3: MemLdStr global_100
  loc_A4A2B6: AryLock
  loc_A4A2B9: Ary1LdPr
  loc_A4A2BA: MemLdStr global_8
  loc_A4A2BD: AryLock
  loc_A4A2C0: Ary1LdPr
  loc_A4A2C1: MemLdStr htmFile
  loc_A4A2C4: AryLock
  loc_A4A2C7: Ary1LdPr
  loc_A4A2C8: MemLdStr htmFile
  loc_A4A2CB: AryLock
  loc_A4A2CE: Ary1LdPr
  loc_A4A2CF: MemLdStr htmFile
  loc_A4A2D2: AryLock
  loc_A4A2D5: Ary1LdPr
  loc_A4A2D6: MemLdRfVar from_stack_1.global_4
  loc_A4A2D9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A4A2DE: AryUnlock
  loc_A4A2E1: AryUnlock
  loc_A4A2E4: AryUnlock
  loc_A4A2E7: AryUnlock
  loc_A4A2EA: AryUnlock
  loc_A4A2ED: FFreeAd var_88 = ""
  loc_A4A2F4: FFreeVar var_C4 = ""
  loc_A4A2FB: FLdPr Me
  loc_A4A2FE: MemLdI2 global_110
  loc_A4A301: CI4UI1
  loc_A4A302: FLdPr Me
  loc_A4A305: MemLdI2 global_108
  loc_A4A308: CI4UI1
  loc_A4A309: FLdPr Me
  loc_A4A30C: MemLdI2 global_106
  loc_A4A30F: CI4UI1
  loc_A4A310: FLdPr Me
  loc_A4A313: MemLdI2 global_104
  loc_A4A316: CI4UI1
  loc_A4A317: FLdPr Me
  loc_A4A31A: MemLdStr global_100
  loc_A4A31D: AryLock
  loc_A4A320: Ary1LdPr
  loc_A4A321: MemLdStr global_8
  loc_A4A324: AryLock
  loc_A4A327: Ary1LdPr
  loc_A4A328: MemLdStr htmFile
  loc_A4A32B: AryLock
  loc_A4A32E: Ary1LdPr
  loc_A4A32F: MemLdStr htmFile
  loc_A4A332: AryLock
  loc_A4A335: Ary1LdPr
  loc_A4A336: MemLdRfVar from_stack_1.global_0
  loc_A4A339: FLdPr Me
  loc_A4A33C: MemLdI2 global_112
  loc_A4A33F: CI4UI1
  loc_A4A340: FLdPr Me
  loc_A4A343: MemLdI2 global_110
  loc_A4A346: CI4UI1
  loc_A4A347: FLdPr Me
  loc_A4A34A: MemLdI2 global_108
  loc_A4A34D: CI4UI1
  loc_A4A34E: FLdPr Me
  loc_A4A351: MemLdI2 global_106
  loc_A4A354: CI4UI1
  loc_A4A355: FLdPr Me
  loc_A4A358: MemLdI2 global_104
  loc_A4A35B: CI4UI1
  loc_A4A35C: FLdPr Me
  loc_A4A35F: MemLdStr global_100
  loc_A4A362: AryLock
  loc_A4A365: Ary1LdPr
  loc_A4A366: MemLdStr global_8
  loc_A4A369: AryLock
  loc_A4A36C: Ary1LdPr
  loc_A4A36D: MemLdStr htmFile
  loc_A4A370: AryLock
  loc_A4A373: Ary1LdPr
  loc_A4A374: MemLdStr htmFile
  loc_A4A377: AryLock
  loc_A4A37A: Ary1LdPr
  loc_A4A37B: MemLdStr htmFile
  loc_A4A37E: AryLock
  loc_A4A381: Ary1LdRf
  loc_A4A382: Call Proc_161_24_AA18E0()
  loc_A4A387: AryUnlock
  loc_A4A38A: AryUnlock
  loc_A4A38D: AryUnlock
  loc_A4A390: AryUnlock
  loc_A4A393: AryUnlock
  loc_A4A396: AryUnlock
  loc_A4A399: AryUnlock
  loc_A4A39C: AryUnlock
  loc_A4A39F: AryUnlock
  loc_A4A3A2: LitI4 1
  loc_A4A3A7: PopTmpLdAdStr var_F8
  loc_A4A3AA: FLdPr Me
  loc_A4A3AD: MemLdRfVar from_stack_1.global_72
  loc_A4A3B0: NewIfNullPr clsimputacion
  loc_A4A3B3: Call clsimputacion.Mover(from_stack_1v)
  loc_A4A3B8: ExitProcHresult
  loc_A4A3B9: ImpAdLdCy MemVar_4AFC88
End Function

Private Function Proc_161_24_AA18E0(arg_C) 'AA18E0
  'Data Table: 480118
  loc_AA1414: FLdPr Me
  loc_AA1417: MemLdRfVar from_stack_1.global_72
  loc_AA141A: NewIfNullAd
  loc_AA141D: FStAd var_88 
  loc_AA1421: FLdRfVar var_A4
  loc_AA1424: LitVarStr var_A0, "AutoAuto"
  loc_AA1429: PopAdLdVar
  loc_AA142A: FLdRfVar var_90
  loc_AA142D: FLdRfVar var_8C
  loc_AA1430: FLdPr var_88
  loc_AA1433: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1438: FLdPr var_8C
  loc_AA143B:  = Me.Fields
  loc_AA1440: FLdPr var_90
  loc_AA1443: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1448: LitI2_Byte 0
  loc_AA144A: FMemLdRf Proc_263_0_9C6454(, )
  loc_AA144F: CVarRef
  loc_AA1454: LitI2_Byte &HFF
  loc_AA1456: FLdZeroAd var_A4
  loc_AA1459: CVarAd
  loc_AA145D: PopAdLdVar
  loc_AA145E: FMemLdRf unk_480125
  loc_AA1463: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA1468: FFreeAd var_8C = ""
  loc_AA146F: FFree1Var var_B4 = ""
  loc_AA1472: FLdRfVar var_A4
  loc_AA1475: LitVarStr var_A0, "AumeAuto"
  loc_AA147A: PopAdLdVar
  loc_AA147B: FLdRfVar var_90
  loc_AA147E: FLdRfVar var_8C
  loc_AA1481: FLdPr var_88
  loc_AA1484: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1489: FLdPr var_8C
  loc_AA148C:  = Me.Fields
  loc_AA1491: FLdPr var_90
  loc_AA1494: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1499: LitI2_Byte 0
  loc_AA149B: FMemLdRf Proc_263_0_9C6454(, , )
  loc_AA14A0: CVarRef
  loc_AA14A5: LitI2_Byte &HFF
  loc_AA14A7: FLdZeroAd var_A4
  loc_AA14AA: CVarAd
  loc_AA14AE: PopAdLdVar
  loc_AA14AF: FMemLdRf unk_480125
  loc_AA14B4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA14B9: FFreeAd var_8C = ""
  loc_AA14C0: FFree1Var var_B4 = ""
  loc_AA14C3: FLdRfVar var_A4
  loc_AA14C6: LitVarStr var_A0, "DismAuto"
  loc_AA14CB: PopAdLdVar
  loc_AA14CC: FLdRfVar var_90
  loc_AA14CF: FLdRfVar var_8C
  loc_AA14D2: FLdPr var_88
  loc_AA14D5: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA14DA: FLdPr var_8C
  loc_AA14DD:  = Me.Fields
  loc_AA14E2: FLdPr var_90
  loc_AA14E5: from_stack_2 = Me.Item(from_stack_1)
  loc_AA14EA: LitI2_Byte 0
  loc_AA14EC: FMemLdRf Proc_263_0_9C6454(, , , )
  loc_AA14F1: CVarRef
  loc_AA14F6: LitI2_Byte &HFF
  loc_AA14F8: FLdZeroAd var_A4
  loc_AA14FB: CVarAd
  loc_AA14FF: PopAdLdVar
  loc_AA1500: FMemLdRf unk_480125
  loc_AA1505: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA150A: FFreeAd var_8C = ""
  loc_AA1511: FFree1Var var_B4 = ""
  loc_AA1514: FLdRfVar var_E0
  loc_AA1517: FLdRfVar var_A4
  loc_AA151A: LitVarStr var_A0, "AutoAuto"
  loc_AA151F: PopAdLdVar
  loc_AA1520: FLdRfVar var_90
  loc_AA1523: FLdRfVar var_8C
  loc_AA1526: FLdPr var_88
  loc_AA1529: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA152E: FLdPr var_8C
  loc_AA1531:  = Me.Fields
  loc_AA1536: FLdPr var_90
  loc_AA1539: from_stack_2 = Me.Item(from_stack_1)
  loc_AA153E: FLdPr var_A4
  loc_AA1541:  = Me.Value
  loc_AA1546: FLdRfVar var_B4
  loc_AA1549: FLdRfVar var_D0
  loc_AA154C: LitVarStr var_C4, "AumeAuto"
  loc_AA1551: PopAdLdVar
  loc_AA1552: FLdRfVar var_CC
  loc_AA1555: FLdRfVar var_C8
  loc_AA1558: FLdPr var_88
  loc_AA155B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1560: FLdPr var_C8
  loc_AA1563:  = Me.Fields
  loc_AA1568: FLdPr var_CC
  loc_AA156B: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1570: FLdPr var_D0
  loc_AA1573:  = Me.Value
  loc_AA1578: FLdRfVar var_11C
  loc_AA157B: FLdRfVar var_10C
  loc_AA157E: LitVarStr var_108, "DismAuto"
  loc_AA1583: PopAdLdVar
  loc_AA1584: FLdRfVar var_F8
  loc_AA1587: FLdRfVar var_F4
  loc_AA158A: FLdPr var_88
  loc_AA158D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1592: FLdPr var_F4
  loc_AA1595:  = Me.Fields
  loc_AA159A: FLdPr var_F8
  loc_AA159D: from_stack_2 = Me.Item(from_stack_1)
  loc_AA15A2: FLdPr var_10C
  loc_AA15A5:  = Me.Value
  loc_AA15AA: LitI2_Byte 0
  loc_AA15AC: FMemLdRf Proc_263_0_9C6454(, , , , )
  loc_AA15B1: CVarRef
  loc_AA15B6: LitI2_Byte &HFF
  loc_AA15B8: FLdRfVar var_E0
  loc_AA15BB: FLdRfVar var_B4
  loc_AA15BE: AddVar var_F0
  loc_AA15C2: FLdRfVar var_11C
  loc_AA15C5: SubVar var_12C
  loc_AA15C9: PopAdLdVar
  loc_AA15CA: FMemLdRf unk_480125
  loc_AA15CF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA15D4: FFreeAd var_8C = "": var_90 = "": var_C8 = "": var_CC = "": var_D0 = "": var_A4 = "": var_F4 = "": var_F8 = ""
  loc_AA15E9: FFreeVar var_E0 = "": var_B4 = "": var_F0 = ""
  loc_AA15F4: FLdRfVar var_A4
  loc_AA15F7: LitVarStr var_A0, "DefiImpu"
  loc_AA15FC: PopAdLdVar
  loc_AA15FD: FLdRfVar var_90
  loc_AA1600: FLdRfVar var_8C
  loc_AA1603: FLdPr var_88
  loc_AA1606: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA160B: FLdPr var_8C
  loc_AA160E:  = Me.Fields
  loc_AA1613: FLdPr var_90
  loc_AA1616: from_stack_2 = Me.Item(from_stack_1)
  loc_AA161B: LitI2_Byte 0
  loc_AA161D: FMemLdRf Proc_263_0_9C6454(, , , , , )
  loc_AA1622: CVarRef
  loc_AA1627: LitI2_Byte &HFF
  loc_AA1629: FLdZeroAd var_A4
  loc_AA162C: CVarAd
  loc_AA1630: PopAdLdVar
  loc_AA1631: FMemLdRf unk_480125
  loc_AA1636: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA163B: FFreeAd var_8C = ""
  loc_AA1642: FFree1Var var_B4 = ""
  loc_AA1645: FLdRfVar var_A4
  loc_AA1648: LitVarStr var_A0, "DeveImpu"
  loc_AA164D: PopAdLdVar
  loc_AA164E: FLdRfVar var_90
  loc_AA1651: FLdRfVar var_8C
  loc_AA1654: FLdPr var_88
  loc_AA1657: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA165C: FLdPr var_8C
  loc_AA165F:  = Me.Fields
  loc_AA1664: FLdPr var_90
  loc_AA1667: from_stack_2 = Me.Item(from_stack_1)
  loc_AA166C: LitI2_Byte 0
  loc_AA166E: FMemLdRf Proc_263_0_9C6454(, , , , , , )
  loc_AA1673: CVarRef
  loc_AA1678: LitI2_Byte &HFF
  loc_AA167A: FLdZeroAd var_A4
  loc_AA167D: CVarAd
  loc_AA1681: PopAdLdVar
  loc_AA1682: FMemLdRf unk_480125
  loc_AA1687: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA168C: FFreeAd var_8C = ""
  loc_AA1693: FFree1Var var_B4 = ""
  loc_AA1696: FLdRfVar var_A4
  loc_AA1699: LitVarStr var_A0, "MapaImpu"
  loc_AA169E: PopAdLdVar
  loc_AA169F: FLdRfVar var_90
  loc_AA16A2: FLdRfVar var_8C
  loc_AA16A5: FLdPr var_88
  loc_AA16A8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA16AD: FLdPr var_8C
  loc_AA16B0:  = Me.Fields
  loc_AA16B5: FLdPr var_90
  loc_AA16B8: from_stack_2 = Me.Item(from_stack_1)
  loc_AA16BD: LitI2_Byte 0
  loc_AA16BF: FMemLdRf Proc_263_0_9C6454(, , , , , , , )
  loc_AA16C4: CVarRef
  loc_AA16C9: LitI2_Byte &HFF
  loc_AA16CB: FLdZeroAd var_A4
  loc_AA16CE: CVarAd
  loc_AA16D2: PopAdLdVar
  loc_AA16D3: FMemLdRf unk_480125
  loc_AA16D8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA16DD: FFreeAd var_8C = ""
  loc_AA16E4: FFree1Var var_B4 = ""
  loc_AA16E7: FLdRfVar var_A4
  loc_AA16EA: LitVarStr var_A0, "PagaImpu"
  loc_AA16EF: PopAdLdVar
  loc_AA16F0: FLdRfVar var_90
  loc_AA16F3: FLdRfVar var_8C
  loc_AA16F6: FLdPr var_88
  loc_AA16F9: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA16FE: FLdPr var_8C
  loc_AA1701:  = Me.Fields
  loc_AA1706: FLdPr var_90
  loc_AA1709: from_stack_2 = Me.Item(from_stack_1)
  loc_AA170E: LitI2_Byte 0
  loc_AA1710: FMemLdRf Proc_263_0_9C6454(, , , , , , , , )
  loc_AA1715: CVarRef
  loc_AA171A: LitI2_Byte &HFF
  loc_AA171C: FLdZeroAd var_A4
  loc_AA171F: CVarAd
  loc_AA1723: PopAdLdVar
  loc_AA1724: FMemLdRf unk_480125
  loc_AA1729: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA172E: FFreeAd var_8C = ""
  loc_AA1735: FFree1Var var_B4 = ""
  loc_AA1738: FLdRfVar var_E0
  loc_AA173B: FLdRfVar var_A4
  loc_AA173E: LitVarStr var_A0, "DeveImpu"
  loc_AA1743: PopAdLdVar
  loc_AA1744: FLdRfVar var_90
  loc_AA1747: FLdRfVar var_8C
  loc_AA174A: FLdPr var_88
  loc_AA174D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1752: FLdPr var_8C
  loc_AA1755:  = Me.Fields
  loc_AA175A: FLdPr var_90
  loc_AA175D: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1762: FLdPr var_A4
  loc_AA1765:  = Me.Value
  loc_AA176A: FLdRfVar var_B4
  loc_AA176D: FLdRfVar var_D0
  loc_AA1770: LitVarStr var_C4, "MapaImpu"
  loc_AA1775: PopAdLdVar
  loc_AA1776: FLdRfVar var_CC
  loc_AA1779: FLdRfVar var_C8
  loc_AA177C: FLdPr var_88
  loc_AA177F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1784: FLdPr var_C8
  loc_AA1787:  = Me.Fields
  loc_AA178C: FLdPr var_CC
  loc_AA178F: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1794: FLdPr var_D0
  loc_AA1797:  = Me.Value
  loc_AA179C: LitI2_Byte 0
  loc_AA179E: FMemLdRf Proc_263_0_9C6454(, , , , , , , , , )
  loc_AA17A3: CVarRef
  loc_AA17A8: LitI2_Byte &HFF
  loc_AA17AA: FLdRfVar var_E0
  loc_AA17AD: FLdRfVar var_B4
  loc_AA17B0: SubVar var_F0
  loc_AA17B4: PopAdLdVar
  loc_AA17B5: FMemLdRf unk_480125
  loc_AA17BA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA17BF: FFreeAd var_8C = "": var_90 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_AA17CE: FFreeVar var_E0 = ""
  loc_AA17D5: FLdRfVar var_B4
  loc_AA17D8: FLdRfVar var_A4
  loc_AA17DB: LitVarStr var_A0, "DefiImpu"
  loc_AA17E0: PopAdLdVar
  loc_AA17E1: FLdRfVar var_90
  loc_AA17E4: FLdRfVar var_8C
  loc_AA17E7: FLdPr var_88
  loc_AA17EA: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA17EF: FLdPr var_8C
  loc_AA17F2:  = Me.Fields
  loc_AA17F7: FLdPr var_90
  loc_AA17FA: from_stack_2 = Me.Item(from_stack_1)
  loc_AA17FF: FLdPr var_A4
  loc_AA1802:  = Me.Value
  loc_AA1807: LitI2_Byte 0
  loc_AA1809: FMemLdRf Proc_263_0_9C6454(, , , , , , , , , , )
  loc_AA180E: CVarRef
  loc_AA1813: LitI2_Byte &HFF
  loc_AA1815: FMemLdR4 arg_C(20)
  loc_AA181A: CVarStr var_C4
  loc_AA181D: FLdRfVar var_B4
  loc_AA1820: SubVar var_E0
  loc_AA1824: PopAdLdVar
  loc_AA1825: FMemLdRf unk_480125
  loc_AA182A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA182F: FFreeAd var_8C = "": var_90 = ""
  loc_AA1838: FFree1Var var_B4 = ""
  loc_AA183B: FLdRfVar var_E0
  loc_AA183E: FLdRfVar var_A4
  loc_AA1841: LitVarStr var_A0, "MapaImpu"
  loc_AA1846: PopAdLdVar
  loc_AA1847: FLdRfVar var_90
  loc_AA184A: FLdRfVar var_8C
  loc_AA184D: FLdPr var_88
  loc_AA1850: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1855: FLdPr var_8C
  loc_AA1858:  = Me.Fields
  loc_AA185D: FLdPr var_90
  loc_AA1860: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1865: FLdPr var_A4
  loc_AA1868:  = Me.Value
  loc_AA186D: FLdRfVar var_B4
  loc_AA1870: FLdRfVar var_D0
  loc_AA1873: LitVarStr var_C4, "PagaImpu"
  loc_AA1878: PopAdLdVar
  loc_AA1879: FLdRfVar var_CC
  loc_AA187C: FLdRfVar var_C8
  loc_AA187F: FLdPr var_88
  loc_AA1882: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA1887: FLdPr var_C8
  loc_AA188A:  = Me.Fields
  loc_AA188F: FLdPr var_CC
  loc_AA1892: from_stack_2 = Me.Item(from_stack_1)
  loc_AA1897: FLdPr var_D0
  loc_AA189A:  = Me.Value
  loc_AA189F: LitI2_Byte 0
  loc_AA18A1: FMemLdRf Proc_263_0_9C6454(, , , , , , , , , , , )
  loc_AA18A6: CVarRef
  loc_AA18AB: LitI2_Byte &HFF
  loc_AA18AD: FLdRfVar var_E0
  loc_AA18B0: FLdRfVar var_B4
  loc_AA18B3: SubVar var_F0
  loc_AA18B7: PopAdLdVar
  loc_AA18B8: FMemLdRf unk_480125
  loc_AA18BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_AA18C2: FFreeAd var_8C = "": var_90 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_AA18D1: FFreeVar var_E0 = ""
  loc_AA18D8: LitNothing
  loc_AA18DA: FStAd var_88 
  loc_AA18DE: ExitProcHresult
End Function

Private Function Proc_161_25_9FA28C(arg_C) '9FA28C
  'Data Table: 480118
  loc_9FA134: LitI2_Byte 0
  loc_9FA136: FMemLdRf Proc_263_0_9C6454(, )
  loc_9FA13B: CVarRef
  loc_9FA140: LitI2_Byte &HFF
  loc_9FA142: FMemLdR4 arg_C(8)
  loc_9FA147: CVarStr var_98
  loc_9FA14A: PopAdLdVar
  loc_9FA14B: FLdRfVar var_88
  loc_9FA14E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA153: LitI2_Byte 0
  loc_9FA155: FMemLdRf Proc_263_0_9C6454(, , )
  loc_9FA15A: CVarRef
  loc_9FA15F: LitI2_Byte &HFF
  loc_9FA161: FMemLdR4 arg_C(12)
  loc_9FA166: CVarStr var_98
  loc_9FA169: PopAdLdVar
  loc_9FA16A: FLdRfVar var_88
  loc_9FA16D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA172: LitI2_Byte 0
  loc_9FA174: FMemLdRf Proc_263_0_9C6454(, , , )
  loc_9FA179: CVarRef
  loc_9FA17E: LitI2_Byte &HFF
  loc_9FA180: FMemLdR4 arg_C(16)
  loc_9FA185: CVarStr var_98
  loc_9FA188: PopAdLdVar
  loc_9FA189: FLdRfVar var_88
  loc_9FA18C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA191: LitI2_Byte 0
  loc_9FA193: FMemLdRf Proc_263_0_9C6454(, , , , )
  loc_9FA198: CVarRef
  loc_9FA19D: LitI2_Byte &HFF
  loc_9FA19F: FMemLdR4 arg_C(20)
  loc_9FA1A4: CVarStr var_98
  loc_9FA1A7: PopAdLdVar
  loc_9FA1A8: FLdRfVar var_88
  loc_9FA1AB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA1B0: LitI2_Byte 0
  loc_9FA1B2: FMemLdRf Proc_263_0_9C6454(, , , , , )
  loc_9FA1B7: CVarRef
  loc_9FA1BC: LitI2_Byte &HFF
  loc_9FA1BE: FMemLdR4 arg_C(24)
  loc_9FA1C3: CVarStr var_98
  loc_9FA1C6: PopAdLdVar
  loc_9FA1C7: FLdRfVar var_88
  loc_9FA1CA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA1CF: LitI2_Byte 0
  loc_9FA1D1: FMemLdRf Proc_263_0_9C6454(, , , , , , )
  loc_9FA1D6: CVarRef
  loc_9FA1DB: LitI2_Byte &HFF
  loc_9FA1DD: FMemLdR4 arg_C(28)
  loc_9FA1E2: CVarStr var_98
  loc_9FA1E5: PopAdLdVar
  loc_9FA1E6: FLdRfVar var_88
  loc_9FA1E9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA1EE: LitI2_Byte 0
  loc_9FA1F0: FMemLdRf Proc_263_0_9C6454(, , , , , , , )
  loc_9FA1F5: CVarRef
  loc_9FA1FA: LitI2_Byte &HFF
  loc_9FA1FC: FMemLdR4 arg_C(32)
  loc_9FA201: CVarStr var_98
  loc_9FA204: PopAdLdVar
  loc_9FA205: FLdRfVar var_88
  loc_9FA208: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA20D: LitI2_Byte 0
  loc_9FA20F: FMemLdRf Proc_263_0_9C6454(, , , , , , , , )
  loc_9FA214: CVarRef
  loc_9FA219: LitI2_Byte &HFF
  loc_9FA21B: FMemLdR4 arg_C(36)
  loc_9FA220: CVarStr var_98
  loc_9FA223: PopAdLdVar
  loc_9FA224: FLdRfVar var_88
  loc_9FA227: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA22C: LitI2_Byte 0
  loc_9FA22E: FMemLdRf Proc_263_0_9C6454(, , , , , , , , , )
  loc_9FA233: CVarRef
  loc_9FA238: LitI2_Byte &HFF
  loc_9FA23A: FMemLdR4 arg_C(40)
  loc_9FA23F: CVarStr var_98
  loc_9FA242: PopAdLdVar
  loc_9FA243: FLdRfVar var_88
  loc_9FA246: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA24B: LitI2_Byte 0
  loc_9FA24D: FMemLdRf Proc_263_0_9C6454(, , , , , , , , , , )
  loc_9FA252: CVarRef
  loc_9FA257: LitI2_Byte &HFF
  loc_9FA259: FMemLdR4 arg_C(44)
  loc_9FA25E: CVarStr var_98
  loc_9FA261: PopAdLdVar
  loc_9FA262: FLdRfVar var_88
  loc_9FA265: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA26A: LitI2_Byte 0
  loc_9FA26C: FMemLdRf Proc_263_0_9C6454(, , , , , , , , , , , )
  loc_9FA271: CVarRef
  loc_9FA276: LitI2_Byte &HFF
  loc_9FA278: FMemLdR4 arg_C(48)
  loc_9FA27D: CVarStr var_98
  loc_9FA280: PopAdLdVar
  loc_9FA281: FLdRfVar var_88
  loc_9FA284: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9FA289: ExitProcHresult
  loc_9FA28A: CR8R8
End Function

Private Function Proc_161_26_A9DAA4() 'A9DAA4
  'Data Table: 480118
  loc_A9D5FC: LitVarStr var_94, "<html>"
  loc_A9D601: PopAdLdVar
  loc_A9D602: FLdPr Me
  loc_A9D605: MemLdRfVar from_stack_1.htmFile
  loc_A9D608: LdPrVar
  loc_A9D60A: LateMemCall
  loc_A9D610: LitVarStr var_94, "<head>"
  loc_A9D615: PopAdLdVar
  loc_A9D616: FLdPr Me
  loc_A9D619: MemLdRfVar from_stack_1.htmFile
  loc_A9D61C: LdPrVar
  loc_A9D61E: LateMemCall
  loc_A9D624: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A9D629: PopAdLdVar
  loc_A9D62A: FLdPr Me
  loc_A9D62D: MemLdRfVar from_stack_1.htmFile
  loc_A9D630: LdPrVar
  loc_A9D632: LateMemCall
  loc_A9D638: LitStr "<title>"
  loc_A9D63B: FLdRfVar var_A8
  loc_A9D63E: FLdPr Me
  loc_A9D641:  = Me.Caption
  loc_A9D646: ILdRf var_A8
  loc_A9D649: ConcatStr
  loc_A9D64A: FStStrNoPop var_AC
  loc_A9D64D: LitStr " - "
  loc_A9D650: ConcatStr
  loc_A9D651: FStStrNoPop var_B0
  loc_A9D654: LitStr "Municipalidad de Guaymallén"
  loc_A9D657: ConcatStr
  loc_A9D658: FStStrNoPop var_B4
  loc_A9D65B: LitStr "</title>"
  loc_A9D65E: ConcatStr
  loc_A9D65F: CVarStr var_C4
  loc_A9D662: PopAdLdVar
  loc_A9D663: FLdPr Me
  loc_A9D666: MemLdRfVar from_stack_1.htmFile
  loc_A9D669: LdPrVar
  loc_A9D66B: LateMemCall
  loc_A9D671: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A9D67C: FFree1Var var_C4 = ""
  loc_A9D67F: LitStr vbNullString
  loc_A9D682: ILdRf Me
  loc_A9D685: CastAd
  loc_A9D688: FStAdFunc var_C8
  loc_A9D68B: FLdRfVar var_C8
  loc_A9D68E: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A9D693: FFree1Ad var_C8
  loc_A9D696: LitI4 0
  loc_A9D69B: FStStrCopy var_AC
  loc_A9D69E: FLdRfVar var_AC
  loc_A9D6A1: LitI4 0
  loc_A9D6A6: FStStrCopy var_A8
  loc_A9D6A9: FLdRfVar var_A8
  loc_A9D6AC: LitI2_Byte &HFF
  loc_A9D6AE: PopTmpLdAd2 var_CA
  loc_A9D6B1: FLdPr Me
  loc_A9D6B4: MemLdRfVar from_stack_1.htmFile
  loc_A9D6B7: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9D6BC: FFreeStr var_A8 = ""
  loc_A9D6C3: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A9D6C8: PopAdLdVar
  loc_A9D6C9: FLdPr Me
  loc_A9D6CC: MemLdRfVar from_stack_1.htmFile
  loc_A9D6CF: LdPrVar
  loc_A9D6D1: LateMemCall
  loc_A9D6D7: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A9D6DC: PopAdLdVar
  loc_A9D6DD: FLdPr Me
  loc_A9D6E0: MemLdRfVar from_stack_1.htmFile
  loc_A9D6E3: LdPrVar
  loc_A9D6E5: LateMemCall
  loc_A9D6EB: LitVarStr var_94, "    <th align=""center"" valign=""center""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ACUERDO N&ordm; 3949 <br>"
  loc_A9D6F0: PopAdLdVar
  loc_A9D6F1: FLdPr Me
  loc_A9D6F4: MemLdRfVar from_stack_1.htmFile
  loc_A9D6F7: LdPrVar
  loc_A9D6F9: LateMemCall
  loc_A9D6FF: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO 2: DE LA EJECUCIÓN DEL PRESUPUESTO CON RELACIÓN A LOS CRÉDITOS ACUMULADA AL FIN DEL TRIMESTRE</span></p>"
  loc_A9D704: PopAdLdVar
  loc_A9D705: FLdPr Me
  loc_A9D708: MemLdRfVar from_stack_1.htmFile
  loc_A9D70B: LdPrVar
  loc_A9D70D: LateMemCall
  loc_A9D713: LitVarStr var_94, "    </th>"
  loc_A9D718: PopAdLdVar
  loc_A9D719: FLdPr Me
  loc_A9D71C: MemLdRfVar from_stack_1.htmFile
  loc_A9D71F: LdPrVar
  loc_A9D721: LateMemCall
  loc_A9D727: LitVarStr var_94, "  </tr>"
  loc_A9D72C: PopAdLdVar
  loc_A9D72D: FLdPr Me
  loc_A9D730: MemLdRfVar from_stack_1.htmFile
  loc_A9D733: LdPrVar
  loc_A9D735: LateMemCall
  loc_A9D73B: LitVarStr var_94, "  <tr>"
  loc_A9D740: PopAdLdVar
  loc_A9D741: FLdPr Me
  loc_A9D744: MemLdRfVar from_stack_1.htmFile
  loc_A9D747: LdPrVar
  loc_A9D749: LateMemCall
  loc_A9D74F: LitVarStr var_94, "    <th>"
  loc_A9D754: PopAdLdVar
  loc_A9D755: FLdPr Me
  loc_A9D758: MemLdRfVar from_stack_1.htmFile
  loc_A9D75B: LdPrVar
  loc_A9D75D: LateMemCall
  loc_A9D763: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A9D766: LitStr "Municipalidad de Guaymallén"
  loc_A9D769: ConcatStr
  loc_A9D76A: FStStrNoPop var_A8
  loc_A9D76D: LitStr "<br>"
  loc_A9D770: ConcatStr
  loc_A9D771: CVarStr var_C4
  loc_A9D774: PopAdLdVar
  loc_A9D775: FLdPr Me
  loc_A9D778: MemLdRfVar from_stack_1.htmFile
  loc_A9D77B: LdPrVar
  loc_A9D77D: LateMemCall
  loc_A9D783: FFree1Str var_A8
  loc_A9D786: FFree1Var var_C4 = ""
  loc_A9D789: LitStr "    Nomenclador: "
  loc_A9D78C: LitStr "060204"
  loc_A9D78F: ConcatStr
  loc_A9D790: FStStrNoPop var_A8
  loc_A9D793: LitStr "<br>"
  loc_A9D796: ConcatStr
  loc_A9D797: CVarStr var_C4
  loc_A9D79A: PopAdLdVar
  loc_A9D79B: FLdPr Me
  loc_A9D79E: MemLdRfVar from_stack_1.htmFile
  loc_A9D7A1: LdPrVar
  loc_A9D7A3: LateMemCall
  loc_A9D7A9: FFree1Str var_A8
  loc_A9D7AC: FFree1Var var_C4 = ""
  loc_A9D7AF: LitStr "    Ejercicio: "
  loc_A9D7B2: FLdRfVar var_A8
  loc_A9D7B5: FLdPr Me
  loc_A9D7B8: VCallAd Control_ID_cboPeriodo
  loc_A9D7BB: FStAdFunc var_C8
  loc_A9D7BE: FLdPr var_C8
  loc_A9D7C1:  = Me.Text
  loc_A9D7C6: ILdRf var_A8
  loc_A9D7C9: ConcatStr
  loc_A9D7CA: FStStrNoPop var_AC
  loc_A9D7CD: LitStr " <br>"
  loc_A9D7D0: ConcatStr
  loc_A9D7D1: CVarStr var_C4
  loc_A9D7D4: PopAdLdVar
  loc_A9D7D5: FLdPr Me
  loc_A9D7D8: MemLdRfVar from_stack_1.htmFile
  loc_A9D7DB: LdPrVar
  loc_A9D7DD: LateMemCall
  loc_A9D7E3: FFreeStr var_A8 = ""
  loc_A9D7EA: FFree1Ad var_C8
  loc_A9D7ED: FFree1Var var_C4 = ""
  loc_A9D7F0: FLdRfVar var_CA
  loc_A9D7F3: FLdPr Me
  loc_A9D7F6: VCallAd Control_ID_cboTrimestre
  loc_A9D7F9: FStAdFunc var_D0
  loc_A9D7FC: FLdPr var_D0
  loc_A9D7FF:  = Me.ListIndex
  loc_A9D804: FLdRfVar var_D8
  loc_A9D807: FLdI2 var_CA
  loc_A9D80A: FLdPr Me
  loc_A9D80D: VCallAd Control_ID_cboTrimestre
  loc_A9D810: FStAdFunc var_D4
  loc_A9D813: FLdPr var_D4
  loc_A9D816:  = Me.ItemData
  loc_A9D81B: FLdRfVar var_AC
  loc_A9D81E: FLdPr Me
  loc_A9D821: VCallAd Control_ID_cboPeriodo
  loc_A9D824: FStAdFunc var_DC
  loc_A9D827: FLdPr var_DC
  loc_A9D82A:  = Me.Text
  loc_A9D82F: ILdRf var_AC
  loc_A9D832: CI2Str
  loc_A9D834: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A9D839: CVarStr var_C4
  loc_A9D83C: FLdRfVar var_EC
  loc_A9D83F: ImpAdCallFPR4  = Month()
  loc_A9D844: LitStr "    Trimestre: "
  loc_A9D847: FLdRfVar var_A8
  loc_A9D84A: FLdPr Me
  loc_A9D84D: VCallAd Control_ID_cboTrimestre
  loc_A9D850: FStAdFunc var_C8
  loc_A9D853: FLdPr var_C8
  loc_A9D856:  = Me.Text
  loc_A9D85B: ILdRf var_A8
  loc_A9D85E: ConcatStr
  loc_A9D85F: CVarStr var_15C
  loc_A9D862: LitVarStr var_12C, vbNullString
  loc_A9D867: FStVarCopyObj var_13C
  loc_A9D86A: FLdRfVar var_13C
  loc_A9D86D: LitVarStr var_A4, " (PROVISORIO)"
  loc_A9D872: FStVarCopyObj var_11C
  loc_A9D875: FLdRfVar var_11C
  loc_A9D878: ILdRf var_D8
  loc_A9D87B: LitI4 3
  loc_A9D880: MulI4
  loc_A9D881: CVarI4
  loc_A9D885: HardType
  loc_A9D886: FLdRfVar var_EC
  loc_A9D889: GtVar var_FC
  loc_A9D88D: FStVar var_10C
  loc_A9D891: FLdRfVar var_10C
  loc_A9D894: FLdRfVar var_14C
  loc_A9D897: ImpAdCallFPR4  = IIf(, , )
  loc_A9D89C: FLdRfVar var_14C
  loc_A9D89F: ConcatVar var_16C
  loc_A9D8A3: PopAdLdVar
  loc_A9D8A4: FLdPr Me
  loc_A9D8A7: MemLdRfVar from_stack_1.htmFile
  loc_A9D8AA: LdPrVar
  loc_A9D8AC: LateMemCall
  loc_A9D8B2: FFreeStr var_A8 = ""
  loc_A9D8B9: FFreeAd var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A9D8C4: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_A9D8D7: LitVarStr var_94, "    </p></th>"
  loc_A9D8DC: PopAdLdVar
  loc_A9D8DD: FLdPr Me
  loc_A9D8E0: MemLdRfVar from_stack_1.htmFile
  loc_A9D8E3: LdPrVar
  loc_A9D8E5: LateMemCall
  loc_A9D8EB: LitVarStr var_94, "  </tr>"
  loc_A9D8F0: PopAdLdVar
  loc_A9D8F1: FLdPr Me
  loc_A9D8F4: MemLdRfVar from_stack_1.htmFile
  loc_A9D8F7: LdPrVar
  loc_A9D8F9: LateMemCall
  loc_A9D8FF: LitVarStr var_94, "</table>"
  loc_A9D904: PopAdLdVar
  loc_A9D905: FLdPr Me
  loc_A9D908: MemLdRfVar from_stack_1.htmFile
  loc_A9D90B: LdPrVar
  loc_A9D90D: LateMemCall
  loc_A9D913: LitVarStr var_94, "<table border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9D918: PopAdLdVar
  loc_A9D919: FLdPr Me
  loc_A9D91C: MemLdRfVar from_stack_1.htmFile
  loc_A9D91F: LdPrVar
  loc_A9D921: LateMemCall
  loc_A9D927: LitVarStr var_94, "  <THEAD>"
  loc_A9D92C: PopAdLdVar
  loc_A9D92D: FLdPr Me
  loc_A9D930: MemLdRfVar from_stack_1.htmFile
  loc_A9D933: LdPrVar
  loc_A9D935: LateMemCall
  loc_A9D93B: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A9D940: PopAdLdVar
  loc_A9D941: FLdPr Me
  loc_A9D944: MemLdRfVar from_stack_1.htmFile
  loc_A9D947: LdPrVar
  loc_A9D949: LateMemCall
  loc_A9D94F: LitVarStr var_94, "     <th rowspan=""2"" align=""center"">PARTIDAS</th>"
  loc_A9D954: PopAdLdVar
  loc_A9D955: FLdPr Me
  loc_A9D958: MemLdRfVar from_stack_1.htmFile
  loc_A9D95B: LdPrVar
  loc_A9D95D: LateMemCall
  loc_A9D963: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">CRÉDITO VOTADO ORIGINAL</th>"
  loc_A9D968: PopAdLdVar
  loc_A9D969: FLdPr Me
  loc_A9D96C: MemLdRfVar from_stack_1.htmFile
  loc_A9D96F: LdPrVar
  loc_A9D971: LateMemCall
  loc_A9D977: LitVarStr var_94, "     <th width=""15" & Chr(37) & """ colspan=""2"" align=""center"">MODIFICACIONES ACUMULADAS AL FIN DE CADA TRIMESTRE</th>"
  loc_A9D97C: PopAdLdVar
  loc_A9D97D: FLdPr Me
  loc_A9D980: MemLdRfVar from_stack_1.htmFile
  loc_A9D983: LdPrVar
  loc_A9D985: LateMemCall
  loc_A9D98B: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">CRÉDITO AUTORIZADO DEFINITIVO AL FIN DE CADA TRIMESTRE</th>"
  loc_A9D990: PopAdLdVar
  loc_A9D991: FLdPr Me
  loc_A9D994: MemLdRfVar from_stack_1.htmFile
  loc_A9D997: LdPrVar
  loc_A9D999: LateMemCall
  loc_A9D99F: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">COMPROMISOS CONTRAÍDOS</th>"
  loc_A9D9A4: PopAdLdVar
  loc_A9D9A5: FLdPr Me
  loc_A9D9A8: MemLdRfVar from_stack_1.htmFile
  loc_A9D9AB: LdPrVar
  loc_A9D9AD: LateMemCall
  loc_A9D9B3: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">DEVENGADO</th>"
  loc_A9D9B8: PopAdLdVar
  loc_A9D9B9: FLdPr Me
  loc_A9D9BC: MemLdRfVar from_stack_1.htmFile
  loc_A9D9BF: LdPrVar
  loc_A9D9C1: LateMemCall
  loc_A9D9C7: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">MANDADO A PAGAR</th>"
  loc_A9D9CC: PopAdLdVar
  loc_A9D9CD: FLdPr Me
  loc_A9D9D0: MemLdRfVar from_stack_1.htmFile
  loc_A9D9D3: LdPrVar
  loc_A9D9D5: LateMemCall
  loc_A9D9DB: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">PAGADO</th>"
  loc_A9D9E0: PopAdLdVar
  loc_A9D9E1: FLdPr Me
  loc_A9D9E4: MemLdRfVar from_stack_1.htmFile
  loc_A9D9E7: LdPrVar
  loc_A9D9E9: LateMemCall
  loc_A9D9EF: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">PASIVOS SIN ORDEN DE PAGO</th>"
  loc_A9D9F4: PopAdLdVar
  loc_A9D9F5: FLdPr Me
  loc_A9D9F8: MemLdRfVar from_stack_1.htmFile
  loc_A9D9FB: LdPrVar
  loc_A9D9FD: LateMemCall
  loc_A9DA03: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">SALDO NO UTILIZADO</th>"
  loc_A9DA08: PopAdLdVar
  loc_A9DA09: FLdPr Me
  loc_A9DA0C: MemLdRfVar from_stack_1.htmFile
  loc_A9DA0F: LdPrVar
  loc_A9DA11: LateMemCall
  loc_A9DA17: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ rowspan=""2"" align=""center"">PASIVOS CON ORDEN DE PAGO</th>"
  loc_A9DA1C: PopAdLdVar
  loc_A9DA1D: FLdPr Me
  loc_A9DA20: MemLdRfVar from_stack_1.htmFile
  loc_A9DA23: LdPrVar
  loc_A9DA25: LateMemCall
  loc_A9DA2B: LitVarStr var_94, "  </tr>"
  loc_A9DA30: PopAdLdVar
  loc_A9DA31: FLdPr Me
  loc_A9DA34: MemLdRfVar from_stack_1.htmFile
  loc_A9DA37: LdPrVar
  loc_A9DA39: LateMemCall
  loc_A9DA3F: LitVarStr var_94, " <tr class=""Encabezado"" align=""center"">"
  loc_A9DA44: PopAdLdVar
  loc_A9DA45: FLdPr Me
  loc_A9DA48: MemLdRfVar from_stack_1.htmFile
  loc_A9DA4B: LdPrVar
  loc_A9DA4D: LateMemCall
  loc_A9DA53: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">AUMENTOS</th>"
  loc_A9DA58: PopAdLdVar
  loc_A9DA59: FLdPr Me
  loc_A9DA5C: MemLdRfVar from_stack_1.htmFile
  loc_A9DA5F: LdPrVar
  loc_A9DA61: LateMemCall
  loc_A9DA67: LitVarStr var_94, "     <th width=""8" & Chr(37) & """ align=""center"">DISMINUCIONES</th>"
  loc_A9DA6C: PopAdLdVar
  loc_A9DA6D: FLdPr Me
  loc_A9DA70: MemLdRfVar from_stack_1.htmFile
  loc_A9DA73: LdPrVar
  loc_A9DA75: LateMemCall
  loc_A9DA7B: LitVarStr var_94, "  </tr>"
  loc_A9DA80: PopAdLdVar
  loc_A9DA81: FLdPr Me
  loc_A9DA84: MemLdRfVar from_stack_1.htmFile
  loc_A9DA87: LdPrVar
  loc_A9DA89: LateMemCall
  loc_A9DA8F: LitVarStr var_94, "  </THEAD>"
  loc_A9DA94: PopAdLdVar
  loc_A9DA95: FLdPr Me
  loc_A9DA98: MemLdRfVar from_stack_1.htmFile
  loc_A9DA9B: LdPrVar
  loc_A9DA9D: LateMemCall
  loc_A9DAA3: ExitProcHresult
End Function

Private Function Proc_161_27_9ECD74() '9ECD74
  'Data Table: 480118
  loc_9ECC30: LitVarStr var_94, "</table>"
  loc_9ECC35: PopAdLdVar
  loc_9ECC36: FLdPr Me
  loc_9ECC39: MemLdRfVar from_stack_1.htmFile
  loc_9ECC3C: LdPrVar
  loc_9ECC3E: LateMemCall
  loc_9ECC44: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9ECC49: PopAdLdVar
  loc_9ECC4A: FLdPr Me
  loc_9ECC4D: MemLdRfVar from_stack_1.htmFile
  loc_9ECC50: LdPrVar
  loc_9ECC52: LateMemCall
  loc_9ECC58: LitVarStr var_94, "  <tr>"
  loc_9ECC5D: PopAdLdVar
  loc_9ECC5E: FLdPr Me
  loc_9ECC61: MemLdRfVar from_stack_1.htmFile
  loc_9ECC64: LdPrVar
  loc_9ECC66: LateMemCall
  loc_9ECC6C: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9ECC71: PopAdLdVar
  loc_9ECC72: FLdPr Me
  loc_9ECC75: MemLdRfVar from_stack_1.htmFile
  loc_9ECC78: LdPrVar
  loc_9ECC7A: LateMemCall
  loc_9ECC80: LitVarStr var_94, "          <map name=""Map"">"
  loc_9ECC85: PopAdLdVar
  loc_9ECC86: FLdPr Me
  loc_9ECC89: MemLdRfVar from_stack_1.htmFile
  loc_9ECC8C: LdPrVar
  loc_9ECC8E: LateMemCall
  loc_9ECC94: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9ECC99: PopAdLdVar
  loc_9ECC9A: FLdPr Me
  loc_9ECC9D: MemLdRfVar from_stack_1.htmFile
  loc_9ECCA0: LdPrVar
  loc_9ECCA2: LateMemCall
  loc_9ECCA8: LitVarStr var_94, "          </map>"
  loc_9ECCAD: PopAdLdVar
  loc_9ECCAE: FLdPr Me
  loc_9ECCB1: MemLdRfVar from_stack_1.htmFile
  loc_9ECCB4: LdPrVar
  loc_9ECCB6: LateMemCall
  loc_9ECCBC: LitVarStr var_94, "    </div></th>"
  loc_9ECCC1: PopAdLdVar
  loc_9ECCC2: FLdPr Me
  loc_9ECCC5: MemLdRfVar from_stack_1.htmFile
  loc_9ECCC8: LdPrVar
  loc_9ECCCA: LateMemCall
  loc_9ECCD0: LitVarStr var_94, "  </tr>"
  loc_9ECCD5: PopAdLdVar
  loc_9ECCD6: FLdPr Me
  loc_9ECCD9: MemLdRfVar from_stack_1.htmFile
  loc_9ECCDC: LdPrVar
  loc_9ECCDE: LateMemCall
  loc_9ECCE4: LitVarStr var_94, "  <tr>"
  loc_9ECCE9: PopAdLdVar
  loc_9ECCEA: FLdPr Me
  loc_9ECCED: MemLdRfVar from_stack_1.htmFile
  loc_9ECCF0: LdPrVar
  loc_9ECCF2: LateMemCall
  loc_9ECCF8: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9ECCFD: PopAdLdVar
  loc_9ECCFE: FLdPr Me
  loc_9ECD01: MemLdRfVar from_stack_1.htmFile
  loc_9ECD04: LdPrVar
  loc_9ECD06: LateMemCall
  loc_9ECD0C: LitVarStr var_94, "  </tr>"
  loc_9ECD11: PopAdLdVar
  loc_9ECD12: FLdPr Me
  loc_9ECD15: MemLdRfVar from_stack_1.htmFile
  loc_9ECD18: LdPrVar
  loc_9ECD1A: LateMemCall
  loc_9ECD20: LitVarStr var_94, "</table>"
  loc_9ECD25: PopAdLdVar
  loc_9ECD26: FLdPr Me
  loc_9ECD29: MemLdRfVar from_stack_1.htmFile
  loc_9ECD2C: LdPrVar
  loc_9ECD2E: LateMemCall
  loc_9ECD34: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9ECD39: PopAdLdVar
  loc_9ECD3A: FLdPr Me
  loc_9ECD3D: MemLdRfVar from_stack_1.htmFile
  loc_9ECD40: LdPrVar
  loc_9ECD42: LateMemCall
  loc_9ECD48: LitVarStr var_94, "</body>"
  loc_9ECD4D: PopAdLdVar
  loc_9ECD4E: FLdPr Me
  loc_9ECD51: MemLdRfVar from_stack_1.htmFile
  loc_9ECD54: LdPrVar
  loc_9ECD56: LateMemCall
  loc_9ECD5C: LitVarStr var_94, "</html>"
  loc_9ECD61: PopAdLdVar
  loc_9ECD62: FLdPr Me
  loc_9ECD65: MemLdRfVar from_stack_1.htmFile
  loc_9ECD68: LdPrVar
  loc_9ECD6A: LateMemCall
  loc_9ECD70: ExitProcHresult
End Function
