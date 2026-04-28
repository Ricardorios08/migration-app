VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA3949AnexoIII
  Caption = "Acuerdo 3949 - Anexo III"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA3949AnexoIII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9705
  ClientHeight = 3840
  StartUpPosition = 2 'CenterScreen
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA3949AnexoIII.frx":08CA
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 2295
    TabIndex = 9
    Begin VB.ComboBox cboTrimestre
      Style = 2
      ForeColor = &HFF0000&
      Left = 1695
      Top = 1200
      Width = 1455
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
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1695
      Top = 600
      Width = 975
      Height = 420
      TabIndex = 0
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
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
      Top = 720
      Width = 2535
      Height = 735
      TabIndex = 7
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
      Caption = "Periodo:"
      Left = 735
      Top = 600
      Width = 870
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
    Begin VB.Label Label2
      Caption = "Trimestre:"
      Left = 630
      Top = 1200
      Width = 1050
      Height = 300
      TabIndex = 11
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3585
    Width = 9705
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptA3949AnexoIII.frx":092E
  End
  Begin VB.CommandButton cmdSalir
    Left = 8400
    Top = 840
    Width = 735
    Height = 615
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptA3949AnexoIII.frx":09AE
    Style = 1
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2400
    Width = 4455
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2400
    Width = 3015
    Height = 1095
    TabIndex = 13
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8400
    Top = 960
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptA3949AnexoIII.frx":0C00
  End
End

Attribute VB_Name = "rptA3949AnexoIII"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_005C4CC0
  bStruc(40) As Byte ' String fields: 2
End Type

Private Type UDT_3_005C4D08
  bStruc(48) As Byte ' String fields: 4
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '986404
  'Data Table: 457920
  loc_9863CC: FLdPr Me
  loc_9863CF: VCallAd Control_ID_statusBar
  loc_9863D2: FStAdFunc var_88
  loc_9863D5: FLdPr var_88
  loc_9863D8: LateIdLdVar var_98 DispID_1 0
  loc_9863DF: CStrVarTmp
  loc_9863E0: CVarStr var_A8
  loc_9863E3: PopAdLdVar
  loc_9863E4: FLdPr Me
  loc_9863E7: VCallAd Control_ID_statusBar
  loc_9863EA: FStAdFunc var_BC
  loc_9863ED: FLdPr var_BC
  loc_9863F0: LateIdSt
  loc_9863F5: FFreeAd var_88 = ""
  loc_9863FC: FFreeVar var_98 = ""
  loc_986403: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '954018
  'Data Table: 457920
  loc_954000: LitI2_Byte 0
  loc_954002: ILdRf Me
  loc_954005: CastAd
  loc_954008: FStAdFunc var_88
  loc_95400B: FLdRfVar var_88
  loc_95400E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_954013: FFree1Ad var_88
  loc_954016: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95565C
  'Data Table: 457920
  loc_955644: ILdRf Me
  loc_955647: CastAd
  loc_95564A: FStAdFunc var_88
  loc_95564D: FLdRfVar var_88
  loc_955650: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_955655: FFree1Ad var_88
  loc_955658: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '976540
  'Data Table: 457920
  loc_976510: LitVarStr var_94, "Cerrando..."
  loc_976515: PopAdLdVar
  loc_976516: FLdPr Me
  loc_976519: VCallAd Control_ID_statusBar
  loc_97651C: FStAdFunc var_A8
  loc_97651F: FLdPr var_A8
  loc_976522: LateIdSt
  loc_976527: FFree1Ad var_A8
  loc_97652A: ILdRf Me
  loc_97652D: FStAdNoPop
  loc_976531: ImpAdLdRf MemVar_C44F9C
  loc_976534: NewIfNullPr Me
  loc_976537: Me.Global.Unload from_stack_1
  loc_97653C: FFree1Ad var_A8
  loc_97653F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0EBA0
  'Data Table: 457920
  loc_A0EA30: LitI2_Byte 0
  loc_A0EA32: FLdPr Me
  loc_A0EA35: MemStI2 bGenerado
  loc_A0EA38: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A0EA3D: ImpAdLdI2 MemVar_C3D064
  loc_A0EA40: CStrUI1
  loc_A0EA42: FStStrNoPop var_88
  loc_A0EA45: FLdPr Me
  loc_A0EA48: VCallAd Control_ID_cboPeriodo
  loc_A0EA4B: FStAdFunc var_8C
  loc_A0EA4E: FLdPr var_8C
  loc_A0EA51: Me.Text = from_stack_1
  loc_A0EA56: FFree1Str var_88
  loc_A0EA59: FFree1Ad var_8C
  loc_A0EA5C: FLdRfVar var_9C
  loc_A0EA5F: ImpAdCallFPR4  = Date
  loc_A0EA64: FLdRfVar var_9C
  loc_A0EA67: FLdRfVar var_AC
  loc_A0EA6A: ImpAdCallFPR4  = Month()
  loc_A0EA6F: FLdRfVar var_AC
  loc_A0EA72: FStVar var_BC
  loc_A0EA76: FFree1Var var_9C = ""
  loc_A0EA79: FLdRfVar var_BC
  loc_A0EA7C: LitVarI2 var_CC, 1
  loc_A0EA81: HardType
  loc_A0EA82: EqVarBool
  loc_A0EA84: BranchT loc_A0EAA3
  loc_A0EA87: FLdRfVar var_BC
  loc_A0EA8A: LitVarI2 var_DC, 2
  loc_A0EA8F: HardType
  loc_A0EA90: EqVarBool
  loc_A0EA92: BranchT loc_A0EAA3
  loc_A0EA95: FLdRfVar var_BC
  loc_A0EA98: LitVarI2 var_EC, 3
  loc_A0EA9D: HardType
  loc_A0EA9E: EqVarBool
  loc_A0EAA0: BranchF loc_A0EABD
  loc_A0EAA3: LitStr "Primero"
  loc_A0EAA6: FLdPr Me
  loc_A0EAA9: VCallAd Control_ID_cboTrimestre
  loc_A0EAAC: FStAdFunc var_8C
  loc_A0EAAF: FLdPr var_8C
  loc_A0EAB2: Me.Text = from_stack_1
  loc_A0EAB7: FFree1Ad var_8C
  loc_A0EABA: Branch loc_A0EB86
  loc_A0EABD: FLdRfVar var_BC
  loc_A0EAC0: LitVarI2 var_CC, 4
  loc_A0EAC5: HardType
  loc_A0EAC6: EqVarBool
  loc_A0EAC8: BranchT loc_A0EAE7
  loc_A0EACB: FLdRfVar var_BC
  loc_A0EACE: LitVarI2 var_DC, 5
  loc_A0EAD3: HardType
  loc_A0EAD4: EqVarBool
  loc_A0EAD6: BranchT loc_A0EAE7
  loc_A0EAD9: FLdRfVar var_BC
  loc_A0EADC: LitVarI2 var_EC, 6
  loc_A0EAE1: HardType
  loc_A0EAE2: EqVarBool
  loc_A0EAE4: BranchF loc_A0EB01
  loc_A0EAE7: LitStr "Segundo"
  loc_A0EAEA: FLdPr Me
  loc_A0EAED: VCallAd Control_ID_cboTrimestre
  loc_A0EAF0: FStAdFunc var_8C
  loc_A0EAF3: FLdPr var_8C
  loc_A0EAF6: Me.Text = from_stack_1
  loc_A0EAFB: FFree1Ad var_8C
  loc_A0EAFE: Branch loc_A0EB86
  loc_A0EB01: FLdRfVar var_BC
  loc_A0EB04: LitVarI2 var_CC, 7
  loc_A0EB09: HardType
  loc_A0EB0A: EqVarBool
  loc_A0EB0C: BranchT loc_A0EB2B
  loc_A0EB0F: FLdRfVar var_BC
  loc_A0EB12: LitVarI2 var_DC, 8
  loc_A0EB17: HardType
  loc_A0EB18: EqVarBool
  loc_A0EB1A: BranchT loc_A0EB2B
  loc_A0EB1D: FLdRfVar var_BC
  loc_A0EB20: LitVarI2 var_EC, 9
  loc_A0EB25: HardType
  loc_A0EB26: EqVarBool
  loc_A0EB28: BranchF loc_A0EB45
  loc_A0EB2B: LitStr "Tercero"
  loc_A0EB2E: FLdPr Me
  loc_A0EB31: VCallAd Control_ID_cboTrimestre
  loc_A0EB34: FStAdFunc var_8C
  loc_A0EB37: FLdPr var_8C
  loc_A0EB3A: Me.Text = from_stack_1
  loc_A0EB3F: FFree1Ad var_8C
  loc_A0EB42: Branch loc_A0EB86
  loc_A0EB45: FLdRfVar var_BC
  loc_A0EB48: LitVarI2 var_CC, 10
  loc_A0EB4D: HardType
  loc_A0EB4E: EqVarBool
  loc_A0EB50: BranchT loc_A0EB6F
  loc_A0EB53: FLdRfVar var_BC
  loc_A0EB56: LitVarI2 var_DC, 11
  loc_A0EB5B: HardType
  loc_A0EB5C: EqVarBool
  loc_A0EB5E: BranchT loc_A0EB6F
  loc_A0EB61: FLdRfVar var_BC
  loc_A0EB64: LitVarI2 var_EC, 12
  loc_A0EB69: HardType
  loc_A0EB6A: EqVarBool
  loc_A0EB6C: BranchF loc_A0EB86
  loc_A0EB6F: LitStr "Cuarto"
  loc_A0EB72: FLdPr Me
  loc_A0EB75: VCallAd Control_ID_cboTrimestre
  loc_A0EB78: FStAdFunc var_8C
  loc_A0EB7B: FLdPr var_8C
  loc_A0EB7E: Me.Text = from_stack_1
  loc_A0EB83: FFree1Ad var_8C
  loc_A0EB86: Call HabilitarCriterio()
  loc_A0EB8B: ILdRf Me
  loc_A0EB8E: CastAd
  loc_A0EB91: FStAdFunc var_8C
  loc_A0EB94: FLdRfVar var_8C
  loc_A0EB97: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A0EB9C: FFree1Ad var_8C
  loc_A0EB9F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '954E58
  'Data Table: 457920
  loc_954E40: ILdRf Me
  loc_954E43: CastAd
  loc_954E46: FStAdFunc var_88
  loc_954E49: FLdRfVar var_88
  loc_954E4C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954E51: FFree1Ad var_88
  loc_954E54: ExitProcHresult
  loc_954E55: CCyI4
End Sub

Private Sub cmdHtml_Click() '955824
  'Data Table: 457920
  loc_95580C: ILdRf Me
  loc_95580F: CastAd
  loc_955812: FStAdFunc var_88
  loc_955815: FLdRfVar var_88
  loc_955818: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_95581D: FFree1Ad var_88
  loc_955820: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '954AC8
  'Data Table: 457920
  loc_954AB0: LitI2_Byte &HFF
  loc_954AB2: ILdRf Me
  loc_954AB5: CastAd
  loc_954AB8: FStAdFunc var_88
  loc_954ABB: FLdRfVar var_88
  loc_954ABE: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_954AC3: FFree1Ad var_88
  loc_954AC6: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1B5DC
  'Data Table: 457920
  loc_A1B44C: LitI2_Byte &HFF
  loc_A1B44E: ImpAdStI2 MemVar_C3D840
  loc_A1B451: ILdRf Me
  loc_A1B454: CastAd
  loc_A1B457: FStAdFunc var_88
  loc_A1B45A: FLdRfVar var_88
  loc_A1B45D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1B462: FFree1Ad var_88
  loc_A1B465: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1B468: FLdRfVar var_8C
  loc_A1B46B: NewIfNullPr clsperiodo
  loc_A1B46E: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1B473: FLdRfVar var_90
  loc_A1B476: FLdRfVar var_8C
  loc_A1B479: NewIfNullPr clsperiodo
  loc_A1B47C: from_stack_1 = clsperiodo.RecordCount
  loc_A1B481: ILdRf var_90
  loc_A1B484: LitI4 0
  loc_A1B489: GtI4
  loc_A1B48A: BranchF loc_A1B51D
  loc_A1B48D: FLdRfVar var_8C
  loc_A1B490: NewIfNullPr clsperiodo
  loc_A1B493: Call clsperiodo.MoveFirst()
  loc_A1B498: FLdRfVar var_92
  loc_A1B49B: FLdRfVar var_8C
  loc_A1B49E: NewIfNullPr clsperiodo
  loc_A1B4A1: from_stack_1 = clsperiodo.EOF
  loc_A1B4A6: FLdI2 var_92
  loc_A1B4A9: NotI4
  loc_A1B4AA: BranchF loc_A1B51D
  loc_A1B4AD: LitVar_Missing var_D0
  loc_A1B4B0: PopAdLdVar
  loc_A1B4B1: FLdRfVar var_BC
  loc_A1B4B4: FLdRfVar var_AC
  loc_A1B4B7: LitVarStr var_A8, "PeriInfo"
  loc_A1B4BC: PopAdLdVar
  loc_A1B4BD: FLdRfVar var_98
  loc_A1B4C0: FLdRfVar var_88
  loc_A1B4C3: FLdRfVar var_8C
  loc_A1B4C6: NewIfNullPr clsperiodo
  loc_A1B4C9: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1B4CE: FLdPr var_88
  loc_A1B4D1:  = Me.Fields
  loc_A1B4D6: FLdPr var_98
  loc_A1B4D9: from_stack_2 = Me.Item(from_stack_1)
  loc_A1B4DE: FLdPr var_AC
  loc_A1B4E1:  = Me.Value
  loc_A1B4E6: FLdRfVar var_BC
  loc_A1B4E9: CStrVarTmp
  loc_A1B4EA: FStStrNoPop var_C0
  loc_A1B4ED: FLdPr Me
  loc_A1B4F0: VCallAd Control_ID_cboPeriodo
  loc_A1B4F3: FStAdFunc var_D4
  loc_A1B4F6: FLdPr var_D4
  loc_A1B4F9: Me.AddItem from_stack_1, from_stack_2
  loc_A1B4FE: FFree1Str var_C0
  loc_A1B501: FFreeAd var_88 = "": var_98 = "": var_AC = ""
  loc_A1B50C: FFree1Var var_BC = ""
  loc_A1B50F: FLdRfVar var_8C
  loc_A1B512: NewIfNullPr clsperiodo
  loc_A1B515: Call clsperiodo.MoveSiguiente()
  loc_A1B51A: Branch loc_A1B498
  loc_A1B51D: FLdPr Me
  loc_A1B520: VCallAd Control_ID_cboTrimestre
  loc_A1B523: FStAdFunc var_D8
  loc_A1B526: LitVar_Missing var_A8
  loc_A1B529: PopAdLdVar
  loc_A1B52A: LitStr "Primero"
  loc_A1B52D: FLdPr var_D8
  loc_A1B530: Me.AddItem from_stack_1, from_stack_2
  loc_A1B535: LitI4 1
  loc_A1B53A: FLdRfVar var_92
  loc_A1B53D: FLdPr var_D8
  loc_A1B540:  = Me.NewIndex
  loc_A1B545: FLdI2 var_92
  loc_A1B548: FLdPr var_D8
  loc_A1B54B: Me.ItemData = from_stack_1
  loc_A1B550: LitVar_Missing var_A8
  loc_A1B553: PopAdLdVar
  loc_A1B554: LitStr "Segundo"
  loc_A1B557: FLdPr var_D8
  loc_A1B55A: Me.AddItem from_stack_1, from_stack_2
  loc_A1B55F: LitI4 2
  loc_A1B564: FLdRfVar var_92
  loc_A1B567: FLdPr var_D8
  loc_A1B56A:  = Me.NewIndex
  loc_A1B56F: FLdI2 var_92
  loc_A1B572: FLdPr var_D8
  loc_A1B575: Me.ItemData = from_stack_1
  loc_A1B57A: LitVar_Missing var_A8
  loc_A1B57D: PopAdLdVar
  loc_A1B57E: LitStr "Tercero"
  loc_A1B581: FLdPr var_D8
  loc_A1B584: Me.AddItem from_stack_1, from_stack_2
  loc_A1B589: LitI4 3
  loc_A1B58E: FLdRfVar var_92
  loc_A1B591: FLdPr var_D8
  loc_A1B594:  = Me.NewIndex
  loc_A1B599: FLdI2 var_92
  loc_A1B59C: FLdPr var_D8
  loc_A1B59F: Me.ItemData = from_stack_1
  loc_A1B5A4: LitVar_Missing var_A8
  loc_A1B5A7: PopAdLdVar
  loc_A1B5A8: LitStr "Cuarto"
  loc_A1B5AB: FLdPr var_D8
  loc_A1B5AE: Me.AddItem from_stack_1, from_stack_2
  loc_A1B5B3: LitI4 4
  loc_A1B5B8: FLdRfVar var_92
  loc_A1B5BB: FLdPr var_D8
  loc_A1B5BE:  = Me.NewIndex
  loc_A1B5C3: FLdI2 var_92
  loc_A1B5C6: FLdPr var_D8
  loc_A1B5C9: Me.ItemData = from_stack_1
  loc_A1B5CE: LitNothing
  loc_A1B5D0: FStAd var_D8 
  loc_A1B5D4: Call cmdNueva_Click()
  loc_A1B5D9: ExitProcHresult
  loc_A1B5DA: CRec2Uni var_5800
End Sub

Private Sub Form_Unload(Cancel As Integer) '953C3C
  'Data Table: 457920
  loc_953C24: FLdPr Me
  loc_953C27: VCallAd Control_ID_wbbReporte
  loc_953C2A: FStAdFunc var_88
  loc_953C2D: FLdRfVar var_88
  loc_953C30: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_953C35: FFree1Ad var_88
  loc_953C38: ExitProcHresult
End Sub

Public Function htmFileGet() '458614
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '458623
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '458632
  htmFile = Value
End Sub

Public Function bGeneradoGet() '458641
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '458650
  bGenerado = Value
End Sub

