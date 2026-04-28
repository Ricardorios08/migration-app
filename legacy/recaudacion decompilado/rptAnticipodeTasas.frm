VERSION 5.00
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptAnticipodeTasas
  Caption = "Anticipo de Tasas"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptAnticipodeTasas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8316
  ClientHeight = 3492
  StartUpPosition = 2 'CenterScreen
  Begin VB.Timer Timer1
    Enabled = 0   'False
    Interval = 10000
    Left = 7080
    Top = 2280
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 240
    Top = 240
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 16
    OleObjectBlob = "rptAnticipodeTasas.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3240
    Width = 8310
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptAnticipodeTasas.frx":099C
  End
  Begin VB.CommandButton cmdSalir
    Left = 5640
    Top = 2280
    Width = 735
    Height = 615
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptAnticipodeTasas.frx":0A1C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptAnticipodeTasas.frx":0C6E
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2040
    Width = 1815
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 3015
    Height = 1095
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8055
    Height = 1935
    TabIndex = 9
    Begin VB.CheckBox BancoChk
      Caption = "Paga en Banco"
      Left = 5640
      Top = 1320
      Width = 1935
      Height = 255
      TabIndex = 3
    End
    Begin VB.ComboBox OficinaCbo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2640
      Top = 360
      Width = 3615
      Height = 315
      TabIndex = 0
      List = "rptAnticipodeTasas.frx":0CD2
      ItemData = "rptAnticipodeTasas.frx":0D46
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin MSMask.MaskEdBox PeriBoleMsk
      Left = 2640
      Top = 840
      Width = 975
      Height = 315
      TabIndex = 1
      OleObjectBlob = "rptAnticipodeTasas.frx":0D59
    End
    Begin MSMask.MaskEdBox NumeBoleMsk
      Left = 2640
      Top = 1320
      Width = 975
      Height = 315
      TabIndex = 2
      OleObjectBlob = "rptAnticipodeTasas.frx":0DC1
    End
    Begin VB.Label Label1
      Caption = "Oficina:"
      Left = 1995
      Top = 360
      Width = 540
      Height = 195
      TabIndex = 17
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Boleto Nº:"
      Left = 1815
      Top = 1320
      Width = 720
      Height = 195
      TabIndex = 15
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Periodo:"
      Left = 1950
      Top = 840
      Width = 585
      Height = 195
      TabIndex = 14
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5760
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptAnticipodeTasas.frx":0E31
  End
End

Attribute VB_Name = "rptAnticipodeTasas"

Public DetaDeva As String
Public Imprimiendo As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type

Private Type UDT_2_0059D3F8
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_3_0059D428
  bStruc(12) As Byte ' String fields: 3
End Type

Private Type UDT_4_0059D45C
  bStruc(24) As Byte ' String fields: 2
End Type

Private Type UDT_5_0059D4C0
  bStruc(132) As Byte ' String fields: 33
End Type


Private Sub Timer1_Timer() 'A2BBA8
  'Data Table: 4B3968
  loc_A2BB60: LitI2_Byte 0
  loc_A2BB62: FLdPr Me
  loc_A2BB65: VCallAd Control_ID_Timer1
  loc_A2BB68: FStAdFunc var_88
  loc_A2BB6B: FLdPr var_88
  loc_A2BB6E: Me.Enabled = from_stack_1b
  loc_A2BB73: FFree1Ad var_88
  loc_A2BB76: FLdPr Me
  loc_A2BB79: MemLdStr global_120
  loc_A2BB7C: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A2BB81: FStStr var_8C
  loc_A2BB84: FFree1Str var_8C
  loc_A2BB87: ILdRf Me
  loc_A2BB8A: FStAdNoPop
  loc_A2BB8E: ImpAdLdRf MemVar_D9C5D8
  loc_A2BB91: NewIfNullPr Global
  loc_A2BB94: Global.Unload from_stack_1
  loc_A2BB99: FFree1Ad var_88
  loc_A2BB9C: LitI2_Byte 0
  loc_A2BB9E: FLdPr Me
  loc_A2BBA1: MemStI2 Imprimiendo
  loc_A2BBA4: ExitProcHresult
End Sub

Private Sub PeriBoleMsk_UnknownEvent_0 '9BF1F8
  'Data Table: 4B3968
  loc_9BF1E4: FLdPr Me
  loc_9BF1E7: VCallAd Control_ID_PeriBoleMsk
  loc_9BF1EA: CVarAd
  loc_9BF1EE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF1F3: FFree1Var var_94 = ""
  loc_9BF1F6: ExitProcHresult
End Sub

Private Sub NumeBoleMsk_UnknownEvent_0 '9BF318
  'Data Table: 4B3968
  loc_9BF304: FLdPr Me
  loc_9BF307: VCallAd Control_ID_NumeBoleMsk
  loc_9BF30A: CVarAd
  loc_9BF30E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF313: FFree1Var var_94 = ""
  loc_9BF316: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A892BC
  'Data Table: 4B3968
  loc_A89224: LitI2_Byte &HFF
  loc_A89226: FLdPr Me
  loc_A89229: MemStI2 Imprimiendo
  loc_A8922C: FLdRfVar var_88
  loc_A8922F: ImpAdLdRf MemVar_D9C5D8
  loc_A89232: NewIfNullPr Global
  loc_A89235:  = Global.Printer
  loc_A8923A: FLdPr var_88
  loc_A8923D: LateIdLdVar var_98 DispID_28 1
  loc_A89244: CStrVarTmp
  loc_A89245: FStStrNoPop var_9C
  loc_A89248: FLdPr Me
  loc_A8924B: MemStStrCopy
  loc_A8924F: FFree1Str var_9C
  loc_A89252: FFree1Ad var_88
  loc_A89255: FFree1Var var_98 = ""
  loc_A89258: ImpAdLdI4 MemVar_D93CA4
  loc_A8925B: ImpAdCallI2 Proc_272_25_B159D8()
  loc_A89260: FStStr var_9C
  loc_A89263: FFree1Str var_9C
  loc_A89266: LitI2_Byte 0
  loc_A89268: ILdRf Me
  loc_A8926B: CastAd
  loc_A8926E: FStAdFunc var_88
  loc_A89271: FLdRfVar var_88
  loc_A89274: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A89279: FFree1Ad var_88
  loc_A8927C: FLdRfVar var_9E
  loc_A8927F: FLdPr Me
  loc_A89282: VCallAd Control_ID_cmdPredeterminada
  loc_A89285: FStAdFunc var_88
  loc_A89288: FLdPr var_88
  loc_A8928B:  = Me.Enabled
  loc_A89290: FLdI2 var_9E
  loc_A89293: NotI4
  loc_A89294: FFree1Ad var_88
  loc_A89297: BranchF loc_A892A2
  loc_A8929A: ImpAdCallFPR4 DoEvents()
  loc_A8929F: Branch loc_A8927C
  loc_A892A2: LitI2_Byte &HFF
  loc_A892A4: FLdPr Me
  loc_A892A7: VCallAd Control_ID_Timer1
  loc_A892AA: FStAdFunc var_88
  loc_A892AD: FLdPr var_88
  loc_A892B0: Me.Enabled = from_stack_1b
  loc_A892B5: FFree1Ad var_88
  loc_A892B8: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DFD8C
  'Data Table: 4B3968
  loc_9DFD70: LitI2_Byte 0
  loc_9DFD72: PopTmpLdAd2 var_8A
  loc_9DFD75: ILdRf Me
  loc_9DFD78: CastAd
  loc_9DFD7B: FStAdFunc var_88
  loc_9DFD7E: FLdRfVar var_88
  loc_9DFD81: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFD86: FFree1Ad var_88
  loc_9DFD89: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A029B4
  'Data Table: 4B3968
  loc_A02984: LitVarStr var_94, "Cerrando..."
  loc_A02989: PopAdLdVar
  loc_A0298A: FLdPr Me
  loc_A0298D: VCallAd Control_ID_statusBar
  loc_A02990: FStAdFunc var_A8
  loc_A02993: FLdPr var_A8
  loc_A02996: LateIdSt
  loc_A0299B: FFree1Ad var_A8
  loc_A0299E: ILdRf Me
  loc_A029A1: FStAdNoPop
  loc_A029A5: ImpAdLdRf MemVar_D9C5D8
  loc_A029A8: NewIfNullPr Global
  loc_A029AB: Global.Unload from_stack_1
  loc_A029B0: FFree1Ad var_A8
  loc_A029B3: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A161B0
  'Data Table: 4B3968
  loc_A16178: FLdPr Me
  loc_A1617B: VCallAd Control_ID_statusBar
  loc_A1617E: FStAdFunc var_88
  loc_A16181: FLdPr var_88
  loc_A16184: LateIdLdVar var_98 DispID_1 0
  loc_A1618B: CStrVarTmp
  loc_A1618C: CVarStr var_A8
  loc_A1618F: PopAdLdVar
  loc_A16190: FLdPr Me
  loc_A16193: VCallAd Control_ID_statusBar
  loc_A16196: FStAdFunc var_BC
  loc_A16199: FLdPr var_BC
  loc_A1619C: LateIdSt
  loc_A161A1: FFreeAd var_88 = ""
  loc_A161A8: FFreeVar var_98 = ""
  loc_A161AF: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A0A330
  'Data Table: 4B3968
  loc_A0A2F8: LitI2_Byte 0
  loc_A0A2FA: FLdPr Me
  loc_A0A2FD: MemStI2 bGenerado
  loc_A0A300: LitI2_Byte 0
  loc_A0A302: ILdRf Me
  loc_A0A305: CastAd
  loc_A0A308: FStAdFunc var_88
  loc_A0A30B: FLdRfVar var_88
  loc_A0A30E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A0A313: FFree1Ad var_88
  loc_A0A316: Call HabilitarCriterio()
  loc_A0A31B: ILdRf Me
  loc_A0A31E: CastAd
  loc_A0A321: FStAdFunc var_88
  loc_A0A324: FLdRfVar var_88
  loc_A0A327: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A0A32C: FFree1Ad var_88
  loc_A0A32F: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9F2264
  'Data Table: 4B3968
  loc_9F223C: LitI2_Byte &HFF
  loc_9F223E: FLdPr Me
  loc_9F2241: MemStI2 Imprimiendo
  loc_9F2244: ILdRf Me
  loc_9F2247: CastAd
  loc_9F224A: FStAdFunc var_88
  loc_9F224D: FLdRfVar var_88
  loc_9F2250: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9F2255: FFree1Ad var_88
  loc_9F2258: LitI2_Byte 0
  loc_9F225A: FLdPr Me
  loc_9F225D: MemStI2 Imprimiendo
  loc_9F2260: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB2F98
  'Data Table: 4B3968
  loc_AB2EBC: ILdRf Me
  loc_AB2EBF: CastAd
  loc_AB2EC2: FStAdFunc var_88
  loc_AB2EC5: FLdRfVar var_88
  loc_AB2EC8: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_AB2ECD: FFree1Ad var_88
  loc_AB2ED0: FLdRfVar var_8C
  loc_AB2ED3: NewIfNullAd
  loc_AB2ED6: FStAd var_90 
  loc_AB2EDA: LitStr "SELECT CodiOfic, DetaOfic FROM oficina ORDER BY CodiOfic"
  loc_AB2EDD: FLdPr var_90
  loc_AB2EE0: Call clsoficina.RedefineRS(from_stack_1v)
  loc_AB2EE5: FLdPr var_90
  loc_AB2EE8: Call clsoficina.MoveFirst()
  loc_AB2EED: FLdPr Me
  loc_AB2EF0: VCallAd Control_ID_OficinaCbo
  loc_AB2EF3: FStAdFunc var_88
  loc_AB2EF6: FLdPr var_88
  loc_AB2EF9: Me.Clear
  loc_AB2EFE: FFree1Ad var_88
  loc_AB2F01: FLdRfVar var_92
  loc_AB2F04: FLdPr var_90
  loc_AB2F07: from_stack_1 = clsoficina.EOF
  loc_AB2F0C: FLdI2 var_92
  loc_AB2F0F: NotI4
  loc_AB2F10: BranchF loc_AB2F8A
  loc_AB2F13: LitVar_Missing var_A8
  loc_AB2F16: PopAdLdVar
  loc_AB2F17: FLdRfVar var_98
  loc_AB2F1A: FLdPr var_90
  loc_AB2F1D: from_stack_1 = clsoficina.DetaOfic
  loc_AB2F22: ILdRf var_98
  loc_AB2F25: FLdPr Me
  loc_AB2F28: VCallAd Control_ID_OficinaCbo
  loc_AB2F2B: FStAdFunc var_88
  loc_AB2F2E: FLdPr var_88
  loc_AB2F31: Me.AddItem from_stack_1, from_stack_2
  loc_AB2F36: FFree1Str var_98
  loc_AB2F39: FFree1Ad var_88
  loc_AB2F3C: FLdRfVar var_92
  loc_AB2F3F: FLdPr var_90
  loc_AB2F42: from_stack_1 = clsoficina.CodiOfic
  loc_AB2F47: FLdI2 var_92
  loc_AB2F4A: CI4UI1
  loc_AB2F4B: FLdRfVar var_AA
  loc_AB2F4E: FLdPr Me
  loc_AB2F51: VCallAd Control_ID_OficinaCbo
  loc_AB2F54: FStAdFunc var_88
  loc_AB2F57: FLdPr var_88
  loc_AB2F5A:  = Me.NewIndex
  loc_AB2F5F: FLdI2 var_AA
  loc_AB2F62: FLdPr Me
  loc_AB2F65: VCallAd Control_ID_OficinaCbo
  loc_AB2F68: FStAdFunc var_B0
  loc_AB2F6B: FLdPr var_B0
  loc_AB2F6E: Me.ItemData = from_stack_1
  loc_AB2F73: FFreeAd var_88 = ""
  loc_AB2F7A: LitI2_Byte 1
  loc_AB2F7C: PopTmpLdAd2 var_92
  loc_AB2F7F: FLdPr var_90
  loc_AB2F82: Call clsoficina.Move(from_stack_1v)
  loc_AB2F87: Branch loc_AB2F01
  loc_AB2F8A: LitNothing
  loc_AB2F8C: FStAd var_90 
  loc_AB2F90: Call cmdNueva_Click()
  loc_AB2F95: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9DA24C
  'Data Table: 4B3968
  loc_9DA234: FLdPr Me
  loc_9DA237: VCallAd Control_ID_wbbReporte
  loc_9DA23A: FStAdFunc var_88
  loc_9DA23D: FLdRfVar var_88
  loc_9DA240: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9DA245: FFree1Ad var_88
  loc_9DA248: ExitProcHresult
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '9F4C14
  'Data Table: 4B3968
  loc_9F4BEC: FLdRfVar var_8A
  loc_9F4BEF: FLdPr Me
  loc_9F4BF2: VCallAd Control_ID_cmdPredeterminada
  loc_9F4BF5: FStAdFunc var_88
  loc_9F4BF8: FLdPr var_88
  loc_9F4BFB:  = Me.Enabled
  loc_9F4C00: FLdI2 var_8A
  loc_9F4C03: NotI4
  loc_9F4C04: FFree1Ad var_88
  loc_9F4C07: BranchF loc_9F4C12
  loc_9F4C0A: ImpAdCallFPR4 DoEvents()
  loc_9F4C0F: Branch loc_9F4BEC
  loc_9F4C12: ExitProcHresult
End Sub

Public Function DetaDevaGet() '4B4948
  DetaDevaGet = DetaDeva
End Function

Public Sub DetaDevaPut(Value) '4B4957
  DetaDeva = Value
End Sub

Public Function ImprimiendoGet() '4B4966
  ImprimiendoGet = Imprimiendo
End Function

Public Sub ImprimiendoPut(Value) '4B4975
  Imprimiendo = Value
End Sub

