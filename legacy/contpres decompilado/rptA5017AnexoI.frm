VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA5017AnexoI
  Caption = "Acuerdo 5017 - Anexo I"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA5017AnexoI.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7845
  ClientHeight = 2775
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2520
    Width = 7845
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptA5017AnexoI.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptA5017AnexoI.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA5017AnexoI.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1320
    Width = 4455
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 14
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6135
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4320
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
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1815
      Top = 720
      Width = 1455
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 1335
      Top = 720
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptA5017AnexoI.frx":0C00
  End
End

Attribute VB_Name = "rptA5017AnexoI"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_005BC120
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A874
  'Data Table: 4462D0
  loc_98A83C: FLdPr Me
  loc_98A83F: VCallAd Control_ID_statusBar
  loc_98A842: FStAdFunc var_88
  loc_98A845: FLdPr var_88
  loc_98A848: LateIdLdVar var_98 DispID_1 0
  loc_98A84F: CStrVarTmp
  loc_98A850: CVarStr var_A8
  loc_98A853: PopAdLdVar
  loc_98A854: FLdPr Me
  loc_98A857: VCallAd Control_ID_statusBar
  loc_98A85A: FStAdFunc var_BC
  loc_98A85D: FLdPr var_BC
  loc_98A860: LateIdSt
  loc_98A865: FFreeAd var_88 = ""
  loc_98A86C: FFreeVar var_98 = ""
  loc_98A873: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9582E4
  'Data Table: 4462D0
  loc_9582CC: LitI2_Byte 0
  loc_9582CE: ILdRf Me
  loc_9582D1: CastAd
  loc_9582D4: FStAdFunc var_88
  loc_9582D7: FLdRfVar var_88
  loc_9582DA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9582DF: FFree1Ad var_88
  loc_9582E2: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '957FA0
  'Data Table: 4462D0
  loc_957F88: ILdRf Me
  loc_957F8B: CastAd
  loc_957F8E: FStAdFunc var_88
  loc_957F91: FLdRfVar var_88
  loc_957F94: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_957F99: FFree1Ad var_88
  loc_957F9C: ExitProcHresult
  loc_957F9D: LtI4
  loc_957F9E: MemLdPr global_22531
End Sub

Private Sub cmdSalir_Click() '97C044
  'Data Table: 4462D0
  loc_97C014: LitVarStr var_94, "Cerrando..."
  loc_97C019: PopAdLdVar
  loc_97C01A: FLdPr Me
  loc_97C01D: VCallAd Control_ID_statusBar
  loc_97C020: FStAdFunc var_A8
  loc_97C023: FLdPr var_A8
  loc_97C026: LateIdSt
  loc_97C02B: FFree1Ad var_A8
  loc_97C02E: ILdRf Me
  loc_97C031: FStAdNoPop
  loc_97C035: ImpAdLdRf MemVar_C44F9C
  loc_97C038: NewIfNullPr Me
  loc_97C03B: Me.Global.Unload from_stack_1
  loc_97C040: FFree1Ad var_A8
  loc_97C043: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9693CC
  'Data Table: 4462D0
  loc_9693B0: LitI2_Byte &HFF
  loc_9693B2: LitI2_Byte 0
  loc_9693B4: ILdRf Me
  loc_9693B7: CastAd
  loc_9693BA: FStAdFunc var_88
  loc_9693BD: FLdRfVar var_88
  loc_9693C0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_9693C5: FFree1Ad var_88
  loc_9693C8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9A8820
  'Data Table: 4462D0
  loc_9A879C: LitI2_Byte 0
  loc_9A879E: FLdPr Me
  loc_9A87A1: MemStI2 bGenerado
  loc_9A87A4: LitI2_Byte &HFF
  loc_9A87A6: FLdPr Me
  loc_9A87A9: MemStI2 bLogos
  loc_9A87AC: ImpAdLdI2 MemVar_C3D064
  loc_9A87AF: CStrUI1
  loc_9A87B1: FStStrNoPop var_88
  loc_9A87B4: FLdPr Me
  loc_9A87B7: VCallAd Control_ID_cboPeriodo
  loc_9A87BA: FStAdFunc var_8C
  loc_9A87BD: FLdPr var_8C
  loc_9A87C0: Me.Text = from_stack_1
  loc_9A87C5: FFree1Str var_88
  loc_9A87C8: FFree1Ad var_8C
  loc_9A87CB: FLdRfVar var_9C
  loc_9A87CE: ImpAdCallFPR4  = Date
  loc_9A87D3: FLdRfVar var_9C
  loc_9A87D6: FLdRfVar var_AC
  loc_9A87D9: ImpAdCallFPR4  = Month()
  loc_9A87DE: FLdRfVar var_AC
  loc_9A87E1: LitVarI2 var_BC, 1
  loc_9A87E6: SubVar var_CC
  loc_9A87EA: CI2Var
  loc_9A87EB: FLdPr Me
  loc_9A87EE: VCallAd Control_ID_cboMes
  loc_9A87F1: FStAdFunc var_8C
  loc_9A87F4: FLdPr var_8C
  loc_9A87F7: Me.ListIndex = from_stack_1
  loc_9A87FC: FFree1Ad var_8C
  loc_9A87FF: FFreeVar var_9C = ""
  loc_9A8806: Call HabilitarCriterio()
  loc_9A880B: ILdRf Me
  loc_9A880E: CastAd
  loc_9A8811: FStAdFunc var_8C
  loc_9A8814: FLdRfVar var_8C
  loc_9A8817: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9A881C: FFree1Ad var_8C
  loc_9A881F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '961294
  'Data Table: 4462D0
  loc_96127C: ILdRf Me
  loc_96127F: CastAd
  loc_961282: FStAdFunc var_88
  loc_961285: FLdRfVar var_88
  loc_961288: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96128D: FFree1Ad var_88
  loc_961290: ExitProcHresult
End Sub

Private Sub cmdHtml_Click() '9623CC
  'Data Table: 4462D0
  loc_9623B4: ILdRf Me
  loc_9623B7: CastAd
  loc_9623BA: FStAdFunc var_88
  loc_9623BD: FLdRfVar var_88
  loc_9623C0: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_9623C5: FFree1Ad var_88
  loc_9623C8: ExitProcHresult
  loc_9623C9: EqCyR8
End Sub

Private Sub Form_Load() 'A17748
  'Data Table: 4462D0
  loc_A175D0: LitVar_TRUE var_DC
  loc_A175D3: LitVar_FALSE
  loc_A175D7: LitStr "Municipalidad de Guaymallén"
  loc_A175DA: LitStr "Municipalidad de Malargüe"
  loc_A175DD: EqStr
  loc_A175DF: CVarBoolI2 var_9C
  loc_A175E3: FLdRfVar var_EC
  loc_A175E6: ImpAdCallFPR4  = IIf(, , )
  loc_A175EB: FLdRfVar var_EC
  loc_A175EE: CBoolVar
  loc_A175F0: ImpAdStI2 MemVar_C3D840
  loc_A175F3: FFreeVar var_9C = "": var_BC = "": var_DC = ""
  loc_A175FE: ILdRf Me
  loc_A17601: CastAd
  loc_A17604: FStAdFunc var_F0
  loc_A17607: FLdRfVar var_F0
  loc_A1760A: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1760F: FFree1Ad var_F0
  loc_A17612: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A17615: FLdRfVar var_88
  loc_A17618: NewIfNullPr clsperiodo
  loc_A1761B: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A17620: FLdRfVar var_F4
  loc_A17623: FLdRfVar var_88
  loc_A17626: NewIfNullPr clsperiodo
  loc_A17629: from_stack_1 = clsperiodo.RecordCount
  loc_A1762E: ILdRf var_F4
  loc_A17631: LitI4 0
  loc_A17636: GtI4
  loc_A17637: BranchF loc_A176CA
  loc_A1763A: FLdRfVar var_88
  loc_A1763D: NewIfNullPr clsperiodo
  loc_A17640: Call clsperiodo.MoveFirst()
  loc_A17645: FLdRfVar var_F6
  loc_A17648: FLdRfVar var_88
  loc_A1764B: NewIfNullPr clsperiodo
  loc_A1764E: from_stack_1 = clsperiodo.EOF
  loc_A17653: FLdI2 var_F6
  loc_A17656: NotI4
  loc_A17657: BranchF loc_A176CA
  loc_A1765A: LitVar_Missing var_AC
  loc_A1765D: PopAdLdVar
  loc_A1765E: FLdRfVar var_BC
  loc_A17661: FLdRfVar var_100
  loc_A17664: LitVarStr var_9C, "PeriInfo"
  loc_A17669: PopAdLdVar
  loc_A1766A: FLdRfVar var_FC
  loc_A1766D: FLdRfVar var_F0
  loc_A17670: FLdRfVar var_88
  loc_A17673: NewIfNullPr clsperiodo
  loc_A17676: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1767B: FLdPr var_F0
  loc_A1767E:  = Me.Fields
  loc_A17683: FLdPr var_FC
  loc_A17686: from_stack_2 = Me.Item(from_stack_1)
  loc_A1768B: FLdPr var_100
  loc_A1768E:  = Me.Value
  loc_A17693: FLdRfVar var_BC
  loc_A17696: CStrVarTmp
  loc_A17697: FStStrNoPop var_104
  loc_A1769A: FLdPr Me
  loc_A1769D: VCallAd Control_ID_cboPeriodo
  loc_A176A0: FStAdFunc var_108
  loc_A176A3: FLdPr var_108
  loc_A176A6: Me.AddItem from_stack_1, from_stack_2
  loc_A176AB: FFree1Str var_104
  loc_A176AE: FFreeAd var_F0 = "": var_FC = "": var_100 = ""
  loc_A176B9: FFree1Var var_BC = ""
  loc_A176BC: FLdRfVar var_88
  loc_A176BF: NewIfNullPr clsperiodo
  loc_A176C2: Call clsperiodo.MoveSiguiente()
  loc_A176C7: Branch loc_A17645
  loc_A176CA: LitI2_Byte 1
  loc_A176CC: CUI1I2
  loc_A176CE: FLdRfVar var_8A
  loc_A176D1: LitI2_Byte &HC
  loc_A176D3: CUI1I2
  loc_A176D5: ForUI1 var_10C
  loc_A176DB: LitVar_Missing var_9C
  loc_A176DE: PopAdLdVar
  loc_A176DF: LitI2_Byte 0
  loc_A176E1: FLdUI1
  loc_A176E5: CI4UI1
  loc_A176E6: ImpAdCallI2 MonthName(, )
  loc_A176EB: FStStrNoPop var_104
  loc_A176EE: FLdPr Me
  loc_A176F1: VCallAd Control_ID_cboMes
  loc_A176F4: FStAdFunc var_F0
  loc_A176F7: FLdPr var_F0
  loc_A176FA: Me.AddItem from_stack_1, from_stack_2
  loc_A176FF: FFree1Str var_104
  loc_A17702: FFree1Ad var_F0
  loc_A17705: FLdUI1
  loc_A17709: CI4UI1
  loc_A1770A: FLdRfVar var_F6
  loc_A1770D: FLdPr Me
  loc_A17710: VCallAd Control_ID_cboMes
  loc_A17713: FStAdFunc var_F0
  loc_A17716: FLdPr var_F0
  loc_A17719:  = Me.NewIndex
  loc_A1771E: FLdI2 var_F6
  loc_A17721: FLdPr Me
  loc_A17724: VCallAd Control_ID_cboMes
  loc_A17727: FStAdFunc var_FC
  loc_A1772A: FLdPr var_FC
  loc_A1772D: Me.ItemData = from_stack_1
  loc_A17732: FFreeAd var_F0 = ""
  loc_A17739: FLdRfVar var_8A
  loc_A1773C: NextUI1
  loc_A17742: Call cmdNueva_Click()
  loc_A17747: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9586C0
  'Data Table: 4462D0
  loc_9586A8: FLdPr Me
  loc_9586AB: VCallAd Control_ID_wbbReporte
  loc_9586AE: FStAdFunc var_88
  loc_9586B1: FLdRfVar var_88
  loc_9586B4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9586B9: FFree1Ad var_88
  loc_9586BC: ExitProcHresult
