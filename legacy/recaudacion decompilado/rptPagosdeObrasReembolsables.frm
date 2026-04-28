VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptPagosdeObrasReembolsables
  Caption = "Pagos de Obras Reembolsables"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptPagosdeObrasReembolsables.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7800
  ClientHeight = 4080
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
    Top = 3825
    Width = 7800
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptPagosdeObrasReembolsables.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6600
    Top = 2760
    Width = 855
    Height = 735
    TabIndex = 7
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
    Picture = "rptPagosdeObrasReembolsables.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptPagosdeObrasReembolsables.frx":0B9C
    Left = 7200
    Top = 1320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2520
    Width = 1815
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2520
    Width = 4095
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 3
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 2415
    TabIndex = 8
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
      Top = 960
      Width = 3975
      Height = 1215
      TabIndex = 14
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
      Top = 360
      Width = 2655
      Height = 420
      TabIndex = 0
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5880
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
    Begin VB.Label Label1
      Caption = "Ordenanza o Expediente:"
      Left = 165
      Top = 360
      Width = 2700
      Height = 300
      TabIndex = 13
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 3120
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptPagosdeObrasReembolsables.frx":0C00
  End
End

Attribute VB_Name = "rptPagosdeObrasReembolsables"

Public bGenerado As Boolean

Private Type UDT_1_0056237C
  bStruc(16) As Byte ' String fields: 4
End Type

Private Type UDT_2_005670EC
  bStruc(64) As Byte ' String fields: 13
End Type


Private Sub cmdNueva_Click() 'A5BA54
  'Data Table: 4634CC
  loc_A5B9F0: LitI2_Byte 0
  loc_A5B9F2: FLdPr Me
  loc_A5B9F5: MemStI2 bGenerado
  loc_A5B9F8: LitI2_Byte 0
  loc_A5B9FA: ILdRf Me
  loc_A5B9FD: CastAd
  loc_A5BA00: FStAdFunc var_88
  loc_A5BA03: FLdRfVar var_88
  loc_A5BA06: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A5BA0B: FFree1Ad var_88
  loc_A5BA0E: LitI2_Byte 0
  loc_A5BA10: FLdPr Me
  loc_A5BA13: VCallAd Control_ID_OrdeObreCbo
  loc_A5BA16: FStAdFunc var_88
  loc_A5BA19: FLdPr var_88
  loc_A5BA1C: Me.ListIndex = from_stack_1
  loc_A5BA21: FFree1Ad var_88
  loc_A5BA24: LitI2_Byte &HFF
  loc_A5BA26: FLdPr Me
  loc_A5BA29: VCallAd Control_ID_CodiInmuOpt
  loc_A5BA2C: FStAdFunc var_88
  loc_A5BA2F: FLdPr var_88
  loc_A5BA32: Me.Value = from_stack_1b
  loc_A5BA37: FFree1Ad var_88
  loc_A5BA3A: Call HabilitarCriterio()
  loc_A5BA3F: ILdRf Me
  loc_A5BA42: CastAd
  loc_A5BA45: FStAdFunc var_88
  loc_A5BA48: FLdRfVar var_88
  loc_A5BA4B: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A5BA50: FFree1Ad var_88
  loc_A5BA53: ExitProcHresult
End Sub

Private Sub OrdeObreCbo_Validate(Cancel As Boolean) 'A5D4B4
  'Data Table: 4634CC
  loc_A5D458: FLdRfVar var_8C
  loc_A5D45B: FLdPr Me
  loc_A5D45E: VCallAd Control_ID_OrdeObreCbo
  loc_A5D461: FStAdFunc var_88
  loc_A5D464: FLdPr var_88
  loc_A5D467:  = Me.Text
  loc_A5D46C: ILdRf var_8C
  loc_A5D46F: LitStr " la Ordenanza/Expediente"
  loc_A5D472: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A5D477: FStStrNoPop var_90
  loc_A5D47A: FLdPr Me
  loc_A5D47D: MemStStrCopy
  loc_A5D481: FFreeStr var_8C = ""
  loc_A5D488: FFree1Ad var_88
  loc_A5D48B: FLdPr Me
  loc_A5D48E: VCallAd Control_ID_OrdeObreCbo
  loc_A5D491: FStAdFuncNoPop
  loc_A5D494: CastAd
  loc_A5D497: FStAdFunc var_94
  loc_A5D49A: FLdRfVar var_94
  loc_A5D49D: FLdPr Me
  loc_A5D4A0: MemLdStr global_108
  loc_A5D4A3: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A5D4A8: IStI2 Cancel
  loc_A5D4AB: FFreeAd var_88 = ""
  loc_A5D4B2: ExitProcHresult
  loc_A5D4B3: CStrVarTmp
End Sub

Private Sub cmdSalir_Click() '9FFC64
  'Data Table: 4634CC
  loc_9FFC34: LitVarStr var_94, "Cerrando..."
  loc_9FFC39: PopAdLdVar
  loc_9FFC3A: FLdPr Me
  loc_9FFC3D: VCallAd Control_ID_statusBar
  loc_9FFC40: FStAdFunc var_A8
  loc_9FFC43: FLdPr var_A8
  loc_9FFC46: LateIdSt
  loc_9FFC4B: FFree1Ad var_A8
  loc_9FFC4E: ILdRf Me
  loc_9FFC51: FStAdNoPop
  loc_9FFC55: ImpAdLdRf MemVar_D9C5D8
  loc_9FFC58: NewIfNullPr Global
  loc_9FFC5B: Global.Unload from_stack_1
  loc_9FFC60: FFree1Ad var_A8
  loc_9FFC63: ExitProcHresult
End Sub

Private Sub Form_Load() 'A989E8
  'Data Table: 4634CC
  loc_A98938: FLdRfVar var_88
  loc_A9893B: NewIfNullAd
  loc_A9893E: FStAd var_8C 
  loc_A98942: LitStr "SELECT * FROM obrareem ORDER BY OrdeObre"
  loc_A98945: FLdPr var_8C
  loc_A98948: Call clsobrareem.RedefineRS(from_stack_1v)
  loc_A9894D: FLdRfVar var_90
  loc_A98950: FLdPr var_8C
  loc_A98953: from_stack_1 = clsobrareem.RecordCount
  loc_A98958: ILdRf var_90
  loc_A9895B: LitI4 0
  loc_A98960: GtI4
  loc_A98961: BranchF loc_A989C8
  loc_A98964: FLdPr var_8C
  loc_A98967: Call clsobrareem.MoveFirst()
  loc_A9896C: FLdPr Me
  loc_A9896F: VCallAd Control_ID_OrdeObreCbo
  loc_A98972: FStAdFunc var_94
  loc_A98975: FLdPr var_94
  loc_A98978: Me.Clear
  loc_A9897D: FFree1Ad var_94
  loc_A98980: LitVar_Missing var_A8
  loc_A98983: PopAdLdVar
  loc_A98984: FLdRfVar var_98
  loc_A98987: FLdPr var_8C
  loc_A9898A: from_stack_1 = clsobrareem.OrdeObre
  loc_A9898F: ILdRf var_98
  loc_A98992: FLdPr Me
  loc_A98995: VCallAd Control_ID_OrdeObreCbo
  loc_A98998: FStAdFunc var_94
  loc_A9899B: FLdPr var_94
  loc_A9899E: Me.AddItem from_stack_1, from_stack_2
  loc_A989A3: FFree1Str var_98
  loc_A989A6: FFree1Ad var_94
  loc_A989A9: LitI2_Byte 1
  loc_A989AB: PopTmpLdAd2 var_AA
  loc_A989AE: FLdPr var_8C
  loc_A989B1: Call clsobrareem.Move(from_stack_1v)
  loc_A989B6: FLdRfVar var_AA
  loc_A989B9: FLdPr var_8C
  loc_A989BC: from_stack_1 = clsobrareem.EOF
  loc_A989C1: FLdI2 var_AA
  loc_A989C4: NotI4
  loc_A989C5: BranchT loc_A98980
  loc_A989C8: LitNothing
  loc_A989CA: FStAd var_8C 
  loc_A989CE: ILdRf Me
  loc_A989D1: CastAd
  loc_A989D4: FStAdFunc var_94
  loc_A989D7: FLdRfVar var_94
  loc_A989DA: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_A989DF: FFree1Ad var_94
  loc_A989E2: Call cmdNueva_Click()
  loc_A989E7: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CFCA4
  'Data Table: 4634CC
  loc_9CFC8C: FLdPr Me
  loc_9CFC8F: VCallAd Control_ID_wbbReporte
  loc_9CFC92: FStAdFunc var_88
  loc_9CFC95: FLdRfVar var_88
  loc_9CFC98: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CFC9D: FFree1Ad var_88
  loc_9CFCA0: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CFBC0
  'Data Table: 4634CC
  loc_9CFBA8: ILdRf Me
  loc_9CFBAB: CastAd
  loc_9CFBAE: FStAdFunc var_88
  loc_9CFBB1: FLdRfVar var_88
  loc_9CFBB4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CFBB9: FFree1Ad var_88
  loc_9CFBBC: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DEB1C
  'Data Table: 4634CC
  loc_9DEB00: LitI2_Byte 0
  loc_9DEB02: PopTmpLdAd2 var_8A
  loc_9DEB05: ILdRf Me
  loc_9DEB08: CastAd
  loc_9DEB0B: FStAdFunc var_88
  loc_9DEB0E: FLdRfVar var_88
  loc_9DEB11: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DEB16: FFree1Ad var_88
  loc_9DEB19: ExitProcHresult
  loc_9DEB1A: OrI4
End Sub

Private Sub cmdPredeterminada_Click() '9CFC0C
  'Data Table: 4634CC
  loc_9CFBF4: LitI2_Byte 0
  loc_9CFBF6: ILdRf Me
  loc_9CFBF9: CastAd
  loc_9CFBFC: FStAdFunc var_88
  loc_9CFBFF: FLdRfVar var_88
  loc_9CFC02: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CFC07: FFree1Ad var_88
  loc_9CFC0A: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1CD80
  'Data Table: 4634CC
  loc_A1CD48: FLdPr Me
  loc_A1CD4B: VCallAd Control_ID_statusBar
  loc_A1CD4E: FStAdFunc var_88
  loc_A1CD51: FLdPr var_88
  loc_A1CD54: LateIdLdVar var_98 DispID_1 0
  loc_A1CD5B: CStrVarTmp
  loc_A1CD5C: CVarStr var_A8
  loc_A1CD5F: PopAdLdVar
  loc_A1CD60: FLdPr Me
  loc_A1CD63: VCallAd Control_ID_statusBar
  loc_A1CD66: FStAdFunc var_BC
  loc_A1CD69: FLdPr var_BC
  loc_A1CD6C: LateIdSt
  loc_A1CD71: FFreeAd var_88 = ""
  loc_A1CD78: FFreeVar var_98 = ""
  loc_A1CD7F: ExitProcHresult
End Sub