Public Function bGeneradoGet() '4B4984
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4B4993
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5D7B8
  'Data Table: 4B3968
  loc_A5D764: LitI4 0
  loc_A5D769: LitI4 2
  loc_A5D76E: FLdRfVar var_88
  loc_A5D771: Redim
  loc_A5D77B: FLdPr Me
  loc_A5D77E: VCallAd Control_ID_PeriBoleMsk
  loc_A5D781: CVarAd
  loc_A5D785: ParmAry1St
  loc_A5D78B: FLdPr Me
  loc_A5D78E: VCallAd Control_ID_NumeBoleMsk
  loc_A5D791: CVarAd
  loc_A5D795: ParmAry1St
  loc_A5D79B: FLdPr Me
  loc_A5D79E: VCallAd Control_ID_BancoChk
  loc_A5D7A1: CVarAd
  loc_A5D7A5: ParmAry1St
  loc_A5D7AB: FLdRfVar var_88
  loc_A5D7AE: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5D7B3: FLdRfVar var_88
  loc_A5D7B6: Erase
  loc_A5D7B7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'C4B37C
  'Data Table: 4B3968
  loc_C4A648: FLdPr Me
  loc_C4A64B: MemLdI2 bGenerado
  loc_C4A64E: BranchF loc_C4A652
  loc_C4A651: ExitProcHresult
  loc_C4A652: LitVarStr var_A4, "Generando reporte..."
  loc_C4A657: PopAdLdVar
  loc_C4A658: FLdPr Me
  loc_C4A65B: VCallAd Control_ID_statusBar
  loc_C4A65E: FStAdFunc var_B8
  loc_C4A661: FLdPr var_B8
  loc_C4A664: LateIdSt
  loc_C4A669: FFree1Ad var_B8
  loc_C4A66C: LitI4 &HB
  loc_C4A671: CI2I4
  loc_C4A672: FLdPr Me
  loc_C4A675: Me.MousePointer = from_stack_1
  loc_C4A67A: FLdRfVar var_C4
  loc_C4A67D: FLdRfVar var_BA
  loc_C4A680: FLdPr Me
  loc_C4A683: VCallAd Control_ID_OficinaCbo
  loc_C4A686: FStAdFunc var_B8
  loc_C4A689: FLdPr var_B8
  loc_C4A68C:  = Me.ListIndex
  loc_C4A691: FLdI2 var_BA
  loc_C4A694: FLdPr Me
  loc_C4A697: VCallAd Control_ID_OficinaCbo
  loc_C4A69A: FStAdFunc var_C0
  loc_C4A69D: FLdPr var_C0
  loc_C4A6A0:  = Me.ItemData
  loc_C4A6A5: ILdRf var_C4
  loc_C4A6A8: FStR4 var_C8
  loc_C4A6AB: FFreeAd var_B8 = ""
  loc_C4A6B2: ILdRf var_C8
  loc_C4A6B5: LitI4 1
  loc_C4A6BA: EqI4
  loc_C4A6BB: BranchF loc_C4A6CD
  loc_C4A6BE: LitStr " inmueble.SupeInmu, inmueble.DptoInmu, inmueble.DistInmu, inmueble.SeccInmu, inmueble.ManzInmu, inmueble.ParcInmu, inmueble.SubpInmu, inmueble.DigiInmu, CodiZoin, inmueble.DecpInmu as DecaPost, inmueble.NupoInmu as NumePost, inmueble.DebpInmu as DebaPost, inmueble.MapoInmu as ManzPost, inmueble.CapoInmu as CasaPost, inmueble.DelpInmu as DeloPost, inmueble.CoppInmu as CopoPost, "
  loc_C4A6C1: FStStrCopy var_88
  loc_C4A6C4: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = boleto.CuenCtct"
  loc_C4A6C7: FStStrCopy var_8C
  loc_C4A6CA: Branch loc_C4A730
  loc_C4A6CD: ILdRf var_C8
  loc_C4A6D0: LitI4 2
  loc_C4A6D5: EqI4
  loc_C4A6D6: BranchF loc_C4A6E8
  loc_C4A6D9: LitStr " comercio.DecpCome as DecaPost, comercio.NupoCome as NumePost, comercio.DebpCome as DebaPost, comercio.MapoCome as ManzPost, comercio.CapoCome as CasaPost, comercio.DelpCome as DeloPost, comercio.CoppCome as CopoPost, "
  loc_C4A6DC: FStStrCopy var_88
  loc_C4A6DF: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_C4A6E2: FStStrCopy var_8C
  loc_C4A6E5: Branch loc_C4A730
  loc_C4A6E8: ILdRf var_C8
  loc_C4A6EB: LitI4 3
  loc_C4A6F0: EqI4
  loc_C4A6F1: BranchF loc_C4A6FD
  loc_C4A6F4: LitStr " DecrPers as DecaPost, NurePers as NumePost, DebrPers as DebaPost, MarePers as ManzPost, CarePers as CasaPost, DelrPers as DeloPost, CoprPers as CopoPost, "
  loc_C4A6F7: FStStrCopy var_88
  loc_C4A6FA: Branch loc_C4A730
  loc_C4A6FD: ILdRf var_C8
  loc_C4A700: LitI4 4
  loc_C4A705: EqI4
  loc_C4A706: BranchF loc_C4A71E
  loc_C4A709: LitStr " DetaTise, NumeDifu, FilaDifu, if(SeccDifu=1 OR SeccDifu=2 OR SeccDifu=6,'Sección','Sector') as NoseDifu, SeccDifu, DetaDedi, FeveDifu, difunto.DecpDifu as DecaPost, difunto.NupoDifu as NumePost, difunto.DebpDifu as DebaPost, difunto.MapoDifu as ManzPost, difunto.CapoDifu as CasaPost, difunto.DelpDifu as DeloPost, difunto.CoppDifu as CopoPost, "
  loc_C4A70C: FStStrCopy var_88
  loc_C4A70F: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = boleto.CuenCtct AND CodiOfic = 4 LEFT JOIN tiposepu ON tiposepu.CodiTise = difunto.CodiTise LEFT JOIN detadifu ON detadifu.CodiDifu = difunto.CodiDifu"
  loc_C4A712: FStStrCopy var_8C
  loc_C4A715: LitStr " ORDER BY NumeDedi LIMIT 1"
  loc_C4A718: FStStrCopy var_90
  loc_C4A71B: Branch loc_C4A730
  loc_C4A71E: ILdRf var_C8
  loc_C4A721: LitI4 6
  loc_C4A726: EqI4
  loc_C4A727: BranchF loc_C4A730
  loc_C4A72A: LitStr " DecrPers as DecaPost, NurePers as NumePost, DebrPers as DebaPost, MarePers as ManzPost, CarePers as CasaPost, DelrPers as DeloPost, CoprPers as CopoPost, ExpeBole, "
  loc_C4A72D: FStStrCopy var_88
  loc_C4A730: FLdPr Me
  loc_C4A733: MemLdRfVar from_stack_1.global_80
  loc_C4A736: NewIfNullAd
  loc_C4A739: FStAd var_CC 
  loc_C4A73D: LitStr "SELECT"
  loc_C4A740: LitStr " boleto.CucuPers, persona.DetaPers, boleto.CuenCtct, ifnull(p2.DetaPers,'') as Vinculo,"
  loc_C4A743: ConcatStr
  loc_C4A744: FStStrNoPop var_D0
  loc_C4A747: ILdRf var_88
  loc_C4A74A: ConcatStr
  loc_C4A74B: FStStrNoPop var_D4
  loc_C4A74E: LitStr " boleto.CodiUsua , boleto.CodiFapa, boleto.CuotDefa, boleto.CodiOfic, boleto.FeveBole, boleto.TotaBole, ApreBole"
  loc_C4A751: ConcatStr
  loc_C4A752: FStStrNoPop var_D8
  loc_C4A755: LitStr " FROM boleto"
  loc_C4A758: ConcatStr
  loc_C4A759: FStStrNoPop var_DC
  loc_C4A75C: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_C4A75F: ConcatStr
  loc_C4A760: FStStrNoPop var_E0
  loc_C4A763: LitStr " LEFT JOIN relacion ON relacion.CodiOfic = boleto.CodiOfic AND relacion.CuenCtct = boleto.CuenCtct AND relacion.TipoRela = 'Poseedor' AND relacion.EmitRela = 1"
  loc_C4A766: ConcatStr
  loc_C4A767: FStStrNoPop var_E4
  loc_C4A76A: LitStr " LEFT JOIN infogov.persona as p2 ON p2.CucuPers = relacion.CucuPers"
  loc_C4A76D: ConcatStr
  loc_C4A76E: FStStrNoPop var_E8
  loc_C4A771: ILdRf var_8C
  loc_C4A774: ConcatStr
  loc_C4A775: FStStrNoPop var_EC
  loc_C4A778: LitStr " WHERE boleto.PeriBole = '"
  loc_C4A77B: ConcatStr
  loc_C4A77C: FStStrNoPop var_100
  loc_C4A77F: FLdPr Me
  loc_C4A782: VCallAd Control_ID_PeriBoleMsk
  loc_C4A785: FStAdFunc var_B8
  loc_C4A788: FLdPr var_B8
  loc_C4A78B: LateIdLdVar var_FC DispID_0 0
  loc_C4A792: CStrVarTmp
  loc_C4A793: FStStrNoPop var_104
  loc_C4A796: ConcatStr
  loc_C4A797: FStStrNoPop var_108
  loc_C4A79A: LitStr "' AND boleto.NumeBole = '"
  loc_C4A79D: ConcatStr
  loc_C4A79E: FStStrNoPop var_11C
  loc_C4A7A1: FLdPr Me
  loc_C4A7A4: VCallAd Control_ID_NumeBoleMsk
  loc_C4A7A7: FStAdFunc var_C0
  loc_C4A7AA: FLdPr var_C0
  loc_C4A7AD: LateIdLdVar var_118 DispID_0 0
  loc_C4A7B4: CStrVarTmp
  loc_C4A7B5: FStStrNoPop var_120
  loc_C4A7B8: ConcatStr
  loc_C4A7B9: FStStrNoPop var_124
  loc_C4A7BC: LitStr "'"
  loc_C4A7BF: ConcatStr
  loc_C4A7C0: FStStrNoPop var_128
  loc_C4A7C3: FLdPr var_CC
  loc_C4A7C6: Call clsboleto.RedefineRS(from_stack_1v)
  loc_C4A7CB: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = "": var_104 = "": var_108 = "": var_11C = "": var_120 = "": var_124 = ""
  loc_C4A7EC: FFreeAd var_B8 = ""
  loc_C4A7F3: FFreeVar var_FC = ""
  loc_C4A7FA: FLdRfVar var_C4
  loc_C4A7FD: FLdPr var_CC
  loc_C4A800: from_stack_1 = clsboleto.RecordCount
  loc_C4A805: ILdRf var_C4
  loc_C4A808: LitI4 0
  loc_C4A80D: EqI4
  loc_C4A80E: BranchF loc_C4A81C
  loc_C4A811: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C4A814: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4A819: Branch loc_C4B352
  loc_C4A81C: LitI4 0
  loc_C4A821: LitI4 1
  loc_C4A826: FLdPr Me
  loc_C4A829: MemLdRfVar from_stack_1.global_88
  loc_C4A82C: Redim
  loc_C4A836: LitI4 0
  loc_C4A83B: LitI4 1
  loc_C4A840: FLdPr Me
  loc_C4A843: MemLdRfVar from_stack_1.global_104
  loc_C4A846: Redim
  loc_C4A850: LitI2_Byte 0
  loc_C4A852: FLdPr Me
  loc_C4A855: MemStI2 global_94
  loc_C4A858: FLdPr var_CC
  loc_C4A85B: Call clsboleto.MoveFirst()
  loc_C4A860: FLdRfVar var_D0
  loc_C4A863: FLdPr var_CC
  loc_C4A866: from_stack_1 = clsboleto.CucuPers
  loc_C4A86B: LitI2_Byte 0
  loc_C4A86D: LitVar_Missing var_118
  loc_C4A870: LitI2_Byte 0
  loc_C4A872: FLdZeroAd var_D0
  loc_C4A875: CVarStr var_FC
  loc_C4A878: PopAdLdVar
  loc_C4A879: LitI4 1
  loc_C4A87E: FLdPr Me
  loc_C4A881: MemLdStr global_88
  loc_C4A884: AryLock
  loc_C4A887: Ary1LdPr
  loc_C4A888: MemLdRfVar from_stack_1.global_0
  loc_C4A88B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A890: AryUnlock
  loc_C4A893: FFreeVar var_FC = ""
  loc_C4A89A: FLdRfVar var_D0
  loc_C4A89D: FLdPr var_CC
  loc_C4A8A0: from_stack_1 = clsboleto.DetaPers
  loc_C4A8A5: LitI2_Byte 0
  loc_C4A8A7: LitVar_Missing var_118
  loc_C4A8AA: LitI2_Byte 0
  loc_C4A8AC: FLdZeroAd var_D0
  loc_C4A8AF: CVarStr var_FC
  loc_C4A8B2: PopAdLdVar
  loc_C4A8B3: LitI4 1
  loc_C4A8B8: FLdPr Me
  loc_C4A8BB: MemLdStr global_88
  loc_C4A8BE: AryLock
  loc_C4A8C1: Ary1LdPr
  loc_C4A8C2: MemLdRfVar from_stack_1.global_4
  loc_C4A8C5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A8CA: AryUnlock
  loc_C4A8CD: FFreeVar var_FC = ""
  loc_C4A8D4: FLdRfVar var_D0
  loc_C4A8D7: FLdPr var_CC
  loc_C4A8DA: from_stack_1 = clsboleto.DecaPost
  loc_C4A8DF: LitI2_Byte 0
  loc_C4A8E1: LitVar_Missing var_118
  loc_C4A8E4: LitI2_Byte 0
  loc_C4A8E6: FLdZeroAd var_D0
  loc_C4A8E9: CVarStr var_FC
  loc_C4A8EC: PopAdLdVar
  loc_C4A8ED: LitI4 1
  loc_C4A8F2: FLdPr Me
  loc_C4A8F5: MemLdStr global_88
  loc_C4A8F8: AryLock
  loc_C4A8FB: Ary1LdPr
  loc_C4A8FC: MemLdRfVar from_stack_1.global_8
  loc_C4A8FF: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A904: AryUnlock
  loc_C4A907: FFreeVar var_FC = ""
  loc_C4A90E: FLdRfVar var_D0
  loc_C4A911: FLdPr var_CC
  loc_C4A914: from_stack_1 = clsboleto.NumePost
  loc_C4A919: LitI2_Byte 0
  loc_C4A91B: LitVar_Missing var_118
  loc_C4A91E: LitI2_Byte 0
  loc_C4A920: FLdZeroAd var_D0
  loc_C4A923: CVarStr var_FC
  loc_C4A926: PopAdLdVar
  loc_C4A927: LitI4 1
  loc_C4A92C: FLdPr Me
  loc_C4A92F: MemLdStr global_88
  loc_C4A932: AryLock
  loc_C4A935: Ary1LdPr
  loc_C4A936: MemLdRfVar from_stack_1.global_12
  loc_C4A939: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A93E: AryUnlock
  loc_C4A941: FFreeVar var_FC = ""
  loc_C4A948: FLdRfVar var_D0
  loc_C4A94B: FLdPr var_CC
  loc_C4A94E: from_stack_1 = clsboleto.DebaPost
  loc_C4A953: LitI2_Byte 0
  loc_C4A955: LitVar_Missing var_118
  loc_C4A958: LitI2_Byte 0
  loc_C4A95A: FLdZeroAd var_D0
  loc_C4A95D: CVarStr var_FC
  loc_C4A960: PopAdLdVar
  loc_C4A961: LitI4 1
  loc_C4A966: FLdPr Me
  loc_C4A969: MemLdStr global_88
  loc_C4A96C: AryLock
  loc_C4A96F: Ary1LdPr
  loc_C4A970: MemLdRfVar from_stack_1.global_16
  loc_C4A973: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A978: AryUnlock
  loc_C4A97B: FFreeVar var_FC = ""
  loc_C4A982: FLdRfVar var_D0
  loc_C4A985: FLdPr var_CC
  loc_C4A988: from_stack_1 = clsboleto.ManzPost
  loc_C4A98D: LitI2_Byte 0
  loc_C4A98F: LitVar_Missing var_118
  loc_C4A992: LitI2_Byte 0
  loc_C4A994: FLdZeroAd var_D0
  loc_C4A997: CVarStr var_FC
  loc_C4A99A: PopAdLdVar
  loc_C4A99B: LitI4 1
  loc_C4A9A0: FLdPr Me
  loc_C4A9A3: MemLdStr global_88
  loc_C4A9A6: AryLock
  loc_C4A9A9: Ary1LdPr
  loc_C4A9AA: MemLdRfVar from_stack_1.global_20
  loc_C4A9AD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A9B2: AryUnlock
  loc_C4A9B5: FFreeVar var_FC = ""
  loc_C4A9BC: FLdRfVar var_D0
  loc_C4A9BF: FLdPr var_CC
  loc_C4A9C2: from_stack_1 = clsboleto.CasaPost
  loc_C4A9C7: LitI2_Byte 0
  loc_C4A9C9: LitVar_Missing var_118
  loc_C4A9CC: LitI2_Byte 0
  loc_C4A9CE: FLdZeroAd var_D0
  loc_C4A9D1: CVarStr var_FC
  loc_C4A9D4: PopAdLdVar
  loc_C4A9D5: LitI4 1
  loc_C4A9DA: FLdPr Me
  loc_C4A9DD: MemLdStr global_88
  loc_C4A9E0: AryLock
  loc_C4A9E3: Ary1LdPr
  loc_C4A9E4: MemLdRfVar from_stack_1.global_24
  loc_C4A9E7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4A9EC: AryUnlock
  loc_C4A9EF: FFreeVar var_FC = ""
  loc_C4A9F6: FLdRfVar var_D0
  loc_C4A9F9: FLdPr var_CC
  loc_C4A9FC: from_stack_1 = clsboleto.DeloPost
  loc_C4AA01: LitI2_Byte 0
  loc_C4AA03: LitVar_Missing var_118
  loc_C4AA06: LitI2_Byte 0
  loc_C4AA08: FLdZeroAd var_D0
  loc_C4AA0B: CVarStr var_FC
  loc_C4AA0E: PopAdLdVar
  loc_C4AA0F: LitI4 1
  loc_C4AA14: FLdPr Me
  loc_C4AA17: MemLdStr global_88
  loc_C4AA1A: AryLock
  loc_C4AA1D: Ary1LdPr
  loc_C4AA1E: MemLdRfVar from_stack_1.global_28
  loc_C4AA21: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AA26: AryUnlock
  loc_C4AA29: FFreeVar var_FC = ""
  loc_C4AA30: FLdRfVar var_D0
  loc_C4AA33: FLdPr var_CC
  loc_C4AA36: from_stack_1 = clsboleto.CopoPost
  loc_C4AA3B: LitI2_Byte 0
  loc_C4AA3D: LitVar_Missing var_118
  loc_C4AA40: LitI2_Byte 0
  loc_C4AA42: FLdZeroAd var_D0
  loc_C4AA45: CVarStr var_FC
  loc_C4AA48: PopAdLdVar
  loc_C4AA49: LitI4 1
  loc_C4AA4E: FLdPr Me
  loc_C4AA51: MemLdStr global_88
  loc_C4AA54: AryLock
  loc_C4AA57: Ary1LdPr
  loc_C4AA58: MemLdRfVar from_stack_1.global_32
  loc_C4AA5B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AA60: AryUnlock
  loc_C4AA63: FFreeVar var_FC = ""
  loc_C4AA6A: FLdRfVar var_D0
  loc_C4AA6D: FLdPr var_CC
  loc_C4AA70: from_stack_1 = clsboleto.CuenCtct
  loc_C4AA75: FLdRfVar var_D4
  loc_C4AA78: FLdPr var_CC
  loc_C4AA7B: from_stack_1 = clsboleto.CuenCtct
  loc_C4AA80: LitVarStr var_B4, "&nbsp;"
  loc_C4AA85: FStVarCopyObj var_118
  loc_C4AA88: FLdRfVar var_118
  loc_C4AA8B: FLdZeroAd var_D4
  loc_C4AA8E: CVarStr var_FC
  loc_C4AA91: ILdRf var_D0
  loc_C4AA94: LitStr vbNullString
  loc_C4AA97: NeStr
  loc_C4AA99: CVarBoolI2 var_A4
  loc_C4AA9D: FLdRfVar var_13C
  loc_C4AAA0: ImpAdCallFPR4  = IIf(, , )
  loc_C4AAA5: LitI2_Byte 0
  loc_C4AAA7: LitVar_Missing var_15C
  loc_C4AAAA: LitI2_Byte 0
  loc_C4AAAC: FLdVar var_13C
  loc_C4AAB0: LitI4 1
  loc_C4AAB5: FLdPr Me
  loc_C4AAB8: MemLdStr global_88
  loc_C4AABB: AryLock
  loc_C4AABE: Ary1LdPr
  loc_C4AABF: MemLdRfVar from_stack_1.global_36
  loc_C4AAC2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AAC7: AryUnlock
  loc_C4AACA: FFree1Str var_D0
  loc_C4AACD: FFreeVar var_A4 = "": var_FC = "": var_118 = "": var_13C = ""
  loc_C4AADA: FLdRfVar var_FC
  loc_C4AADD: FLdPr var_CC
  loc_C4AAE0: from_stack_1 = clsboleto.Vinculo
  loc_C4AAE5: LitI2_Byte 0
  loc_C4AAE7: LitVar_Missing var_118
  loc_C4AAEA: LitI2_Byte 0
  loc_C4AAEC: FLdVar var_FC
  loc_C4AAF0: LitI4 1
  loc_C4AAF5: FLdPr Me
  loc_C4AAF8: MemLdStr global_88
  loc_C4AAFB: AryLock
  loc_C4AAFE: Ary1LdPr
  loc_C4AAFF: MemLdRfVar from_stack_1.global_40
  loc_C4AB02: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AB07: AryUnlock
  loc_C4AB0A: FFreeVar var_FC = ""
  loc_C4AB11: FLdRfVar var_D0
  loc_C4AB14: FLdPr var_CC
  loc_C4AB17: from_stack_1 = clsboleto.CodiUsua
  loc_C4AB1C: LitI2_Byte 0
  loc_C4AB1E: LitVar_Missing var_118
  loc_C4AB21: LitI2_Byte 0
  loc_C4AB23: FLdZeroAd var_D0
  loc_C4AB26: CVarStr var_FC
  loc_C4AB29: PopAdLdVar
  loc_C4AB2A: LitI4 1
  loc_C4AB2F: FLdPr Me
  loc_C4AB32: MemLdStr global_88
  loc_C4AB35: AryLock
  loc_C4AB38: Ary1LdPr
  loc_C4AB39: MemLdRfVar from_stack_1.global_92
  loc_C4AB3C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AB41: AryUnlock
  loc_C4AB44: FFreeVar var_FC = ""
  loc_C4AB4B: FLdRfVar var_C4
  loc_C4AB4E: FLdPr var_CC
  loc_C4AB51: from_stack_1 = clsboleto.CodiFapa
  loc_C4AB56: LitI2_Byte 0
  loc_C4AB58: LitVar_Missing var_FC
  loc_C4AB5B: LitI2_Byte 0
  loc_C4AB5D: ILdRf var_C4
  loc_C4AB60: CVarI4
  loc_C4AB64: PopAdLdVar
  loc_C4AB65: LitI4 1
  loc_C4AB6A: FLdPr Me
  loc_C4AB6D: MemLdStr global_88
  loc_C4AB70: AryLock
  loc_C4AB73: Ary1LdPr
  loc_C4AB74: MemLdRfVar from_stack_1.global_96
  loc_C4AB77: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AB7C: AryUnlock
  loc_C4AB7F: FFree1Var var_FC = ""
  loc_C4AB82: FLdRfVar var_BA
  loc_C4AB85: FLdPr var_CC
  loc_C4AB88: from_stack_1 = clsboleto.CuotDefa
  loc_C4AB8D: LitI2_Byte 0
  loc_C4AB8F: LitVar_Missing var_FC
  loc_C4AB92: LitI2_Byte 0
  loc_C4AB94: FLdI2 var_BA
  loc_C4AB97: CVarI2 var_A4
  loc_C4AB9A: PopAdLdVar
  loc_C4AB9B: LitI4 1
  loc_C4ABA0: FLdPr Me
  loc_C4ABA3: MemLdStr global_88
  loc_C4ABA6: AryLock
  loc_C4ABA9: Ary1LdPr
  loc_C4ABAA: MemLdRfVar from_stack_1.global_100
  loc_C4ABAD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4ABB2: AryUnlock
  loc_C4ABB5: FFree1Var var_FC = ""
  loc_C4ABB8: FLdRfVar var_BA
  loc_C4ABBB: FLdPr var_CC
  loc_C4ABBE: from_stack_1 = clsboleto.CodiOfic
  loc_C4ABC3: LitI2_Byte 0
  loc_C4ABC5: LitVar_Missing var_FC
  loc_C4ABC8: LitI2_Byte 0
  loc_C4ABCA: FLdI2 var_BA
  loc_C4ABCD: CVarI2 var_A4
  loc_C4ABD0: PopAdLdVar
  loc_C4ABD1: LitI4 1
  loc_C4ABD6: FLdPr Me
  loc_C4ABD9: MemLdStr global_88
  loc_C4ABDC: AryLock
  loc_C4ABDF: Ary1LdPr
  loc_C4ABE0: MemLdRfVar from_stack_1.global_104
  loc_C4ABE3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4ABE8: AryUnlock
  loc_C4ABEB: FFree1Var var_FC = ""
  loc_C4ABEE: FLdRfVar var_FC
  loc_C4ABF1: FLdPr var_CC
  loc_C4ABF4: from_stack_1 = clsboleto.FeveBole
  loc_C4ABF9: LitI2_Byte 0
  loc_C4ABFB: LitVar_Missing var_118
  loc_C4ABFE: LitI2_Byte 0
  loc_C4AC00: FLdVar var_FC
  loc_C4AC04: LitI4 1
  loc_C4AC09: FLdPr Me
  loc_C4AC0C: MemLdStr global_88
  loc_C4AC0F: AryLock
  loc_C4AC12: Ary1LdPr
  loc_C4AC13: MemLdRfVar from_stack_1.global_108
  loc_C4AC16: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AC1B: AryUnlock
  loc_C4AC1E: FFreeVar var_FC = ""
  loc_C4AC25: FLdPr Me
  loc_C4AC28: VCallAd Control_ID_BarCode
  loc_C4AC2B: FStAdFunc var_164
  loc_C4AC2E: FLdPr Me
  loc_C4AC31: VCallAd Control_ID_NumeBoleMsk
  loc_C4AC34: FStAdFunc var_C0
  loc_C4AC37: FLdPr var_C0
  loc_C4AC3A: LateIdLdVar var_FC DispID_0 0
  loc_C4AC41: PopAd
  loc_C4AC43: FLdPr Me
  loc_C4AC46: VCallAd Control_ID_PeriBoleMsk
  loc_C4AC49: FStAdFunc var_160
  loc_C4AC4C: FLdPr var_160
  loc_C4AC4F: LateIdLdVar var_118 DispID_0 0
  loc_C4AC56: PopAd
  loc_C4AC58: LitI2_Byte &HFF
  loc_C4AC5A: FLdRfVar var_118
  loc_C4AC5D: CStrVarTmp
  loc_C4AC5E: FStStrNoPop var_D4
  loc_C4AC61: FLdRfVar var_FC
  loc_C4AC64: CStrVarTmp
  loc_C4AC65: FStStrNoPop var_D0
  loc_C4AC68: FLdZeroAd var_164
  loc_C4AC6B: FStAdFuncNoPop
  loc_C4AC6E: ImpAdCallI2 Proc_57_26_AF6048(, , , )
  loc_C4AC73: FStStr var_D8
  loc_C4AC76: LitI2_Byte 0
  loc_C4AC78: LitVar_Missing var_15C
  loc_C4AC7B: LitI2_Byte 0
  loc_C4AC7D: FLdZeroAd var_D8
  loc_C4AC80: CVarStr var_13C
  loc_C4AC83: PopAdLdVar
  loc_C4AC84: LitI4 1
  loc_C4AC89: FLdPr Me
  loc_C4AC8C: MemLdStr global_88
  loc_C4AC8F: AryLock
  loc_C4AC92: Ary1LdPr
  loc_C4AC93: MemLdRfVar from_stack_1.global_112
  loc_C4AC96: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AC9B: AryUnlock
  loc_C4AC9E: FFreeStr var_D0 = "": var_D4 = ""
  loc_C4ACA7: FFreeAd var_B8 = "": var_C0 = "": var_160 = ""
  loc_C4ACB2: FFreeVar var_FC = "": var_118 = "": var_13C = ""
  loc_C4ACBD: FLdPr Me
  loc_C4ACC0: VCallAd Control_ID_BarCode
  loc_C4ACC3: FStAdFunc var_164
  loc_C4ACC6: FLdPr Me
  loc_C4ACC9: VCallAd Control_ID_NumeBoleMsk
  loc_C4ACCC: FStAdFunc var_C0
  loc_C4ACCF: FLdPr var_C0
  loc_C4ACD2: LateIdLdVar var_118 DispID_0 0
  loc_C4ACD9: PopAd
  loc_C4ACDB: FLdPr Me
  loc_C4ACDE: VCallAd Control_ID_PeriBoleMsk
  loc_C4ACE1: FStAdFunc var_160
  loc_C4ACE4: FLdPr var_160
  loc_C4ACE7: LateIdLdVar var_13C DispID_0 0
  loc_C4ACEE: PopAd
  loc_C4ACF0: FLdRfVar var_FC
  loc_C4ACF3: FLdPr var_CC
  loc_C4ACF6: from_stack_1 = clsboleto.FeveBole
  loc_C4ACFB: FLdRfVar var_16C
  loc_C4ACFE: FLdPr var_CC
  loc_C4AD01: from_stack_1 = clsboleto.TotaBole
  loc_C4AD06: LitI2_Byte &HFF
  loc_C4AD08: FLdFPR8 var_16C
  loc_C4AD0B: CStrR8
  loc_C4AD0D: FStStrNoPop var_D8
  loc_C4AD10: FLdVar var_FC
  loc_C4AD14: FLdRfVar var_13C
  loc_C4AD17: CStrVarTmp
  loc_C4AD18: FStStrNoPop var_D4
  loc_C4AD1B: FLdRfVar var_118
  loc_C4AD1E: CStrVarTmp
  loc_C4AD1F: FStStrNoPop var_D0
  loc_C4AD22: FLdZeroAd var_164
  loc_C4AD25: FStAdFuncNoPop
  loc_C4AD28: ImpAdCallI2  = Proc_57_45_B2C364(, , )
  loc_C4AD2D: FStStr var_DC
  loc_C4AD30: LitI2_Byte 0
  loc_C4AD32: LitVar_Missing var_17C
  loc_C4AD35: LitI2_Byte 0
  loc_C4AD37: FLdZeroAd var_DC
  loc_C4AD3A: CVarStr var_15C
  loc_C4AD3D: PopAdLdVar
  loc_C4AD3E: LitI4 1
  loc_C4AD43: FLdPr Me
  loc_C4AD46: MemLdStr global_88
  loc_C4AD49: AryLock
  loc_C4AD4C: Ary1LdPr
  loc_C4AD4D: MemLdRfVar from_stack_1.global_116
  loc_C4AD50: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AD55: AryUnlock
  loc_C4AD58: FFreeStr var_D0 = "": var_D4 = "": var_D8 = ""
  loc_C4AD63: FFreeAd var_B8 = "": var_C0 = "": var_160 = ""
  loc_C4AD6E: FFreeVar var_118 = "": var_13C = "": var_FC = "": var_15C = ""
  loc_C4AD7B: FLdRfVar var_16C
  loc_C4AD7E: FLdPr var_CC
  loc_C4AD81: from_stack_1 = clsboleto.TotaBole
  loc_C4AD86: LitI2_Byte 0
  loc_C4AD88: LitVar_Missing var_FC
  loc_C4AD8B: LitI2_Byte &HFF
  loc_C4AD8D: FLdFPR8 var_16C
  loc_C4AD90: CVarR8
  loc_C4AD94: PopAdLdVar
  loc_C4AD95: LitI4 1
  loc_C4AD9A: FLdPr Me
  loc_C4AD9D: MemLdStr global_88
  loc_C4ADA0: AryLock
  loc_C4ADA3: Ary1LdPr
  loc_C4ADA4: MemLdRfVar from_stack_1.global_124
  loc_C4ADA7: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4ADAC: AryUnlock
  loc_C4ADAF: FFree1Var var_FC = ""
  loc_C4ADB2: FLdRfVar var_16C
  loc_C4ADB5: FLdPr var_CC
  loc_C4ADB8: from_stack_1 = clsboleto.ApreBole
  loc_C4ADBD: FLdFPR8 var_16C
  loc_C4ADC0: LitI2_Byte 0
  loc_C4ADC2: CR8I2
  loc_C4ADC3: NeR8
  loc_C4ADC4: BranchF loc_C4ADFE
  loc_C4ADC7: FLdRfVar var_16C
  loc_C4ADCA: FLdPr var_CC
  loc_C4ADCD: from_stack_1 = clsboleto.ApreBole
  loc_C4ADD2: LitI2_Byte 0
  loc_C4ADD4: LitVar_Missing var_FC
  loc_C4ADD7: LitI2_Byte &HFF
  loc_C4ADD9: FLdFPR8 var_16C
  loc_C4ADDC: CVarR8
  loc_C4ADE0: PopAdLdVar
  loc_C4ADE1: LitI4 1
  loc_C4ADE6: FLdPr Me
  loc_C4ADE9: MemLdStr global_88
  loc_C4ADEC: AryLock
  loc_C4ADEF: Ary1LdPr
  loc_C4ADF0: MemLdRfVar from_stack_1.global_120
  loc_C4ADF3: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4ADF8: AryUnlock
  loc_C4ADFB: FFree1Var var_FC = ""
  loc_C4ADFE: FLdRfVar var_C4
  loc_C4AE01: FLdRfVar var_BA
  loc_C4AE04: FLdPr Me
  loc_C4AE07: VCallAd Control_ID_OficinaCbo
  loc_C4AE0A: FStAdFunc var_B8
  loc_C4AE0D: FLdPr var_B8
  loc_C4AE10:  = Me.ListIndex
  loc_C4AE15: FLdI2 var_BA
  loc_C4AE18: FLdPr Me
  loc_C4AE1B: VCallAd Control_ID_OficinaCbo
  loc_C4AE1E: FStAdFunc var_C0
  loc_C4AE21: FLdPr var_C0
  loc_C4AE24:  = Me.ItemData
  loc_C4AE29: ILdRf var_C4
  loc_C4AE2C: FStR4 var_180
  loc_C4AE2F: FFreeAd var_B8 = ""
  loc_C4AE36: ILdRf var_180
  loc_C4AE39: LitI4 1
  loc_C4AE3E: EqI4
  loc_C4AE3F: BranchF loc_C4AEED
  loc_C4AE42: FLdRfVar var_FC
  loc_C4AE45: FLdPr var_CC
  loc_C4AE48: from_stack_1 = clsboleto.SupeInmu
  loc_C4AE4D: LitI2_Byte 0
  loc_C4AE4F: LitVar_Missing var_118
  loc_C4AE52: LitI2_Byte 0
  loc_C4AE54: FLdVar var_FC
  loc_C4AE58: LitI4 1
  loc_C4AE5D: FLdPr Me
  loc_C4AE60: MemLdStr global_88
  loc_C4AE63: AryLock
  loc_C4AE66: Ary1LdPr
  loc_C4AE67: MemLdRfVar from_stack_1.global_44
  loc_C4AE6A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AE6F: AryUnlock
  loc_C4AE72: FFreeVar var_FC = ""
  loc_C4AE79: FLdRfVar var_D0
  loc_C4AE7C: FLdPr var_CC
  loc_C4AE7F: from_stack_1 = clsboleto.NomeInmu
  loc_C4AE84: LitI2_Byte 0
  loc_C4AE86: LitVar_Missing var_118
  loc_C4AE89: LitI2_Byte 0
  loc_C4AE8B: FLdZeroAd var_D0
  loc_C4AE8E: CVarStr var_FC
  loc_C4AE91: PopAdLdVar
  loc_C4AE92: LitI4 1
  loc_C4AE97: FLdPr Me
  loc_C4AE9A: MemLdStr global_88
  loc_C4AE9D: AryLock
  loc_C4AEA0: Ary1LdPr
  loc_C4AEA1: MemLdRfVar from_stack_1.global_48
  loc_C4AEA4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AEA9: AryUnlock
  loc_C4AEAC: FFreeVar var_FC = ""
  loc_C4AEB3: FLdRfVar var_FC
  loc_C4AEB6: FLdPr var_CC
  loc_C4AEB9: from_stack_1 = clsboleto.CodiZoin
  loc_C4AEBE: LitI2_Byte 0
  loc_C4AEC0: LitVar_Missing var_118
  loc_C4AEC3: LitI2_Byte 0
  loc_C4AEC5: FLdVar var_FC
  loc_C4AEC9: LitI4 1
  loc_C4AECE: FLdPr Me
  loc_C4AED1: MemLdStr global_88
  loc_C4AED4: AryLock
  loc_C4AED7: Ary1LdPr
  loc_C4AED8: MemLdRfVar from_stack_1.DetaDeva
  loc_C4AEDB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AEE0: AryUnlock
  loc_C4AEE3: FFreeVar var_FC = ""
  loc_C4AEEA: Branch loc_C4B0E1
  loc_C4AEED: ILdRf var_180
  loc_C4AEF0: LitI4 2
  loc_C4AEF5: EqI4
  loc_C4AEF6: BranchF loc_C4AEFC
  loc_C4AEF9: Branch loc_C4B0E1
  loc_C4AEFC: ILdRf var_180
  loc_C4AEFF: LitI4 3
  loc_C4AF04: EqI4
  loc_C4AF05: BranchF loc_C4AF0B
  loc_C4AF08: Branch loc_C4B0E1
  loc_C4AF0B: ILdRf var_180
  loc_C4AF0E: LitI4 4
  loc_C4AF13: EqI4
  loc_C4AF14: BranchF loc_C4B09B
  loc_C4AF17: FLdRfVar var_FC
  loc_C4AF1A: FLdPr var_CC
  loc_C4AF1D: from_stack_1 = clsboleto.DetaTise
  loc_C4AF22: LitI2_Byte 0
  loc_C4AF24: LitVar_Missing var_118
  loc_C4AF27: LitI2_Byte 0
  loc_C4AF29: FLdVar var_FC
  loc_C4AF2D: LitI4 1
  loc_C4AF32: FLdPr Me
  loc_C4AF35: MemLdStr global_88
  loc_C4AF38: AryLock
  loc_C4AF3B: Ary1LdPr
  loc_C4AF3C: MemLdRfVar from_stack_1.global_60
  loc_C4AF3F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AF44: AryUnlock
  loc_C4AF47: FFreeVar var_FC = ""
  loc_C4AF4E: FLdRfVar var_FC
  loc_C4AF51: FLdPr var_CC
  loc_C4AF54: from_stack_1 = clsboleto.NumeDifu
  loc_C4AF59: LitI2_Byte 0
  loc_C4AF5B: LitVar_Missing var_118
  loc_C4AF5E: LitI2_Byte 0
  loc_C4AF60: FLdVar var_FC
  loc_C4AF64: LitI4 1
  loc_C4AF69: FLdPr Me
  loc_C4AF6C: MemLdStr global_88
  loc_C4AF6F: AryLock
  loc_C4AF72: Ary1LdPr
  loc_C4AF73: MemLdRfVar from_stack_1.global_64
  loc_C4AF76: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AF7B: AryUnlock
  loc_C4AF7E: FFreeVar var_FC = ""
  loc_C4AF85: FLdRfVar var_FC
  loc_C4AF88: FLdPr var_CC
  loc_C4AF8B: from_stack_1 = clsboleto.FilaDifu
  loc_C4AF90: LitI2_Byte 0
  loc_C4AF92: LitVar_Missing var_118
  loc_C4AF95: LitI2_Byte 0
  loc_C4AF97: FLdVar var_FC
  loc_C4AF9B: LitI4 1
  loc_C4AFA0: FLdPr Me
  loc_C4AFA3: MemLdStr global_88
  loc_C4AFA6: AryLock
  loc_C4AFA9: Ary1LdPr
  loc_C4AFAA: MemLdRfVar from_stack_1.global_68
  loc_C4AFAD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AFB2: AryUnlock
  loc_C4AFB5: FFreeVar var_FC = ""
  loc_C4AFBC: FLdRfVar var_FC
  loc_C4AFBF: FLdPr var_CC
  loc_C4AFC2: from_stack_1 = clsboleto.NoseDifu
  loc_C4AFC7: LitI2_Byte 0
  loc_C4AFC9: LitVar_Missing var_118
  loc_C4AFCC: LitI2_Byte 0
  loc_C4AFCE: FLdVar var_FC
  loc_C4AFD2: LitI4 1
  loc_C4AFD7: FLdPr Me
  loc_C4AFDA: MemLdStr global_88
  loc_C4AFDD: AryLock
  loc_C4AFE0: Ary1LdPr
  loc_C4AFE1: MemLdRfVar from_stack_1.global_72
  loc_C4AFE4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4AFE9: AryUnlock
  loc_C4AFEC: FFreeVar var_FC = ""
  loc_C4AFF3: FLdRfVar var_FC
  loc_C4AFF6: FLdPr var_CC
  loc_C4AFF9: from_stack_1 = clsboleto.SeccDifu
  loc_C4AFFE: LitI2_Byte 0
  loc_C4B000: LitVar_Missing var_118
  loc_C4B003: LitI2_Byte 0
  loc_C4B005: FLdVar var_FC
  loc_C4B009: LitI4 1
  loc_C4B00E: FLdPr Me
  loc_C4B011: MemLdStr global_88
  loc_C4B014: AryLock
  loc_C4B017: Ary1LdPr
  loc_C4B018: MemLdRfVar from_stack_1.global_76
  loc_C4B01B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4B020: AryUnlock
  loc_C4B023: FFreeVar var_FC = ""
  loc_C4B02A: FLdRfVar var_FC
  loc_C4B02D: FLdPr var_CC
  loc_C4B030: from_stack_1 = clsboleto.DetaDedi
  loc_C4B035: LitI2_Byte 0
  loc_C4B037: LitVar_Missing var_118
  loc_C4B03A: LitI2_Byte 0
  loc_C4B03C: FLdVar var_FC
  loc_C4B040: LitI4 1
  loc_C4B045: FLdPr Me
  loc_C4B048: MemLdStr global_88
  loc_C4B04B: AryLock
  loc_C4B04E: Ary1LdPr
  loc_C4B04F: MemLdRfVar from_stack_1.global_80
  loc_C4B052: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4B057: AryUnlock
  loc_C4B05A: FFreeVar var_FC = ""
  loc_C4B061: FLdRfVar var_FC
  loc_C4B064: FLdPr var_CC
  loc_C4B067: from_stack_1 = clsboleto.FeveDifu
  loc_C4B06C: LitI2_Byte 0
  loc_C4B06E: LitVar_Missing var_118
  loc_C4B071: LitI2_Byte 0
  loc_C4B073: FLdVar var_FC
  loc_C4B077: LitI4 1
  loc_C4B07C: FLdPr Me
  loc_C4B07F: MemLdStr global_88
  loc_C4B082: AryLock
  loc_C4B085: Ary1LdPr
  loc_C4B086: MemLdRfVar from_stack_1.global_84
  loc_C4B089: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4B08E: AryUnlock
  loc_C4B091: FFreeVar var_FC = ""
  loc_C4B098: Branch loc_C4B0E1
  loc_C4B09B: ILdRf var_180
  loc_C4B09E: LitI4 6
  loc_C4B0A3: EqI4
  loc_C4B0A4: BranchF loc_C4B0E1
  loc_C4B0A7: FLdRfVar var_D0
  loc_C4B0AA: FLdPr var_CC
  loc_C4B0AD: from_stack_1 = clsboleto.ExpeBole
  loc_C4B0B2: LitI2_Byte 0
  loc_C4B0B4: LitVar_Missing var_118
  loc_C4B0B7: LitI2_Byte 0
  loc_C4B0B9: FLdZeroAd var_D0
  loc_C4B0BC: CVarStr var_FC
  loc_C4B0BF: PopAdLdVar
  loc_C4B0C0: LitI4 1
  loc_C4B0C5: FLdPr Me
  loc_C4B0C8: MemLdStr global_88
  loc_C4B0CB: AryLock
  loc_C4B0CE: Ary1LdPr
  loc_C4B0CF: MemLdRfVar from_stack_1.global_88
  loc_C4B0D2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4B0D7: AryUnlock
  loc_C4B0DA: FFreeVar var_FC = ""
  loc_C4B0E1: LitNothing
  loc_C4B0E3: FStAd var_CC 
  loc_C4B0E7: FLdPr Me
  loc_C4B0EA: MemLdRfVar from_stack_1.global_84
  loc_C4B0ED: NewIfNullAd
  loc_C4B0F0: FStAd var_184 
  loc_C4B0F4: LitStr "SELECT detabole.PeriCtct, BimeCtct, detabole.CodiConc, DetaConc,"
  loc_C4B0F7: LitStr " CapiDebo, ExenDebo, DecaDebo+DereDebo as DescDebo, TotaDebo"
  loc_C4B0FA: ConcatStr
  loc_C4B0FB: FStStrNoPop var_D0
  loc_C4B0FE: LitStr " FROM detabole LEFT JOIN concepto ON concepto.PeriInfo = detabole.PeriCtct AND concepto.CodiConc = detabole.CodiConc"
  loc_C4B101: ConcatStr
  loc_C4B102: FStStrNoPop var_D4
  loc_C4B105: LitStr " WHERE detabole.PeriBole = '"
  loc_C4B108: ConcatStr
  loc_C4B109: FStStrNoPop var_D8
  loc_C4B10C: FLdPr Me
  loc_C4B10F: VCallAd Control_ID_PeriBoleMsk
  loc_C4B112: FStAdFunc var_B8
  loc_C4B115: FLdPr var_B8
  loc_C4B118: LateIdLdVar var_FC DispID_0 0
  loc_C4B11F: CStrVarTmp
  loc_C4B120: FStStrNoPop var_DC
  loc_C4B123: ConcatStr
  loc_C4B124: FStStrNoPop var_E0
  loc_C4B127: LitStr "' AND detabole.NumeBole = '"
  loc_C4B12A: ConcatStr
  loc_C4B12B: FStStrNoPop var_E4
  loc_C4B12E: FLdPr Me
  loc_C4B131: VCallAd Control_ID_NumeBoleMsk
  loc_C4B134: FStAdFunc var_C0
  loc_C4B137: FLdPr var_C0
  loc_C4B13A: LateIdLdVar var_118 DispID_0 0
  loc_C4B141: CStrVarTmp
  loc_C4B142: FStStrNoPop var_E8
  loc_C4B145: ConcatStr
  loc_C4B146: FStStrNoPop var_EC
  loc_C4B149: LitStr "'"
  loc_C4B14C: ConcatStr
  loc_C4B14D: FStStrNoPop var_100
  loc_C4B150: LitStr " ORDER BY CodiConc, PeriCtct, BimeCtct"
  loc_C4B153: ConcatStr
  loc_C4B154: FStStrNoPop var_104
  loc_C4B157: FLdPr var_184
  loc_C4B15A: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C4B15F: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_100 = ""
  loc_C4B176: FFreeAd var_B8 = ""
  loc_C4B17D: FFreeVar var_FC = ""
  loc_C4B184: FLdRfVar var_C4
  loc_C4B187: FLdPr var_184
  loc_C4B18A: from_stack_1 = clsdetabole.RecordCount
  loc_C4B18F: ILdRf var_C4
  loc_C4B192: LitI4 0
  loc_C4B197: EqI4
  loc_C4B198: BranchF loc_C4B1A6
  loc_C4B19B: LitStr "No se ha generado detalle para el boleto"
  loc_C4B19E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C4B1A3: Branch loc_C4B352
  loc_C4B1A6: FLdPr var_184
  loc_C4B1A9: Call clsdetabole.MoveFirst()
  loc_C4B1AE: Call Proc_109_21_ACBDD8()
  loc_C4B1B3: FLdRfVar var_BA
  loc_C4B1B6: FLdPr var_184
  loc_C4B1B9: from_stack_1 = clsdetabole.EOF
  loc_C4B1BE: FLdI2 var_BA
  loc_C4B1C1: NotI4
  loc_C4B1C2: BranchF loc_C4B25D
  loc_C4B1C5: FLdRfVar var_D0
  loc_C4B1C8: FLdPr var_184
  loc_C4B1CB: from_stack_1 = clsdetabole.CodiConc
  loc_C4B1D0: ILdRf var_D0
  loc_C4B1D3: FLdPr Me
  loc_C4B1D6: MemLdI2 global_96
  loc_C4B1D9: CI4UI1
  loc_C4B1DA: FLdPr Me
  loc_C4B1DD: MemLdI2 global_94
  loc_C4B1E0: CI4UI1
  loc_C4B1E1: LitI4 1
  loc_C4B1E6: FLdPr Me
  loc_C4B1E9: MemLdStr global_88
  loc_C4B1EC: Ary1LdPr
  loc_C4B1ED: MemLdStr global_128
  loc_C4B1F0: Ary1LdPr
  loc_C4B1F1: MemLdStr global_0
  loc_C4B1F4: Ary1LdPr
  loc_C4B1F5: MemLdStr global_0
  loc_C4B1F8: EqStr
  loc_C4B1FA: FFree1Str var_D0
  loc_C4B1FD: BranchF loc_C4B255
  loc_C4B200: FLdRfVar var_C4
  loc_C4B203: FLdPr var_184
  loc_C4B206: from_stack_1 = clsdetabole.PeriCtct
  loc_C4B20B: ILdRf var_C4
  loc_C4B20E: CR8I4
  loc_C4B20F: FLdPr Me
  loc_C4B212: MemLdI2 global_98
  loc_C4B215: CI4UI1
  loc_C4B216: FLdPr Me
  loc_C4B219: MemLdI2 global_96
  loc_C4B21C: CI4UI1
  loc_C4B21D: FLdPr Me
  loc_C4B220: MemLdI2 global_94
  loc_C4B223: CI4UI1
  loc_C4B224: LitI4 1
  loc_C4B229: FLdPr Me
  loc_C4B22C: MemLdStr global_88
  loc_C4B22F: Ary1LdPr
  loc_C4B230: MemLdStr global_128
  loc_C4B233: Ary1LdPr
  loc_C4B234: MemLdStr global_0
  loc_C4B237: Ary1LdPr
  loc_C4B238: MemLdStr global_8
  loc_C4B23B: Ary1LdPr
  loc_C4B23C: MemLdStr global_0
  loc_C4B23F: CR8Str
  loc_C4B241: EqR4
  loc_C4B242: BranchF loc_C4B24D
  loc_C4B245: Call Proc_109_24_B0AAC8()
  loc_C4B24A: Branch loc_C4B252
  loc_C4B24D: Call Proc_109_23_AB30B8()
  loc_C4B252: Branch loc_C4B25A
  loc_C4B255: Call Proc_109_22_AD4764()
  loc_C4B25A: Branch loc_C4B1B3
  loc_C4B25D: LitI4 1
  loc_C4B262: FLdPr Me
  loc_C4B265: MemLdStr global_88
  loc_C4B268: Ary1LdPr
  loc_C4B269: MemLdStr global_120
  loc_C4B26C: LitStr vbNullString
  loc_C4B26F: NeStr
  loc_C4B271: BranchF loc_C4B2AD
  loc_C4B274: LitI2_Byte 0
  loc_C4B276: LitI4 1
  loc_C4B27B: FLdPr Me
  loc_C4B27E: MemLdStr global_104
  loc_C4B281: AryLock
  loc_C4B284: Ary1LdPr
  loc_C4B285: MemLdRfVar from_stack_1.global_16
  loc_C4B288: CVarRef
  loc_C4B28D: LitI2_Byte &HFF
  loc_C4B28F: LitI4 1
  loc_C4B294: FLdPr Me
  loc_C4B297: MemLdStr global_88
  loc_C4B29A: Ary1LdPr
  loc_C4B29B: MemLdStr global_120
  loc_C4B29E: CVarStr var_A4
  loc_C4B2A1: PopAdLdVar
  loc_C4B2A2: FLdRfVar var_94
  loc_C4B2A5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_C4B2AA: AryUnlock
  loc_C4B2AD: LitStr "SELECT count(DISTINCT CodiConc) as CodiConc FROM detabole"
  loc_C4B2B0: LitStr " WHERE detabole.PeriBole = '"
  loc_C4B2B3: ConcatStr
  loc_C4B2B4: FStStrNoPop var_D0
  loc_C4B2B7: FLdPr Me
  loc_C4B2BA: VCallAd Control_ID_PeriBoleMsk
  loc_C4B2BD: FStAdFunc var_B8
  loc_C4B2C0: FLdPr var_B8
  loc_C4B2C3: LateIdLdVar var_FC DispID_0 0
  loc_C4B2CA: CStrVarTmp
  loc_C4B2CB: FStStrNoPop var_D4
  loc_C4B2CE: ConcatStr
  loc_C4B2CF: FStStrNoPop var_D8
  loc_C4B2D2: LitStr "' AND detabole.NumeBole = '"
  loc_C4B2D5: ConcatStr
  loc_C4B2D6: FStStrNoPop var_DC
  loc_C4B2D9: FLdPr Me
  loc_C4B2DC: VCallAd Control_ID_NumeBoleMsk
  loc_C4B2DF: FStAdFunc var_C0
  loc_C4B2E2: FLdPr var_C0
  loc_C4B2E5: LateIdLdVar var_118 DispID_0 0
  loc_C4B2EC: CStrVarTmp
  loc_C4B2ED: FStStrNoPop var_E0
  loc_C4B2F0: ConcatStr
  loc_C4B2F1: FStStrNoPop var_E4
  loc_C4B2F4: LitStr "'"
  loc_C4B2F7: ConcatStr
  loc_C4B2F8: FStStrNoPop var_E8
  loc_C4B2FB: LitStr " GROUP BY PeriBole, NumeBole"
  loc_C4B2FE: ConcatStr
  loc_C4B2FF: FStStrNoPop var_EC
  loc_C4B302: FLdPr var_184
  loc_C4B305: Call clsdetabole.RedefineRS(from_stack_1v)
  loc_C4B30A: FFreeStr var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_C4B31D: FFreeAd var_B8 = ""
  loc_C4B324: FFreeVar var_FC = ""
  loc_C4B32B: FLdRfVar var_D0
  loc_C4B32E: FLdPr var_184
  loc_C4B331: from_stack_1 = clsdetabole.CodiConc
  loc_C4B336: ILdRf var_D0
  loc_C4B339: CI2Str
  loc_C4B33B: FLdPr Me
  loc_C4B33E: MemStI2 global_92
  loc_C4B341: FFree1Str var_D0
  loc_C4B344: LitNothing
  loc_C4B346: FStAd var_184 
  loc_C4B34A: LitI2_Byte &HFF
  loc_C4B34C: FLdPr Me
  loc_C4B34F: MemStI2 bGenerado
  loc_C4B352: LitI4 0
  loc_C4B357: CI2I4
  loc_C4B358: FLdPr Me
  loc_C4B35B: Me.MousePointer = from_stack_1
  loc_C4B360: LitVarStr var_A4, vbNullString
  loc_C4B365: PopAdLdVar
  loc_C4B366: FLdPr Me
  loc_C4B369: VCallAd Control_ID_statusBar
  loc_C4B36C: FStAdFunc var_B8
  loc_C4B36F: FLdPr var_B8
  loc_C4B372: LateIdSt
  loc_C4B377: FFree1Ad var_B8
  loc_C4B37A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B05CF8
  'Data Table: 4B3968
  loc_B05AE0: FLdRfVar var_88
  loc_B05AE3: LitI2_Byte 0
  loc_B05AE5: LitI2_Byte &HFF
  loc_B05AE7: ImpAdLdI4 MemVar_D93C84
  loc_B05AEA: FLdPr Me
  loc_B05AED: MemLdRfVar from_stack_1.global_60
  loc_B05AF0: NewIfNullPr IFileSystem3
  loc_B05AF3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B05AF8: ILdRf var_88
  loc_B05AFB: FLdPr Me
  loc_B05AFE: MemStVarAd
  loc_B05B02: FFree1Ad var_88
  loc_B05B05: LitI2_Byte &HFF
  loc_B05B07: ImpAdStI2 MemVar_D93C8A
  loc_B05B0A: Call Proc_109_25_B8D8E8()
  loc_B05B0F: LitI2_Byte 1
  loc_B05B11: FLdPr Me
  loc_B05B14: MemLdRfVar from_stack_1.global_94
  loc_B05B17: LitI4 1
  loc_B05B1C: FLdPr Me
  loc_B05B1F: MemLdStr global_88
  loc_B05B22: Ary1LdPr
  loc_B05B23: MemLdStr global_128
  loc_B05B26: LitI2_Byte 1
  loc_B05B28: FnUBound
  loc_B05B2A: CI2I4
  loc_B05B2B: ForI2 var_8C
  loc_B05B31: FLdPr Me
  loc_B05B34: MemLdI2 global_94
  loc_B05B37: LitI2_Byte 1
  loc_B05B39: NeI2
  loc_B05B3A: BranchF loc_B05B51
  loc_B05B3D: LitVarStr var_9C, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_B05B42: PopAdLdVar
  loc_B05B43: FLdPr Me
  loc_B05B46: MemLdRfVar from_stack_1.global_64
  loc_B05B49: LdPrVar
  loc_B05B4B: LateMemCall
  loc_B05B51: Call Proc_109_26_B2CD00()
  loc_B05B56: FLdRfVar var_B8
  loc_B05B59: FLdRfVar var_AE
  loc_B05B5C: FLdPr Me
  loc_B05B5F: VCallAd Control_ID_OficinaCbo
  loc_B05B62: FStAdFunc var_88
  loc_B05B65: FLdPr var_88
  loc_B05B68:  = Me.ListIndex
  loc_B05B6D: FLdI2 var_AE
  loc_B05B70: FLdPr Me
  loc_B05B73: VCallAd Control_ID_OficinaCbo
  loc_B05B76: FStAdFunc var_B4
  loc_B05B79: FLdPr var_B4
  loc_B05B7C:  = Me.ItemData
  loc_B05B81: ILdRf var_B8
  loc_B05B84: FStR4 var_BC
  loc_B05B87: FFreeAd var_88 = ""
  loc_B05B8E: ILdRf var_BC
  loc_B05B91: LitI4 1
  loc_B05B96: EqI4
  loc_B05B97: BranchF loc_B05BCF
  loc_B05B9A: Call Proc_109_27_B4ABC0()
  loc_B05B9F: Call Proc_109_32_BDA898()
  loc_B05BA4: FLdPr Me
  loc_B05BA7: MemLdI2 global_94
  loc_B05BAA: CI4UI1
  loc_B05BAB: LitI4 1
  loc_B05BB0: FLdPr Me
  loc_B05BB3: MemLdStr global_88
  loc_B05BB6: Ary1LdPr
  loc_B05BB7: MemLdStr global_128
  loc_B05BBA: LitI2_Byte 1
  loc_B05BBC: FnUBound
  loc_B05BBE: EqI4
  loc_B05BBF: BranchF loc_B05BCC
  loc_B05BC2: Call Proc_109_33_B312B8()
  loc_B05BC7: Call Proc_109_34_C3FA28()
  loc_B05BCC: Branch loc_B05CD0
  loc_B05BCF: ILdRf var_BC
  loc_B05BD2: LitI4 2
  loc_B05BD7: EqI4
  loc_B05BD8: BranchF loc_B05C10
  loc_B05BDB: Call Proc_109_28_B33960()
  loc_B05BE0: Call Proc_109_32_BDA898()
  loc_B05BE5: FLdPr Me
  loc_B05BE8: MemLdI2 global_94
  loc_B05BEB: CI4UI1
  loc_B05BEC: LitI4 1
  loc_B05BF1: FLdPr Me
  loc_B05BF4: MemLdStr global_88
  loc_B05BF7: Ary1LdPr
  loc_B05BF8: MemLdStr global_128
  loc_B05BFB: LitI2_Byte 1
  loc_B05BFD: FnUBound
  loc_B05BFF: EqI4
  loc_B05C00: BranchF loc_B05C0D
  loc_B05C03: Call Proc_109_33_B312B8()
  loc_B05C08: Call Proc_109_34_C3FA28()
  loc_B05C0D: Branch loc_B05CD0
  loc_B05C10: ILdRf var_BC
  loc_B05C13: LitI4 3
  loc_B05C18: EqI4
  loc_B05C19: BranchF loc_B05C51
  loc_B05C1C: Call Proc_109_29_B33CA0()
  loc_B05C21: Call Proc_109_32_BDA898()
  loc_B05C26: FLdPr Me
  loc_B05C29: MemLdI2 global_94
  loc_B05C2C: CI4UI1
  loc_B05C2D: LitI4 1
  loc_B05C32: FLdPr Me
  loc_B05C35: MemLdStr global_88
  loc_B05C38: Ary1LdPr
  loc_B05C39: MemLdStr global_128
  loc_B05C3C: LitI2_Byte 1
  loc_B05C3E: FnUBound
  loc_B05C40: EqI4
  loc_B05C41: BranchF loc_B05C4E
  loc_B05C44: Call Proc_109_33_B312B8()
  loc_B05C49: Call Proc_109_34_C3FA28()
  loc_B05C4E: Branch loc_B05CD0
  loc_B05C51: ILdRf var_BC
  loc_B05C54: LitI4 4
  loc_B05C59: EqI4
  loc_B05C5A: BranchF loc_B05C92
  loc_B05C5D: Call Proc_109_30_B5A1C8()
  loc_B05C62: Call Proc_109_32_BDA898()
  loc_B05C67: FLdPr Me
  loc_B05C6A: MemLdI2 global_94
  loc_B05C6D: CI4UI1
  loc_B05C6E: LitI4 1
  loc_B05C73: FLdPr Me
  loc_B05C76: MemLdStr global_88
  loc_B05C79: Ary1LdPr
  loc_B05C7A: MemLdStr global_128
  loc_B05C7D: LitI2_Byte 1
  loc_B05C7F: FnUBound
  loc_B05C81: EqI4
  loc_B05C82: BranchF loc_B05C8F
  loc_B05C85: Call Proc_109_33_B312B8()
  loc_B05C8A: Call Proc_109_34_C3FA28()
  loc_B05C8F: Branch loc_B05CD0
  loc_B05C92: ILdRf var_BC
  loc_B05C95: LitI4 5
  loc_B05C9A: EqI4
  loc_B05C9B: BranchF loc_B05CD0
  loc_B05C9E: Call Proc_109_31_B481E0()
  loc_B05CA3: Call Proc_109_32_BDA898()
  loc_B05CA8: FLdPr Me
  loc_B05CAB: MemLdI2 global_94
  loc_B05CAE: CI4UI1
  loc_B05CAF: LitI4 1
  loc_B05CB4: FLdPr Me
  loc_B05CB7: MemLdStr global_88
  loc_B05CBA: Ary1LdPr
  loc_B05CBB: MemLdStr global_128
  loc_B05CBE: LitI2_Byte 1
  loc_B05CC0: FnUBound
  loc_B05CC2: EqI4
  loc_B05CC3: BranchF loc_B05CD0
  loc_B05CC6: Call Proc_109_33_B312B8()
  loc_B05CCB: Call Proc_109_34_C3FA28()
  loc_B05CD0: FLdPr Me
  loc_B05CD3: MemLdRfVar from_stack_1.global_94
  loc_B05CD6: NextI2 var_8C, loc_B05B31
  loc_B05CDB: Call Proc_109_35_9F403C()
  loc_B05CE0: FLdPr Me
  loc_B05CE3: MemLdRfVar from_stack_1.global_64
  loc_B05CE6: LdPrVar
  loc_B05CE8: LateMemCall
  loc_B05CEE: LitStr vbNullString
  loc_B05CF1: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B05CF6: ExitProcHresult