End Sub

Public Function htmFileGet() '446F04
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '446F13
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '446F22
  htmFile = Value
End Sub

Public Function bLogosGet() '446F31
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '446F40
  bLogos = Value
End Sub

Public Function bGeneradoGet() '446F4F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '446F5E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991950
  'Data Table: 4462D0
  loc_99190C: LitI4 0
  loc_991911: LitI4 1
  loc_991916: FLdRfVar var_88
  loc_991919: Redim
  loc_991923: FLdPr Me
  loc_991926: VCallAd Control_ID_cboPeriodo
  loc_991929: CVarAd
  loc_99192D: ParmAry1St
  loc_991933: FLdPr Me
  loc_991936: VCallAd Control_ID_cboMes
  loc_991939: CVarAd
  loc_99193D: ParmAry1St
  loc_991943: FLdRfVar var_88
  loc_991946: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_99194B: FLdRfVar var_88
  loc_99194E: Erase
  loc_99194F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B1C17C
  'Data Table: 4462D0
  loc_B1B8F0: FLdPr Me
  loc_B1B8F3: MemLdI2 bGenerado
  loc_B1B8F6: BranchF loc_B1B8FA
  loc_B1B8F9: ExitProcHresult
  loc_B1B8FA: LitVarStr var_94, "Generando reporte..."
  loc_B1B8FF: PopAdLdVar
  loc_B1B900: FLdPr Me
  loc_B1B903: VCallAd Control_ID_statusBar
  loc_B1B906: FStAdFunc var_A8
  loc_B1B909: FLdPr var_A8
  loc_B1B90C: LateIdSt
  loc_B1B911: FFree1Ad var_A8
  loc_B1B914: LitI4 &HB
  loc_B1B919: CI2I4
  loc_B1B91A: FLdPr Me
  loc_B1B91D: Me.MousePointer = from_stack_1
  loc_B1B922: FLdPr Me
  loc_B1B925: MemLdRfVar from_stack_1.global_72
  loc_B1B928: NewIfNullAd
  loc_B1B92B: FStAd var_AC 
  loc_B1B92F: LitStr "SELECT mp.ExpeImpu, mp.NumeLiqu, FearOrpa, mp.CucuPers, DetaProv, FechImpu, TifaDeve, SufaDeve, NufaDeve, MapaImpu, mp.CodiPart, DetaPart"
  loc_B1B932: LitStr " FROM mandadopagar mp"
  loc_B1B935: ConcatStr
  loc_B1B936: FStStrNoPop var_B0
  loc_B1B939: LitStr " INNER JOIN imputacion ON imputacion.PeriInfo = mp.PeriInfo AND imputacion.CodiPart = mp.CodiPart AND imputacion.CodiOrga = mp.CodiOrga AND imputacion.NumeImpu = mp.NumeImpu"
  loc_B1B93C: ConcatStr
  loc_B1B93D: FStStrNoPop var_B4
  loc_B1B940: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = mp.PeriInfo AND ordenpago.NumeOrpa = mp.NumeOrpa"
  loc_B1B943: ConcatStr
  loc_B1B944: FStStrNoPop var_B8
  loc_B1B947: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = mp.CucuPers"
  loc_B1B94A: ConcatStr
  loc_B1B94B: FStStrNoPop var_BC
  loc_B1B94E: LitStr " INNER JOIN partida ON partida.PeriInfo = mp.PeriInfo AND partida.CodiPart = mp.CodiPart"
  loc_B1B951: ConcatStr
  loc_B1B952: FStStrNoPop var_C0
  loc_B1B955: LitStr " WHERE mp.PeriInfo = "
  loc_B1B958: ConcatStr
  loc_B1B959: FStStrNoPop var_C8
  loc_B1B95C: FLdRfVar var_C4
  loc_B1B95F: FLdPr Me
  loc_B1B962: VCallAd Control_ID_cboPeriodo
  loc_B1B965: FStAdFunc var_A8
  loc_B1B968: FLdPr var_A8
  loc_B1B96B:  = Me.Text
  loc_B1B970: ILdRf var_C4
  loc_B1B973: ConcatStr
  loc_B1B974: FStStrNoPop var_CC
  loc_B1B977: LitStr " AND (mp.CodiPart = '51800000' OR mp.CodiPart = '51900000')"
  loc_B1B97A: ConcatStr
  loc_B1B97B: FStStrNoPop var_D0
  loc_B1B97E: LitStr " AND Month(FechImpu) = "
  loc_B1B981: ConcatStr
  loc_B1B982: FStStrNoPop var_E4
  loc_B1B985: FLdRfVar var_E0
  loc_B1B988: FLdRfVar var_D6
  loc_B1B98B: FLdPr Me
  loc_B1B98E: VCallAd Control_ID_cboMes
  loc_B1B991: FStAdFunc var_D4
  loc_B1B994: FLdPr var_D4
  loc_B1B997:  = Me.ListIndex
  loc_B1B99C: FLdI2 var_D6
  loc_B1B99F: FLdPr Me
  loc_B1B9A2: VCallAd Control_ID_cboMes
  loc_B1B9A5: FStAdFunc var_DC
  loc_B1B9A8: FLdPr var_DC
  loc_B1B9AB:  = Me.ItemData
  loc_B1B9B0: ILdRf var_E0
  loc_B1B9B3: CStrI4
  loc_B1B9B5: FStStrNoPop var_E8
  loc_B1B9B8: ConcatStr
  loc_B1B9B9: FStStrNoPop var_EC
  loc_B1B9BC: LitStr " ORDER BY ExpeImpu"
  loc_B1B9BF: ConcatStr
  loc_B1B9C0: FStStrNoPop var_F0
  loc_B1B9C3: FLdPr var_AC
  loc_B1B9C6: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1B9CB: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C8 = "": var_C4 = "": var_CC = "": var_D0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_B1B9E8: FFreeAd var_A8 = "": var_D4 = ""
  loc_B1B9F1: FLdRfVar var_E0
  loc_B1B9F4: FLdPr var_AC
  loc_B1B9F7: from_stack_1 = clsbase.RecordCount
  loc_B1B9FC: ILdRf var_E0
  loc_B1B9FF: LitI4 0
  loc_B1BA04: EqI4
  loc_B1BA05: BranchF loc_B1BA15
  loc_B1BA08: LitI4 0
  loc_B1BA0D: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1BA10: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1BA15: FLdRfVar var_E0
  loc_B1BA18: FLdPr var_AC
  loc_B1BA1B: from_stack_1 = clsbase.RecordCount
  loc_B1BA20: ILdRf var_E0
  loc_B1BA23: LitI4 0
  loc_B1BA28: GtI4
  loc_B1BA29: BranchF loc_B1BF1B
  loc_B1BA2C: LitI4 0
  loc_B1BA31: FLdRfVar var_E0
  loc_B1BA34: FLdPr var_AC
  loc_B1BA37: from_stack_1 = clsbase.RecordCount
  loc_B1BA3C: ILdRf var_E0
  loc_B1BA3F: FLdPr Me
  loc_B1BA42: MemLdRfVar from_stack_1.global_80
  loc_B1BA45: Redim
  loc_B1BA4F: LitI2_Byte 0
  loc_B1BA51: CStrUI1
  loc_B1BA53: FStStrNoPop var_B0
  loc_B1BA56: FLdPr Me
  loc_B1BA59: MemStStrCopy
  loc_B1BA5D: FFree1Str var_B0
  loc_B1BA60: FLdPr var_AC
  loc_B1BA63: Call clsbase.MoveFirst()
  loc_B1BA68: LitI2_Byte 1
  loc_B1BA6A: FLdPr Me
  loc_B1BA6D: MemLdRfVar from_stack_1.global_88
  loc_B1BA70: FLdPr Me
  loc_B1BA73: MemLdStr global_80
  loc_B1BA76: LitI2_Byte 1
  loc_B1BA78: FnUBound
  loc_B1BA7A: CI2I4
  loc_B1BA7B: ForI2 var_F4
  loc_B1BA81: FLdRfVar var_DC
  loc_B1BA84: LitVarStr var_94, "ExpeImpu"
  loc_B1BA89: PopAdLdVar
  loc_B1BA8A: FLdRfVar var_D4
  loc_B1BA8D: FLdRfVar var_A8
  loc_B1BA90: FLdPr var_AC
  loc_B1BA93: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BA98: FLdPr var_A8
  loc_B1BA9B:  = Me.Fields
  loc_B1BAA0: FLdPr var_D4
  loc_B1BAA3: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BAA8: LitI2_Byte 0
  loc_B1BAAA: LitVar_Missing var_118
  loc_B1BAAD: LitI2_Byte 0
  loc_B1BAAF: FLdZeroAd var_DC
  loc_B1BAB2: CVarAd
  loc_B1BAB6: PopAdLdVar
  loc_B1BAB7: FLdPr Me
  loc_B1BABA: MemLdI2 global_88
  loc_B1BABD: CI4UI1
  loc_B1BABE: FLdPr Me
  loc_B1BAC1: MemLdStr global_80
  loc_B1BAC4: AryLock
  loc_B1BAC7: Ary1LdPr
  loc_B1BAC8: MemLdRfVar from_stack_1.global_0
  loc_B1BACB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BAD0: AryUnlock
  loc_B1BAD3: FFreeAd var_A8 = ""
  loc_B1BADA: FFreeVar var_108 = ""
  loc_B1BAE1: FLdRfVar var_DC
  loc_B1BAE4: LitVarStr var_94, "NumeLiqu"
  loc_B1BAE9: PopAdLdVar
  loc_B1BAEA: FLdRfVar var_D4
  loc_B1BAED: FLdRfVar var_A8
  loc_B1BAF0: FLdPr var_AC
  loc_B1BAF3: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BAF8: FLdPr var_A8
  loc_B1BAFB:  = Me.Fields
  loc_B1BB00: FLdPr var_D4
  loc_B1BB03: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BB08: LitI2_Byte 0
  loc_B1BB0A: LitVar_Missing var_118
  loc_B1BB0D: LitI2_Byte 0
  loc_B1BB0F: FLdZeroAd var_DC
  loc_B1BB12: CVarAd
  loc_B1BB16: PopAdLdVar
  loc_B1BB17: FLdPr Me
  loc_B1BB1A: MemLdI2 global_88
  loc_B1BB1D: CI4UI1
  loc_B1BB1E: FLdPr Me
  loc_B1BB21: MemLdStr global_80
  loc_B1BB24: AryLock
  loc_B1BB27: Ary1LdPr
  loc_B1BB28: MemLdRfVar from_stack_1.global_4
  loc_B1BB2B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BB30: AryUnlock
  loc_B1BB33: FFreeAd var_A8 = ""
  loc_B1BB3A: FFreeVar var_108 = ""
  loc_B1BB41: FLdRfVar var_DC
  loc_B1BB44: LitVarStr var_94, "FearOrpa"
  loc_B1BB49: PopAdLdVar
  loc_B1BB4A: FLdRfVar var_D4
  loc_B1BB4D: FLdRfVar var_A8
  loc_B1BB50: FLdPr var_AC
  loc_B1BB53: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BB58: FLdPr var_A8
  loc_B1BB5B:  = Me.Fields
  loc_B1BB60: FLdPr var_D4
  loc_B1BB63: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BB68: LitI2_Byte 0
  loc_B1BB6A: LitVar_Missing var_118
  loc_B1BB6D: LitI2_Byte 0
  loc_B1BB6F: FLdZeroAd var_DC
  loc_B1BB72: CVarAd
  loc_B1BB76: PopAdLdVar
  loc_B1BB77: FLdPr Me
  loc_B1BB7A: MemLdI2 global_88
  loc_B1BB7D: CI4UI1
  loc_B1BB7E: FLdPr Me
  loc_B1BB81: MemLdStr global_80
  loc_B1BB84: AryLock
  loc_B1BB87: Ary1LdPr
  loc_B1BB88: MemLdRfVar from_stack_1.global_8
  loc_B1BB8B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BB90: AryUnlock
  loc_B1BB93: FFreeAd var_A8 = ""
  loc_B1BB9A: FFreeVar var_108 = ""
  loc_B1BBA1: FLdRfVar var_DC
  loc_B1BBA4: LitVarStr var_94, "CucuPers"
  loc_B1BBA9: PopAdLdVar
  loc_B1BBAA: FLdRfVar var_D4
  loc_B1BBAD: FLdRfVar var_A8
  loc_B1BBB0: FLdPr var_AC
  loc_B1BBB3: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BBB8: FLdPr var_A8
  loc_B1BBBB:  = Me.Fields
  loc_B1BBC0: FLdPr var_D4
  loc_B1BBC3: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BBC8: LitI2_Byte 0
  loc_B1BBCA: LitVar_Missing var_118
  loc_B1BBCD: LitI2_Byte 0
  loc_B1BBCF: FLdZeroAd var_DC
  loc_B1BBD2: CVarAd
  loc_B1BBD6: PopAdLdVar
  loc_B1BBD7: FLdPr Me
  loc_B1BBDA: MemLdI2 global_88
  loc_B1BBDD: CI4UI1
  loc_B1BBDE: FLdPr Me
  loc_B1BBE1: MemLdStr global_80
  loc_B1BBE4: AryLock
  loc_B1BBE7: Ary1LdPr
  loc_B1BBE8: MemLdRfVar from_stack_1.global_12
  loc_B1BBEB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BBF0: AryUnlock
  loc_B1BBF3: FFreeAd var_A8 = ""
  loc_B1BBFA: FFreeVar var_108 = ""
  loc_B1BC01: FLdRfVar var_DC
  loc_B1BC04: LitVarStr var_94, "DetaProv"
  loc_B1BC09: PopAdLdVar
  loc_B1BC0A: FLdRfVar var_D4
  loc_B1BC0D: FLdRfVar var_A8
  loc_B1BC10: FLdPr var_AC
  loc_B1BC13: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BC18: FLdPr var_A8
  loc_B1BC1B:  = Me.Fields
  loc_B1BC20: FLdPr var_D4
  loc_B1BC23: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BC28: LitI2_Byte 0
  loc_B1BC2A: LitVar_Missing var_118
  loc_B1BC2D: LitI2_Byte 0
  loc_B1BC2F: FLdZeroAd var_DC
  loc_B1BC32: CVarAd
  loc_B1BC36: PopAdLdVar
  loc_B1BC37: FLdPr Me
  loc_B1BC3A: MemLdI2 global_88
  loc_B1BC3D: CI4UI1
  loc_B1BC3E: FLdPr Me
  loc_B1BC41: MemLdStr global_80
  loc_B1BC44: AryLock
  loc_B1BC47: Ary1LdPr
  loc_B1BC48: MemLdRfVar from_stack_1.global_16
  loc_B1BC4B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BC50: AryUnlock
  loc_B1BC53: FFreeAd var_A8 = ""
  loc_B1BC5A: FFreeVar var_108 = ""
  loc_B1BC61: FLdRfVar var_DC
  loc_B1BC64: LitVarStr var_94, "FechImpu"
  loc_B1BC69: PopAdLdVar
  loc_B1BC6A: FLdRfVar var_D4
  loc_B1BC6D: FLdRfVar var_A8
  loc_B1BC70: FLdPr var_AC
  loc_B1BC73: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BC78: FLdPr var_A8
  loc_B1BC7B:  = Me.Fields
  loc_B1BC80: FLdPr var_D4
  loc_B1BC83: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BC88: LitI2_Byte 0
  loc_B1BC8A: LitVar_Missing var_118
  loc_B1BC8D: LitI2_Byte 0
  loc_B1BC8F: FLdZeroAd var_DC
  loc_B1BC92: CVarAd
  loc_B1BC96: PopAdLdVar
  loc_B1BC97: FLdPr Me
  loc_B1BC9A: MemLdI2 global_88
  loc_B1BC9D: CI4UI1
  loc_B1BC9E: FLdPr Me
  loc_B1BCA1: MemLdStr global_80
  loc_B1BCA4: AryLock
  loc_B1BCA7: Ary1LdPr
  loc_B1BCA8: MemLdRfVar from_stack_1.global_20
  loc_B1BCAB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BCB0: AryUnlock
  loc_B1BCB3: FFreeAd var_A8 = ""
  loc_B1BCBA: FFreeVar var_108 = ""
  loc_B1BCC1: FLdRfVar var_DC
  loc_B1BCC4: LitVarStr var_94, "TifaDeve"
  loc_B1BCC9: PopAdLdVar
  loc_B1BCCA: FLdRfVar var_D4
  loc_B1BCCD: FLdRfVar var_A8
  loc_B1BCD0: FLdPr var_AC
  loc_B1BCD3: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BCD8: FLdPr var_A8
  loc_B1BCDB:  = Me.Fields
  loc_B1BCE0: FLdPr var_D4
  loc_B1BCE3: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BCE8: LitI2_Byte 0
  loc_B1BCEA: LitVar_Missing var_118
  loc_B1BCED: LitI2_Byte 0
  loc_B1BCEF: FLdZeroAd var_DC
  loc_B1BCF2: CVarAd
  loc_B1BCF6: PopAdLdVar
  loc_B1BCF7: FLdPr Me
  loc_B1BCFA: MemLdI2 global_88
  loc_B1BCFD: CI4UI1
  loc_B1BCFE: FLdPr Me
  loc_B1BD01: MemLdStr global_80
  loc_B1BD04: AryLock
  loc_B1BD07: Ary1LdPr
  loc_B1BD08: MemLdRfVar from_stack_1.global_24
  loc_B1BD0B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BD10: AryUnlock
  loc_B1BD13: FFreeAd var_A8 = ""
  loc_B1BD1A: FFreeVar var_108 = ""
  loc_B1BD21: FLdRfVar var_DC
  loc_B1BD24: LitVarStr var_94, "SufaDeve"
  loc_B1BD29: PopAdLdVar
  loc_B1BD2A: FLdRfVar var_D4
  loc_B1BD2D: FLdRfVar var_A8
  loc_B1BD30: FLdPr var_AC
  loc_B1BD33: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BD38: FLdPr var_A8
  loc_B1BD3B:  = Me.Fields
  loc_B1BD40: FLdPr var_D4
  loc_B1BD43: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BD48: LitI2_Byte 0
  loc_B1BD4A: LitVar_Missing var_118
  loc_B1BD4D: LitI2_Byte 0
  loc_B1BD4F: FLdZeroAd var_DC
  loc_B1BD52: CVarAd
  loc_B1BD56: PopAdLdVar
  loc_B1BD57: FLdPr Me
  loc_B1BD5A: MemLdI2 global_88
  loc_B1BD5D: CI4UI1
  loc_B1BD5E: FLdPr Me
  loc_B1BD61: MemLdStr global_80
  loc_B1BD64: AryLock
  loc_B1BD67: Ary1LdPr
  loc_B1BD68: MemLdRfVar from_stack_1.global_28
  loc_B1BD6B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BD70: AryUnlock
  loc_B1BD73: FFreeAd var_A8 = ""
  loc_B1BD7A: FFreeVar var_108 = ""
  loc_B1BD81: FLdRfVar var_DC
  loc_B1BD84: LitVarStr var_94, "NufaDeve"
  loc_B1BD89: PopAdLdVar
  loc_B1BD8A: FLdRfVar var_D4
  loc_B1BD8D: FLdRfVar var_A8
  loc_B1BD90: FLdPr var_AC
  loc_B1BD93: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BD98: FLdPr var_A8
  loc_B1BD9B:  = Me.Fields
  loc_B1BDA0: FLdPr var_D4
  loc_B1BDA3: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BDA8: LitI2_Byte 0
  loc_B1BDAA: LitVar_Missing var_118
  loc_B1BDAD: LitI2_Byte 0
  loc_B1BDAF: FLdZeroAd var_DC
  loc_B1BDB2: CVarAd
  loc_B1BDB6: PopAdLdVar
  loc_B1BDB7: FLdPr Me
  loc_B1BDBA: MemLdI2 global_88
  loc_B1BDBD: CI4UI1
  loc_B1BDBE: FLdPr Me
  loc_B1BDC1: MemLdStr global_80
  loc_B1BDC4: AryLock
  loc_B1BDC7: Ary1LdPr
  loc_B1BDC8: MemLdRfVar from_stack_1.global_32
  loc_B1BDCB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BDD0: AryUnlock
  loc_B1BDD3: FFreeAd var_A8 = ""
  loc_B1BDDA: FFreeVar var_108 = ""
  loc_B1BDE1: FLdRfVar var_DC
  loc_B1BDE4: LitVarStr var_94, "MapaImpu"
  loc_B1BDE9: PopAdLdVar
  loc_B1BDEA: FLdRfVar var_D4
  loc_B1BDED: FLdRfVar var_A8
  loc_B1BDF0: FLdPr var_AC
  loc_B1BDF3: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BDF8: FLdPr var_A8
  loc_B1BDFB:  = Me.Fields
  loc_B1BE00: FLdPr var_D4
  loc_B1BE03: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BE08: LitI2_Byte 0
  loc_B1BE0A: FLdPr Me
  loc_B1BE0D: MemLdRfVar from_stack_1.global_84
  loc_B1BE10: CVarRef
  loc_B1BE15: LitI2_Byte &HFF
  loc_B1BE17: FLdZeroAd var_DC
  loc_B1BE1A: CVarAd
  loc_B1BE1E: PopAdLdVar
  loc_B1BE1F: FLdPr Me
  loc_B1BE22: MemLdI2 global_88
  loc_B1BE25: CI4UI1
  loc_B1BE26: FLdPr Me
  loc_B1BE29: MemLdStr global_80
  loc_B1BE2C: AryLock
  loc_B1BE2F: Ary1LdPr
  loc_B1BE30: MemLdRfVar from_stack_1.global_36
  loc_B1BE33: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BE38: AryUnlock
  loc_B1BE3B: FFreeAd var_A8 = ""
  loc_B1BE42: FFree1Var var_108 = ""
  loc_B1BE45: FLdRfVar var_DC
  loc_B1BE48: LitVarStr var_94, "CodiPart"
  loc_B1BE4D: PopAdLdVar
  loc_B1BE4E: FLdRfVar var_D4
  loc_B1BE51: FLdRfVar var_A8
  loc_B1BE54: FLdPr var_AC
  loc_B1BE57: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BE5C: FLdPr var_A8
  loc_B1BE5F:  = Me.Fields
  loc_B1BE64: FLdPr var_D4
  loc_B1BE67: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BE6C: LitI2_Byte 0
  loc_B1BE6E: LitVar_Missing var_118
  loc_B1BE71: LitI2_Byte 0
  loc_B1BE73: FLdZeroAd var_DC
  loc_B1BE76: CVarAd
  loc_B1BE7A: PopAdLdVar
  loc_B1BE7B: FLdPr Me
  loc_B1BE7E: MemLdI2 global_88
  loc_B1BE81: CI4UI1
  loc_B1BE82: FLdPr Me
  loc_B1BE85: MemLdStr global_80
  loc_B1BE88: AryLock
  loc_B1BE8B: Ary1LdPr
  loc_B1BE8C: MemLdRfVar from_stack_1.global_40
  loc_B1BE8F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BE94: AryUnlock
  loc_B1BE97: FFreeAd var_A8 = ""
  loc_B1BE9E: FFreeVar var_108 = ""
  loc_B1BEA5: FLdRfVar var_DC
  loc_B1BEA8: LitVarStr var_94, "DetaPart"
  loc_B1BEAD: PopAdLdVar
  loc_B1BEAE: FLdRfVar var_D4
  loc_B1BEB1: FLdRfVar var_A8
  loc_B1BEB4: FLdPr var_AC
  loc_B1BEB7: from_stack_1v = clsbase.RsFrmGet()
  loc_B1BEBC: FLdPr var_A8
  loc_B1BEBF:  = Me.Fields
  loc_B1BEC4: FLdPr var_D4
  loc_B1BEC7: from_stack_2 = Me.Item(from_stack_1)
  loc_B1BECC: LitI2_Byte 0
  loc_B1BECE: LitVar_Missing var_118
  loc_B1BED1: LitI2_Byte 0
  loc_B1BED3: FLdZeroAd var_DC
  loc_B1BED6: CVarAd
  loc_B1BEDA: PopAdLdVar
  loc_B1BEDB: FLdPr Me
  loc_B1BEDE: MemLdI2 global_88
  loc_B1BEE1: CI4UI1
  loc_B1BEE2: FLdPr Me
  loc_B1BEE5: MemLdStr global_80
  loc_B1BEE8: AryLock
  loc_B1BEEB: Ary1LdPr
  loc_B1BEEC: MemLdRfVar from_stack_1.global_44
  loc_B1BEEF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BEF4: AryUnlock
  loc_B1BEF7: FFreeAd var_A8 = ""
  loc_B1BEFE: FFreeVar var_108 = ""
  loc_B1BF05: FLdPr var_AC
  loc_B1BF08: Call clsbase.MoveSiguiente()
  loc_B1BF0D: FLdPr Me
  loc_B1BF10: MemLdRfVar from_stack_1.global_88
  loc_B1BF13: NextI2 var_F4, loc_B1BA81
  loc_B1BF18: Branch loc_B1C143
  loc_B1BF1B: LitI4 0
  loc_B1BF20: LitI4 1
  loc_B1BF25: FLdPr Me
  loc_B1BF28: MemLdRfVar from_stack_1.global_80
  loc_B1BF2B: Redim
  loc_B1BF35: LitI2_Byte 0
  loc_B1BF37: CStrUI1
  loc_B1BF39: FStStrNoPop var_B0
  loc_B1BF3C: FLdPr Me
  loc_B1BF3F: MemStStrCopy
  loc_B1BF43: FFree1Str var_B0
  loc_B1BF46: LitI2_Byte 0
  loc_B1BF48: LitVar_Missing var_108
  loc_B1BF4B: LitI2_Byte 0
  loc_B1BF4D: LitVarStr var_94, "SIN MOVIMIENTOS "
  loc_B1BF52: PopAdLdVar
  loc_B1BF53: LitI4 1
  loc_B1BF58: FLdPr Me
  loc_B1BF5B: MemLdStr global_80
  loc_B1BF5E: AryLock
  loc_B1BF61: Ary1LdPr
  loc_B1BF62: MemLdRfVar from_stack_1.global_0
  loc_B1BF65: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BF6A: AryUnlock
  loc_B1BF6D: FFree1Var var_108 = ""
  loc_B1BF70: LitI2_Byte 0
  loc_B1BF72: LitVar_Missing var_108
  loc_B1BF75: LitI2_Byte 0
  loc_B1BF77: LitVarStr var_94, "&nbsp;"
  loc_B1BF7C: PopAdLdVar
  loc_B1BF7D: LitI4 1
  loc_B1BF82: FLdPr Me
  loc_B1BF85: MemLdStr global_80
  loc_B1BF88: AryLock
  loc_B1BF8B: Ary1LdPr
  loc_B1BF8C: MemLdRfVar from_stack_1.global_4
  loc_B1BF8F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BF94: AryUnlock
  loc_B1BF97: FFree1Var var_108 = ""
  loc_B1BF9A: LitI2_Byte 0
  loc_B1BF9C: LitVar_Missing var_108
  loc_B1BF9F: LitI2_Byte 0
  loc_B1BFA1: LitVarStr var_94, "&nbsp;"
  loc_B1BFA6: PopAdLdVar
  loc_B1BFA7: LitI4 1
  loc_B1BFAC: FLdPr Me
  loc_B1BFAF: MemLdStr global_80
  loc_B1BFB2: AryLock
  loc_B1BFB5: Ary1LdPr
  loc_B1BFB6: MemLdRfVar from_stack_1.global_8
  loc_B1BFB9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BFBE: AryUnlock
  loc_B1BFC1: FFree1Var var_108 = ""
  loc_B1BFC4: LitI2_Byte 0
  loc_B1BFC6: LitVar_Missing var_108
  loc_B1BFC9: LitI2_Byte 0
  loc_B1BFCB: LitVarStr var_94, "&nbsp;"
  loc_B1BFD0: PopAdLdVar
  loc_B1BFD1: LitI4 1
  loc_B1BFD6: FLdPr Me
  loc_B1BFD9: MemLdStr global_80
  loc_B1BFDC: AryLock
  loc_B1BFDF: Ary1LdPr
  loc_B1BFE0: MemLdRfVar from_stack_1.global_12
  loc_B1BFE3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1BFE8: AryUnlock
  loc_B1BFEB: FFree1Var var_108 = ""
  loc_B1BFEE: LitI2_Byte 0
  loc_B1BFF0: LitVar_Missing var_108
  loc_B1BFF3: LitI2_Byte 0
  loc_B1BFF5: LitVarStr var_94, "&nbsp;"
  loc_B1BFFA: PopAdLdVar
  loc_B1BFFB: LitI4 1
  loc_B1C000: FLdPr Me
  loc_B1C003: MemLdStr global_80
  loc_B1C006: AryLock
  loc_B1C009: Ary1LdPr
  loc_B1C00A: MemLdRfVar from_stack_1.global_16
  loc_B1C00D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C012: AryUnlock
  loc_B1C015: FFree1Var var_108 = ""
  loc_B1C018: LitI2_Byte 0
  loc_B1C01A: LitVar_Missing var_108
  loc_B1C01D: LitI2_Byte 0
  loc_B1C01F: LitVarStr var_94, "&nbsp;"
  loc_B1C024: PopAdLdVar
  loc_B1C025: LitI4 1
  loc_B1C02A: FLdPr Me
  loc_B1C02D: MemLdStr global_80
  loc_B1C030: AryLock
  loc_B1C033: Ary1LdPr
  loc_B1C034: MemLdRfVar from_stack_1.global_20
  loc_B1C037: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C03C: AryUnlock
  loc_B1C03F: FFree1Var var_108 = ""
  loc_B1C042: LitI2_Byte 0
  loc_B1C044: LitVar_Missing var_108
  loc_B1C047: LitI2_Byte 0
  loc_B1C049: LitVarStr var_94, "&nbsp;"
  loc_B1C04E: PopAdLdVar
  loc_B1C04F: LitI4 1
  loc_B1C054: FLdPr Me
  loc_B1C057: MemLdStr global_80
  loc_B1C05A: AryLock
  loc_B1C05D: Ary1LdPr
  loc_B1C05E: MemLdRfVar from_stack_1.global_24
  loc_B1C061: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C066: AryUnlock
  loc_B1C069: FFree1Var var_108 = ""
  loc_B1C06C: LitI2_Byte 0
  loc_B1C06E: LitVar_Missing var_108
  loc_B1C071: LitI2_Byte 0
  loc_B1C073: LitVarStr var_94, "&nbsp;"
  loc_B1C078: PopAdLdVar
  loc_B1C079: LitI4 1
  loc_B1C07E: FLdPr Me
  loc_B1C081: MemLdStr global_80
  loc_B1C084: AryLock
  loc_B1C087: Ary1LdPr
  loc_B1C088: MemLdRfVar from_stack_1.global_28
  loc_B1C08B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C090: AryUnlock
  loc_B1C093: FFree1Var var_108 = ""
  loc_B1C096: LitI2_Byte 0
  loc_B1C098: LitVar_Missing var_108
  loc_B1C09B: LitI2_Byte 0
  loc_B1C09D: LitVarStr var_94, "&nbsp;"
  loc_B1C0A2: PopAdLdVar
  loc_B1C0A3: LitI4 1
  loc_B1C0A8: FLdPr Me
  loc_B1C0AB: MemLdStr global_80
  loc_B1C0AE: AryLock
  loc_B1C0B1: Ary1LdPr
  loc_B1C0B2: MemLdRfVar from_stack_1.global_32
  loc_B1C0B5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C0BA: AryUnlock
  loc_B1C0BD: FFree1Var var_108 = ""
  loc_B1C0C0: LitI2_Byte 0
  loc_B1C0C2: FLdPr Me
  loc_B1C0C5: MemLdRfVar from_stack_1.global_84
  loc_B1C0C8: CVarRef
  loc_B1C0CD: LitI2_Byte &HFF
  loc_B1C0CF: LitVarI2 var_94, 0
  loc_B1C0D4: PopAdLdVar
  loc_B1C0D5: LitI4 1
  loc_B1C0DA: FLdPr Me
  loc_B1C0DD: MemLdStr global_80
  loc_B1C0E0: AryLock
  loc_B1C0E3: Ary1LdPr
  loc_B1C0E4: MemLdRfVar from_stack_1.global_36
  loc_B1C0E7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C0EC: AryUnlock
  loc_B1C0EF: LitI2_Byte 0
  loc_B1C0F1: LitVar_Missing var_108
  loc_B1C0F4: LitI2_Byte 0
  loc_B1C0F6: LitVarStr var_94, "&nbsp;"
  loc_B1C0FB: PopAdLdVar
  loc_B1C0FC: LitI4 1
  loc_B1C101: FLdPr Me
  loc_B1C104: MemLdStr global_80
  loc_B1C107: AryLock
  loc_B1C10A: Ary1LdPr
  loc_B1C10B: MemLdRfVar from_stack_1.global_40
  loc_B1C10E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C113: AryUnlock
  loc_B1C116: FFree1Var var_108 = ""
  loc_B1C119: LitI2_Byte 0
  loc_B1C11B: LitVar_Missing var_108
  loc_B1C11E: LitI2_Byte 0
  loc_B1C120: LitVarStr var_94, "&nbsp;"
  loc_B1C125: PopAdLdVar
  loc_B1C126: LitI4 1
  loc_B1C12B: FLdPr Me
  loc_B1C12E: MemLdStr global_80
  loc_B1C131: AryLock
  loc_B1C134: Ary1LdPr
  loc_B1C135: MemLdRfVar from_stack_1.global_44
  loc_B1C138: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1C13D: AryUnlock
  loc_B1C140: FFree1Var var_108 = ""
  loc_B1C143: LitNothing
  loc_B1C145: FStAd var_AC 
  loc_B1C149: LitI2_Byte &HFF
  loc_B1C14B: FLdPr Me
  loc_B1C14E: MemStI2 bGenerado
  loc_B1C151: LitI4 0
  loc_B1C156: CI2I4
  loc_B1C157: FLdPr Me
  loc_B1C15A: Me.MousePointer = from_stack_1
  loc_B1C15F: LitVarStr var_94, vbNullString
  loc_B1C164: PopAdLdVar
  loc_B1C165: FLdPr Me
  loc_B1C168: VCallAd Control_ID_statusBar
  loc_B1C16B: FStAdFunc var_A8
  loc_B1C16E: FLdPr var_A8
  loc_B1C171: LateIdSt
  loc_B1C176: FFree1Ad var_A8
  loc_B1C179: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A67BB0
  'Data Table: 4462D0
  loc_A67860: FLdRfVar var_88
  loc_A67863: LitI2_Byte 0
  loc_A67865: LitI2_Byte &HFF
  loc_A67867: ImpAdLdI4 MemVar_C3D83C
  loc_A6786A: FLdPr Me
  loc_A6786D: MemLdRfVar from_stack_1.global_76
  loc_A67870: NewIfNullPr IFileSystem3
  loc_A67873: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A67878: ILdRf var_88
  loc_A6787B: FLdPr Me
  loc_A6787E: MemStVarAd
  loc_A67882: FFree1Ad var_88
  loc_A67885: Call Proc_257_21_A993E8()
  loc_A6788A: LitI2_Byte 1
  loc_A6788C: FLdPr Me
  loc_A6788F: MemLdRfVar from_stack_1.global_88
  loc_A67892: FLdPr Me
  loc_A67895: MemLdStr global_80
  loc_A67898: LitI2_Byte 1
  loc_A6789A: FnUBound
  loc_A6789C: CI2I4
  loc_A6789D: ForI2 var_8C
  loc_A678A3: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A678A8: PopAdLdVar
  loc_A678A9: FLdPr Me
  loc_A678AC: MemLdRfVar from_stack_1.htmFile
  loc_A678AF: LdPrVar
  loc_A678B1: LateMemCall
  loc_A678B7: FLdPr Me
  loc_A678BA: MemLdI2 global_88
  loc_A678BD: CI4UI1
  loc_A678BE: FLdPr Me
  loc_A678C1: MemLdStr global_80
  loc_A678C4: AryLock
  loc_A678C7: Ary1LdRf
  loc_A678C8: FStR4 var_B4
  loc_A678CB: LitI4 0
  loc_A678D0: LitI4 0
  loc_A678D5: LitI2_Byte 0
  loc_A678D7: LitStr "left"
  loc_A678DA: FMemLdR4 var_B4(0)
  loc_A678DF: LitStr "-"
  loc_A678E2: ConcatStr
  loc_A678E3: FStStrNoPop var_B8
  loc_A678E6: FMemLdR4 var_B4(4)
  loc_A678EB: ConcatStr
  loc_A678EC: FStStrNoPop var_BC
  loc_A678EF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A678F4: CVarStr var_CC
  loc_A678F7: PopAdLdVar
  loc_A678F8: FLdPr Me
  loc_A678FB: MemLdRfVar from_stack_1.htmFile
  loc_A678FE: LdPrVar
  loc_A67900: LateMemCall
  loc_A67906: FFreeStr var_B8 = ""
  loc_A6790D: FFree1Var var_CC = ""
  loc_A67910: LitI4 0
  loc_A67915: LitI4 0
  loc_A6791A: LitI2_Byte 0
  loc_A6791C: LitStr "center"
  loc_A6791F: FMemLdR4 var_B4(8)
  loc_A67924: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A67929: CVarStr var_CC
  loc_A6792C: PopAdLdVar
  loc_A6792D: FLdPr Me
  loc_A67930: MemLdRfVar from_stack_1.htmFile
  loc_A67933: LdPrVar
  loc_A67935: LateMemCall
  loc_A6793B: FFree1Var var_CC = ""
  loc_A6793E: LitI4 0
  loc_A67943: LitI4 0
  loc_A67948: LitI2_Byte 0
  loc_A6794A: LitStr "left"
  loc_A6794D: FMemLdR4 var_B4(12)
  loc_A67952: LitStr " - "
  loc_A67955: ConcatStr
  loc_A67956: FStStrNoPop var_B8
  loc_A67959: FMemLdR4 var_B4(16)
  loc_A6795E: ConcatStr
  loc_A6795F: FStStrNoPop var_BC
  loc_A67962: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A67967: CVarStr var_CC
  loc_A6796A: PopAdLdVar
  loc_A6796B: FLdPr Me
  loc_A6796E: MemLdRfVar from_stack_1.htmFile
  loc_A67971: LdPrVar
  loc_A67973: LateMemCall
  loc_A67979: FFreeStr var_B8 = ""
  loc_A67980: FFree1Var var_CC = ""
  loc_A67983: LitI4 0
  loc_A67988: LitI4 0
  loc_A6798D: LitI2_Byte 0
  loc_A6798F: LitStr "center"
  loc_A67992: FMemLdR4 var_B4(20)
  loc_A67997: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A6799C: CVarStr var_CC
  loc_A6799F: PopAdLdVar
  loc_A679A0: FLdPr Me
  loc_A679A3: MemLdRfVar from_stack_1.htmFile
  loc_A679A6: LdPrVar
  loc_A679A8: LateMemCall
  loc_A679AE: FFree1Var var_CC = ""
  loc_A679B1: LitI4 0
  loc_A679B6: LitI4 0
  loc_A679BB: LitI2_Byte 0
  loc_A679BD: LitStr "center"
  loc_A679C0: FMemLdR4 var_B4(24)
  loc_A679C5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A679CA: CVarStr var_CC
  loc_A679CD: PopAdLdVar
  loc_A679CE: FLdPr Me
  loc_A679D1: MemLdRfVar from_stack_1.htmFile
  loc_A679D4: LdPrVar
  loc_A679D6: LateMemCall
  loc_A679DC: FFree1Var var_CC = ""
  loc_A679DF: LitVarStr var_EC, "    <td nowrap align=""right"">"
  loc_A679E4: LitI4 1
  loc_A679E9: LitI4 1
  loc_A679EE: LitVarStr var_AC, "0000-"
  loc_A679F3: FStVarCopyObj var_CC
  loc_A679F6: FLdRfVar var_CC
  loc_A679F9: FMemLdRf 0
  loc_A679FE: CVarRef
  loc_A67A03: FLdRfVar var_DC
  loc_A67A06: ImpAdCallFPR4  = Format(, )
  loc_A67A0B: FLdRfVar var_DC
  loc_A67A0E: ConcatVar var_FC
  loc_A67A12: LitI4 1
  loc_A67A17: LitI4 1
  loc_A67A1C: LitVarStr var_11C, "00000000"
  loc_A67A21: FStVarCopyObj var_12C
  loc_A67A24: FLdRfVar var_12C
  loc_A67A27: FMemLdRf 0
  loc_A67A2C: CVarRef
  loc_A67A31: FLdRfVar var_13C
  loc_A67A34: ImpAdCallFPR4  = Format(, )
  loc_A67A39: FLdRfVar var_13C
  loc_A67A3C: ConcatVar var_14C
  loc_A67A40: LitVarStr var_15C, "</td>"
  loc_A67A45: ConcatVar var_16C
  loc_A67A49: PopAdLdVar
  loc_A67A4A: FLdPr Me
  loc_A67A4D: MemLdRfVar from_stack_1.htmFile
  loc_A67A50: LdPrVar
  loc_A67A52: LateMemCall
  loc_A67A58: FFreeVar var_CC = "": var_DC = "": var_12C = "": var_FC = "": var_13C = "": var_14C = ""
  loc_A67A69: LitI4 0
  loc_A67A6E: LitI4 0
  loc_A67A73: LitI2_Byte 0
  loc_A67A75: LitStr "right"
  loc_A67A78: FMemLdR4 var_B4(36)
  loc_A67A7D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A67A82: CVarStr var_CC
  loc_A67A85: PopAdLdVar
  loc_A67A86: FLdPr Me
  loc_A67A89: MemLdRfVar from_stack_1.htmFile
  loc_A67A8C: LdPrVar
  loc_A67A8E: LateMemCall
  loc_A67A94: FFree1Var var_CC = ""
  loc_A67A97: LitI4 0
  loc_A67A9C: LitI4 0
  loc_A67AA1: LitI2_Byte 0
  loc_A67AA3: LitStr "right"
  loc_A67AA6: FMemLdR4 var_B4(40)
  loc_A67AAB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A67AB0: CVarStr var_CC
  loc_A67AB3: PopAdLdVar
  loc_A67AB4: FLdPr Me
  loc_A67AB7: MemLdRfVar from_stack_1.htmFile
  loc_A67ABA: LdPrVar
  loc_A67ABC: LateMemCall
  loc_A67AC2: FFree1Var var_CC = ""
  loc_A67AC5: LitI4 0
  loc_A67ACA: LitI4 0
  loc_A67ACF: LitI2_Byte 0
  loc_A67AD1: LitStr "left"
  loc_A67AD4: FMemLdR4 var_B4(44)
  loc_A67AD9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A67ADE: CVarStr var_CC
  loc_A67AE1: PopAdLdVar
  loc_A67AE2: FLdPr Me
  loc_A67AE5: MemLdRfVar from_stack_1.htmFile
  loc_A67AE8: LdPrVar
  loc_A67AEA: LateMemCall
  loc_A67AF0: FFree1Var var_CC = ""
  loc_A67AF3: LitI4 0
  loc_A67AF8: FStR4 var_B4
  loc_A67AFB: AryUnlock
  loc_A67AFE: LitVarStr var_9C, "     </tr>"
  loc_A67B03: PopAdLdVar
  loc_A67B04: FLdPr Me
  loc_A67B07: MemLdRfVar from_stack_1.htmFile
  loc_A67B0A: LdPrVar
  loc_A67B0C: LateMemCall
  loc_A67B12: FLdPr Me
  loc_A67B15: MemLdRfVar from_stack_1.global_88
  loc_A67B18: NextI2 var_8C, loc_A678A3
  loc_A67B1D: LitVarStr var_9C, "  <tr class=""Totales"" align=""right"">"
  loc_A67B22: PopAdLdVar
  loc_A67B23: FLdPr Me
  loc_A67B26: MemLdRfVar from_stack_1.htmFile
  loc_A67B29: LdPrVar
  loc_A67B2B: LateMemCall
  loc_A67B31: LitVarStr var_9C, "    <td colspan=""6"">TOTAL DEL MES:</td>"
  loc_A67B36: PopAdLdVar
  loc_A67B37: FLdPr Me
  loc_A67B3A: MemLdRfVar from_stack_1.htmFile
  loc_A67B3D: LdPrVar
  loc_A67B3F: LateMemCall
  loc_A67B45: LitStr "    <td>"
  loc_A67B48: FLdPr Me
  loc_A67B4B: MemLdStr global_84
  loc_A67B4E: ConcatStr
  loc_A67B4F: FStStrNoPop var_B8
  loc_A67B52: LitStr "</td>"
  loc_A67B55: ConcatStr
  loc_A67B56: CVarStr var_CC
  loc_A67B59: PopAdLdVar
  loc_A67B5A: FLdPr Me
  loc_A67B5D: MemLdRfVar from_stack_1.htmFile
  loc_A67B60: LdPrVar
  loc_A67B62: LateMemCall
  loc_A67B68: FFree1Str var_B8
  loc_A67B6B: FFree1Var var_CC = ""
  loc_A67B6E: LitVarStr var_9C, "    <td colspan=""2"" class=""LineaDato"">&nbsp;</td>"
  loc_A67B73: PopAdLdVar
  loc_A67B74: FLdPr Me
  loc_A67B77: MemLdRfVar from_stack_1.htmFile
  loc_A67B7A: LdPrVar
  loc_A67B7C: LateMemCall
  loc_A67B82: LitVarStr var_9C, "     </tr>"
  loc_A67B87: PopAdLdVar
  loc_A67B88: FLdPr Me
  loc_A67B8B: MemLdRfVar from_stack_1.htmFile
  loc_A67B8E: LdPrVar
  loc_A67B90: LateMemCall
  loc_A67B96: Call Proc_257_22_A01408()
  loc_A67B9B: FLdPr Me
  loc_A67B9E: MemLdRfVar from_stack_1.htmFile
  loc_A67BA1: LdPrVar
  loc_A67BA3: LateMemCall
  loc_A67BA9: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A67BAE: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94ADC4
  'Data Table: 4462D0
  loc_94ADAC: LitI2_Byte 0
  loc_94ADAE: FLdPr Me
  loc_94ADB1: MemStI2 bLogos
  loc_94ADB4: Call GeneraHTML()
  loc_94ADB9: LitI2_Byte &HFF
  loc_94ADBB: FLdPr Me
  loc_94ADBE: MemStI2 bLogos
  loc_94ADC1: ExitProcHresult
  loc_94ADC2: CopyBytes