Public Sub GeneraReporte() 'AF13CC
  'Data Table: 457920
  loc_AF0D14: FLdPr Me
  loc_AF0D17: MemLdI2 bGenerado
  loc_AF0D1A: BranchF loc_AF0D1E
  loc_AF0D1D: ExitProcHresult
  loc_AF0D1E: LitVarStr var_94, "Generando reporte..."
  loc_AF0D23: PopAdLdVar
  loc_AF0D24: FLdPr Me
  loc_AF0D27: VCallAd Control_ID_statusBar
  loc_AF0D2A: FStAdFunc var_A8
  loc_AF0D2D: FLdPr var_A8
  loc_AF0D30: LateIdSt
  loc_AF0D35: FFree1Ad var_A8
  loc_AF0D38: LitI4 &HB
  loc_AF0D3D: CI2I4
  loc_AF0D3E: FLdPr Me
  loc_AF0D41: Me.MousePointer = from_stack_1
  loc_AF0D46: FLdRfVar var_B4
  loc_AF0D49: FLdRfVar var_AA
  loc_AF0D4C: FLdPr Me
  loc_AF0D4F: VCallAd Control_ID_cboTrimestre
  loc_AF0D52: FStAdFunc var_A8
  loc_AF0D55: FLdPr var_A8
  loc_AF0D58:  = Me.ListIndex
  loc_AF0D5D: FLdI2 var_AA
  loc_AF0D60: FLdPr Me
  loc_AF0D63: VCallAd Control_ID_cboTrimestre
  loc_AF0D66: FStAdFunc var_B0
  loc_AF0D69: FLdPr var_B0
  loc_AF0D6C:  = Me.ItemData
  loc_AF0D71: ILdRf var_B4
  loc_AF0D74: LitI4 3
  loc_AF0D79: MulI4
  loc_AF0D7A: CStrI4
  loc_AF0D7C: FStStrNoPop var_B8
  loc_AF0D7F: FLdPr Me
  loc_AF0D82: MemStStrCopy
  loc_AF0D86: FFree1Str var_B8
  loc_AF0D89: FFreeAd var_A8 = ""
  loc_AF0D90: FLdPr Me
  loc_AF0D93: MemLdRfVar from_stack_1.global_76
  loc_AF0D96: NewIfNullAd
  loc_AF0D99: FStAd var_BC 
  loc_AF0D9D: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_AF0DA0: LitStr "CREATE TEMPORARY TABLE movi` ("
  loc_AF0DA3: ConcatStr
  loc_AF0DA4: FStStrNoPop var_B8
  loc_AF0DA7: LitStr " eriInfo` year(4) NOT NULL default '0000',"
  loc_AF0DAA: ConcatStr
  loc_AF0DAB: FStStrNoPop var_C0
  loc_AF0DAE: LitStr " odiTicu` varchar(4) NOT NULL default '',"
  loc_AF0DB1: ConcatStr
  loc_AF0DB2: FStStrNoPop var_C4
  loc_AF0DB5: LitStr " odiTias` tinyint(2) unsigned NOT NULL default '0',"
  loc_AF0DB8: ConcatStr
  loc_AF0DB9: FStStrNoPop var_C8
  loc_AF0DBC: LitStr " utoMoas` decimal(13,2) NOT NULL default '0.00',"
  loc_AF0DBF: ConcatStr
  loc_AF0DC0: FStStrNoPop var_CC
  loc_AF0DC3: LitStr " umeMoas` decimal(13,2) NOT NULL default '0.00',"
  loc_AF0DC6: ConcatStr
  loc_AF0DC7: FStStrNoPop var_D0
  loc_AF0DCA: LitStr " ismMoas` decimal(13,2) NOT NULL default '0.00',"
  loc_AF0DCD: ConcatStr
  loc_AF0DCE: FStStrNoPop var_D4
  loc_AF0DD1: LitStr " ngaMoas` decimal(13,2) NOT NULL default '0.00',"
  loc_AF0DD4: ConcatStr
  loc_AF0DD5: FStStrNoPop var_D8
  loc_AF0DD8: LitStr " ngtMoas` decimal(13,2) NOT NULL default '0.00'"
  loc_AF0DDB: ConcatStr
  loc_AF0DDC: FStStrNoPop var_DC
  loc_AF0DDF: LitStr " ) ;"
  loc_AF0DE2: ConcatStr
  loc_AF0DE3: FStStrNoPop var_E0
  loc_AF0DE6: FLdPr var_BC
  loc_AF0DE9: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF0DEE: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_AF0E05: LitStr "Municipalidad de Guaymallén"
  loc_AF0E08: LitStr "Municipalidad de Guaymallén"
  loc_AF0E0B: EqStr
  loc_AF0E0D: BranchF loc_AF0F8A
  loc_AF0E10: LitStr "INSERT INTO tmovi"
  loc_AF0E13: LitStr " SELECT moviasiento.PeriInfo, Concat(Left(CodiTicu,3),'0') CodiTicu,"
  loc_AF0E16: ConcatStr
  loc_AF0E17: FStStrNoPop var_B8
  loc_AF0E1A: LitStr " CodiTias, if(CodiTias=7,sum(DebeMoas)-sum(HabeMoas),0) AutoMoas,"
  loc_AF0E1D: ConcatStr
  loc_AF0E1E: FStStrNoPop var_C0
  loc_AF0E21: LitStr " if(CodiTias=8 and sum(DebeMoas)-sum(HabeMoas)>=0,sum(DebeMoas)-sum(HabeMoas),0) AumeMoas,"
  loc_AF0E24: ConcatStr
  loc_AF0E25: FStStrNoPop var_C4
  loc_AF0E28: LitStr " if(CodiTias=8 and sum(HabeMoas)-sum(DebeMoas)>=0,sum(HabeMoas)-sum(DebeMoas),0) DismMoas,"
  loc_AF0E2B: ConcatStr
  loc_AF0E2C: FStStrNoPop var_C8
  loc_AF0E2F: LitStr " if(CodiTias=9,sum(HabeMoas)-sum(DebeMoas),0) as IngaMoas, 0 as IngtMoas"
  loc_AF0E32: ConcatStr
  loc_AF0E33: FStStrNoPop var_CC
  loc_AF0E36: LitStr " FROM asiento"
  loc_AF0E39: ConcatStr
  loc_AF0E3A: FStStrNoPop var_D0
  loc_AF0E3D: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_AF0E40: ConcatStr
  loc_AF0E41: FStStrNoPop var_D4
  loc_AF0E44: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_AF0E47: ConcatStr
  loc_AF0E48: FStStrNoPop var_D8
  loc_AF0E4B: LitStr " AND moviasiento.CodiCuco <> paraconta.CarePaco AND moviasiento.CodiCuco <> paraconta.CajaPaco"
  loc_AF0E4E: ConcatStr
  loc_AF0E4F: FStStrNoPop var_DC
  loc_AF0E52: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = moviasiento.PeriInfo and cc.CodiCuco = moviasiento.CodiCuco AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "' AND (cc.CodiTicu LIKE '5" & Chr(37) & "' or cc.CodiTicu LIKE '7" & Chr(37) & "')"
  loc_AF0E55: ConcatStr
  loc_AF0E56: FStStrNoPop var_E0
  loc_AF0E59: LitStr " WHERE asiento.PeriInfo = "
  loc_AF0E5C: ConcatStr
  loc_AF0E5D: FStStrNoPop var_E8
  loc_AF0E60: FLdRfVar var_E4
  loc_AF0E63: FLdPr Me
  loc_AF0E66: VCallAd Control_ID_cboPeriodo
  loc_AF0E69: FStAdFunc var_A8
  loc_AF0E6C: FLdPr var_A8
  loc_AF0E6F:  = Me.Text
  loc_AF0E74: ILdRf var_E4
  loc_AF0E77: ConcatStr
  loc_AF0E78: FStStrNoPop var_EC
  loc_AF0E7B: LitStr " AND Month(FechAsie) <= "
  loc_AF0E7E: ConcatStr
  loc_AF0E7F: FStStrNoPop var_F0
  loc_AF0E82: FLdPr Me
  loc_AF0E85: MemLdStr global_124
  loc_AF0E88: ConcatStr
  loc_AF0E89: FStStrNoPop var_F4
  loc_AF0E8C: LitStr " AND (CodiTias = 7 Or CodiTias = 8 Or CodiTias = 9 or CodiTias = 56 or CodiTias = 6)"
  loc_AF0E8F: ConcatStr
  loc_AF0E90: FStStrNoPop var_F8
  loc_AF0E93: LitStr " GROUP BY Left(cc.CodiTicu,3), CodiTias;"
  loc_AF0E96: ConcatStr
  loc_AF0E97: FStStrNoPop var_FC
  loc_AF0E9A: LitStr " INSERT INTO tmovi"
  loc_AF0E9D: ConcatStr
  loc_AF0E9E: FStStrNoPop var_100
  loc_AF0EA1: LitStr " SELECT moviasiento.PeriInfo, concat(Left(CodiTicu,3),'0') as CodiTicu, CodiTias, 0 as AutoMoas, 0 as AumeMoas, 0 as DismMoas,"
  loc_AF0EA4: ConcatStr
  loc_AF0EA5: FStStrNoPop var_104
  loc_AF0EA8: LitStr " 0 as IngaMoas, if(CodiTias=9,sum(HabeMoas)-sum(DebeMoas),0) as IngtMoas"
  loc_AF0EAB: ConcatStr
  loc_AF0EAC: FStStrNoPop var_108
  loc_AF0EAF: LitStr " FROM asiento"
  loc_AF0EB2: ConcatStr
  loc_AF0EB3: FStStrNoPop var_10C
  loc_AF0EB6: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_AF0EB9: ConcatStr
  loc_AF0EBA: FStStrNoPop var_110
  loc_AF0EBD: LitStr " INNER JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_AF0EC0: ConcatStr
  loc_AF0EC1: FStStrNoPop var_114
  loc_AF0EC4: LitStr " AND moviasiento.CodiCuco <> paraconta.CarePaco AND moviasiento.CodiCuco <> paraconta.CajaPaco"
  loc_AF0EC7: ConcatStr
  loc_AF0EC8: FStStrNoPop var_118
  loc_AF0ECB: LitStr " INNER JOIN infogov.cuentacontable cc on cc.PeriInfo = moviasiento.PeriInfo and cc.CodiCuco = moviasiento.CodiCuco AND cc.CodiCuco NOT LIKE '8" & Chr(37) & "' AND (cc.CodiTicu LIKE '5" & Chr(37) & "' or cc.CodiTicu LIKE '7" & Chr(37) & "')"
  loc_AF0ECE: ConcatStr
  loc_AF0ECF: FStStrNoPop var_11C
  loc_AF0ED2: LitStr " WHERE asiento.PeriInfo = "
  loc_AF0ED5: ConcatStr
  loc_AF0ED6: FStStrNoPop var_124
  loc_AF0ED9: FLdRfVar var_120
  loc_AF0EDC: FLdPr Me
  loc_AF0EDF: VCallAd Control_ID_cboPeriodo
  loc_AF0EE2: FStAdFunc var_B0
  loc_AF0EE5: FLdPr var_B0
  loc_AF0EE8:  = Me.Text
  loc_AF0EED: ILdRf var_120
  loc_AF0EF0: ConcatStr
  loc_AF0EF1: FStStrNoPop var_128
  loc_AF0EF4: LitStr " AND Month(FechAsie) BETWEEN "
  loc_AF0EF7: ConcatStr
  loc_AF0EF8: FStStrNoPop var_12C
  loc_AF0EFB: FLdPr Me
  loc_AF0EFE: MemLdStr global_124
  loc_AF0F01: CR8Str
  loc_AF0F03: LitI2_Byte 2
  loc_AF0F05: CR8I2
  loc_AF0F06: SubR4
  loc_AF0F07: CStrR8
  loc_AF0F09: FStStrNoPop var_130
  loc_AF0F0C: ConcatStr
  loc_AF0F0D: FStStrNoPop var_134
  loc_AF0F10: LitStr " AND "
  loc_AF0F13: ConcatStr
  loc_AF0F14: FStStrNoPop var_138
  loc_AF0F17: FLdPr Me
  loc_AF0F1A: MemLdStr global_124
  loc_AF0F1D: ConcatStr
  loc_AF0F1E: FStStrNoPop var_13C
  loc_AF0F21: LitStr " AND CodiTias = 9"
  loc_AF0F24: ConcatStr
  loc_AF0F25: FStStrNoPop var_140
  loc_AF0F28: LitStr " GROUP BY Left(cc.CodiTicu,3), CodiTias;"
  loc_AF0F2B: ConcatStr
  loc_AF0F2C: FStStrNoPop var_144
  loc_AF0F2F: FLdPr var_BC
  loc_AF0F32: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF0F37: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E8 = "": var_E4 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_124 = "": var_120 = "": var_128 = "": var_12C = ""
  loc_AF0F80: FFreeAd var_A8 = ""
  loc_AF0F87: Branch loc_AF10EF
  loc_AF0F8A: LitStr "INSERT INTO tmovi"
  loc_AF0F8D: LitStr " SELECT moviasiento.PeriInfo, Concat(Left(CodiTicu,3),'0') CodiTicu,"
  loc_AF0F90: ConcatStr
  loc_AF0F91: FStStrNoPop var_B8
  loc_AF0F94: LitStr " CodiTias, if(CodiTias=7,sum(DebeMoas)-sum(HabeMoas),0) as AutoMoas,"
  loc_AF0F97: ConcatStr
  loc_AF0F98: FStStrNoPop var_C0
  loc_AF0F9B: LitStr " if(CodiTias=8 and sum(DebeMoas)-sum(HabeMoas)>=0,sum(DebeMoas)-sum(HabeMoas),0) as AumeMoas,"
  loc_AF0F9E: ConcatStr
  loc_AF0F9F: FStStrNoPop var_C4
  loc_AF0FA2: LitStr " if(CodiTias=8 and sum(HabeMoas)-sum(DebeMoas)>=0,sum(HabeMoas)-sum(DebeMoas),0) as DismMoas,"
  loc_AF0FA5: ConcatStr
  loc_AF0FA6: FStStrNoPop var_C8
  loc_AF0FA9: LitStr " if(CodiTias=9,sum(HabeMoas)-sum(DebeMoas),0) as IngaMoas, 0 as IngtMoas FROM asiento"
  loc_AF0FAC: ConcatStr
  loc_AF0FAD: FStStrNoPop var_CC
  loc_AF0FB0: LitStr " LEFT JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_AF0FB3: ConcatStr
  loc_AF0FB4: FStStrNoPop var_D0
  loc_AF0FB7: LitStr " LEFT JOIN infogov.cuentacontable as cc on cc.PeriInfo = moviasiento.PeriInfo and cc.CodiCuco = moviasiento.CodiCuco"
  loc_AF0FBA: ConcatStr
  loc_AF0FBB: FStStrNoPop var_D4
  loc_AF0FBE: LitStr " LEFT JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_AF0FC1: ConcatStr
  loc_AF0FC2: FStStrNoPop var_D8
  loc_AF0FC5: LitStr " WHERE asiento.PeriInfo = "
  loc_AF0FC8: ConcatStr
  loc_AF0FC9: FStStrNoPop var_E0
  loc_AF0FCC: FLdRfVar var_DC
  loc_AF0FCF: FLdPr Me
  loc_AF0FD2: VCallAd Control_ID_cboPeriodo
  loc_AF0FD5: FStAdFunc var_A8
  loc_AF0FD8: FLdPr var_A8
  loc_AF0FDB:  = Me.Text
  loc_AF0FE0: ILdRf var_DC
  loc_AF0FE3: ConcatStr
  loc_AF0FE4: FStStrNoPop var_E4
  loc_AF0FE7: LitStr " AND Month(FechAsie) <= "
  loc_AF0FEA: ConcatStr
  loc_AF0FEB: FStStrNoPop var_E8
  loc_AF0FEE: FLdPr Me
  loc_AF0FF1: MemLdStr global_124
  loc_AF0FF4: ConcatStr
  loc_AF0FF5: FStStrNoPop var_EC
  loc_AF0FF8: LitStr " AND (CodiTias = 7 Or CodiTias = 8 Or CodiTias = 9)"
  loc_AF0FFB: ConcatStr
  loc_AF0FFC: FStStrNoPop var_F0
  loc_AF0FFF: LitStr " AND moviasiento.CodiCuco <> paraconta.CarePaco AND moviasiento.CodiCuco <> paraconta.CajaPaco AND (cc.CodiTicu LIKE '5" & Chr(37) & "' or cc.CodiTicu LIKE '7" & Chr(37) & "')"
  loc_AF1002: ConcatStr
  loc_AF1003: FStStrNoPop var_F4
  loc_AF1006: LitStr " GROUP BY Left(cc.CodiTicu,3), CodiTias;"
  loc_AF1009: ConcatStr
  loc_AF100A: FStStrNoPop var_F8
  loc_AF100D: LitStr " INSERT INTO tmovi"
  loc_AF1010: ConcatStr
  loc_AF1011: FStStrNoPop var_FC
  loc_AF1014: LitStr " SELECT moviasiento.PeriInfo, concat(Left(CodiTicu,3),'0') as CodiTicu, CodiTias, 0 as AutoMoas, 0 as AumeMoas, 0 as DismMoas,"
  loc_AF1017: ConcatStr
  loc_AF1018: FStStrNoPop var_100
  loc_AF101B: LitStr " 0 as IngaMoas, if(CodiTias=9,sum(HabeMoas)-sum(DebeMoas),0) as IngtMoas FROM asiento"
  loc_AF101E: ConcatStr
  loc_AF101F: FStStrNoPop var_104
  loc_AF1022: LitStr " LEFT JOIN moviasiento ON moviasiento.PeriInfo = asiento.PeriInfo AND moviasiento.CodiAsie = asiento.CodiAsie"
  loc_AF1025: ConcatStr
  loc_AF1026: FStStrNoPop var_108
  loc_AF1029: LitStr " LEFT JOIN infogov.cuentacontable as cc on cc.PeriInfo = moviasiento.PeriInfo and cc.CodiCuco = moviasiento.CodiCuco"
  loc_AF102C: ConcatStr
  loc_AF102D: FStStrNoPop var_10C
  loc_AF1030: LitStr " LEFT JOIN paraconta ON paraconta.PeriInfo = asiento.PeriInfo"
  loc_AF1033: ConcatStr
  loc_AF1034: FStStrNoPop var_110
  loc_AF1037: LitStr " WHERE asiento.PeriInfo = "
  loc_AF103A: ConcatStr
  loc_AF103B: FStStrNoPop var_118
  loc_AF103E: FLdRfVar var_114
  loc_AF1041: FLdPr Me
  loc_AF1044: VCallAd Control_ID_cboPeriodo
  loc_AF1047: FStAdFunc var_B0
  loc_AF104A: FLdPr var_B0
  loc_AF104D:  = Me.Text
  loc_AF1052: ILdRf var_114
  loc_AF1055: ConcatStr
  loc_AF1056: FStStrNoPop var_11C
  loc_AF1059: LitStr " AND Month(FechAsie) BETWEEN "
  loc_AF105C: ConcatStr
  loc_AF105D: FStStrNoPop var_120
  loc_AF1060: FLdPr Me
  loc_AF1063: MemLdStr global_124
  loc_AF1066: CR8Str
  loc_AF1068: LitI2_Byte 2
  loc_AF106A: CR8I2
  loc_AF106B: SubR4
  loc_AF106C: CStrR8
  loc_AF106E: FStStrNoPop var_124
  loc_AF1071: ConcatStr
  loc_AF1072: FStStrNoPop var_128
  loc_AF1075: LitStr " AND "
  loc_AF1078: ConcatStr
  loc_AF1079: FStStrNoPop var_12C
  loc_AF107C: FLdPr Me
  loc_AF107F: MemLdStr global_124
  loc_AF1082: ConcatStr
  loc_AF1083: FStStrNoPop var_130
  loc_AF1086: LitStr " AND CodiTias = 9"
  loc_AF1089: ConcatStr
  loc_AF108A: FStStrNoPop var_134
  loc_AF108D: LitStr " AND moviasiento.CodiCuco <> paraconta.CarePaco AND moviasiento.CodiCuco <> paraconta.CajaPaco AND (cc.CodiTicu LIKE '5" & Chr(37) & "' or cc.CodiTicu LIKE '7" & Chr(37) & "')"
  loc_AF1090: ConcatStr
  loc_AF1091: FStStrNoPop var_138
  loc_AF1094: LitStr " GROUP BY Left(cc.CodiTicu,3), CodiTias;"
  loc_AF1097: ConcatStr
  loc_AF1098: FStStrNoPop var_13C
  loc_AF109B: FLdPr var_BC
  loc_AF109E: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF10A3: FFreeStr var_134 = "": var_138 = "": var_13C = "": var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E0 = "": var_DC = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_118 = "": var_114 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = ""
  loc_AF10E8: FFreeAd var_A8 = ""
  loc_AF10EF: LitStr "SELECT tmovi.CodiTicu, DetaTicu, Sum(AutoMoas) AutoMoas, Sum(AumeMoas) AumeMoas, Sum(DismMoas) DismMoas,"
  loc_AF10F2: LitStr " Sum(AutoMoas)+Sum(AumeMoas)-Sum(DismMoas) AutoTota, Sum(IngaMoas) IngaMoas, Sum(IngtMoas) IngtMoas,"
  loc_AF10F5: ConcatStr
  loc_AF10F6: FStStrNoPop var_B8
  loc_AF10F9: LitStr " Sum(AutoMoas)+Sum(AumeMoas)-Sum(DismMoas)-Sum(IngaMoas) DifeMoas"
  loc_AF10FC: ConcatStr
  loc_AF10FD: FStStrNoPop var_C0
  loc_AF1100: LitStr " FROM tmovi"
  loc_AF1103: ConcatStr
  loc_AF1104: FStStrNoPop var_C4
  loc_AF1107: LitStr " INNER JOIN tipocuco ON tipocuco.CodiTicu = tmovi.CodiTicu"
  loc_AF110A: ConcatStr
  loc_AF110B: FStStrNoPop var_C8
  loc_AF110E: LitStr " GROUP BY CodiTicu ORDER BY CodiTicu;"
  loc_AF1111: ConcatStr
  loc_AF1112: FStStrNoPop var_CC
  loc_AF1115: FLdPr var_BC
  loc_AF1118: Call clsbase.RedefineRS(from_stack_1v)
  loc_AF111D: FFreeStr var_B8 = "": var_C0 = "": var_C4 = "": var_C8 = ""
  loc_AF112A: FLdRfVar var_B4
  loc_AF112D: FLdPr var_BC
  loc_AF1130: from_stack_1 = clsbase.RecordCount
  loc_AF1135: ILdRf var_B4
  loc_AF1138: LitI4 0
  loc_AF113D: EqI4
  loc_AF113E: BranchF loc_AF1151
  loc_AF1141: LitI4 0
  loc_AF1146: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_AF1149: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AF114E: Branch loc_AF13A0
  loc_AF1151: LitI4 0
  loc_AF1156: LitI4 1
  loc_AF115B: FLdPr Me
  loc_AF115E: MemLdRfVar from_stack_1.global_104
  loc_AF1161: Redim
  loc_AF116B: LitI2_Byte 0
  loc_AF116D: FLdPr Me
  loc_AF1170: MemStI2 global_108
  loc_AF1173: LitI4 0
  loc_AF1178: FLdPr Me
  loc_AF117B: MemLdI2 global_108
  loc_AF117E: CI4UI1
  loc_AF117F: FLdPr Me
  loc_AF1182: MemLdRfVar from_stack_1.global_100
  loc_AF1185: Redim
  loc_AF118F: FLdPr var_BC
  loc_AF1192: Call clsbase.MoveFirst()
  loc_AF1197: Call Proc_163_19_9EFA74()
  loc_AF119C: FLdRfVar var_AA
  loc_AF119F: FLdPr var_BC
  loc_AF11A2: from_stack_1 = clsbase.EOF
  loc_AF11A7: FLdI2 var_AA
  loc_AF11AA: NotI4
  loc_AF11AB: BranchF loc_AF12CD
  loc_AF11AE: FLdRfVar var_158
  loc_AF11B1: FLdRfVar var_148
  loc_AF11B4: LitVarStr var_94, "CodiTicu"
  loc_AF11B9: PopAdLdVar
  loc_AF11BA: FLdRfVar var_B0
  loc_AF11BD: FLdRfVar var_A8
  loc_AF11C0: FLdPr var_BC
  loc_AF11C3: from_stack_1v = clsbase.RsFrmGet()
  loc_AF11C8: FLdPr var_A8
  loc_AF11CB:  = Me.Fields
  loc_AF11D0: FLdPr var_B0
  loc_AF11D3: from_stack_2 = Me.Item(from_stack_1)
  loc_AF11D8: FLdPr var_148
  loc_AF11DB:  = Me.Value
  loc_AF11E0: LitI4 1
  loc_AF11E5: FLdPr Me
  loc_AF11E8: MemLdI2 global_108
  loc_AF11EB: CI4UI1
  loc_AF11EC: FLdPr Me
  loc_AF11EF: MemLdStr global_100
  loc_AF11F2: Ary1LdPr
  loc_AF11F3: MemLdStr global_8
  loc_AF11F6: ImpAdCallI2 Left$(, )
  loc_AF11FB: FStStrNoPop var_C0
  loc_AF11FE: LitI4 1
  loc_AF1203: FLdRfVar var_158
  loc_AF1206: CStrVarTmp
  loc_AF1207: FStStrNoPop var_B8
  loc_AF120A: ImpAdCallI2 Left$(, )
  loc_AF120F: FStStrNoPop var_C4
  loc_AF1212: NeStr
  loc_AF1214: FFreeStr var_B8 = "": var_C0 = ""
  loc_AF121D: FFreeAd var_A8 = "": var_B0 = ""
  loc_AF1226: FFree1Var var_158 = ""
  loc_AF1229: BranchF loc_AF1234
  loc_AF122C: Call Proc_163_19_9EFA74()
  loc_AF1231: Branch loc_AF12CA
  loc_AF1234: FLdRfVar var_158
  loc_AF1237: FLdRfVar var_148
  loc_AF123A: LitVarStr var_94, "CodiTicu"
  loc_AF123F: PopAdLdVar
  loc_AF1240: FLdRfVar var_B0
  loc_AF1243: FLdRfVar var_A8
  loc_AF1246: FLdPr var_BC
  loc_AF1249: from_stack_1v = clsbase.RsFrmGet()
  loc_AF124E: FLdPr var_A8
  loc_AF1251:  = Me.Fields
  loc_AF1256: FLdPr var_B0
  loc_AF1259: from_stack_2 = Me.Item(from_stack_1)
  loc_AF125E: FLdPr var_148
  loc_AF1261:  = Me.Value
  loc_AF1266: LitI4 2
  loc_AF126B: FLdPr Me
  loc_AF126E: MemLdI2 global_110
  loc_AF1271: CI4UI1
  loc_AF1272: FLdPr Me
  loc_AF1275: MemLdI2 global_108
  loc_AF1278: CI4UI1
  loc_AF1279: FLdPr Me
  loc_AF127C: MemLdStr global_100
  loc_AF127F: Ary1LdPr
  loc_AF1280: MemLdStr global_44
  loc_AF1283: Ary1LdPr
  loc_AF1284: MemLdStr global_0
  loc_AF1287: ImpAdCallI2 Left$(, )
  loc_AF128C: FStStrNoPop var_C0
  loc_AF128F: LitI4 2
  loc_AF1294: FLdRfVar var_158
  loc_AF1297: CStrVarTmp
  loc_AF1298: FStStrNoPop var_B8
  loc_AF129B: ImpAdCallI2 Left$(, )
  loc_AF12A0: FStStrNoPop var_C4
  loc_AF12A3: NeStr
  loc_AF12A5: FFreeStr var_B8 = "": var_C0 = ""
  loc_AF12AE: FFreeAd var_A8 = "": var_B0 = ""
  loc_AF12B7: FFree1Var var_158 = ""
  loc_AF12BA: BranchF loc_AF12C5
  loc_AF12BD: Call Proc_163_20_A0E66C()
  loc_AF12C2: Branch loc_AF12CA
  loc_AF12C5: Call Proc_163_21_A95D64()
  loc_AF12CA: Branch loc_AF119C
  loc_AF12CD: LitNothing
  loc_AF12CF: FStAd var_BC 
  loc_AF12D3: LitI2_Byte 1
  loc_AF12D5: FLdPr Me
  loc_AF12D8: MemLdRfVar from_stack_1.global_108
  loc_AF12DB: FLdPr Me
  loc_AF12DE: MemLdStr global_100
  loc_AF12E1: LitI2_Byte 1
  loc_AF12E3: FnUBound
  loc_AF12E5: CI2I4
  loc_AF12E6: ForI2 var_15C
  loc_AF12EC: LitI2_Byte 1
  loc_AF12EE: FLdPr Me
  loc_AF12F1: MemLdRfVar from_stack_1.global_110
  loc_AF12F4: FLdPr Me
  loc_AF12F7: MemLdI2 global_108
  loc_AF12FA: CI4UI1
  loc_AF12FB: FLdPr Me
  loc_AF12FE: MemLdStr global_100
  loc_AF1301: Ary1LdPr
  loc_AF1302: MemLdStr global_44
  loc_AF1305: LitI2_Byte 1
  loc_AF1307: FnUBound
  loc_AF1309: CI2I4
  loc_AF130A: ForI2 var_160
  loc_AF1310: FLdPr Me
  loc_AF1313: MemLdI2 global_108
  loc_AF1316: CI4UI1
  loc_AF1317: FLdPr Me
  loc_AF131A: MemLdStr global_100
  loc_AF131D: AryLock
  loc_AF1320: Ary1LdPr
  loc_AF1321: MemLdRfVar from_stack_1.global_8
  loc_AF1324: FLdPr Me
  loc_AF1327: MemLdI2 global_110
  loc_AF132A: CI4UI1
  loc_AF132B: FLdPr Me
  loc_AF132E: MemLdI2 global_108
  loc_AF1331: CI4UI1
  loc_AF1332: FLdPr Me
  loc_AF1335: MemLdStr global_100
  loc_AF1338: AryLock
  loc_AF133B: Ary1LdPr
  loc_AF133C: MemLdStr global_44
  loc_AF133F: AryLock
  loc_AF1342: Ary1LdPr
  loc_AF1343: MemLdRfVar from_stack_1.global_0
  loc_AF1346: Call Proc_163_22_9C96C4()
  loc_AF134B: AryUnlock
  loc_AF134E: AryUnlock
  loc_AF1351: AryUnlock
  loc_AF1354: FLdPr Me
  loc_AF1357: MemLdRfVar from_stack_1.global_110
  loc_AF135A: NextI2 var_160, loc_AF1310
  loc_AF135F: LitI4 1
  loc_AF1364: FLdPr Me
  loc_AF1367: MemLdStr global_104
  loc_AF136A: AryLock
  loc_AF136D: Ary1LdRf
  loc_AF136E: FLdPr Me
  loc_AF1371: MemLdI2 global_108
  loc_AF1374: CI4UI1
  loc_AF1375: FLdPr Me
  loc_AF1378: MemLdStr global_100
  loc_AF137B: AryLock
  loc_AF137E: Ary1LdPr
  loc_AF137F: MemLdRfVar from_stack_1.global_8
  loc_AF1382: Call Proc_163_22_9C96C4()
  loc_AF1387: AryUnlock
  loc_AF138A: AryUnlock
  loc_AF138D: FLdPr Me
  loc_AF1390: MemLdRfVar from_stack_1.global_108
  loc_AF1393: NextI2 var_15C, loc_AF12EC
  loc_AF1398: LitI2_Byte &HFF
  loc_AF139A: FLdPr Me
  loc_AF139D: MemStI2 bGenerado
  loc_AF13A0: LitI4 0
  loc_AF13A5: CI2I4
  loc_AF13A6: FLdPr Me
  loc_AF13A9: Me.MousePointer = from_stack_1
  loc_AF13AE: LitVarStr var_94, vbNullString
  loc_AF13B3: PopAdLdVar
  loc_AF13B4: FLdPr Me
  loc_AF13B7: VCallAd Control_ID_statusBar
  loc_AF13BA: FStAdFunc var_A8
  loc_AF13BD: FLdPr var_A8
  loc_AF13C0: LateIdSt
  loc_AF13C5: FFree1Ad var_A8
  loc_AF13C8: ExitProcHresult
  loc_AF13C9: PopAdLd4