End Sub

Private Function Proc_109_21_ACBDD8() 'ACBDD8
  'Data Table: 4B3968
  loc_ACBCB4: LitI2_Byte 0
  loc_ACBCB6: FLdPr Me
  loc_ACBCB9: MemStI2 global_102
  loc_ACBCBC: LitI2_Byte 0
  loc_ACBCBE: FLdPr Me
  loc_ACBCC1: MemStI2 global_96
  loc_ACBCC4: FLdPr Me
  loc_ACBCC7: MemLdI2 global_94
  loc_ACBCCA: LitI2_Byte 0
  loc_ACBCCC: GtI2
  loc_ACBCCD: BranchF loc_ACBD9D
  loc_ACBCD0: FLdPr Me
  loc_ACBCD3: MemLdI2 global_94
  loc_ACBCD6: CI4UI1
  loc_ACBCD7: LitI4 1
  loc_ACBCDC: FLdPr Me
  loc_ACBCDF: MemLdStr global_88
  loc_ACBCE2: AryLock
  loc_ACBCE5: Ary1LdPr
  loc_ACBCE6: MemLdStr global_128
  loc_ACBCE9: AryLock
  loc_ACBCEC: Ary1LdPr
  loc_ACBCED: MemLdRfVar from_stack_1.global_4
  loc_ACBCF0: FStR4 var_90
  loc_ACBCF3: LitI2_Byte 0
  loc_ACBCF5: LitVar_Missing var_C0
  loc_ACBCF8: LitI2_Byte 0
  loc_ACBCFA: LitI4 1
  loc_ACBCFF: FLdPr Me
  loc_ACBD02: MemLdStr global_104
  loc_ACBD05: Ary1LdPr
  loc_ACBD06: MemLdStr global_4
  loc_ACBD09: CVarStr var_A0
  loc_ACBD0C: PopAdLdVar
  loc_ACBD0D: FMemLdRf unk_4B38D9
  loc_ACBD12: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ACBD17: FFree1Var var_C0 = ""
  loc_ACBD1A: LitI2_Byte 0
  loc_ACBD1C: LitVar_Missing var_C0
  loc_ACBD1F: LitI2_Byte 0
  loc_ACBD21: LitI4 1
  loc_ACBD26: FLdPr Me
  loc_ACBD29: MemLdStr global_104
  loc_ACBD2C: Ary1LdPr
  loc_ACBD2D: MemLdStr global_8
  loc_ACBD30: CVarStr var_A0
  loc_ACBD33: PopAdLdVar
  loc_ACBD34: FMemLdRf unk_4B38D9
  loc_ACBD39: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ACBD3E: FFree1Var var_C0 = ""
  loc_ACBD41: LitI2_Byte 0
  loc_ACBD43: LitVar_Missing var_C0
  loc_ACBD46: LitI2_Byte 0
  loc_ACBD48: LitI4 1
  loc_ACBD4D: FLdPr Me
  loc_ACBD50: MemLdStr global_104
  loc_ACBD53: Ary1LdPr
  loc_ACBD54: MemLdStr global_12
  loc_ACBD57: CVarStr var_A0
  loc_ACBD5A: PopAdLdVar
  loc_ACBD5B: FMemLdRf unk_4B38D9
  loc_ACBD60: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ACBD65: FFree1Var var_C0 = ""
  loc_ACBD68: LitI2_Byte 0
  loc_ACBD6A: LitVar_Missing var_C0
  loc_ACBD6D: LitI2_Byte 0
  loc_ACBD6F: LitI4 1
  loc_ACBD74: FLdPr Me
  loc_ACBD77: MemLdStr global_104
  loc_ACBD7A: Ary1LdPr
  loc_ACBD7B: MemLdStr global_16
  loc_ACBD7E: CVarStr var_A0
  loc_ACBD81: PopAdLdVar
  loc_ACBD82: FMemLdRf unk_4B38D9
  loc_ACBD87: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_ACBD8C: FFree1Var var_C0 = ""
  loc_ACBD8F: LitI4 0
  loc_ACBD94: FStR4 var_90
  loc_ACBD97: AryUnlock
  loc_ACBD9A: AryUnlock
  loc_ACBD9D: FLdPr Me
  loc_ACBDA0: MemLdI2 global_94
  loc_ACBDA3: LitI2_Byte 1
  loc_ACBDA5: AddI2
  loc_ACBDA6: FLdPr Me
  loc_ACBDA9: MemStI2 global_94
  loc_ACBDAC: LitI4 0
  loc_ACBDB1: FLdPr Me
  loc_ACBDB4: MemLdI2 global_94
  loc_ACBDB7: CI4UI1
  loc_ACBDB8: LitI4 1
  loc_ACBDBD: FLdPr Me
  loc_ACBDC0: MemLdStr global_88
  loc_ACBDC3: Ary1LdPr
  loc_ACBDC4: MemLdRfVar from_stack_1.global_128
  loc_ACBDC7: RedimPreserve
  loc_ACBDD1: Call Proc_109_22_AD4764()
  loc_ACBDD6: ExitProcHresult
End Function

Private Function Proc_109_22_AD4764() 'AD4764
  'Data Table: 4B3968
  loc_AD4634: FLdPr Me
  loc_AD4637: MemLdI2 global_102
  loc_AD463A: LitI2_Byte &H1E
  loc_AD463C: GeI2
  loc_AD463D: BranchF loc_AD4645
  loc_AD4640: from_stack_1v = Proc_109_21_ACBDD8()
  loc_AD4645: FLdPr Me
  loc_AD4648: MemLdI2 global_96
  loc_AD464B: LitI2_Byte 1
  loc_AD464D: AddI2
  loc_AD464E: FLdPr Me
  loc_AD4651: MemStI2 global_96
  loc_AD4654: LitI2_Byte 0
  loc_AD4656: FLdPr Me
  loc_AD4659: MemStI2 global_98
  loc_AD465C: FLdPr Me
  loc_AD465F: MemLdI2 global_102
  loc_AD4662: LitI2_Byte 1
  loc_AD4664: AddI2
  loc_AD4665: FLdPr Me
  loc_AD4668: MemStI2 global_102
  loc_AD466B: LitI4 0
  loc_AD4670: FLdPr Me
  loc_AD4673: MemLdI2 global_96
  loc_AD4676: CI4UI1
  loc_AD4677: FLdPr Me
  loc_AD467A: MemLdI2 global_94
  loc_AD467D: CI4UI1
  loc_AD467E: LitI4 1
  loc_AD4683: FLdPr Me
  loc_AD4686: MemLdStr global_88
  loc_AD4689: Ary1LdPr
  loc_AD468A: MemLdStr global_128
  loc_AD468D: Ary1LdPr
  loc_AD468E: MemLdRfVar from_stack_1.global_0
  loc_AD4691: RedimPreserve
  loc_AD469B: FLdRfVar var_88
  loc_AD469E: FLdPr Me
  loc_AD46A1: MemLdRfVar from_stack_1.global_84
  loc_AD46A4: NewIfNullPr clsdetabole
  loc_AD46A7: from_stack_1 = clsdetabole.CodiConc
  loc_AD46AC: LitI2_Byte 0
  loc_AD46AE: LitVar_Missing var_C4
  loc_AD46B1: LitI2_Byte 0
  loc_AD46B3: FLdZeroAd var_88
  loc_AD46B6: CVarStr var_A4
  loc_AD46B9: PopAdLdVar
  loc_AD46BA: FLdPr Me
  loc_AD46BD: MemLdI2 global_96
  loc_AD46C0: CI4UI1
  loc_AD46C1: FLdPr Me
  loc_AD46C4: MemLdI2 global_94
  loc_AD46C7: CI4UI1
  loc_AD46C8: LitI4 1
  loc_AD46CD: FLdPr Me
  loc_AD46D0: MemLdStr global_88
  loc_AD46D3: AryLock
  loc_AD46D6: Ary1LdPr
  loc_AD46D7: MemLdStr global_128
  loc_AD46DA: AryLock
  loc_AD46DD: Ary1LdPr
  loc_AD46DE: MemLdStr global_0
  loc_AD46E1: AryLock
  loc_AD46E4: Ary1LdPr
  loc_AD46E5: MemLdRfVar from_stack_1.global_0
  loc_AD46E8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD46ED: AryUnlock
  loc_AD46F0: AryUnlock
  loc_AD46F3: AryUnlock
  loc_AD46F6: FFreeVar var_A4 = ""
  loc_AD46FD: FLdRfVar var_A4
  loc_AD4700: FLdPr Me
  loc_AD4703: MemLdRfVar from_stack_1.global_84
  loc_AD4706: NewIfNullPr clsdetabole
  loc_AD4709: from_stack_1 = clsdetabole.DetaConc
  loc_AD470E: LitI2_Byte 0
  loc_AD4710: LitVar_Missing var_C4
  loc_AD4713: LitI2_Byte 0
  loc_AD4715: FLdVar var_A4
  loc_AD4719: FLdPr Me
  loc_AD471C: MemLdI2 global_96
  loc_AD471F: CI4UI1
  loc_AD4720: FLdPr Me
  loc_AD4723: MemLdI2 global_94
  loc_AD4726: CI4UI1
  loc_AD4727: LitI4 1
  loc_AD472C: FLdPr Me
  loc_AD472F: MemLdStr global_88
  loc_AD4732: AryLock
  loc_AD4735: Ary1LdPr
  loc_AD4736: MemLdStr global_128
  loc_AD4739: AryLock
  loc_AD473C: Ary1LdPr
  loc_AD473D: MemLdStr global_0
  loc_AD4740: AryLock
  loc_AD4743: Ary1LdPr
  loc_AD4744: MemLdRfVar from_stack_1.global_4
  loc_AD4747: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AD474C: AryUnlock
  loc_AD474F: AryUnlock
  loc_AD4752: AryUnlock
  loc_AD4755: FFreeVar var_A4 = ""
  loc_AD475C: Call Proc_109_23_AB30B8()
  loc_AD4761: ExitProcHresult
  loc_AD4762: FLdZeroAd var_FD0
End Function

Private Function Proc_109_23_AB30B8() 'AB30B8
  'Data Table: 4B3968
  loc_AB2FDC: FLdPr Me
  loc_AB2FDF: MemLdI2 global_102
  loc_AB2FE2: LitI2_Byte &H1E
  loc_AB2FE4: GeI2
  loc_AB2FE5: BranchF loc_AB2FED
  loc_AB2FE8: from_stack_1v = Proc_109_21_ACBDD8()
  loc_AB2FED: FLdPr Me
  loc_AB2FF0: MemLdI2 global_98
  loc_AB2FF3: LitI2_Byte 1
  loc_AB2FF5: AddI2
  loc_AB2FF6: FLdPr Me
  loc_AB2FF9: MemStI2 global_98
  loc_AB2FFC: LitI2_Byte 0
  loc_AB2FFE: FLdPr Me
  loc_AB3001: MemStI2 global_100
  loc_AB3004: LitI4 0
  loc_AB3009: FLdPr Me
  loc_AB300C: MemLdI2 global_98
  loc_AB300F: CI4UI1
  loc_AB3010: FLdPr Me
  loc_AB3013: MemLdI2 global_96
  loc_AB3016: CI4UI1
  loc_AB3017: FLdPr Me
  loc_AB301A: MemLdI2 global_94
  loc_AB301D: CI4UI1
  loc_AB301E: LitI4 1
  loc_AB3023: FLdPr Me
  loc_AB3026: MemLdStr global_88
  loc_AB3029: Ary1LdPr
  loc_AB302A: MemLdStr global_128
  loc_AB302D: Ary1LdPr
  loc_AB302E: MemLdStr global_0
  loc_AB3031: Ary1LdPr
  loc_AB3032: MemLdRfVar from_stack_1.global_8
  loc_AB3035: RedimPreserve
  loc_AB303F: FLdRfVar var_88
  loc_AB3042: FLdPr Me
  loc_AB3045: MemLdRfVar from_stack_1.global_84
  loc_AB3048: NewIfNullPr clsdetabole
  loc_AB304B: from_stack_1 = clsdetabole.PeriCtct
  loc_AB3050: LitI2_Byte 0
  loc_AB3052: LitVar_Missing var_C8
  loc_AB3055: LitI2_Byte 0
  loc_AB3057: ILdRf var_88
  loc_AB305A: CVarI4
  loc_AB305E: PopAdLdVar
  loc_AB305F: FLdPr Me
  loc_AB3062: MemLdI2 global_98
  loc_AB3065: CI4UI1
  loc_AB3066: FLdPr Me
  loc_AB3069: MemLdI2 global_96
  loc_AB306C: CI4UI1
  loc_AB306D: FLdPr Me
  loc_AB3070: MemLdI2 global_94
  loc_AB3073: CI4UI1
  loc_AB3074: LitI4 1
  loc_AB3079: FLdPr Me
  loc_AB307C: MemLdStr global_88
  loc_AB307F: AryLock
  loc_AB3082: Ary1LdPr
  loc_AB3083: MemLdStr global_128
  loc_AB3086: AryLock
  loc_AB3089: Ary1LdPr
  loc_AB308A: MemLdStr global_0
  loc_AB308D: AryLock
  loc_AB3090: Ary1LdPr
  loc_AB3091: MemLdStr global_8
  loc_AB3094: AryLock
  loc_AB3097: Ary1LdPr
  loc_AB3098: MemLdRfVar from_stack_1.global_0
  loc_AB309B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_AB30A0: AryUnlock
  loc_AB30A3: AryUnlock
  loc_AB30A6: AryUnlock
  loc_AB30A9: AryUnlock
  loc_AB30AC: FFree1Var var_C8 = ""
  loc_AB30AF: Call Proc_109_24_B0AAC8()
  loc_AB30B4: ExitProcHresult
  loc_AB30B7: LtCyR8
End Function

Private Function Proc_109_24_B0AAC8() 'B0AAC8
  'Data Table: 4B3968
  loc_B0A8AC: FLdPr Me
  loc_B0A8AF: MemLdI2 global_102
  loc_B0A8B2: LitI2_Byte &H1E
  loc_B0A8B4: GeI2
  loc_B0A8B5: BranchF loc_B0A8BE
  loc_B0A8B8: from_stack_1v = Proc_109_21_ACBDD8()
  loc_B0A8BD: ExitProcHresult
  loc_B0A8BE: FLdPr Me
  loc_B0A8C1: MemLdI2 global_100
  loc_B0A8C4: LitI2_Byte 1
  loc_B0A8C6: AddI2
  loc_B0A8C7: FLdPr Me
  loc_B0A8CA: MemStI2 global_100
  loc_B0A8CD: FLdPr Me
  loc_B0A8D0: MemLdI2 global_102
  loc_B0A8D3: LitI2_Byte 1
  loc_B0A8D5: AddI2
  loc_B0A8D6: FLdPr Me
  loc_B0A8D9: MemStI2 global_102
  loc_B0A8DC: LitI4 0
  loc_B0A8E1: FLdPr Me
  loc_B0A8E4: MemLdI2 global_100
  loc_B0A8E7: CI4UI1
  loc_B0A8E8: FLdPr Me
  loc_B0A8EB: MemLdI2 global_98
  loc_B0A8EE: CI4UI1
  loc_B0A8EF: FLdPr Me
  loc_B0A8F2: MemLdI2 global_96
  loc_B0A8F5: CI4UI1
  loc_B0A8F6: FLdPr Me
  loc_B0A8F9: MemLdI2 global_94
  loc_B0A8FC: CI4UI1
  loc_B0A8FD: LitI4 1
  loc_B0A902: FLdPr Me
  loc_B0A905: MemLdStr global_88
  loc_B0A908: Ary1LdPr
  loc_B0A909: MemLdStr global_128
  loc_B0A90C: Ary1LdPr
  loc_B0A90D: MemLdStr global_0
  loc_B0A910: Ary1LdPr
  loc_B0A911: MemLdStr global_8
  loc_B0A914: Ary1LdPr
  loc_B0A915: MemLdRfVar from_stack_1.global_4
  loc_B0A918: RedimPreserve
  loc_B0A922: FLdPr Me
  loc_B0A925: MemLdI2 global_100
  loc_B0A928: CI4UI1
  loc_B0A929: FLdPr Me
  loc_B0A92C: MemLdI2 global_98
  loc_B0A92F: CI4UI1
  loc_B0A930: FLdPr Me
  loc_B0A933: MemLdI2 global_96
  loc_B0A936: CI4UI1
  loc_B0A937: FLdPr Me
  loc_B0A93A: MemLdI2 global_94
  loc_B0A93D: CI4UI1
  loc_B0A93E: LitI4 1
  loc_B0A943: FLdPr Me
  loc_B0A946: MemLdStr global_88
  loc_B0A949: AryLock
  loc_B0A94C: Ary1LdPr
  loc_B0A94D: MemLdStr global_128
  loc_B0A950: AryLock
  loc_B0A953: Ary1LdPr
  loc_B0A954: MemLdStr global_0
  loc_B0A957: AryLock
  loc_B0A95A: Ary1LdPr
  loc_B0A95B: MemLdStr global_8
  loc_B0A95E: AryLock
  loc_B0A961: Ary1LdPr
  loc_B0A962: MemLdStr global_4
  loc_B0A965: AryLock
  loc_B0A968: Ary1LdRf
  loc_B0A969: FStR4 var_9C
  loc_B0A96C: FLdRfVar var_9E
  loc_B0A96F: FLdPr Me
  loc_B0A972: MemLdRfVar from_stack_1.global_84
  loc_B0A975: NewIfNullPr clsdetabole
  loc_B0A978: from_stack_1 = clsdetabole.BimeCtct
  loc_B0A97D: LitI2_Byte 0
  loc_B0A97F: LitVar_Missing var_D0
  loc_B0A982: LitI2_Byte 0
  loc_B0A984: FLdI2 var_9E
  loc_B0A987: CVarI2 var_B0
  loc_B0A98A: PopAdLdVar
  loc_B0A98B: FMemLdRf 0
  loc_B0A990: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0A995: FFree1Var var_D0 = ""
  loc_B0A998: FLdRfVar var_D8
  loc_B0A99B: FLdPr Me
  loc_B0A99E: MemLdRfVar from_stack_1.global_84
  loc_B0A9A1: NewIfNullPr clsdetabole
  loc_B0A9A4: from_stack_1 = clsdetabole.CapiDebo
  loc_B0A9A9: LitI2_Byte 0
  loc_B0A9AB: LitI4 1
  loc_B0A9B0: FLdPr Me
  loc_B0A9B3: MemLdStr global_104
  loc_B0A9B6: AryLock
  loc_B0A9B9: Ary1LdPr
  loc_B0A9BA: MemLdRfVar from_stack_1.global_4
  loc_B0A9BD: CVarRef
  loc_B0A9C2: LitI2_Byte &HFF
  loc_B0A9C4: FLdFPR8 var_D8
  loc_B0A9C7: CVarR8
  loc_B0A9CB: PopAdLdVar
  loc_B0A9CC: FMemLdRf 0
  loc_B0A9D1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0A9D6: AryUnlock
  loc_B0A9D9: FLdRfVar var_D8
  loc_B0A9DC: FLdPr Me
  loc_B0A9DF: MemLdRfVar from_stack_1.global_84
  loc_B0A9E2: NewIfNullPr clsdetabole
  loc_B0A9E5: from_stack_1 = clsdetabole.ExenDebo
  loc_B0A9EA: LitI2_Byte 0
  loc_B0A9EC: LitI4 1
  loc_B0A9F1: FLdPr Me
  loc_B0A9F4: MemLdStr global_104
  loc_B0A9F7: AryLock
  loc_B0A9FA: Ary1LdPr
  loc_B0A9FB: MemLdRfVar from_stack_1.global_12
  loc_B0A9FE: CVarRef
  loc_B0AA03: LitI2_Byte &HFF
  loc_B0AA05: FLdFPR8 var_D8
  loc_B0AA08: CVarR8
  loc_B0AA0C: PopAdLdVar
  loc_B0AA0D: FMemLdRf 0
  loc_B0AA12: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0AA17: AryUnlock
  loc_B0AA1A: FLdRfVar var_D8
  loc_B0AA1D: FLdPr Me
  loc_B0AA20: MemLdRfVar from_stack_1.global_84
  loc_B0AA23: NewIfNullPr clsdetabole
  loc_B0AA26: from_stack_1 = clsdetabole.DescDebo
  loc_B0AA2B: LitI2_Byte 0
  loc_B0AA2D: LitI4 1
  loc_B0AA32: FLdPr Me
  loc_B0AA35: MemLdStr global_104
  loc_B0AA38: AryLock
  loc_B0AA3B: Ary1LdPr
  loc_B0AA3C: MemLdRfVar from_stack_1.global_8
  loc_B0AA3F: CVarRef
  loc_B0AA44: LitI2_Byte &HFF
  loc_B0AA46: FLdFPR8 var_D8
  loc_B0AA49: CVarR8
  loc_B0AA4D: PopAdLdVar
  loc_B0AA4E: FMemLdRf 0
  loc_B0AA53: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0AA58: AryUnlock
  loc_B0AA5B: FLdRfVar var_D8
  loc_B0AA5E: FLdPr Me
  loc_B0AA61: MemLdRfVar from_stack_1.global_84
  loc_B0AA64: NewIfNullPr clsdetabole
  loc_B0AA67: from_stack_1 = clsdetabole.TotaDebo
  loc_B0AA6C: LitI2_Byte 0
  loc_B0AA6E: LitI4 1
  loc_B0AA73: FLdPr Me
  loc_B0AA76: MemLdStr global_104
  loc_B0AA79: AryLock
  loc_B0AA7C: Ary1LdPr
  loc_B0AA7D: MemLdRfVar from_stack_1.global_16
  loc_B0AA80: CVarRef
  loc_B0AA85: LitI2_Byte &HFF
  loc_B0AA87: FLdFPR8 var_D8
  loc_B0AA8A: CVarR8
  loc_B0AA8E: PopAdLdVar
  loc_B0AA8F: FMemLdRf 0
  loc_B0AA94: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B0AA99: AryUnlock
  loc_B0AA9C: LitI4 0
  loc_B0AAA1: FStR4 var_9C
  loc_B0AAA4: AryUnlock
  loc_B0AAA7: AryUnlock
  loc_B0AAAA: AryUnlock
  loc_B0AAAD: AryUnlock
  loc_B0AAB0: AryUnlock
  loc_B0AAB3: LitI2_Byte 1
  loc_B0AAB5: PopTmpLdAd2 var_9E
  loc_B0AAB8: FLdPr Me
  loc_B0AABB: MemLdRfVar from_stack_1.global_84
  loc_B0AABE: NewIfNullPr clsdetabole
  loc_B0AAC1: Call clsdetabole.Move(from_stack_1v)
  loc_B0AAC6: ExitProcHresult
End Function

