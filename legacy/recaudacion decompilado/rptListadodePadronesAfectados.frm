VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodePadronesAfectados
  Caption = "Listado de Padrones Afectados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodePadronesAfectados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7800
  ClientHeight = 4572
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4320
    Width = 7800
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptListadodePadronesAfectados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 3240
    Width = 855
    Height = 735
    TabIndex = 8
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodePadronesAfectados.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodePadronesAfectados.frx":0B9C
    Left = 7200
    Top = 1320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 3000
    Width = 1815
    Height = 1215
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3000
    Width = 4095
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 2895
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame4
      Caption = "Ordenar por:"
      Left = 1680
      Top = 1080
      Width = 3975
      Height = 1575
      TabIndex = 15
      Begin VB.OptionButton FenoObinOpt
        Caption = "Fecha de Notificación"
        Left = 1080
        Top = 1080
        Width = 2655
        Height = 300
        TabIndex = 3
      End
      Begin VB.OptionButton DetaPersOpt
        Caption = "Apellido y Nombre"
        Left = 1080
        Top = 720
        Width = 2655
        Height = 300
        TabIndex = 2
      End
      Begin VB.OptionButton CodiInmuOpt
        Caption = "Padrón"
        Left = 1080
        Top = 360
        Width = 2655
        Height = 300
        TabIndex = 1
      End
    End
    Begin VB.ComboBox OrdeObreCbo
      Style = 2
      Left = 3000
      Top = 480
      Width = 2655
      Height = 420
      TabIndex = 0
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5760
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 7
    End
    Begin VB.Label Label1
      Caption = "Ordenanza o Expediente:"
      Left = 165
      Top = 480
      Width = 2700
      Height = 300
      TabIndex = 14
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 3600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptListadodePadronesAfectados.frx":0C00
  End
End

Attribute VB_Name = "rptListadodePadronesAfectados"

Public bGenerado As Boolean

Private Type UDT_1_0055A184
  bStruc(12) As Byte ' String fields: 3
End Type


Private Sub cmdPredeterminada_Click() '9CB13C
  'Data Table: 461A08
  loc_9CB124: LitI2_Byte 0
  loc_9CB126: ILdRf Me
  loc_9CB129: CastAd
  loc_9CB12C: FStAdFunc var_88
  loc_9CB12F: FLdRfVar var_88
  loc_9CB132: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CB137: FFree1Ad var_88
  loc_9CB13A: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A5B75C
  'Data Table: 461A08
  loc_A5B6F8: LitI2_Byte 0
  loc_A5B6FA: FLdPr Me
  loc_A5B6FD: MemStI2 bGenerado
  loc_A5B700: LitI2_Byte 0
  loc_A5B702: ILdRf Me
  loc_A5B705: CastAd
  loc_A5B708: FStAdFunc var_88
  loc_A5B70B: FLdRfVar var_88
  loc_A5B70E: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A5B713: FFree1Ad var_88
  loc_A5B716: LitI2_Byte 0
  loc_A5B718: FLdPr Me
  loc_A5B71B: VCallAd Control_ID_OrdeObreCbo
  loc_A5B71E: FStAdFunc var_88
  loc_A5B721: FLdPr var_88
  loc_A5B724: Me.ListIndex = from_stack_1
  loc_A5B729: FFree1Ad var_88
  loc_A5B72C: LitI2_Byte &HFF
  loc_A5B72E: FLdPr Me
  loc_A5B731: VCallAd Control_ID_CodiInmuOpt
  loc_A5B734: FStAdFunc var_88
  loc_A5B737: FLdPr var_88
  loc_A5B73A: Me.Value = from_stack_1b
  loc_A5B73F: FFree1Ad var_88
  loc_A5B742: Call HabilitarCriterio()
  loc_A5B747: ILdRf Me
  loc_A5B74A: CastAd
  loc_A5B74D: FStAdFunc var_88
  loc_A5B750: FLdRfVar var_88
  loc_A5B753: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A5B758: FFree1Ad var_88
  loc_A5B75B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB0F0
  'Data Table: 461A08
  loc_9CB0D8: ILdRf Me
  loc_9CB0DB: CastAd
  loc_9CB0DE: FStAdFunc var_88
  loc_9CB0E1: FLdRfVar var_88
  loc_9CB0E4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB0E9: FFree1Ad var_88
  loc_9CB0EC: ExitProcHresult
  loc_9CB0ED: Erase
End Sub

Private Sub OrdeObreCbo_Validate(Cancel As Boolean) 'A5F020
  'Data Table: 461A08
  loc_A5EFC4: FLdRfVar var_8C
  loc_A5EFC7: FLdPr Me
  loc_A5EFCA: VCallAd Control_ID_OrdeObreCbo
  loc_A5EFCD: FStAdFunc var_88
  loc_A5EFD0: FLdPr var_88
  loc_A5EFD3:  = Me.Text
  loc_A5EFD8: ILdRf var_8C
  loc_A5EFDB: LitStr " la Ordenanza/Expediente"
  loc_A5EFDE: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A5EFE3: FStStrNoPop var_90
  loc_A5EFE6: FLdPr Me
  loc_A5EFE9: MemStStrCopy
  loc_A5EFED: FFreeStr var_8C = ""
  loc_A5EFF4: FFree1Ad var_88
  loc_A5EFF7: FLdPr Me
  loc_A5EFFA: VCallAd Control_ID_OrdeObreCbo
  loc_A5EFFD: FStAdFuncNoPop
  loc_A5F000: CastAd
  loc_A5F003: FStAdFunc var_94
  loc_A5F006: FLdRfVar var_94
  loc_A5F009: FLdPr Me
  loc_A5F00C: MemLdStr global_92
  loc_A5F00F: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A5F014: IStI2 Cancel
  loc_A5F017: FFreeAd var_88 = ""
  loc_A5F01E: ExitProcHresult
End Sub