End Sub

Public Sub GeneraHTML() 'B0DB40
  'Data Table: 457920
  loc_B0D30C: FLdRfVar var_88
  loc_B0D30F: LitI2_Byte 0
  loc_B0D311: LitI2_Byte &HFF
  loc_B0D313: ImpAdLdI4 MemVar_C3D83C
  loc_B0D316: FLdPr Me
  loc_B0D319: MemLdRfVar from_stack_1.global_80
  loc_B0D31C: NewIfNullPr IFileSystem3
  loc_B0D31F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B0D324: ILdRf var_88
  loc_B0D327: FLdPr Me
  loc_B0D32A: MemStVarAd
  loc_B0D32E: FFree1Ad var_88
  loc_B0D331: Call Proc_163_23_A8E494()
  loc_B0D336: LitI2_Byte 1
  loc_B0D338: FLdPr Me
  loc_B0D33B: MemLdRfVar from_stack_1.global_108
  loc_B0D33E: FLdPr Me
  loc_B0D341: MemLdStr global_100
  loc_B0D344: LitI2_Byte 1
  loc_B0D346: FnUBound
  loc_B0D348: CI2I4
  loc_B0D349: ForI2 var_8C
  loc_B0D34F: FLdPr Me
  loc_B0D352: MemLdI2 global_108
  loc_B0D355: CI4UI1
  loc_B0D356: FLdPr Me
  loc_B0D359: MemLdStr global_100
  loc_B0D35C: AryLock
  loc_B0D35F: Ary1LdRf
  loc_B0D360: FStR4 var_94
  loc_B0D363: LitVarStr var_A4, "  <tr align=""left"" class=""Totales2"">"
  loc_B0D368: PopAdLdVar
  loc_B0D369: FLdPr Me
  loc_B0D36C: MemLdRfVar from_stack_1.htmFile
  loc_B0D36F: LdPrVar
  loc_B0D371: LateMemCall
  loc_B0D377: LitI4 0
  loc_B0D37C: LitI4 0
  loc_B0D381: LitI2_Byte 0
  loc_B0D383: LitStr "left"
  loc_B0D386: LitStr "I. "
  loc_B0D389: FMemLdR4 var_94(8)
  loc_B0D38E: ConcatStr
  loc_B0D38F: FStStrNoPop var_B8
  loc_B0D392: LitStr " - "
  loc_B0D395: ConcatStr
  loc_B0D396: FStStrNoPop var_BC
  loc_B0D399: FMemLdR4 var_94(12)
  loc_B0D39E: ConcatStr
  loc_B0D39F: FStStrNoPop var_C0
  loc_B0D3A2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D3A7: CVarStr var_D0
  loc_B0D3AA: PopAdLdVar
  loc_B0D3AB: FLdPr Me
  loc_B0D3AE: MemLdRfVar from_stack_1.htmFile
  loc_B0D3B1: LdPrVar
  loc_B0D3B3: LateMemCall
  loc_B0D3B9: FFreeStr var_B8 = "": var_BC = ""
  loc_B0D3C2: FFree1Var var_D0 = ""
  loc_B0D3C5: LitI4 0
  loc_B0D3CA: LitI4 0
  loc_B0D3CF: LitI2_Byte &HFF
  loc_B0D3D1: LitStr "right"
  loc_B0D3D4: FMemLdR4 var_94(16)
  loc_B0D3D9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D3DE: CVarStr var_D0
  loc_B0D3E1: PopAdLdVar
  loc_B0D3E2: FLdPr Me
  loc_B0D3E5: MemLdRfVar from_stack_1.htmFile
  loc_B0D3E8: LdPrVar
  loc_B0D3EA: LateMemCall
  loc_B0D3F0: FFree1Var var_D0 = ""
  loc_B0D3F3: LitI4 0
  loc_B0D3F8: LitI4 0
  loc_B0D3FD: LitI2_Byte &HFF
  loc_B0D3FF: LitStr "right"
  loc_B0D402: FMemLdR4 var_94(20)
  loc_B0D407: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D40C: CVarStr var_D0
  loc_B0D40F: PopAdLdVar
  loc_B0D410: FLdPr Me
  loc_B0D413: MemLdRfVar from_stack_1.htmFile
  loc_B0D416: LdPrVar
  loc_B0D418: LateMemCall
  loc_B0D41E: FFree1Var var_D0 = ""
  loc_B0D421: LitI4 0
  loc_B0D426: LitI4 0
  loc_B0D42B: LitI2_Byte &HFF
  loc_B0D42D: LitStr "right"
  loc_B0D430: FMemLdR4 var_94(24)
  loc_B0D435: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D43A: CVarStr var_D0
  loc_B0D43D: PopAdLdVar
  loc_B0D43E: FLdPr Me
  loc_B0D441: MemLdRfVar from_stack_1.htmFile
  loc_B0D444: LdPrVar
  loc_B0D446: LateMemCall
  loc_B0D44C: FFree1Var var_D0 = ""
  loc_B0D44F: LitI4 0
  loc_B0D454: LitI4 0
  loc_B0D459: LitI2_Byte &HFF
  loc_B0D45B: LitStr "right"
  loc_B0D45E: FMemLdR4 var_94(28)
  loc_B0D463: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D468: CVarStr var_D0
  loc_B0D46B: PopAdLdVar
  loc_B0D46C: FLdPr Me
  loc_B0D46F: MemLdRfVar from_stack_1.htmFile
  loc_B0D472: LdPrVar
  loc_B0D474: LateMemCall
  loc_B0D47A: FFree1Var var_D0 = ""
  loc_B0D47D: LitI4 0
  loc_B0D482: LitI4 0
  loc_B0D487: LitI2_Byte &HFF
  loc_B0D489: LitStr "right"
  loc_B0D48C: FMemLdR4 var_94(32)
  loc_B0D491: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D496: CVarStr var_D0
  loc_B0D499: PopAdLdVar
  loc_B0D49A: FLdPr Me
  loc_B0D49D: MemLdRfVar from_stack_1.htmFile
  loc_B0D4A0: LdPrVar
  loc_B0D4A2: LateMemCall
  loc_B0D4A8: FFree1Var var_D0 = ""
  loc_B0D4AB: LitI4 0
  loc_B0D4B0: LitI4 0
  loc_B0D4B5: LitI2_Byte &HFF
  loc_B0D4B7: LitStr "right"
  loc_B0D4BA: FMemLdR4 var_94(36)
  loc_B0D4BF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D4C4: CVarStr var_D0
  loc_B0D4C7: PopAdLdVar
  loc_B0D4C8: FLdPr Me
  loc_B0D4CB: MemLdRfVar from_stack_1.htmFile
  loc_B0D4CE: LdPrVar
  loc_B0D4D0: LateMemCall
  loc_B0D4D6: FFree1Var var_D0 = ""
  loc_B0D4D9: LitI4 0
  loc_B0D4DE: LitI4 0
  loc_B0D4E3: LitI2_Byte &HFF
  loc_B0D4E5: LitStr "right"
  loc_B0D4E8: FMemLdR4 var_94(40)
  loc_B0D4ED: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D4F2: CVarStr var_D0
  loc_B0D4F5: PopAdLdVar
  loc_B0D4F6: FLdPr Me
  loc_B0D4F9: MemLdRfVar from_stack_1.htmFile
  loc_B0D4FC: LdPrVar
  loc_B0D4FE: LateMemCall
  loc_B0D504: FFree1Var var_D0 = ""
  loc_B0D507: LitVarStr var_A4, "     </tr>"
  loc_B0D50C: PopAdLdVar
  loc_B0D50D: FLdPr Me
  loc_B0D510: MemLdRfVar from_stack_1.htmFile
  loc_B0D513: LdPrVar
  loc_B0D515: LateMemCall
  loc_B0D51B: LitI4 0
  loc_B0D520: FStR4 var_94
  loc_B0D523: AryUnlock
  loc_B0D526: LitI2_Byte 1
  loc_B0D528: FLdPr Me
  loc_B0D52B: MemLdRfVar from_stack_1.global_110
  loc_B0D52E: FLdPr Me
  loc_B0D531: MemLdI2 global_108
  loc_B0D534: CI4UI1
  loc_B0D535: FLdPr Me
  loc_B0D538: MemLdStr global_100
  loc_B0D53B: Ary1LdPr
  loc_B0D53C: MemLdStr global_44
  loc_B0D53F: LitI2_Byte 1
  loc_B0D541: FnUBound
  loc_B0D543: CI2I4
  loc_B0D544: ForI2 var_D4
  loc_B0D54A: FLdPr Me
  loc_B0D54D: MemLdI2 global_110
  loc_B0D550: CI4UI1
  loc_B0D551: FLdPr Me
  loc_B0D554: MemLdI2 global_108
  loc_B0D557: CI4UI1
  loc_B0D558: FLdPr Me
  loc_B0D55B: MemLdStr global_100
  loc_B0D55E: AryLock
  loc_B0D561: Ary1LdPr
  loc_B0D562: MemLdStr global_44
  loc_B0D565: AryLock
  loc_B0D568: Ary1LdRf
  loc_B0D569: FStR4 var_E0
  loc_B0D56C: LitVarStr var_A4, "  <tr align=""left"" class=""Totales3"">"
  loc_B0D571: PopAdLdVar
  loc_B0D572: FLdPr Me
  loc_B0D575: MemLdRfVar from_stack_1.htmFile
  loc_B0D578: LdPrVar
  loc_B0D57A: LateMemCall
  loc_B0D580: LitI4 0
  loc_B0D585: LitI4 0
  loc_B0D58A: LitI2_Byte 0
  loc_B0D58C: LitStr "left"
  loc_B0D58F: LitStr "II. "
  loc_B0D592: FMemLdR4 var_E0(0)
  loc_B0D597: ConcatStr
  loc_B0D598: FStStrNoPop var_B8
  loc_B0D59B: LitStr " - "
  loc_B0D59E: ConcatStr
  loc_B0D59F: FStStrNoPop var_BC
  loc_B0D5A2: FMemLdR4 var_E0(4)
  loc_B0D5A7: ConcatStr
  loc_B0D5A8: FStStrNoPop var_C0
  loc_B0D5AB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D5B0: CVarStr var_D0
  loc_B0D5B3: PopAdLdVar
  loc_B0D5B4: FLdPr Me
  loc_B0D5B7: MemLdRfVar from_stack_1.htmFile
  loc_B0D5BA: LdPrVar
  loc_B0D5BC: LateMemCall
  loc_B0D5C2: FFreeStr var_B8 = "": var_BC = ""
  loc_B0D5CB: FFree1Var var_D0 = ""
  loc_B0D5CE: LitI4 0
  loc_B0D5D3: LitI4 0
  loc_B0D5D8: LitI2_Byte &HFF
  loc_B0D5DA: LitStr "right"
  loc_B0D5DD: FMemLdR4 var_E0(8)
  loc_B0D5E2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D5E7: CVarStr var_D0
  loc_B0D5EA: PopAdLdVar
  loc_B0D5EB: FLdPr Me
  loc_B0D5EE: MemLdRfVar from_stack_1.htmFile
  loc_B0D5F1: LdPrVar
  loc_B0D5F3: LateMemCall
  loc_B0D5F9: FFree1Var var_D0 = ""
  loc_B0D5FC: LitI4 0
  loc_B0D601: LitI4 0
  loc_B0D606: LitI2_Byte &HFF
  loc_B0D608: LitStr "right"
  loc_B0D60B: FMemLdR4 var_E0(12)
  loc_B0D610: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D615: CVarStr var_D0
  loc_B0D618: PopAdLdVar
  loc_B0D619: FLdPr Me
  loc_B0D61C: MemLdRfVar from_stack_1.htmFile
  loc_B0D61F: LdPrVar
  loc_B0D621: LateMemCall
  loc_B0D627: FFree1Var var_D0 = ""
  loc_B0D62A: LitI4 0
  loc_B0D62F: LitI4 0
  loc_B0D634: LitI2_Byte &HFF
  loc_B0D636: LitStr "right"
  loc_B0D639: FMemLdR4 var_E0(16)
  loc_B0D63E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D643: CVarStr var_D0
  loc_B0D646: PopAdLdVar
  loc_B0D647: FLdPr Me
  loc_B0D64A: MemLdRfVar from_stack_1.htmFile
  loc_B0D64D: LdPrVar
  loc_B0D64F: LateMemCall
  loc_B0D655: FFree1Var var_D0 = ""
  loc_B0D658: LitI4 0
  loc_B0D65D: LitI4 0
  loc_B0D662: LitI2_Byte &HFF
  loc_B0D664: LitStr "right"
  loc_B0D667: FMemLdR4 var_E0(20)
  loc_B0D66C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D671: CVarStr var_D0
  loc_B0D674: PopAdLdVar
  loc_B0D675: FLdPr Me
  loc_B0D678: MemLdRfVar from_stack_1.htmFile
  loc_B0D67B: LdPrVar
  loc_B0D67D: LateMemCall
  loc_B0D683: FFree1Var var_D0 = ""
  loc_B0D686: LitI4 0
  loc_B0D68B: LitI4 0
  loc_B0D690: LitI2_Byte &HFF
  loc_B0D692: LitStr "right"
  loc_B0D695: FMemLdR4 var_E0(24)
  loc_B0D69A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D69F: CVarStr var_D0
  loc_B0D6A2: PopAdLdVar
  loc_B0D6A3: FLdPr Me
  loc_B0D6A6: MemLdRfVar from_stack_1.htmFile
  loc_B0D6A9: LdPrVar
  loc_B0D6AB: LateMemCall
  loc_B0D6B1: FFree1Var var_D0 = ""
  loc_B0D6B4: LitI4 0
  loc_B0D6B9: LitI4 0
  loc_B0D6BE: LitI2_Byte &HFF
  loc_B0D6C0: LitStr "right"
  loc_B0D6C3: FMemLdR4 var_E0(28)
  loc_B0D6C8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D6CD: CVarStr var_D0
  loc_B0D6D0: PopAdLdVar
  loc_B0D6D1: FLdPr Me
  loc_B0D6D4: MemLdRfVar from_stack_1.htmFile
  loc_B0D6D7: LdPrVar
  loc_B0D6D9: LateMemCall
  loc_B0D6DF: FFree1Var var_D0 = ""
  loc_B0D6E2: LitI4 0
  loc_B0D6E7: LitI4 0
  loc_B0D6EC: LitI2_Byte &HFF
  loc_B0D6EE: LitStr "right"
  loc_B0D6F1: FMemLdR4 var_E0(32)
  loc_B0D6F6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D6FB: CVarStr var_D0
  loc_B0D6FE: PopAdLdVar
  loc_B0D6FF: FLdPr Me
  loc_B0D702: MemLdRfVar from_stack_1.htmFile
  loc_B0D705: LdPrVar
  loc_B0D707: LateMemCall
  loc_B0D70D: FFree1Var var_D0 = ""
  loc_B0D710: LitVarStr var_A4, "     </tr>"
  loc_B0D715: PopAdLdVar
  loc_B0D716: FLdPr Me
  loc_B0D719: MemLdRfVar from_stack_1.htmFile
  loc_B0D71C: LdPrVar
  loc_B0D71E: LateMemCall
  loc_B0D724: LitI4 0
  loc_B0D729: FStR4 var_E0
  loc_B0D72C: AryUnlock
  loc_B0D72F: AryUnlock
  loc_B0D732: LitI2_Byte 1
  loc_B0D734: FLdPr Me
  loc_B0D737: MemLdRfVar from_stack_1.global_112
  loc_B0D73A: FLdPr Me
  loc_B0D73D: MemLdI2 global_110
  loc_B0D740: CI4UI1
  loc_B0D741: FLdPr Me
  loc_B0D744: MemLdI2 global_108
  loc_B0D747: CI4UI1
  loc_B0D748: FLdPr Me
  loc_B0D74B: MemLdStr global_100
  loc_B0D74E: Ary1LdPr
  loc_B0D74F: MemLdStr global_44
  loc_B0D752: Ary1LdPr
  loc_B0D753: MemLdStr global_36
  loc_B0D756: LitI2_Byte 1
  loc_B0D758: FnUBound
  loc_B0D75A: CI2I4
  loc_B0D75B: ForI2 var_E4
  loc_B0D761: FLdPr Me
  loc_B0D764: MemLdI2 global_112
  loc_B0D767: CI4UI1
  loc_B0D768: FLdPr Me
  loc_B0D76B: MemLdI2 global_110
  loc_B0D76E: CI4UI1
  loc_B0D76F: FLdPr Me
  loc_B0D772: MemLdI2 global_108
  loc_B0D775: CI4UI1
  loc_B0D776: FLdPr Me
  loc_B0D779: MemLdStr global_100
  loc_B0D77C: AryLock
  loc_B0D77F: Ary1LdPr
  loc_B0D780: MemLdStr global_44
  loc_B0D783: AryLock
  loc_B0D786: Ary1LdPr
  loc_B0D787: MemLdStr global_36
  loc_B0D78A: AryLock
  loc_B0D78D: Ary1LdRf
  loc_B0D78E: FStR4 var_F4
  loc_B0D791: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0D796: PopAdLdVar
  loc_B0D797: FLdPr Me
  loc_B0D79A: MemLdRfVar from_stack_1.htmFile
  loc_B0D79D: LdPrVar
  loc_B0D79F: LateMemCall
  loc_B0D7A5: LitI4 0
  loc_B0D7AA: LitI4 0
  loc_B0D7AF: LitI2_Byte 0
  loc_B0D7B1: LitStr "left"
  loc_B0D7B4: FMemLdR4 var_F4(0)
  loc_B0D7B9: LitStr " - "
  loc_B0D7BC: ConcatStr
  loc_B0D7BD: FStStrNoPop var_B8
  loc_B0D7C0: FMemLdR4 var_F4(4)
  loc_B0D7C5: ConcatStr
  loc_B0D7C6: FStStrNoPop var_BC
  loc_B0D7C9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D7CE: CVarStr var_D0
  loc_B0D7D1: PopAdLdVar
  loc_B0D7D2: FLdPr Me
  loc_B0D7D5: MemLdRfVar from_stack_1.htmFile
  loc_B0D7D8: LdPrVar
  loc_B0D7DA: LateMemCall
  loc_B0D7E0: FFreeStr var_B8 = ""
  loc_B0D7E7: FFree1Var var_D0 = ""
  loc_B0D7EA: LitI4 0
  loc_B0D7EF: LitI4 0
  loc_B0D7F4: LitI2_Byte &HFF
  loc_B0D7F6: LitStr "right"
  loc_B0D7F9: FMemLdR4 var_F4(8)
  loc_B0D7FE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D803: CVarStr var_D0
  loc_B0D806: PopAdLdVar
  loc_B0D807: FLdPr Me
  loc_B0D80A: MemLdRfVar from_stack_1.htmFile
  loc_B0D80D: LdPrVar
  loc_B0D80F: LateMemCall
  loc_B0D815: FFree1Var var_D0 = ""
  loc_B0D818: LitI4 0
  loc_B0D81D: LitI4 0
  loc_B0D822: LitI2_Byte &HFF
  loc_B0D824: LitStr "right"
  loc_B0D827: FMemLdR4 var_F4(12)
  loc_B0D82C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D831: CVarStr var_D0
  loc_B0D834: PopAdLdVar
  loc_B0D835: FLdPr Me
  loc_B0D838: MemLdRfVar from_stack_1.htmFile
  loc_B0D83B: LdPrVar
  loc_B0D83D: LateMemCall
  loc_B0D843: FFree1Var var_D0 = ""
  loc_B0D846: LitI4 0
  loc_B0D84B: LitI4 0
  loc_B0D850: LitI2_Byte &HFF
  loc_B0D852: LitStr "right"
  loc_B0D855: FMemLdR4 var_F4(16)
  loc_B0D85A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D85F: CVarStr var_D0
  loc_B0D862: PopAdLdVar
  loc_B0D863: FLdPr Me
  loc_B0D866: MemLdRfVar from_stack_1.htmFile
  loc_B0D869: LdPrVar
  loc_B0D86B: LateMemCall
  loc_B0D871: FFree1Var var_D0 = ""
  loc_B0D874: LitI4 0
  loc_B0D879: LitI4 0
  loc_B0D87E: LitI2_Byte &HFF
  loc_B0D880: LitStr "right"
  loc_B0D883: FMemLdR4 var_F4(20)
  loc_B0D888: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D88D: CVarStr var_D0
  loc_B0D890: PopAdLdVar
  loc_B0D891: FLdPr Me
  loc_B0D894: MemLdRfVar from_stack_1.htmFile
  loc_B0D897: LdPrVar
  loc_B0D899: LateMemCall
  loc_B0D89F: FFree1Var var_D0 = ""
  loc_B0D8A2: LitI4 0
  loc_B0D8A7: LitI4 0
  loc_B0D8AC: LitI2_Byte &HFF
  loc_B0D8AE: LitStr "right"
  loc_B0D8B1: FMemLdR4 var_F4(24)
  loc_B0D8B6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D8BB: CVarStr var_D0
  loc_B0D8BE: PopAdLdVar
  loc_B0D8BF: FLdPr Me
  loc_B0D8C2: MemLdRfVar from_stack_1.htmFile
  loc_B0D8C5: LdPrVar
  loc_B0D8C7: LateMemCall
  loc_B0D8CD: FFree1Var var_D0 = ""
  loc_B0D8D0: LitI4 0
  loc_B0D8D5: LitI4 0
  loc_B0D8DA: LitI2_Byte &HFF
  loc_B0D8DC: LitStr "right"
  loc_B0D8DF: FMemLdR4 var_F4(28)
  loc_B0D8E4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D8E9: CVarStr var_D0
  loc_B0D8EC: PopAdLdVar
  loc_B0D8ED: FLdPr Me
  loc_B0D8F0: MemLdRfVar from_stack_1.htmFile
  loc_B0D8F3: LdPrVar
  loc_B0D8F5: LateMemCall
  loc_B0D8FB: FFree1Var var_D0 = ""
  loc_B0D8FE: LitI4 0
  loc_B0D903: LitI4 0
  loc_B0D908: LitI2_Byte &HFF
  loc_B0D90A: LitStr "right"
  loc_B0D90D: FMemLdR4 var_F4(32)
  loc_B0D912: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D917: CVarStr var_D0
  loc_B0D91A: PopAdLdVar
  loc_B0D91B: FLdPr Me
  loc_B0D91E: MemLdRfVar from_stack_1.htmFile
  loc_B0D921: LdPrVar
  loc_B0D923: LateMemCall
  loc_B0D929: FFree1Var var_D0 = ""
  loc_B0D92C: LitVarStr var_A4, "     </tr>"
  loc_B0D931: PopAdLdVar
  loc_B0D932: FLdPr Me
  loc_B0D935: MemLdRfVar from_stack_1.htmFile
  loc_B0D938: LdPrVar
  loc_B0D93A: LateMemCall
  loc_B0D940: LitI4 0
  loc_B0D945: FStR4 var_F4
  loc_B0D948: AryUnlock
  loc_B0D94B: AryUnlock
  loc_B0D94E: AryUnlock
  loc_B0D951: FLdPr Me
  loc_B0D954: MemLdRfVar from_stack_1.global_112
  loc_B0D957: NextI2 var_E4, loc_B0D761
  loc_B0D95C: FLdPr Me
  loc_B0D95F: MemLdRfVar from_stack_1.global_110
  loc_B0D962: NextI2 var_D4, loc_B0D54A
  loc_B0D967: FLdPr Me
  loc_B0D96A: MemLdRfVar from_stack_1.global_108
  loc_B0D96D: NextI2 var_8C, loc_B0D34F
  loc_B0D972: LitVarStr var_A4, " <tr class=""Totales"">"
  loc_B0D977: PopAdLdVar
  loc_B0D978: FLdPr Me
  loc_B0D97B: MemLdRfVar from_stack_1.htmFile
  loc_B0D97E: LdPrVar
  loc_B0D980: LateMemCall
  loc_B0D986: LitI4 0
  loc_B0D98B: LitI4 0
  loc_B0D990: LitI2_Byte 0
  loc_B0D992: LitStr "right"
  loc_B0D995: LitStr "Totales"
  loc_B0D998: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D99D: CVarStr var_D0
  loc_B0D9A0: PopAdLdVar
  loc_B0D9A1: FLdPr Me
  loc_B0D9A4: MemLdRfVar from_stack_1.htmFile
  loc_B0D9A7: LdPrVar
  loc_B0D9A9: LateMemCall
  loc_B0D9AF: FFree1Var var_D0 = ""
  loc_B0D9B2: LitI4 1
  loc_B0D9B7: FLdPr Me
  loc_B0D9BA: MemLdStr global_104
  loc_B0D9BD: AryLock
  loc_B0D9C0: Ary1LdRf
  loc_B0D9C1: FStR4 var_FC
  loc_B0D9C4: LitI4 0
  loc_B0D9C9: LitI4 0
  loc_B0D9CE: LitI2_Byte &HFF
  loc_B0D9D0: LitStr "right"
  loc_B0D9D3: FMemLdR4 var_FC(8)
  loc_B0D9D8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0D9DD: CVarStr var_D0
  loc_B0D9E0: PopAdLdVar
  loc_B0D9E1: FLdPr Me
  loc_B0D9E4: MemLdRfVar from_stack_1.htmFile
  loc_B0D9E7: LdPrVar
  loc_B0D9E9: LateMemCall
  loc_B0D9EF: FFree1Var var_D0 = ""
  loc_B0D9F2: LitI4 0
  loc_B0D9F7: LitI4 0
  loc_B0D9FC: LitI2_Byte &HFF
  loc_B0D9FE: LitStr "right"
  loc_B0DA01: FMemLdR4 var_FC(12)
  loc_B0DA06: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0DA0B: CVarStr var_D0
  loc_B0DA0E: PopAdLdVar
  loc_B0DA0F: FLdPr Me
  loc_B0DA12: MemLdRfVar from_stack_1.htmFile
  loc_B0DA15: LdPrVar
  loc_B0DA17: LateMemCall
  loc_B0DA1D: FFree1Var var_D0 = ""
  loc_B0DA20: LitI4 0
  loc_B0DA25: LitI4 0
  loc_B0DA2A: LitI2_Byte &HFF
  loc_B0DA2C: LitStr "right"
  loc_B0DA2F: FMemLdR4 var_FC(16)
  loc_B0DA34: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0DA39: CVarStr var_D0
  loc_B0DA3C: PopAdLdVar
  loc_B0DA3D: FLdPr Me
  loc_B0DA40: MemLdRfVar from_stack_1.htmFile
  loc_B0DA43: LdPrVar
  loc_B0DA45: LateMemCall
  loc_B0DA4B: FFree1Var var_D0 = ""
  loc_B0DA4E: LitI4 0
  loc_B0DA53: LitI4 0
  loc_B0DA58: LitI2_Byte &HFF
  loc_B0DA5A: LitStr "right"
  loc_B0DA5D: FMemLdR4 var_FC(20)
  loc_B0DA62: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0DA67: CVarStr var_D0
  loc_B0DA6A: PopAdLdVar
  loc_B0DA6B: FLdPr Me
  loc_B0DA6E: MemLdRfVar from_stack_1.htmFile
  loc_B0DA71: LdPrVar
  loc_B0DA73: LateMemCall
  loc_B0DA79: FFree1Var var_D0 = ""
  loc_B0DA7C: LitI4 0
  loc_B0DA81: LitI4 0
  loc_B0DA86: LitI2_Byte &HFF
  loc_B0DA88: LitStr "right"
  loc_B0DA8B: FMemLdR4 var_FC(24)
  loc_B0DA90: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0DA95: CVarStr var_D0
  loc_B0DA98: PopAdLdVar
  loc_B0DA99: FLdPr Me
  loc_B0DA9C: MemLdRfVar from_stack_1.htmFile
  loc_B0DA9F: LdPrVar
  loc_B0DAA1: LateMemCall
  loc_B0DAA7: FFree1Var var_D0 = ""
  loc_B0DAAA: LitI4 0
  loc_B0DAAF: LitI4 0
  loc_B0DAB4: LitI2_Byte &HFF
  loc_B0DAB6: LitStr "right"
  loc_B0DAB9: FMemLdR4 var_FC(28)
  loc_B0DABE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0DAC3: CVarStr var_D0
  loc_B0DAC6: PopAdLdVar
  loc_B0DAC7: FLdPr Me
  loc_B0DACA: MemLdRfVar from_stack_1.htmFile
  loc_B0DACD: LdPrVar
  loc_B0DACF: LateMemCall
  loc_B0DAD5: FFree1Var var_D0 = ""
  loc_B0DAD8: LitI4 0
  loc_B0DADD: LitI4 0
  loc_B0DAE2: LitI2_Byte &HFF
  loc_B0DAE4: LitStr "right"
  loc_B0DAE7: FMemLdR4 var_FC(32)
  loc_B0DAEC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0DAF1: CVarStr var_D0
  loc_B0DAF4: PopAdLdVar
  loc_B0DAF5: FLdPr Me
  loc_B0DAF8: MemLdRfVar from_stack_1.htmFile
  loc_B0DAFB: LdPrVar
  loc_B0DAFD: LateMemCall
  loc_B0DB03: FFree1Var var_D0 = ""
  loc_B0DB06: LitI4 0
  loc_B0DB0B: FStR4 var_FC
  loc_B0DB0E: AryUnlock
  loc_B0DB11: LitVarStr var_A4, "     </tr>"
  loc_B0DB16: PopAdLdVar
  loc_B0DB17: FLdPr Me
  loc_B0DB1A: MemLdRfVar from_stack_1.htmFile
  loc_B0DB1D: LdPrVar
  loc_B0DB1F: LateMemCall
  loc_B0DB25: Call Proc_163_24_9EDBFC()
  loc_B0DB2A: FLdPr Me
  loc_B0DB2D: MemLdRfVar from_stack_1.htmFile
  loc_B0DB30: LdPrVar
  loc_B0DB32: LateMemCall
  loc_B0DB38: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B0DB3D: ExitProcHresult
  loc_B0DB3E: AddR8