Private Function Proc_109_25_B8D8E8() 'B8D8E8
  'Data Table: 4B3968
  loc_B8D370: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_B8D375: PopAdLdVar
  loc_B8D376: FLdPr Me
  loc_B8D379: MemLdRfVar from_stack_1.global_64
  loc_B8D37C: LdPrVar
  loc_B8D37E: LateMemCall
  loc_B8D384: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_B8D389: PopAdLdVar
  loc_B8D38A: FLdPr Me
  loc_B8D38D: MemLdRfVar from_stack_1.global_64
  loc_B8D390: LdPrVar
  loc_B8D392: LateMemCall
  loc_B8D398: LitVarStr var_94, "<head>"
  loc_B8D39D: PopAdLdVar
  loc_B8D39E: FLdPr Me
  loc_B8D3A1: MemLdRfVar from_stack_1.global_64
  loc_B8D3A4: LdPrVar
  loc_B8D3A6: LateMemCall
  loc_B8D3AC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B8D3B1: PopAdLdVar
  loc_B8D3B2: FLdPr Me
  loc_B8D3B5: MemLdRfVar from_stack_1.global_64
  loc_B8D3B8: LdPrVar
  loc_B8D3BA: LateMemCall
  loc_B8D3C0: LitStr "<title>"
  loc_B8D3C3: FLdRfVar var_A8
  loc_B8D3C6: FLdPr Me
  loc_B8D3C9:  = Me.Caption
  loc_B8D3CE: ILdRf var_A8
  loc_B8D3D1: ConcatStr
  loc_B8D3D2: FStStrNoPop var_AC
  loc_B8D3D5: LitStr "</title>"
  loc_B8D3D8: ConcatStr
  loc_B8D3D9: CVarStr var_BC
  loc_B8D3DC: PopAdLdVar
  loc_B8D3DD: FLdPr Me
  loc_B8D3E0: MemLdRfVar from_stack_1.global_64
  loc_B8D3E3: LdPrVar
  loc_B8D3E5: LateMemCall
  loc_B8D3EB: FFreeStr var_A8 = ""
  loc_B8D3F2: FFree1Var var_BC = ""
  loc_B8D3F5: LitVarStr var_94, "<style type=""text/css"">"
  loc_B8D3FA: PopAdLdVar
  loc_B8D3FB: FLdPr Me
  loc_B8D3FE: MemLdRfVar from_stack_1.global_64
  loc_B8D401: LdPrVar
  loc_B8D403: LateMemCall
  loc_B8D409: LitVarStr var_94, "<!--"
  loc_B8D40E: PopAdLdVar
  loc_B8D40F: FLdPr Me
  loc_B8D412: MemLdRfVar from_stack_1.global_64
  loc_B8D415: LdPrVar
  loc_B8D417: LateMemCall
  loc_B8D41D: LitVarStr var_94, ".Encabezado {"
  loc_B8D422: PopAdLdVar
  loc_B8D423: FLdPr Me
  loc_B8D426: MemLdRfVar from_stack_1.global_64
  loc_B8D429: LdPrVar
  loc_B8D42B: LateMemCall
  loc_B8D431: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B8D436: PopAdLdVar
  loc_B8D437: FLdPr Me
  loc_B8D43A: MemLdRfVar from_stack_1.global_64
  loc_B8D43D: LdPrVar
  loc_B8D43F: LateMemCall
  loc_B8D445: LitVarStr var_94, " font-size: 10px;"
  loc_B8D44A: PopAdLdVar
  loc_B8D44B: FLdPr Me
  loc_B8D44E: MemLdRfVar from_stack_1.global_64
  loc_B8D451: LdPrVar
  loc_B8D453: LateMemCall
  loc_B8D459: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_B8D45E: PopAdLdVar
  loc_B8D45F: FLdPr Me
  loc_B8D462: MemLdRfVar from_stack_1.global_64
  loc_B8D465: LdPrVar
  loc_B8D467: LateMemCall
  loc_B8D46D: LitVarStr var_94, "}"
  loc_B8D472: PopAdLdVar
  loc_B8D473: FLdPr Me
  loc_B8D476: MemLdRfVar from_stack_1.global_64
  loc_B8D479: LdPrVar
  loc_B8D47B: LateMemCall
  loc_B8D481: LitVarStr var_94, ".Normal {"
  loc_B8D486: PopAdLdVar
  loc_B8D487: FLdPr Me
  loc_B8D48A: MemLdRfVar from_stack_1.global_64
  loc_B8D48D: LdPrVar
  loc_B8D48F: LateMemCall
  loc_B8D495: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B8D49A: PopAdLdVar
  loc_B8D49B: FLdPr Me
  loc_B8D49E: MemLdRfVar from_stack_1.global_64
  loc_B8D4A1: LdPrVar
  loc_B8D4A3: LateMemCall
  loc_B8D4A9: LitVarStr var_94, " font-size: 11px;"
  loc_B8D4AE: PopAdLdVar
  loc_B8D4AF: FLdPr Me
  loc_B8D4B2: MemLdRfVar from_stack_1.global_64
  loc_B8D4B5: LdPrVar
  loc_B8D4B7: LateMemCall
  loc_B8D4BD: LitVarStr var_94, " vertical-align: top;"
  loc_B8D4C2: PopAdLdVar
  loc_B8D4C3: FLdPr Me
  loc_B8D4C6: MemLdRfVar from_stack_1.global_64
  loc_B8D4C9: LdPrVar
  loc_B8D4CB: LateMemCall
  loc_B8D4D1: LitVarStr var_94, "}"
  loc_B8D4D6: PopAdLdVar
  loc_B8D4D7: FLdPr Me
  loc_B8D4DA: MemLdRfVar from_stack_1.global_64
  loc_B8D4DD: LdPrVar
  loc_B8D4DF: LateMemCall
  loc_B8D4E5: LitVarStr var_94, ".NormalBloqueFin {"
  loc_B8D4EA: PopAdLdVar
  loc_B8D4EB: FLdPr Me
  loc_B8D4EE: MemLdRfVar from_stack_1.global_64
  loc_B8D4F1: LdPrVar
  loc_B8D4F3: LateMemCall
  loc_B8D4F9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B8D4FE: PopAdLdVar
  loc_B8D4FF: FLdPr Me
  loc_B8D502: MemLdRfVar from_stack_1.global_64
  loc_B8D505: LdPrVar
  loc_B8D507: LateMemCall
  loc_B8D50D: LitVarStr var_94, " font-size: 16px;"
  loc_B8D512: PopAdLdVar
  loc_B8D513: FLdPr Me
  loc_B8D516: MemLdRfVar from_stack_1.global_64
  loc_B8D519: LdPrVar
  loc_B8D51B: LateMemCall
  loc_B8D521: LitVarStr var_94, " vertical-align: top;"
  loc_B8D526: PopAdLdVar
  loc_B8D527: FLdPr Me
  loc_B8D52A: MemLdRfVar from_stack_1.global_64
  loc_B8D52D: LdPrVar
  loc_B8D52F: LateMemCall
  loc_B8D535: LitVarStr var_94, "}"
  loc_B8D53A: PopAdLdVar
  loc_B8D53B: FLdPr Me
  loc_B8D53E: MemLdRfVar from_stack_1.global_64
  loc_B8D541: LdPrVar
  loc_B8D543: LateMemCall
  loc_B8D549: LitVarStr var_94, ".NombreMunicipio {"
  loc_B8D54E: PopAdLdVar
  loc_B8D54F: FLdPr Me
  loc_B8D552: MemLdRfVar from_stack_1.global_64
  loc_B8D555: LdPrVar
  loc_B8D557: LateMemCall
  loc_B8D55D: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B8D562: PopAdLdVar
  loc_B8D563: FLdPr Me
  loc_B8D566: MemLdRfVar from_stack_1.global_64
  loc_B8D569: LdPrVar
  loc_B8D56B: LateMemCall
  loc_B8D571: LitVarStr var_94, " font-size: 14px;"
  loc_B8D576: PopAdLdVar
  loc_B8D577: FLdPr Me
  loc_B8D57A: MemLdRfVar from_stack_1.global_64
  loc_B8D57D: LdPrVar
  loc_B8D57F: LateMemCall
  loc_B8D585: LitVarStr var_94, " font-weight: bold;"
  loc_B8D58A: PopAdLdVar
  loc_B8D58B: FLdPr Me
  loc_B8D58E: MemLdRfVar from_stack_1.global_64
  loc_B8D591: LdPrVar
  loc_B8D593: LateMemCall
  loc_B8D599: LitVarStr var_94, "}"
  loc_B8D59E: PopAdLdVar
  loc_B8D59F: FLdPr Me
  loc_B8D5A2: MemLdRfVar from_stack_1.global_64
  loc_B8D5A5: LdPrVar
  loc_B8D5A7: LateMemCall
  loc_B8D5AD: LitVarStr var_94, ".NombreMunicipioBloqueFin {"
  loc_B8D5B2: PopAdLdVar
  loc_B8D5B3: FLdPr Me
  loc_B8D5B6: MemLdRfVar from_stack_1.global_64
  loc_B8D5B9: LdPrVar
  loc_B8D5BB: LateMemCall
  loc_B8D5C1: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B8D5C6: PopAdLdVar
  loc_B8D5C7: FLdPr Me
  loc_B8D5CA: MemLdRfVar from_stack_1.global_64
  loc_B8D5CD: LdPrVar
  loc_B8D5CF: LateMemCall
  loc_B8D5D5: LitVarStr var_94, " font-size: 10px;"
  loc_B8D5DA: PopAdLdVar
  loc_B8D5DB: FLdPr Me
  loc_B8D5DE: MemLdRfVar from_stack_1.global_64
  loc_B8D5E1: LdPrVar
  loc_B8D5E3: LateMemCall
  loc_B8D5E9: LitVarStr var_94, "}"
  loc_B8D5EE: PopAdLdVar
  loc_B8D5EF: FLdPr Me
  loc_B8D5F2: MemLdRfVar from_stack_1.global_64
  loc_B8D5F5: LdPrVar
  loc_B8D5F7: LateMemCall
  loc_B8D5FD: LitVarStr var_94, ".DatosMunicipio {"
  loc_B8D602: PopAdLdVar
  loc_B8D603: FLdPr Me
  loc_B8D606: MemLdRfVar from_stack_1.global_64
  loc_B8D609: LdPrVar
  loc_B8D60B: LateMemCall
  loc_B8D611: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_B8D616: PopAdLdVar
  loc_B8D617: FLdPr Me
  loc_B8D61A: MemLdRfVar from_stack_1.global_64
  loc_B8D61D: LdPrVar
  loc_B8D61F: LateMemCall
  loc_B8D625: LitVarStr var_94, " font-size: 12px;"
  loc_B8D62A: PopAdLdVar
  loc_B8D62B: FLdPr Me
  loc_B8D62E: MemLdRfVar from_stack_1.global_64
  loc_B8D631: LdPrVar
  loc_B8D633: LateMemCall
  loc_B8D639: LitVarStr var_94, "}"
  loc_B8D63E: PopAdLdVar
  loc_B8D63F: FLdPr Me
  loc_B8D642: MemLdRfVar from_stack_1.global_64
  loc_B8D645: LdPrVar
  loc_B8D647: LateMemCall
  loc_B8D64D: LitVarStr var_94, ".Totales {"
  loc_B8D652: PopAdLdVar
  loc_B8D653: FLdPr Me
  loc_B8D656: MemLdRfVar from_stack_1.global_64
  loc_B8D659: LdPrVar
  loc_B8D65B: LateMemCall
  loc_B8D661: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B8D666: PopAdLdVar
  loc_B8D667: FLdPr Me
  loc_B8D66A: MemLdRfVar from_stack_1.global_64
  loc_B8D66D: LdPrVar
  loc_B8D66F: LateMemCall
  loc_B8D675: LitVarStr var_94, " font-size: 13px;"
  loc_B8D67A: PopAdLdVar
  loc_B8D67B: FLdPr Me
  loc_B8D67E: MemLdRfVar from_stack_1.global_64
  loc_B8D681: LdPrVar
  loc_B8D683: LateMemCall
  loc_B8D689: LitVarStr var_94, " vertical-align: top;"
  loc_B8D68E: PopAdLdVar
  loc_B8D68F: FLdPr Me
  loc_B8D692: MemLdRfVar from_stack_1.global_64
  loc_B8D695: LdPrVar
  loc_B8D697: LateMemCall
  loc_B8D69D: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_B8D6A2: PopAdLdVar
  loc_B8D6A3: FLdPr Me
  loc_B8D6A6: MemLdRfVar from_stack_1.global_64
  loc_B8D6A9: LdPrVar
  loc_B8D6AB: LateMemCall
  loc_B8D6B1: LitVarStr var_94, " font-weight: bold;"
  loc_B8D6B6: PopAdLdVar
  loc_B8D6B7: FLdPr Me
  loc_B8D6BA: MemLdRfVar from_stack_1.global_64
  loc_B8D6BD: LdPrVar
  loc_B8D6BF: LateMemCall
  loc_B8D6C5: LitVarStr var_94, "}"
  loc_B8D6CA: PopAdLdVar
  loc_B8D6CB: FLdPr Me
  loc_B8D6CE: MemLdRfVar from_stack_1.global_64
  loc_B8D6D1: LdPrVar
  loc_B8D6D3: LateMemCall
  loc_B8D6D9: LitVarStr var_94, ".Total {"
  loc_B8D6DE: PopAdLdVar
  loc_B8D6DF: FLdPr Me
  loc_B8D6E2: MemLdRfVar from_stack_1.global_64
  loc_B8D6E5: LdPrVar
  loc_B8D6E7: LateMemCall
  loc_B8D6ED: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B8D6F2: PopAdLdVar
  loc_B8D6F3: FLdPr Me
  loc_B8D6F6: MemLdRfVar from_stack_1.global_64
  loc_B8D6F9: LdPrVar
  loc_B8D6FB: LateMemCall
  loc_B8D701: LitVarStr var_94, " font-size: 14px;"
  loc_B8D706: PopAdLdVar
  loc_B8D707: FLdPr Me
  loc_B8D70A: MemLdRfVar from_stack_1.global_64
  loc_B8D70D: LdPrVar
  loc_B8D70F: LateMemCall
  loc_B8D715: LitVarStr var_94, " vertical-align: top;"
  loc_B8D71A: PopAdLdVar
  loc_B8D71B: FLdPr Me
  loc_B8D71E: MemLdRfVar from_stack_1.global_64
  loc_B8D721: LdPrVar
  loc_B8D723: LateMemCall
  loc_B8D729: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_B8D72E: PopAdLdVar
  loc_B8D72F: FLdPr Me
  loc_B8D732: MemLdRfVar from_stack_1.global_64
  loc_B8D735: LdPrVar
  loc_B8D737: LateMemCall
  loc_B8D73D: LitVarStr var_94, " font-weight: bold;"
  loc_B8D742: PopAdLdVar
  loc_B8D743: FLdPr Me
  loc_B8D746: MemLdRfVar from_stack_1.global_64
  loc_B8D749: LdPrVar
  loc_B8D74B: LateMemCall
  loc_B8D751: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B8D756: PopAdLdVar
  loc_B8D757: FLdPr Me
  loc_B8D75A: MemLdRfVar from_stack_1.global_64
  loc_B8D75D: LdPrVar
  loc_B8D75F: LateMemCall
  loc_B8D765: LitVarStr var_94, "}"
  loc_B8D76A: PopAdLdVar
  loc_B8D76B: FLdPr Me
  loc_B8D76E: MemLdRfVar from_stack_1.global_64
  loc_B8D771: LdPrVar
  loc_B8D773: LateMemCall
  loc_B8D779: LitVarStr var_94, ".Vencimiento {"
  loc_B8D77E: PopAdLdVar
  loc_B8D77F: FLdPr Me
  loc_B8D782: MemLdRfVar from_stack_1.global_64
  loc_B8D785: LdPrVar
  loc_B8D787: LateMemCall
  loc_B8D78D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B8D792: PopAdLdVar
  loc_B8D793: FLdPr Me
  loc_B8D796: MemLdRfVar from_stack_1.global_64
  loc_B8D799: LdPrVar
  loc_B8D79B: LateMemCall
  loc_B8D7A1: LitVarStr var_94, " font-size: 16px;"
  loc_B8D7A6: PopAdLdVar
  loc_B8D7A7: FLdPr Me
  loc_B8D7AA: MemLdRfVar from_stack_1.global_64
  loc_B8D7AD: LdPrVar
  loc_B8D7AF: LateMemCall
  loc_B8D7B5: LitVarStr var_94, " vertical-align: top;"
  loc_B8D7BA: PopAdLdVar
  loc_B8D7BB: FLdPr Me
  loc_B8D7BE: MemLdRfVar from_stack_1.global_64
  loc_B8D7C1: LdPrVar
  loc_B8D7C3: LateMemCall
  loc_B8D7C9: LitVarStr var_94, " font-weight: bold;"
  loc_B8D7CE: PopAdLdVar
  loc_B8D7CF: FLdPr Me
  loc_B8D7D2: MemLdRfVar from_stack_1.global_64
  loc_B8D7D5: LdPrVar
  loc_B8D7D7: LateMemCall
  loc_B8D7DD: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B8D7E2: PopAdLdVar
  loc_B8D7E3: FLdPr Me
  loc_B8D7E6: MemLdRfVar from_stack_1.global_64
  loc_B8D7E9: LdPrVar
  loc_B8D7EB: LateMemCall
  loc_B8D7F1: LitVarStr var_94, "}"
  loc_B8D7F6: PopAdLdVar
  loc_B8D7F7: FLdPr Me
  loc_B8D7FA: MemLdRfVar from_stack_1.global_64
  loc_B8D7FD: LdPrVar
  loc_B8D7FF: LateMemCall
  loc_B8D805: LitVarStr var_94, ".Resaltado {"
  loc_B8D80A: PopAdLdVar
  loc_B8D80B: FLdPr Me
  loc_B8D80E: MemLdRfVar from_stack_1.global_64
  loc_B8D811: LdPrVar
  loc_B8D813: LateMemCall
  loc_B8D819: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_B8D81E: PopAdLdVar
  loc_B8D81F: FLdPr Me
  loc_B8D822: MemLdRfVar from_stack_1.global_64
  loc_B8D825: LdPrVar
  loc_B8D827: LateMemCall
  loc_B8D82D: LitVarStr var_94, " font-size: 11px;"
  loc_B8D832: PopAdLdVar
  loc_B8D833: FLdPr Me
  loc_B8D836: MemLdRfVar from_stack_1.global_64
  loc_B8D839: LdPrVar
  loc_B8D83B: LateMemCall
  loc_B8D841: LitVarStr var_94, " vertical-align: top;"
  loc_B8D846: PopAdLdVar
  loc_B8D847: FLdPr Me
  loc_B8D84A: MemLdRfVar from_stack_1.global_64
  loc_B8D84D: LdPrVar
  loc_B8D84F: LateMemCall
  loc_B8D855: LitVarStr var_94, " font-weight: bold;"
  loc_B8D85A: PopAdLdVar
  loc_B8D85B: FLdPr Me
  loc_B8D85E: MemLdRfVar from_stack_1.global_64
  loc_B8D861: LdPrVar
  loc_B8D863: LateMemCall
  loc_B8D869: LitVarStr var_94, " border: 1px solid #000000;"
  loc_B8D86E: PopAdLdVar
  loc_B8D86F: FLdPr Me
  loc_B8D872: MemLdRfVar from_stack_1.global_64
  loc_B8D875: LdPrVar
  loc_B8D877: LateMemCall
  loc_B8D87D: LitVarStr var_94, "}"
  loc_B8D882: PopAdLdVar
  loc_B8D883: FLdPr Me
  loc_B8D886: MemLdRfVar from_stack_1.global_64
  loc_B8D889: LdPrVar
  loc_B8D88B: LateMemCall
  loc_B8D891: LitVarStr var_94, "-->"
  loc_B8D896: PopAdLdVar
  loc_B8D897: FLdPr Me
  loc_B8D89A: MemLdRfVar from_stack_1.global_64
  loc_B8D89D: LdPrVar
  loc_B8D89F: LateMemCall
  loc_B8D8A5: LitVarStr var_94, "</style>"
  loc_B8D8AA: PopAdLdVar
  loc_B8D8AB: FLdPr Me
  loc_B8D8AE: MemLdRfVar from_stack_1.global_64
  loc_B8D8B1: LdPrVar
  loc_B8D8B3: LateMemCall
  loc_B8D8B9: LitI4 0
  loc_B8D8BE: FStStrCopy var_AC
  loc_B8D8C1: FLdRfVar var_AC
  loc_B8D8C4: LitI4 0
  loc_B8D8C9: FStStrCopy var_A8
  loc_B8D8CC: FLdRfVar var_A8
  loc_B8D8CF: LitI2_Byte 0
  loc_B8D8D1: PopTmpLdAd2 var_BE
  loc_B8D8D4: FLdPr Me
  loc_B8D8D7: MemLdRfVar from_stack_1.global_64
  loc_B8D8DA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B8D8DF: FFreeStr var_A8 = ""
  loc_B8D8E6: ExitProcHresult
End Function

Private Function Proc_109_26_B2CD00() 'B2CD00
  'Data Table: 4B3968
  loc_B2CA34: LitVarStr var_94, "<table height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_B2CA39: PopAdLdVar
  loc_B2CA3A: FLdPr Me
  loc_B2CA3D: MemLdRfVar from_stack_1.global_64
  loc_B2CA40: LdPrVar
  loc_B2CA42: LateMemCall
  loc_B2CA48: LitVarStr var_94, "  <tr valign=""top""><td>"
  loc_B2CA4D: PopAdLdVar
  loc_B2CA4E: FLdPr Me
  loc_B2CA51: MemLdRfVar from_stack_1.global_64
  loc_B2CA54: LdPrVar
  loc_B2CA56: LateMemCall
  loc_B2CA5C: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_B2CA61: PopAdLdVar
  loc_B2CA62: FLdPr Me
  loc_B2CA65: MemLdRfVar from_stack_1.global_64
  loc_B2CA68: LdPrVar
  loc_B2CA6A: LateMemCall
  loc_B2CA70: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B2CA75: PopAdLdVar
  loc_B2CA76: FLdPr Me
  loc_B2CA79: MemLdRfVar from_stack_1.global_64
  loc_B2CA7C: LdPrVar
  loc_B2CA7E: LateMemCall
  loc_B2CA84: LitStr "Municipalidad de Guaymallén"
  loc_B2CA87: FStStrCopy var_A8
  loc_B2CA8A: ILdRf var_A8
  loc_B2CA8D: LitStr "Municipalidad de Malargüe"
  loc_B2CA90: EqStr
  loc_B2CA92: BranchF loc_B2CAF0
  loc_B2CA95: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B2CA98: LitI2_Byte &H5F
  loc_B2CA9A: CStrUI1
  loc_B2CA9C: FStStrNoPop var_AC
  loc_B2CA9F: ConcatStr
  loc_B2CAA0: FStStrNoPop var_B0
  loc_B2CAA3: LitStr """ height="""
  loc_B2CAA6: ConcatStr
  loc_B2CAA7: FStStrNoPop var_B4
  loc_B2CAAA: LitI2_Byte &H3C
  loc_B2CAAC: CStrUI1
  loc_B2CAAE: FStStrNoPop var_B8
  loc_B2CAB1: ConcatStr
  loc_B2CAB2: FStStrNoPop var_BC
  loc_B2CAB5: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width=""49"" height=""51"" align=""right"" /><span class=""NombreMunicipio"">"
  loc_B2CAB8: ConcatStr
  loc_B2CAB9: FStStrNoPop var_C0
  loc_B2CABC: LitStr "Municipalidad de Guaymallén"
  loc_B2CABF: ConcatStr
  loc_B2CAC0: FStStrNoPop var_C4
  loc_B2CAC3: LitStr "</span><br />"
  loc_B2CAC6: ConcatStr
  loc_B2CAC7: CVarStr var_D4
  loc_B2CACA: PopAdLdVar
  loc_B2CACB: FLdPr Me
  loc_B2CACE: MemLdRfVar from_stack_1.global_64
  loc_B2CAD1: LdPrVar
  loc_B2CAD3: LateMemCall
  loc_B2CAD9: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B2CAEA: FFree1Var var_D4 = ""
  loc_B2CAED: Branch loc_B2CC1F
  loc_B2CAF0: ILdRf var_A8
  loc_B2CAF3: LitStr "Municipalidad de San Carlos"
  loc_B2CAF6: EqStr
  loc_B2CAF8: BranchF loc_B2CB56
  loc_B2CAFB: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B2CAFE: LitI2_Byte &H5F
  loc_B2CB00: CStrUI1
  loc_B2CB02: FStStrNoPop var_AC
  loc_B2CB05: ConcatStr
  loc_B2CB06: FStStrNoPop var_B0
  loc_B2CB09: LitStr """ height="""
  loc_B2CB0C: ConcatStr
  loc_B2CB0D: FStStrNoPop var_B4
  loc_B2CB10: LitI2_Byte &H3C
  loc_B2CB12: CStrUI1
  loc_B2CB14: FStStrNoPop var_B8
  loc_B2CB17: ConcatStr
  loc_B2CB18: FStStrNoPop var_BC
  loc_B2CB1B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width=""65"" height=""51"" align=""right"" /><span class=""NombreMunicipio"">"
  loc_B2CB1E: ConcatStr
  loc_B2CB1F: FStStrNoPop var_C0
  loc_B2CB22: LitStr "Municipalidad de Guaymallén"
  loc_B2CB25: ConcatStr
  loc_B2CB26: FStStrNoPop var_C4
  loc_B2CB29: LitStr "</span><br />"
  loc_B2CB2C: ConcatStr
  loc_B2CB2D: CVarStr var_D4
  loc_B2CB30: PopAdLdVar
  loc_B2CB31: FLdPr Me
  loc_B2CB34: MemLdRfVar from_stack_1.global_64
  loc_B2CB37: LdPrVar
  loc_B2CB39: LateMemCall
  loc_B2CB3F: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B2CB50: FFree1Var var_D4 = ""
  loc_B2CB53: Branch loc_B2CC1F
  loc_B2CB56: ILdRf var_A8
  loc_B2CB59: LitStr "Municipalidad de Lavalle"
  loc_B2CB5C: EqStr
  loc_B2CB5E: BranchF loc_B2CBBC
  loc_B2CB61: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B2CB64: LitI2_Byte &H5F
  loc_B2CB66: CStrUI1
  loc_B2CB68: FStStrNoPop var_AC
  loc_B2CB6B: ConcatStr
  loc_B2CB6C: FStStrNoPop var_B0
  loc_B2CB6F: LitStr """ height="""
  loc_B2CB72: ConcatStr
  loc_B2CB73: FStStrNoPop var_B4
  loc_B2CB76: LitI2_Byte &H3C
  loc_B2CB78: CStrUI1
  loc_B2CB7A: FStStrNoPop var_B8
  loc_B2CB7D: ConcatStr
  loc_B2CB7E: FStStrNoPop var_BC
  loc_B2CB81: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width=""114"" height=""51"" align=""right"" /><span class=""NombreMunicipio"">"
  loc_B2CB84: ConcatStr
  loc_B2CB85: FStStrNoPop var_C0
  loc_B2CB88: LitStr "Municipalidad de Guaymallén"
  loc_B2CB8B: ConcatStr
  loc_B2CB8C: FStStrNoPop var_C4
  loc_B2CB8F: LitStr "</span><br />"
  loc_B2CB92: ConcatStr
  loc_B2CB93: CVarStr var_D4
  loc_B2CB96: PopAdLdVar
  loc_B2CB97: FLdPr Me
  loc_B2CB9A: MemLdRfVar from_stack_1.global_64
  loc_B2CB9D: LdPrVar
  loc_B2CB9F: LateMemCall
  loc_B2CBA5: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B2CBB6: FFree1Var var_D4 = ""
  loc_B2CBB9: Branch loc_B2CC1F
  loc_B2CBBC: ILdRf var_A8
  loc_B2CBBF: LitStr "Municipalidad de Rivadavia"
  loc_B2CBC2: EqStr
  loc_B2CBC4: BranchF loc_B2CC1F
  loc_B2CBC7: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B2CBCA: LitI2_Byte &H5F
  loc_B2CBCC: CStrUI1
  loc_B2CBCE: FStStrNoPop var_AC
  loc_B2CBD1: ConcatStr
  loc_B2CBD2: FStStrNoPop var_B0
  loc_B2CBD5: LitStr """ height="""
  loc_B2CBD8: ConcatStr
  loc_B2CBD9: FStStrNoPop var_B4
  loc_B2CBDC: LitI2_Byte &H3C
  loc_B2CBDE: CStrUI1
  loc_B2CBE0: FStStrNoPop var_B8
  loc_B2CBE3: ConcatStr
  loc_B2CBE4: FStStrNoPop var_BC
  loc_B2CBE7: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width=""65"" height=""51"" align=""right"" /><span class=""NombreMunicipio"">"
  loc_B2CBEA: ConcatStr
  loc_B2CBEB: FStStrNoPop var_C0
  loc_B2CBEE: LitStr "Municipalidad de Guaymallén"
  loc_B2CBF1: ConcatStr
  loc_B2CBF2: FStStrNoPop var_C4
  loc_B2CBF5: LitStr "</span><br />"
  loc_B2CBF8: ConcatStr
  loc_B2CBF9: CVarStr var_D4
  loc_B2CBFC: PopAdLdVar
  loc_B2CBFD: FLdPr Me
  loc_B2CC00: MemLdRfVar from_stack_1.global_64
  loc_B2CC03: LdPrVar
  loc_B2CC05: LateMemCall
  loc_B2CC0B: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = ""
  loc_B2CC1C: FFree1Var var_D4 = ""
  loc_B2CC1F: LitStr "    "
  loc_B2CC22: LitStr "Dirección de Rentas"
  loc_B2CC25: ConcatStr
  loc_B2CC26: FStStrNoPop var_AC
  loc_B2CC29: LitStr "<br>"
  loc_B2CC2C: ConcatStr
  loc_B2CC2D: CVarStr var_D4
  loc_B2CC30: PopAdLdVar
  loc_B2CC31: FLdPr Me
  loc_B2CC34: MemLdRfVar from_stack_1.global_64
  loc_B2CC37: LdPrVar
  loc_B2CC39: LateMemCall
  loc_B2CC3F: FFree1Str var_AC
  loc_B2CC42: FFree1Var var_D4 = ""
  loc_B2CC45: LitStr "    "
  loc_B2CC48: LitStr "Libertad 720 - Villa Nueva"
  loc_B2CC4B: ConcatStr
  loc_B2CC4C: FStStrNoPop var_AC
  loc_B2CC4F: LitStr "<br>"
  loc_B2CC52: ConcatStr
  loc_B2CC53: CVarStr var_D4
  loc_B2CC56: PopAdLdVar
  loc_B2CC57: FLdPr Me
  loc_B2CC5A: MemLdRfVar from_stack_1.global_64
  loc_B2CC5D: LdPrVar
  loc_B2CC5F: LateMemCall
  loc_B2CC65: FFree1Str var_AC
  loc_B2CC68: FFree1Var var_D4 = ""
  loc_B2CC6B: LitStr "    "
  loc_B2CC6E: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_B2CC71: ConcatStr
  loc_B2CC72: FStStrNoPop var_AC
  loc_B2CC75: LitStr "<br>"
  loc_B2CC78: ConcatStr
  loc_B2CC79: CVarStr var_D4
  loc_B2CC7C: PopAdLdVar
  loc_B2CC7D: FLdPr Me
  loc_B2CC80: MemLdRfVar from_stack_1.global_64
  loc_B2CC83: LdPrVar
  loc_B2CC85: LateMemCall
  loc_B2CC8B: FFree1Str var_AC
  loc_B2CC8E: FFree1Var var_D4 = ""
  loc_B2CC91: LitStr "    "
  loc_B2CC94: LitStr "C.U.I.T.: "
  loc_B2CC97: ConcatStr
  loc_B2CC98: FStStrNoPop var_AC
  loc_B2CC9B: LitStr "30-99914707-7"
  loc_B2CC9E: ConcatStr
  loc_B2CC9F: FStStrNoPop var_B0
  loc_B2CCA2: LitStr "<br>"
  loc_B2CCA5: ConcatStr
  loc_B2CCA6: CVarStr var_D4
  loc_B2CCA9: PopAdLdVar
  loc_B2CCAA: FLdPr Me
  loc_B2CCAD: MemLdRfVar from_stack_1.global_64
  loc_B2CCB0: LdPrVar
  loc_B2CCB2: LateMemCall
  loc_B2CCB8: FFreeStr var_AC = ""
  loc_B2CCBF: FFree1Var var_D4 = ""
  loc_B2CCC2: LitStr " <div align=""right""><em>"
  loc_B2CCC5: LitStr "&nbsp;"
  loc_B2CCC8: ConcatStr
  loc_B2CCC9: FStStrNoPop var_AC
  loc_B2CCCC: LitStr "</em></div></td>"
  loc_B2CCCF: ConcatStr
  loc_B2CCD0: CVarStr var_D4
  loc_B2CCD3: PopAdLdVar
  loc_B2CCD4: FLdPr Me
  loc_B2CCD7: MemLdRfVar from_stack_1.global_64
  loc_B2CCDA: LdPrVar
  loc_B2CCDC: LateMemCall
  loc_B2CCE2: FFree1Str var_AC
  loc_B2CCE5: FFree1Var var_D4 = ""
  loc_B2CCE8: LitVarStr var_94, "  </tr>"
  loc_B2CCED: PopAdLdVar
  loc_B2CCEE: FLdPr Me
  loc_B2CCF1: MemLdRfVar from_stack_1.global_64
  loc_B2CCF4: LdPrVar
  loc_B2CCF6: LateMemCall
  loc_B2CCFC: ExitProcHresult
  loc_B2CCFD: StAryRecMove
End Function

Private Function Proc_109_27_B4ABC0() 'B4ABC0
  'Data Table: 4B3968
  loc_B4A84C: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B4A851: PopAdLdVar
  loc_B4A852: FLdPr Me
  loc_B4A855: MemLdRfVar from_stack_1.global_64
  loc_B4A858: LdPrVar
  loc_B4A85A: LateMemCall
  loc_B4A860: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B4A865: PopAdLdVar
  loc_B4A866: FLdPr Me
  loc_B4A869: MemLdRfVar from_stack_1.global_64
  loc_B4A86C: LdPrVar
  loc_B4A86E: LateMemCall
  loc_B4A874: LitVarStr var_94, "    <td><strong>ANTICIPO DE TASAS - INMUEBLE</strong></td>"
  loc_B4A879: PopAdLdVar
  loc_B4A87A: FLdPr Me
  loc_B4A87D: MemLdRfVar from_stack_1.global_64
  loc_B4A880: LdPrVar
  loc_B4A882: LateMemCall
  loc_B4A888: LitVarStr var_94, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B4A88D: PopAdLdVar
  loc_B4A88E: FLdPr Me
  loc_B4A891: MemLdRfVar from_stack_1.global_64
  loc_B4A894: LdPrVar
  loc_B4A896: LateMemCall
  loc_B4A89C: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B4A89F: FLdPr Me
  loc_B4A8A2: VCallAd Control_ID_PeriBoleMsk
  loc_B4A8A5: FStAdFunc var_A8
  loc_B4A8A8: FLdPr var_A8
  loc_B4A8AB: LateIdLdVar var_B8 DispID_0 0
  loc_B4A8B2: CStrVarTmp
  loc_B4A8B3: FStStrNoPop var_BC
  loc_B4A8B6: ConcatStr
  loc_B4A8B7: FStStrNoPop var_C0
  loc_B4A8BA: LitStr "/"
  loc_B4A8BD: ConcatStr
  loc_B4A8BE: FStStrNoPop var_D8
  loc_B4A8C1: FLdPr Me
  loc_B4A8C4: VCallAd Control_ID_NumeBoleMsk
  loc_B4A8C7: FStAdFunc var_C4
  loc_B4A8CA: FLdPr var_C4
  loc_B4A8CD: LateIdLdVar var_D4 DispID_0 0
  loc_B4A8D4: CStrVarTmp
  loc_B4A8D5: FStStrNoPop var_DC
  loc_B4A8D8: ConcatStr
  loc_B4A8D9: FStStrNoPop var_E0
  loc_B4A8DC: LitStr "</strong></td>"
  loc_B4A8DF: ConcatStr
  loc_B4A8E0: CVarStr var_F0
  loc_B4A8E3: PopAdLdVar
  loc_B4A8E4: FLdPr Me
  loc_B4A8E7: MemLdRfVar from_stack_1.global_64
  loc_B4A8EA: LdPrVar
  loc_B4A8EC: LateMemCall
  loc_B4A8F2: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = ""
  loc_B4A8FF: FFreeAd var_A8 = ""
  loc_B4A906: FFreeVar var_B8 = "": var_D4 = ""
  loc_B4A90F: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B4A914: PopAdLdVar
  loc_B4A915: FLdPr Me
  loc_B4A918: MemLdRfVar from_stack_1.global_64
  loc_B4A91B: LdPrVar
  loc_B4A91D: LateMemCall
  loc_B4A923: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B4A926: LitI4 1
  loc_B4A92B: FLdPr Me
  loc_B4A92E: MemLdStr global_88
  loc_B4A931: Ary1LdPr
  loc_B4A932: MemLdStr global_108
  loc_B4A935: ConcatStr
  loc_B4A936: FStStrNoPop var_BC
  loc_B4A939: LitStr "</strong></td>"
  loc_B4A93C: ConcatStr
  loc_B4A93D: CVarStr var_B8
  loc_B4A940: PopAdLdVar
  loc_B4A941: FLdPr Me
  loc_B4A944: MemLdRfVar from_stack_1.global_64
  loc_B4A947: LdPrVar
  loc_B4A949: LateMemCall
  loc_B4A94F: FFree1Str var_BC
  loc_B4A952: FFree1Var var_B8 = ""
  loc_B4A955: LitVarStr var_94, "  </tr>"
  loc_B4A95A: PopAdLdVar
  loc_B4A95B: FLdPr Me
  loc_B4A95E: MemLdRfVar from_stack_1.global_64
  loc_B4A961: LdPrVar
  loc_B4A963: LateMemCall
  loc_B4A969: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B4A96E: PopAdLdVar
  loc_B4A96F: FLdPr Me
  loc_B4A972: MemLdRfVar from_stack_1.global_64
  loc_B4A975: LdPrVar
  loc_B4A977: LateMemCall
  loc_B4A97D: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B4A982: PopAdLdVar
  loc_B4A983: FLdPr Me
  loc_B4A986: MemLdRfVar from_stack_1.global_64
  loc_B4A989: LdPrVar
  loc_B4A98B: LateMemCall
  loc_B4A991: LitStr "    <td><strong>"
  loc_B4A994: LitI4 1
  loc_B4A999: FLdPr Me
  loc_B4A99C: MemLdStr global_88
  loc_B4A99F: Ary1LdPr
  loc_B4A9A0: MemLdStr global_4
  loc_B4A9A3: ConcatStr
  loc_B4A9A4: FStStrNoPop var_BC
  loc_B4A9A7: LitStr " "
  loc_B4A9AA: ConcatStr
  loc_B4A9AB: FStStrNoPop var_C0
  loc_B4A9AE: LitI4 1
  loc_B4A9B3: FLdPr Me
  loc_B4A9B6: MemLdStr global_88
  loc_B4A9B9: Ary1LdPr
  loc_B4A9BA: MemLdStr global_0
  loc_B4A9BD: ConcatStr
  loc_B4A9BE: FStStrNoPop var_D8
  loc_B4A9C1: LitStr "<br>"
  loc_B4A9C4: ConcatStr
  loc_B4A9C5: CVarStr var_B8
  loc_B4A9C8: PopAdLdVar
  loc_B4A9C9: FLdPr Me
  loc_B4A9CC: MemLdRfVar from_stack_1.global_64
  loc_B4A9CF: LdPrVar
  loc_B4A9D1: LateMemCall
  loc_B4A9D7: FFreeStr var_BC = "": var_C0 = ""
  loc_B4A9E0: FFree1Var var_B8 = ""
  loc_B4A9E3: LitI4 1
  loc_B4A9E8: FLdPr Me
  loc_B4A9EB: MemLdStr global_88
  loc_B4A9EE: Ary1LdPr
  loc_B4A9EF: MemLdStr global_40
  loc_B4A9F2: LitStr vbNullString
  loc_B4A9F5: NeStr
  loc_B4A9F7: BranchF loc_B4AA2C
  loc_B4A9FA: LitStr "      Vínculo: "
  loc_B4A9FD: LitI4 1
  loc_B4AA02: FLdPr Me
  loc_B4AA05: MemLdStr global_88
  loc_B4AA08: Ary1LdPr
  loc_B4AA09: MemLdStr global_40
  loc_B4AA0C: ConcatStr
  loc_B4AA0D: FStStrNoPop var_BC
  loc_B4AA10: LitStr "<br>"
  loc_B4AA13: ConcatStr
  loc_B4AA14: CVarStr var_B8
  loc_B4AA17: PopAdLdVar
  loc_B4AA18: FLdPr Me
  loc_B4AA1B: MemLdRfVar from_stack_1.global_64
  loc_B4AA1E: LdPrVar
  loc_B4AA20: LateMemCall
  loc_B4AA26: FFree1Str var_BC
  loc_B4AA29: FFree1Var var_B8 = ""
  loc_B4AA2C: LitStr "      "
  loc_B4AA2F: LitI4 1
  loc_B4AA34: FLdPr Me
  loc_B4AA37: MemLdStr global_88
  loc_B4AA3A: Ary1LdPr
  loc_B4AA3B: MemLdStr global_8
  loc_B4AA3E: ConcatStr
  loc_B4AA3F: FStStrNoPop var_BC
  loc_B4AA42: LitStr " "
  loc_B4AA45: ConcatStr
  loc_B4AA46: FStStrNoPop var_C0
  loc_B4AA49: LitI4 1
  loc_B4AA4E: FLdPr Me
  loc_B4AA51: MemLdStr global_88
  loc_B4AA54: Ary1LdPr
  loc_B4AA55: MemLdStr global_12
  loc_B4AA58: ConcatStr
  loc_B4AA59: FStStrNoPop var_D8
  loc_B4AA5C: LitStr "<br>"
  loc_B4AA5F: ConcatStr
  loc_B4AA60: FStStrNoPop var_DC
  loc_B4AA63: LitI4 1
  loc_B4AA68: FLdPr Me
  loc_B4AA6B: MemLdStr global_88
  loc_B4AA6E: Ary1LdPr
  loc_B4AA6F: MemLdStr global_28
  loc_B4AA72: ConcatStr
  loc_B4AA73: FStStrNoPop var_E0
  loc_B4AA76: LitStr " ("
  loc_B4AA79: ConcatStr
  loc_B4AA7A: FStStrNoPop var_F4
  loc_B4AA7D: LitI4 1
  loc_B4AA82: FLdPr Me
  loc_B4AA85: MemLdStr global_88
  loc_B4AA88: Ary1LdPr
  loc_B4AA89: MemLdStr global_32
  loc_B4AA8C: ConcatStr
  loc_B4AA8D: FStStrNoPop var_F8
  loc_B4AA90: LitStr ")</strong></td>"
  loc_B4AA93: ConcatStr
  loc_B4AA94: CVarStr var_B8
  loc_B4AA97: PopAdLdVar
  loc_B4AA98: FLdPr Me
  loc_B4AA9B: MemLdRfVar from_stack_1.global_64
  loc_B4AA9E: LdPrVar
  loc_B4AAA0: LateMemCall
  loc_B4AAA6: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = ""
  loc_B4AAB7: FFree1Var var_B8 = ""
  loc_B4AABA: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B4AABF: PopAdLdVar
  loc_B4AAC0: FLdPr Me
  loc_B4AAC3: MemLdRfVar from_stack_1.global_64
  loc_B4AAC6: LdPrVar
  loc_B4AAC8: LateMemCall
  loc_B4AACE: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong>"
  loc_B4AAD1: LitI4 1
  loc_B4AAD6: FLdPr Me
  loc_B4AAD9: MemLdStr global_88
  loc_B4AADC: Ary1LdPr
  loc_B4AADD: MemLdStr global_36
  loc_B4AAE0: ConcatStr
  loc_B4AAE1: FStStrNoPop var_BC
  loc_B4AAE4: LitStr "</strong><br>"
  loc_B4AAE7: ConcatStr
  loc_B4AAE8: CVarStr var_B8
  loc_B4AAEB: PopAdLdVar
  loc_B4AAEC: FLdPr Me
  loc_B4AAEF: MemLdRfVar from_stack_1.global_64
  loc_B4AAF2: LdPrVar
  loc_B4AAF4: LateMemCall
  loc_B4AAFA: FFree1Str var_BC
  loc_B4AAFD: FFree1Var var_B8 = ""
  loc_B4AB00: LitStr "                                NOMENCLATURA: <strong>"
  loc_B4AB03: LitI4 1
  loc_B4AB08: FLdPr Me
  loc_B4AB0B: MemLdStr global_88
  loc_B4AB0E: Ary1LdPr
  loc_B4AB0F: MemLdStr global_48
  loc_B4AB12: ConcatStr
  loc_B4AB13: FStStrNoPop var_BC
  loc_B4AB16: LitStr "</strong><br>"
  loc_B4AB19: ConcatStr
  loc_B4AB1A: CVarStr var_B8
  loc_B4AB1D: PopAdLdVar
  loc_B4AB1E: FLdPr Me
  loc_B4AB21: MemLdRfVar from_stack_1.global_64
  loc_B4AB24: LdPrVar
  loc_B4AB26: LateMemCall
  loc_B4AB2C: FFree1Str var_BC
  loc_B4AB2F: FFree1Var var_B8 = ""
  loc_B4AB32: LitStr "                                SUP. TERRENO: <strong>"
  loc_B4AB35: LitI4 1
  loc_B4AB3A: FLdPr Me
  loc_B4AB3D: MemLdStr global_88
  loc_B4AB40: Ary1LdPr
  loc_B4AB41: MemLdStr global_44
  loc_B4AB44: ConcatStr
  loc_B4AB45: FStStrNoPop var_BC
  loc_B4AB48: LitStr " m<sup>2</sup></strong><br>"
  loc_B4AB4B: ConcatStr
  loc_B4AB4C: CVarStr var_B8
  loc_B4AB4F: PopAdLdVar
  loc_B4AB50: FLdPr Me
  loc_B4AB53: MemLdRfVar from_stack_1.global_64
  loc_B4AB56: LdPrVar
  loc_B4AB58: LateMemCall
  loc_B4AB5E: FFree1Str var_BC
  loc_B4AB61: FFree1Var var_B8 = ""
  loc_B4AB64: LitStr "          ZONA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <strong>"
  loc_B4AB67: LitI4 1
  loc_B4AB6C: FLdPr Me
  loc_B4AB6F: MemLdStr global_88
  loc_B4AB72: Ary1LdPr
  loc_B4AB73: MemLdStr DetaDeva
  loc_B4AB76: ConcatStr
  loc_B4AB77: FStStrNoPop var_BC
  loc_B4AB7A: LitStr "</strong></td>"
  loc_B4AB7D: ConcatStr
  loc_B4AB7E: CVarStr var_B8
  loc_B4AB81: PopAdLdVar
  loc_B4AB82: FLdPr Me
  loc_B4AB85: MemLdRfVar from_stack_1.global_64
  loc_B4AB88: LdPrVar
  loc_B4AB8A: LateMemCall
  loc_B4AB90: FFree1Str var_BC
  loc_B4AB93: FFree1Var var_B8 = ""
  loc_B4AB96: LitVarStr var_94, "  </tr>"
  loc_B4AB9B: PopAdLdVar
  loc_B4AB9C: FLdPr Me
  loc_B4AB9F: MemLdRfVar from_stack_1.global_64
  loc_B4ABA2: LdPrVar
  loc_B4ABA4: LateMemCall
  loc_B4ABAA: LitVarStr var_94, "</table>"
  loc_B4ABAF: PopAdLdVar
  loc_B4ABB0: FLdPr Me
  loc_B4ABB3: MemLdRfVar from_stack_1.global_64
  loc_B4ABB6: LdPrVar
  loc_B4ABB8: LateMemCall
  loc_B4ABBE: ExitProcHresult