Private Sub Form_Load() 'A97CC8
  'Data Table: 461A08
  loc_A97C18: FLdRfVar var_88
  loc_A97C1B: NewIfNullAd
  loc_A97C1E: FStAd var_8C 
  loc_A97C22: LitStr "SELECT * FROM obrareem ORDER BY OrdeObre"
  loc_A97C25: FLdPr var_8C
  loc_A97C28: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_A97C2D: FLdRfVar var_90
  loc_A97C30: FLdPr var_8C
  loc_A97C33: from_stack_1 = clsobrareem.RecordCount
  loc_A97C38: ILdRf var_90
  loc_A97C3B: LitI4 0
  loc_A97C40: GtI4
  loc_A97C41: BranchF loc_A97CA8
  loc_A97C44: FLdPr var_8C
  loc_A97C47: Call clsobrareem.MoveFirst()
  loc_A97C4C: FLdPr Me
  loc_A97C4F: VCallAd Control_ID_OrdeObreCbo
  loc_A97C52: FStAdFunc var_94
  loc_A97C55: FLdPr var_94
  loc_A97C58: Me.Clear
  loc_A97C5D: FFree1Ad var_94
  loc_A97C60: LitVar_Missing var_A8
  loc_A97C63: PopAdLdVar
  loc_A97C64: FLdRfVar var_98
  loc_A97C67: FLdPr var_8C
  loc_A97C6A: from_stack_1 = clsobrareem.OrdeObre
  loc_A97C6F: ILdRf var_98
  loc_A97C72: FLdPr Me
  loc_A97C75: VCallAd Control_ID_OrdeObreCbo
  loc_A97C78: FStAdFunc var_94
  loc_A97C7B: FLdPr var_94
  loc_A97C7E: Me.AddItem from_stack_1, from_stack_2
  loc_A97C83: FFree1Str var_98
  loc_A97C86: FFree1Ad var_94
  loc_A97C89: LitI2_Byte 1
  loc_A97C8B: PopTmpLdAd2 var_AA
  loc_A97C8E: FLdPr var_8C
  loc_A97C91: Call clsobrareem.Move(from_stack_1v)
  loc_A97C96: FLdRfVar var_AA
  loc_A97C99: FLdPr var_8C
  loc_A97C9C: from_stack_1 = clsobrareem.EOF
  loc_A97CA1: FLdI2 var_AA
  loc_A97CA4: NotI4
  loc_A97CA5: BranchT loc_A97C60
  loc_A97CA8: LitNothing
  loc_A97CAA: FStAd var_8C 
  loc_A97CAE: ILdRf Me
  loc_A97CB1: CastAd
  loc_A97CB4: FStAdFunc var_94
  loc_A97CB7: FLdRfVar var_94
  loc_A97CBA: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A97CBF: FFree1Ad var_94
  loc_A97CC2: Call cmdNueva_Click()
  loc_A97CC7: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CB1D4
  'Data Table: 461A08
  loc_9CB1BC: FLdPr Me
  loc_9CB1BF: VCallAd Control_ID_wbbReporte
  loc_9CB1C2: FStAdFunc var_88
  loc_9CB1C5: FLdRfVar var_88
  loc_9CB1C8: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CB1CD: FFree1Ad var_88
  loc_9CB1D0: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E07DC
  'Data Table: 461A08
  loc_9E07C0: LitI2_Byte 0
  loc_9E07C2: PopTmpLdAd2 var_8A
  loc_9E07C5: ILdRf Me
  loc_9E07C8: CastAd
  loc_9E07CB: FStAdFunc var_88
  loc_9E07CE: FLdRfVar var_88
  loc_9E07D1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E07D6: FFree1Ad var_88
  loc_9E07D9: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13870
  'Data Table: 461A08
  loc_A13838: FLdPr Me
  loc_A1383B: VCallAd Control_ID_statusBar
  loc_A1383E: FStAdFunc var_88
  loc_A13841: FLdPr var_88
  loc_A13844: LateIdLdVar var_98 DispID_1 0
  loc_A1384B: CStrVarTmp
  loc_A1384C: CVarStr var_A8
  loc_A1384F: PopAdLdVar
  loc_A13850: FLdPr Me
  loc_A13853: VCallAd Control_ID_statusBar
  loc_A13856: FStAdFunc var_BC
  loc_A13859: FLdPr var_BC
  loc_A1385C: LateIdSt
  loc_A13861: FFreeAd var_88 = ""
  loc_A13868: FFreeVar var_98 = ""
  loc_A1386F: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A06064
  'Data Table: 461A08
  loc_A06034: LitVarStr var_94, "Cerrando..."
  loc_A06039: PopAdLdVar
  loc_A0603A: FLdPr Me
  loc_A0603D: VCallAd Control_ID_statusBar
  loc_A06040: FStAdFunc var_A8
  loc_A06043: FLdPr var_A8
  loc_A06046: LateIdSt
  loc_A0604B: FFree1Ad var_A8
  loc_A0604E: ILdRf Me
  loc_A06051: FStAdNoPop
  loc_A06055: ImpAdLdRf MemVar_D9C5D8
  loc_A06058: NewIfNullPr Global
  loc_A0605B: Global.Unload from_stack_1
  loc_A06060: FFree1Ad var_A8
  loc_A06063: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4625B4
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4625C3
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A73658
  'Data Table: 461A08
  loc_A735F4: LitI4 0
  loc_A735F9: LitI4 3
  loc_A735FE: FLdRfVar var_88
  loc_A73601: Redim
  loc_A7360B: FLdPr Me
  loc_A7360E: VCallAd Control_ID_OrdeObreCbo
  loc_A73611: CVarAd
  loc_A73615: ParmAry1St
  loc_A7361B: FLdPr Me
  loc_A7361E: VCallAd Control_ID_CodiInmuOpt
  loc_A73621: CVarAd
  loc_A73625: ParmAry1St
  loc_A7362B: FLdPr Me
  loc_A7362E: VCallAd Control_ID_DetaPersOpt
  loc_A73631: CVarAd
  loc_A73635: ParmAry1St
  loc_A7363B: FLdPr Me
  loc_A7363E: VCallAd Control_ID_FenoObinOpt
  loc_A73641: CVarAd
  loc_A73645: ParmAry1St
  loc_A7364B: FLdRfVar var_88
  loc_A7364E: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A73653: FLdRfVar var_88
  loc_A73656: Erase
  loc_A73657: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B23A08
  'Data Table: 461A08
  loc_B2376C: FLdPr Me
  loc_B2376F: MemLdI2 bGenerado
  loc_B23772: BranchF loc_B23776
  loc_B23775: ExitProcHresult
  loc_B23776: LitVarStr var_98, "Generando reporte..."
  loc_B2377B: PopAdLdVar
  loc_B2377C: FLdPr Me
  loc_B2377F: VCallAd Control_ID_statusBar
  loc_B23782: FStAdFunc var_AC
  loc_B23785: FLdPr var_AC
  loc_B23788: LateIdSt
  loc_B2378D: FFree1Ad var_AC
  loc_B23790: LitI4 &HB
  loc_B23795: CI2I4
  loc_B23796: FLdPr Me
  loc_B23799: Me.MousePointer = from_stack_1
  loc_B2379E: FLdRfVar var_AE
  loc_B237A1: FLdPr Me
  loc_B237A4: VCallAd Control_ID_CodiInmuOpt
  loc_B237A7: FStAdFunc var_AC
  loc_B237AA: FLdPr var_AC
  loc_B237AD:  = Me.Value
  loc_B237B2: FLdI2 var_AE
  loc_B237B5: FFree1Ad var_AC
  loc_B237B8: BranchF loc_B237C1
  loc_B237BB: LitStr "CodiInmu"
  loc_B237BE: FStStrCopy var_88
  loc_B237C1: FLdRfVar var_AE
  loc_B237C4: FLdPr Me
  loc_B237C7: VCallAd Control_ID_DetaPersOpt
  loc_B237CA: FStAdFunc var_AC
  loc_B237CD: FLdPr var_AC
  loc_B237D0:  = Me.Value
  loc_B237D5: FLdI2 var_AE
  loc_B237D8: FFree1Ad var_AC
  loc_B237DB: BranchF loc_B237E4
  loc_B237DE: LitStr "DetaPers"
  loc_B237E1: FStStrCopy var_88
  loc_B237E4: FLdRfVar var_AE
  loc_B237E7: FLdPr Me
  loc_B237EA: VCallAd Control_ID_FenoObinOpt
  loc_B237ED: FStAdFunc var_AC
  loc_B237F0: FLdPr var_AC
  loc_B237F3:  = Me.Value
  loc_B237F8: FLdI2 var_AE
  loc_B237FB: FFree1Ad var_AC
  loc_B237FE: BranchF loc_B23807
  loc_B23801: LitStr "FenoObin"
  loc_B23804: FStStrCopy var_88
  loc_B23807: FLdPr Me
  loc_B2380A: MemLdRfVar from_stack_1.global_76
  loc_B2380D: NewIfNullAd
  loc_B23810: FStAd var_B4 
  loc_B23814: LitStr "SELECT obreinmu.CodiInmu, DetaPers, FenoObin FROM obreinmu"
  loc_B23817: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu"
  loc_B2381A: ConcatStr
  loc_B2381B: FStStrNoPop var_B8
  loc_B2381E: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers"
  loc_B23821: ConcatStr
  loc_B23822: FStStrNoPop var_BC
  loc_B23825: LitStr " WHERE OrdeObre = '"
  loc_B23828: ConcatStr
  loc_B23829: FStStrNoPop var_C4
  loc_B2382C: FLdRfVar var_C0
  loc_B2382F: FLdPr Me
  loc_B23832: VCallAd Control_ID_OrdeObreCbo
  loc_B23835: FStAdFunc var_AC
  loc_B23838: FLdPr var_AC
  loc_B2383B:  = Me.Text
  loc_B23840: ILdRf var_C0
  loc_B23843: ConcatStr
  loc_B23844: FStStrNoPop var_C8
  loc_B23847: LitStr "' ORDER BY "
  loc_B2384A: ConcatStr
  loc_B2384B: FStStrNoPop var_CC
  loc_B2384E: ILdRf var_88
  loc_B23851: ConcatStr
  loc_B23852: FStStrNoPop var_D0
  loc_B23855: FLdPr var_B4
  loc_B23858: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_B2385D: FFreeStr var_B8 = "": var_BC = "": var_C4 = "": var_C0 = "": var_C8 = "": var_CC = ""
  loc_B2386E: FFree1Ad var_AC
  loc_B23871: FLdRfVar var_D4
  loc_B23874: FLdPr var_B4
  loc_B23877: from_stack_1 = clsobreinmu.RecordCount
  loc_B2387C: ILdRf var_D4
  loc_B2387F: LitI4 0
  loc_B23884: EqI4
  loc_B23885: BranchF loc_B23893
  loc_B23888: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B2388B: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B23890: Branch loc_B239DE
  loc_B23893: LitI4 0
  loc_B23898: FLdRfVar var_D4
  loc_B2389B: FLdPr var_B4
  loc_B2389E: from_stack_1 = clsobreinmu.RecordCount
  loc_B238A3: ILdRf var_D4
  loc_B238A6: FLdPr Me
  loc_B238A9: MemLdRfVar from_stack_1.global_80
  loc_B238AC: Redim
  loc_B238B6: FLdPr var_B4
  loc_B238B9: Call clsobreinmu.MoveFirst()
  loc_B238BE: LitI4 0
  loc_B238C3: FLdPr Me
  loc_B238C6: MemStI4 global_88
  loc_B238C9: LitI4 1
  loc_B238CE: FLdPr Me
  loc_B238D1: MemLdRfVar from_stack_1.global_84
  loc_B238D4: FLdPr Me
  loc_B238D7: MemLdStr global_80
  loc_B238DA: LitI2_Byte 1
  loc_B238DC: FnUBound
  loc_B238DE: ForI4 var_DC
  loc_B238E4: FLdRfVar var_D4
  loc_B238E7: FLdPr var_B4
  loc_B238EA: from_stack_1 = clsobreinmu.CodiInmu
  loc_B238EF: LitI2_Byte 0
  loc_B238F1: LitVar_Missing var_F0
  loc_B238F4: LitI2_Byte 0
  loc_B238F6: ILdRf var_D4
  loc_B238F9: CVarI4
  loc_B238FD: PopAdLdVar
  loc_B238FE: FLdPr Me
  loc_B23901: MemLdStr global_84
  loc_B23904: FLdPr Me
  loc_B23907: MemLdStr global_80
  loc_B2390A: AryLock
  loc_B2390D: Ary1LdPr
  loc_B2390E: MemLdRfVar from_stack_1.global_0
  loc_B23911: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B23916: AryUnlock
  loc_B23919: FFree1Var var_F0 = ""
  loc_B2391C: FLdRfVar var_F0
  loc_B2391F: FLdPr var_B4
  loc_B23922: from_stack_1 = clsobreinmu.DetaPers
  loc_B23927: LitI2_Byte 0
  loc_B23929: LitVar_Missing var_100
  loc_B2392C: LitI2_Byte 0
  loc_B2392E: FLdVar var_F0
  loc_B23932: FLdPr Me
  loc_B23935: MemLdStr global_84
  loc_B23938: FLdPr Me
  loc_B2393B: MemLdStr global_80
  loc_B2393E: AryLock
  loc_B23941: Ary1LdPr
  loc_B23942: MemLdRfVar from_stack_1.global_4
  loc_B23945: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B2394A: AryUnlock
  loc_B2394D: FFreeVar var_F0 = ""
  loc_B23954: FLdRfVar var_F0
  loc_B23957: FLdPr var_B4
  loc_B2395A: from_stack_1 = clsobreinmu.FenoObin
  loc_B2395F: LitI2_Byte 0
  loc_B23961: LitVar_Missing var_100
  loc_B23964: LitI2_Byte 0
  loc_B23966: FLdVar var_F0
  loc_B2396A: FLdPr Me
  loc_B2396D: MemLdStr global_84
  loc_B23970: FLdPr Me
  loc_B23973: MemLdStr global_80
  loc_B23976: AryLock
  loc_B23979: Ary1LdPr
  loc_B2397A: MemLdRfVar from_stack_1.global_8
  loc_B2397D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B23982: AryUnlock
  loc_B23985: FFreeVar var_F0 = ""
  loc_B2398C: FLdRfVar var_F0
  loc_B2398F: FLdPr var_B4
  loc_B23992: from_stack_1 = clsobreinmu.FenoObin
  loc_B23997: FLdRfVar var_F0
  loc_B2399A: ImpAdCallI2 IsNull()
  loc_B2399F: NotI4
  loc_B239A0: FFree1Var var_F0 = ""
  loc_B239A3: BranchF loc_B239B8
  loc_B239A6: FLdPr Me
  loc_B239A9: MemLdStr global_88
  loc_B239AC: LitI4 1
  loc_B239B1: AddI4
  loc_B239B2: FLdPr Me
  loc_B239B5: MemStI4 global_88
  loc_B239B8: LitI2_Byte 1
  loc_B239BA: PopTmpLdAd2 var_AE
  loc_B239BD: FLdPr var_B4
  loc_B239C0: Call clsobreinmu.Move(from_stack_1v)
  loc_B239C5: FLdPr Me
  loc_B239C8: MemLdRfVar from_stack_1.global_84
  loc_B239CB: NextI4 var_DC, loc_B238E4
  loc_B239D0: LitNothing
  loc_B239D2: FStAd var_B4 
  loc_B239D6: LitI2_Byte &HFF
  loc_B239D8: FLdPr Me
  loc_B239DB: MemStI2 bGenerado
  loc_B239DE: LitI4 0
  loc_B239E3: CI2I4
  loc_B239E4: FLdPr Me
  loc_B239E7: Me.MousePointer = from_stack_1
  loc_B239EC: LitVarStr var_98, vbNullString
  loc_B239F1: PopAdLdVar
  loc_B239F2: FLdPr Me
  loc_B239F5: VCallAd Control_ID_statusBar
  loc_B239F8: FStAdFunc var_AC
  loc_B239FB: FLdPr var_AC
  loc_B239FE: LateIdSt
  loc_B23A03: FFree1Ad var_AC
  loc_B23A06: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B04160
  'Data Table: 461A08
  loc_B03F70: FLdRfVar var_88
  loc_B03F73: LitI2_Byte 0
  loc_B03F75: LitI2_Byte &HFF
  loc_B03F77: ImpAdLdI4 MemVar_D93C84
  loc_B03F7A: FLdPr Me
  loc_B03F7D: MemLdRfVar from_stack_1.global_56
  loc_B03F80: NewIfNullPr IFileSystem3
  loc_B03F83: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B03F88: ILdRf var_88
  loc_B03F8B: FLdPr Me
  loc_B03F8E: MemStVarAd
  loc_B03F92: FFree1Ad var_88
  loc_B03F95: LitI2_Byte &HFF
  loc_B03F97: ImpAdStI2 MemVar_D93C8A
  loc_B03F9A: Call Proc_133_14_BAEF60()
  loc_B03F9F: LitI4 1
  loc_B03FA4: FLdPr Me
  loc_B03FA7: MemLdRfVar from_stack_1.global_84
  loc_B03FAA: FLdPr Me
  loc_B03FAD: MemLdStr global_80
  loc_B03FB0: LitI2_Byte 1
  loc_B03FB2: FnUBound
  loc_B03FB4: ForI4 var_90
  loc_B03FBA: FLdPr Me
  loc_B03FBD: MemLdStr global_84
  loc_B03FC0: FLdPr Me
  loc_B03FC3: MemLdStr global_80
  loc_B03FC6: AryLock
  loc_B03FC9: Ary1LdRf
  loc_B03FCA: FStR4 var_98
  loc_B03FCD: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B03FD2: PopAdLdVar
  loc_B03FD3: FLdPr Me
  loc_B03FD6: MemLdRfVar from_stack_1.global_60
  loc_B03FD9: LdPrVar
  loc_B03FDB: LateMemCall
  loc_B03FE1: LitStr vbNullString
  loc_B03FE4: LitI2_Byte 0
  loc_B03FE6: LitI2_Byte 0
  loc_B03FE8: LitI2_Byte 0
  loc_B03FEA: LitStr "right"
  loc_B03FED: FMemLdR4 var_98(0)
  loc_B03FF2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03FF7: CVarStr var_C8
  loc_B03FFA: PopAdLdVar
  loc_B03FFB: FLdPr Me
  loc_B03FFE: MemLdRfVar from_stack_1.global_60
  loc_B04001: LdPrVar
  loc_B04003: LateMemCall
  loc_B04009: FFree1Var var_C8 = ""
  loc_B0400C: LitStr vbNullString
  loc_B0400F: LitI2_Byte 0
  loc_B04011: LitI2_Byte 0
  loc_B04013: LitI2_Byte 0
  loc_B04015: LitStr "left"
  loc_B04018: FMemLdR4 var_98(4)
  loc_B0401D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B04022: CVarStr var_C8
  loc_B04025: PopAdLdVar
  loc_B04026: FLdPr Me
  loc_B04029: MemLdRfVar from_stack_1.global_60
  loc_B0402C: LdPrVar
  loc_B0402E: LateMemCall
  loc_B04034: FFree1Var var_C8 = ""
  loc_B04037: LitStr vbNullString
  loc_B0403A: LitI2_Byte 0
  loc_B0403C: LitI2_Byte 0
  loc_B0403E: LitI2_Byte 0
  loc_B04040: LitStr "center"
  loc_B04043: FMemLdR4 var_98(8)
  loc_B04048: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0404D: CVarStr var_C8
  loc_B04050: PopAdLdVar
  loc_B04051: FLdPr Me
  loc_B04054: MemLdRfVar from_stack_1.global_60
  loc_B04057: LdPrVar
  loc_B04059: LateMemCall
  loc_B0405F: FFree1Var var_C8 = ""
  loc_B04062: LitVarStr var_A8, "     </tr>"
  loc_B04067: PopAdLdVar
  loc_B04068: FLdPr Me
  loc_B0406B: MemLdRfVar from_stack_1.global_60
  loc_B0406E: LdPrVar
  loc_B04070: LateMemCall
  loc_B04076: LitI4 0
  loc_B0407B: FStR4 var_98
  loc_B0407E: AryUnlock
  loc_B04081: FLdPr Me
  loc_B04084: MemLdRfVar from_stack_1.global_84
  loc_B04087: NextI4 var_90, loc_B03FBA
  loc_B0408C: LitVarStr var_A8, "  <tr align=""center"" class=""Totales"">"
  loc_B04091: PopAdLdVar
  loc_B04092: FLdPr Me
  loc_B04095: MemLdRfVar from_stack_1.global_60
  loc_B04098: LdPrVar
  loc_B0409A: LateMemCall
  loc_B040A0: LitStr "    <th colspan=""3"">Inmuebles: "
  loc_B040A3: LitI4 -1
  loc_B040A8: LitI4 0
  loc_B040AD: LitI4 -1
  loc_B040B2: LitI4 0
  loc_B040B7: FLdPr Me
  loc_B040BA: MemLdStr global_80
  loc_B040BD: LitI2_Byte 1
  loc_B040BF: FnUBound
  loc_B040C1: CVarI4
  loc_B040C5: ImpAdCallI2 FormatNumber(, , , , )
  loc_B040CA: FStStrNoPop var_CC
  loc_B040CD: ConcatStr
  loc_B040CE: FStStrNoPop var_D0
  loc_B040D1: LitStr " - Notificados: "
  loc_B040D4: ConcatStr
  loc_B040D5: FStStrNoPop var_D4
  loc_B040D8: LitI4 -1
  loc_B040DD: LitI4 0
  loc_B040E2: LitI4 -1
  loc_B040E7: LitI4 0
  loc_B040EC: FLdPr Me
  loc_B040EF: MemLdRfVar from_stack_1.global_88
  loc_B040F2: CVarRef
  loc_B040F7: ImpAdCallI2 FormatNumber(, , , , )
  loc_B040FC: FStStrNoPop var_D8
  loc_B040FF: ConcatStr
  loc_B04100: FStStrNoPop var_DC
  loc_B04103: LitStr "</th>"
  loc_B04106: ConcatStr
  loc_B04107: CVarStr var_EC
  loc_B0410A: PopAdLdVar
  loc_B0410B: FLdPr Me
  loc_B0410E: MemLdRfVar from_stack_1.global_60
  loc_B04111: LdPrVar
  loc_B04113: LateMemCall
  loc_B04119: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B04126: FFreeVar var_C8 = ""
  loc_B0412D: LitVarStr var_A8, "     </tr>"
  loc_B04132: PopAdLdVar
  loc_B04133: FLdPr Me
  loc_B04136: MemLdRfVar from_stack_1.global_60
  loc_B04139: LdPrVar
  loc_B0413B: LateMemCall
  loc_B04141: Call Proc_133_15_A0D718()
  loc_B04146: FLdPr Me
  loc_B04149: MemLdRfVar from_stack_1.global_60
  loc_B0414C: LdPrVar
  loc_B0414E: LateMemCall
  loc_B04154: LitStr vbNullString
  loc_B04157: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B0415C: ExitProcHresult
  loc_B0415D: FFreeAd var_FFFFFF70 = ""