End Sub

Private Function Proc_257_21_A993E8() 'A993E8
  'Data Table: 4462D0
  loc_A98F64: LitVarStr var_94, "<html>"
  loc_A98F69: PopAdLdVar
  loc_A98F6A: FLdPr Me
  loc_A98F6D: MemLdRfVar from_stack_1.htmFile
  loc_A98F70: LdPrVar
  loc_A98F72: LateMemCall
  loc_A98F78: LitVarStr var_94, "<head>"
  loc_A98F7D: PopAdLdVar
  loc_A98F7E: FLdPr Me
  loc_A98F81: MemLdRfVar from_stack_1.htmFile
  loc_A98F84: LdPrVar
  loc_A98F86: LateMemCall
  loc_A98F8C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A98F91: PopAdLdVar
  loc_A98F92: FLdPr Me
  loc_A98F95: MemLdRfVar from_stack_1.htmFile
  loc_A98F98: LdPrVar
  loc_A98F9A: LateMemCall
  loc_A98FA0: LitStr "<title>"
  loc_A98FA3: FLdRfVar var_A8
  loc_A98FA6: FLdPr Me
  loc_A98FA9:  = Me.Caption
  loc_A98FAE: ILdRf var_A8
  loc_A98FB1: ConcatStr
  loc_A98FB2: FStStrNoPop var_AC
  loc_A98FB5: LitStr " - "
  loc_A98FB8: ConcatStr
  loc_A98FB9: FStStrNoPop var_B0
  loc_A98FBC: LitStr "Municipalidad de Guaymallén"
  loc_A98FBF: ConcatStr
  loc_A98FC0: FStStrNoPop var_B4
  loc_A98FC3: LitStr "</title>"
  loc_A98FC6: ConcatStr
  loc_A98FC7: CVarStr var_C4
  loc_A98FCA: PopAdLdVar
  loc_A98FCB: FLdPr Me
  loc_A98FCE: MemLdRfVar from_stack_1.htmFile
  loc_A98FD1: LdPrVar
  loc_A98FD3: LateMemCall
  loc_A98FD9: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A98FE4: FFree1Var var_C4 = ""
  loc_A98FE7: LitStr vbNullString
  loc_A98FEA: ILdRf Me
  loc_A98FED: CastAd
  loc_A98FF0: FStAdFunc var_C8
  loc_A98FF3: FLdRfVar var_C8
  loc_A98FF6: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A98FFB: FFree1Ad var_C8
  loc_A98FFE: LitI4 0
  loc_A99003: FStStrCopy var_AC
  loc_A99006: FLdRfVar var_AC
  loc_A99009: LitI4 0
  loc_A9900E: FStStrCopy var_A8
  loc_A99011: FLdRfVar var_A8
  loc_A99014: LitI2_Byte &HFF
  loc_A99016: PopTmpLdAd2 var_CA
  loc_A99019: FLdPr Me
  loc_A9901C: MemLdRfVar from_stack_1.htmFile
  loc_A9901F: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A99024: FFreeStr var_A8 = ""
  loc_A9902B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A99030: PopAdLdVar
  loc_A99031: FLdPr Me
  loc_A99034: MemLdRfVar from_stack_1.htmFile
  loc_A99037: LdPrVar
  loc_A99039: LateMemCall
  loc_A9903F: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A99044: PopAdLdVar
  loc_A99045: FLdPr Me
  loc_A99048: MemLdRfVar from_stack_1.htmFile
  loc_A9904B: LdPrVar
  loc_A9904D: LateMemCall
  loc_A99053: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_A99058: PopAdLdVar
  loc_A99059: FLdPr Me
  loc_A9905C: MemLdRfVar from_stack_1.htmFile
  loc_A9905F: LdPrVar
  loc_A99061: LateMemCall
  loc_A99067: FLdPr Me
  loc_A9906A: MemLdI2 bLogos
  loc_A9906D: BranchF loc_A99084
  loc_A99070: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A99075: PopAdLdVar
  loc_A99076: FLdPr Me
  loc_A99079: MemLdRfVar from_stack_1.htmFile
  loc_A9907C: LdPrVar
  loc_A9907E: LateMemCall
  loc_A99084: LitVarStr var_94, "    <br>ACUERDO<span class=""Titulo2""> N&ordm; 5017 <br>"
  loc_A99089: PopAdLdVar
  loc_A9908A: FLdPr Me
  loc_A9908D: MemLdRfVar from_stack_1.htmFile
  loc_A99090: LdPrVar
  loc_A99092: LateMemCall
  loc_A99098: LitVarStr var_94, "      ANEXO 1: RENDICIÓN MENSUAL APLICACIÓN DE FONDOS<br>FONDO FEDERAL SOLIDARIO - LEY N&ordm; 8028</span></p>"
  loc_A9909D: PopAdLdVar
  loc_A9909E: FLdPr Me
  loc_A990A1: MemLdRfVar from_stack_1.htmFile
  loc_A990A4: LdPrVar
  loc_A990A6: LateMemCall
  loc_A990AC: LitVarStr var_94, "    </th>"
  loc_A990B1: PopAdLdVar
  loc_A990B2: FLdPr Me
  loc_A990B5: MemLdRfVar from_stack_1.htmFile
  loc_A990B8: LdPrVar
  loc_A990BA: LateMemCall
  loc_A990C0: LitVarStr var_94, "  </tr>"
  loc_A990C5: PopAdLdVar
  loc_A990C6: FLdPr Me
  loc_A990C9: MemLdRfVar from_stack_1.htmFile
  loc_A990CC: LdPrVar
  loc_A990CE: LateMemCall
  loc_A990D4: LitVarStr var_94, "  <tr>"
  loc_A990D9: PopAdLdVar
  loc_A990DA: FLdPr Me
  loc_A990DD: MemLdRfVar from_stack_1.htmFile
  loc_A990E0: LdPrVar
  loc_A990E2: LateMemCall
  loc_A990E8: LitVarStr var_94, "    <th>"
  loc_A990ED: PopAdLdVar
  loc_A990EE: FLdPr Me
  loc_A990F1: MemLdRfVar from_stack_1.htmFile
  loc_A990F4: LdPrVar
  loc_A990F6: LateMemCall
  loc_A990FC: LitVarStr var_A4, "      <p align=""left"" class=""Titulo2"">"
  loc_A99101: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A99106: FStVarCopyObj var_C4
  loc_A99109: FLdRfVar var_C4
  loc_A9910C: FLdRfVar var_DC
  loc_A9910F: ImpAdCallFPR4  = Ucase()
  loc_A99114: FLdRfVar var_DC
  loc_A99117: ConcatVar var_EC
  loc_A9911B: LitVarStr var_FC, "<br>"
  loc_A99120: ConcatVar var_10C
  loc_A99124: PopAdLdVar
  loc_A99125: FLdPr Me
  loc_A99128: MemLdRfVar from_stack_1.htmFile
  loc_A9912B: LdPrVar
  loc_A9912D: LateMemCall
  loc_A99133: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A9913E: FLdRfVar var_CA
  loc_A99141: FLdPr Me
  loc_A99144: VCallAd Control_ID_cboMes
  loc_A99147: FStAdFunc var_124
  loc_A9914A: FLdPr var_124
  loc_A9914D:  = Me.ListIndex
  loc_A99152: FLdRfVar var_12C
  loc_A99155: FLdI2 var_CA
  loc_A99158: FLdPr Me
  loc_A9915B: VCallAd Control_ID_cboMes
  loc_A9915E: FStAdFunc var_128
  loc_A99161: FLdPr var_128
  loc_A99164:  = Me.ItemData
  loc_A99169: FLdRfVar var_134
  loc_A9916C: FLdPr Me
  loc_A9916F: VCallAd Control_ID_cboPeriodo
  loc_A99172: FStAdFunc var_130
  loc_A99175: FLdPr var_130
  loc_A99178:  = Me.Text
  loc_A9917D: ILdRf var_134
  loc_A99180: CI2Str
  loc_A99182: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A99187: CVarStr var_C4
  loc_A9918A: FLdRfVar var_DC
  loc_A9918D: ImpAdCallFPR4  = Month()
  loc_A99192: LitStr "      MES DE: "
  loc_A99195: FLdRfVar var_A8
  loc_A99198: FLdPr Me
  loc_A9919B: VCallAd Control_ID_cboMes
  loc_A9919E: FStAdFunc var_C8
  loc_A991A1: FLdPr var_C8
  loc_A991A4:  = Me.Text
  loc_A991A9: ILdRf var_A8
  loc_A991AC: ConcatStr
  loc_A991AD: FStStrNoPop var_AC
  loc_A991B0: LitStr "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AÑO: "
  loc_A991B3: ConcatStr
  loc_A991B4: FStStrNoPop var_B4
  loc_A991B7: FLdRfVar var_B0
  loc_A991BA: FLdPr Me
  loc_A991BD: VCallAd Control_ID_cboPeriodo
  loc_A991C0: FStAdFunc var_120
  loc_A991C3: FLdPr var_120
  loc_A991C6:  = Me.Text
  loc_A991CB: ILdRf var_B0
  loc_A991CE: ConcatStr
  loc_A991CF: CVarStr var_174
  loc_A991D2: LitVarStr var_FC, vbNullString
  loc_A991D7: FStVarCopyObj var_154
  loc_A991DA: FLdRfVar var_154
  loc_A991DD: LitVarStr var_A4, " (PROVISORIO)"
  loc_A991E2: FStVarCopyObj var_144
  loc_A991E5: FLdRfVar var_144
  loc_A991E8: ILdRf var_12C
  loc_A991EB: CVarI4
  loc_A991EF: HardType
  loc_A991F0: FLdRfVar var_DC
  loc_A991F3: GtVar var_EC
  loc_A991F7: FStVar var_10C
  loc_A991FB: FLdRfVar var_10C
  loc_A991FE: FLdRfVar var_164
  loc_A99201: ImpAdCallFPR4  = IIf(, , )
  loc_A99206: FLdRfVar var_164
  loc_A99209: ConcatVar var_184
  loc_A9920D: LitVarStr var_11C, "</p></th>"
  loc_A99212: ConcatVar var_194
  loc_A99216: PopAdLdVar
  loc_A99217: FLdPr Me
  loc_A9921A: MemLdRfVar from_stack_1.htmFile
  loc_A9921D: LdPrVar
  loc_A9921F: LateMemCall
  loc_A99225: FFreeStr var_A8 = "": var_AC = "": var_B4 = "": var_B0 = ""
  loc_A99232: FFreeAd var_C8 = "": var_120 = "": var_124 = "": var_128 = ""
  loc_A9923F: FFreeVar var_C4 = "": var_DC = "": var_10C = "": var_144 = "": var_154 = "": var_174 = "": var_164 = "": var_184 = ""
  loc_A99254: LitVarStr var_94, "  </tr>"
  loc_A99259: PopAdLdVar
  loc_A9925A: FLdPr Me
  loc_A9925D: MemLdRfVar from_stack_1.htmFile
  loc_A99260: LdPrVar
  loc_A99262: LateMemCall
  loc_A99268: LitVarStr var_94, "</table>"
  loc_A9926D: PopAdLdVar
  loc_A9926E: FLdPr Me
  loc_A99271: MemLdRfVar from_stack_1.htmFile
  loc_A99274: LdPrVar
  loc_A99276: LateMemCall
  loc_A9927C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A99281: PopAdLdVar
  loc_A99282: FLdPr Me
  loc_A99285: MemLdRfVar from_stack_1.htmFile
  loc_A99288: LdPrVar
  loc_A9928A: LateMemCall
  loc_A99290: LitVarStr var_94, "  <THEAD>"
  loc_A99295: PopAdLdVar
  loc_A99296: FLdPr Me
  loc_A99299: MemLdRfVar from_stack_1.htmFile
  loc_A9929C: LdPrVar
  loc_A9929E: LateMemCall
  loc_A992A4: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A992A9: PopAdLdVar
  loc_A992AA: FLdPr Me
  loc_A992AD: MemLdRfVar from_stack_1.htmFile
  loc_A992B0: LdPrVar
  loc_A992B2: LateMemCall
  loc_A992B8: LitVarStr var_94, "     <th rowspan=""2"">EXP. MUNICIPAL</th>"
  loc_A992BD: PopAdLdVar
  loc_A992BE: FLdPr Me
  loc_A992C1: MemLdRfVar from_stack_1.htmFile
  loc_A992C4: LdPrVar
  loc_A992C6: LateMemCall
  loc_A992CC: LitVarStr var_94, "     <th rowspan=""2"">FECHA DE<br>PAGO</th>"
  loc_A992D1: PopAdLdVar
  loc_A992D2: FLdPr Me
  loc_A992D5: MemLdRfVar from_stack_1.htmFile
  loc_A992D8: LdPrVar
  loc_A992DA: LateMemCall
  loc_A992E0: LitVarStr var_94, "     <th rowspan=""2"">PROVEEDOR</th>"
  loc_A992E5: PopAdLdVar
  loc_A992E6: FLdPr Me
  loc_A992E9: MemLdRfVar from_stack_1.htmFile
  loc_A992EC: LdPrVar
  loc_A992EE: LateMemCall
  loc_A992F4: LitVarStr var_94, "     <th colspan=""4"">COMPROBANTE</th>"
  loc_A992F9: PopAdLdVar
  loc_A992FA: FLdPr Me
  loc_A992FD: MemLdRfVar from_stack_1.htmFile
  loc_A99300: LdPrVar
  loc_A99302: LateMemCall
  loc_A99308: LitVarStr var_94, "     <th colspan=""2"">IMPUTACIÓN</th>"
  loc_A9930D: PopAdLdVar
  loc_A9930E: FLdPr Me
  loc_A99311: MemLdRfVar from_stack_1.htmFile
  loc_A99314: LdPrVar
  loc_A99316: LateMemCall
  loc_A9931C: LitVarStr var_94, "   </tr>"
  loc_A99321: PopAdLdVar
  loc_A99322: FLdPr Me
  loc_A99325: MemLdRfVar from_stack_1.htmFile
  loc_A99328: LdPrVar
  loc_A9932A: LateMemCall
  loc_A99330: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A99335: PopAdLdVar
  loc_A99336: FLdPr Me
  loc_A99339: MemLdRfVar from_stack_1.htmFile
  loc_A9933C: LdPrVar
  loc_A9933E: LateMemCall
  loc_A99344: LitVarStr var_94, "     <th>FECHA</th>"
  loc_A99349: PopAdLdVar
  loc_A9934A: FLdPr Me
  loc_A9934D: MemLdRfVar from_stack_1.htmFile
  loc_A99350: LdPrVar
  loc_A99352: LateMemCall
  loc_A99358: LitVarStr var_94, "     <th>TIPO</th>"
  loc_A9935D: PopAdLdVar
  loc_A9935E: FLdPr Me
  loc_A99361: MemLdRfVar from_stack_1.htmFile
  loc_A99364: LdPrVar
  loc_A99366: LateMemCall
  loc_A9936C: LitVarStr var_94, "     <th>NÚMERO</th>"
  loc_A99371: PopAdLdVar
  loc_A99372: FLdPr Me
  loc_A99375: MemLdRfVar from_stack_1.htmFile
  loc_A99378: LdPrVar
  loc_A9937A: LateMemCall
  loc_A99380: LitVarStr var_94, "     <th>IMPORTE</th>"
  loc_A99385: PopAdLdVar
  loc_A99386: FLdPr Me
  loc_A99389: MemLdRfVar from_stack_1.htmFile
  loc_A9938C: LdPrVar
  loc_A9938E: LateMemCall
  loc_A99394: LitVarStr var_94, "     <th>PARTIDA</th>"
  loc_A99399: PopAdLdVar
  loc_A9939A: FLdPr Me
  loc_A9939D: MemLdRfVar from_stack_1.htmFile
  loc_A993A0: LdPrVar
  loc_A993A2: LateMemCall
  loc_A993A8: LitVarStr var_94, "     <th>CONCEPTO</th>"
  loc_A993AD: PopAdLdVar
  loc_A993AE: FLdPr Me
  loc_A993B1: MemLdRfVar from_stack_1.htmFile
  loc_A993B4: LdPrVar
  loc_A993B6: LateMemCall
  loc_A993BC: LitVarStr var_94, " </tr>"
  loc_A993C1: PopAdLdVar
  loc_A993C2: FLdPr Me
  loc_A993C5: MemLdRfVar from_stack_1.htmFile
  loc_A993C8: LdPrVar
  loc_A993CA: LateMemCall
  loc_A993D0: LitVarStr var_94, "  </THEAD>"
  loc_A993D5: PopAdLdVar
  loc_A993D6: FLdPr Me
  loc_A993D9: MemLdRfVar from_stack_1.htmFile
  loc_A993DC: LdPrVar
  loc_A993DE: LateMemCall
  loc_A993E4: ExitProcHresult
  loc_A993E5: ILdI2 arg_367