End Function

Private Function Proc_109_28_B33960() 'B33960
  'Data Table: 4B3968
  loc_B33680: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B33685: PopAdLdVar
  loc_B33686: FLdPr Me
  loc_B33689: MemLdRfVar from_stack_1.global_64
  loc_B3368C: LdPrVar
  loc_B3368E: LateMemCall
  loc_B33694: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B33699: PopAdLdVar
  loc_B3369A: FLdPr Me
  loc_B3369D: MemLdRfVar from_stack_1.global_64
  loc_B336A0: LdPrVar
  loc_B336A2: LateMemCall
  loc_B336A8: LitVarStr var_94, "    <td><strong>EMISI&Oacute;N DE DEUDA - COMERCIO</strong></td>"
  loc_B336AD: PopAdLdVar
  loc_B336AE: FLdPr Me
  loc_B336B1: MemLdRfVar from_stack_1.global_64
  loc_B336B4: LdPrVar
  loc_B336B6: LateMemCall
  loc_B336BC: LitVarStr var_94, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B336C1: PopAdLdVar
  loc_B336C2: FLdPr Me
  loc_B336C5: MemLdRfVar from_stack_1.global_64
  loc_B336C8: LdPrVar
  loc_B336CA: LateMemCall
  loc_B336D0: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B336D3: FLdPr Me
  loc_B336D6: VCallAd Control_ID_PeriBoleMsk
  loc_B336D9: FStAdFunc var_A8
  loc_B336DC: FLdPr var_A8
  loc_B336DF: LateIdLdVar var_B8 DispID_0 0
  loc_B336E6: CStrVarTmp
  loc_B336E7: FStStrNoPop var_BC
  loc_B336EA: ConcatStr
  loc_B336EB: FStStrNoPop var_C0
  loc_B336EE: LitStr "/"
  loc_B336F1: ConcatStr
  loc_B336F2: FStStrNoPop var_D8
  loc_B336F5: FLdPr Me
  loc_B336F8: VCallAd Control_ID_NumeBoleMsk
  loc_B336FB: FStAdFunc var_C4
  loc_B336FE: FLdPr var_C4
  loc_B33701: LateIdLdVar var_D4 DispID_0 0
  loc_B33708: CStrVarTmp
  loc_B33709: FStStrNoPop var_DC
  loc_B3370C: ConcatStr
  loc_B3370D: FStStrNoPop var_E0
  loc_B33710: LitStr "</strong></td>"
  loc_B33713: ConcatStr
  loc_B33714: CVarStr var_F0
  loc_B33717: PopAdLdVar
  loc_B33718: FLdPr Me
  loc_B3371B: MemLdRfVar from_stack_1.global_64
  loc_B3371E: LdPrVar
  loc_B33720: LateMemCall
  loc_B33726: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = ""
  loc_B33733: FFreeAd var_A8 = ""
  loc_B3373A: FFreeVar var_B8 = "": var_D4 = ""
  loc_B33743: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B33748: PopAdLdVar
  loc_B33749: FLdPr Me
  loc_B3374C: MemLdRfVar from_stack_1.global_64
  loc_B3374F: LdPrVar
  loc_B33751: LateMemCall
  loc_B33757: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B3375A: LitI4 1
  loc_B3375F: FLdPr Me
  loc_B33762: MemLdStr global_88
  loc_B33765: Ary1LdPr
  loc_B33766: MemLdStr global_108
  loc_B33769: ConcatStr
  loc_B3376A: FStStrNoPop var_BC
  loc_B3376D: LitStr "</strong></td>"
  loc_B33770: ConcatStr
  loc_B33771: CVarStr var_B8
  loc_B33774: PopAdLdVar
  loc_B33775: FLdPr Me
  loc_B33778: MemLdRfVar from_stack_1.global_64
  loc_B3377B: LdPrVar
  loc_B3377D: LateMemCall
  loc_B33783: FFree1Str var_BC
  loc_B33786: FFree1Var var_B8 = ""
  loc_B33789: LitVarStr var_94, "  </tr>"
  loc_B3378E: PopAdLdVar
  loc_B3378F: FLdPr Me
  loc_B33792: MemLdRfVar from_stack_1.global_64
  loc_B33795: LdPrVar
  loc_B33797: LateMemCall
  loc_B3379D: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B337A2: PopAdLdVar
  loc_B337A3: FLdPr Me
  loc_B337A6: MemLdRfVar from_stack_1.global_64
  loc_B337A9: LdPrVar
  loc_B337AB: LateMemCall
  loc_B337B1: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B337B6: PopAdLdVar
  loc_B337B7: FLdPr Me
  loc_B337BA: MemLdRfVar from_stack_1.global_64
  loc_B337BD: LdPrVar
  loc_B337BF: LateMemCall
  loc_B337C5: LitStr "    <td><strong>"
  loc_B337C8: LitI4 1
  loc_B337CD: FLdPr Me
  loc_B337D0: MemLdStr global_88
  loc_B337D3: Ary1LdPr
  loc_B337D4: MemLdStr global_4
  loc_B337D7: ConcatStr
  loc_B337D8: FStStrNoPop var_BC
  loc_B337DB: LitStr " "
  loc_B337DE: ConcatStr
  loc_B337DF: FStStrNoPop var_C0
  loc_B337E2: LitI4 1
  loc_B337E7: FLdPr Me
  loc_B337EA: MemLdStr global_88
  loc_B337ED: Ary1LdPr
  loc_B337EE: MemLdStr global_0
  loc_B337F1: ConcatStr
  loc_B337F2: FStStrNoPop var_D8
  loc_B337F5: LitStr "<br>"
  loc_B337F8: ConcatStr
  loc_B337F9: CVarStr var_B8
  loc_B337FC: PopAdLdVar
  loc_B337FD: FLdPr Me
  loc_B33800: MemLdRfVar from_stack_1.global_64
  loc_B33803: LdPrVar
  loc_B33805: LateMemCall
  loc_B3380B: FFreeStr var_BC = "": var_C0 = ""
  loc_B33814: FFree1Var var_B8 = ""
  loc_B33817: LitI4 1
  loc_B3381C: FLdPr Me
  loc_B3381F: MemLdStr global_88
  loc_B33822: Ary1LdPr
  loc_B33823: MemLdStr global_40
  loc_B33826: LitStr vbNullString
  loc_B33829: NeStr
  loc_B3382B: BranchF loc_B33860
  loc_B3382E: LitStr "      Vínculo: "
  loc_B33831: LitI4 1
  loc_B33836: FLdPr Me
  loc_B33839: MemLdStr global_88
  loc_B3383C: Ary1LdPr
  loc_B3383D: MemLdStr global_40
  loc_B33840: ConcatStr
  loc_B33841: FStStrNoPop var_BC
  loc_B33844: LitStr "<br>"
  loc_B33847: ConcatStr
  loc_B33848: CVarStr var_B8
  loc_B3384B: PopAdLdVar
  loc_B3384C: FLdPr Me
  loc_B3384F: MemLdRfVar from_stack_1.global_64
  loc_B33852: LdPrVar
  loc_B33854: LateMemCall
  loc_B3385A: FFree1Str var_BC
  loc_B3385D: FFree1Var var_B8 = ""
  loc_B33860: LitStr "      "
  loc_B33863: LitI4 1
  loc_B33868: FLdPr Me
  loc_B3386B: MemLdStr global_88
  loc_B3386E: Ary1LdPr
  loc_B3386F: MemLdStr global_8
  loc_B33872: ConcatStr
  loc_B33873: FStStrNoPop var_BC
  loc_B33876: LitStr " "
  loc_B33879: ConcatStr
  loc_B3387A: FStStrNoPop var_C0
  loc_B3387D: LitI4 1
  loc_B33882: FLdPr Me
  loc_B33885: MemLdStr global_88
  loc_B33888: Ary1LdPr
  loc_B33889: MemLdStr global_12
  loc_B3388C: ConcatStr
  loc_B3388D: FStStrNoPop var_D8
  loc_B33890: LitStr "<br>"
  loc_B33893: ConcatStr
  loc_B33894: FStStrNoPop var_DC
  loc_B33897: LitI4 1
  loc_B3389C: FLdPr Me
  loc_B3389F: MemLdStr global_88
  loc_B338A2: Ary1LdPr
  loc_B338A3: MemLdStr global_28
  loc_B338A6: ConcatStr
  loc_B338A7: FStStrNoPop var_E0
  loc_B338AA: LitStr " ("
  loc_B338AD: ConcatStr
  loc_B338AE: FStStrNoPop var_F4
  loc_B338B1: LitI4 1
  loc_B338B6: FLdPr Me
  loc_B338B9: MemLdStr global_88
  loc_B338BC: Ary1LdPr
  loc_B338BD: MemLdStr global_32
  loc_B338C0: ConcatStr
  loc_B338C1: FStStrNoPop var_F8
  loc_B338C4: LitStr ")</strong></td>"
  loc_B338C7: ConcatStr
  loc_B338C8: CVarStr var_B8
  loc_B338CB: PopAdLdVar
  loc_B338CC: FLdPr Me
  loc_B338CF: MemLdRfVar from_stack_1.global_64
  loc_B338D2: LdPrVar
  loc_B338D4: LateMemCall
  loc_B338DA: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = ""
  loc_B338EB: FFree1Var var_B8 = ""
  loc_B338EE: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B338F3: PopAdLdVar
  loc_B338F4: FLdPr Me
  loc_B338F7: MemLdRfVar from_stack_1.global_64
  loc_B338FA: LdPrVar
  loc_B338FC: LateMemCall
  loc_B33902: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong>"
  loc_B33905: LitI4 1
  loc_B3390A: FLdPr Me
  loc_B3390D: MemLdStr global_88
  loc_B33910: Ary1LdPr
  loc_B33911: MemLdStr global_36
  loc_B33914: ConcatStr
  loc_B33915: FStStrNoPop var_BC
  loc_B33918: LitStr "</strong>"
  loc_B3391B: ConcatStr
  loc_B3391C: CVarStr var_B8
  loc_B3391F: PopAdLdVar
  loc_B33920: FLdPr Me
  loc_B33923: MemLdRfVar from_stack_1.global_64
  loc_B33926: LdPrVar
  loc_B33928: LateMemCall
  loc_B3392E: FFree1Str var_BC
  loc_B33931: FFree1Var var_B8 = ""
  loc_B33934: LitVarStr var_94, "  </tr>"
  loc_B33939: PopAdLdVar
  loc_B3393A: FLdPr Me
  loc_B3393D: MemLdRfVar from_stack_1.global_64
  loc_B33940: LdPrVar
  loc_B33942: LateMemCall
  loc_B33948: LitVarStr var_94, "</table>"
  loc_B3394D: PopAdLdVar
  loc_B3394E: FLdPr Me
  loc_B33951: MemLdRfVar from_stack_1.global_64
  loc_B33954: LdPrVar
  loc_B33956: LateMemCall
  loc_B3395C: ExitProcHresult
  loc_B3395D: ThisVCallI2
End Function

Private Function Proc_109_29_B33CA0() 'B33CA0
  'Data Table: 4B3968
  loc_B339C0: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B339C5: PopAdLdVar
  loc_B339C6: FLdPr Me
  loc_B339C9: MemLdRfVar from_stack_1.global_64
  loc_B339CC: LdPrVar
  loc_B339CE: LateMemCall
  loc_B339D4: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B339D9: PopAdLdVar
  loc_B339DA: FLdPr Me
  loc_B339DD: MemLdRfVar from_stack_1.global_64
  loc_B339E0: LdPrVar
  loc_B339E2: LateMemCall
  loc_B339E8: LitVarStr var_94, "    <td><strong>EMISI&Oacute;N DE DEUDA<br>DEUDORES VARIOS CON CREACIÓN DE CUENTA</strong></td>"
  loc_B339ED: PopAdLdVar
  loc_B339EE: FLdPr Me
  loc_B339F1: MemLdRfVar from_stack_1.global_64
  loc_B339F4: LdPrVar
  loc_B339F6: LateMemCall
  loc_B339FC: LitVarStr var_94, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B33A01: PopAdLdVar
  loc_B33A02: FLdPr Me
  loc_B33A05: MemLdRfVar from_stack_1.global_64
  loc_B33A08: LdPrVar
  loc_B33A0A: LateMemCall
  loc_B33A10: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B33A13: FLdPr Me
  loc_B33A16: VCallAd Control_ID_PeriBoleMsk
  loc_B33A19: FStAdFunc var_A8
  loc_B33A1C: FLdPr var_A8
  loc_B33A1F: LateIdLdVar var_B8 DispID_0 0
  loc_B33A26: CStrVarTmp
  loc_B33A27: FStStrNoPop var_BC
  loc_B33A2A: ConcatStr
  loc_B33A2B: FStStrNoPop var_C0
  loc_B33A2E: LitStr "/"
  loc_B33A31: ConcatStr
  loc_B33A32: FStStrNoPop var_D8
  loc_B33A35: FLdPr Me
  loc_B33A38: VCallAd Control_ID_NumeBoleMsk
  loc_B33A3B: FStAdFunc var_C4
  loc_B33A3E: FLdPr var_C4
  loc_B33A41: LateIdLdVar var_D4 DispID_0 0
  loc_B33A48: CStrVarTmp
  loc_B33A49: FStStrNoPop var_DC
  loc_B33A4C: ConcatStr
  loc_B33A4D: FStStrNoPop var_E0
  loc_B33A50: LitStr "</strong></td>"
  loc_B33A53: ConcatStr
  loc_B33A54: CVarStr var_F0
  loc_B33A57: PopAdLdVar
  loc_B33A58: FLdPr Me
  loc_B33A5B: MemLdRfVar from_stack_1.global_64
  loc_B33A5E: LdPrVar
  loc_B33A60: LateMemCall
  loc_B33A66: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = ""
  loc_B33A73: FFreeAd var_A8 = ""
  loc_B33A7A: FFreeVar var_B8 = "": var_D4 = ""
  loc_B33A83: LitVarStr var_94, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B33A88: PopAdLdVar
  loc_B33A89: FLdPr Me
  loc_B33A8C: MemLdRfVar from_stack_1.global_64
  loc_B33A8F: LdPrVar
  loc_B33A91: LateMemCall
  loc_B33A97: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B33A9A: LitI4 1
  loc_B33A9F: FLdPr Me
  loc_B33AA2: MemLdStr global_88
  loc_B33AA5: Ary1LdPr
  loc_B33AA6: MemLdStr global_108
  loc_B33AA9: ConcatStr
  loc_B33AAA: FStStrNoPop var_BC
  loc_B33AAD: LitStr "</strong></td>"
  loc_B33AB0: ConcatStr
  loc_B33AB1: CVarStr var_B8
  loc_B33AB4: PopAdLdVar
  loc_B33AB5: FLdPr Me
  loc_B33AB8: MemLdRfVar from_stack_1.global_64
  loc_B33ABB: LdPrVar
  loc_B33ABD: LateMemCall
  loc_B33AC3: FFree1Str var_BC
  loc_B33AC6: FFree1Var var_B8 = ""
  loc_B33AC9: LitVarStr var_94, "  </tr>"
  loc_B33ACE: PopAdLdVar
  loc_B33ACF: FLdPr Me
  loc_B33AD2: MemLdRfVar from_stack_1.global_64
  loc_B33AD5: LdPrVar
  loc_B33AD7: LateMemCall
  loc_B33ADD: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B33AE2: PopAdLdVar
  loc_B33AE3: FLdPr Me
  loc_B33AE6: MemLdRfVar from_stack_1.global_64
  loc_B33AE9: LdPrVar
  loc_B33AEB: LateMemCall
  loc_B33AF1: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B33AF6: PopAdLdVar
  loc_B33AF7: FLdPr Me
  loc_B33AFA: MemLdRfVar from_stack_1.global_64
  loc_B33AFD: LdPrVar
  loc_B33AFF: LateMemCall
  loc_B33B05: LitStr "    <td><strong>"
  loc_B33B08: LitI4 1
  loc_B33B0D: FLdPr Me
  loc_B33B10: MemLdStr global_88
  loc_B33B13: Ary1LdPr
  loc_B33B14: MemLdStr global_4
  loc_B33B17: ConcatStr
  loc_B33B18: FStStrNoPop var_BC
  loc_B33B1B: LitStr " "
  loc_B33B1E: ConcatStr
  loc_B33B1F: FStStrNoPop var_C0
  loc_B33B22: LitI4 1
  loc_B33B27: FLdPr Me
  loc_B33B2A: MemLdStr global_88
  loc_B33B2D: Ary1LdPr
  loc_B33B2E: MemLdStr global_0
  loc_B33B31: ConcatStr
  loc_B33B32: FStStrNoPop var_D8
  loc_B33B35: LitStr "<br>"
  loc_B33B38: ConcatStr
  loc_B33B39: CVarStr var_B8
  loc_B33B3C: PopAdLdVar
  loc_B33B3D: FLdPr Me
  loc_B33B40: MemLdRfVar from_stack_1.global_64
  loc_B33B43: LdPrVar
  loc_B33B45: LateMemCall
  loc_B33B4B: FFreeStr var_BC = "": var_C0 = ""
  loc_B33B54: FFree1Var var_B8 = ""
  loc_B33B57: LitI4 1
  loc_B33B5C: FLdPr Me
  loc_B33B5F: MemLdStr global_88
  loc_B33B62: Ary1LdPr
  loc_B33B63: MemLdStr global_40
  loc_B33B66: LitStr vbNullString
  loc_B33B69: NeStr
  loc_B33B6B: BranchF loc_B33BA0
  loc_B33B6E: LitStr "      Vínculo: "
  loc_B33B71: LitI4 1
  loc_B33B76: FLdPr Me
  loc_B33B79: MemLdStr global_88
  loc_B33B7C: Ary1LdPr
  loc_B33B7D: MemLdStr global_40
  loc_B33B80: ConcatStr
  loc_B33B81: FStStrNoPop var_BC
  loc_B33B84: LitStr "<br>"
  loc_B33B87: ConcatStr
  loc_B33B88: CVarStr var_B8
  loc_B33B8B: PopAdLdVar
  loc_B33B8C: FLdPr Me
  loc_B33B8F: MemLdRfVar from_stack_1.global_64
  loc_B33B92: LdPrVar
  loc_B33B94: LateMemCall
  loc_B33B9A: FFree1Str var_BC
  loc_B33B9D: FFree1Var var_B8 = ""
  loc_B33BA0: LitStr "      "
  loc_B33BA3: LitI4 1
  loc_B33BA8: FLdPr Me
  loc_B33BAB: MemLdStr global_88
  loc_B33BAE: Ary1LdPr
  loc_B33BAF: MemLdStr global_8
  loc_B33BB2: ConcatStr
  loc_B33BB3: FStStrNoPop var_BC
  loc_B33BB6: LitStr " "
  loc_B33BB9: ConcatStr
  loc_B33BBA: FStStrNoPop var_C0
  loc_B33BBD: LitI4 1
  loc_B33BC2: FLdPr Me
  loc_B33BC5: MemLdStr global_88
  loc_B33BC8: Ary1LdPr
  loc_B33BC9: MemLdStr global_12
  loc_B33BCC: ConcatStr
  loc_B33BCD: FStStrNoPop var_D8
  loc_B33BD0: LitStr "<br>"
  loc_B33BD3: ConcatStr
  loc_B33BD4: FStStrNoPop var_DC
  loc_B33BD7: LitI4 1
  loc_B33BDC: FLdPr Me
  loc_B33BDF: MemLdStr global_88
  loc_B33BE2: Ary1LdPr
  loc_B33BE3: MemLdStr global_28
  loc_B33BE6: ConcatStr
  loc_B33BE7: FStStrNoPop var_E0
  loc_B33BEA: LitStr " ("
  loc_B33BED: ConcatStr
  loc_B33BEE: FStStrNoPop var_F4
  loc_B33BF1: LitI4 1
  loc_B33BF6: FLdPr Me
  loc_B33BF9: MemLdStr global_88
  loc_B33BFC: Ary1LdPr
  loc_B33BFD: MemLdStr global_32
  loc_B33C00: ConcatStr
  loc_B33C01: FStStrNoPop var_F8
  loc_B33C04: LitStr ")</strong></td>"
  loc_B33C07: ConcatStr
  loc_B33C08: CVarStr var_B8
  loc_B33C0B: PopAdLdVar
  loc_B33C0C: FLdPr Me
  loc_B33C0F: MemLdRfVar from_stack_1.global_64
  loc_B33C12: LdPrVar
  loc_B33C14: LateMemCall
  loc_B33C1A: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = ""
  loc_B33C2B: FFree1Var var_B8 = ""
  loc_B33C2E: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B33C33: PopAdLdVar
  loc_B33C34: FLdPr Me
  loc_B33C37: MemLdRfVar from_stack_1.global_64
  loc_B33C3A: LdPrVar
  loc_B33C3C: LateMemCall
  loc_B33C42: LitStr "    <td colspan=""3"">REFERENCIA&nbsp;&nbsp;: <strong>"
  loc_B33C45: LitI4 1
  loc_B33C4A: FLdPr Me
  loc_B33C4D: MemLdStr global_88
  loc_B33C50: Ary1LdPr
  loc_B33C51: MemLdStr global_36
  loc_B33C54: ConcatStr
  loc_B33C55: FStStrNoPop var_BC
  loc_B33C58: LitStr "</strong>"
  loc_B33C5B: ConcatStr
  loc_B33C5C: CVarStr var_B8
  loc_B33C5F: PopAdLdVar
  loc_B33C60: FLdPr Me
  loc_B33C63: MemLdRfVar from_stack_1.global_64
  loc_B33C66: LdPrVar
  loc_B33C68: LateMemCall
  loc_B33C6E: FFree1Str var_BC
  loc_B33C71: FFree1Var var_B8 = ""
  loc_B33C74: LitVarStr var_94, "  </tr>"
  loc_B33C79: PopAdLdVar
  loc_B33C7A: FLdPr Me
  loc_B33C7D: MemLdRfVar from_stack_1.global_64
  loc_B33C80: LdPrVar
  loc_B33C82: LateMemCall
  loc_B33C88: LitVarStr var_94, "</table>"
  loc_B33C8D: PopAdLdVar
  loc_B33C8E: FLdPr Me
  loc_B33C91: MemLdRfVar from_stack_1.global_64
  loc_B33C94: LdPrVar
  loc_B33C96: LateMemCall
  loc_B33C9C: ExitProcHresult
  loc_B33C9D: CStr2Ansi
End Function

Private Function Proc_109_30_B5A1C8() 'B5A1C8
  'Data Table: 4B3968
  loc_B59DEC: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B59DF1: PopAdLdVar
  loc_B59DF2: FLdPr Me
  loc_B59DF5: MemLdRfVar from_stack_1.global_64
  loc_B59DF8: LdPrVar
  loc_B59DFA: LateMemCall
  loc_B59E00: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B59E05: PopAdLdVar
  loc_B59E06: FLdPr Me
  loc_B59E09: MemLdRfVar from_stack_1.global_64
  loc_B59E0C: LdPrVar
  loc_B59E0E: LateMemCall
  loc_B59E14: LitVarStr var_94, "    <td><strong>EMISI&Oacute;N DE DEUDA - CEMENTERIO</strong></td>"
  loc_B59E19: PopAdLdVar
  loc_B59E1A: FLdPr Me
  loc_B59E1D: MemLdRfVar from_stack_1.global_64
  loc_B59E20: LdPrVar
  loc_B59E22: LateMemCall
  loc_B59E28: LitVarStr var_94, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B59E2D: PopAdLdVar
  loc_B59E2E: FLdPr Me
  loc_B59E31: MemLdRfVar from_stack_1.global_64
  loc_B59E34: LdPrVar
  loc_B59E36: LateMemCall
  loc_B59E3C: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B59E3F: FLdPr Me
  loc_B59E42: VCallAd Control_ID_PeriBoleMsk
  loc_B59E45: FStAdFunc var_A8
  loc_B59E48: FLdPr var_A8
  loc_B59E4B: LateIdLdVar var_B8 DispID_0 0
  loc_B59E52: CStrVarTmp
  loc_B59E53: FStStrNoPop var_BC
  loc_B59E56: ConcatStr
  loc_B59E57: FStStrNoPop var_C0
  loc_B59E5A: LitStr "/"
  loc_B59E5D: ConcatStr
  loc_B59E5E: FStStrNoPop var_D8
  loc_B59E61: FLdPr Me
  loc_B59E64: VCallAd Control_ID_NumeBoleMsk
  loc_B59E67: FStAdFunc var_C4
  loc_B59E6A: FLdPr var_C4
  loc_B59E6D: LateIdLdVar var_D4 DispID_0 0
  loc_B59E74: CStrVarTmp
  loc_B59E75: FStStrNoPop var_DC
  loc_B59E78: ConcatStr
  loc_B59E79: FStStrNoPop var_E0
  loc_B59E7C: LitStr "</strong></td>"
  loc_B59E7F: ConcatStr
  loc_B59E80: CVarStr var_F0
  loc_B59E83: PopAdLdVar
  loc_B59E84: FLdPr Me
  loc_B59E87: MemLdRfVar from_stack_1.global_64
  loc_B59E8A: LdPrVar
  loc_B59E8C: LateMemCall
  loc_B59E92: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = ""
  loc_B59E9F: FFreeAd var_A8 = ""
  loc_B59EA6: FFreeVar var_B8 = "": var_D4 = ""
  loc_B59EAF: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B59EB4: PopAdLdVar
  loc_B59EB5: FLdPr Me
  loc_B59EB8: MemLdRfVar from_stack_1.global_64
  loc_B59EBB: LdPrVar
  loc_B59EBD: LateMemCall
  loc_B59EC3: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B59EC6: LitI4 1
  loc_B59ECB: FLdPr Me
  loc_B59ECE: MemLdStr global_88
  loc_B59ED1: Ary1LdPr
  loc_B59ED2: MemLdStr global_108
  loc_B59ED5: ConcatStr
  loc_B59ED6: FStStrNoPop var_BC
  loc_B59ED9: LitStr "</strong></td>"
  loc_B59EDC: ConcatStr
  loc_B59EDD: CVarStr var_B8
  loc_B59EE0: PopAdLdVar
  loc_B59EE1: FLdPr Me
  loc_B59EE4: MemLdRfVar from_stack_1.global_64
  loc_B59EE7: LdPrVar
  loc_B59EE9: LateMemCall
  loc_B59EEF: FFree1Str var_BC
  loc_B59EF2: FFree1Var var_B8 = ""
  loc_B59EF5: LitVarStr var_94, "  </tr>"
  loc_B59EFA: PopAdLdVar
  loc_B59EFB: FLdPr Me
  loc_B59EFE: MemLdRfVar from_stack_1.global_64
  loc_B59F01: LdPrVar
  loc_B59F03: LateMemCall
  loc_B59F09: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B59F0E: PopAdLdVar
  loc_B59F0F: FLdPr Me
  loc_B59F12: MemLdRfVar from_stack_1.global_64
  loc_B59F15: LdPrVar
  loc_B59F17: LateMemCall
  loc_B59F1D: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B59F22: PopAdLdVar
  loc_B59F23: FLdPr Me
  loc_B59F26: MemLdRfVar from_stack_1.global_64
  loc_B59F29: LdPrVar
  loc_B59F2B: LateMemCall
  loc_B59F31: LitStr "    <td><strong>"
  loc_B59F34: LitI4 1
  loc_B59F39: FLdPr Me
  loc_B59F3C: MemLdStr global_88
  loc_B59F3F: Ary1LdPr
  loc_B59F40: MemLdStr global_4
  loc_B59F43: ConcatStr
  loc_B59F44: FStStrNoPop var_BC
  loc_B59F47: LitStr " "
  loc_B59F4A: ConcatStr
  loc_B59F4B: FStStrNoPop var_C0
  loc_B59F4E: LitI4 1
  loc_B59F53: FLdPr Me
  loc_B59F56: MemLdStr global_88
  loc_B59F59: Ary1LdPr
  loc_B59F5A: MemLdStr global_0
  loc_B59F5D: ConcatStr
  loc_B59F5E: FStStrNoPop var_D8
  loc_B59F61: LitStr "<br>"
  loc_B59F64: ConcatStr
  loc_B59F65: CVarStr var_B8
  loc_B59F68: PopAdLdVar
  loc_B59F69: FLdPr Me
  loc_B59F6C: MemLdRfVar from_stack_1.global_64
  loc_B59F6F: LdPrVar
  loc_B59F71: LateMemCall
  loc_B59F77: FFreeStr var_BC = "": var_C0 = ""
  loc_B59F80: FFree1Var var_B8 = ""
  loc_B59F83: LitI4 1
  loc_B59F88: FLdPr Me
  loc_B59F8B: MemLdStr global_88
  loc_B59F8E: Ary1LdPr
  loc_B59F8F: MemLdStr global_40
  loc_B59F92: LitStr vbNullString
  loc_B59F95: NeStr
  loc_B59F97: BranchF loc_B59FCC
  loc_B59F9A: LitStr "      Vínculo: "
  loc_B59F9D: LitI4 1
  loc_B59FA2: FLdPr Me
  loc_B59FA5: MemLdStr global_88
  loc_B59FA8: Ary1LdPr
  loc_B59FA9: MemLdStr global_40
  loc_B59FAC: ConcatStr
  loc_B59FAD: FStStrNoPop var_BC
  loc_B59FB0: LitStr "<br>"
  loc_B59FB3: ConcatStr
  loc_B59FB4: CVarStr var_B8
  loc_B59FB7: PopAdLdVar
  loc_B59FB8: FLdPr Me
  loc_B59FBB: MemLdRfVar from_stack_1.global_64
  loc_B59FBE: LdPrVar
  loc_B59FC0: LateMemCall
  loc_B59FC6: FFree1Str var_BC
  loc_B59FC9: FFree1Var var_B8 = ""
  loc_B59FCC: LitStr "      "
  loc_B59FCF: LitI4 1
  loc_B59FD4: FLdPr Me
  loc_B59FD7: MemLdStr global_88
  loc_B59FDA: Ary1LdPr
  loc_B59FDB: MemLdStr global_8
  loc_B59FDE: ConcatStr
  loc_B59FDF: FStStrNoPop var_BC
  loc_B59FE2: LitStr " "
  loc_B59FE5: ConcatStr
  loc_B59FE6: FStStrNoPop var_C0
  loc_B59FE9: LitI4 1
  loc_B59FEE: FLdPr Me
  loc_B59FF1: MemLdStr global_88
  loc_B59FF4: Ary1LdPr
  loc_B59FF5: MemLdStr global_12
  loc_B59FF8: ConcatStr
  loc_B59FF9: FStStrNoPop var_D8
  loc_B59FFC: LitStr "<br>"
  loc_B59FFF: ConcatStr
  loc_B5A000: FStStrNoPop var_DC
  loc_B5A003: LitI4 1
  loc_B5A008: FLdPr Me
  loc_B5A00B: MemLdStr global_88
  loc_B5A00E: Ary1LdPr
  loc_B5A00F: MemLdStr global_28
  loc_B5A012: ConcatStr
  loc_B5A013: FStStrNoPop var_E0
  loc_B5A016: LitStr " ("
  loc_B5A019: ConcatStr
  loc_B5A01A: FStStrNoPop var_F4
  loc_B5A01D: LitI4 1
  loc_B5A022: FLdPr Me
  loc_B5A025: MemLdStr global_88
  loc_B5A028: Ary1LdPr
  loc_B5A029: MemLdStr global_32
  loc_B5A02C: ConcatStr
  loc_B5A02D: FStStrNoPop var_F8
  loc_B5A030: LitStr ")</strong></td>"
  loc_B5A033: ConcatStr
  loc_B5A034: CVarStr var_B8
  loc_B5A037: PopAdLdVar
  loc_B5A038: FLdPr Me
  loc_B5A03B: MemLdRfVar from_stack_1.global_64
  loc_B5A03E: LdPrVar
  loc_B5A040: LateMemCall
  loc_B5A046: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = ""
  loc_B5A057: FFree1Var var_B8 = ""
  loc_B5A05A: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B5A05F: PopAdLdVar
  loc_B5A060: FLdPr Me
  loc_B5A063: MemLdRfVar from_stack_1.global_64
  loc_B5A066: LdPrVar
  loc_B5A068: LateMemCall
  loc_B5A06E: LitStr "    <td colspan=""3"">Cuenta: <strong>"
  loc_B5A071: LitI4 1
  loc_B5A076: FLdPr Me
  loc_B5A079: MemLdStr global_88
  loc_B5A07C: Ary1LdPr
  loc_B5A07D: MemLdStr global_36
  loc_B5A080: ConcatStr
  loc_B5A081: FStStrNoPop var_BC
  loc_B5A084: LitStr "</strong>&nbsp;&nbsp;&nbsp; Conc.: <strong>"
  loc_B5A087: ConcatStr
  loc_B5A088: FStStrNoPop var_C0
  loc_B5A08B: LitI4 1
  loc_B5A090: FLdPr Me
  loc_B5A093: MemLdStr global_88
  loc_B5A096: Ary1LdPr
  loc_B5A097: MemLdStr global_84
  loc_B5A09A: ConcatStr
  loc_B5A09B: FStStrNoPop var_D8
  loc_B5A09E: LitStr "</strong><br>"
  loc_B5A0A1: ConcatStr
  loc_B5A0A2: CVarStr var_B8
  loc_B5A0A5: PopAdLdVar
  loc_B5A0A6: FLdPr Me
  loc_B5A0A9: MemLdRfVar from_stack_1.global_64
  loc_B5A0AC: LdPrVar
  loc_B5A0AE: LateMemCall
  loc_B5A0B4: FFreeStr var_BC = "": var_C0 = ""
  loc_B5A0BD: FFree1Var var_B8 = ""
  loc_B5A0C0: LitStr "                                "
  loc_B5A0C3: LitI4 1
  loc_B5A0C8: FLdPr Me
  loc_B5A0CB: MemLdStr global_88
  loc_B5A0CE: Ary1LdPr
  loc_B5A0CF: MemLdStr global_60
  loc_B5A0D2: ConcatStr
  loc_B5A0D3: FStStrNoPop var_BC
  loc_B5A0D6: LitStr ": <strong>"
  loc_B5A0D9: ConcatStr
  loc_B5A0DA: FStStrNoPop var_C0
  loc_B5A0DD: LitI4 1
  loc_B5A0E2: FLdPr Me
  loc_B5A0E5: MemLdStr global_88
  loc_B5A0E8: Ary1LdPr
  loc_B5A0E9: MemLdStr global_64
  loc_B5A0EC: ConcatStr
  loc_B5A0ED: FStStrNoPop var_D8
  loc_B5A0F0: LitStr " Fila "
  loc_B5A0F3: ConcatStr
  loc_B5A0F4: FStStrNoPop var_DC
  loc_B5A0F7: LitI4 1
  loc_B5A0FC: FLdPr Me
  loc_B5A0FF: MemLdStr global_88
  loc_B5A102: Ary1LdPr
  loc_B5A103: MemLdStr global_68
  loc_B5A106: ConcatStr
  loc_B5A107: FStStrNoPop var_E0
  loc_B5A10A: LitStr " "
  loc_B5A10D: ConcatStr
  loc_B5A10E: FStStrNoPop var_F4
  loc_B5A111: LitI4 1
  loc_B5A116: FLdPr Me
  loc_B5A119: MemLdStr global_88
  loc_B5A11C: Ary1LdPr
  loc_B5A11D: MemLdStr global_72
  loc_B5A120: ConcatStr
  loc_B5A121: FStStrNoPop var_F8
  loc_B5A124: LitStr " "
  loc_B5A127: ConcatStr
  loc_B5A128: FStStrNoPop var_FC
  loc_B5A12B: LitI4 1
  loc_B5A130: FLdPr Me
  loc_B5A133: MemLdStr global_88
  loc_B5A136: Ary1LdPr
  loc_B5A137: MemLdStr global_76
  loc_B5A13A: ConcatStr
  loc_B5A13B: FStStrNoPop var_100
  loc_B5A13E: LitStr "</strong><br>"
  loc_B5A141: ConcatStr
  loc_B5A142: CVarStr var_B8
  loc_B5A145: PopAdLdVar
  loc_B5A146: FLdPr Me
  loc_B5A149: MemLdRfVar from_stack_1.global_64
  loc_B5A14C: LdPrVar
  loc_B5A14E: LateMemCall
  loc_B5A154: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_F4 = "": var_F8 = "": var_FC = ""
  loc_B5A169: FFree1Var var_B8 = ""
  loc_B5A16C: LitStr "                                Difunto: <strong>"
  loc_B5A16F: LitI4 1
  loc_B5A174: FLdPr Me
  loc_B5A177: MemLdStr global_88
  loc_B5A17A: Ary1LdPr
  loc_B5A17B: MemLdStr global_80
  loc_B5A17E: ConcatStr
  loc_B5A17F: FStStrNoPop var_BC
  loc_B5A182: LitStr "</strong></td>"
  loc_B5A185: ConcatStr
  loc_B5A186: CVarStr var_B8
  loc_B5A189: PopAdLdVar
  loc_B5A18A: FLdPr Me
  loc_B5A18D: MemLdRfVar from_stack_1.global_64
  loc_B5A190: LdPrVar
  loc_B5A192: LateMemCall
  loc_B5A198: FFree1Str var_BC
  loc_B5A19B: FFree1Var var_B8 = ""
  loc_B5A19E: LitVarStr var_94, "  </tr>"
  loc_B5A1A3: PopAdLdVar
  loc_B5A1A4: FLdPr Me
  loc_B5A1A7: MemLdRfVar from_stack_1.global_64
  loc_B5A1AA: LdPrVar
  loc_B5A1AC: LateMemCall
  loc_B5A1B2: LitVarStr var_94, "</table>"
  loc_B5A1B7: PopAdLdVar
  loc_B5A1B8: FLdPr Me
  loc_B5A1BB: MemLdRfVar from_stack_1.global_64
  loc_B5A1BE: LdPrVar
  loc_B5A1C0: LateMemCall
  loc_B5A1C6: ExitProcHresult