End Sub

Public Sub GeneraTXT() 'A69578
  'Data Table: 457920
  loc_A69228: ImpAdCallI2 Proc_261_16_9B9214()
  loc_A6922D: FStStrNoPop var_88
  loc_A69230: LitStr "\Acuerdo 3949\"
  loc_A69233: ConcatStr
  loc_A69234: FStStrNoPop var_94
  loc_A69237: FLdRfVar var_90
  loc_A6923A: FLdPr Me
  loc_A6923D: VCallAd Control_ID_cboPeriodo
  loc_A69240: FStAdFunc var_8C
  loc_A69243: FLdPr var_8C
  loc_A69246:  = Me.Text
  loc_A6924B: ILdRf var_90
  loc_A6924E: ConcatStr
  loc_A6924F: FStStrNoPop var_98
  loc_A69252: LitStr "\Trimestre "
  loc_A69255: ConcatStr
  loc_A69256: FStStrNoPop var_AC
  loc_A69259: FLdRfVar var_A8
  loc_A6925C: FLdRfVar var_9E
  loc_A6925F: FLdPr Me
  loc_A69262: VCallAd Control_ID_cboTrimestre
  loc_A69265: FStAdFunc var_9C
  loc_A69268: FLdPr var_9C
  loc_A6926B:  = Me.ListIndex
  loc_A69270: FLdI2 var_9E
  loc_A69273: FLdPr Me
  loc_A69276: VCallAd Control_ID_cboTrimestre
  loc_A69279: FStAdFunc var_A4
  loc_A6927C: FLdPr var_A4
  loc_A6927F:  = Me.ItemData
  loc_A69284: ILdRf var_A8
  loc_A69287: CStrI4
  loc_A69289: FStStrNoPop var_B0
  loc_A6928C: ConcatStr
  loc_A6928D: FStStrNoPop var_B4
  loc_A69290: LitStr "\ejeprecalrecfinacu.txt"
  loc_A69293: ConcatStr
  loc_A69294: ImpAdStStr MemVar_C3D05C
  loc_A69298: FFreeStr var_88 = "": var_94 = "": var_90 = "": var_98 = "": var_AC = "": var_B0 = ""
  loc_A692A9: FFreeAd var_8C = "": var_9C = ""
  loc_A692B2: ImpAdLdI4 MemVar_C3D05C
  loc_A692B5: ImpAdCallFPR4 Proc_261_17_9A1230()
  loc_A692BA: FLdRfVar var_8C
  loc_A692BD: LitI2_Byte 0
  loc_A692BF: LitI2_Byte &HFF
  loc_A692C1: ImpAdLdI4 MemVar_C3D05C
  loc_A692C4: FLdPr Me
  loc_A692C7: MemLdRfVar from_stack_1.global_80
  loc_A692CA: NewIfNullPr IFileSystem3
  loc_A692CD: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A692D2: ILdRf var_8C
  loc_A692D5: FLdPr Me
  loc_A692D8: MemStVarAd
  loc_A692DC: FFree1Ad var_8C
  loc_A692DF: LitVarStr var_C8, "Ejercicio|Trimestre|Nomenclador|Cuenta|Detalle|CalOri|ModAcuFinAum|ModAcuFinDis|CalDef|IngAcuFin|Diferencia|Ingresado"
  loc_A692E4: PopAdLdVar
  loc_A692E5: FLdPr Me
  loc_A692E8: MemLdRfVar from_stack_1.global_84
  loc_A692EB: LdPrVar
  loc_A692ED: LateMemCall
  loc_A692F3: LitI2_Byte 1
  loc_A692F5: FLdPr Me
  loc_A692F8: MemLdRfVar from_stack_1.global_108
  loc_A692FB: FLdPr Me
  loc_A692FE: MemLdStr global_100
  loc_A69301: LitI2_Byte 1
  loc_A69303: FnUBound
  loc_A69305: CI2I4
  loc_A69306: ForI2 var_DC
  loc_A6930C: LitI2_Byte 1
  loc_A6930E: FLdPr Me
  loc_A69311: MemLdRfVar from_stack_1.global_110
  loc_A69314: FLdPr Me
  loc_A69317: MemLdI2 global_108
  loc_A6931A: CI4UI1
  loc_A6931B: FLdPr Me
  loc_A6931E: MemLdStr global_100
  loc_A69321: Ary1LdPr
  loc_A69322: MemLdStr global_44
  loc_A69325: LitI2_Byte 1
  loc_A69327: FnUBound
  loc_A69329: CI2I4
  loc_A6932A: ForI2 var_E0
  loc_A69330: LitI2_Byte 1
  loc_A69332: FLdPr Me
  loc_A69335: MemLdRfVar from_stack_1.global_112
  loc_A69338: FLdPr Me
  loc_A6933B: MemLdI2 global_110
  loc_A6933E: CI4UI1
  loc_A6933F: FLdPr Me
  loc_A69342: MemLdI2 global_108
  loc_A69345: CI4UI1
  loc_A69346: FLdPr Me
  loc_A69349: MemLdStr global_100
  loc_A6934C: Ary1LdPr
  loc_A6934D: MemLdStr global_44
  loc_A69350: Ary1LdPr
  loc_A69351: MemLdStr global_36
  loc_A69354: LitI2_Byte 1
  loc_A69356: FnUBound
  loc_A69358: CI2I4
  loc_A69359: ForI2 var_E4
  loc_A6935F: FLdRfVar var_88
  loc_A69362: FLdPr Me
  loc_A69365: VCallAd Control_ID_cboPeriodo
  loc_A69368: FStAdFunc var_8C
  loc_A6936B: FLdPr var_8C
  loc_A6936E:  = Me.Text
  loc_A69373: ILdRf var_88
  loc_A69376: LitStr "|"
  loc_A69379: ConcatStr
  loc_A6937A: FStStrNoPop var_90
  loc_A6937D: FLdRfVar var_A8
  loc_A69380: FLdRfVar var_9E
  loc_A69383: FLdPr Me
  loc_A69386: VCallAd Control_ID_cboTrimestre
  loc_A69389: FStAdFunc var_9C
  loc_A6938C: FLdPr var_9C
  loc_A6938F:  = Me.ListIndex
  loc_A69394: FLdI2 var_9E
  loc_A69397: FLdPr Me
  loc_A6939A: VCallAd Control_ID_cboTrimestre
  loc_A6939D: FStAdFunc var_A4
  loc_A693A0: FLdPr var_A4
  loc_A693A3:  = Me.ItemData
  loc_A693A8: ILdRf var_A8
  loc_A693AB: CStrI4
  loc_A693AD: FStStrNoPop var_94
  loc_A693B0: ConcatStr
  loc_A693B1: FStStrNoPop var_98
  loc_A693B4: LitStr "|"
  loc_A693B7: ConcatStr
  loc_A693B8: FStStrNoPop var_AC
  loc_A693BB: LitStr "060204"
  loc_A693BE: ConcatStr
  loc_A693BF: FStStr var_B8
  loc_A693C2: FFreeStr var_88 = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A693CF: FFreeAd var_8C = "": var_9C = ""
  loc_A693D8: FLdPr Me
  loc_A693DB: MemLdI2 global_112
  loc_A693DE: CI4UI1
  loc_A693DF: FLdPr Me
  loc_A693E2: MemLdI2 global_110
  loc_A693E5: CI4UI1
  loc_A693E6: FLdPr Me
  loc_A693E9: MemLdI2 global_108
  loc_A693EC: CI4UI1
  loc_A693ED: FLdPr Me
  loc_A693F0: MemLdStr global_100
  loc_A693F3: AryLock
  loc_A693F6: Ary1LdPr
  loc_A693F7: MemLdStr global_44
  loc_A693FA: AryLock
  loc_A693FD: Ary1LdPr
  loc_A693FE: MemLdStr global_36
  loc_A69401: AryLock
  loc_A69404: Ary1LdRf
  loc_A69405: FStR4 var_F4
  loc_A69408: ILdRf var_B8
  loc_A6940B: LitStr "|"
  loc_A6940E: ConcatStr
  loc_A6940F: FStStrNoPop var_88
  loc_A69412: FMemLdR4 var_F4(0)
  loc_A69417: ConcatStr
  loc_A69418: FStStr var_B8
  loc_A6941B: FFree1Str var_88
  loc_A6941E: ILdRf var_B8
  loc_A69421: LitStr "|"
  loc_A69424: ConcatStr
  loc_A69425: FStStrNoPop var_88
  loc_A69428: FMemLdR4 var_F4(4)
  loc_A6942D: ConcatStr
  loc_A6942E: FStStr var_B8
  loc_A69431: FFree1Str var_88
  loc_A69434: ILdRf var_B8
  loc_A69437: LitStr "|"
  loc_A6943A: ConcatStr
  loc_A6943B: FStStrNoPop var_88
  loc_A6943E: FMemLdR4 var_F4(8)
  loc_A69443: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A69448: FStStrNoPop var_90
  loc_A6944B: ConcatStr
  loc_A6944C: FStStr var_B8
  loc_A6944F: FFreeStr var_88 = ""
  loc_A69456: ILdRf var_B8
  loc_A69459: LitStr "|"
  loc_A6945C: ConcatStr
  loc_A6945D: FStStrNoPop var_88
  loc_A69460: FMemLdR4 var_F4(12)
  loc_A69465: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6946A: FStStrNoPop var_90
  loc_A6946D: ConcatStr
  loc_A6946E: FStStr var_B8
  loc_A69471: FFreeStr var_88 = ""
  loc_A69478: ILdRf var_B8
  loc_A6947B: LitStr "|"
  loc_A6947E: ConcatStr
  loc_A6947F: FStStrNoPop var_88
  loc_A69482: FMemLdR4 var_F4(16)
  loc_A69487: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A6948C: FStStrNoPop var_90
  loc_A6948F: ConcatStr
  loc_A69490: FStStr var_B8
  loc_A69493: FFreeStr var_88 = ""
  loc_A6949A: ILdRf var_B8
  loc_A6949D: LitStr "|"
  loc_A694A0: ConcatStr
  loc_A694A1: FStStrNoPop var_88
  loc_A694A4: FMemLdR4 var_F4(20)
  loc_A694A9: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A694AE: FStStrNoPop var_90
  loc_A694B1: ConcatStr
  loc_A694B2: FStStr var_B8
  loc_A694B5: FFreeStr var_88 = ""
  loc_A694BC: ILdRf var_B8
  loc_A694BF: LitStr "|"
  loc_A694C2: ConcatStr
  loc_A694C3: FStStrNoPop var_88
  loc_A694C6: FMemLdR4 var_F4(24)
  loc_A694CB: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A694D0: FStStrNoPop var_90
  loc_A694D3: ConcatStr
  loc_A694D4: FStStr var_B8
  loc_A694D7: FFreeStr var_88 = ""
  loc_A694DE: ILdRf var_B8
  loc_A694E1: LitStr "|"
  loc_A694E4: ConcatStr
  loc_A694E5: FStStrNoPop var_88
  loc_A694E8: FMemLdR4 var_F4(28)
  loc_A694ED: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A694F2: FStStrNoPop var_90
  loc_A694F5: ConcatStr
  loc_A694F6: FStStr var_B8
  loc_A694F9: FFreeStr var_88 = ""
  loc_A69500: ILdRf var_B8
  loc_A69503: LitStr "|"
  loc_A69506: ConcatStr
  loc_A69507: FStStrNoPop var_88
  loc_A6950A: FMemLdR4 var_F4(32)
  loc_A6950F: ImpAdCallI2 Proc_261_37_97BB2C()
  loc_A69514: FStStrNoPop var_90
  loc_A69517: ConcatStr
  loc_A69518: FStStr var_B8
  loc_A6951B: FFreeStr var_88 = ""
  loc_A69522: LitI4 0
  loc_A69527: FStR4 var_F4
  loc_A6952A: AryUnlock
  loc_A6952D: AryUnlock
  loc_A69530: AryUnlock
  loc_A69533: FLdRfVar var_B8
  loc_A69536: CDargRef
  loc_A6953A: FLdPr Me
  loc_A6953D: MemLdRfVar from_stack_1.global_84
  loc_A69540: LdPrVar
  loc_A69542: LateMemCall
  loc_A69548: FLdPr Me
  loc_A6954B: MemLdRfVar from_stack_1.global_112
  loc_A6954E: NextI2 var_E4, loc_A6935F
  loc_A69553: FLdPr Me
  loc_A69556: MemLdRfVar from_stack_1.global_110
  loc_A69559: NextI2 var_E0, loc_A69330
  loc_A6955E: FLdPr Me
  loc_A69561: MemLdRfVar from_stack_1.global_108
  loc_A69564: NextI2 var_DC, loc_A6930C
  loc_A69569: FLdPr Me
  loc_A6956C: MemLdRfVar from_stack_1.global_84
  loc_A6956F: LdPrVar
  loc_A69571: LateMemCall
  loc_A69577: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '992500
  'Data Table: 457920
  loc_9924BC: LitI4 0
  loc_9924C1: LitI4 1
  loc_9924C6: FLdRfVar var_88
  loc_9924C9: Redim
  loc_9924D3: FLdPr Me
  loc_9924D6: VCallAd Control_ID_cboPeriodo
  loc_9924D9: CVarAd
  loc_9924DD: ParmAry1St
  loc_9924E3: FLdPr Me
  loc_9924E6: VCallAd Control_ID_cboTrimestre
  loc_9924E9: CVarAd
  loc_9924ED: ParmAry1St
  loc_9924F3: FLdRfVar var_88
  loc_9924F6: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9924FB: FLdRfVar var_88
  loc_9924FE: Erase
  loc_9924FF: ExitProcHresult