Public Function bGeneradoGet() '464088
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '464097
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5CA50
  'Data Table: 4634CC
  loc_A5C9FC: LitI4 0
  loc_A5CA01: LitI4 2
  loc_A5CA06: FLdRfVar var_88
  loc_A5CA09: Redim
  loc_A5CA13: FLdPr Me
  loc_A5CA16: VCallAd Control_ID_OrdeObreCbo
  loc_A5CA19: CVarAd
  loc_A5CA1D: ParmAry1St
  loc_A5CA23: FLdPr Me
  loc_A5CA26: VCallAd Control_ID_CodiInmuOpt
  loc_A5CA29: CVarAd
  loc_A5CA2D: ParmAry1St
  loc_A5CA33: FLdPr Me
  loc_A5CA36: VCallAd Control_ID_DetaPersOpt
  loc_A5CA39: CVarAd
  loc_A5CA3D: ParmAry1St
  loc_A5CA43: FLdRfVar var_88
  loc_A5CA46: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5CA4B: FLdRfVar var_88
  loc_A5CA4E: Erase
  loc_A5CA4F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BBA800
  'Data Table: 4634CC
  loc_BBA198: FLdPr Me
  loc_BBA19B: MemLdI2 bGenerado
  loc_BBA19E: BranchF loc_BBA1A2
  loc_BBA1A1: ExitProcHresult
  loc_BBA1A2: LitVarStr var_98, "Generando reporte..."
  loc_BBA1A7: PopAdLdVar
  loc_BBA1A8: FLdPr Me
  loc_BBA1AB: VCallAd Control_ID_statusBar
  loc_BBA1AE: FStAdFunc var_AC
  loc_BBA1B1: FLdPr var_AC
  loc_BBA1B4: LateIdSt
  loc_BBA1B9: FFree1Ad var_AC
  loc_BBA1BC: LitI4 &HB
  loc_BBA1C1: CI2I4
  loc_BBA1C2: FLdPr Me
  loc_BBA1C5: Me.MousePointer = from_stack_1
  loc_BBA1CA: FLdRfVar var_AE
  loc_BBA1CD: FLdPr Me
  loc_BBA1D0: VCallAd Control_ID_CodiInmuOpt
  loc_BBA1D3: FStAdFunc var_AC
  loc_BBA1D6: FLdPr var_AC
  loc_BBA1D9:  = Me.Value
  loc_BBA1DE: FLdI2 var_AE
  loc_BBA1E1: FFree1Ad var_AC
  loc_BBA1E4: BranchF loc_BBA1ED
  loc_BBA1E7: LitStr "CodiInmu"
  loc_BBA1EA: FStStrCopy var_88
  loc_BBA1ED: FLdRfVar var_AE
  loc_BBA1F0: FLdPr Me
  loc_BBA1F3: VCallAd Control_ID_DetaPersOpt
  loc_BBA1F6: FStAdFunc var_AC
  loc_BBA1F9: FLdPr var_AC
  loc_BBA1FC:  = Me.Value
  loc_BBA201: FLdI2 var_AE
  loc_BBA204: FFree1Ad var_AC
  loc_BBA207: BranchF loc_BBA210
  loc_BBA20A: LitStr "DetaPers"
  loc_BBA20D: FStStrCopy var_88
  loc_BBA210: FLdPr Me
  loc_BBA213: MemLdRfVar from_stack_1.global_76
  loc_BBA216: NewIfNullAd
  loc_BBA219: FStAd var_B4 
  loc_BBA21D: LitStr "DROP TEMPORARY TABLE IF EXISTS obre;"
  loc_BBA220: LitStr " CREATE TEMPORARY TABLE obre"
  loc_BBA223: ConcatStr
  loc_BBA224: FStStrNoPop var_B8
  loc_BBA227: LitStr " SELECT obreinmu.CodiInmu, DetaPers, ctacte.CodiFapa, FealFapa, ifnull(facipago.CacuFapa, 0) as CacuFapa "
  loc_BBA22A: ConcatStr
  loc_BBA22B: FStStrNoPop var_BC
  loc_BBA22E: LitStr " FROM obreinmu"
  loc_BBA231: ConcatStr
  loc_BBA232: FStStrNoPop var_C0
  loc_BBA235: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = 1 AND ctacte.CuenCtct = obreinmu.CodiInmu AND ctacte.CodiConc in('355','22010000')"
  loc_BBA238: ConcatStr
  loc_BBA239: FStStrNoPop var_C4
  loc_BBA23C: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = ctacte.CodiFapa"
  loc_BBA23F: ConcatStr
  loc_BBA240: FStStrNoPop var_C8
  loc_BBA243: LitStr " LEFT JOIN inmueble ON inmueble.CodiInmu = obreinmu.CodiInmu"
  loc_BBA246: ConcatStr
  loc_BBA247: FStStrNoPop var_CC
  loc_BBA24A: LitStr " LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers"
  loc_BBA24D: ConcatStr
  loc_BBA24E: FStStrNoPop var_D0
  loc_BBA251: LitStr " WHERE OrdeObre = '"
  loc_BBA254: ConcatStr
  loc_BBA255: FStStrNoPop var_D8
  loc_BBA258: FLdRfVar var_D4
  loc_BBA25B: FLdPr Me
  loc_BBA25E: VCallAd Control_ID_OrdeObreCbo
  loc_BBA261: FStAdFunc var_AC
  loc_BBA264: FLdPr var_AC
  loc_BBA267:  = Me.Text
  loc_BBA26C: ILdRf var_D4
  loc_BBA26F: ConcatStr
  loc_BBA270: FStStrNoPop var_DC
  loc_BBA273: LitStr "'"
  loc_BBA276: ConcatStr
  loc_BBA277: FStStrNoPop var_E0
  loc_BBA27A: LitStr " GROUP BY CodiInmu, CodiFapa;"
  loc_BBA27D: ConcatStr
  loc_BBA27E: FStStrNoPop var_E4
  loc_BBA281: FLdPr var_B4
  loc_BBA284: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_BBA289: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D8 = "": var_D4 = "": var_DC = "": var_E0 = ""
  loc_BBA2A4: FFree1Ad var_AC
  loc_BBA2A7: LitStr "DROP TEMPORARY TABLE IF EXISTS obre1;"
  loc_BBA2AA: LitStr " CREATE TEMPORARY TABLE obre1 SELECT obre.*, count(FepaDefa) as FepaDefa FROM obre"
  loc_BBA2AD: ConcatStr
  loc_BBA2AE: FStStrNoPop var_B8
  loc_BBA2B1: LitStr " LEFT JOIN detafapa ON detafapa.CodiFapa = obre.CodiFapa AND detafapa.EstaDefa = 'Pagada'"
  loc_BBA2B4: ConcatStr
  loc_BBA2B5: FStStrNoPop var_BC
  loc_BBA2B8: LitStr " GROUP BY CodiInmu, CodiFapa;"
  loc_BBA2BB: ConcatStr
  loc_BBA2BC: FStStrNoPop var_C0
  loc_BBA2BF: LitStr "DROP TEMPORARY TABLE IF EXISTS obre2;"
  loc_BBA2C2: ConcatStr
  loc_BBA2C3: FStStrNoPop var_C4
  loc_BBA2C6: LitStr " CREATE TEMPORARY TABLE obre2"
  loc_BBA2C9: ConcatStr
  loc_BBA2CA: FStStrNoPop var_C8
  loc_BBA2CD: LitStr " SELECT obre1.*, count(DISTINCT FeveDefa) as FeveDefa"
  loc_BBA2D0: ConcatStr
  loc_BBA2D1: FStStrNoPop var_CC
  loc_BBA2D4: LitStr " FROM obre1"
  loc_BBA2D7: ConcatStr
  loc_BBA2D8: FStStrNoPop var_D0
  loc_BBA2DB: LitStr " LEFT JOIN detafapa ON detafapa.CodiFapa = obre1.CodiFapa AND detafapa.FepaDefa is null AND FeveDefa is not null AND FeveDefa < curdate()"
  loc_BBA2DE: ConcatStr
  loc_BBA2DF: FStStrNoPop var_D4
  loc_BBA2E2: LitStr " GROUP BY CodiInmu, CodiFapa;"
  loc_BBA2E5: ConcatStr
  loc_BBA2E6: FStStrNoPop var_D8
  loc_BBA2E9: LitStr " DROP TEMPORARY TABLE IF EXISTS obre3;"
  loc_BBA2EC: ConcatStr
  loc_BBA2ED: FStStrNoPop var_DC
  loc_BBA2F0: LitStr " CREATE TEMPORARY TABLE obre3"
  loc_BBA2F3: ConcatStr
  loc_BBA2F4: FStStrNoPop var_E0
  loc_BBA2F7: LitStr " SELECT obre2.*, sum(if(CodiTimo=1,DebeCtct,0)) as AforCtct, sum(if(CodiTimo in (2,4,5,9,21,25),CredCtct,0)) as PagoCtct, sum(if(CodiTimo in (6,11),CredCtct,0)) as CredCtct"
  loc_BBA2FA: ConcatStr
  loc_BBA2FB: FStStrNoPop var_E4
  loc_BBA2FE: LitStr " FROM obre2"
  loc_BBA301: ConcatStr
  loc_BBA302: FStStrNoPop var_E8
  loc_BBA305: LitStr " INNER JOIN ctacte ON ctacte.CodiOfic = 1 AND ctacte.CuenCtct = obre2.CodiInmu AND ctacte.CodiConc in('355','22010000')"
  loc_BBA308: ConcatStr
  loc_BBA309: FStStrNoPop var_EC
  loc_BBA30C: LitStr " GROUP BY CodiInmu, CodiFapa; DROP TEMPORARY TABLE IF EXISTS obre, obre2;"
  loc_BBA30F: ConcatStr
  loc_BBA310: FStStrNoPop var_F0
  loc_BBA313: FLdPr var_B4
  loc_BBA316: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_BBA31B: FFreeStr var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_BBA33C: LitStr "SELECT obre3.*, (obre3.AforCtct - obre3.PagoCtct - obre3.CredCtct) SaldCtct, cast(if(obre3.CodiFapa=0,FealCtct,null) as char) as FealCtct FROM obre3 LEFT JOIN ctacte ON ctacte.CodiOfic = 1 AND ctacte.CuenCtct = obre3.CodiInmu"
  loc_BBA33F: LitStr " AND ctacte.CodiConc in ('355','22010000') AND CodiTimo in (2,4,5,9,21,25) GROUP BY CodiInmu, CodiFapa, CodiFapa ORDER BY "
  loc_BBA342: ConcatStr
  loc_BBA343: FStStrNoPop var_B8
  loc_BBA346: ILdRf var_88
  loc_BBA349: ConcatStr
  loc_BBA34A: FStStrNoPop var_BC
  loc_BBA34D: FLdPr var_B4
  loc_BBA350: Call clsobreinmu.RedefineRS(from_stack_1v)
  loc_BBA355: FFreeStr var_B8 = ""
  loc_BBA35C: FLdRfVar var_F4
  loc_BBA35F: FLdPr var_B4
  loc_BBA362: from_stack_1 = clsobreinmu.RecordCount
  loc_BBA367: ILdRf var_F4
  loc_BBA36A: LitI4 0
  loc_BBA36F: EqI4
  loc_BBA370: BranchF loc_BBA37E
  loc_BBA373: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BBA376: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BBA37B: Branch loc_BBA7D5
  loc_BBA37E: LitI4 0
  loc_BBA383: FLdPr Me
  loc_BBA386: MemStI4 global_84
  loc_BBA389: LitI4 0
  loc_BBA38E: FLdPr Me
  loc_BBA391: MemStI4 global_92
  loc_BBA394: LitI4 0
  loc_BBA399: FLdPr Me
  loc_BBA39C: MemStI4 global_96
  loc_BBA39F: LitI4 0
  loc_BBA3A4: LitI4 1
  loc_BBA3A9: FLdPr Me
  loc_BBA3AC: MemLdRfVar from_stack_1.global_104
  loc_BBA3AF: Redim
  loc_BBA3B9: LitI4 0
  loc_BBA3BE: FLdRfVar var_F4
  loc_BBA3C1: FLdPr var_B4
  loc_BBA3C4: from_stack_1 = clsobreinmu.RecordCount
  loc_BBA3C9: ILdRf var_F4
  loc_BBA3CC: FLdPr Me
  loc_BBA3CF: MemLdRfVar from_stack_1.global_80
  loc_BBA3D2: Redim
  loc_BBA3DC: FLdPr var_B4
  loc_BBA3DF: Call clsobreinmu.MoveFirst()
  loc_BBA3E4: FLdRfVar var_AE
  loc_BBA3E7: FLdPr var_B4
  loc_BBA3EA: from_stack_1 = clsobreinmu.EOF
  loc_BBA3EF: FLdI2 var_AE
  loc_BBA3F2: NotI4
  loc_BBA3F3: BranchF loc_BBA7B3
  loc_BBA3F6: FLdPr Me
  loc_BBA3F9: MemLdStr global_84
  loc_BBA3FC: LitI4 1
  loc_BBA401: AddI4
  loc_BBA402: FLdPr Me
  loc_BBA405: MemStI4 global_84
  loc_BBA408: FLdRfVar var_F4
  loc_BBA40B: FLdPr var_B4
  loc_BBA40E: from_stack_1 = clsobreinmu.CodiInmu
  loc_BBA413: LitI2_Byte 0
  loc_BBA415: LitVar_Missing var_108
  loc_BBA418: LitI2_Byte 0
  loc_BBA41A: ILdRf var_F4
  loc_BBA41D: CVarI4
  loc_BBA421: PopAdLdVar
  loc_BBA422: FLdPr Me
  loc_BBA425: MemLdStr global_84
  loc_BBA428: FLdPr Me
  loc_BBA42B: MemLdStr global_80
  loc_BBA42E: AryLock
  loc_BBA431: Ary1LdPr
  loc_BBA432: MemLdRfVar from_stack_1.global_0
  loc_BBA435: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA43A: AryUnlock
  loc_BBA43D: FFree1Var var_108 = ""
  loc_BBA440: FLdRfVar var_108
  loc_BBA443: FLdPr var_B4
  loc_BBA446: from_stack_1 = clsobreinmu.DetaPers
  loc_BBA44B: LitI2_Byte 0
  loc_BBA44D: LitVar_Missing var_118
  loc_BBA450: LitI2_Byte 0
  loc_BBA452: FLdVar var_108
  loc_BBA456: FLdPr Me
  loc_BBA459: MemLdStr global_84
  loc_BBA45C: FLdPr Me
  loc_BBA45F: MemLdStr global_80
  loc_BBA462: AryLock
  loc_BBA465: Ary1LdPr
  loc_BBA466: MemLdRfVar from_stack_1.global_4
  loc_BBA469: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA46E: AryUnlock
  loc_BBA471: FFreeVar var_108 = ""
  loc_BBA478: FLdRfVar var_108
  loc_BBA47B: FLdPr var_B4
  loc_BBA47E: from_stack_1 = clsobreinmu.FealCtct
  loc_BBA483: FLdRfVar var_108
  loc_BBA486: ImpAdCallI2 IsNull()
  loc_BBA48B: FFree1Var var_108 = ""
  loc_BBA48E: BranchF loc_BBA4CC
  loc_BBA491: FLdRfVar var_108
  loc_BBA494: FLdPr var_B4
  loc_BBA497: from_stack_1 = clsobreinmu.FealCtct
  loc_BBA49C: LitI2_Byte 0
  loc_BBA49E: LitVar_Missing var_118
  loc_BBA4A1: LitI2_Byte 0
  loc_BBA4A3: FLdVar var_108
  loc_BBA4A7: FLdPr Me
  loc_BBA4AA: MemLdStr global_84
  loc_BBA4AD: FLdPr Me
  loc_BBA4B0: MemLdStr global_80
  loc_BBA4B3: AryLock
  loc_BBA4B6: Ary1LdPr
  loc_BBA4B7: MemLdRfVar from_stack_1.global_8
  loc_BBA4BA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA4BF: AryUnlock
  loc_BBA4C2: FFreeVar var_108 = ""
  loc_BBA4C9: Branch loc_BBA50C
  loc_BBA4CC: FLdRfVar var_108
  loc_BBA4CF: FLdPr var_B4
  loc_BBA4D2: from_stack_1 = clsobreinmu.FealCtct
  loc_BBA4D7: LitI2_Byte 0
  loc_BBA4D9: LitVar_Missing var_118
  loc_BBA4DC: LitI2_Byte 0
  loc_BBA4DE: FLdRfVar var_108
  loc_BBA4E1: FnCDateVar
  loc_BBA4E3: CVarDate var_98
  loc_BBA4E7: PopAdLdVar
  loc_BBA4E8: FLdPr Me
  loc_BBA4EB: MemLdStr global_84
  loc_BBA4EE: FLdPr Me
  loc_BBA4F1: MemLdStr global_80
  loc_BBA4F4: AryLock
  loc_BBA4F7: Ary1LdPr
  loc_BBA4F8: MemLdRfVar from_stack_1.global_8
  loc_BBA4FB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA500: AryUnlock
  loc_BBA503: FFreeVar var_108 = "": var_108 = ""
  loc_BBA50C: FLdRfVar var_AE
  loc_BBA50F: FLdPr var_B4
  loc_BBA512: from_stack_1 = clsobreinmu.CodiFapa
  loc_BBA517: LitI2_Byte 0
  loc_BBA519: LitVar_Missing var_108
  loc_BBA51C: LitI2_Byte 0
  loc_BBA51E: FLdI2 var_AE
  loc_BBA521: CVarI2 var_98
  loc_BBA524: PopAdLdVar
  loc_BBA525: FLdPr Me
  loc_BBA528: MemLdStr global_84
  loc_BBA52B: FLdPr Me
  loc_BBA52E: MemLdStr global_80
  loc_BBA531: AryLock
  loc_BBA534: Ary1LdPr
  loc_BBA535: MemLdRfVar from_stack_1.global_12
  loc_BBA538: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA53D: AryUnlock
  loc_BBA540: FFree1Var var_108 = ""
  loc_BBA543: FLdRfVar var_108
  loc_BBA546: FLdPr var_B4
  loc_BBA549: from_stack_1 = clsobreinmu.FealFapa
  loc_BBA54E: LitI2_Byte 0
  loc_BBA550: LitVar_Missing var_118
  loc_BBA553: LitI2_Byte 0
  loc_BBA555: FLdVar var_108
  loc_BBA559: FLdPr Me
  loc_BBA55C: MemLdStr global_84
  loc_BBA55F: FLdPr Me
  loc_BBA562: MemLdStr global_80
  loc_BBA565: AryLock
  loc_BBA568: Ary1LdPr
  loc_BBA569: MemLdRfVar from_stack_1.global_16
  loc_BBA56C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA571: AryUnlock
  loc_BBA574: FFreeVar var_108 = ""
  loc_BBA57B: FLdRfVar var_108
  loc_BBA57E: FLdPr var_B4
  loc_BBA581: from_stack_1 = clsobreinmu.CacuFapa
  loc_BBA586: LitI2_Byte 0
  loc_BBA588: LitVar_Missing var_118
  loc_BBA58B: LitI2_Byte 0
  loc_BBA58D: FLdVar var_108
  loc_BBA591: FLdPr Me
  loc_BBA594: MemLdStr global_84
  loc_BBA597: FLdPr Me
  loc_BBA59A: MemLdStr global_80
  loc_BBA59D: AryLock
  loc_BBA5A0: Ary1LdPr
  loc_BBA5A1: MemLdRfVar from_stack_1.global_20
  loc_BBA5A4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA5A9: AryUnlock
  loc_BBA5AC: FFreeVar var_108 = ""
  loc_BBA5B3: FLdRfVar var_108
  loc_BBA5B6: FLdPr var_B4
  loc_BBA5B9: from_stack_1 = clsobreinmu.FepaDefa
  loc_BBA5BE: LitI2_Byte 0
  loc_BBA5C0: LitVar_Missing var_118
  loc_BBA5C3: LitI2_Byte 0
  loc_BBA5C5: FLdVar var_108
  loc_BBA5C9: FLdPr Me
  loc_BBA5CC: MemLdStr global_84
  loc_BBA5CF: FLdPr Me
  loc_BBA5D2: MemLdStr global_80
  loc_BBA5D5: AryLock
  loc_BBA5D8: Ary1LdPr
  loc_BBA5D9: MemLdRfVar from_stack_1.global_24
  loc_BBA5DC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA5E1: AryUnlock
  loc_BBA5E4: FFreeVar var_108 = ""
  loc_BBA5EB: FLdRfVar var_108
  loc_BBA5EE: FLdPr var_B4
  loc_BBA5F1: from_stack_1 = clsobreinmu.FeveDefa
  loc_BBA5F6: LitI2_Byte 0
  loc_BBA5F8: LitVar_Missing var_118
  loc_BBA5FB: LitI2_Byte 0
  loc_BBA5FD: FLdVar var_108
  loc_BBA601: FLdPr Me
  loc_BBA604: MemLdStr global_84
  loc_BBA607: FLdPr Me
  loc_BBA60A: MemLdStr global_80
  loc_BBA60D: AryLock
  loc_BBA610: Ary1LdPr
  loc_BBA611: MemLdRfVar from_stack_1.global_28
  loc_BBA614: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA619: AryUnlock
  loc_BBA61C: FFreeVar var_108 = ""
  loc_BBA623: FLdRfVar var_108
  loc_BBA626: FLdPr var_B4
  loc_BBA629: from_stack_1 = clsobreinmu.AforCtct
  loc_BBA62E: LitI2_Byte 0
  loc_BBA630: LitI4 1
  loc_BBA635: FLdPr Me
  loc_BBA638: MemLdStr global_104
  loc_BBA63B: AryLock
  loc_BBA63E: Ary1LdPr
  loc_BBA63F: MemLdRfVar from_stack_1.global_0
  loc_BBA642: CVarRef
  loc_BBA647: LitI2_Byte &HFF
  loc_BBA649: FLdVar var_108
  loc_BBA64D: FLdPr Me
  loc_BBA650: MemLdStr global_84
  loc_BBA653: FLdPr Me
  loc_BBA656: MemLdStr global_80
  loc_BBA659: AryLock
  loc_BBA65C: Ary1LdPr
  loc_BBA65D: MemLdRfVar from_stack_1.global_32
  loc_BBA660: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA665: AryUnlock
  loc_BBA668: AryUnlock
  loc_BBA66B: FFree1Var var_108 = ""
  loc_BBA66E: FLdRfVar var_108
  loc_BBA671: FLdPr var_B4
  loc_BBA674: from_stack_1 = clsobreinmu.PagoCtct
  loc_BBA679: LitI2_Byte 0
  loc_BBA67B: LitI4 1
  loc_BBA680: FLdPr Me
  loc_BBA683: MemLdStr global_104
  loc_BBA686: AryLock
  loc_BBA689: Ary1LdPr
  loc_BBA68A: MemLdRfVar from_stack_1.global_4
  loc_BBA68D: CVarRef
  loc_BBA692: LitI2_Byte &HFF
  loc_BBA694: FLdVar var_108
  loc_BBA698: FLdPr Me
  loc_BBA69B: MemLdStr global_84
  loc_BBA69E: FLdPr Me
  loc_BBA6A1: MemLdStr global_80
  loc_BBA6A4: AryLock
  loc_BBA6A7: Ary1LdPr
  loc_BBA6A8: MemLdRfVar from_stack_1.global_36
  loc_BBA6AB: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA6B0: AryUnlock
  loc_BBA6B3: AryUnlock
  loc_BBA6B6: FFree1Var var_108 = ""
  loc_BBA6B9: FLdRfVar var_108
  loc_BBA6BC: FLdPr var_B4
  loc_BBA6BF: from_stack_1 = clsobreinmu.CredCtct
  loc_BBA6C4: LitI2_Byte 0
  loc_BBA6C6: LitI4 1
  loc_BBA6CB: FLdPr Me
  loc_BBA6CE: MemLdStr global_104
  loc_BBA6D1: AryLock
  loc_BBA6D4: Ary1LdPr
  loc_BBA6D5: MemLdRfVar from_stack_1.global_8
  loc_BBA6D8: CVarRef
  loc_BBA6DD: LitI2_Byte &HFF
  loc_BBA6DF: FLdVar var_108
  loc_BBA6E3: FLdPr Me
  loc_BBA6E6: MemLdStr global_84
  loc_BBA6E9: FLdPr Me
  loc_BBA6EC: MemLdStr global_80
  loc_BBA6EF: AryLock
  loc_BBA6F2: Ary1LdPr
  loc_BBA6F3: MemLdRfVar from_stack_1.global_40
  loc_BBA6F6: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA6FB: AryUnlock
  loc_BBA6FE: AryUnlock
  loc_BBA701: FFree1Var var_108 = ""
  loc_BBA704: FLdRfVar var_108
  loc_BBA707: FLdPr var_B4
  loc_BBA70A: from_stack_1 = clsobreinmu.SaldCtct
  loc_BBA70F: LitI2_Byte 0
  loc_BBA711: LitI4 1
  loc_BBA716: FLdPr Me
  loc_BBA719: MemLdStr global_104
  loc_BBA71C: AryLock
  loc_BBA71F: Ary1LdPr
  loc_BBA720: MemLdRfVar from_stack_1.global_12
  loc_BBA723: CVarRef
  loc_BBA728: LitI2_Byte &HFF
  loc_BBA72A: FLdVar var_108
  loc_BBA72E: FLdPr Me
  loc_BBA731: MemLdStr global_84
  loc_BBA734: FLdPr Me
  loc_BBA737: MemLdStr global_80
  loc_BBA73A: AryLock
  loc_BBA73D: Ary1LdPr
  loc_BBA73E: MemLdRfVar from_stack_1.global_44
  loc_BBA741: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BBA746: AryUnlock
  loc_BBA749: AryUnlock
  loc_BBA74C: FFree1Var var_108 = ""
  loc_BBA74F: FLdRfVar var_108
  loc_BBA752: FLdPr var_B4
  loc_BBA755: from_stack_1 = clsobreinmu.PagoCtct
  loc_BBA75A: FLdRfVar var_108
  loc_BBA75D: LitVarI2 var_98, 0
  loc_BBA762: HardType
  loc_BBA763: GtVarBool
  loc_BBA765: FFree1Var var_108 = ""
  loc_BBA768: BranchF loc_BBA77D
  loc_BBA76B: FLdPr Me
  loc_BBA76E: MemLdStr global_92
  loc_BBA771: LitI4 1
  loc_BBA776: AddI4
  loc_BBA777: FLdPr Me
  loc_BBA77A: MemStI4 global_92
  loc_BBA77D: FLdRfVar var_AE
  loc_BBA780: FLdPr var_B4
  loc_BBA783: from_stack_1 = clsobreinmu.CodiFapa
  loc_BBA788: FLdI2 var_AE
  loc_BBA78B: LitI2_Byte 0
  loc_BBA78D: GtI2
  loc_BBA78E: BranchF loc_BBA7A3
  loc_BBA791: FLdPr Me
  loc_BBA794: MemLdStr global_96
  loc_BBA797: LitI4 1
  loc_BBA79C: AddI4
  loc_BBA79D: FLdPr Me
  loc_BBA7A0: MemStI4 global_96
  loc_BBA7A3: LitI2_Byte 1
  loc_BBA7A5: PopTmpLdAd2 var_AE
  loc_BBA7A8: FLdPr var_B4
  loc_BBA7AB: Call clsobreinmu.Move(from_stack_1v)
  loc_BBA7B0: Branch loc_BBA3E4
  loc_BBA7B3: FLdRfVar var_F4
  loc_BBA7B6: FLdPr var_B4
  loc_BBA7B9: from_stack_1 = clsobreinmu.RecordCount
  loc_BBA7BE: ILdRf var_F4
  loc_BBA7C1: FLdPr Me
  loc_BBA7C4: MemStI4 global_88
  loc_BBA7C7: LitNothing
  loc_BBA7C9: FStAd var_B4 
  loc_BBA7CD: LitI2_Byte &HFF
  loc_BBA7CF: FLdPr Me
  loc_BBA7D2: MemStI2 bGenerado
  loc_BBA7D5: LitI4 0
  loc_BBA7DA: CI2I4
  loc_BBA7DB: FLdPr Me
  loc_BBA7DE: Me.MousePointer = from_stack_1
  loc_BBA7E3: LitVarStr var_98, vbNullString
  loc_BBA7E8: PopAdLdVar
  loc_BBA7E9: FLdPr Me
  loc_BBA7EC: VCallAd Control_ID_statusBar
  loc_BBA7EF: FStAdFunc var_AC
  loc_BBA7F2: FLdPr var_AC
  loc_BBA7F5: LateIdSt
  loc_BBA7FA: FFree1Ad var_AC
  loc_BBA7FD: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B79DE0
  'Data Table: 4634CC
  loc_B798F8: FLdRfVar var_88
  loc_B798FB: LitI2_Byte 0
  loc_B798FD: LitI2_Byte &HFF
  loc_B798FF: ImpAdLdI4 MemVar_D93C84
  loc_B79902: FLdPr Me
  loc_B79905: MemLdRfVar from_stack_1.global_56
  loc_B79908: NewIfNullPr IFileSystem3
  loc_B7990B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B79910: ILdRf var_88
  loc_B79913: FLdPr Me
  loc_B79916: MemStVarAd
  loc_B7991A: FFree1Ad var_88
  loc_B7991D: LitI2_Byte &HFF
  loc_B7991F: ImpAdStI2 MemVar_D93C8A
  loc_B79922: Call Proc_134_14_BD6330()
  loc_B79927: LitI4 1
  loc_B7992C: FLdPr Me
  loc_B7992F: MemLdRfVar from_stack_1.global_84
  loc_B79932: FLdPr Me
  loc_B79935: MemLdStr global_80
  loc_B79938: LitI2_Byte 1
  loc_B7993A: FnUBound
  loc_B7993C: ForI4 var_90
  loc_B79942: FLdPr Me
  loc_B79945: MemLdStr global_84
  loc_B79948: FLdPr Me
  loc_B7994B: MemLdStr global_80
  loc_B7994E: AryLock
  loc_B79951: Ary1LdRf
  loc_B79952: FStR4 var_98
  loc_B79955: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B7995A: PopAdLdVar
  loc_B7995B: FLdPr Me
  loc_B7995E: MemLdRfVar from_stack_1.global_60
  loc_B79961: LdPrVar
  loc_B79963: LateMemCall
  loc_B79969: LitStr vbNullString
  loc_B7996C: LitI2_Byte 0
  loc_B7996E: LitI2_Byte 0
  loc_B79970: LitI2_Byte 0
  loc_B79972: LitStr "right"
  loc_B79975: FMemLdR4 var_98(0)
  loc_B7997A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B7997F: CVarStr var_C8
  loc_B79982: PopAdLdVar
  loc_B79983: FLdPr Me
  loc_B79986: MemLdRfVar from_stack_1.global_60
  loc_B79989: LdPrVar
  loc_B7998B: LateMemCall
  loc_B79991: FFree1Var var_C8 = ""
  loc_B79994: LitStr vbNullString
  loc_B79997: LitI2_Byte 0
  loc_B79999: LitI2_Byte 0
  loc_B7999B: LitI2_Byte 0
  loc_B7999D: LitStr "left"
  loc_B799A0: FMemLdR4 var_98(4)
  loc_B799A5: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B799AA: CVarStr var_C8
  loc_B799AD: PopAdLdVar
  loc_B799AE: FLdPr Me
  loc_B799B1: MemLdRfVar from_stack_1.global_60
  loc_B799B4: LdPrVar
  loc_B799B6: LateMemCall
  loc_B799BC: FFree1Var var_C8 = ""
  loc_B799BF: LitStr vbNullString
  loc_B799C2: LitI2_Byte 0
  loc_B799C4: LitI2_Byte 0
  loc_B799C6: LitI2_Byte 0
  loc_B799C8: LitStr "center"
  loc_B799CB: FMemLdR4 var_98(8)
  loc_B799D0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B799D5: CVarStr var_C8
  loc_B799D8: PopAdLdVar
  loc_B799D9: FLdPr Me
  loc_B799DC: MemLdRfVar from_stack_1.global_60
  loc_B799DF: LdPrVar
  loc_B799E1: LateMemCall
  loc_B799E7: FFree1Var var_C8 = ""
  loc_B799EA: LitStr vbNullString
  loc_B799ED: LitI2_Byte 0
  loc_B799EF: LitI2_Byte 0
  loc_B799F1: LitI2_Byte 0
  loc_B799F3: LitStr "right"
  loc_B799F6: FMemLdR4 var_98(12)
  loc_B799FB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79A00: CVarStr var_C8
  loc_B79A03: PopAdLdVar
  loc_B79A04: FLdPr Me
  loc_B79A07: MemLdRfVar from_stack_1.global_60
  loc_B79A0A: LdPrVar
  loc_B79A0C: LateMemCall
  loc_B79A12: FFree1Var var_C8 = ""
  loc_B79A15: LitStr vbNullString
  loc_B79A18: LitI2_Byte 0
  loc_B79A1A: LitI2_Byte 0
  loc_B79A1C: LitI2_Byte 0
  loc_B79A1E: LitStr "center"
  loc_B79A21: FMemLdR4 var_98(16)
  loc_B79A26: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79A2B: CVarStr var_C8
  loc_B79A2E: PopAdLdVar
  loc_B79A2F: FLdPr Me
  loc_B79A32: MemLdRfVar from_stack_1.global_60
  loc_B79A35: LdPrVar
  loc_B79A37: LateMemCall
  loc_B79A3D: FFree1Var var_C8 = ""
  loc_B79A40: LitStr vbNullString
  loc_B79A43: LitI2_Byte 0
  loc_B79A45: LitI2_Byte 0
  loc_B79A47: LitI2_Byte 0
  loc_B79A49: LitStr "right"
  loc_B79A4C: FMemLdR4 var_98(20)
  loc_B79A51: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79A56: CVarStr var_C8
  loc_B79A59: PopAdLdVar
  loc_B79A5A: FLdPr Me
  loc_B79A5D: MemLdRfVar from_stack_1.global_60
  loc_B79A60: LdPrVar
  loc_B79A62: LateMemCall
  loc_B79A68: FFree1Var var_C8 = ""
  loc_B79A6B: LitStr vbNullString
  loc_B79A6E: LitI2_Byte 0
  loc_B79A70: LitI2_Byte 0
  loc_B79A72: LitI2_Byte 0
  loc_B79A74: LitStr "right"
  loc_B79A77: FMemLdR4 var_98(24)
  loc_B79A7C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79A81: CVarStr var_C8
  loc_B79A84: PopAdLdVar
  loc_B79A85: FLdPr Me
  loc_B79A88: MemLdRfVar from_stack_1.global_60
  loc_B79A8B: LdPrVar
  loc_B79A8D: LateMemCall
  loc_B79A93: FFree1Var var_C8 = ""
  loc_B79A96: LitStr vbNullString
  loc_B79A99: LitI2_Byte 0
  loc_B79A9B: LitI2_Byte 0
  loc_B79A9D: LitI2_Byte 0
  loc_B79A9F: LitStr "right"
  loc_B79AA2: FMemLdR4 var_98(28)
  loc_B79AA7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79AAC: CVarStr var_C8
  loc_B79AAF: PopAdLdVar
  loc_B79AB0: FLdPr Me
  loc_B79AB3: MemLdRfVar from_stack_1.global_60
  loc_B79AB6: LdPrVar
  loc_B79AB8: LateMemCall
  loc_B79ABE: FFree1Var var_C8 = ""
  loc_B79AC1: LitStr vbNullString
  loc_B79AC4: LitI2_Byte 0
  loc_B79AC6: LitI2_Byte 0
  loc_B79AC8: LitI2_Byte 0
  loc_B79ACA: LitStr "right"
  loc_B79ACD: FMemLdR4 var_98(32)
  loc_B79AD2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79AD7: CVarStr var_C8
  loc_B79ADA: PopAdLdVar
  loc_B79ADB: FLdPr Me
  loc_B79ADE: MemLdRfVar from_stack_1.global_60
  loc_B79AE1: LdPrVar
  loc_B79AE3: LateMemCall
  loc_B79AE9: FFree1Var var_C8 = ""
  loc_B79AEC: LitStr vbNullString
  loc_B79AEF: LitI2_Byte 0
  loc_B79AF1: LitI2_Byte 0
  loc_B79AF3: LitI2_Byte 0
  loc_B79AF5: LitStr "right"
  loc_B79AF8: FMemLdR4 var_98(36)
  loc_B79AFD: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79B02: CVarStr var_C8
  loc_B79B05: PopAdLdVar
  loc_B79B06: FLdPr Me
  loc_B79B09: MemLdRfVar from_stack_1.global_60
  loc_B79B0C: LdPrVar
  loc_B79B0E: LateMemCall
  loc_B79B14: FFree1Var var_C8 = ""
  loc_B79B17: LitStr vbNullString
  loc_B79B1A: LitI2_Byte 0
  loc_B79B1C: LitI2_Byte 0
  loc_B79B1E: LitI2_Byte 0
  loc_B79B20: LitStr "right"
  loc_B79B23: FMemLdR4 var_98(40)
  loc_B79B28: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79B2D: CVarStr var_C8
  loc_B79B30: PopAdLdVar
  loc_B79B31: FLdPr Me
  loc_B79B34: MemLdRfVar from_stack_1.global_60
  loc_B79B37: LdPrVar
  loc_B79B39: LateMemCall
  loc_B79B3F: FFree1Var var_C8 = ""
  loc_B79B42: LitStr vbNullString
  loc_B79B45: LitI2_Byte 0
  loc_B79B47: LitI2_Byte 0
  loc_B79B49: LitI2_Byte 0
  loc_B79B4B: LitStr "right"
  loc_B79B4E: FMemLdR4 var_98(44)
  loc_B79B53: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B79B58: CVarStr var_C8
  loc_B79B5B: PopAdLdVar
  loc_B79B5C: FLdPr Me
  loc_B79B5F: MemLdRfVar from_stack_1.global_60
  loc_B79B62: LdPrVar
  loc_B79B64: LateMemCall
  loc_B79B6A: FFree1Var var_C8 = ""
  loc_B79B6D: LitVarStr var_A8, "     </tr>"
  loc_B79B72: PopAdLdVar
  loc_B79B73: FLdPr Me
  loc_B79B76: MemLdRfVar from_stack_1.global_60
  loc_B79B79: LdPrVar
  loc_B79B7B: LateMemCall
  loc_B79B81: LitI4 0
  loc_B79B86: FStR4 var_98
  loc_B79B89: AryUnlock
  loc_B79B8C: FLdPr Me
  loc_B79B8F: MemLdRfVar from_stack_1.global_84
  loc_B79B92: NextI4 var_90, loc_B79942
  loc_B79B97: LitVarStr var_A8, "  <tr valign=""top"" class=""Totales"" align=""right"">"
  loc_B79B9C: PopAdLdVar
  loc_B79B9D: FLdPr Me
  loc_B79BA0: MemLdRfVar from_stack_1.global_60
  loc_B79BA3: LdPrVar
  loc_B79BA5: LateMemCall
  loc_B79BAB: LitStr "    <td colspan=""8"">Total ("
  loc_B79BAE: FLdPr Me
  loc_B79BB1: MemLdStr global_80
  loc_B79BB4: LitI2_Byte 1
  loc_B79BB6: FnUBound
  loc_B79BB8: CStrI4
  loc_B79BBA: FStStrNoPop var_CC
  loc_B79BBD: ConcatStr
  loc_B79BBE: FStStrNoPop var_D0
  loc_B79BC1: LitStr " inmuebles)</td>"
  loc_B79BC4: ConcatStr
  loc_B79BC5: CVarStr var_C8
  loc_B79BC8: PopAdLdVar
  loc_B79BC9: FLdPr Me
  loc_B79BCC: MemLdRfVar from_stack_1.global_60
  loc_B79BCF: LdPrVar
  loc_B79BD1: LateMemCall
  loc_B79BD7: FFreeStr var_CC = ""
  loc_B79BDE: FFree1Var var_C8 = ""
  loc_B79BE1: LitI4 1
  loc_B79BE6: FLdPr Me
  loc_B79BE9: MemLdStr global_104
  loc_B79BEC: AryLock
  loc_B79BEF: Ary1LdRf
  loc_B79BF0: FStR4 var_D8
  loc_B79BF3: LitStr "    <td>"
  loc_B79BF6: FMemLdR4 var_D8(0)
  loc_B79BFB: ConcatStr
  loc_B79BFC: FStStrNoPop var_CC
  loc_B79BFF: LitStr "</td>"
  loc_B79C02: ConcatStr
  loc_B79C03: CVarStr var_C8
  loc_B79C06: PopAdLdVar
  loc_B79C07: FLdPr Me
  loc_B79C0A: MemLdRfVar from_stack_1.global_60
  loc_B79C0D: LdPrVar
  loc_B79C0F: LateMemCall
  loc_B79C15: FFree1Str var_CC
  loc_B79C18: FFree1Var var_C8 = ""
  loc_B79C1B: LitStr "    <td>"
  loc_B79C1E: FMemLdR4 var_D8(4)
  loc_B79C23: ConcatStr
  loc_B79C24: FStStrNoPop var_CC
  loc_B79C27: LitStr "</td>"
  loc_B79C2A: ConcatStr
  loc_B79C2B: CVarStr var_C8
  loc_B79C2E: PopAdLdVar
  loc_B79C2F: FLdPr Me
  loc_B79C32: MemLdRfVar from_stack_1.global_60
  loc_B79C35: LdPrVar
  loc_B79C37: LateMemCall
  loc_B79C3D: FFree1Str var_CC
  loc_B79C40: FFree1Var var_C8 = ""
  loc_B79C43: LitStr "    <td>"
  loc_B79C46: FMemLdR4 var_D8(8)
  loc_B79C4B: ConcatStr
  loc_B79C4C: FStStrNoPop var_CC
  loc_B79C4F: LitStr "</td>"
  loc_B79C52: ConcatStr
  loc_B79C53: CVarStr var_C8
  loc_B79C56: PopAdLdVar
  loc_B79C57: FLdPr Me
  loc_B79C5A: MemLdRfVar from_stack_1.global_60
  loc_B79C5D: LdPrVar
  loc_B79C5F: LateMemCall
  loc_B79C65: FFree1Str var_CC
  loc_B79C68: FFree1Var var_C8 = ""
  loc_B79C6B: LitStr "    <td>"
  loc_B79C6E: FMemLdR4 var_D8(12)
  loc_B79C73: ConcatStr
  loc_B79C74: FStStrNoPop var_CC
  loc_B79C77: LitStr "</td>"
  loc_B79C7A: ConcatStr
  loc_B79C7B: CVarStr var_C8
  loc_B79C7E: PopAdLdVar
  loc_B79C7F: FLdPr Me
  loc_B79C82: MemLdRfVar from_stack_1.global_60
  loc_B79C85: LdPrVar
  loc_B79C87: LateMemCall
  loc_B79C8D: FFree1Str var_CC
  loc_B79C90: FFree1Var var_C8 = ""
  loc_B79C93: LitI4 0
  loc_B79C98: FStR4 var_D8
  loc_B79C9B: AryUnlock
  loc_B79C9E: LitVarStr var_A8, "     </tr>"
  loc_B79CA3: PopAdLdVar
  loc_B79CA4: FLdPr Me
  loc_B79CA7: MemLdRfVar from_stack_1.global_60
  loc_B79CAA: LdPrVar
  loc_B79CAC: LateMemCall
  loc_B79CB2: LitVarStr var_A8, "  <tr align=""left"" class=""Totales"">"
  loc_B79CB7: PopAdLdVar
  loc_B79CB8: FLdPr Me
  loc_B79CBB: MemLdRfVar from_stack_1.global_60
  loc_B79CBE: LdPrVar
  loc_B79CC0: LateMemCall
  loc_B79CC6: LitStr "    <th colspan=""12"">Cantidad de padrones afectados a la Ordenanza: "
  loc_B79CC9: LitI4 -1
  loc_B79CCE: LitI4 0
  loc_B79CD3: LitI4 -1
  loc_B79CD8: LitI4 0
  loc_B79CDD: FLdPr Me
  loc_B79CE0: MemLdRfVar from_stack_1.global_88
  loc_B79CE3: CVarRef
  loc_B79CE8: ImpAdCallI2 FormatNumber(, , , , )
  loc_B79CED: FStStrNoPop var_CC
  loc_B79CF0: ConcatStr
  loc_B79CF1: FStStrNoPop var_D0
  loc_B79CF4: LitStr "<br>"
  loc_B79CF7: ConcatStr
  loc_B79CF8: CVarStr var_C8
  loc_B79CFB: PopAdLdVar
  loc_B79CFC: FLdPr Me
  loc_B79CFF: MemLdRfVar from_stack_1.global_60
  loc_B79D02: LdPrVar
  loc_B79D04: LateMemCall
  loc_B79D0A: FFreeStr var_CC = ""
  loc_B79D11: FFree1Var var_C8 = ""
  loc_B79D14: LitStr "                       Cantidad de padrones que realizaron planes de pago: "
  loc_B79D17: LitI4 -1
  loc_B79D1C: LitI4 0
  loc_B79D21: LitI4 -1
  loc_B79D26: LitI4 0
  loc_B79D2B: FLdPr Me
  loc_B79D2E: MemLdRfVar from_stack_1.global_96
  loc_B79D31: CVarRef
  loc_B79D36: ImpAdCallI2 FormatNumber(, , , , )
  loc_B79D3B: FStStrNoPop var_CC
  loc_B79D3E: ConcatStr
  loc_B79D3F: FStStrNoPop var_D0
  loc_B79D42: LitStr "<br>"
  loc_B79D45: ConcatStr
  loc_B79D46: CVarStr var_C8
  loc_B79D49: PopAdLdVar
  loc_B79D4A: FLdPr Me
  loc_B79D4D: MemLdRfVar from_stack_1.global_60
  loc_B79D50: LdPrVar
  loc_B79D52: LateMemCall
  loc_B79D58: FFreeStr var_CC = ""
  loc_B79D5F: FFree1Var var_C8 = ""
  loc_B79D62: LitStr "                       Cantidad de padrones que realizaron pagos: "
  loc_B79D65: LitI4 -1
  loc_B79D6A: LitI4 0
  loc_B79D6F: LitI4 -1
  loc_B79D74: LitI4 0
  loc_B79D79: FLdPr Me
  loc_B79D7C: MemLdRfVar from_stack_1.global_92
  loc_B79D7F: CVarRef
  loc_B79D84: ImpAdCallI2 FormatNumber(, , , , )
  loc_B79D89: FStStrNoPop var_CC
  loc_B79D8C: ConcatStr
  loc_B79D8D: FStStrNoPop var_D0
  loc_B79D90: LitStr "</th>"
  loc_B79D93: ConcatStr
  loc_B79D94: CVarStr var_C8
  loc_B79D97: PopAdLdVar
  loc_B79D98: FLdPr Me
  loc_B79D9B: MemLdRfVar from_stack_1.global_60
  loc_B79D9E: LdPrVar
  loc_B79DA0: LateMemCall
  loc_B79DA6: FFreeStr var_CC = ""
  loc_B79DAD: FFree1Var var_C8 = ""
  loc_B79DB0: LitVarStr var_A8, "     </tr>"
  loc_B79DB5: PopAdLdVar
  loc_B79DB6: FLdPr Me
  loc_B79DB9: MemLdRfVar from_stack_1.global_60
  loc_B79DBC: LdPrVar
  loc_B79DBE: LateMemCall
  loc_B79DC4: Call Proc_134_15_A0DE88()
  loc_B79DC9: FLdPr Me
  loc_B79DCC: MemLdRfVar from_stack_1.global_60
  loc_B79DCF: LdPrVar
  loc_B79DD1: LateMemCall
  loc_B79DD7: LitStr vbNullString
  loc_B79DDA: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B79DDF: ExitProcHresult