End Function

Private Function Proc_109_31_B481E0() 'B481E0
  'Data Table: 4B3968
  loc_B47E98: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B47E9D: PopAdLdVar
  loc_B47E9E: FLdPr Me
  loc_B47EA1: MemLdRfVar from_stack_1.global_64
  loc_B47EA4: LdPrVar
  loc_B47EA6: LateMemCall
  loc_B47EAC: LitVarStr var_94, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B47EB1: PopAdLdVar
  loc_B47EB2: FLdPr Me
  loc_B47EB5: MemLdRfVar from_stack_1.global_64
  loc_B47EB8: LdPrVar
  loc_B47EBA: LateMemCall
  loc_B47EC0: LitVarStr var_94, "    <td><strong>EMISI&Oacute;N DE DEUDA<br>DEUDORES VARIOS SIN CREACIÓN DE CUENTA</strong></td>"
  loc_B47EC5: PopAdLdVar
  loc_B47EC6: FLdPr Me
  loc_B47EC9: MemLdRfVar from_stack_1.global_64
  loc_B47ECC: LdPrVar
  loc_B47ECE: LateMemCall
  loc_B47ED4: LitVarStr var_94, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B47ED9: PopAdLdVar
  loc_B47EDA: FLdPr Me
  loc_B47EDD: MemLdRfVar from_stack_1.global_64
  loc_B47EE0: LdPrVar
  loc_B47EE2: LateMemCall
  loc_B47EE8: LitStr "    <td width=""12" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B47EEB: FLdPr Me
  loc_B47EEE: VCallAd Control_ID_PeriBoleMsk
  loc_B47EF1: FStAdFunc var_A8
  loc_B47EF4: FLdPr var_A8
  loc_B47EF7: LateIdLdVar var_B8 DispID_0 0
  loc_B47EFE: CStrVarTmp
  loc_B47EFF: FStStrNoPop var_BC
  loc_B47F02: ConcatStr
  loc_B47F03: FStStrNoPop var_C0
  loc_B47F06: LitStr "/"
  loc_B47F09: ConcatStr
  loc_B47F0A: FStStrNoPop var_D8
  loc_B47F0D: FLdPr Me
  loc_B47F10: VCallAd Control_ID_NumeBoleMsk
  loc_B47F13: FStAdFunc var_C4
  loc_B47F16: FLdPr var_C4
  loc_B47F19: LateIdLdVar var_D4 DispID_0 0
  loc_B47F20: CStrVarTmp
  loc_B47F21: FStStrNoPop var_DC
  loc_B47F24: ConcatStr
  loc_B47F25: FStStrNoPop var_E0
  loc_B47F28: LitStr "</strong></td>"
  loc_B47F2B: ConcatStr
  loc_B47F2C: CVarStr var_F0
  loc_B47F2F: PopAdLdVar
  loc_B47F30: FLdPr Me
  loc_B47F33: MemLdRfVar from_stack_1.global_64
  loc_B47F36: LdPrVar
  loc_B47F38: LateMemCall
  loc_B47F3E: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = ""
  loc_B47F4B: FFreeAd var_A8 = ""
  loc_B47F52: FFreeVar var_B8 = "": var_D4 = ""
  loc_B47F5B: LitVarStr var_94, "    <td width=""11" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B47F60: PopAdLdVar
  loc_B47F61: FLdPr Me
  loc_B47F64: MemLdRfVar from_stack_1.global_64
  loc_B47F67: LdPrVar
  loc_B47F69: LateMemCall
  loc_B47F6F: LitStr "    <td width=""13" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B47F72: LitI4 1
  loc_B47F77: FLdPr Me
  loc_B47F7A: MemLdStr global_88
  loc_B47F7D: Ary1LdPr
  loc_B47F7E: MemLdStr global_108
  loc_B47F81: ConcatStr
  loc_B47F82: FStStrNoPop var_BC
  loc_B47F85: LitStr "</strong></td>"
  loc_B47F88: ConcatStr
  loc_B47F89: CVarStr var_B8
  loc_B47F8C: PopAdLdVar
  loc_B47F8D: FLdPr Me
  loc_B47F90: MemLdRfVar from_stack_1.global_64
  loc_B47F93: LdPrVar
  loc_B47F95: LateMemCall
  loc_B47F9B: FFree1Str var_BC
  loc_B47F9E: FFree1Var var_B8 = ""
  loc_B47FA1: LitVarStr var_94, "  </tr>"
  loc_B47FA6: PopAdLdVar
  loc_B47FA7: FLdPr Me
  loc_B47FAA: MemLdRfVar from_stack_1.global_64
  loc_B47FAD: LdPrVar
  loc_B47FAF: LateMemCall
  loc_B47FB5: LitVarStr var_94, "  <tr valign=""top"">"
  loc_B47FBA: PopAdLdVar
  loc_B47FBB: FLdPr Me
  loc_B47FBE: MemLdRfVar from_stack_1.global_64
  loc_B47FC1: LdPrVar
  loc_B47FC3: LateMemCall
  loc_B47FC9: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B47FCE: PopAdLdVar
  loc_B47FCF: FLdPr Me
  loc_B47FD2: MemLdRfVar from_stack_1.global_64
  loc_B47FD5: LdPrVar
  loc_B47FD7: LateMemCall
  loc_B47FDD: LitVarStr var_110, "    <td colspan="""
  loc_B47FE2: LitVarI2 var_D4, 5
  loc_B47FE7: LitVarI2 var_B8, 1
  loc_B47FEC: LitI4 1
  loc_B47FF1: FLdPr Me
  loc_B47FF4: MemLdStr global_88
  loc_B47FF7: Ary1LdPr
  loc_B47FF8: MemLdStr global_88
  loc_B47FFB: LitStr vbNullString
  loc_B47FFE: NeStr
  loc_B48000: CVarBoolI2 var_94
  loc_B48004: FLdRfVar var_F0
  loc_B48007: ImpAdCallFPR4  = IIf(, , )
  loc_B4800C: FLdRfVar var_F0
  loc_B4800F: ConcatVar var_120
  loc_B48013: LitVarStr var_130, """><strong>"
  loc_B48018: ConcatVar var_140
  loc_B4801C: LitI4 1
  loc_B48021: FLdPr Me
  loc_B48024: MemLdStr global_88
  loc_B48027: Ary1LdPr
  loc_B48028: MemLdStr global_4
  loc_B4802B: CVarStr var_150
  loc_B4802E: ConcatVar var_160
  loc_B48032: LitVarStr var_170, " "
  loc_B48037: ConcatVar var_180
  loc_B4803B: LitI4 1
  loc_B48040: FLdPr Me
  loc_B48043: MemLdStr global_88
  loc_B48046: Ary1LdPr
  loc_B48047: MemLdStr global_0
  loc_B4804A: CVarStr var_190
  loc_B4804D: ConcatVar var_1A0
  loc_B48051: LitVarStr var_1B0, "<br>"
  loc_B48056: ConcatVar var_1C0
  loc_B4805A: PopAdLdVar
  loc_B4805B: FLdPr Me
  loc_B4805E: MemLdRfVar from_stack_1.global_64
  loc_B48061: LdPrVar
  loc_B48063: LateMemCall
  loc_B48069: FFreeVar var_94 = "": var_B8 = "": var_D4 = "": var_F0 = "": var_120 = "": var_140 = "": var_160 = "": var_180 = "": var_1A0 = ""
  loc_B48080: LitStr "      "
  loc_B48083: LitI4 1
  loc_B48088: FLdPr Me
  loc_B4808B: MemLdStr global_88
  loc_B4808E: Ary1LdPr
  loc_B4808F: MemLdStr global_8
  loc_B48092: ConcatStr
  loc_B48093: FStStrNoPop var_BC
  loc_B48096: LitStr " "
  loc_B48099: ConcatStr
  loc_B4809A: FStStrNoPop var_C0
  loc_B4809D: LitI4 1
  loc_B480A2: FLdPr Me
  loc_B480A5: MemLdStr global_88
  loc_B480A8: Ary1LdPr
  loc_B480A9: MemLdStr global_12
  loc_B480AC: ConcatStr
  loc_B480AD: FStStrNoPop var_D8
  loc_B480B0: LitStr "<br>"
  loc_B480B3: ConcatStr
  loc_B480B4: FStStrNoPop var_DC
  loc_B480B7: LitI4 1
  loc_B480BC: FLdPr Me
  loc_B480BF: MemLdStr global_88
  loc_B480C2: Ary1LdPr
  loc_B480C3: MemLdStr global_28
  loc_B480C6: ConcatStr
  loc_B480C7: FStStrNoPop var_E0
  loc_B480CA: LitStr " ("
  loc_B480CD: ConcatStr
  loc_B480CE: FStStrNoPop var_1D4
  loc_B480D1: LitI4 1
  loc_B480D6: FLdPr Me
  loc_B480D9: MemLdStr global_88
  loc_B480DC: Ary1LdPr
  loc_B480DD: MemLdStr global_32
  loc_B480E0: ConcatStr
  loc_B480E1: FStStrNoPop var_1D8
  loc_B480E4: LitStr ")</strong></td>"
  loc_B480E7: ConcatStr
  loc_B480E8: CVarStr var_B8
  loc_B480EB: PopAdLdVar
  loc_B480EC: FLdPr Me
  loc_B480EF: MemLdRfVar from_stack_1.global_64
  loc_B480F2: LdPrVar
  loc_B480F4: LateMemCall
  loc_B480FA: FFreeStr var_BC = "": var_C0 = "": var_D8 = "": var_DC = "": var_E0 = "": var_1D4 = ""
  loc_B4810B: FFree1Var var_B8 = ""
  loc_B4810E: LitI4 1
  loc_B48113: FLdPr Me
  loc_B48116: MemLdStr global_88
  loc_B48119: Ary1LdPr
  loc_B4811A: MemLdStr global_40
  loc_B4811D: LitStr vbNullString
  loc_B48120: NeStr
  loc_B48122: BranchF loc_B48157
  loc_B48125: LitStr "      Vínculo: "
  loc_B48128: LitI4 1
  loc_B4812D: FLdPr Me
  loc_B48130: MemLdStr global_88
  loc_B48133: Ary1LdPr
  loc_B48134: MemLdStr global_40
  loc_B48137: ConcatStr
  loc_B48138: FStStrNoPop var_BC
  loc_B4813B: LitStr "<br>"
  loc_B4813E: ConcatStr
  loc_B4813F: CVarStr var_B8
  loc_B48142: PopAdLdVar
  loc_B48143: FLdPr Me
  loc_B48146: MemLdRfVar from_stack_1.global_64
  loc_B48149: LdPrVar
  loc_B4814B: LateMemCall
  loc_B48151: FFree1Str var_BC
  loc_B48154: FFree1Var var_B8 = ""
  loc_B48157: LitI4 1
  loc_B4815C: FLdPr Me
  loc_B4815F: MemLdStr global_88
  loc_B48162: Ary1LdPr
  loc_B48163: MemLdStr global_88
  loc_B48166: LitStr vbNullString
  loc_B48169: NeStr
  loc_B4816B: BranchF loc_B481B4
  loc_B4816E: LitVarStr var_94, "    <td align=""right"" class=""Encabezado""><strong>Expediente: </strong></td>"
  loc_B48173: PopAdLdVar
  loc_B48174: FLdPr Me
  loc_B48177: MemLdRfVar from_stack_1.global_64
  loc_B4817A: LdPrVar
  loc_B4817C: LateMemCall
  loc_B48182: LitStr "    <td colspan=""3""><strong>"
  loc_B48185: LitI4 1
  loc_B4818A: FLdPr Me
  loc_B4818D: MemLdStr global_88
  loc_B48190: Ary1LdPr
  loc_B48191: MemLdStr global_88
  loc_B48194: ConcatStr
  loc_B48195: FStStrNoPop var_BC
  loc_B48198: LitStr "</strong>"
  loc_B4819B: ConcatStr
  loc_B4819C: CVarStr var_B8
  loc_B4819F: PopAdLdVar
  loc_B481A0: FLdPr Me
  loc_B481A3: MemLdRfVar from_stack_1.global_64
  loc_B481A6: LdPrVar
  loc_B481A8: LateMemCall
  loc_B481AE: FFree1Str var_BC
  loc_B481B1: FFree1Var var_B8 = ""
  loc_B481B4: LitVarStr var_94, "  </tr>"
  loc_B481B9: PopAdLdVar
  loc_B481BA: FLdPr Me
  loc_B481BD: MemLdRfVar from_stack_1.global_64
  loc_B481C0: LdPrVar
  loc_B481C2: LateMemCall
  loc_B481C8: LitVarStr var_94, "</table>"
  loc_B481CD: PopAdLdVar
  loc_B481CE: FLdPr Me
  loc_B481D1: MemLdRfVar from_stack_1.global_64
  loc_B481D4: LdPrVar
  loc_B481D6: LateMemCall
  loc_B481DC: ExitProcHresult
  loc_B481DD: BranchF loc_B4A898
End Function

Private Function Proc_109_32_BDA898() 'BDA898
  'Data Table: 4B3968
  loc_BDA140: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BDA145: PopAdLdVar
  loc_BDA146: FLdPr Me
  loc_BDA149: MemLdRfVar from_stack_1.global_64
  loc_BDA14C: LdPrVar
  loc_BDA14E: LateMemCall
  loc_BDA154: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDA159: PopAdLdVar
  loc_BDA15A: FLdPr Me
  loc_BDA15D: MemLdRfVar from_stack_1.global_64
  loc_BDA160: LdPrVar
  loc_BDA162: LateMemCall
  loc_BDA168: LitVarStr var_94, "    <td colspan=""3"">DESCRIPCI&Oacute;N</td>"
  loc_BDA16D: PopAdLdVar
  loc_BDA16E: FLdPr Me
  loc_BDA171: MemLdRfVar from_stack_1.global_64
  loc_BDA174: LdPrVar
  loc_BDA176: LateMemCall
  loc_BDA17C: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BDA181: PopAdLdVar
  loc_BDA182: FLdPr Me
  loc_BDA185: MemLdRfVar from_stack_1.global_64
  loc_BDA188: LdPrVar
  loc_BDA18A: LateMemCall
  loc_BDA190: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DESCUENTO</td>"
  loc_BDA195: PopAdLdVar
  loc_BDA196: FLdPr Me
  loc_BDA199: MemLdRfVar from_stack_1.global_64
  loc_BDA19C: LdPrVar
  loc_BDA19E: LateMemCall
  loc_BDA1A4: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>EXENCIÓN</td>"
  loc_BDA1A9: PopAdLdVar
  loc_BDA1AA: FLdPr Me
  loc_BDA1AD: MemLdRfVar from_stack_1.global_64
  loc_BDA1B0: LdPrVar
  loc_BDA1B2: LateMemCall
  loc_BDA1B8: LitVarStr var_94, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_BDA1BD: PopAdLdVar
  loc_BDA1BE: FLdPr Me
  loc_BDA1C1: MemLdRfVar from_stack_1.global_64
  loc_BDA1C4: LdPrVar
  loc_BDA1C6: LateMemCall
  loc_BDA1CC: LitVarStr var_94, "  </tr>"
  loc_BDA1D1: PopAdLdVar
  loc_BDA1D2: FLdPr Me
  loc_BDA1D5: MemLdRfVar from_stack_1.global_64
  loc_BDA1D8: LdPrVar
  loc_BDA1DA: LateMemCall
  loc_BDA1E0: LitI2_Byte 1
  loc_BDA1E2: FLdPr Me
  loc_BDA1E5: MemLdRfVar from_stack_1.global_96
  loc_BDA1E8: FLdPr Me
  loc_BDA1EB: MemLdI2 global_94
  loc_BDA1EE: CI4UI1
  loc_BDA1EF: LitI4 1
  loc_BDA1F4: FLdPr Me
  loc_BDA1F7: MemLdStr global_88
  loc_BDA1FA: Ary1LdPr
  loc_BDA1FB: MemLdStr global_128
  loc_BDA1FE: Ary1LdPr
  loc_BDA1FF: MemLdStr global_0
  loc_BDA202: LitI2_Byte 1
  loc_BDA204: FnUBound
  loc_BDA206: CI2I4
  loc_BDA207: ForI2 var_A8
  loc_BDA20D: LitVarStr var_94, "  <tr>"
  loc_BDA212: PopAdLdVar
  loc_BDA213: FLdPr Me
  loc_BDA216: MemLdRfVar from_stack_1.global_64
  loc_BDA219: LdPrVar
  loc_BDA21B: LateMemCall
  loc_BDA221: LitStr "    <td colspan=""7"" align=""left"">"
  loc_BDA224: FLdPr Me
  loc_BDA227: MemLdI2 global_96
  loc_BDA22A: CI4UI1
  loc_BDA22B: FLdPr Me
  loc_BDA22E: MemLdI2 global_94
  loc_BDA231: CI4UI1
  loc_BDA232: LitI4 1
  loc_BDA237: FLdPr Me
  loc_BDA23A: MemLdStr global_88
  loc_BDA23D: Ary1LdPr
  loc_BDA23E: MemLdStr global_128
  loc_BDA241: Ary1LdPr
  loc_BDA242: MemLdStr global_0
  loc_BDA245: Ary1LdPr
  loc_BDA246: MemLdStr global_0
  loc_BDA249: ConcatStr
  loc_BDA24A: FStStrNoPop var_AC
  loc_BDA24D: LitStr " - "
  loc_BDA250: ConcatStr
  loc_BDA251: FStStrNoPop var_B0
  loc_BDA254: FLdPr Me
  loc_BDA257: MemLdI2 global_96
  loc_BDA25A: CI4UI1
  loc_BDA25B: FLdPr Me
  loc_BDA25E: MemLdI2 global_94
  loc_BDA261: CI4UI1
  loc_BDA262: LitI4 1
  loc_BDA267: FLdPr Me
  loc_BDA26A: MemLdStr global_88
  loc_BDA26D: Ary1LdPr
  loc_BDA26E: MemLdStr global_128
  loc_BDA271: Ary1LdPr
  loc_BDA272: MemLdStr global_0
  loc_BDA275: Ary1LdPr
  loc_BDA276: MemLdStr global_4
  loc_BDA279: ConcatStr
  loc_BDA27A: FStStrNoPop var_B4
  loc_BDA27D: LitStr "</td>"
  loc_BDA280: ConcatStr
  loc_BDA281: CVarStr var_C4
  loc_BDA284: PopAdLdVar
  loc_BDA285: FLdPr Me
  loc_BDA288: MemLdRfVar from_stack_1.global_64
  loc_BDA28B: LdPrVar
  loc_BDA28D: LateMemCall
  loc_BDA293: FFreeStr var_AC = "": var_B0 = ""
  loc_BDA29C: FFree1Var var_C4 = ""
  loc_BDA29F: LitVarStr var_94, "  </tr>"
  loc_BDA2A4: PopAdLdVar
  loc_BDA2A5: FLdPr Me
  loc_BDA2A8: MemLdRfVar from_stack_1.global_64
  loc_BDA2AB: LdPrVar
  loc_BDA2AD: LateMemCall
  loc_BDA2B3: LitI2_Byte 1
  loc_BDA2B5: FLdPr Me
  loc_BDA2B8: MemLdRfVar from_stack_1.global_98
  loc_BDA2BB: FLdPr Me
  loc_BDA2BE: MemLdI2 global_96
  loc_BDA2C1: CI4UI1
  loc_BDA2C2: FLdPr Me
  loc_BDA2C5: MemLdI2 global_94
  loc_BDA2C8: CI4UI1
  loc_BDA2C9: LitI4 1
  loc_BDA2CE: FLdPr Me
  loc_BDA2D1: MemLdStr global_88
  loc_BDA2D4: Ary1LdPr
  loc_BDA2D5: MemLdStr global_128
  loc_BDA2D8: Ary1LdPr
  loc_BDA2D9: MemLdStr global_0
  loc_BDA2DC: Ary1LdPr
  loc_BDA2DD: MemLdStr global_8
  loc_BDA2E0: LitI2_Byte 1
  loc_BDA2E2: FnUBound
  loc_BDA2E4: CI2I4
  loc_BDA2E5: ForI2 var_C8
  loc_BDA2EB: LitVarStr var_94, "  <tr>"
  loc_BDA2F0: PopAdLdVar
  loc_BDA2F1: FLdPr Me
  loc_BDA2F4: MemLdRfVar from_stack_1.global_64
  loc_BDA2F7: LdPrVar
  loc_BDA2F9: LateMemCall
  loc_BDA2FF: LitStr "    <td width=""40" & Chr(37) & """ rowspan="""
  loc_BDA302: FLdPr Me
  loc_BDA305: MemLdI2 global_98
  loc_BDA308: CI4UI1
  loc_BDA309: FLdPr Me
  loc_BDA30C: MemLdI2 global_96
  loc_BDA30F: CI4UI1
  loc_BDA310: FLdPr Me
  loc_BDA313: MemLdI2 global_94
  loc_BDA316: CI4UI1
  loc_BDA317: LitI4 1
  loc_BDA31C: FLdPr Me
  loc_BDA31F: MemLdStr global_88
  loc_BDA322: Ary1LdPr
  loc_BDA323: MemLdStr global_128
  loc_BDA326: Ary1LdPr
  loc_BDA327: MemLdStr global_0
  loc_BDA32A: Ary1LdPr
  loc_BDA32B: MemLdStr global_8
  loc_BDA32E: Ary1LdPr
  loc_BDA32F: MemLdStr global_4
  loc_BDA332: LitI2_Byte 1
  loc_BDA334: FnUBound
  loc_BDA336: CStrI4
  loc_BDA338: FStStrNoPop var_AC
  loc_BDA33B: ConcatStr
  loc_BDA33C: FStStrNoPop var_B0
  loc_BDA33F: LitStr """ valign=""top"">Periodo: "
  loc_BDA342: ConcatStr
  loc_BDA343: FStStrNoPop var_B4
  loc_BDA346: FLdPr Me
  loc_BDA349: MemLdI2 global_98
  loc_BDA34C: CI4UI1
  loc_BDA34D: FLdPr Me
  loc_BDA350: MemLdI2 global_96
  loc_BDA353: CI4UI1
  loc_BDA354: FLdPr Me
  loc_BDA357: MemLdI2 global_94
  loc_BDA35A: CI4UI1
  loc_BDA35B: LitI4 1
  loc_BDA360: FLdPr Me
  loc_BDA363: MemLdStr global_88
  loc_BDA366: Ary1LdPr
  loc_BDA367: MemLdStr global_128
  loc_BDA36A: Ary1LdPr
  loc_BDA36B: MemLdStr global_0
  loc_BDA36E: Ary1LdPr
  loc_BDA36F: MemLdStr global_8
  loc_BDA372: Ary1LdPr
  loc_BDA373: MemLdStr global_0
  loc_BDA376: ConcatStr
  loc_BDA377: FStStrNoPop var_CC
  loc_BDA37A: LitStr "</td>"
  loc_BDA37D: ConcatStr
  loc_BDA37E: CVarStr var_C4
  loc_BDA381: PopAdLdVar
  loc_BDA382: FLdPr Me
  loc_BDA385: MemLdRfVar from_stack_1.global_64
  loc_BDA388: LdPrVar
  loc_BDA38A: LateMemCall
  loc_BDA390: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_BDA39B: FFree1Var var_C4 = ""
  loc_BDA39E: LitStr "    <td width=""6" & Chr(37) & """ rowspan="""
  loc_BDA3A1: FLdPr Me
  loc_BDA3A4: MemLdI2 global_98
  loc_BDA3A7: CI4UI1
  loc_BDA3A8: FLdPr Me
  loc_BDA3AB: MemLdI2 global_96
  loc_BDA3AE: CI4UI1
  loc_BDA3AF: FLdPr Me
  loc_BDA3B2: MemLdI2 global_94
  loc_BDA3B5: CI4UI1
  loc_BDA3B6: LitI4 1
  loc_BDA3BB: FLdPr Me
  loc_BDA3BE: MemLdStr global_88
  loc_BDA3C1: Ary1LdPr
  loc_BDA3C2: MemLdStr global_128
  loc_BDA3C5: Ary1LdPr
  loc_BDA3C6: MemLdStr global_0
  loc_BDA3C9: Ary1LdPr
  loc_BDA3CA: MemLdStr global_8
  loc_BDA3CD: Ary1LdPr
  loc_BDA3CE: MemLdStr global_4
  loc_BDA3D1: LitI2_Byte 1
  loc_BDA3D3: FnUBound
  loc_BDA3D5: CStrI4
  loc_BDA3D7: FStStrNoPop var_AC
  loc_BDA3DA: ConcatStr
  loc_BDA3DB: FStStrNoPop var_B0
  loc_BDA3DE: LitStr """ valign=""top"">Bimestre:</td>"
  loc_BDA3E1: ConcatStr
  loc_BDA3E2: CVarStr var_C4
  loc_BDA3E5: PopAdLdVar
  loc_BDA3E6: FLdPr Me
  loc_BDA3E9: MemLdRfVar from_stack_1.global_64
  loc_BDA3EC: LdPrVar
  loc_BDA3EE: LateMemCall
  loc_BDA3F4: FFreeStr var_AC = ""
  loc_BDA3FB: FFree1Var var_C4 = ""
  loc_BDA3FE: LitI2_Byte 1
  loc_BDA400: FLdPr Me
  loc_BDA403: MemLdRfVar from_stack_1.global_100
  loc_BDA406: FLdPr Me
  loc_BDA409: MemLdI2 global_98
  loc_BDA40C: CI4UI1
  loc_BDA40D: FLdPr Me
  loc_BDA410: MemLdI2 global_96
  loc_BDA413: CI4UI1
  loc_BDA414: FLdPr Me
  loc_BDA417: MemLdI2 global_94
  loc_BDA41A: CI4UI1
  loc_BDA41B: LitI4 1
  loc_BDA420: FLdPr Me
  loc_BDA423: MemLdStr global_88
  loc_BDA426: Ary1LdPr
  loc_BDA427: MemLdStr global_128
  loc_BDA42A: Ary1LdPr
  loc_BDA42B: MemLdStr global_0
  loc_BDA42E: Ary1LdPr
  loc_BDA42F: MemLdStr global_8
  loc_BDA432: Ary1LdPr
  loc_BDA433: MemLdStr global_4
  loc_BDA436: LitI2_Byte 1
  loc_BDA438: FnUBound
  loc_BDA43A: CI2I4
  loc_BDA43B: ForI2 var_D0
  loc_BDA441: FLdPr Me
  loc_BDA444: MemLdI2 global_100
  loc_BDA447: LitI2_Byte 1
  loc_BDA449: GtI2
  loc_BDA44A: BranchF loc_BDA461
  loc_BDA44D: LitVarStr var_94, "  <tr>"
  loc_BDA452: PopAdLdVar
  loc_BDA453: FLdPr Me
  loc_BDA456: MemLdRfVar from_stack_1.global_64
  loc_BDA459: LdPrVar
  loc_BDA45B: LateMemCall
  loc_BDA461: FLdPr Me
  loc_BDA464: MemLdI2 global_100
  loc_BDA467: CI4UI1
  loc_BDA468: FLdPr Me
  loc_BDA46B: MemLdI2 global_98
  loc_BDA46E: CI4UI1
  loc_BDA46F: FLdPr Me
  loc_BDA472: MemLdI2 global_96
  loc_BDA475: CI4UI1
  loc_BDA476: FLdPr Me
  loc_BDA479: MemLdI2 global_94
  loc_BDA47C: CI4UI1
  loc_BDA47D: LitI4 1
  loc_BDA482: FLdPr Me
  loc_BDA485: MemLdStr global_88
  loc_BDA488: AryLock
  loc_BDA48B: Ary1LdPr
  loc_BDA48C: MemLdStr global_128
  loc_BDA48F: AryLock
  loc_BDA492: Ary1LdPr
  loc_BDA493: MemLdStr global_0
  loc_BDA496: AryLock
  loc_BDA499: Ary1LdPr
  loc_BDA49A: MemLdStr global_8
  loc_BDA49D: AryLock
  loc_BDA4A0: Ary1LdPr
  loc_BDA4A1: MemLdStr global_4
  loc_BDA4A4: AryLock
  loc_BDA4A7: Ary1LdRf
  loc_BDA4A8: FStR4 var_E8
  loc_BDA4AB: LitStr "    <td width=""4" & Chr(37) & """ align=""center"">"
  loc_BDA4AE: FMemLdR4 var_E8(0)
  loc_BDA4B3: ConcatStr
  loc_BDA4B4: FStStrNoPop var_AC
  loc_BDA4B7: LitStr "</td>"
  loc_BDA4BA: ConcatStr
  loc_BDA4BB: CVarStr var_C4
  loc_BDA4BE: PopAdLdVar
  loc_BDA4BF: FLdPr Me
  loc_BDA4C2: MemLdRfVar from_stack_1.global_64
  loc_BDA4C5: LdPrVar
  loc_BDA4C7: LateMemCall
  loc_BDA4CD: FFree1Str var_AC
  loc_BDA4D0: FFree1Var var_C4 = ""
  loc_BDA4D3: FMemLdRf cmdNueva_Click_AEF1CC()
  loc_BDA4D8: CVarRef
  loc_BDA4DD: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BDA4E2: FStVarCopyObj var_C4
  loc_BDA4E5: FLdRfVar var_C4
  loc_BDA4E8: FMemLdR4 var_E8(4)
  loc_BDA4ED: LitStr "0,00"
  loc_BDA4F0: EqStr
  loc_BDA4F2: CVarBoolI2 var_94
  loc_BDA4F6: FLdRfVar var_108
  loc_BDA4F9: ImpAdCallFPR4  = IIf(, , )
  loc_BDA4FE: LitStr vbNullString
  loc_BDA501: LitI2_Byte 0
  loc_BDA503: LitI2_Byte 0
  loc_BDA505: LitI2_Byte 0
  loc_BDA507: LitStr "right"
  loc_BDA50A: FLdRfVar var_108
  loc_BDA50D: CStrVarVal var_AC
  loc_BDA511: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDA516: CVarStr var_118
  loc_BDA519: PopAdLdVar
  loc_BDA51A: FLdPr Me
  loc_BDA51D: MemLdRfVar from_stack_1.global_64
  loc_BDA520: LdPrVar
  loc_BDA522: LateMemCall
  loc_BDA528: FFree1Str var_AC
  loc_BDA52B: FFreeVar var_94 = "": var_C4 = "": var_108 = ""
  loc_BDA536: FMemLdRf cmdNueva_Click_AEF1CC()
  loc_BDA53B: CVarRef
  loc_BDA540: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BDA545: FStVarCopyObj var_C4
  loc_BDA548: FLdRfVar var_C4
  loc_BDA54B: FMemLdR4 var_E8(8)
  loc_BDA550: LitStr "0,00"
  loc_BDA553: EqStr
  loc_BDA555: CVarBoolI2 var_94
  loc_BDA559: FLdRfVar var_108
  loc_BDA55C: ImpAdCallFPR4  = IIf(, , )
  loc_BDA561: LitStr vbNullString
  loc_BDA564: LitI2_Byte 0
  loc_BDA566: LitI2_Byte 0
  loc_BDA568: LitI2_Byte 0
  loc_BDA56A: LitStr "right"
  loc_BDA56D: FLdRfVar var_108
  loc_BDA570: CStrVarVal var_AC
  loc_BDA574: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDA579: CVarStr var_118
  loc_BDA57C: PopAdLdVar
  loc_BDA57D: FLdPr Me
  loc_BDA580: MemLdRfVar from_stack_1.global_64
  loc_BDA583: LdPrVar
  loc_BDA585: LateMemCall
  loc_BDA58B: FFree1Str var_AC
  loc_BDA58E: FFreeVar var_94 = "": var_C4 = "": var_108 = ""
  loc_BDA599: FMemLdRf cmdNueva_Click_AEF1CC()
  loc_BDA59E: CVarRef
  loc_BDA5A3: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BDA5A8: FStVarCopyObj var_C4
  loc_BDA5AB: FLdRfVar var_C4
  loc_BDA5AE: FMemLdR4 var_E8(12)
  loc_BDA5B3: LitStr "0,00"
  loc_BDA5B6: EqStr
  loc_BDA5B8: CVarBoolI2 var_94
  loc_BDA5BC: FLdRfVar var_108
  loc_BDA5BF: ImpAdCallFPR4  = IIf(, , )
  loc_BDA5C4: LitStr vbNullString
  loc_BDA5C7: LitI2_Byte 0
  loc_BDA5C9: LitI2_Byte 0
  loc_BDA5CB: LitI2_Byte 0
  loc_BDA5CD: LitStr "right"
  loc_BDA5D0: FLdRfVar var_108
  loc_BDA5D3: CStrVarVal var_AC
  loc_BDA5D7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDA5DC: CVarStr var_118
  loc_BDA5DF: PopAdLdVar
  loc_BDA5E0: FLdPr Me
  loc_BDA5E3: MemLdRfVar from_stack_1.global_64
  loc_BDA5E6: LdPrVar
  loc_BDA5E8: LateMemCall
  loc_BDA5EE: FFree1Str var_AC
  loc_BDA5F1: FFreeVar var_94 = "": var_C4 = "": var_108 = ""
  loc_BDA5FC: FMemLdRf cmdNueva_Click_AEF1CC()
  loc_BDA601: CVarRef
  loc_BDA606: LitVarStr var_A4, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BDA60B: FStVarCopyObj var_C4
  loc_BDA60E: FLdRfVar var_C4
  loc_BDA611: FMemLdR4 var_E8(16)
  loc_BDA616: LitStr "0,00"
  loc_BDA619: EqStr
  loc_BDA61B: CVarBoolI2 var_94
  loc_BDA61F: FLdRfVar var_108
  loc_BDA622: ImpAdCallFPR4  = IIf(, , )
  loc_BDA627: LitStr vbNullString
  loc_BDA62A: LitI2_Byte 0
  loc_BDA62C: LitI2_Byte 0
  loc_BDA62E: LitI2_Byte 0
  loc_BDA630: LitStr "right"
  loc_BDA633: FLdRfVar var_108
  loc_BDA636: CStrVarVal var_AC
  loc_BDA63A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BDA63F: CVarStr var_118
  loc_BDA642: PopAdLdVar
  loc_BDA643: FLdPr Me
  loc_BDA646: MemLdRfVar from_stack_1.global_64
  loc_BDA649: LdPrVar
  loc_BDA64B: LateMemCall
  loc_BDA651: FFree1Str var_AC
  loc_BDA654: FFreeVar var_94 = "": var_C4 = "": var_108 = ""
  loc_BDA65F: LitI4 0
  loc_BDA664: FStR4 var_E8
  loc_BDA667: AryUnlock
  loc_BDA66A: AryUnlock
  loc_BDA66D: AryUnlock
  loc_BDA670: AryUnlock
  loc_BDA673: AryUnlock
  loc_BDA676: LitVarStr var_94, "  </tr>"
  loc_BDA67B: PopAdLdVar
  loc_BDA67C: FLdPr Me
  loc_BDA67F: MemLdRfVar from_stack_1.global_64
  loc_BDA682: LdPrVar
  loc_BDA684: LateMemCall
  loc_BDA68A: FLdPr Me
  loc_BDA68D: MemLdRfVar from_stack_1.global_100
  loc_BDA690: NextI2 var_D0, loc_BDA441
  loc_BDA695: FLdPr Me
  loc_BDA698: MemLdRfVar from_stack_1.global_98
  loc_BDA69B: NextI2 var_C8, loc_BDA2EB
  loc_BDA6A0: FLdPr Me
  loc_BDA6A3: MemLdRfVar from_stack_1.global_96
  loc_BDA6A6: NextI2 var_A8, loc_BDA20D
  loc_BDA6AB: FLdPr Me
  loc_BDA6AE: MemLdI2 global_94
  loc_BDA6B1: CI4UI1
  loc_BDA6B2: LitI4 1
  loc_BDA6B7: FLdPr Me
  loc_BDA6BA: MemLdStr global_88
  loc_BDA6BD: Ary1LdPr
  loc_BDA6BE: MemLdStr global_128
  loc_BDA6C1: LitI2_Byte 1
  loc_BDA6C3: FnUBound
  loc_BDA6C5: LtI4
  loc_BDA6C6: BranchF loc_BDA894
  loc_BDA6C9: LitVarStr var_94, "</table><p><hr></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
  loc_BDA6CE: PopAdLdVar
  loc_BDA6CF: FLdPr Me
  loc_BDA6D2: MemLdRfVar from_stack_1.global_64
  loc_BDA6D5: LdPrVar
  loc_BDA6D7: LateMemCall
  loc_BDA6DD: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BDA6E2: PopAdLdVar
  loc_BDA6E3: FLdPr Me
  loc_BDA6E6: MemLdRfVar from_stack_1.global_64
  loc_BDA6E9: LdPrVar
  loc_BDA6EB: LateMemCall
  loc_BDA6F1: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BDA6F6: PopAdLdVar
  loc_BDA6F7: FLdPr Me
  loc_BDA6FA: MemLdRfVar from_stack_1.global_64
  loc_BDA6FD: LdPrVar
  loc_BDA6FF: LateMemCall
  loc_BDA705: LitStr "    <td rowspan=""2"">SUBTOTALES HOJA "
  loc_BDA708: FLdPr Me
  loc_BDA70B: MemLdI2 global_94
  loc_BDA70E: CStrUI1
  loc_BDA710: FStStrNoPop var_AC
  loc_BDA713: ConcatStr
  loc_BDA714: FStStrNoPop var_B0
  loc_BDA717: LitStr "</td>"
  loc_BDA71A: ConcatStr
  loc_BDA71B: CVarStr var_C4
  loc_BDA71E: PopAdLdVar
  loc_BDA71F: FLdPr Me
  loc_BDA722: MemLdRfVar from_stack_1.global_64
  loc_BDA725: LdPrVar
  loc_BDA727: LateMemCall
  loc_BDA72D: FFreeStr var_AC = ""
  loc_BDA734: FFree1Var var_C4 = ""
  loc_BDA737: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BDA73C: PopAdLdVar
  loc_BDA73D: FLdPr Me
  loc_BDA740: MemLdRfVar from_stack_1.global_64
  loc_BDA743: LdPrVar
  loc_BDA745: LateMemCall
  loc_BDA74B: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>DESCUENTO</td>"
  loc_BDA750: PopAdLdVar
  loc_BDA751: FLdPr Me
  loc_BDA754: MemLdRfVar from_stack_1.global_64
  loc_BDA757: LdPrVar
  loc_BDA759: LateMemCall
  loc_BDA75F: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>EXENCIÓN</td>"
  loc_BDA764: PopAdLdVar
  loc_BDA765: FLdPr Me
  loc_BDA768: MemLdRfVar from_stack_1.global_64
  loc_BDA76B: LdPrVar
  loc_BDA76D: LateMemCall
  loc_BDA773: LitVarStr var_94, "    <td width=""10" & Chr(37) & """>TOTAL</td>"
  loc_BDA778: PopAdLdVar
  loc_BDA779: FLdPr Me
  loc_BDA77C: MemLdRfVar from_stack_1.global_64
  loc_BDA77F: LdPrVar
  loc_BDA781: LateMemCall
  loc_BDA787: LitVarStr var_94, "  </tr>"
  loc_BDA78C: PopAdLdVar
  loc_BDA78D: FLdPr Me
  loc_BDA790: MemLdRfVar from_stack_1.global_64
  loc_BDA793: LdPrVar
  loc_BDA795: LateMemCall
  loc_BDA79B: LitVarStr var_94, "  <tr align=""center"" class=""Normal"">"
  loc_BDA7A0: PopAdLdVar
  loc_BDA7A1: FLdPr Me
  loc_BDA7A4: MemLdRfVar from_stack_1.global_64
  loc_BDA7A7: LdPrVar
  loc_BDA7A9: LateMemCall
  loc_BDA7AF: FLdPr Me
  loc_BDA7B2: MemLdI2 global_94
  loc_BDA7B5: CI4UI1
  loc_BDA7B6: LitI4 1
  loc_BDA7BB: FLdPr Me
  loc_BDA7BE: MemLdStr global_88
  loc_BDA7C1: AryLock
  loc_BDA7C4: Ary1LdPr
  loc_BDA7C5: MemLdStr global_128
  loc_BDA7C8: AryLock
  loc_BDA7CB: Ary1LdPr
  loc_BDA7CC: MemLdRfVar from_stack_1.global_4
  loc_BDA7CF: FStR4 var_134
  loc_BDA7D2: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BDA7D5: FMemLdR4 var_134(4)
  loc_BDA7DA: ConcatStr
  loc_BDA7DB: FStStrNoPop var_AC
  loc_BDA7DE: LitStr "</td>"
  loc_BDA7E1: ConcatStr
  loc_BDA7E2: CVarStr var_C4
  loc_BDA7E5: PopAdLdVar
  loc_BDA7E6: FLdPr Me
  loc_BDA7E9: MemLdRfVar from_stack_1.global_64
  loc_BDA7EC: LdPrVar
  loc_BDA7EE: LateMemCall
  loc_BDA7F4: FFree1Str var_AC
  loc_BDA7F7: FFree1Var var_C4 = ""
  loc_BDA7FA: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BDA7FD: FMemLdR4 var_134(8)
  loc_BDA802: ConcatStr
  loc_BDA803: FStStrNoPop var_AC
  loc_BDA806: LitStr "</td>"
  loc_BDA809: ConcatStr
  loc_BDA80A: CVarStr var_C4
  loc_BDA80D: PopAdLdVar
  loc_BDA80E: FLdPr Me
  loc_BDA811: MemLdRfVar from_stack_1.global_64
  loc_BDA814: LdPrVar
  loc_BDA816: LateMemCall
  loc_BDA81C: FFree1Str var_AC
  loc_BDA81F: FFree1Var var_C4 = ""
  loc_BDA822: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BDA825: FMemLdR4 var_134(12)
  loc_BDA82A: ConcatStr
  loc_BDA82B: FStStrNoPop var_AC
  loc_BDA82E: LitStr "</td>"
  loc_BDA831: ConcatStr
  loc_BDA832: CVarStr var_C4
  loc_BDA835: PopAdLdVar
  loc_BDA836: FLdPr Me
  loc_BDA839: MemLdRfVar from_stack_1.global_64
  loc_BDA83C: LdPrVar
  loc_BDA83E: LateMemCall
  loc_BDA844: FFree1Str var_AC
  loc_BDA847: FFree1Var var_C4 = ""
  loc_BDA84A: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BDA84D: FMemLdR4 var_134(16)
  loc_BDA852: ConcatStr
  loc_BDA853: FStStrNoPop var_AC
  loc_BDA856: LitStr "</td>"
  loc_BDA859: ConcatStr
  loc_BDA85A: CVarStr var_C4
  loc_BDA85D: PopAdLdVar
  loc_BDA85E: FLdPr Me
  loc_BDA861: MemLdRfVar from_stack_1.global_64
  loc_BDA864: LdPrVar
  loc_BDA866: LateMemCall
  loc_BDA86C: FFree1Str var_AC
  loc_BDA86F: FFree1Var var_C4 = ""
  loc_BDA872: LitI4 0
  loc_BDA877: FStR4 var_134
  loc_BDA87A: AryUnlock
  loc_BDA87D: AryUnlock
  loc_BDA880: LitVarStr var_94, "  </tr></table>"
  loc_BDA885: PopAdLdVar
  loc_BDA886: FLdPr Me
  loc_BDA889: MemLdRfVar from_stack_1.global_64
  loc_BDA88C: LdPrVar
  loc_BDA88E: LateMemCall
  loc_BDA894: ExitProcHresult
End Function

Private Function Proc_109_33_B312B8() 'B312B8
  'Data Table: 4B3968
  loc_B30FC4: LitI4 1
  loc_B30FC9: FLdPr Me
  loc_B30FCC: MemLdStr global_88
  loc_B30FCF: Ary1LdPr
  loc_B30FD0: MemLdStr global_120
  loc_B30FD3: LitStr vbNullString
  loc_B30FD6: NeStr
  loc_B30FD8: BranchF loc_B3104C
  loc_B30FDB: LitVarStr var_94, "  <tr>"
  loc_B30FE0: PopAdLdVar
  loc_B30FE1: FLdPr Me
  loc_B30FE4: MemLdRfVar from_stack_1.global_64
  loc_B30FE7: LdPrVar
  loc_B30FE9: LateMemCall
  loc_B30FEF: LitVarStr var_94, "    <td colspan=""6"" align=""left"" valign=""top""><strong>APREMIO:</strong></td>"
  loc_B30FF4: PopAdLdVar
  loc_B30FF5: FLdPr Me
  loc_B30FF8: MemLdRfVar from_stack_1.global_64
  loc_B30FFB: LdPrVar
  loc_B30FFD: LateMemCall
  loc_B31003: LitStr vbNullString
  loc_B31006: LitI2_Byte 0
  loc_B31008: LitI2_Byte 0
  loc_B3100A: LitI2_Byte 0
  loc_B3100C: LitStr "right"
  loc_B3100F: LitI4 1
  loc_B31014: FLdPr Me
  loc_B31017: MemLdStr global_88
  loc_B3101A: Ary1LdPr
  loc_B3101B: MemLdStr global_120
  loc_B3101E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B31023: CVarStr var_B4
  loc_B31026: PopAdLdVar
  loc_B31027: FLdPr Me
  loc_B3102A: MemLdRfVar from_stack_1.global_64
  loc_B3102D: LdPrVar
  loc_B3102F: LateMemCall
  loc_B31035: FFree1Var var_B4 = ""
  loc_B31038: LitVarStr var_94, "  </tr>"
  loc_B3103D: PopAdLdVar
  loc_B3103E: FLdPr Me
  loc_B31041: MemLdRfVar from_stack_1.global_64
  loc_B31044: LdPrVar
  loc_B31046: LateMemCall
  loc_B3104C: FLdPr Me
  loc_B3104F: MemLdStr DetaDeva
  loc_B31052: LitStr vbNullString
  loc_B31055: NeStr
  loc_B31057: BranchF loc_B310AB
  loc_B3105A: LitVarStr var_94, "  <tr>"
  loc_B3105F: PopAdLdVar
  loc_B31060: FLdPr Me
  loc_B31063: MemLdRfVar from_stack_1.global_64
  loc_B31066: LdPrVar
  loc_B31068: LateMemCall
  loc_B3106E: LitStr "    <td colspan=""7"" align=""justify"" valign=""top"">Detalle: "
  loc_B31071: FLdPr Me
  loc_B31074: MemLdStr DetaDeva
  loc_B31077: ConcatStr
  loc_B31078: FStStrNoPop var_B8
  loc_B3107B: LitStr "</td>"
  loc_B3107E: ConcatStr
  loc_B3107F: CVarStr var_B4
  loc_B31082: PopAdLdVar
  loc_B31083: FLdPr Me
  loc_B31086: MemLdRfVar from_stack_1.global_64
  loc_B31089: LdPrVar
  loc_B3108B: LateMemCall
  loc_B31091: FFree1Str var_B8
  loc_B31094: FFree1Var var_B4 = ""
  loc_B31097: LitVarStr var_94, "  </tr>"
  loc_B3109C: PopAdLdVar
  loc_B3109D: FLdPr Me
  loc_B310A0: MemLdRfVar from_stack_1.global_64
  loc_B310A3: LdPrVar
  loc_B310A5: LateMemCall
  loc_B310AB: LitVarStr var_94, "  <tr>"
  loc_B310B0: PopAdLdVar
  loc_B310B1: FLdPr Me
  loc_B310B4: MemLdRfVar from_stack_1.global_64
  loc_B310B7: LdPrVar
  loc_B310B9: LateMemCall
  loc_B310BF: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_B310C4: PopAdLdVar
  loc_B310C5: FLdPr Me
  loc_B310C8: MemLdRfVar from_stack_1.global_64
  loc_B310CB: LdPrVar
  loc_B310CD: LateMemCall
  loc_B310D3: LitVarStr var_94, "    <td colspan=""2"" align=""center"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B310D8: PopAdLdVar
  loc_B310D9: FLdPr Me
  loc_B310DC: MemLdRfVar from_stack_1.global_64
  loc_B310DF: LdPrVar
  loc_B310E1: LateMemCall
  loc_B310E7: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B310EA: LitI4 1
  loc_B310EF: FLdPr Me
  loc_B310F2: MemLdStr global_104
  loc_B310F5: Ary1LdPr
  loc_B310F6: MemLdStr global_4
  loc_B310F9: ConcatStr
  loc_B310FA: FStStrNoPop var_B8
  loc_B310FD: LitStr "</td>"
  loc_B31100: ConcatStr
  loc_B31101: CVarStr var_B4
  loc_B31104: PopAdLdVar
  loc_B31105: FLdPr Me
  loc_B31108: MemLdRfVar from_stack_1.global_64
  loc_B3110B: LdPrVar
  loc_B3110D: LateMemCall
  loc_B31113: FFree1Str var_B8
  loc_B31116: FFree1Var var_B4 = ""
  loc_B31119: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3111C: LitI4 1
  loc_B31121: FLdPr Me
  loc_B31124: MemLdStr global_104
  loc_B31127: Ary1LdPr
  loc_B31128: MemLdStr global_8
  loc_B3112B: ConcatStr
  loc_B3112C: FStStrNoPop var_B8
  loc_B3112F: LitStr "</td>"
  loc_B31132: ConcatStr
  loc_B31133: CVarStr var_B4
  loc_B31136: PopAdLdVar
  loc_B31137: FLdPr Me
  loc_B3113A: MemLdRfVar from_stack_1.global_64
  loc_B3113D: LdPrVar
  loc_B3113F: LateMemCall
  loc_B31145: FFree1Str var_B8
  loc_B31148: FFree1Var var_B4 = ""
  loc_B3114B: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B3114E: LitI4 1
  loc_B31153: FLdPr Me
  loc_B31156: MemLdStr global_104
  loc_B31159: Ary1LdPr
  loc_B3115A: MemLdStr global_12
  loc_B3115D: ConcatStr
  loc_B3115E: FStStrNoPop var_B8
  loc_B31161: LitStr "</td>"
  loc_B31164: ConcatStr
  loc_B31165: CVarStr var_B4
  loc_B31168: PopAdLdVar
  loc_B31169: FLdPr Me
  loc_B3116C: MemLdRfVar from_stack_1.global_64
  loc_B3116F: LdPrVar
  loc_B31171: LateMemCall
  loc_B31177: FFree1Str var_B8
  loc_B3117A: FFree1Var var_B4 = ""
  loc_B3117D: LitStr "    <td align=""right"" class=""Total"">"
  loc_B31180: LitI4 1
  loc_B31185: FLdPr Me
  loc_B31188: MemLdStr global_104
  loc_B3118B: Ary1LdPr
  loc_B3118C: MemLdStr global_16
  loc_B3118F: ConcatStr
  loc_B31190: FStStrNoPop var_B8
  loc_B31193: LitStr "</td>"
  loc_B31196: ConcatStr
  loc_B31197: CVarStr var_B4
  loc_B3119A: PopAdLdVar
  loc_B3119B: FLdPr Me
  loc_B3119E: MemLdRfVar from_stack_1.global_64
  loc_B311A1: LdPrVar
  loc_B311A3: LateMemCall
  loc_B311A9: FFree1Str var_B8
  loc_B311AC: FFree1Var var_B4 = ""
  loc_B311AF: LitVarStr var_94, "  </tr>"
  loc_B311B4: PopAdLdVar
  loc_B311B5: FLdPr Me
  loc_B311B8: MemLdRfVar from_stack_1.global_64
  loc_B311BB: LdPrVar
  loc_B311BD: LateMemCall
  loc_B311C3: LitVarStr var_94, "  <tr>"
  loc_B311C8: PopAdLdVar
  loc_B311C9: FLdPr Me
  loc_B311CC: MemLdRfVar from_stack_1.global_64
  loc_B311CF: LdPrVar
  loc_B311D1: LateMemCall
  loc_B311D7: LitStr "    <td colspan=""7"" valign=""top"">SON PESOS: <strong>"
  loc_B311DA: LitI4 1
  loc_B311DF: FLdPr Me
  loc_B311E2: MemLdStr global_104
  loc_B311E5: Ary1LdPr
  loc_B311E6: MemLdStr global_16
  loc_B311E9: CR8Str
  loc_B311EB: PopFPR8
  loc_B311EC: ImpAdCallI2 Proc_272_28_AB2798(, )
  loc_B311F1: FStStrNoPop var_B8
  loc_B311F4: ConcatStr
  loc_B311F5: FStStrNoPop var_BC
  loc_B311F8: LitStr ".---</strong></td>"
  loc_B311FB: ConcatStr
  loc_B311FC: CVarStr var_B4
  loc_B311FF: PopAdLdVar
  loc_B31200: FLdPr Me
  loc_B31203: MemLdRfVar from_stack_1.global_64
  loc_B31206: LdPrVar
  loc_B31208: LateMemCall
  loc_B3120E: FFreeStr var_B8 = ""
  loc_B31215: FFree1Var var_B4 = ""
  loc_B31218: LitVarStr var_94, "  </tr>"
  loc_B3121D: PopAdLdVar
  loc_B3121E: FLdPr Me
  loc_B31221: MemLdRfVar from_stack_1.global_64
  loc_B31224: LdPrVar
  loc_B31226: LateMemCall
  loc_B3122C: LitVarStr var_94, "</table>"
  loc_B31231: PopAdLdVar
  loc_B31232: FLdPr Me
  loc_B31235: MemLdRfVar from_stack_1.global_64
  loc_B31238: LdPrVar
  loc_B3123A: LateMemCall
  loc_B31240: LitVarStr var_94, "<div class=""Normal"">Los recargos por pago fuera de t&eacute;rmino se incluir&aacute;n en la pr&oacute;xima facturaci&oacute;n.</div>"
  loc_B31245: PopAdLdVar
  loc_B31246: FLdPr Me
  loc_B31249: MemLdRfVar from_stack_1.global_64
  loc_B3124C: LdPrVar
  loc_B3124E: LateMemCall
  loc_B31254: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B31257: FLdRfVar var_B8
  loc_B3125A: FLdRfVar var_C0
  loc_B3125D: NewIfNullPr clsparagene
  loc_B31260: from_stack_1v = clsparagene.ObtenerLeyendaBoletos()
  loc_B31265: ILdRf var_B8
  loc_B31268: ConcatStr
  loc_B31269: FStStrNoPop var_BC
  loc_B3126C: LitStr "</div>"
  loc_B3126F: ConcatStr
  loc_B31270: CVarStr var_B4
  loc_B31273: PopAdLdVar
  loc_B31274: FLdPr Me
  loc_B31277: MemLdRfVar from_stack_1.global_64
  loc_B3127A: LdPrVar
  loc_B3127C: LateMemCall
  loc_B31282: FFreeStr var_B8 = ""
  loc_B31289: FFree1Var var_B4 = ""
  loc_B3128C: LitVarStr var_94, "</td>"
  loc_B31291: PopAdLdVar
  loc_B31292: FLdPr Me
  loc_B31295: MemLdRfVar from_stack_1.global_64
  loc_B31298: LdPrVar
  loc_B3129A: LateMemCall
  loc_B312A0: LitVarStr var_94, "</tr></table><hr>"
  loc_B312A5: PopAdLdVar
  loc_B312A6: FLdPr Me
  loc_B312A9: MemLdRfVar from_stack_1.global_64
  loc_B312AC: LdPrVar
  loc_B312AE: LateMemCall
  loc_B312B4: ExitProcHresult
End Function

Private Function Proc_109_34_C3FA28() 'C3FA28
  'Data Table: 4B3968
  loc_C3EDC0: LitI4 1
  loc_C3EDC5: FLdPr Me
  loc_C3EDC8: MemLdStr global_88
  loc_C3EDCB: AryLock
  loc_C3EDCE: Ary1LdRf
  loc_C3EDCF: FStR4 var_8C
  loc_C3EDD2: LitVarStr var_9C, "<table width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_C3EDD7: PopAdLdVar
  loc_C3EDD8: FLdPr Me
  loc_C3EDDB: MemLdRfVar from_stack_1.global_64
  loc_C3EDDE: LdPrVar
  loc_C3EDE0: LateMemCall
  loc_C3EDE6: LitVarStr var_9C, "  <tr>"
  loc_C3EDEB: PopAdLdVar
  loc_C3EDEC: FLdPr Me
  loc_C3EDEF: MemLdRfVar from_stack_1.global_64
  loc_C3EDF2: LdPrVar
  loc_C3EDF4: LateMemCall
  loc_C3EDFA: LitVarStr var_9C, "    <th width=""50" & Chr(37) & """ valign=""top""><table width=""98" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_C3EDFF: PopAdLdVar
  loc_C3EE00: FLdPr Me
  loc_C3EE03: MemLdRfVar from_stack_1.global_64
  loc_C3EE06: LdPrVar
  loc_C3EE08: LateMemCall
  loc_C3EE0E: LitVarStr var_9C, "      <tr>"
  loc_C3EE13: PopAdLdVar
  loc_C3EE14: FLdPr Me
  loc_C3EE17: MemLdRfVar from_stack_1.global_64
  loc_C3EE1A: LdPrVar
  loc_C3EE1C: LateMemCall
  loc_C3EE22: LitVarStr var_AC, "        <td colspan=""4"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_C3EE27: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_C3EE2C: FStVarCopyObj var_BC
  loc_C3EE2F: FLdRfVar var_BC
  loc_C3EE32: FLdRfVar var_CC
  loc_C3EE35: ImpAdCallFPR4  = Ucase()
  loc_C3EE3A: FLdRfVar var_CC
  loc_C3EE3D: ConcatVar var_DC
  loc_C3EE41: LitVarStr var_EC, "<br>"
  loc_C3EE46: ConcatVar var_FC
  loc_C3EE4A: LitVarStr var_10C, "Dirección de Rentas"
  loc_C3EE4F: ConcatVar var_11C
  loc_C3EE53: LitVarStr var_12C, "</td>"
  loc_C3EE58: ConcatVar var_13C
  loc_C3EE5C: PopAdLdVar
  loc_C3EE5D: FLdPr Me
  loc_C3EE60: MemLdRfVar from_stack_1.global_64
  loc_C3EE63: LdPrVar
  loc_C3EE65: LateMemCall
  loc_C3EE6B: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_C3EE7A: LitVarStr var_9C, "        </tr>"
  loc_C3EE7F: PopAdLdVar
  loc_C3EE80: FLdPr Me
  loc_C3EE83: MemLdRfVar from_stack_1.global_64
  loc_C3EE86: LdPrVar
  loc_C3EE88: LateMemCall
  loc_C3EE8E: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_C3EE93: PopAdLdVar
  loc_C3EE94: FLdPr Me
  loc_C3EE97: MemLdRfVar from_stack_1.global_64
  loc_C3EE9A: LdPrVar
  loc_C3EE9C: LateMemCall
  loc_C3EEA2: LitVarStr var_9C, "        <td colspan=""4"">APELLIDO Y NOMBRE</td>"
  loc_C3EEA7: PopAdLdVar
  loc_C3EEA8: FLdPr Me
  loc_C3EEAB: MemLdRfVar from_stack_1.global_64
  loc_C3EEAE: LdPrVar
  loc_C3EEB0: LateMemCall
  loc_C3EEB6: LitVarStr var_9C, "        </tr>"
  loc_C3EEBB: PopAdLdVar
  loc_C3EEBC: FLdPr Me
  loc_C3EEBF: MemLdRfVar from_stack_1.global_64
  loc_C3EEC2: LdPrVar
  loc_C3EEC4: LateMemCall
  loc_C3EECA: LitVarStr var_9C, "      <tr>"
  loc_C3EECF: PopAdLdVar
  loc_C3EED0: FLdPr Me
  loc_C3EED3: MemLdRfVar from_stack_1.global_64
  loc_C3EED6: LdPrVar
  loc_C3EED8: LateMemCall
  loc_C3EEDE: LitStr "        <td colspan=""4"">"
  loc_C3EEE1: FMemLdR4 var_8C(4)
  loc_C3EEE6: ConcatStr
  loc_C3EEE7: FStStrNoPop var_150
  loc_C3EEEA: LitStr "</td>"
  loc_C3EEED: ConcatStr
  loc_C3EEEE: CVarStr var_BC
  loc_C3EEF1: PopAdLdVar
  loc_C3EEF2: FLdPr Me
  loc_C3EEF5: MemLdRfVar from_stack_1.global_64
  loc_C3EEF8: LdPrVar
  loc_C3EEFA: LateMemCall
  loc_C3EF00: FFree1Str var_150
  loc_C3EF03: FFree1Var var_BC = ""
  loc_C3EF06: LitVarStr var_9C, "        </tr>"
  loc_C3EF0B: PopAdLdVar
  loc_C3EF0C: FLdPr Me
  loc_C3EF0F: MemLdRfVar from_stack_1.global_64
  loc_C3EF12: LdPrVar
  loc_C3EF14: LateMemCall
  loc_C3EF1A: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_C3EF1F: PopAdLdVar
  loc_C3EF20: FLdPr Me
  loc_C3EF23: MemLdRfVar from_stack_1.global_64
  loc_C3EF26: LdPrVar
  loc_C3EF28: LateMemCall
  loc_C3EF2E: LitVarStr var_9C, "        <td width=""17" & Chr(37) & """>CUOTA</td>"
  loc_C3EF33: PopAdLdVar
  loc_C3EF34: FLdPr Me
  loc_C3EF37: MemLdRfVar from_stack_1.global_64
  loc_C3EF3A: LdPrVar
  loc_C3EF3C: LateMemCall
  loc_C3EF42: LitVarStr var_9C, "        <td>FACILIDAD</td>"
  loc_C3EF47: PopAdLdVar
  loc_C3EF48: FLdPr Me
  loc_C3EF4B: MemLdRfVar from_stack_1.global_64
  loc_C3EF4E: LdPrVar
  loc_C3EF50: LateMemCall
  loc_C3EF56: LitVarStr var_9C, "        <td width=""32" & Chr(37) & """>USUARIO</td>"
  loc_C3EF5B: PopAdLdVar
  loc_C3EF5C: FLdPr Me
  loc_C3EF5F: MemLdRfVar from_stack_1.global_64
  loc_C3EF62: LdPrVar
  loc_C3EF64: LateMemCall
  loc_C3EF6A: FLdRfVar var_156
  loc_C3EF6D: FLdPr Me
  loc_C3EF70: VCallAd Control_ID_OficinaCbo
  loc_C3EF73: FStAdFunc var_154
  loc_C3EF76: FLdPr var_154
  loc_C3EF79:  = Me.ListIndex
  loc_C3EF7E: FLdRfVar var_160
  loc_C3EF81: FLdI2 var_156
  loc_C3EF84: FLdPr Me
  loc_C3EF87: VCallAd Control_ID_OficinaCbo
  loc_C3EF8A: FStAdFunc var_15C
  loc_C3EF8D: FLdPr var_15C
  loc_C3EF90:  = Me.ItemData
  loc_C3EF95: LitVarStr var_10C, "        <td width=""25" & Chr(37) & """>"
  loc_C3EF9A: LitVarStr var_EC, "OFICINA"
  loc_C3EF9F: FStVarCopyObj var_CC
  loc_C3EFA2: FLdRfVar var_CC
  loc_C3EFA5: LitVarStr var_AC, "CONCEPTO"
  loc_C3EFAA: FStVarCopyObj var_BC
  loc_C3EFAD: FLdRfVar var_BC
  loc_C3EFB0: FLdPr Me
  loc_C3EFB3: MemLdI2 global_92
  loc_C3EFB6: LitI2_Byte 1
  loc_C3EFB8: EqI2
  loc_C3EFB9: ILdRf var_160
  loc_C3EFBC: LitI4 6
  loc_C3EFC1: NeI4
  loc_C3EFC2: AndI4
  loc_C3EFC3: CVarBoolI2 var_9C
  loc_C3EFC7: FLdRfVar var_DC
  loc_C3EFCA: ImpAdCallFPR4  = IIf(, , )
  loc_C3EFCF: FLdRfVar var_DC
  loc_C3EFD2: ConcatVar var_FC
  loc_C3EFD6: LitVarStr var_12C, "</td>"
  loc_C3EFDB: ConcatVar var_11C
  loc_C3EFDF: PopAdLdVar
  loc_C3EFE0: FLdPr Me
  loc_C3EFE3: MemLdRfVar from_stack_1.global_64
  loc_C3EFE6: LdPrVar
  loc_C3EFE8: LateMemCall
  loc_C3EFEE: FFreeAd var_154 = ""
  loc_C3EFF5: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_C3F004: LitVarStr var_9C, "      </tr>"
  loc_C3F009: PopAdLdVar
  loc_C3F00A: FLdPr Me
  loc_C3F00D: MemLdRfVar from_stack_1.global_64
  loc_C3F010: LdPrVar
  loc_C3F012: LateMemCall
  loc_C3F018: LitVarStr var_9C, "      <tr>"
  loc_C3F01D: PopAdLdVar
  loc_C3F01E: FLdPr Me
  loc_C3F021: MemLdRfVar from_stack_1.global_64
  loc_C3F024: LdPrVar
  loc_C3F026: LateMemCall
  loc_C3F02C: LitStr "        <td align=""right"">"
  loc_C3F02F: FMemLdR4 var_8C(100)
  loc_C3F034: ConcatStr
  loc_C3F035: FStStrNoPop var_150
  loc_C3F038: LitStr "</td>"
  loc_C3F03B: ConcatStr
  loc_C3F03C: CVarStr var_BC
  loc_C3F03F: PopAdLdVar
  loc_C3F040: FLdPr Me
  loc_C3F043: MemLdRfVar from_stack_1.global_64
  loc_C3F046: LdPrVar
  loc_C3F048: LateMemCall
  loc_C3F04E: FFree1Str var_150
  loc_C3F051: FFree1Var var_BC = ""
  loc_C3F054: LitStr "        <td align=""right"">"
  loc_C3F057: FMemLdR4 var_8C(96)
  loc_C3F05C: ConcatStr
  loc_C3F05D: FStStrNoPop var_150
  loc_C3F060: LitStr "</td>"
  loc_C3F063: ConcatStr
  loc_C3F064: CVarStr var_BC
  loc_C3F067: PopAdLdVar
  loc_C3F068: FLdPr Me
  loc_C3F06B: MemLdRfVar from_stack_1.global_64
  loc_C3F06E: LdPrVar
  loc_C3F070: LateMemCall
  loc_C3F076: FFree1Str var_150
  loc_C3F079: FFree1Var var_BC = ""
  loc_C3F07C: LitStr "        <td align=""center"">"
  loc_C3F07F: FMemLdR4 var_8C(92)
  loc_C3F084: ConcatStr
  loc_C3F085: FStStrNoPop var_150
  loc_C3F088: LitStr "</td>"
  loc_C3F08B: ConcatStr
  loc_C3F08C: CVarStr var_BC
  loc_C3F08F: PopAdLdVar
  loc_C3F090: FLdPr Me
  loc_C3F093: MemLdRfVar from_stack_1.global_64
  loc_C3F096: LdPrVar
  loc_C3F098: LateMemCall
  loc_C3F09E: FFree1Str var_150
  loc_C3F0A1: FFree1Var var_BC = ""
  loc_C3F0A4: FLdPr Me
  loc_C3F0A7: MemLdI2 global_92
  loc_C3F0AA: LitI2_Byte 1
  loc_C3F0AC: EqI2
  loc_C3F0AD: FLdRfVar var_160
  loc_C3F0B0: FLdRfVar var_156
  loc_C3F0B3: FLdPr Me
  loc_C3F0B6: VCallAd Control_ID_OficinaCbo
  loc_C3F0B9: FStAdFunc var_154
  loc_C3F0BC: FLdPr var_154
  loc_C3F0BF:  = Me.ListIndex
  loc_C3F0C4: FLdI2 var_156
  loc_C3F0C7: FLdPr Me
  loc_C3F0CA: VCallAd Control_ID_OficinaCbo
  loc_C3F0CD: FStAdFunc var_15C
  loc_C3F0D0: FLdPr var_15C
  loc_C3F0D3:  = Me.ItemData
  loc_C3F0D8: ILdRf var_160
  loc_C3F0DB: LitI4 6
  loc_C3F0E0: NeI4
  loc_C3F0E1: AndI4
  loc_C3F0E2: FFreeAd var_154 = ""
  loc_C3F0E9: BranchF loc_C3F133
  loc_C3F0EC: LitStr "        <td align=""right"">"
  loc_C3F0EF: LitI4 1
  loc_C3F0F4: LitI4 1
  loc_C3F0F9: LitI4 1
  loc_C3F0FE: FLdPr Me
  loc_C3F101: MemLdStr global_88
  loc_C3F104: Ary1LdPr
  loc_C3F105: MemLdStr global_128
  loc_C3F108: Ary1LdPr
  loc_C3F109: MemLdStr global_0
  loc_C3F10C: Ary1LdPr
  loc_C3F10D: MemLdStr global_0
  loc_C3F110: ConcatStr
  loc_C3F111: FStStrNoPop var_150
  loc_C3F114: LitStr "</td>"
  loc_C3F117: ConcatStr
  loc_C3F118: CVarStr var_BC
  loc_C3F11B: PopAdLdVar
  loc_C3F11C: FLdPr Me
  loc_C3F11F: MemLdRfVar from_stack_1.global_64
  loc_C3F122: LdPrVar
  loc_C3F124: LateMemCall
  loc_C3F12A: FFree1Str var_150
  loc_C3F12D: FFree1Var var_BC = ""
  loc_C3F130: Branch loc_C3F15B
  loc_C3F133: LitStr "        <td align=""right"">"
  loc_C3F136: FMemLdR4 var_8C(104)
  loc_C3F13B: ConcatStr
  loc_C3F13C: FStStrNoPop var_150
  loc_C3F13F: LitStr "</td>"
  loc_C3F142: ConcatStr
  loc_C3F143: CVarStr var_BC
  loc_C3F146: PopAdLdVar
  loc_C3F147: FLdPr Me
  loc_C3F14A: MemLdRfVar from_stack_1.global_64
  loc_C3F14D: LdPrVar
  loc_C3F14F: LateMemCall
  loc_C3F155: FFree1Str var_150
  loc_C3F158: FFree1Var var_BC = ""
  loc_C3F15B: LitVarStr var_9C, "      </tr>"
  loc_C3F160: PopAdLdVar
  loc_C3F161: FLdPr Me
  loc_C3F164: MemLdRfVar from_stack_1.global_64
  loc_C3F167: LdPrVar
  loc_C3F169: LateMemCall
  loc_C3F16F: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_C3F174: PopAdLdVar
  loc_C3F175: FLdPr Me
  loc_C3F178: MemLdRfVar from_stack_1.global_64
  loc_C3F17B: LdPrVar
  loc_C3F17D: LateMemCall
  loc_C3F183: LitVarStr var_9C, "        <td>CUENTA</td>"
  loc_C3F188: PopAdLdVar
  loc_C3F189: FLdPr Me
  loc_C3F18C: MemLdRfVar from_stack_1.global_64
  loc_C3F18F: LdPrVar
  loc_C3F191: LateMemCall
  loc_C3F197: LitVarStr var_9C, "        <td>BOLETO N&ordm;</td>"
  loc_C3F19C: PopAdLdVar
  loc_C3F19D: FLdPr Me
  loc_C3F1A0: MemLdRfVar from_stack_1.global_64
  loc_C3F1A3: LdPrVar
  loc_C3F1A5: LateMemCall
  loc_C3F1AB: LitVarStr var_9C, "        <td>VENCIMIENTO</td>"
  loc_C3F1B0: PopAdLdVar
  loc_C3F1B1: FLdPr Me
  loc_C3F1B4: MemLdRfVar from_stack_1.global_64
  loc_C3F1B7: LdPrVar
  loc_C3F1B9: LateMemCall
  loc_C3F1BF: LitVarStr var_9C, "        <td>IMPORTE</td>"
  loc_C3F1C4: PopAdLdVar
  loc_C3F1C5: FLdPr Me
  loc_C3F1C8: MemLdRfVar from_stack_1.global_64
  loc_C3F1CB: LdPrVar
  loc_C3F1CD: LateMemCall
  loc_C3F1D3: LitVarStr var_9C, "      </tr>"
  loc_C3F1D8: PopAdLdVar
  loc_C3F1D9: FLdPr Me
  loc_C3F1DC: MemLdRfVar from_stack_1.global_64
  loc_C3F1DF: LdPrVar
  loc_C3F1E1: LateMemCall
  loc_C3F1E7: LitVarStr var_9C, "      <tr>"
  loc_C3F1EC: PopAdLdVar
  loc_C3F1ED: FLdPr Me
  loc_C3F1F0: MemLdRfVar from_stack_1.global_64
  loc_C3F1F3: LdPrVar
  loc_C3F1F5: LateMemCall
  loc_C3F1FB: LitStr "        <td align=""right"">"
  loc_C3F1FE: FMemLdR4 var_8C(36)
  loc_C3F203: ConcatStr
  loc_C3F204: FStStrNoPop var_150
  loc_C3F207: LitStr "</td>"
  loc_C3F20A: ConcatStr
  loc_C3F20B: CVarStr var_BC
  loc_C3F20E: PopAdLdVar
  loc_C3F20F: FLdPr Me
  loc_C3F212: MemLdRfVar from_stack_1.global_64
  loc_C3F215: LdPrVar
  loc_C3F217: LateMemCall
  loc_C3F21D: FFree1Str var_150
  loc_C3F220: FFree1Var var_BC = ""
  loc_C3F223: LitStr "        <td align=""right"">"
  loc_C3F226: FLdPr Me
  loc_C3F229: VCallAd Control_ID_PeriBoleMsk
  loc_C3F22C: FStAdFunc var_154
  loc_C3F22F: FLdPr var_154
  loc_C3F232: LateIdLdVar var_BC DispID_0 0
  loc_C3F239: CStrVarTmp
  loc_C3F23A: FStStrNoPop var_150
  loc_C3F23D: ConcatStr
  loc_C3F23E: FStStrNoPop var_164
  loc_C3F241: LitStr "/"
  loc_C3F244: ConcatStr
  loc_C3F245: FStStrNoPop var_168
  loc_C3F248: FLdPr Me
  loc_C3F24B: VCallAd Control_ID_NumeBoleMsk
  loc_C3F24E: FStAdFunc var_15C
  loc_C3F251: FLdPr var_15C
  loc_C3F254: LateIdLdVar var_CC DispID_0 0
  loc_C3F25B: CStrVarTmp
  loc_C3F25C: FStStrNoPop var_16C
  loc_C3F25F: ConcatStr
  loc_C3F260: FStStrNoPop var_170
  loc_C3F263: LitStr "</td>"
  loc_C3F266: ConcatStr
  loc_C3F267: CVarStr var_DC
  loc_C3F26A: PopAdLdVar
  loc_C3F26B: FLdPr Me
  loc_C3F26E: MemLdRfVar from_stack_1.global_64
  loc_C3F271: LdPrVar
  loc_C3F273: LateMemCall
  loc_C3F279: FFreeStr var_150 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_C3F286: FFreeAd var_154 = ""
  loc_C3F28D: FFreeVar var_BC = "": var_CC = ""
  loc_C3F296: LitStr "        <td align=""right"" class=""Vencimiento"">"
  loc_C3F299: FMemLdR4 var_8C(108)
  loc_C3F29E: ConcatStr
  loc_C3F29F: FStStrNoPop var_150
  loc_C3F2A2: LitStr "</td>"
  loc_C3F2A5: ConcatStr
  loc_C3F2A6: CVarStr var_BC
  loc_C3F2A9: PopAdLdVar
  loc_C3F2AA: FLdPr Me
  loc_C3F2AD: MemLdRfVar from_stack_1.global_64
  loc_C3F2B0: LdPrVar
  loc_C3F2B2: LateMemCall
  loc_C3F2B8: FFree1Str var_150
  loc_C3F2BB: FFree1Var var_BC = ""
  loc_C3F2BE: LitStr "        <td align=""right"">"
  loc_C3F2C1: FMemLdR4 var_8C(124)
  loc_C3F2C6: ConcatStr
  loc_C3F2C7: FStStrNoPop var_150
  loc_C3F2CA: LitStr "</td>"
  loc_C3F2CD: ConcatStr
  loc_C3F2CE: CVarStr var_BC
  loc_C3F2D1: PopAdLdVar
  loc_C3F2D2: FLdPr Me
  loc_C3F2D5: MemLdRfVar from_stack_1.global_64
  loc_C3F2D8: LdPrVar
  loc_C3F2DA: LateMemCall
  loc_C3F2E0: FFree1Str var_150
  loc_C3F2E3: FFree1Var var_BC = ""
  loc_C3F2E6: LitVarStr var_9C, "      </tr>"
  loc_C3F2EB: PopAdLdVar
  loc_C3F2EC: FLdPr Me
  loc_C3F2EF: MemLdRfVar from_stack_1.global_64
  loc_C3F2F2: LdPrVar
  loc_C3F2F4: LateMemCall
  loc_C3F2FA: LitVarStr var_9C, "      <tr align=""left"">"
  loc_C3F2FF: PopAdLdVar
  loc_C3F300: FLdPr Me
  loc_C3F303: MemLdRfVar from_stack_1.global_64
  loc_C3F306: LdPrVar
  loc_C3F308: LateMemCall
  loc_C3F30E: LitVarStr var_9C, "        <td height=""85"" colspan=""4"" class=""Normal""><div>Para TESORER&Iacute;A</div>"
  loc_C3F313: PopAdLdVar
  loc_C3F314: FLdPr Me
  loc_C3F317: MemLdRfVar from_stack_1.global_64
  loc_C3F31A: LdPrVar
  loc_C3F31C: LateMemCall
  loc_C3F322: LitStr "          <div align=""center""><img src=""CT"
  loc_C3F325: LitI4 1
  loc_C3F32A: FLdPr Me
  loc_C3F32D: MemLdStr global_88
  loc_C3F330: Ary1LdPr
  loc_C3F331: MemLdStr global_112
  loc_C3F334: ConcatStr
  loc_C3F335: FStStrNoPop var_150
  loc_C3F338: LitStr ".gif"" width=""120"" height=""40""/><br>"
  loc_C3F33B: ConcatStr
  loc_C3F33C: FStStrNoPop var_164
  loc_C3F33F: LitI4 1
  loc_C3F344: FLdPr Me
  loc_C3F347: MemLdStr global_88
  loc_C3F34A: Ary1LdPr
  loc_C3F34B: MemLdStr global_112
  loc_C3F34E: ConcatStr
  loc_C3F34F: FStStrNoPop var_168
  loc_C3F352: LitStr "</div>"
  loc_C3F355: ConcatStr
  loc_C3F356: CVarStr var_BC
  loc_C3F359: PopAdLdVar
  loc_C3F35A: FLdPr Me
  loc_C3F35D: MemLdRfVar from_stack_1.global_64
  loc_C3F360: LdPrVar
  loc_C3F362: LateMemCall
  loc_C3F368: FFreeStr var_150 = "": var_164 = ""
  loc_C3F371: FFree1Var var_BC = ""
  loc_C3F374: LitVarStr var_9C, "          <div align=""right"">Sellar al dorso</div></td>"
  loc_C3F379: PopAdLdVar
  loc_C3F37A: FLdPr Me
  loc_C3F37D: MemLdRfVar from_stack_1.global_64
  loc_C3F380: LdPrVar
  loc_C3F382: LateMemCall
  loc_C3F388: LitVarStr var_9C, "      </tr>"
  loc_C3F38D: PopAdLdVar
  loc_C3F38E: FLdPr Me
  loc_C3F391: MemLdRfVar from_stack_1.global_64
  loc_C3F394: LdPrVar
  loc_C3F396: LateMemCall
  loc_C3F39C: LitVarStr var_9C, "    </table></th>"
  loc_C3F3A1: PopAdLdVar
  loc_C3F3A2: FLdPr Me
  loc_C3F3A5: MemLdRfVar from_stack_1.global_64
  loc_C3F3A8: LdPrVar
  loc_C3F3AA: LateMemCall
  loc_C3F3B0: LitVarStr var_9C, "    <th width=""50" & Chr(37) & """ valign=""top"">"
  loc_C3F3B5: PopAdLdVar
  loc_C3F3B6: FLdPr Me
  loc_C3F3B9: MemLdRfVar from_stack_1.global_64
  loc_C3F3BC: LdPrVar
  loc_C3F3BE: LateMemCall
  loc_C3F3C4: FLdRfVar var_156
  loc_C3F3C7: FLdPr Me
  loc_C3F3CA: VCallAd Control_ID_BancoChk
  loc_C3F3CD: FStAdFunc var_154
  loc_C3F3D0: FLdPr var_154
  loc_C3F3D3:  = Me.Value
  loc_C3F3D8: FLdI2 var_156
  loc_C3F3DB: CI4UI1
  loc_C3F3DC: LitI4 1
  loc_C3F3E1: EqI4
  loc_C3F3E2: FFree1Ad var_154
  loc_C3F3E5: BranchF loc_C3F9A1
  loc_C3F3E8: LitVarStr var_9C, "    <table width=""98" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_C3F3ED: PopAdLdVar
  loc_C3F3EE: FLdPr Me
  loc_C3F3F1: MemLdRfVar from_stack_1.global_64
  loc_C3F3F4: LdPrVar
  loc_C3F3F6: LateMemCall
  loc_C3F3FC: LitVarStr var_9C, "      <tr>"
  loc_C3F401: PopAdLdVar
  loc_C3F402: FLdPr Me
  loc_C3F405: MemLdRfVar from_stack_1.global_64
  loc_C3F408: LdPrVar
  loc_C3F40A: LateMemCall
  loc_C3F410: LitVarStr var_AC, "        <td colspan=""4"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_C3F415: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_C3F41A: FStVarCopyObj var_BC
  loc_C3F41D: FLdRfVar var_BC
  loc_C3F420: FLdRfVar var_CC
  loc_C3F423: ImpAdCallFPR4  = Ucase()
  loc_C3F428: FLdRfVar var_CC
  loc_C3F42B: ConcatVar var_DC
  loc_C3F42F: LitVarStr var_EC, "<br>"
  loc_C3F434: ConcatVar var_FC
  loc_C3F438: LitVarStr var_10C, "Dirección de Rentas"
  loc_C3F43D: ConcatVar var_11C
  loc_C3F441: LitVarStr var_12C, "</td>"
  loc_C3F446: ConcatVar var_13C
  loc_C3F44A: PopAdLdVar
  loc_C3F44B: FLdPr Me
  loc_C3F44E: MemLdRfVar from_stack_1.global_64
  loc_C3F451: LdPrVar
  loc_C3F453: LateMemCall
  loc_C3F459: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_C3F468: LitVarStr var_9C, "        </tr>"
  loc_C3F46D: PopAdLdVar
  loc_C3F46E: FLdPr Me
  loc_C3F471: MemLdRfVar from_stack_1.global_64
  loc_C3F474: LdPrVar
  loc_C3F476: LateMemCall
  loc_C3F47C: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_C3F481: PopAdLdVar
  loc_C3F482: FLdPr Me
  loc_C3F485: MemLdRfVar from_stack_1.global_64
  loc_C3F488: LdPrVar
  loc_C3F48A: LateMemCall
  loc_C3F490: LitVarStr var_9C, "        <td colspan=""4"">APELLIDO Y NOMBRE</td>"
  loc_C3F495: PopAdLdVar
  loc_C3F496: FLdPr Me
  loc_C3F499: MemLdRfVar from_stack_1.global_64
  loc_C3F49C: LdPrVar
  loc_C3F49E: LateMemCall
  loc_C3F4A4: LitVarStr var_9C, "        </tr>"
  loc_C3F4A9: PopAdLdVar
  loc_C3F4AA: FLdPr Me
  loc_C3F4AD: MemLdRfVar from_stack_1.global_64
  loc_C3F4B0: LdPrVar
  loc_C3F4B2: LateMemCall
  loc_C3F4B8: LitVarStr var_9C, "      <tr>"
  loc_C3F4BD: PopAdLdVar
  loc_C3F4BE: FLdPr Me
  loc_C3F4C1: MemLdRfVar from_stack_1.global_64
  loc_C3F4C4: LdPrVar
  loc_C3F4C6: LateMemCall
  loc_C3F4CC: LitStr "        <td colspan=""4"">"
  loc_C3F4CF: FMemLdR4 var_8C(4)
  loc_C3F4D4: ConcatStr
  loc_C3F4D5: FStStrNoPop var_150
  loc_C3F4D8: LitStr "</td>"
  loc_C3F4DB: ConcatStr
  loc_C3F4DC: CVarStr var_BC
  loc_C3F4DF: PopAdLdVar
  loc_C3F4E0: FLdPr Me
  loc_C3F4E3: MemLdRfVar from_stack_1.global_64
  loc_C3F4E6: LdPrVar
  loc_C3F4E8: LateMemCall
  loc_C3F4EE: FFree1Str var_150
  loc_C3F4F1: FFree1Var var_BC = ""
  loc_C3F4F4: LitVarStr var_9C, "        </tr>"
  loc_C3F4F9: PopAdLdVar
  loc_C3F4FA: FLdPr Me
  loc_C3F4FD: MemLdRfVar from_stack_1.global_64
  loc_C3F500: LdPrVar
  loc_C3F502: LateMemCall
  loc_C3F508: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_C3F50D: PopAdLdVar
  loc_C3F50E: FLdPr Me
  loc_C3F511: MemLdRfVar from_stack_1.global_64
  loc_C3F514: LdPrVar
  loc_C3F516: LateMemCall
  loc_C3F51C: LitVarStr var_9C, "        <td width=""17" & Chr(37) & """>CUOTA</td>"
  loc_C3F521: PopAdLdVar
  loc_C3F522: FLdPr Me
  loc_C3F525: MemLdRfVar from_stack_1.global_64
  loc_C3F528: LdPrVar
  loc_C3F52A: LateMemCall
  loc_C3F530: LitVarStr var_9C, "        <td>FACILIDAD</td>"
  loc_C3F535: PopAdLdVar
  loc_C3F536: FLdPr Me
  loc_C3F539: MemLdRfVar from_stack_1.global_64
  loc_C3F53C: LdPrVar
  loc_C3F53E: LateMemCall
  loc_C3F544: LitVarStr var_9C, "        <td width=""32" & Chr(37) & """>USUARIO</td>"
  loc_C3F549: PopAdLdVar
  loc_C3F54A: FLdPr Me
  loc_C3F54D: MemLdRfVar from_stack_1.global_64
  loc_C3F550: LdPrVar
  loc_C3F552: LateMemCall
  loc_C3F558: FLdRfVar var_156
  loc_C3F55B: FLdPr Me
  loc_C3F55E: VCallAd Control_ID_OficinaCbo
  loc_C3F561: FStAdFunc var_154
  loc_C3F564: FLdPr var_154
  loc_C3F567:  = Me.ListIndex
  loc_C3F56C: FLdRfVar var_160
  loc_C3F56F: FLdI2 var_156
  loc_C3F572: FLdPr Me
  loc_C3F575: VCallAd Control_ID_OficinaCbo
  loc_C3F578: FStAdFunc var_15C
  loc_C3F57B: FLdPr var_15C
  loc_C3F57E:  = Me.ItemData
  loc_C3F583: LitVarStr var_10C, "        <td width=""25" & Chr(37) & """>"
  loc_C3F588: LitVarStr var_EC, "OFICINA"
  loc_C3F58D: FStVarCopyObj var_CC
  loc_C3F590: FLdRfVar var_CC
  loc_C3F593: LitVarStr var_AC, "CONCEPTO"
  loc_C3F598: FStVarCopyObj var_BC
  loc_C3F59B: FLdRfVar var_BC
  loc_C3F59E: FLdPr Me
  loc_C3F5A1: MemLdI2 global_92
  loc_C3F5A4: LitI2_Byte 1
  loc_C3F5A6: EqI2
  loc_C3F5A7: ILdRf var_160
  loc_C3F5AA: LitI4 6
  loc_C3F5AF: NeI4
  loc_C3F5B0: AndI4
  loc_C3F5B1: CVarBoolI2 var_9C
  loc_C3F5B5: FLdRfVar var_DC
  loc_C3F5B8: ImpAdCallFPR4  = IIf(, , )
  loc_C3F5BD: FLdRfVar var_DC
  loc_C3F5C0: ConcatVar var_FC
  loc_C3F5C4: LitVarStr var_12C, "</td>"
  loc_C3F5C9: ConcatVar var_11C
  loc_C3F5CD: PopAdLdVar
  loc_C3F5CE: FLdPr Me
  loc_C3F5D1: MemLdRfVar from_stack_1.global_64
  loc_C3F5D4: LdPrVar
  loc_C3F5D6: LateMemCall
  loc_C3F5DC: FFreeAd var_154 = ""
  loc_C3F5E3: FFreeVar var_9C = "": var_BC = "": var_CC = "": var_DC = "": var_FC = ""
  loc_C3F5F2: LitVarStr var_9C, "      </tr>"
  loc_C3F5F7: PopAdLdVar
  loc_C3F5F8: FLdPr Me
  loc_C3F5FB: MemLdRfVar from_stack_1.global_64
  loc_C3F5FE: LdPrVar
  loc_C3F600: LateMemCall
  loc_C3F606: LitVarStr var_9C, "      <tr>"
  loc_C3F60B: PopAdLdVar
  loc_C3F60C: FLdPr Me
  loc_C3F60F: MemLdRfVar from_stack_1.global_64
  loc_C3F612: LdPrVar
  loc_C3F614: LateMemCall
  loc_C3F61A: LitStr "        <td align=""right"">"
  loc_C3F61D: FMemLdR4 var_8C(100)
  loc_C3F622: ConcatStr
  loc_C3F623: FStStrNoPop var_150
  loc_C3F626: LitStr "</td>"
  loc_C3F629: ConcatStr
  loc_C3F62A: CVarStr var_BC
  loc_C3F62D: PopAdLdVar
  loc_C3F62E: FLdPr Me
  loc_C3F631: MemLdRfVar from_stack_1.global_64
  loc_C3F634: LdPrVar
  loc_C3F636: LateMemCall
  loc_C3F63C: FFree1Str var_150
  loc_C3F63F: FFree1Var var_BC = ""
  loc_C3F642: LitStr "        <td align=""right"">"
  loc_C3F645: FMemLdR4 var_8C(96)
  loc_C3F64A: ConcatStr
  loc_C3F64B: FStStrNoPop var_150
  loc_C3F64E: LitStr "</td>"
  loc_C3F651: ConcatStr
  loc_C3F652: CVarStr var_BC
  loc_C3F655: PopAdLdVar
  loc_C3F656: FLdPr Me
  loc_C3F659: MemLdRfVar from_stack_1.global_64
  loc_C3F65C: LdPrVar
  loc_C3F65E: LateMemCall
  loc_C3F664: FFree1Str var_150
  loc_C3F667: FFree1Var var_BC = ""
  loc_C3F66A: LitStr "        <td align=""center"">"
  loc_C3F66D: FMemLdR4 var_8C(92)
  loc_C3F672: ConcatStr
  loc_C3F673: FStStrNoPop var_150
  loc_C3F676: LitStr "</td>"
  loc_C3F679: ConcatStr
  loc_C3F67A: CVarStr var_BC
  loc_C3F67D: PopAdLdVar
  loc_C3F67E: FLdPr Me
  loc_C3F681: MemLdRfVar from_stack_1.global_64
  loc_C3F684: LdPrVar
  loc_C3F686: LateMemCall
  loc_C3F68C: FFree1Str var_150
  loc_C3F68F: FFree1Var var_BC = ""
  loc_C3F692: FLdPr Me
  loc_C3F695: MemLdI2 global_92
  loc_C3F698: LitI2_Byte 1
  loc_C3F69A: EqI2
  loc_C3F69B: FLdRfVar var_160
  loc_C3F69E: FLdRfVar var_156
  loc_C3F6A1: FLdPr Me
  loc_C3F6A4: VCallAd Control_ID_OficinaCbo
  loc_C3F6A7: FStAdFunc var_154
  loc_C3F6AA: FLdPr var_154
  loc_C3F6AD:  = Me.ListIndex
  loc_C3F6B2: FLdI2 var_156
  loc_C3F6B5: FLdPr Me
  loc_C3F6B8: VCallAd Control_ID_OficinaCbo
  loc_C3F6BB: FStAdFunc var_15C
  loc_C3F6BE: FLdPr var_15C
  loc_C3F6C1:  = Me.ItemData
  loc_C3F6C6: ILdRf var_160
  loc_C3F6C9: LitI4 6
  loc_C3F6CE: NeI4
  loc_C3F6CF: AndI4
  loc_C3F6D0: FFreeAd var_154 = ""
  loc_C3F6D7: BranchF loc_C3F721
  loc_C3F6DA: LitStr "        <td align=""right"">"
  loc_C3F6DD: LitI4 1
  loc_C3F6E2: LitI4 1
  loc_C3F6E7: LitI4 1
  loc_C3F6EC: FLdPr Me
  loc_C3F6EF: MemLdStr global_88
  loc_C3F6F2: Ary1LdPr
  loc_C3F6F3: MemLdStr global_128
  loc_C3F6F6: Ary1LdPr
  loc_C3F6F7: MemLdStr global_0
  loc_C3F6FA: Ary1LdPr
  loc_C3F6FB: MemLdStr global_0
  loc_C3F6FE: ConcatStr
  loc_C3F6FF: FStStrNoPop var_150
  loc_C3F702: LitStr "</td>"
  loc_C3F705: ConcatStr
  loc_C3F706: CVarStr var_BC
  loc_C3F709: PopAdLdVar
  loc_C3F70A: FLdPr Me
  loc_C3F70D: MemLdRfVar from_stack_1.global_64
  loc_C3F710: LdPrVar
  loc_C3F712: LateMemCall
  loc_C3F718: FFree1Str var_150
  loc_C3F71B: FFree1Var var_BC = ""
  loc_C3F71E: Branch loc_C3F749
  loc_C3F721: LitStr "        <td align=""right"">"
  loc_C3F724: FMemLdR4 var_8C(104)
  loc_C3F729: ConcatStr
  loc_C3F72A: FStStrNoPop var_150
  loc_C3F72D: LitStr "</td>"
  loc_C3F730: ConcatStr
  loc_C3F731: CVarStr var_BC
  loc_C3F734: PopAdLdVar
  loc_C3F735: FLdPr Me
  loc_C3F738: MemLdRfVar from_stack_1.global_64
  loc_C3F73B: LdPrVar
  loc_C3F73D: LateMemCall
  loc_C3F743: FFree1Str var_150
  loc_C3F746: FFree1Var var_BC = ""
  loc_C3F749: LitVarStr var_9C, "      </tr>"
  loc_C3F74E: PopAdLdVar
  loc_C3F74F: FLdPr Me
  loc_C3F752: MemLdRfVar from_stack_1.global_64
  loc_C3F755: LdPrVar
  loc_C3F757: LateMemCall
  loc_C3F75D: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_C3F762: PopAdLdVar
  loc_C3F763: FLdPr Me
  loc_C3F766: MemLdRfVar from_stack_1.global_64
  loc_C3F769: LdPrVar
  loc_C3F76B: LateMemCall
  loc_C3F771: LitVarStr var_9C, "        <td>CUENTA</td>"
  loc_C3F776: PopAdLdVar
  loc_C3F777: FLdPr Me
  loc_C3F77A: MemLdRfVar from_stack_1.global_64
  loc_C3F77D: LdPrVar
  loc_C3F77F: LateMemCall
  loc_C3F785: LitVarStr var_9C, "        <td>BOLETO N&ordm;</td>"
  loc_C3F78A: PopAdLdVar
  loc_C3F78B: FLdPr Me
  loc_C3F78E: MemLdRfVar from_stack_1.global_64
  loc_C3F791: LdPrVar
  loc_C3F793: LateMemCall
  loc_C3F799: LitVarStr var_9C, "        <td>VENCIMIENTO</td>"
  loc_C3F79E: PopAdLdVar
  loc_C3F79F: FLdPr Me
  loc_C3F7A2: MemLdRfVar from_stack_1.global_64
  loc_C3F7A5: LdPrVar
  loc_C3F7A7: LateMemCall
  loc_C3F7AD: LitVarStr var_9C, "        <td>IMPORTE</td>"
  loc_C3F7B2: PopAdLdVar
  loc_C3F7B3: FLdPr Me
  loc_C3F7B6: MemLdRfVar from_stack_1.global_64
  loc_C3F7B9: LdPrVar
  loc_C3F7BB: LateMemCall
  loc_C3F7C1: LitVarStr var_9C, "      </tr>"
  loc_C3F7C6: PopAdLdVar
  loc_C3F7C7: FLdPr Me
  loc_C3F7CA: MemLdRfVar from_stack_1.global_64
  loc_C3F7CD: LdPrVar
  loc_C3F7CF: LateMemCall
  loc_C3F7D5: LitVarStr var_9C, "      <tr>"
  loc_C3F7DA: PopAdLdVar
  loc_C3F7DB: FLdPr Me
  loc_C3F7DE: MemLdRfVar from_stack_1.global_64
  loc_C3F7E1: LdPrVar
  loc_C3F7E3: LateMemCall
  loc_C3F7E9: LitStr "        <td align=""right"">"
  loc_C3F7EC: FMemLdR4 var_8C(36)
  loc_C3F7F1: ConcatStr
  loc_C3F7F2: FStStrNoPop var_150
  loc_C3F7F5: LitStr "</td>"
  loc_C3F7F8: ConcatStr
  loc_C3F7F9: CVarStr var_BC
  loc_C3F7FC: PopAdLdVar
  loc_C3F7FD: FLdPr Me
  loc_C3F800: MemLdRfVar from_stack_1.global_64
  loc_C3F803: LdPrVar
  loc_C3F805: LateMemCall
  loc_C3F80B: FFree1Str var_150
  loc_C3F80E: FFree1Var var_BC = ""
  loc_C3F811: LitStr "        <td align=""right"">"
  loc_C3F814: FLdPr Me
  loc_C3F817: VCallAd Control_ID_PeriBoleMsk
  loc_C3F81A: FStAdFunc var_154
  loc_C3F81D: FLdPr var_154
  loc_C3F820: LateIdLdVar var_BC DispID_0 0
  loc_C3F827: CStrVarTmp
  loc_C3F828: FStStrNoPop var_150
  loc_C3F82B: ConcatStr
  loc_C3F82C: FStStrNoPop var_164
  loc_C3F82F: LitStr "/"
  loc_C3F832: ConcatStr
  loc_C3F833: FStStrNoPop var_168
  loc_C3F836: FLdPr Me
  loc_C3F839: VCallAd Control_ID_NumeBoleMsk
  loc_C3F83C: FStAdFunc var_15C
  loc_C3F83F: FLdPr var_15C
  loc_C3F842: LateIdLdVar var_CC DispID_0 0
  loc_C3F849: CStrVarTmp
  loc_C3F84A: FStStrNoPop var_16C
  loc_C3F84D: ConcatStr
  loc_C3F84E: FStStrNoPop var_170
  loc_C3F851: LitStr "</td>"
  loc_C3F854: ConcatStr
  loc_C3F855: CVarStr var_DC
  loc_C3F858: PopAdLdVar
  loc_C3F859: FLdPr Me
  loc_C3F85C: MemLdRfVar from_stack_1.global_64
  loc_C3F85F: LdPrVar
  loc_C3F861: LateMemCall
  loc_C3F867: FFreeStr var_150 = "": var_164 = "": var_168 = "": var_16C = ""
  loc_C3F874: FFreeAd var_154 = ""
  loc_C3F87B: FFreeVar var_BC = "": var_CC = ""
  loc_C3F884: LitStr "        <td align=""right"" class=""Vencimiento"">"
  loc_C3F887: FMemLdR4 var_8C(108)
  loc_C3F88C: ConcatStr
  loc_C3F88D: FStStrNoPop var_150
  loc_C3F890: LitStr "</td>"
  loc_C3F893: ConcatStr
  loc_C3F894: CVarStr var_BC
  loc_C3F897: PopAdLdVar
  loc_C3F898: FLdPr Me
  loc_C3F89B: MemLdRfVar from_stack_1.global_64
  loc_C3F89E: LdPrVar
  loc_C3F8A0: LateMemCall
  loc_C3F8A6: FFree1Str var_150
  loc_C3F8A9: FFree1Var var_BC = ""
  loc_C3F8AC: LitStr "        <td align=""right"">"
  loc_C3F8AF: FMemLdR4 var_8C(124)
  loc_C3F8B4: ConcatStr
  loc_C3F8B5: FStStrNoPop var_150
  loc_C3F8B8: LitStr "</td>"
  loc_C3F8BB: ConcatStr
  loc_C3F8BC: CVarStr var_BC
  loc_C3F8BF: PopAdLdVar
  loc_C3F8C0: FLdPr Me
  loc_C3F8C3: MemLdRfVar from_stack_1.global_64
  loc_C3F8C6: LdPrVar
  loc_C3F8C8: LateMemCall
  loc_C3F8CE: FFree1Str var_150
  loc_C3F8D1: FFree1Var var_BC = ""
  loc_C3F8D4: LitVarStr var_9C, "      </tr>"
  loc_C3F8D9: PopAdLdVar
  loc_C3F8DA: FLdPr Me
  loc_C3F8DD: MemLdRfVar from_stack_1.global_64
  loc_C3F8E0: LdPrVar
  loc_C3F8E2: LateMemCall
  loc_C3F8E8: LitVarStr var_9C, "      <tr align=""left"">"
  loc_C3F8ED: PopAdLdVar
  loc_C3F8EE: FLdPr Me
  loc_C3F8F1: MemLdRfVar from_stack_1.global_64
  loc_C3F8F4: LdPrVar
  loc_C3F8F6: LateMemCall
  loc_C3F8FC: LitVarStr var_9C, "          <td height=""85"" colspan=""4"" class=""Normal""><div>Para el BANCO</div>"
  loc_C3F901: PopAdLdVar
  loc_C3F902: FLdPr Me
  loc_C3F905: MemLdRfVar from_stack_1.global_64
  loc_C3F908: LdPrVar
  loc_C3F90A: LateMemCall
  loc_C3F910: LitStr "          <div align=""center""><img src=""CB"
  loc_C3F913: LitI4 1
  loc_C3F918: FLdPr Me
  loc_C3F91B: MemLdStr global_88
  loc_C3F91E: Ary1LdPr
  loc_C3F91F: MemLdStr global_116
  loc_C3F922: ConcatStr
  loc_C3F923: FStStrNoPop var_150
  loc_C3F926: LitStr ".gif"" width=""190"" height=""40""/><br>"
  loc_C3F929: ConcatStr
  loc_C3F92A: FStStrNoPop var_164
  loc_C3F92D: LitI4 1
  loc_C3F932: FLdPr Me
  loc_C3F935: MemLdStr global_88
  loc_C3F938: Ary1LdPr
  loc_C3F939: MemLdStr global_116
  loc_C3F93C: ConcatStr
  loc_C3F93D: FStStrNoPop var_168
  loc_C3F940: LitStr "</div>"
  loc_C3F943: ConcatStr
  loc_C3F944: CVarStr var_BC
  loc_C3F947: PopAdLdVar
  loc_C3F948: FLdPr Me
  loc_C3F94B: MemLdRfVar from_stack_1.global_64
  loc_C3F94E: LdPrVar
  loc_C3F950: LateMemCall
  loc_C3F956: FFreeStr var_150 = "": var_164 = ""
  loc_C3F95F: FFree1Var var_BC = ""
  loc_C3F962: LitVarStr var_9C, "          <div align=""right"">Sellar al dorso</div></td>"
  loc_C3F967: PopAdLdVar
  loc_C3F968: FLdPr Me
  loc_C3F96B: MemLdRfVar from_stack_1.global_64
  loc_C3F96E: LdPrVar
  loc_C3F970: LateMemCall
  loc_C3F976: LitVarStr var_9C, "      </tr>"
  loc_C3F97B: PopAdLdVar
  loc_C3F97C: FLdPr Me
  loc_C3F97F: MemLdRfVar from_stack_1.global_64
  loc_C3F982: LdPrVar
  loc_C3F984: LateMemCall
  loc_C3F98A: LitVarStr var_9C, "    </table>"
  loc_C3F98F: PopAdLdVar
  loc_C3F990: FLdPr Me
  loc_C3F993: MemLdRfVar from_stack_1.global_64
  loc_C3F996: LdPrVar
  loc_C3F998: LateMemCall
  loc_C3F99E: Branch loc_C3F9B5
  loc_C3F9A1: LitVarStr var_9C, "            &nbsp;"
  loc_C3F9A6: PopAdLdVar
  loc_C3F9A7: FLdPr Me
  loc_C3F9AA: MemLdRfVar from_stack_1.global_64
  loc_C3F9AD: LdPrVar
  loc_C3F9AF: LateMemCall
  loc_C3F9B5: LitVarStr var_9C, "  </th></tr>"
  loc_C3F9BA: PopAdLdVar
  loc_C3F9BB: FLdPr Me
  loc_C3F9BE: MemLdRfVar from_stack_1.global_64
  loc_C3F9C1: LdPrVar
  loc_C3F9C3: LateMemCall
  loc_C3F9C9: LitVarStr var_9C, "  <tr class=""Normal"" valign=""top"">"
  loc_C3F9CE: PopAdLdVar
  loc_C3F9CF: FLdPr Me
  loc_C3F9D2: MemLdRfVar from_stack_1.global_64
  loc_C3F9D5: LdPrVar
  loc_C3F9D7: LateMemCall
  loc_C3F9DD: LitVarStr var_9C, "    <td colspan=""3"" align=""left"" valign=""top"" class=""Normal"">www.infogov.com.ar</td>"
  loc_C3F9E2: PopAdLdVar
  loc_C3F9E3: FLdPr Me
  loc_C3F9E6: MemLdRfVar from_stack_1.global_64
  loc_C3F9E9: LdPrVar
  loc_C3F9EB: LateMemCall
  loc_C3F9F1: LitVarStr var_9C, "  </tr>"
  loc_C3F9F6: PopAdLdVar
  loc_C3F9F7: FLdPr Me
  loc_C3F9FA: MemLdRfVar from_stack_1.global_64
  loc_C3F9FD: LdPrVar
  loc_C3F9FF: LateMemCall
  loc_C3FA05: LitVarStr var_9C, "</table>"
  loc_C3FA0A: PopAdLdVar
  loc_C3FA0B: FLdPr Me
  loc_C3FA0E: MemLdRfVar from_stack_1.global_64
  loc_C3FA11: LdPrVar
  loc_C3FA13: LateMemCall
  loc_C3FA19: LitI4 0
  loc_C3FA1E: FStR4 var_8C
  loc_C3FA21: AryUnlock
  loc_C3FA24: ExitProcHresult
  loc_C3FA25: ThisVCallUI1
End Function

Private Function Proc_109_35_9F403C() '9F403C
  'Data Table: 4B3968
  loc_9F4010: LitVarStr var_94, "</body>"
  loc_9F4015: PopAdLdVar
  loc_9F4016: FLdPr Me
  loc_9F4019: MemLdRfVar from_stack_1.global_64
  loc_9F401C: LdPrVar
  loc_9F401E: LateMemCall
  loc_9F4024: LitVarStr var_94, "</html>"
  loc_9F4029: PopAdLdVar
  loc_9F402A: FLdPr Me
  loc_9F402D: MemLdRfVar from_stack_1.global_64
  loc_9F4030: LdPrVar
  loc_9F4032: LateMemCall
  loc_9F4038: ExitProcHresult
  loc_9F4039: UMiCy
End Function