End Sub

Private Function Proc_163_19_9EFA74() '9EFA74
  'Data Table: 457920
  loc_9EF954: FLdPr Me
  loc_9EF957: MemLdI2 global_108
  loc_9EF95A: LitI2_Byte 1
  loc_9EF95C: AddI2
  loc_9EF95D: FLdPr Me
  loc_9EF960: MemStI2 global_108
  loc_9EF963: LitI2_Byte 0
  loc_9EF965: FLdPr Me
  loc_9EF968: MemStI2 global_110
  loc_9EF96B: LitI4 0
  loc_9EF970: FLdPr Me
  loc_9EF973: MemLdI2 global_108
  loc_9EF976: CI4UI1
  loc_9EF977: FLdPr Me
  loc_9EF97A: MemLdRfVar from_stack_1.global_100
  loc_9EF97D: RedimPreserve
  loc_9EF987: FLdRfVar var_B0
  loc_9EF98A: FLdRfVar var_A0
  loc_9EF98D: LitVarStr var_9C, "CodiTicu"
  loc_9EF992: PopAdLdVar
  loc_9EF993: FLdRfVar var_8C
  loc_9EF996: FLdRfVar var_88
  loc_9EF999: FLdPr Me
  loc_9EF99C: MemLdRfVar from_stack_1.global_76
  loc_9EF99F: NewIfNullPr clsbase
  loc_9EF9A2: from_stack_1v = clsbase.RsFrmGet()
  loc_9EF9A7: FLdPr var_88
  loc_9EF9AA:  = Me.Fields
  loc_9EF9AF: FLdPr var_8C
  loc_9EF9B2: from_stack_2 = Me.Item(from_stack_1)
  loc_9EF9B7: FLdPr var_A0
  loc_9EF9BA:  = Me.Value
  loc_9EF9BF: LitI4 1
  loc_9EF9C4: FLdRfVar var_B0
  loc_9EF9C7: CStrVarTmp
  loc_9EF9C8: FStStrNoPop var_B4
  loc_9EF9CB: ImpAdCallI2 Left$(, )
  loc_9EF9D0: FStStr var_F0
  loc_9EF9D3: LitI2_Byte 0
  loc_9EF9D5: LitVar_Missing var_EC
  loc_9EF9D8: LitI2_Byte 0
  loc_9EF9DA: FLdZeroAd var_F0
  loc_9EF9DD: FStStrNoPop var_B8
  loc_9EF9E0: LitStr "000"
  loc_9EF9E3: ConcatStr
  loc_9EF9E4: CVarStr var_CC
  loc_9EF9E7: PopAdLdVar
  loc_9EF9E8: FLdPr Me
  loc_9EF9EB: MemLdI2 global_108
  loc_9EF9EE: CI4UI1
  loc_9EF9EF: FLdPr Me
  loc_9EF9F2: MemLdStr global_100
  loc_9EF9F5: AryLock
  loc_9EF9F8: Ary1LdPr
  loc_9EF9F9: MemLdRfVar from_stack_1.global_8
  loc_9EF9FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9EFA01: AryUnlock
  loc_9EFA04: FFreeStr var_B4 = "": var_B8 = ""
  loc_9EFA0D: FFreeAd var_88 = "": var_8C = ""
  loc_9EFA16: FFreeVar var_B0 = "": var_CC = ""
  loc_9EFA1F: FLdPr Me
  loc_9EFA22: MemLdI2 global_108
  loc_9EFA25: CI4UI1
  loc_9EFA26: FLdPr Me
  loc_9EFA29: MemLdStr global_100
  loc_9EFA2C: Ary1LdPr
  loc_9EFA2D: MemLdStr global_8
  loc_9EFA30: ImpAdCallI2 Proc_259_34_9A668C()
  loc_9EFA35: FStStr var_B4
  loc_9EFA38: LitI2_Byte 0
  loc_9EFA3A: LitVar_Missing var_CC
  loc_9EFA3D: LitI2_Byte 0
  loc_9EFA3F: FLdZeroAd var_B4
  loc_9EFA42: CVarStr var_B0
  loc_9EFA45: PopAdLdVar
  loc_9EFA46: FLdPr Me
  loc_9EFA49: MemLdI2 global_108
  loc_9EFA4C: CI4UI1
  loc_9EFA4D: FLdPr Me
  loc_9EFA50: MemLdStr global_100
  loc_9EFA53: AryLock
  loc_9EFA56: Ary1LdPr
  loc_9EFA57: MemLdRfVar from_stack_1.global_12
  loc_9EFA5A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9EFA5F: AryUnlock
  loc_9EFA62: FFree1Str var_B4
  loc_9EFA65: FFreeVar var_B0 = ""
  loc_9EFA6C: Call Proc_163_20_A0E66C()
  loc_9EFA71: ExitProcHresult