End Sub

Private Function Proc_134_14_BD6330() 'BD6330
  'Data Table: 4634CC
  loc_BD5BDC: LitVarStr var_98, "<html>"
  loc_BD5BE1: PopAdLdVar
  loc_BD5BE2: FLdPr Me
  loc_BD5BE5: MemLdRfVar from_stack_1.global_60
  loc_BD5BE8: LdPrVar
  loc_BD5BEA: LateMemCall
  loc_BD5BF0: LitVarStr var_98, "<head>"
  loc_BD5BF5: PopAdLdVar
  loc_BD5BF6: FLdPr Me
  loc_BD5BF9: MemLdRfVar from_stack_1.global_60
  loc_BD5BFC: LdPrVar
  loc_BD5BFE: LateMemCall
  loc_BD5C04: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BD5C09: PopAdLdVar
  loc_BD5C0A: FLdPr Me
  loc_BD5C0D: MemLdRfVar from_stack_1.global_60
  loc_BD5C10: LdPrVar
  loc_BD5C12: LateMemCall
  loc_BD5C18: LitStr "<title>"
  loc_BD5C1B: FLdRfVar var_AC
  loc_BD5C1E: FLdPr Me
  loc_BD5C21:  = Me.Caption
  loc_BD5C26: ILdRf var_AC
  loc_BD5C29: ConcatStr
  loc_BD5C2A: FStStrNoPop var_B0
  loc_BD5C2D: LitStr "</title>"
  loc_BD5C30: ConcatStr
  loc_BD5C31: CVarStr var_C0
  loc_BD5C34: PopAdLdVar
  loc_BD5C35: FLdPr Me
  loc_BD5C38: MemLdRfVar from_stack_1.global_60
  loc_BD5C3B: LdPrVar
  loc_BD5C3D: LateMemCall
  loc_BD5C43: FFreeStr var_AC = ""
  loc_BD5C4A: FFree1Var var_C0 = ""
  loc_BD5C4D: LitVarStr var_98, "<style type=""text/css"">"
  loc_BD5C52: PopAdLdVar
  loc_BD5C53: FLdPr Me
  loc_BD5C56: MemLdRfVar from_stack_1.global_60
  loc_BD5C59: LdPrVar
  loc_BD5C5B: LateMemCall
  loc_BD5C61: LitVarStr var_98, ".Titulo1 {"
  loc_BD5C66: PopAdLdVar
  loc_BD5C67: FLdPr Me
  loc_BD5C6A: MemLdRfVar from_stack_1.global_60
  loc_BD5C6D: LdPrVar
  loc_BD5C6F: LateMemCall
  loc_BD5C75: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD5C7A: PopAdLdVar
  loc_BD5C7B: FLdPr Me
  loc_BD5C7E: MemLdRfVar from_stack_1.global_60
  loc_BD5C81: LdPrVar
  loc_BD5C83: LateMemCall
  loc_BD5C89: LitVarStr var_98, " font-size: 18px;"
  loc_BD5C8E: PopAdLdVar
  loc_BD5C8F: FLdPr Me
  loc_BD5C92: MemLdRfVar from_stack_1.global_60
  loc_BD5C95: LdPrVar
  loc_BD5C97: LateMemCall
  loc_BD5C9D: LitVarStr var_98, " font-weight: bold;"
  loc_BD5CA2: PopAdLdVar
  loc_BD5CA3: FLdPr Me
  loc_BD5CA6: MemLdRfVar from_stack_1.global_60
  loc_BD5CA9: LdPrVar
  loc_BD5CAB: LateMemCall
  loc_BD5CB1: LitVarStr var_98, "}"
  loc_BD5CB6: PopAdLdVar
  loc_BD5CB7: FLdPr Me
  loc_BD5CBA: MemLdRfVar from_stack_1.global_60
  loc_BD5CBD: LdPrVar
  loc_BD5CBF: LateMemCall
  loc_BD5CC5: LitVarStr var_98, ".Titulo2 {"
  loc_BD5CCA: PopAdLdVar
  loc_BD5CCB: FLdPr Me
  loc_BD5CCE: MemLdRfVar from_stack_1.global_60
  loc_BD5CD1: LdPrVar
  loc_BD5CD3: LateMemCall
  loc_BD5CD9: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD5CDE: PopAdLdVar
  loc_BD5CDF: FLdPr Me
  loc_BD5CE2: MemLdRfVar from_stack_1.global_60
  loc_BD5CE5: LdPrVar
  loc_BD5CE7: LateMemCall
  loc_BD5CED: LitVarStr var_98, " font-size: 14px;"
  loc_BD5CF2: PopAdLdVar
  loc_BD5CF3: FLdPr Me
  loc_BD5CF6: MemLdRfVar from_stack_1.global_60
  loc_BD5CF9: LdPrVar
  loc_BD5CFB: LateMemCall
  loc_BD5D01: LitVarStr var_98, " font-weight: bold;"
  loc_BD5D06: PopAdLdVar
  loc_BD5D07: FLdPr Me
  loc_BD5D0A: MemLdRfVar from_stack_1.global_60
  loc_BD5D0D: LdPrVar
  loc_BD5D0F: LateMemCall
  loc_BD5D15: LitVarStr var_98, "}"
  loc_BD5D1A: PopAdLdVar
  loc_BD5D1B: FLdPr Me
  loc_BD5D1E: MemLdRfVar from_stack_1.global_60
  loc_BD5D21: LdPrVar
  loc_BD5D23: LateMemCall
  loc_BD5D29: LitVarStr var_98, ".Normal {"
  loc_BD5D2E: PopAdLdVar
  loc_BD5D2F: FLdPr Me
  loc_BD5D32: MemLdRfVar from_stack_1.global_60
  loc_BD5D35: LdPrVar
  loc_BD5D37: LateMemCall
  loc_BD5D3D: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BD5D42: PopAdLdVar
  loc_BD5D43: FLdPr Me
  loc_BD5D46: MemLdRfVar from_stack_1.global_60
  loc_BD5D49: LdPrVar
  loc_BD5D4B: LateMemCall
  loc_BD5D51: LitVarStr var_98, " font-size: 12px;"
  loc_BD5D56: PopAdLdVar
  loc_BD5D57: FLdPr Me
  loc_BD5D5A: MemLdRfVar from_stack_1.global_60
  loc_BD5D5D: LdPrVar
  loc_BD5D5F: LateMemCall
  loc_BD5D65: LitVarStr var_98, " font-style: normal;"
  loc_BD5D6A: PopAdLdVar
  loc_BD5D6B: FLdPr Me
  loc_BD5D6E: MemLdRfVar from_stack_1.global_60
  loc_BD5D71: LdPrVar
  loc_BD5D73: LateMemCall
  loc_BD5D79: LitVarStr var_98, " font-weight: normal;"
  loc_BD5D7E: PopAdLdVar
  loc_BD5D7F: FLdPr Me
  loc_BD5D82: MemLdRfVar from_stack_1.global_60
  loc_BD5D85: LdPrVar
  loc_BD5D87: LateMemCall
  loc_BD5D8D: LitVarStr var_98, " font-variant: normal;"
  loc_BD5D92: PopAdLdVar
  loc_BD5D93: FLdPr Me
  loc_BD5D96: MemLdRfVar from_stack_1.global_60
  loc_BD5D99: LdPrVar
  loc_BD5D9B: LateMemCall
  loc_BD5DA1: LitVarStr var_98, "}"
  loc_BD5DA6: PopAdLdVar
  loc_BD5DA7: FLdPr Me
  loc_BD5DAA: MemLdRfVar from_stack_1.global_60
  loc_BD5DAD: LdPrVar
  loc_BD5DAF: LateMemCall
  loc_BD5DB5: LitVarStr var_98, ".Encabezado {"
  loc_BD5DBA: PopAdLdVar
  loc_BD5DBB: FLdPr Me
  loc_BD5DBE: MemLdRfVar from_stack_1.global_60
  loc_BD5DC1: LdPrVar
  loc_BD5DC3: LateMemCall
  loc_BD5DC9: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BD5DCE: PopAdLdVar
  loc_BD5DCF: FLdPr Me
  loc_BD5DD2: MemLdRfVar from_stack_1.global_60
  loc_BD5DD5: LdPrVar
  loc_BD5DD7: LateMemCall
  loc_BD5DDD: LitVarStr var_98, " font-size: 11px;"
  loc_BD5DE2: PopAdLdVar
  loc_BD5DE3: FLdPr Me
  loc_BD5DE6: MemLdRfVar from_stack_1.global_60
  loc_BD5DE9: LdPrVar
  loc_BD5DEB: LateMemCall
  loc_BD5DF1: LitVarStr var_98, " font-weight: bold;"
  loc_BD5DF6: PopAdLdVar
  loc_BD5DF7: FLdPr Me
  loc_BD5DFA: MemLdRfVar from_stack_1.global_60
  loc_BD5DFD: LdPrVar
  loc_BD5DFF: LateMemCall
  loc_BD5E05: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BD5E0A: PopAdLdVar
  loc_BD5E0B: FLdPr Me
  loc_BD5E0E: MemLdRfVar from_stack_1.global_60
  loc_BD5E11: LdPrVar
  loc_BD5E13: LateMemCall
  loc_BD5E19: LitVarStr var_98, "}"
  loc_BD5E1E: PopAdLdVar
  loc_BD5E1F: FLdPr Me
  loc_BD5E22: MemLdRfVar from_stack_1.global_60
  loc_BD5E25: LdPrVar
  loc_BD5E27: LateMemCall
  loc_BD5E2D: LitVarStr var_98, ".LineaDato {"
  loc_BD5E32: PopAdLdVar
  loc_BD5E33: FLdPr Me
  loc_BD5E36: MemLdRfVar from_stack_1.global_60
  loc_BD5E39: LdPrVar
  loc_BD5E3B: LateMemCall
  loc_BD5E41: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD5E46: PopAdLdVar
  loc_BD5E47: FLdPr Me
  loc_BD5E4A: MemLdRfVar from_stack_1.global_60
  loc_BD5E4D: LdPrVar
  loc_BD5E4F: LateMemCall
  loc_BD5E55: LitVarStr var_98, " font-size: 10px;"
  loc_BD5E5A: PopAdLdVar
  loc_BD5E5B: FLdPr Me
  loc_BD5E5E: MemLdRfVar from_stack_1.global_60
  loc_BD5E61: LdPrVar
  loc_BD5E63: LateMemCall
  loc_BD5E69: LitVarStr var_98, "}"
  loc_BD5E6E: PopAdLdVar
  loc_BD5E6F: FLdPr Me
  loc_BD5E72: MemLdRfVar from_stack_1.global_60
  loc_BD5E75: LdPrVar
  loc_BD5E77: LateMemCall
  loc_BD5E7D: LitVarStr var_98, ".Totales {"
  loc_BD5E82: PopAdLdVar
  loc_BD5E83: FLdPr Me
  loc_BD5E86: MemLdRfVar from_stack_1.global_60
  loc_BD5E89: LdPrVar
  loc_BD5E8B: LateMemCall
  loc_BD5E91: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD5E96: PopAdLdVar
  loc_BD5E97: FLdPr Me
  loc_BD5E9A: MemLdRfVar from_stack_1.global_60
  loc_BD5E9D: LdPrVar
  loc_BD5E9F: LateMemCall
  loc_BD5EA5: LitVarStr var_98, " font-size: 12px;"
  loc_BD5EAA: PopAdLdVar
  loc_BD5EAB: FLdPr Me
  loc_BD5EAE: MemLdRfVar from_stack_1.global_60
  loc_BD5EB1: LdPrVar
  loc_BD5EB3: LateMemCall
  loc_BD5EB9: LitVarStr var_98, " font-weight: bold;"
  loc_BD5EBE: PopAdLdVar
  loc_BD5EBF: FLdPr Me
  loc_BD5EC2: MemLdRfVar from_stack_1.global_60
  loc_BD5EC5: LdPrVar
  loc_BD5EC7: LateMemCall
  loc_BD5ECD: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BD5ED2: PopAdLdVar
  loc_BD5ED3: FLdPr Me
  loc_BD5ED6: MemLdRfVar from_stack_1.global_60
  loc_BD5ED9: LdPrVar
  loc_BD5EDB: LateMemCall
  loc_BD5EE1: LitVarStr var_98, "}"
  loc_BD5EE6: PopAdLdVar
  loc_BD5EE7: FLdPr Me
  loc_BD5EEA: MemLdRfVar from_stack_1.global_60
  loc_BD5EED: LdPrVar
  loc_BD5EEF: LateMemCall
  loc_BD5EF5: LitVarStr var_98, ".SubTotales {"
  loc_BD5EFA: PopAdLdVar
  loc_BD5EFB: FLdPr Me
  loc_BD5EFE: MemLdRfVar from_stack_1.global_60
  loc_BD5F01: LdPrVar
  loc_BD5F03: LateMemCall
  loc_BD5F09: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BD5F0E: PopAdLdVar
  loc_BD5F0F: FLdPr Me
  loc_BD5F12: MemLdRfVar from_stack_1.global_60
  loc_BD5F15: LdPrVar
  loc_BD5F17: LateMemCall
  loc_BD5F1D: LitVarStr var_98, " font-size: 10px;"
  loc_BD5F22: PopAdLdVar
  loc_BD5F23: FLdPr Me
  loc_BD5F26: MemLdRfVar from_stack_1.global_60
  loc_BD5F29: LdPrVar
  loc_BD5F2B: LateMemCall
  loc_BD5F31: LitVarStr var_98, " font-weight: bold;"
  loc_BD5F36: PopAdLdVar
  loc_BD5F37: FLdPr Me
  loc_BD5F3A: MemLdRfVar from_stack_1.global_60
  loc_BD5F3D: LdPrVar
  loc_BD5F3F: LateMemCall
  loc_BD5F45: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BD5F4A: PopAdLdVar
  loc_BD5F4B: FLdPr Me
  loc_BD5F4E: MemLdRfVar from_stack_1.global_60
  loc_BD5F51: LdPrVar
  loc_BD5F53: LateMemCall
  loc_BD5F59: LitVarStr var_98, "}"
  loc_BD5F5E: PopAdLdVar
  loc_BD5F5F: FLdPr Me
  loc_BD5F62: MemLdRfVar from_stack_1.global_60
  loc_BD5F65: LdPrVar
  loc_BD5F67: LateMemCall
  loc_BD5F6D: LitVarStr var_98, ".Tilde {"
  loc_BD5F72: PopAdLdVar
  loc_BD5F73: FLdPr Me
  loc_BD5F76: MemLdRfVar from_stack_1.global_60
  loc_BD5F79: LdPrVar
  loc_BD5F7B: LateMemCall
  loc_BD5F81: LitVarStr var_98, " font-family: Wingdings;"
  loc_BD5F86: PopAdLdVar
  loc_BD5F87: FLdPr Me
  loc_BD5F8A: MemLdRfVar from_stack_1.global_60
  loc_BD5F8D: LdPrVar
  loc_BD5F8F: LateMemCall
  loc_BD5F95: LitVarStr var_98, " font-size: 12px;"
  loc_BD5F9A: PopAdLdVar
  loc_BD5F9B: FLdPr Me
  loc_BD5F9E: MemLdRfVar from_stack_1.global_60
  loc_BD5FA1: LdPrVar
  loc_BD5FA3: LateMemCall
  loc_BD5FA9: LitVarStr var_98, "}"
  loc_BD5FAE: PopAdLdVar
  loc_BD5FAF: FLdPr Me
  loc_BD5FB2: MemLdRfVar from_stack_1.global_60
  loc_BD5FB5: LdPrVar
  loc_BD5FB7: LateMemCall
  loc_BD5FBD: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BD5FC2: PopAdLdVar
  loc_BD5FC3: FLdPr Me
  loc_BD5FC6: MemLdRfVar from_stack_1.global_60
  loc_BD5FC9: LdPrVar
  loc_BD5FCB: LateMemCall
  loc_BD5FD1: LitVarStr var_98, "</style>"
  loc_BD5FD6: PopAdLdVar
  loc_BD5FD7: FLdPr Me
  loc_BD5FDA: MemLdRfVar from_stack_1.global_60
  loc_BD5FDD: LdPrVar
  loc_BD5FDF: LateMemCall
  loc_BD5FE5: LitI4 0
  loc_BD5FEA: FStStrCopy var_B0
  loc_BD5FED: FLdRfVar var_B0
  loc_BD5FF0: LitI4 0
  loc_BD5FF5: FStStrCopy var_AC
  loc_BD5FF8: FLdRfVar var_AC
  loc_BD5FFB: LitI2_Byte 0
  loc_BD5FFD: PopTmpLdAd2 var_C2
  loc_BD6000: FLdPr Me
  loc_BD6003: MemLdRfVar from_stack_1.global_60
  loc_BD6006: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BD600B: FFreeStr var_AC = ""
  loc_BD6012: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BD6017: PopAdLdVar
  loc_BD6018: FLdPr Me
  loc_BD601B: MemLdRfVar from_stack_1.global_60
  loc_BD601E: LdPrVar
  loc_BD6020: LateMemCall
  loc_BD6026: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BD602B: PopAdLdVar
  loc_BD602C: FLdPr Me
  loc_BD602F: MemLdRfVar from_stack_1.global_60
  loc_BD6032: LdPrVar
  loc_BD6034: LateMemCall
  loc_BD603A: LitStr "    <th width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BD603D: LitI2_Byte &H5F
  loc_BD603F: CStrUI1
  loc_BD6041: FStStrNoPop var_AC
  loc_BD6044: ConcatStr
  loc_BD6045: FStStrNoPop var_B0
  loc_BD6048: LitStr """ height="""
  loc_BD604B: ConcatStr
  loc_BD604C: FStStrNoPop var_C8
  loc_BD604F: LitI2_Byte &H3C
  loc_BD6051: CStrUI1
  loc_BD6053: FStStrNoPop var_CC
  loc_BD6056: ConcatStr
  loc_BD6057: FStStrNoPop var_D0
  loc_BD605A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BD605D: ConcatStr
  loc_BD605E: FStStrNoPop var_D4
  loc_BD6061: LitStr "Municipalidad de Guaymallén"
  loc_BD6064: ConcatStr
  loc_BD6065: FStStrNoPop var_D8
  loc_BD6068: LitStr "</p>"
  loc_BD606B: ConcatStr
  loc_BD606C: CVarStr var_C0
  loc_BD606F: PopAdLdVar
  loc_BD6070: FLdPr Me
  loc_BD6073: MemLdRfVar from_stack_1.global_60
  loc_BD6076: LdPrVar
  loc_BD6078: LateMemCall
  loc_BD607E: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BD608F: FFree1Var var_C0 = ""
  loc_BD6092: LitStr "    <p>"
  loc_BD6095: FLdRfVar var_AC
  loc_BD6098: FLdPr Me
  loc_BD609B:  = Me.Caption
  loc_BD60A0: ILdRf var_AC
  loc_BD60A3: ConcatStr
  loc_BD60A4: FStStrNoPop var_B0
  loc_BD60A7: LitStr "</p></th>"
  loc_BD60AA: ConcatStr
  loc_BD60AB: CVarStr var_C0
  loc_BD60AE: PopAdLdVar
  loc_BD60AF: FLdPr Me
  loc_BD60B2: MemLdRfVar from_stack_1.global_60
  loc_BD60B5: LdPrVar
  loc_BD60B7: LateMemCall
  loc_BD60BD: FFreeStr var_AC = ""
  loc_BD60C4: FFree1Var var_C0 = ""
  loc_BD60C7: LitVarStr var_98, "  </tr>"
  loc_BD60CC: PopAdLdVar
  loc_BD60CD: FLdPr Me
  loc_BD60D0: MemLdRfVar from_stack_1.global_60
  loc_BD60D3: LdPrVar
  loc_BD60D5: LateMemCall
  loc_BD60DB: LitVarStr var_98, "  <tr>"
  loc_BD60E0: PopAdLdVar
  loc_BD60E1: FLdPr Me
  loc_BD60E4: MemLdRfVar from_stack_1.global_60
  loc_BD60E7: LdPrVar
  loc_BD60E9: LateMemCall
  loc_BD60EF: LitVarStr var_98, "    <th><hr></th>"
  loc_BD60F4: PopAdLdVar
  loc_BD60F5: FLdPr Me
  loc_BD60F8: MemLdRfVar from_stack_1.global_60
  loc_BD60FB: LdPrVar
  loc_BD60FD: LateMemCall
  loc_BD6103: LitVarStr var_98, "  </tr>"
  loc_BD6108: PopAdLdVar
  loc_BD6109: FLdPr Me
  loc_BD610C: MemLdRfVar from_stack_1.global_60
  loc_BD610F: LdPrVar
  loc_BD6111: LateMemCall
  loc_BD6117: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BD611C: PopAdLdVar
  loc_BD611D: FLdPr Me
  loc_BD6120: MemLdRfVar from_stack_1.global_60
  loc_BD6123: LdPrVar
  loc_BD6125: LateMemCall
  loc_BD612B: LitStr "    <td align=""left""><strong>Ordenanza o Expediente: </strong>"
  loc_BD612E: FLdRfVar var_AC
  loc_BD6131: FLdPr Me
  loc_BD6134: VCallAd Control_ID_OrdeObreCbo
  loc_BD6137: FStAdFunc var_DC
  loc_BD613A: FLdPr var_DC
  loc_BD613D:  = Me.Text
  loc_BD6142: ILdRf var_AC
  loc_BD6145: ConcatStr
  loc_BD6146: CVarStr var_C0
  loc_BD6149: PopAdLdVar
  loc_BD614A: FLdPr Me
  loc_BD614D: MemLdRfVar from_stack_1.global_60
  loc_BD6150: LdPrVar
  loc_BD6152: LateMemCall
  loc_BD6158: FFree1Str var_AC
  loc_BD615B: FFree1Ad var_DC
  loc_BD615E: FFree1Var var_C0 = ""
  loc_BD6161: LitVarStr var_98, "    </td>"
  loc_BD6166: PopAdLdVar
  loc_BD6167: FLdPr Me
  loc_BD616A: MemLdRfVar from_stack_1.global_60
  loc_BD616D: LdPrVar
  loc_BD616F: LateMemCall
  loc_BD6175: LitVarStr var_98, "  </tr>"
  loc_BD617A: PopAdLdVar
  loc_BD617B: FLdPr Me
  loc_BD617E: MemLdRfVar from_stack_1.global_60
  loc_BD6181: LdPrVar
  loc_BD6183: LateMemCall
  loc_BD6189: LitVarStr var_98, "</table>"
  loc_BD618E: PopAdLdVar
  loc_BD618F: FLdPr Me
  loc_BD6192: MemLdRfVar from_stack_1.global_60
  loc_BD6195: LdPrVar
  loc_BD6197: LateMemCall
  loc_BD619D: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BD61A2: PopAdLdVar
  loc_BD61A3: FLdPr Me
  loc_BD61A6: MemLdRfVar from_stack_1.global_60
  loc_BD61A9: LdPrVar
  loc_BD61AB: LateMemCall
  loc_BD61B1: LitVarStr var_98, "  <thead>"
  loc_BD61B6: PopAdLdVar
  loc_BD61B7: FLdPr Me
  loc_BD61BA: MemLdRfVar from_stack_1.global_60
  loc_BD61BD: LdPrVar
  loc_BD61BF: LateMemCall
  loc_BD61C5: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BD61CA: PopAdLdVar
  loc_BD61CB: FLdPr Me
  loc_BD61CE: MemLdRfVar from_stack_1.global_60
  loc_BD61D1: LdPrVar
  loc_BD61D3: LateMemCall
  loc_BD61D9: LitVarStr var_98, "    <th rowspan=""2"">Padrón</th>"
  loc_BD61DE: PopAdLdVar
  loc_BD61DF: FLdPr Me
  loc_BD61E2: MemLdRfVar from_stack_1.global_60
  loc_BD61E5: LdPrVar
  loc_BD61E7: LateMemCall
  loc_BD61ED: LitVarStr var_98, "    <th rowspan=""2"">Apellido y Nombre</th>"
  loc_BD61F2: PopAdLdVar
  loc_BD61F3: FLdPr Me
  loc_BD61F6: MemLdRfVar from_stack_1.global_60
  loc_BD61F9: LdPrVar
  loc_BD61FB: LateMemCall
  loc_BD6201: LitVarStr var_98, "    <th rowspan=""2"" width=""10" & Chr(37) & """>Fecha de pago</th>"
  loc_BD6206: PopAdLdVar
  loc_BD6207: FLdPr Me
  loc_BD620A: MemLdRfVar from_stack_1.global_60
  loc_BD620D: LdPrVar
  loc_BD620F: LateMemCall
  loc_BD6215: LitVarStr var_98, "    <th colspan=""5"">Facilidad</th>"
  loc_BD621A: PopAdLdVar
  loc_BD621B: FLdPr Me
  loc_BD621E: MemLdRfVar from_stack_1.global_60
  loc_BD6221: LdPrVar
  loc_BD6223: LateMemCall
  loc_BD6229: LitVarStr var_98, "    <th rowspan=""2"">Aforos</th>"
  loc_BD622E: PopAdLdVar
  loc_BD622F: FLdPr Me
  loc_BD6232: MemLdRfVar from_stack_1.global_60
  loc_BD6235: LdPrVar
  loc_BD6237: LateMemCall
  loc_BD623D: LitVarStr var_98, "    <th rowspan=""2"">Pagos</th>"
  loc_BD6242: PopAdLdVar
  loc_BD6243: FLdPr Me
  loc_BD6246: MemLdRfVar from_stack_1.global_60
  loc_BD6249: LdPrVar
  loc_BD624B: LateMemCall
  loc_BD6251: LitVarStr var_98, "    <th rowspan=""2"">Cred/Desc</th>"
  loc_BD6256: PopAdLdVar
  loc_BD6257: FLdPr Me
  loc_BD625A: MemLdRfVar from_stack_1.global_60
  loc_BD625D: LdPrVar
  loc_BD625F: LateMemCall
  loc_BD6265: LitVarStr var_98, "    <th rowspan=""2"">Saldo</th>"
  loc_BD626A: PopAdLdVar
  loc_BD626B: FLdPr Me
  loc_BD626E: MemLdRfVar from_stack_1.global_60
  loc_BD6271: LdPrVar
  loc_BD6273: LateMemCall
  loc_BD6279: LitVarStr var_98, "  </tr>"
  loc_BD627E: PopAdLdVar
  loc_BD627F: FLdPr Me
  loc_BD6282: MemLdRfVar from_stack_1.global_60
  loc_BD6285: LdPrVar
  loc_BD6287: LateMemCall
  loc_BD628D: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BD6292: PopAdLdVar
  loc_BD6293: FLdPr Me
  loc_BD6296: MemLdRfVar from_stack_1.global_60
  loc_BD6299: LdPrVar
  loc_BD629B: LateMemCall
  loc_BD62A1: LitVarStr var_98, "    <th>Nº</th>"
  loc_BD62A6: PopAdLdVar
  loc_BD62A7: FLdPr Me
  loc_BD62AA: MemLdRfVar from_stack_1.global_60
  loc_BD62AD: LdPrVar
  loc_BD62AF: LateMemCall
  loc_BD62B5: LitVarStr var_98, "    <th>Fecha</th>"
  loc_BD62BA: PopAdLdVar
  loc_BD62BB: FLdPr Me
  loc_BD62BE: MemLdRfVar from_stack_1.global_60
  loc_BD62C1: LdPrVar
  loc_BD62C3: LateMemCall
  loc_BD62C9: LitVarStr var_98, "    <th>Cuotas</th>"
  loc_BD62CE: PopAdLdVar
  loc_BD62CF: FLdPr Me
  loc_BD62D2: MemLdRfVar from_stack_1.global_60
  loc_BD62D5: LdPrVar
  loc_BD62D7: LateMemCall
  loc_BD62DD: LitVarStr var_98, "    <th>Pagadas</th>"
  loc_BD62E2: PopAdLdVar
  loc_BD62E3: FLdPr Me
  loc_BD62E6: MemLdRfVar from_stack_1.global_60
  loc_BD62E9: LdPrVar
  loc_BD62EB: LateMemCall
  loc_BD62F1: LitVarStr var_98, "    <th>Vencidas</th>"
  loc_BD62F6: PopAdLdVar
  loc_BD62F7: FLdPr Me
  loc_BD62FA: MemLdRfVar from_stack_1.global_60
  loc_BD62FD: LdPrVar
  loc_BD62FF: LateMemCall
  loc_BD6305: LitVarStr var_98, "  </tr>"
  loc_BD630A: PopAdLdVar
  loc_BD630B: FLdPr Me
  loc_BD630E: MemLdRfVar from_stack_1.global_60
  loc_BD6311: LdPrVar
  loc_BD6313: LateMemCall
  loc_BD6319: LitVarStr var_98, "  </thead>"
  loc_BD631E: PopAdLdVar
  loc_BD631F: FLdPr Me
  loc_BD6322: MemLdRfVar from_stack_1.global_60
  loc_BD6325: LdPrVar
  loc_BD6327: LateMemCall
  loc_BD632D: ExitProcHresult
End Function

Private Function Proc_134_15_A0DE88() 'A0DE88
  'Data Table: 4634CC
  loc_A0DE48: LitVarStr var_94, "</table>"
  loc_A0DE4D: PopAdLdVar
  loc_A0DE4E: FLdPr Me
  loc_A0DE51: MemLdRfVar from_stack_1.global_60
  loc_A0DE54: LdPrVar
  loc_A0DE56: LateMemCall
  loc_A0DE5C: LitVarStr var_94, "</body>"
  loc_A0DE61: PopAdLdVar
  loc_A0DE62: FLdPr Me
  loc_A0DE65: MemLdRfVar from_stack_1.global_60
  loc_A0DE68: LdPrVar
  loc_A0DE6A: LateMemCall
  loc_A0DE70: LitVarStr var_94, "</html>"
  loc_A0DE75: PopAdLdVar
  loc_A0DE76: FLdPr Me
  loc_A0DE79: MemLdRfVar from_stack_1.global_60
  loc_A0DE7C: LdPrVar
  loc_A0DE7E: LateMemCall
  loc_A0DE84: ExitProcHresult
End Function