End Sub

Private Function Proc_133_14_BAEF60() 'BAEF60
  'Data Table: 461A08
  loc_BAE8FC: LitVarStr var_98, "<html>"
  loc_BAE901: PopAdLdVar
  loc_BAE902: FLdPr Me
  loc_BAE905: MemLdRfVar from_stack_1.global_60
  loc_BAE908: LdPrVar
  loc_BAE90A: LateMemCall
  loc_BAE910: LitVarStr var_98, "<head>"
  loc_BAE915: PopAdLdVar
  loc_BAE916: FLdPr Me
  loc_BAE919: MemLdRfVar from_stack_1.global_60
  loc_BAE91C: LdPrVar
  loc_BAE91E: LateMemCall
  loc_BAE924: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BAE929: PopAdLdVar
  loc_BAE92A: FLdPr Me
  loc_BAE92D: MemLdRfVar from_stack_1.global_60
  loc_BAE930: LdPrVar
  loc_BAE932: LateMemCall
  loc_BAE938: LitStr "<title>"
  loc_BAE93B: FLdRfVar var_AC
  loc_BAE93E: FLdPr Me
  loc_BAE941:  = Me.Caption
  loc_BAE946: ILdRf var_AC
  loc_BAE949: ConcatStr
  loc_BAE94A: FStStrNoPop var_B0
  loc_BAE94D: LitStr "</title>"
  loc_BAE950: ConcatStr
  loc_BAE951: CVarStr var_C0
  loc_BAE954: PopAdLdVar
  loc_BAE955: FLdPr Me
  loc_BAE958: MemLdRfVar from_stack_1.global_60
  loc_BAE95B: LdPrVar
  loc_BAE95D: LateMemCall
  loc_BAE963: FFreeStr var_AC = ""
  loc_BAE96A: FFree1Var var_C0 = ""
  loc_BAE96D: LitVarStr var_98, "<style type=""text/css"">"
  loc_BAE972: PopAdLdVar
  loc_BAE973: FLdPr Me
  loc_BAE976: MemLdRfVar from_stack_1.global_60
  loc_BAE979: LdPrVar
  loc_BAE97B: LateMemCall
  loc_BAE981: LitVarStr var_98, ".Titulo1 {"
  loc_BAE986: PopAdLdVar
  loc_BAE987: FLdPr Me
  loc_BAE98A: MemLdRfVar from_stack_1.global_60
  loc_BAE98D: LdPrVar
  loc_BAE98F: LateMemCall
  loc_BAE995: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BAE99A: PopAdLdVar
  loc_BAE99B: FLdPr Me
  loc_BAE99E: MemLdRfVar from_stack_1.global_60
  loc_BAE9A1: LdPrVar
  loc_BAE9A3: LateMemCall
  loc_BAE9A9: LitVarStr var_98, " font-size: 18px;"
  loc_BAE9AE: PopAdLdVar
  loc_BAE9AF: FLdPr Me
  loc_BAE9B2: MemLdRfVar from_stack_1.global_60
  loc_BAE9B5: LdPrVar
  loc_BAE9B7: LateMemCall
  loc_BAE9BD: LitVarStr var_98, " font-weight: bold;"
  loc_BAE9C2: PopAdLdVar
  loc_BAE9C3: FLdPr Me
  loc_BAE9C6: MemLdRfVar from_stack_1.global_60
  loc_BAE9C9: LdPrVar
  loc_BAE9CB: LateMemCall
  loc_BAE9D1: LitVarStr var_98, "}"
  loc_BAE9D6: PopAdLdVar
  loc_BAE9D7: FLdPr Me
  loc_BAE9DA: MemLdRfVar from_stack_1.global_60
  loc_BAE9DD: LdPrVar
  loc_BAE9DF: LateMemCall
  loc_BAE9E5: LitVarStr var_98, ".Titulo2 {"
  loc_BAE9EA: PopAdLdVar
  loc_BAE9EB: FLdPr Me
  loc_BAE9EE: MemLdRfVar from_stack_1.global_60
  loc_BAE9F1: LdPrVar
  loc_BAE9F3: LateMemCall
  loc_BAE9F9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BAE9FE: PopAdLdVar
  loc_BAE9FF: FLdPr Me
  loc_BAEA02: MemLdRfVar from_stack_1.global_60
  loc_BAEA05: LdPrVar
  loc_BAEA07: LateMemCall
  loc_BAEA0D: LitVarStr var_98, " font-size: 14px;"
  loc_BAEA12: PopAdLdVar
  loc_BAEA13: FLdPr Me
  loc_BAEA16: MemLdRfVar from_stack_1.global_60
  loc_BAEA19: LdPrVar
  loc_BAEA1B: LateMemCall
  loc_BAEA21: LitVarStr var_98, " font-weight: bold;"
  loc_BAEA26: PopAdLdVar
  loc_BAEA27: FLdPr Me
  loc_BAEA2A: MemLdRfVar from_stack_1.global_60
  loc_BAEA2D: LdPrVar
  loc_BAEA2F: LateMemCall
  loc_BAEA35: LitVarStr var_98, "}"
  loc_BAEA3A: PopAdLdVar
  loc_BAEA3B: FLdPr Me
  loc_BAEA3E: MemLdRfVar from_stack_1.global_60
  loc_BAEA41: LdPrVar
  loc_BAEA43: LateMemCall
  loc_BAEA49: LitVarStr var_98, ".Normal {"
  loc_BAEA4E: PopAdLdVar
  loc_BAEA4F: FLdPr Me
  loc_BAEA52: MemLdRfVar from_stack_1.global_60
  loc_BAEA55: LdPrVar
  loc_BAEA57: LateMemCall
  loc_BAEA5D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BAEA62: PopAdLdVar
  loc_BAEA63: FLdPr Me
  loc_BAEA66: MemLdRfVar from_stack_1.global_60
  loc_BAEA69: LdPrVar
  loc_BAEA6B: LateMemCall
  loc_BAEA71: LitVarStr var_98, " font-size: 12px;"
  loc_BAEA76: PopAdLdVar
  loc_BAEA77: FLdPr Me
  loc_BAEA7A: MemLdRfVar from_stack_1.global_60
  loc_BAEA7D: LdPrVar
  loc_BAEA7F: LateMemCall
  loc_BAEA85: LitVarStr var_98, " font-style: normal;"
  loc_BAEA8A: PopAdLdVar
  loc_BAEA8B: FLdPr Me
  loc_BAEA8E: MemLdRfVar from_stack_1.global_60
  loc_BAEA91: LdPrVar
  loc_BAEA93: LateMemCall
  loc_BAEA99: LitVarStr var_98, " font-weight: normal;"
  loc_BAEA9E: PopAdLdVar
  loc_BAEA9F: FLdPr Me
  loc_BAEAA2: MemLdRfVar from_stack_1.global_60
  loc_BAEAA5: LdPrVar
  loc_BAEAA7: LateMemCall
  loc_BAEAAD: LitVarStr var_98, " font-variant: normal;"
  loc_BAEAB2: PopAdLdVar
  loc_BAEAB3: FLdPr Me
  loc_BAEAB6: MemLdRfVar from_stack_1.global_60
  loc_BAEAB9: LdPrVar
  loc_BAEABB: LateMemCall
  loc_BAEAC1: LitVarStr var_98, "}"
  loc_BAEAC6: PopAdLdVar
  loc_BAEAC7: FLdPr Me
  loc_BAEACA: MemLdRfVar from_stack_1.global_60
  loc_BAEACD: LdPrVar
  loc_BAEACF: LateMemCall
  loc_BAEAD5: LitVarStr var_98, ".Encabezado {"
  loc_BAEADA: PopAdLdVar
  loc_BAEADB: FLdPr Me
  loc_BAEADE: MemLdRfVar from_stack_1.global_60
  loc_BAEAE1: LdPrVar
  loc_BAEAE3: LateMemCall
  loc_BAEAE9: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BAEAEE: PopAdLdVar
  loc_BAEAEF: FLdPr Me
  loc_BAEAF2: MemLdRfVar from_stack_1.global_60
  loc_BAEAF5: LdPrVar
  loc_BAEAF7: LateMemCall
  loc_BAEAFD: LitVarStr var_98, " font-size: 11px;"
  loc_BAEB02: PopAdLdVar
  loc_BAEB03: FLdPr Me
  loc_BAEB06: MemLdRfVar from_stack_1.global_60
  loc_BAEB09: LdPrVar
  loc_BAEB0B: LateMemCall
  loc_BAEB11: LitVarStr var_98, " font-weight: bold;"
  loc_BAEB16: PopAdLdVar
  loc_BAEB17: FLdPr Me
  loc_BAEB1A: MemLdRfVar from_stack_1.global_60
  loc_BAEB1D: LdPrVar
  loc_BAEB1F: LateMemCall
  loc_BAEB25: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BAEB2A: PopAdLdVar
  loc_BAEB2B: FLdPr Me
  loc_BAEB2E: MemLdRfVar from_stack_1.global_60
  loc_BAEB31: LdPrVar
  loc_BAEB33: LateMemCall
  loc_BAEB39: LitVarStr var_98, "}"
  loc_BAEB3E: PopAdLdVar
  loc_BAEB3F: FLdPr Me
  loc_BAEB42: MemLdRfVar from_stack_1.global_60
  loc_BAEB45: LdPrVar
  loc_BAEB47: LateMemCall
  loc_BAEB4D: LitVarStr var_98, ".LineaDato {"
  loc_BAEB52: PopAdLdVar
  loc_BAEB53: FLdPr Me
  loc_BAEB56: MemLdRfVar from_stack_1.global_60
  loc_BAEB59: LdPrVar
  loc_BAEB5B: LateMemCall
  loc_BAEB61: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BAEB66: PopAdLdVar
  loc_BAEB67: FLdPr Me
  loc_BAEB6A: MemLdRfVar from_stack_1.global_60
  loc_BAEB6D: LdPrVar
  loc_BAEB6F: LateMemCall
  loc_BAEB75: LitVarStr var_98, " font-size: 10px;"
  loc_BAEB7A: PopAdLdVar
  loc_BAEB7B: FLdPr Me
  loc_BAEB7E: MemLdRfVar from_stack_1.global_60
  loc_BAEB81: LdPrVar
  loc_BAEB83: LateMemCall
  loc_BAEB89: LitVarStr var_98, "}"
  loc_BAEB8E: PopAdLdVar
  loc_BAEB8F: FLdPr Me
  loc_BAEB92: MemLdRfVar from_stack_1.global_60
  loc_BAEB95: LdPrVar
  loc_BAEB97: LateMemCall
  loc_BAEB9D: LitVarStr var_98, ".Totales {"
  loc_BAEBA2: PopAdLdVar
  loc_BAEBA3: FLdPr Me
  loc_BAEBA6: MemLdRfVar from_stack_1.global_60
  loc_BAEBA9: LdPrVar
  loc_BAEBAB: LateMemCall
  loc_BAEBB1: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BAEBB6: PopAdLdVar
  loc_BAEBB7: FLdPr Me
  loc_BAEBBA: MemLdRfVar from_stack_1.global_60
  loc_BAEBBD: LdPrVar
  loc_BAEBBF: LateMemCall
  loc_BAEBC5: LitVarStr var_98, " font-size: 12px;"
  loc_BAEBCA: PopAdLdVar
  loc_BAEBCB: FLdPr Me
  loc_BAEBCE: MemLdRfVar from_stack_1.global_60
  loc_BAEBD1: LdPrVar
  loc_BAEBD3: LateMemCall
  loc_BAEBD9: LitVarStr var_98, " font-weight: bold;"
  loc_BAEBDE: PopAdLdVar
  loc_BAEBDF: FLdPr Me
  loc_BAEBE2: MemLdRfVar from_stack_1.global_60
  loc_BAEBE5: LdPrVar
  loc_BAEBE7: LateMemCall
  loc_BAEBED: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BAEBF2: PopAdLdVar
  loc_BAEBF3: FLdPr Me
  loc_BAEBF6: MemLdRfVar from_stack_1.global_60
  loc_BAEBF9: LdPrVar
  loc_BAEBFB: LateMemCall
  loc_BAEC01: LitVarStr var_98, "}"
  loc_BAEC06: PopAdLdVar
  loc_BAEC07: FLdPr Me
  loc_BAEC0A: MemLdRfVar from_stack_1.global_60
  loc_BAEC0D: LdPrVar
  loc_BAEC0F: LateMemCall
  loc_BAEC15: LitVarStr var_98, ".SubTotales {"
  loc_BAEC1A: PopAdLdVar
  loc_BAEC1B: FLdPr Me
  loc_BAEC1E: MemLdRfVar from_stack_1.global_60
  loc_BAEC21: LdPrVar
  loc_BAEC23: LateMemCall
  loc_BAEC29: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BAEC2E: PopAdLdVar
  loc_BAEC2F: FLdPr Me
  loc_BAEC32: MemLdRfVar from_stack_1.global_60
  loc_BAEC35: LdPrVar
  loc_BAEC37: LateMemCall
  loc_BAEC3D: LitVarStr var_98, " font-size: 10px;"
  loc_BAEC42: PopAdLdVar
  loc_BAEC43: FLdPr Me
  loc_BAEC46: MemLdRfVar from_stack_1.global_60
  loc_BAEC49: LdPrVar
  loc_BAEC4B: LateMemCall
  loc_BAEC51: LitVarStr var_98, " font-weight: bold;"
  loc_BAEC56: PopAdLdVar
  loc_BAEC57: FLdPr Me
  loc_BAEC5A: MemLdRfVar from_stack_1.global_60
  loc_BAEC5D: LdPrVar
  loc_BAEC5F: LateMemCall
  loc_BAEC65: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BAEC6A: PopAdLdVar
  loc_BAEC6B: FLdPr Me
  loc_BAEC6E: MemLdRfVar from_stack_1.global_60
  loc_BAEC71: LdPrVar
  loc_BAEC73: LateMemCall
  loc_BAEC79: LitVarStr var_98, "}"
  loc_BAEC7E: PopAdLdVar
  loc_BAEC7F: FLdPr Me
  loc_BAEC82: MemLdRfVar from_stack_1.global_60
  loc_BAEC85: LdPrVar
  loc_BAEC87: LateMemCall
  loc_BAEC8D: LitVarStr var_98, ".Tilde {"
  loc_BAEC92: PopAdLdVar
  loc_BAEC93: FLdPr Me
  loc_BAEC96: MemLdRfVar from_stack_1.global_60
  loc_BAEC99: LdPrVar
  loc_BAEC9B: LateMemCall
  loc_BAECA1: LitVarStr var_98, " font-family: Wingdings;"
  loc_BAECA6: PopAdLdVar
  loc_BAECA7: FLdPr Me
  loc_BAECAA: MemLdRfVar from_stack_1.global_60
  loc_BAECAD: LdPrVar
  loc_BAECAF: LateMemCall
  loc_BAECB5: LitVarStr var_98, " font-size: 12px;"
  loc_BAECBA: PopAdLdVar
  loc_BAECBB: FLdPr Me
  loc_BAECBE: MemLdRfVar from_stack_1.global_60
  loc_BAECC1: LdPrVar
  loc_BAECC3: LateMemCall
  loc_BAECC9: LitVarStr var_98, "}"
  loc_BAECCE: PopAdLdVar
  loc_BAECCF: FLdPr Me
  loc_BAECD2: MemLdRfVar from_stack_1.global_60
  loc_BAECD5: LdPrVar
  loc_BAECD7: LateMemCall
  loc_BAECDD: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BAECE2: PopAdLdVar
  loc_BAECE3: FLdPr Me
  loc_BAECE6: MemLdRfVar from_stack_1.global_60
  loc_BAECE9: LdPrVar
  loc_BAECEB: LateMemCall
  loc_BAECF1: LitVarStr var_98, "</style>"
  loc_BAECF6: PopAdLdVar
  loc_BAECF7: FLdPr Me
  loc_BAECFA: MemLdRfVar from_stack_1.global_60
  loc_BAECFD: LdPrVar
  loc_BAECFF: LateMemCall
  loc_BAED05: LitI4 0
  loc_BAED0A: FStStrCopy var_B0
  loc_BAED0D: FLdRfVar var_B0
  loc_BAED10: LitI4 0
  loc_BAED15: FStStrCopy var_AC
  loc_BAED18: FLdRfVar var_AC
  loc_BAED1B: LitI2_Byte 0
  loc_BAED1D: PopTmpLdAd2 var_C2
  loc_BAED20: FLdPr Me
  loc_BAED23: MemLdRfVar from_stack_1.global_60
  loc_BAED26: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BAED2B: FFreeStr var_AC = ""
  loc_BAED32: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BAED37: PopAdLdVar
  loc_BAED38: FLdPr Me
  loc_BAED3B: MemLdRfVar from_stack_1.global_60
  loc_BAED3E: LdPrVar
  loc_BAED40: LateMemCall
  loc_BAED46: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BAED4B: PopAdLdVar
  loc_BAED4C: FLdPr Me
  loc_BAED4F: MemLdRfVar from_stack_1.global_60
  loc_BAED52: LdPrVar
  loc_BAED54: LateMemCall
  loc_BAED5A: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BAED5D: LitI2_Byte &H5F
  loc_BAED5F: CStrUI1
  loc_BAED61: FStStrNoPop var_AC
  loc_BAED64: ConcatStr
  loc_BAED65: FStStrNoPop var_B0
  loc_BAED68: LitStr """ height="""
  loc_BAED6B: ConcatStr
  loc_BAED6C: FStStrNoPop var_C8
  loc_BAED6F: LitI2_Byte &H3C
  loc_BAED71: CStrUI1
  loc_BAED73: FStStrNoPop var_CC
  loc_BAED76: ConcatStr
  loc_BAED77: FStStrNoPop var_D0
  loc_BAED7A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BAED7D: ConcatStr
  loc_BAED7E: FStStrNoPop var_D4
  loc_BAED81: LitStr "Municipalidad de Guaymallén"
  loc_BAED84: ConcatStr
  loc_BAED85: FStStrNoPop var_D8
  loc_BAED88: LitStr "</p>"
  loc_BAED8B: ConcatStr
  loc_BAED8C: CVarStr var_C0
  loc_BAED8F: PopAdLdVar
  loc_BAED90: FLdPr Me
  loc_BAED93: MemLdRfVar from_stack_1.global_60
  loc_BAED96: LdPrVar
  loc_BAED98: LateMemCall
  loc_BAED9E: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BAEDAF: FFree1Var var_C0 = ""
  loc_BAEDB2: LitStr "    <p>"
  loc_BAEDB5: FLdRfVar var_AC
  loc_BAEDB8: FLdPr Me
  loc_BAEDBB:  = Me.Caption
  loc_BAEDC0: ILdRf var_AC
  loc_BAEDC3: ConcatStr
  loc_BAEDC4: FStStrNoPop var_B0
  loc_BAEDC7: LitStr "</p></th>"
  loc_BAEDCA: ConcatStr
  loc_BAEDCB: CVarStr var_C0
  loc_BAEDCE: PopAdLdVar
  loc_BAEDCF: FLdPr Me
  loc_BAEDD2: MemLdRfVar from_stack_1.global_60
  loc_BAEDD5: LdPrVar
  loc_BAEDD7: LateMemCall
  loc_BAEDDD: FFreeStr var_AC = ""
  loc_BAEDE4: FFree1Var var_C0 = ""
  loc_BAEDE7: LitVarStr var_98, "  </tr>"
  loc_BAEDEC: PopAdLdVar
  loc_BAEDED: FLdPr Me
  loc_BAEDF0: MemLdRfVar from_stack_1.global_60
  loc_BAEDF3: LdPrVar
  loc_BAEDF5: LateMemCall
  loc_BAEDFB: LitVarStr var_98, "  <tr>"
  loc_BAEE00: PopAdLdVar
  loc_BAEE01: FLdPr Me
  loc_BAEE04: MemLdRfVar from_stack_1.global_60
  loc_BAEE07: LdPrVar
  loc_BAEE09: LateMemCall
  loc_BAEE0F: LitVarStr var_98, "    <th><hr></th>"
  loc_BAEE14: PopAdLdVar
  loc_BAEE15: FLdPr Me
  loc_BAEE18: MemLdRfVar from_stack_1.global_60
  loc_BAEE1B: LdPrVar
  loc_BAEE1D: LateMemCall
  loc_BAEE23: LitVarStr var_98, "  </tr>"
  loc_BAEE28: PopAdLdVar
  loc_BAEE29: FLdPr Me
  loc_BAEE2C: MemLdRfVar from_stack_1.global_60
  loc_BAEE2F: LdPrVar
  loc_BAEE31: LateMemCall
  loc_BAEE37: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BAEE3C: PopAdLdVar
  loc_BAEE3D: FLdPr Me
  loc_BAEE40: MemLdRfVar from_stack_1.global_60
  loc_BAEE43: LdPrVar
  loc_BAEE45: LateMemCall
  loc_BAEE4B: LitStr "    <td align=""left""><strong>Ordenanza o Expediente: </strong>"
  loc_BAEE4E: FLdRfVar var_AC
  loc_BAEE51: FLdPr Me
  loc_BAEE54: VCallAd Control_ID_OrdeObreCbo
  loc_BAEE57: FStAdFunc var_DC
  loc_BAEE5A: FLdPr var_DC
  loc_BAEE5D:  = Me.Text
  loc_BAEE62: ILdRf var_AC
  loc_BAEE65: ConcatStr
  loc_BAEE66: CVarStr var_C0
  loc_BAEE69: PopAdLdVar
  loc_BAEE6A: FLdPr Me
  loc_BAEE6D: MemLdRfVar from_stack_1.global_60
  loc_BAEE70: LdPrVar
  loc_BAEE72: LateMemCall
  loc_BAEE78: FFree1Str var_AC
  loc_BAEE7B: FFree1Ad var_DC
  loc_BAEE7E: FFree1Var var_C0 = ""
  loc_BAEE81: LitVarStr var_98, "    </td>"
  loc_BAEE86: PopAdLdVar
  loc_BAEE87: FLdPr Me
  loc_BAEE8A: MemLdRfVar from_stack_1.global_60
  loc_BAEE8D: LdPrVar
  loc_BAEE8F: LateMemCall
  loc_BAEE95: LitVarStr var_98, "  </tr>"
  loc_BAEE9A: PopAdLdVar
  loc_BAEE9B: FLdPr Me
  loc_BAEE9E: MemLdRfVar from_stack_1.global_60
  loc_BAEEA1: LdPrVar
  loc_BAEEA3: LateMemCall
  loc_BAEEA9: LitVarStr var_98, "</table>"
  loc_BAEEAE: PopAdLdVar
  loc_BAEEAF: FLdPr Me
  loc_BAEEB2: MemLdRfVar from_stack_1.global_60
  loc_BAEEB5: LdPrVar
  loc_BAEEB7: LateMemCall
  loc_BAEEBD: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BAEEC2: PopAdLdVar
  loc_BAEEC3: FLdPr Me
  loc_BAEEC6: MemLdRfVar from_stack_1.global_60
  loc_BAEEC9: LdPrVar
  loc_BAEECB: LateMemCall
  loc_BAEED1: LitVarStr var_98, "  <thead>"
  loc_BAEED6: PopAdLdVar
  loc_BAEED7: FLdPr Me
  loc_BAEEDA: MemLdRfVar from_stack_1.global_60
  loc_BAEEDD: LdPrVar
  loc_BAEEDF: LateMemCall
  loc_BAEEE5: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BAEEEA: PopAdLdVar
  loc_BAEEEB: FLdPr Me
  loc_BAEEEE: MemLdRfVar from_stack_1.global_60
  loc_BAEEF1: LdPrVar
  loc_BAEEF3: LateMemCall
  loc_BAEEF9: LitVarStr var_98, "    <th>Padrón</th>"
  loc_BAEEFE: PopAdLdVar
  loc_BAEEFF: FLdPr Me
  loc_BAEF02: MemLdRfVar from_stack_1.global_60
  loc_BAEF05: LdPrVar
  loc_BAEF07: LateMemCall
  loc_BAEF0D: LitVarStr var_98, "    <th>Apellido y Nombre</th>"
  loc_BAEF12: PopAdLdVar
  loc_BAEF13: FLdPr Me
  loc_BAEF16: MemLdRfVar from_stack_1.global_60
  loc_BAEF19: LdPrVar
  loc_BAEF1B: LateMemCall
  loc_BAEF21: LitVarStr var_98, "    <th width=""10" & Chr(37) & """>Fecha de Notificación</th>"
  loc_BAEF26: PopAdLdVar
  loc_BAEF27: FLdPr Me
  loc_BAEF2A: MemLdRfVar from_stack_1.global_60
  loc_BAEF2D: LdPrVar
  loc_BAEF2F: LateMemCall
  loc_BAEF35: LitVarStr var_98, "  </tr>"
  loc_BAEF3A: PopAdLdVar
  loc_BAEF3B: FLdPr Me
  loc_BAEF3E: MemLdRfVar from_stack_1.global_60
  loc_BAEF41: LdPrVar
  loc_BAEF43: LateMemCall
  loc_BAEF49: LitVarStr var_98, "  </thead>"
  loc_BAEF4E: PopAdLdVar
  loc_BAEF4F: FLdPr Me
  loc_BAEF52: MemLdRfVar from_stack_1.global_60
  loc_BAEF55: LdPrVar
  loc_BAEF57: LateMemCall
  loc_BAEF5D: ExitProcHresult
  loc_BAEF5E: EqI2
End Function

Private Function Proc_133_15_A0D718() 'A0D718
  'Data Table: 461A08
  loc_A0D6D8: LitVarStr var_94, "</table>"
  loc_A0D6DD: PopAdLdVar
  loc_A0D6DE: FLdPr Me
  loc_A0D6E1: MemLdRfVar from_stack_1.global_60
  loc_A0D6E4: LdPrVar
  loc_A0D6E6: LateMemCall
  loc_A0D6EC: LitVarStr var_94, "</body>"
  loc_A0D6F1: PopAdLdVar
  loc_A0D6F2: FLdPr Me
  loc_A0D6F5: MemLdRfVar from_stack_1.global_60
  loc_A0D6F8: LdPrVar
  loc_A0D6FA: LateMemCall
  loc_A0D700: LitVarStr var_94, "</html>"
  loc_A0D705: PopAdLdVar
  loc_A0D706: FLdPr Me
  loc_A0D709: MemLdRfVar from_stack_1.global_60
  loc_A0D70C: LdPrVar
  loc_A0D70E: LateMemCall
  loc_A0D714: ExitProcHresult
  loc_A0D715: ILdPr
End Function