End Function

Private Function Proc_257_22_A01408() 'A01408
  'Data Table: 4462D0
  loc_A0129C: LitVarStr var_94, "</table>"
  loc_A012A1: PopAdLdVar
  loc_A012A2: FLdPr Me
  loc_A012A5: MemLdRfVar from_stack_1.htmFile
  loc_A012A8: LdPrVar
  loc_A012AA: LateMemCall
  loc_A012B0: LitVarStr var_94, "<br>"
  loc_A012B5: PopAdLdVar
  loc_A012B6: FLdPr Me
  loc_A012B9: MemLdRfVar from_stack_1.htmFile
  loc_A012BC: LdPrVar
  loc_A012BE: LateMemCall
  loc_A012C4: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A012C9: PopAdLdVar
  loc_A012CA: FLdPr Me
  loc_A012CD: MemLdRfVar from_stack_1.htmFile
  loc_A012D0: LdPrVar
  loc_A012D2: LateMemCall
  loc_A012D8: LitVarStr var_94, "  <tr>"
  loc_A012DD: PopAdLdVar
  loc_A012DE: FLdPr Me
  loc_A012E1: MemLdRfVar from_stack_1.htmFile
  loc_A012E4: LdPrVar
  loc_A012E6: LateMemCall
  loc_A012EC: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A012F1: PopAdLdVar
  loc_A012F2: FLdPr Me
  loc_A012F5: MemLdRfVar from_stack_1.htmFile
  loc_A012F8: LdPrVar
  loc_A012FA: LateMemCall
  loc_A01300: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A01305: PopAdLdVar
  loc_A01306: FLdPr Me
  loc_A01309: MemLdRfVar from_stack_1.htmFile
  loc_A0130C: LdPrVar
  loc_A0130E: LateMemCall
  loc_A01314: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A01319: PopAdLdVar
  loc_A0131A: FLdPr Me
  loc_A0131D: MemLdRfVar from_stack_1.htmFile
  loc_A01320: LdPrVar
  loc_A01322: LateMemCall
  loc_A01328: LitVarStr var_94, "          <map name=""Map"">"
  loc_A0132D: PopAdLdVar
  loc_A0132E: FLdPr Me
  loc_A01331: MemLdRfVar from_stack_1.htmFile
  loc_A01334: LdPrVar
  loc_A01336: LateMemCall
  loc_A0133C: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A01341: PopAdLdVar
  loc_A01342: FLdPr Me
  loc_A01345: MemLdRfVar from_stack_1.htmFile
  loc_A01348: LdPrVar
  loc_A0134A: LateMemCall
  loc_A01350: LitVarStr var_94, "          </map>"
  loc_A01355: PopAdLdVar
  loc_A01356: FLdPr Me
  loc_A01359: MemLdRfVar from_stack_1.htmFile
  loc_A0135C: LdPrVar
  loc_A0135E: LateMemCall
  loc_A01364: LitVarStr var_94, "    </div></th>"
  loc_A01369: PopAdLdVar
  loc_A0136A: FLdPr Me
  loc_A0136D: MemLdRfVar from_stack_1.htmFile
  loc_A01370: LdPrVar
  loc_A01372: LateMemCall
  loc_A01378: LitVarStr var_94, "  </tr>"
  loc_A0137D: PopAdLdVar
  loc_A0137E: FLdPr Me
  loc_A01381: MemLdRfVar from_stack_1.htmFile
  loc_A01384: LdPrVar
  loc_A01386: LateMemCall
  loc_A0138C: LitVarStr var_94, "  <tr>"
  loc_A01391: PopAdLdVar
  loc_A01392: FLdPr Me
  loc_A01395: MemLdRfVar from_stack_1.htmFile
  loc_A01398: LdPrVar
  loc_A0139A: LateMemCall
  loc_A013A0: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A013A5: PopAdLdVar
  loc_A013A6: FLdPr Me
  loc_A013A9: MemLdRfVar from_stack_1.htmFile
  loc_A013AC: LdPrVar
  loc_A013AE: LateMemCall
  loc_A013B4: LitVarStr var_94, "  </tr>"
  loc_A013B9: PopAdLdVar
  loc_A013BA: FLdPr Me
  loc_A013BD: MemLdRfVar from_stack_1.htmFile
  loc_A013C0: LdPrVar
  loc_A013C2: LateMemCall
  loc_A013C8: LitVarStr var_94, "</table>"
  loc_A013CD: PopAdLdVar
  loc_A013CE: FLdPr Me
  loc_A013D1: MemLdRfVar from_stack_1.htmFile
  loc_A013D4: LdPrVar
  loc_A013D6: LateMemCall
  loc_A013DC: LitVarStr var_94, "</body>"
  loc_A013E1: PopAdLdVar
  loc_A013E2: FLdPr Me
  loc_A013E5: MemLdRfVar from_stack_1.htmFile
  loc_A013E8: LdPrVar
  loc_A013EA: LateMemCall
  loc_A013F0: LitVarStr var_94, "</html>"
  loc_A013F5: PopAdLdVar
  loc_A013F6: FLdPr Me
  loc_A013F9: MemLdRfVar from_stack_1.htmFile
  loc_A013FC: LdPrVar
  loc_A013FE: LateMemCall
  loc_A01404: ExitProcHresult
  loc_A01405: OrI4
  loc_A01406: FFreeStr  = ""
End Function