End Function

Private Function Proc_163_20_A0E66C() 'A0E66C
  'Data Table: 457920
  loc_A0E514: FLdPr Me
  loc_A0E517: MemLdI2 global_110
  loc_A0E51A: LitI2_Byte 1
  loc_A0E51C: AddI2
  loc_A0E51D: FLdPr Me
  loc_A0E520: MemStI2 global_110
  loc_A0E523: LitI2_Byte 0
  loc_A0E525: FLdPr Me
  loc_A0E528: MemStI2 global_112
  loc_A0E52B: LitI4 0
  loc_A0E530: FLdPr Me
  loc_A0E533: MemLdI2 global_110
  loc_A0E536: CI4UI1
  loc_A0E537: FLdPr Me
  loc_A0E53A: MemLdI2 global_108
  loc_A0E53D: CI4UI1
  loc_A0E53E: FLdPr Me
  loc_A0E541: MemLdStr global_100
  loc_A0E544: Ary1LdPr
  loc_A0E545: MemLdRfVar from_stack_1.global_44
  loc_A0E548: RedimPreserve
  loc_A0E552: FLdRfVar var_B0
  loc_A0E555: FLdRfVar var_A0
  loc_A0E558: LitVarStr var_9C, "CodiTicu"
  loc_A0E55D: PopAdLdVar
  loc_A0E55E: FLdRfVar var_8C
  loc_A0E561: FLdRfVar var_88
  loc_A0E564: FLdPr Me
  loc_A0E567: MemLdRfVar from_stack_1.global_76
  loc_A0E56A: NewIfNullPr clsbase
  loc_A0E56D: from_stack_1v = clsbase.RsFrmGet()
  loc_A0E572: FLdPr var_88
  loc_A0E575:  = Me.Fields
  loc_A0E57A: FLdPr var_8C
  loc_A0E57D: from_stack_2 = Me.Item(from_stack_1)
  loc_A0E582: FLdPr var_A0
  loc_A0E585:  = Me.Value
  loc_A0E58A: LitI4 2
  loc_A0E58F: FLdRfVar var_B0
  loc_A0E592: CStrVarTmp
  loc_A0E593: FStStrNoPop var_B4
  loc_A0E596: ImpAdCallI2 Left$(, )
  loc_A0E59B: FStStr var_F4
  loc_A0E59E: LitI2_Byte 0
  loc_A0E5A0: LitVar_Missing var_F0
  loc_A0E5A3: LitI2_Byte 0
  loc_A0E5A5: FLdZeroAd var_F4
  loc_A0E5A8: FStStrNoPop var_B8
  loc_A0E5AB: LitStr "00"
  loc_A0E5AE: ConcatStr
  loc_A0E5AF: CVarStr var_D0
  loc_A0E5B2: PopAdLdVar
  loc_A0E5B3: FLdPr Me
  loc_A0E5B6: MemLdI2 global_110
  loc_A0E5B9: CI4UI1
  loc_A0E5BA: FLdPr Me
  loc_A0E5BD: MemLdI2 global_108
  loc_A0E5C0: CI4UI1
  loc_A0E5C1: FLdPr Me
  loc_A0E5C4: MemLdStr global_100
  loc_A0E5C7: AryLock
  loc_A0E5CA: Ary1LdPr
  loc_A0E5CB: MemLdStr global_44
  loc_A0E5CE: AryLock
  loc_A0E5D1: Ary1LdPr
  loc_A0E5D2: MemLdRfVar from_stack_1.global_0
  loc_A0E5D5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0E5DA: AryUnlock
  loc_A0E5DD: AryUnlock
  loc_A0E5E0: FFreeStr var_B4 = "": var_B8 = ""
  loc_A0E5E9: FFreeAd var_88 = "": var_8C = ""
  loc_A0E5F2: FFreeVar var_B0 = "": var_D0 = ""
  loc_A0E5FB: FLdPr Me
  loc_A0E5FE: MemLdI2 global_110
  loc_A0E601: CI4UI1
  loc_A0E602: FLdPr Me
  loc_A0E605: MemLdI2 global_108
  loc_A0E608: CI4UI1
  loc_A0E609: FLdPr Me
  loc_A0E60C: MemLdStr global_100
  loc_A0E60F: Ary1LdPr
  loc_A0E610: MemLdStr global_44
  loc_A0E613: Ary1LdPr
  loc_A0E614: MemLdStr global_0
  loc_A0E617: ImpAdCallI2 Proc_259_34_9A668C()
  loc_A0E61C: FStStr var_B4
  loc_A0E61F: LitI2_Byte 0
  loc_A0E621: LitVar_Missing var_D0
  loc_A0E624: LitI2_Byte 0
  loc_A0E626: FLdZeroAd var_B4
  loc_A0E629: CVarStr var_B0
  loc_A0E62C: PopAdLdVar
  loc_A0E62D: FLdPr Me
  loc_A0E630: MemLdI2 global_110
  loc_A0E633: CI4UI1
  loc_A0E634: FLdPr Me
  loc_A0E637: MemLdI2 global_108
  loc_A0E63A: CI4UI1
  loc_A0E63B: FLdPr Me
  loc_A0E63E: MemLdStr global_100
  loc_A0E641: AryLock
  loc_A0E644: Ary1LdPr
  loc_A0E645: MemLdStr global_44
  loc_A0E648: AryLock
  loc_A0E64B: Ary1LdPr
  loc_A0E64C: MemLdRfVar from_stack_1.global_4
  loc_A0E64F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A0E654: AryUnlock
  loc_A0E657: AryUnlock
  loc_A0E65A: FFree1Str var_B4
  loc_A0E65D: FFreeVar var_B0 = ""
  loc_A0E664: Call Proc_163_21_A95D64()
  loc_A0E669: ExitProcHresult
End Function

Private Function Proc_163_21_A95D64() 'A95D64
  'Data Table: 457920
  loc_A958D4: FLdPr Me
  loc_A958D7: MemLdI2 global_112
  loc_A958DA: LitI2_Byte 1
  loc_A958DC: AddI2
  loc_A958DD: FLdPr Me
  loc_A958E0: MemStI2 global_112
  loc_A958E3: LitI4 0
  loc_A958E8: FLdPr Me
  loc_A958EB: MemLdI2 global_112
  loc_A958EE: CI4UI1
  loc_A958EF: FLdPr Me
  loc_A958F2: MemLdI2 global_110
  loc_A958F5: CI4UI1
  loc_A958F6: FLdPr Me
  loc_A958F9: MemLdI2 global_108
  loc_A958FC: CI4UI1
  loc_A958FD: FLdPr Me
  loc_A95900: MemLdStr global_100
  loc_A95903: Ary1LdPr
  loc_A95904: MemLdStr global_44
  loc_A95907: Ary1LdPr
  loc_A95908: MemLdRfVar from_stack_1.global_36
  loc_A9590B: RedimPreserve
  loc_A95915: FLdPr Me
  loc_A95918: MemLdI2 global_112
  loc_A9591B: CI4UI1
  loc_A9591C: FLdPr Me
  loc_A9591F: MemLdI2 global_110
  loc_A95922: CI4UI1
  loc_A95923: FLdPr Me
  loc_A95926: MemLdI2 global_108
  loc_A95929: CI4UI1
  loc_A9592A: FLdPr Me
  loc_A9592D: MemLdStr global_100
  loc_A95930: AryLock
  loc_A95933: Ary1LdPr
  loc_A95934: MemLdStr global_44
  loc_A95937: AryLock
  loc_A9593A: Ary1LdPr
  loc_A9593B: MemLdStr global_36
  loc_A9593E: AryLock
  loc_A95941: Ary1LdRf
  loc_A95942: FStR4 var_94
  loc_A95945: FLdRfVar var_B0
  loc_A95948: LitVarStr var_AC, "CodiTicu"
  loc_A9594D: PopAdLdVar
  loc_A9594E: FLdRfVar var_9C
  loc_A95951: FLdRfVar var_98
  loc_A95954: FLdPr Me
  loc_A95957: MemLdRfVar from_stack_1.global_76
  loc_A9595A: NewIfNullPr clsbase
  loc_A9595D: from_stack_1v = clsbase.RsFrmGet()
  loc_A95962: FLdPr var_98
  loc_A95965:  = Me.Fields
  loc_A9596A: FLdPr var_9C
  loc_A9596D: from_stack_2 = Me.Item(from_stack_1)
  loc_A95972: LitI2_Byte 0
  loc_A95974: LitVar_Missing var_E0
  loc_A95977: LitI2_Byte 0
  loc_A95979: FLdZeroAd var_B0
  loc_A9597C: CVarAd
  loc_A95980: PopAdLdVar
  loc_A95981: FMemLdRf unk_45788D
  loc_A95986: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A9598B: FFreeAd var_98 = ""
  loc_A95992: FFreeVar var_C0 = ""
  loc_A95999: FLdRfVar var_B0
  loc_A9599C: LitVarStr var_AC, "DetaTicu"
  loc_A959A1: PopAdLdVar
  loc_A959A2: FLdRfVar var_9C
  loc_A959A5: FLdRfVar var_98
  loc_A959A8: FLdPr Me
  loc_A959AB: MemLdRfVar from_stack_1.global_76
  loc_A959AE: NewIfNullPr clsbase
  loc_A959B1: from_stack_1v = clsbase.RsFrmGet()
  loc_A959B6: FLdPr var_98
  loc_A959B9:  = Me.Fields
  loc_A959BE: FLdPr var_9C
  loc_A959C1: from_stack_2 = Me.Item(from_stack_1)
  loc_A959C6: LitI2_Byte 0
  loc_A959C8: LitVar_Missing var_E0
  loc_A959CB: LitI2_Byte 0
  loc_A959CD: FLdZeroAd var_B0
  loc_A959D0: CVarAd
  loc_A959D4: PopAdLdVar
  loc_A959D5: FMemLdRf unk_45788D
  loc_A959DA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A959DF: FFreeAd var_98 = ""
  loc_A959E6: FFreeVar var_C0 = ""
  loc_A959ED: FLdRfVar var_B0
  loc_A959F0: LitVarStr var_AC, "AutoMoas"
  loc_A959F5: PopAdLdVar
  loc_A959F6: FLdRfVar var_9C
  loc_A959F9: FLdRfVar var_98
  loc_A959FC: FLdPr Me
  loc_A959FF: MemLdRfVar from_stack_1.global_76
  loc_A95A02: NewIfNullPr clsbase
  loc_A95A05: from_stack_1v = clsbase.RsFrmGet()
  loc_A95A0A: FLdPr var_98
  loc_A95A0D:  = Me.Fields
  loc_A95A12: FLdPr var_9C
  loc_A95A15: from_stack_2 = Me.Item(from_stack_1)
  loc_A95A1A: LitI2_Byte 0
  loc_A95A1C: FLdPr Me
  loc_A95A1F: MemLdI2 global_110
  loc_A95A22: CI4UI1
  loc_A95A23: FLdPr Me
  loc_A95A26: MemLdI2 global_108
  loc_A95A29: CI4UI1
  loc_A95A2A: FLdPr Me
  loc_A95A2D: MemLdStr global_100
  loc_A95A30: AryLock
  loc_A95A33: Ary1LdPr
  loc_A95A34: MemLdStr global_44
  loc_A95A37: AryLock
  loc_A95A3A: Ary1LdPr
  loc_A95A3B: MemLdRfVar from_stack_1.global_8
  loc_A95A3E: CVarRef
  loc_A95A43: LitI2_Byte &HFF
  loc_A95A45: FLdZeroAd var_B0
  loc_A95A48: CVarAd
  loc_A95A4C: PopAdLdVar
  loc_A95A4D: FMemLdRf unk_45788D
  loc_A95A52: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95A57: AryUnlock
  loc_A95A5A: AryUnlock
  loc_A95A5D: FFreeAd var_98 = ""
  loc_A95A64: FFree1Var var_C0 = ""
  loc_A95A67: FLdRfVar var_B0
  loc_A95A6A: LitVarStr var_AC, "AumeMoas"
  loc_A95A6F: PopAdLdVar
  loc_A95A70: FLdRfVar var_9C
  loc_A95A73: FLdRfVar var_98
  loc_A95A76: FLdPr Me
  loc_A95A79: MemLdRfVar from_stack_1.global_76
  loc_A95A7C: NewIfNullPr clsbase
  loc_A95A7F: from_stack_1v = clsbase.RsFrmGet()
  loc_A95A84: FLdPr var_98
  loc_A95A87:  = Me.Fields
  loc_A95A8C: FLdPr var_9C
  loc_A95A8F: from_stack_2 = Me.Item(from_stack_1)
  loc_A95A94: LitI2_Byte 0
  loc_A95A96: FLdPr Me
  loc_A95A99: MemLdI2 global_110
  loc_A95A9C: CI4UI1
  loc_A95A9D: FLdPr Me
  loc_A95AA0: MemLdI2 global_108
  loc_A95AA3: CI4UI1
  loc_A95AA4: FLdPr Me
  loc_A95AA7: MemLdStr global_100
  loc_A95AAA: AryLock
  loc_A95AAD: Ary1LdPr
  loc_A95AAE: MemLdStr global_44
  loc_A95AB1: AryLock
  loc_A95AB4: Ary1LdPr
  loc_A95AB5: MemLdRfVar from_stack_1.global_12
  loc_A95AB8: CVarRef
  loc_A95ABD: LitI2_Byte &HFF
  loc_A95ABF: FLdZeroAd var_B0
  loc_A95AC2: CVarAd
  loc_A95AC6: PopAdLdVar
  loc_A95AC7: FMemLdRf unk_45788D
  loc_A95ACC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95AD1: AryUnlock
  loc_A95AD4: AryUnlock
  loc_A95AD7: FFreeAd var_98 = ""
  loc_A95ADE: FFree1Var var_C0 = ""
  loc_A95AE1: FLdRfVar var_B0
  loc_A95AE4: LitVarStr var_AC, "DismMoas"
  loc_A95AE9: PopAdLdVar
  loc_A95AEA: FLdRfVar var_9C
  loc_A95AED: FLdRfVar var_98
  loc_A95AF0: FLdPr Me
  loc_A95AF3: MemLdRfVar from_stack_1.global_76
  loc_A95AF6: NewIfNullPr clsbase
  loc_A95AF9: from_stack_1v = clsbase.RsFrmGet()
  loc_A95AFE: FLdPr var_98
  loc_A95B01:  = Me.Fields
  loc_A95B06: FLdPr var_9C
  loc_A95B09: from_stack_2 = Me.Item(from_stack_1)
  loc_A95B0E: LitI2_Byte 0
  loc_A95B10: FLdPr Me
  loc_A95B13: MemLdI2 global_110
  loc_A95B16: CI4UI1
  loc_A95B17: FLdPr Me
  loc_A95B1A: MemLdI2 global_108
  loc_A95B1D: CI4UI1
  loc_A95B1E: FLdPr Me
  loc_A95B21: MemLdStr global_100
  loc_A95B24: AryLock
  loc_A95B27: Ary1LdPr
  loc_A95B28: MemLdStr global_44
  loc_A95B2B: AryLock
  loc_A95B2E: Ary1LdPr
  loc_A95B2F: MemLdRfVar from_stack_1.global_16
  loc_A95B32: CVarRef
  loc_A95B37: LitI2_Byte &HFF
  loc_A95B39: FLdZeroAd var_B0
  loc_A95B3C: CVarAd
  loc_A95B40: PopAdLdVar
  loc_A95B41: FMemLdRf unk_45788D
  loc_A95B46: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95B4B: AryUnlock
  loc_A95B4E: AryUnlock
  loc_A95B51: FFreeAd var_98 = ""
  loc_A95B58: FFree1Var var_C0 = ""
  loc_A95B5B: FLdRfVar var_B0
  loc_A95B5E: LitVarStr var_AC, "AutoTota"
  loc_A95B63: PopAdLdVar
  loc_A95B64: FLdRfVar var_9C
  loc_A95B67: FLdRfVar var_98
  loc_A95B6A: FLdPr Me
  loc_A95B6D: MemLdRfVar from_stack_1.global_76
  loc_A95B70: NewIfNullPr clsbase
  loc_A95B73: from_stack_1v = clsbase.RsFrmGet()
  loc_A95B78: FLdPr var_98
  loc_A95B7B:  = Me.Fields
  loc_A95B80: FLdPr var_9C
  loc_A95B83: from_stack_2 = Me.Item(from_stack_1)
  loc_A95B88: LitI2_Byte 0
  loc_A95B8A: FLdPr Me
  loc_A95B8D: MemLdI2 global_110
  loc_A95B90: CI4UI1
  loc_A95B91: FLdPr Me
  loc_A95B94: MemLdI2 global_108
  loc_A95B97: CI4UI1
  loc_A95B98: FLdPr Me
  loc_A95B9B: MemLdStr global_100
  loc_A95B9E: AryLock
  loc_A95BA1: Ary1LdPr
  loc_A95BA2: MemLdStr global_44
  loc_A95BA5: AryLock
  loc_A95BA8: Ary1LdPr
  loc_A95BA9: MemLdRfVar from_stack_1.global_20
  loc_A95BAC: CVarRef
  loc_A95BB1: LitI2_Byte &HFF
  loc_A95BB3: FLdZeroAd var_B0
  loc_A95BB6: CVarAd
  loc_A95BBA: PopAdLdVar
  loc_A95BBB: FMemLdRf unk_45788D
  loc_A95BC0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95BC5: AryUnlock
  loc_A95BC8: AryUnlock
  loc_A95BCB: FFreeAd var_98 = ""
  loc_A95BD2: FFree1Var var_C0 = ""
  loc_A95BD5: FLdRfVar var_B0
  loc_A95BD8: LitVarStr var_AC, "IngaMoas"
  loc_A95BDD: PopAdLdVar
  loc_A95BDE: FLdRfVar var_9C
  loc_A95BE1: FLdRfVar var_98
  loc_A95BE4: FLdPr Me
  loc_A95BE7: MemLdRfVar from_stack_1.global_76
  loc_A95BEA: NewIfNullPr clsbase
  loc_A95BED: from_stack_1v = clsbase.RsFrmGet()
  loc_A95BF2: FLdPr var_98
  loc_A95BF5:  = Me.Fields
  loc_A95BFA: FLdPr var_9C
  loc_A95BFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A95C02: LitI2_Byte 0
  loc_A95C04: FLdPr Me
  loc_A95C07: MemLdI2 global_110
  loc_A95C0A: CI4UI1
  loc_A95C0B: FLdPr Me
  loc_A95C0E: MemLdI2 global_108
  loc_A95C11: CI4UI1
  loc_A95C12: FLdPr Me
  loc_A95C15: MemLdStr global_100
  loc_A95C18: AryLock
  loc_A95C1B: Ary1LdPr
  loc_A95C1C: MemLdStr global_44
  loc_A95C1F: AryLock
  loc_A95C22: Ary1LdPr
  loc_A95C23: MemLdRfVar from_stack_1.global_24
  loc_A95C26: CVarRef
  loc_A95C2B: LitI2_Byte &HFF
  loc_A95C2D: FLdZeroAd var_B0
  loc_A95C30: CVarAd
  loc_A95C34: PopAdLdVar
  loc_A95C35: FMemLdRf unk_45788D
  loc_A95C3A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95C3F: AryUnlock
  loc_A95C42: AryUnlock
  loc_A95C45: FFreeAd var_98 = ""
  loc_A95C4C: FFree1Var var_C0 = ""
  loc_A95C4F: FLdRfVar var_B0
  loc_A95C52: LitVarStr var_AC, "DifeMoas"
  loc_A95C57: PopAdLdVar
  loc_A95C58: FLdRfVar var_9C
  loc_A95C5B: FLdRfVar var_98
  loc_A95C5E: FLdPr Me
  loc_A95C61: MemLdRfVar from_stack_1.global_76
  loc_A95C64: NewIfNullPr clsbase
  loc_A95C67: from_stack_1v = clsbase.RsFrmGet()
  loc_A95C6C: FLdPr var_98
  loc_A95C6F:  = Me.Fields
  loc_A95C74: FLdPr var_9C
  loc_A95C77: from_stack_2 = Me.Item(from_stack_1)
  loc_A95C7C: LitI2_Byte 0
  loc_A95C7E: FLdPr Me
  loc_A95C81: MemLdI2 global_110
  loc_A95C84: CI4UI1
  loc_A95C85: FLdPr Me
  loc_A95C88: MemLdI2 global_108
  loc_A95C8B: CI4UI1
  loc_A95C8C: FLdPr Me
  loc_A95C8F: MemLdStr global_100
  loc_A95C92: AryLock
  loc_A95C95: Ary1LdPr
  loc_A95C96: MemLdStr global_44
  loc_A95C99: AryLock
  loc_A95C9C: Ary1LdPr
  loc_A95C9D: MemLdRfVar from_stack_1.global_28
  loc_A95CA0: CVarRef
  loc_A95CA5: LitI2_Byte &HFF
  loc_A95CA7: FLdZeroAd var_B0
  loc_A95CAA: CVarAd
  loc_A95CAE: PopAdLdVar
  loc_A95CAF: FMemLdRf unk_45788D
  loc_A95CB4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95CB9: AryUnlock
  loc_A95CBC: AryUnlock
  loc_A95CBF: FFreeAd var_98 = ""
  loc_A95CC6: FFree1Var var_C0 = ""
  loc_A95CC9: FLdRfVar var_B0
  loc_A95CCC: LitVarStr var_AC, "IngtMoas"
  loc_A95CD1: PopAdLdVar
  loc_A95CD2: FLdRfVar var_9C
  loc_A95CD5: FLdRfVar var_98
  loc_A95CD8: FLdPr Me
  loc_A95CDB: MemLdRfVar from_stack_1.global_76
  loc_A95CDE: NewIfNullPr clsbase
  loc_A95CE1: from_stack_1v = clsbase.RsFrmGet()
  loc_A95CE6: FLdPr var_98
  loc_A95CE9:  = Me.Fields
  loc_A95CEE: FLdPr var_9C
  loc_A95CF1: from_stack_2 = Me.Item(from_stack_1)
  loc_A95CF6: LitI2_Byte 0
  loc_A95CF8: FLdPr Me
  loc_A95CFB: MemLdI2 global_110
  loc_A95CFE: CI4UI1
  loc_A95CFF: FLdPr Me
  loc_A95D02: MemLdI2 global_108
  loc_A95D05: CI4UI1
  loc_A95D06: FLdPr Me
  loc_A95D09: MemLdStr global_100
  loc_A95D0C: AryLock
  loc_A95D0F: Ary1LdPr
  loc_A95D10: MemLdStr global_44
  loc_A95D13: AryLock
  loc_A95D16: Ary1LdPr
  loc_A95D17: MemLdRfVar from_stack_1.global_32
  loc_A95D1A: CVarRef
  loc_A95D1F: LitI2_Byte &HFF
  loc_A95D21: FLdZeroAd var_B0
  loc_A95D24: CVarAd
  loc_A95D28: PopAdLdVar
  loc_A95D29: FMemLdRf unk_45788D
  loc_A95D2E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A95D33: AryUnlock
  loc_A95D36: AryUnlock
  loc_A95D39: FFreeAd var_98 = ""
  loc_A95D40: FFree1Var var_C0 = ""
  loc_A95D43: LitI4 0
  loc_A95D48: FStR4 var_94
  loc_A95D4B: AryUnlock
  loc_A95D4E: AryUnlock
  loc_A95D51: AryUnlock
  loc_A95D54: FLdPr Me
  loc_A95D57: MemLdRfVar from_stack_1.global_76
  loc_A95D5A: NewIfNullPr clsbase
  loc_A95D5D: Call clsbase.MoveSiguiente()
  loc_A95D62: ExitProcHresult
End Function

Private Function Proc_163_22_9C96C4(arg_C) '9C96C4
  'Data Table: 457920
  loc_9C95D4: LitI2_Byte 0
  loc_9C95D6: FMemLdRf unk_457931
  loc_9C95DB: CVarRef
  loc_9C95E0: LitI2_Byte &HFF
  loc_9C95E2: FMemLdR4 arg_C(8)
  loc_9C95E7: CVarStr var_94
  loc_9C95EA: PopAdLdVar
  loc_9C95EB: FLdPr Me
  loc_9C95EE: MemLdRfVar from_stack_1.global_116
  loc_9C95F1: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C95F6: LitI2_Byte 0
  loc_9C95F8: FMemLdRf unk_457931
  loc_9C95FD: CVarRef
  loc_9C9602: LitI2_Byte &HFF
  loc_9C9604: FMemLdR4 arg_C(12)
  loc_9C9609: CVarStr var_94
  loc_9C960C: PopAdLdVar
  loc_9C960D: FLdPr Me
  loc_9C9610: MemLdRfVar from_stack_1.global_116
  loc_9C9613: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C9618: LitI2_Byte 0
  loc_9C961A: FMemLdRf unk_457931
  loc_9C961F: CVarRef
  loc_9C9624: LitI2_Byte &HFF
  loc_9C9626: FMemLdR4 arg_C(16)
  loc_9C962B: CVarStr var_94
  loc_9C962E: PopAdLdVar
  loc_9C962F: FLdPr Me
  loc_9C9632: MemLdRfVar from_stack_1.global_116
  loc_9C9635: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C963A: LitI2_Byte 0
  loc_9C963C: FMemLdRf unk_457931
  loc_9C9641: CVarRef
  loc_9C9646: LitI2_Byte &HFF
  loc_9C9648: FMemLdR4 arg_C(20)
  loc_9C964D: CVarStr var_94
  loc_9C9650: PopAdLdVar
  loc_9C9651: FLdPr Me
  loc_9C9654: MemLdRfVar from_stack_1.global_116
  loc_9C9657: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C965C: LitI2_Byte 0
  loc_9C965E: FMemLdRf unk_457931
  loc_9C9663: CVarRef
  loc_9C9668: LitI2_Byte &HFF
  loc_9C966A: FMemLdR4 arg_C(24)
  loc_9C966F: CVarStr var_94
  loc_9C9672: PopAdLdVar
  loc_9C9673: FLdPr Me
  loc_9C9676: MemLdRfVar from_stack_1.global_116
  loc_9C9679: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C967E: LitI2_Byte 0
  loc_9C9680: FMemLdRf unk_457931
  loc_9C9685: CVarRef
  loc_9C968A: LitI2_Byte &HFF
  loc_9C968C: FMemLdR4 arg_C(28)
  loc_9C9691: CVarStr var_94
  loc_9C9694: PopAdLdVar
  loc_9C9695: FLdPr Me
  loc_9C9698: MemLdRfVar from_stack_1.global_116
  loc_9C969B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C96A0: LitI2_Byte 0
  loc_9C96A2: FMemLdRf unk_457931
  loc_9C96A7: CVarRef
  loc_9C96AC: LitI2_Byte &HFF
  loc_9C96AE: FMemLdR4 arg_C(32)
  loc_9C96B3: CVarStr var_94
  loc_9C96B6: PopAdLdVar
  loc_9C96B7: FLdPr Me
  loc_9C96BA: MemLdRfVar from_stack_1.global_116
  loc_9C96BD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_9C96C2: ExitProcHresult
End Function

Private Function Proc_163_23_A8E494() 'A8E494
  'Data Table: 457920
  loc_A8E050: LitVarStr var_94, "<html>"
  loc_A8E055: PopAdLdVar
  loc_A8E056: FLdPr Me
  loc_A8E059: MemLdRfVar from_stack_1.htmFile
  loc_A8E05C: LdPrVar
  loc_A8E05E: LateMemCall
  loc_A8E064: LitVarStr var_94, "<head>"
  loc_A8E069: PopAdLdVar
  loc_A8E06A: FLdPr Me
  loc_A8E06D: MemLdRfVar from_stack_1.htmFile
  loc_A8E070: LdPrVar
  loc_A8E072: LateMemCall
  loc_A8E078: LitVarStr var_94, "<DEFANGED_meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A8E07D: PopAdLdVar
  loc_A8E07E: FLdPr Me
  loc_A8E081: MemLdRfVar from_stack_1.htmFile
  loc_A8E084: LdPrVar
  loc_A8E086: LateMemCall
  loc_A8E08C: LitStr "<title>"
  loc_A8E08F: FLdRfVar var_A8
  loc_A8E092: FLdPr Me
  loc_A8E095:  = Me.Caption
  loc_A8E09A: ILdRf var_A8
  loc_A8E09D: ConcatStr
  loc_A8E09E: FStStrNoPop var_AC
  loc_A8E0A1: LitStr " - "
  loc_A8E0A4: ConcatStr
  loc_A8E0A5: FStStrNoPop var_B0
  loc_A8E0A8: LitStr "Municipalidad de Guaymallén"
  loc_A8E0AB: ConcatStr
  loc_A8E0AC: FStStrNoPop var_B4
  loc_A8E0AF: LitStr "</title>"
  loc_A8E0B2: ConcatStr
  loc_A8E0B3: CVarStr var_C4
  loc_A8E0B6: PopAdLdVar
  loc_A8E0B7: FLdPr Me
  loc_A8E0BA: MemLdRfVar from_stack_1.htmFile
  loc_A8E0BD: LdPrVar
  loc_A8E0BF: LateMemCall
  loc_A8E0C5: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A8E0D0: FFree1Var var_C4 = ""
  loc_A8E0D3: LitStr vbNullString
  loc_A8E0D6: ILdRf Me
  loc_A8E0D9: CastAd
  loc_A8E0DC: FStAdFunc var_C8
  loc_A8E0DF: FLdRfVar var_C8
  loc_A8E0E2: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A8E0E7: FFree1Ad var_C8
  loc_A8E0EA: LitI4 0
  loc_A8E0EF: FStStrCopy var_AC
  loc_A8E0F2: FLdRfVar var_AC
  loc_A8E0F5: LitI4 0
  loc_A8E0FA: FStStrCopy var_A8
  loc_A8E0FD: FLdRfVar var_A8
  loc_A8E100: LitI2_Byte &HFF
  loc_A8E102: PopTmpLdAd2 var_CA
  loc_A8E105: FLdPr Me
  loc_A8E108: MemLdRfVar from_stack_1.htmFile
  loc_A8E10B: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A8E110: FFreeStr var_A8 = ""
  loc_A8E117: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A8E11C: PopAdLdVar
  loc_A8E11D: FLdPr Me
  loc_A8E120: MemLdRfVar from_stack_1.htmFile
  loc_A8E123: LdPrVar
  loc_A8E125: LateMemCall
  loc_A8E12B: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A8E130: PopAdLdVar
  loc_A8E131: FLdPr Me
  loc_A8E134: MemLdRfVar from_stack_1.htmFile
  loc_A8E137: LdPrVar
  loc_A8E139: LateMemCall
  loc_A8E13F: LitVarStr var_94, "    <th align=""center"" valign=""center"" scope=""col""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ACUERDO N&ordm; 3949 <br>"
  loc_A8E144: PopAdLdVar
  loc_A8E145: FLdPr Me
  loc_A8E148: MemLdRfVar from_stack_1.htmFile
  loc_A8E14B: LdPrVar
  loc_A8E14D: LateMemCall
  loc_A8E153: LitVarStr var_94, "      <span class=""Titulo2"">ANEXO 3: DE LA EJECUCIÓN DEL PRESUPUESTO CON RELACIÓN AL CÁLCULO DE RECURSOS Y FINANCIAMIENTO ACUMULADO AL FIN DEL TRIMESTRE E INGRESADO EN EL TRIMESTRE</span></p>"
  loc_A8E158: PopAdLdVar
  loc_A8E159: FLdPr Me
  loc_A8E15C: MemLdRfVar from_stack_1.htmFile
  loc_A8E15F: LdPrVar
  loc_A8E161: LateMemCall
  loc_A8E167: LitVarStr var_94, "    </th>"
  loc_A8E16C: PopAdLdVar
  loc_A8E16D: FLdPr Me
  loc_A8E170: MemLdRfVar from_stack_1.htmFile
  loc_A8E173: LdPrVar
  loc_A8E175: LateMemCall
  loc_A8E17B: LitVarStr var_94, "  </tr>"
  loc_A8E180: PopAdLdVar
  loc_A8E181: FLdPr Me
  loc_A8E184: MemLdRfVar from_stack_1.htmFile
  loc_A8E187: LdPrVar
  loc_A8E189: LateMemCall
  loc_A8E18F: LitVarStr var_94, "  <tr>"
  loc_A8E194: PopAdLdVar
  loc_A8E195: FLdPr Me
  loc_A8E198: MemLdRfVar from_stack_1.htmFile
  loc_A8E19B: LdPrVar
  loc_A8E19D: LateMemCall
  loc_A8E1A3: LitVarStr var_94, "    <th>"
  loc_A8E1A8: PopAdLdVar
  loc_A8E1A9: FLdPr Me
  loc_A8E1AC: MemLdRfVar from_stack_1.htmFile
  loc_A8E1AF: LdPrVar
  loc_A8E1B1: LateMemCall
  loc_A8E1B7: LitStr "      <p align=""left"" class=""Titulo2"">Repartición/Organismo: "
  loc_A8E1BA: LitStr "Municipalidad de Guaymallén"
  loc_A8E1BD: ConcatStr
  loc_A8E1BE: FStStrNoPop var_A8
  loc_A8E1C1: LitStr "<br>"
  loc_A8E1C4: ConcatStr
  loc_A8E1C5: CVarStr var_C4
  loc_A8E1C8: PopAdLdVar
  loc_A8E1C9: FLdPr Me
  loc_A8E1CC: MemLdRfVar from_stack_1.htmFile
  loc_A8E1CF: LdPrVar
  loc_A8E1D1: LateMemCall
  loc_A8E1D7: FFree1Str var_A8
  loc_A8E1DA: FFree1Var var_C4 = ""
  loc_A8E1DD: LitStr "    Nomenclador: "
  loc_A8E1E0: LitStr "060204"
  loc_A8E1E3: ConcatStr
  loc_A8E1E4: FStStrNoPop var_A8
  loc_A8E1E7: LitStr "<br>"
  loc_A8E1EA: ConcatStr
  loc_A8E1EB: CVarStr var_C4
  loc_A8E1EE: PopAdLdVar
  loc_A8E1EF: FLdPr Me
  loc_A8E1F2: MemLdRfVar from_stack_1.htmFile
  loc_A8E1F5: LdPrVar
  loc_A8E1F7: LateMemCall
  loc_A8E1FD: FFree1Str var_A8
  loc_A8E200: FFree1Var var_C4 = ""
  loc_A8E203: LitStr "    Ejercicio: "
  loc_A8E206: FLdRfVar var_A8
  loc_A8E209: FLdPr Me
  loc_A8E20C: VCallAd Control_ID_cboPeriodo
  loc_A8E20F: FStAdFunc var_C8
  loc_A8E212: FLdPr var_C8
  loc_A8E215:  = Me.Text
  loc_A8E21A: ILdRf var_A8
  loc_A8E21D: ConcatStr
  loc_A8E21E: FStStrNoPop var_AC
  loc_A8E221: LitStr "<br>"
  loc_A8E224: ConcatStr
  loc_A8E225: CVarStr var_C4
  loc_A8E228: PopAdLdVar
  loc_A8E229: FLdPr Me
  loc_A8E22C: MemLdRfVar from_stack_1.htmFile
  loc_A8E22F: LdPrVar
  loc_A8E231: LateMemCall
  loc_A8E237: FFreeStr var_A8 = ""
  loc_A8E23E: FFree1Ad var_C8
  loc_A8E241: FFree1Var var_C4 = ""
  loc_A8E244: FLdRfVar var_CA
  loc_A8E247: FLdPr Me
  loc_A8E24A: VCallAd Control_ID_cboTrimestre
  loc_A8E24D: FStAdFunc var_D0
  loc_A8E250: FLdPr var_D0
  loc_A8E253:  = Me.ListIndex
  loc_A8E258: FLdRfVar var_D8
  loc_A8E25B: FLdI2 var_CA
  loc_A8E25E: FLdPr Me
  loc_A8E261: VCallAd Control_ID_cboTrimestre
  loc_A8E264: FStAdFunc var_D4
  loc_A8E267: FLdPr var_D4
  loc_A8E26A:  = Me.ItemData
  loc_A8E26F: FLdRfVar var_AC
  loc_A8E272: FLdPr Me
  loc_A8E275: VCallAd Control_ID_cboPeriodo
  loc_A8E278: FStAdFunc var_DC
  loc_A8E27B: FLdPr var_DC
  loc_A8E27E:  = Me.Text
  loc_A8E283: ILdRf var_AC
  loc_A8E286: CI2Str
  loc_A8E288: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A8E28D: CVarStr var_C4
  loc_A8E290: FLdRfVar var_EC
  loc_A8E293: ImpAdCallFPR4  = Month()
  loc_A8E298: LitStr "    Trimestre: "
  loc_A8E29B: FLdRfVar var_A8
  loc_A8E29E: FLdPr Me
  loc_A8E2A1: VCallAd Control_ID_cboTrimestre
  loc_A8E2A4: FStAdFunc var_C8
  loc_A8E2A7: FLdPr var_C8
  loc_A8E2AA:  = Me.Text
  loc_A8E2AF: ILdRf var_A8
  loc_A8E2B2: ConcatStr
  loc_A8E2B3: CVarStr var_15C
  loc_A8E2B6: LitVarStr var_12C, vbNullString
  loc_A8E2BB: FStVarCopyObj var_13C
  loc_A8E2BE: FLdRfVar var_13C
  loc_A8E2C1: LitVarStr var_A4, " (PROVISORIO)"
  loc_A8E2C6: FStVarCopyObj var_11C
  loc_A8E2C9: FLdRfVar var_11C
  loc_A8E2CC: ILdRf var_D8
  loc_A8E2CF: LitI4 3
  loc_A8E2D4: MulI4
  loc_A8E2D5: CVarI4
  loc_A8E2D9: HardType
  loc_A8E2DA: FLdRfVar var_EC
  loc_A8E2DD: GtVar var_FC
  loc_A8E2E1: FStVar var_10C
  loc_A8E2E5: FLdRfVar var_10C
  loc_A8E2E8: FLdRfVar var_14C
  loc_A8E2EB: ImpAdCallFPR4  = IIf(, , )
  loc_A8E2F0: FLdRfVar var_14C
  loc_A8E2F3: ConcatVar var_16C
  loc_A8E2F7: PopAdLdVar
  loc_A8E2F8: FLdPr Me
  loc_A8E2FB: MemLdRfVar from_stack_1.htmFile
  loc_A8E2FE: LdPrVar
  loc_A8E300: LateMemCall
  loc_A8E306: FFreeStr var_A8 = ""
  loc_A8E30D: FFreeAd var_C8 = "": var_D0 = "": var_D4 = ""
  loc_A8E318: FFreeVar var_C4 = "": var_EC = "": var_10C = "": var_11C = "": var_13C = "": var_15C = "": var_14C = ""
  loc_A8E32B: LitVarStr var_94, "  </p></tr>"
  loc_A8E330: PopAdLdVar
  loc_A8E331: FLdPr Me
  loc_A8E334: MemLdRfVar from_stack_1.htmFile
  loc_A8E337: LdPrVar
  loc_A8E339: LateMemCall
  loc_A8E33F: LitVarStr var_94, "</table>"
  loc_A8E344: PopAdLdVar
  loc_A8E345: FLdPr Me
  loc_A8E348: MemLdRfVar from_stack_1.htmFile
  loc_A8E34B: LdPrVar
  loc_A8E34D: LateMemCall
  loc_A8E353: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A8E358: PopAdLdVar
  loc_A8E359: FLdPr Me
  loc_A8E35C: MemLdRfVar from_stack_1.htmFile
  loc_A8E35F: LdPrVar
  loc_A8E361: LateMemCall
  loc_A8E367: LitVarStr var_94, " <THEAD>"
  loc_A8E36C: PopAdLdVar
  loc_A8E36D: FLdPr Me
  loc_A8E370: MemLdRfVar from_stack_1.htmFile
  loc_A8E373: LdPrVar
  loc_A8E375: LateMemCall
  loc_A8E37B: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_A8E380: PopAdLdVar
  loc_A8E381: FLdPr Me
  loc_A8E384: MemLdRfVar from_stack_1.htmFile
  loc_A8E387: LdPrVar
  loc_A8E389: LateMemCall
  loc_A8E38F: LitVarStr var_94, "     <th rowspan=""2"" align=""center"">Cuenta Contable</th>"
  loc_A8E394: PopAdLdVar
  loc_A8E395: FLdPr Me
  loc_A8E398: MemLdRfVar from_stack_1.htmFile
  loc_A8E39B: LdPrVar
  loc_A8E39D: LateMemCall
  loc_A8E3A3: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">CÁLCULO ORIGINAL</th>"
  loc_A8E3A8: PopAdLdVar
  loc_A8E3A9: FLdPr Me
  loc_A8E3AC: MemLdRfVar from_stack_1.htmFile
  loc_A8E3AF: LdPrVar
  loc_A8E3B1: LateMemCall
  loc_A8E3B7: LitVarStr var_94, "     <th colspan=""2"" align=""center"">MODIFICACIONES ACUMULADAS AL FIN DE CADA TRIMESTRE</th>"
  loc_A8E3BC: PopAdLdVar
  loc_A8E3BD: FLdPr Me
  loc_A8E3C0: MemLdRfVar from_stack_1.htmFile
  loc_A8E3C3: LdPrVar
  loc_A8E3C5: LateMemCall
  loc_A8E3CB: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">CÁLCULO DEFINITIVO</th>"
  loc_A8E3D0: PopAdLdVar
  loc_A8E3D1: FLdPr Me
  loc_A8E3D4: MemLdRfVar from_stack_1.htmFile
  loc_A8E3D7: LdPrVar
  loc_A8E3D9: LateMemCall
  loc_A8E3DF: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">INGRESADO ACUMULADO AL FIN DE CADA TRIMESTRE</th>"
  loc_A8E3E4: PopAdLdVar
  loc_A8E3E5: FLdPr Me
  loc_A8E3E8: MemLdRfVar from_stack_1.htmFile
  loc_A8E3EB: LdPrVar
  loc_A8E3ED: LateMemCall
  loc_A8E3F3: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">DIFERENCIA</th>"
  loc_A8E3F8: PopAdLdVar
  loc_A8E3F9: FLdPr Me
  loc_A8E3FC: MemLdRfVar from_stack_1.htmFile
  loc_A8E3FF: LdPrVar
  loc_A8E401: LateMemCall
  loc_A8E407: LitVarStr var_94, "     <th width=""7" & Chr(37) & """ rowspan=""2"" align=""center"">INGRESADO EN EL TRIMESTRE</th>"
  loc_A8E40C: PopAdLdVar
  loc_A8E40D: FLdPr Me
  loc_A8E410: MemLdRfVar from_stack_1.htmFile
  loc_A8E413: LdPrVar
  loc_A8E415: LateMemCall
  loc_A8E41B: LitVarStr var_94, "   </tr>"
  loc_A8E420: PopAdLdVar
  loc_A8E421: FLdPr Me
  loc_A8E424: MemLdRfVar from_stack_1.htmFile
  loc_A8E427: LdPrVar
  loc_A8E429: LateMemCall
  loc_A8E42F: LitVarStr var_94, " <tr class=""Encabezado"">"
  loc_A8E434: PopAdLdVar
  loc_A8E435: FLdPr Me
  loc_A8E438: MemLdRfVar from_stack_1.htmFile
  loc_A8E43B: LdPrVar
  loc_A8E43D: LateMemCall
  loc_A8E443: LitVarStr var_94, "      <th width=""7" & Chr(37) & """ align=""center"">AUMENTOS</th>"
  loc_A8E448: PopAdLdVar
  loc_A8E449: FLdPr Me
  loc_A8E44C: MemLdRfVar from_stack_1.htmFile
  loc_A8E44F: LdPrVar
  loc_A8E451: LateMemCall
  loc_A8E457: LitVarStr var_94, "      <th width=""7" & Chr(37) & """ align=""center"">DISMINUCIONES</th>"
  loc_A8E45C: PopAdLdVar
  loc_A8E45D: FLdPr Me
  loc_A8E460: MemLdRfVar from_stack_1.htmFile
  loc_A8E463: LdPrVar
  loc_A8E465: LateMemCall
  loc_A8E46B: LitVarStr var_94, " </tr>"
  loc_A8E470: PopAdLdVar
  loc_A8E471: FLdPr Me
  loc_A8E474: MemLdRfVar from_stack_1.htmFile
  loc_A8E477: LdPrVar
  loc_A8E479: LateMemCall
  loc_A8E47F: LitVarStr var_94, " </THEAD>"
  loc_A8E484: PopAdLdVar
  loc_A8E485: FLdPr Me
  loc_A8E488: MemLdRfVar from_stack_1.htmFile
  loc_A8E48B: LdPrVar
  loc_A8E48D: LateMemCall
  loc_A8E493: ExitProcHresult
End Function

Private Function Proc_163_24_9EDBFC() '9EDBFC
  'Data Table: 457920
  loc_9EDAB8: LitVarStr var_94, "</table>"
  loc_9EDABD: PopAdLdVar
  loc_9EDABE: FLdPr Me
  loc_9EDAC1: MemLdRfVar from_stack_1.htmFile
  loc_9EDAC4: LdPrVar
  loc_9EDAC6: LateMemCall
  loc_9EDACC: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_9EDAD1: PopAdLdVar
  loc_9EDAD2: FLdPr Me
  loc_9EDAD5: MemLdRfVar from_stack_1.htmFile
  loc_9EDAD8: LdPrVar
  loc_9EDADA: LateMemCall
  loc_9EDAE0: LitVarStr var_94, "  <tr>"
  loc_9EDAE5: PopAdLdVar
  loc_9EDAE6: FLdPr Me
  loc_9EDAE9: MemLdRfVar from_stack_1.htmFile
  loc_9EDAEC: LdPrVar
  loc_9EDAEE: LateMemCall
  loc_9EDAF4: LitVarStr var_94, "    <th scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_9EDAF9: PopAdLdVar
  loc_9EDAFA: FLdPr Me
  loc_9EDAFD: MemLdRfVar from_stack_1.htmFile
  loc_9EDB00: LdPrVar
  loc_9EDB02: LateMemCall
  loc_9EDB08: LitVarStr var_94, "          <map name=""Map"">"
  loc_9EDB0D: PopAdLdVar
  loc_9EDB0E: FLdPr Me
  loc_9EDB11: MemLdRfVar from_stack_1.htmFile
  loc_9EDB14: LdPrVar
  loc_9EDB16: LateMemCall
  loc_9EDB1C: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_9EDB21: PopAdLdVar
  loc_9EDB22: FLdPr Me
  loc_9EDB25: MemLdRfVar from_stack_1.htmFile
  loc_9EDB28: LdPrVar
  loc_9EDB2A: LateMemCall
  loc_9EDB30: LitVarStr var_94, "          </map>"
  loc_9EDB35: PopAdLdVar
  loc_9EDB36: FLdPr Me
  loc_9EDB39: MemLdRfVar from_stack_1.htmFile
  loc_9EDB3C: LdPrVar
  loc_9EDB3E: LateMemCall
  loc_9EDB44: LitVarStr var_94, "    </div></th>"
  loc_9EDB49: PopAdLdVar
  loc_9EDB4A: FLdPr Me
  loc_9EDB4D: MemLdRfVar from_stack_1.htmFile
  loc_9EDB50: LdPrVar
  loc_9EDB52: LateMemCall
  loc_9EDB58: LitVarStr var_94, "  </tr>"
  loc_9EDB5D: PopAdLdVar
  loc_9EDB5E: FLdPr Me
  loc_9EDB61: MemLdRfVar from_stack_1.htmFile
  loc_9EDB64: LdPrVar
  loc_9EDB66: LateMemCall
  loc_9EDB6C: LitVarStr var_94, "  <tr>"
  loc_9EDB71: PopAdLdVar
  loc_9EDB72: FLdPr Me
  loc_9EDB75: MemLdRfVar from_stack_1.htmFile
  loc_9EDB78: LdPrVar
  loc_9EDB7A: LateMemCall
  loc_9EDB80: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_9EDB85: PopAdLdVar
  loc_9EDB86: FLdPr Me
  loc_9EDB89: MemLdRfVar from_stack_1.htmFile
  loc_9EDB8C: LdPrVar
  loc_9EDB8E: LateMemCall
  loc_9EDB94: LitVarStr var_94, "  </tr>"
  loc_9EDB99: PopAdLdVar
  loc_9EDB9A: FLdPr Me
  loc_9EDB9D: MemLdRfVar from_stack_1.htmFile
  loc_9EDBA0: LdPrVar
  loc_9EDBA2: LateMemCall
  loc_9EDBA8: LitVarStr var_94, "</table>"
  loc_9EDBAD: PopAdLdVar
  loc_9EDBAE: FLdPr Me
  loc_9EDBB1: MemLdRfVar from_stack_1.htmFile
  loc_9EDBB4: LdPrVar
  loc_9EDBB6: LateMemCall
  loc_9EDBBC: LitVarStr var_94, "<p class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</p>"
  loc_9EDBC1: PopAdLdVar
  loc_9EDBC2: FLdPr Me
  loc_9EDBC5: MemLdRfVar from_stack_1.htmFile
  loc_9EDBC8: LdPrVar
  loc_9EDBCA: LateMemCall
  loc_9EDBD0: LitVarStr var_94, "</body>"
  loc_9EDBD5: PopAdLdVar
  loc_9EDBD6: FLdPr Me
  loc_9EDBD9: MemLdRfVar from_stack_1.htmFile
  loc_9EDBDC: LdPrVar
  loc_9EDBDE: LateMemCall
  loc_9EDBE4: LitVarStr var_94, "</html>"
  loc_9EDBE9: PopAdLdVar
  loc_9EDBEA: FLdPr Me
  loc_9EDBED: MemLdRfVar from_stack_1.htmFile
  loc_9EDBF0: LdPrVar
  loc_9EDBF2: LateMemCall
  loc_9EDBF8: ExitProcHresult
End Function
