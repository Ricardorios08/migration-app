VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptAcuerdo3328Apremio
  Caption = "Totalidad de los Juicios de Apremio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptAcuerdo3328Apremio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10068
  ClientHeight = 3684
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
  Begin MSComctlLib.ProgressBar Pbar
    Left = 240
    Top = 1800
    Width = 9855
    Height = 150
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptAcuerdo3328Apremio.frx":08CA
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3435
    Width = 10065
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptAcuerdo3328Apremio.frx":0932
  End
  Begin VB.CommandButton cmdSalir
    Left = 9000
    Top = 2280
    Width = 855
    Height = 735
    TabIndex = 6
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
    Picture = "rptAcuerdo3328Apremio.frx":09B2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptAcuerdo3328Apremio.frx":0C04
    Left = 9000
    Top = 2160
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2040
    Width = 4575
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdTxt
      Caption = "&TXT"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3120
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2040
    Width = 4095
    Height = 1215
    TabIndex = 8
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 1
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 0
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9855
    Height = 1575
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox Text
      Left = 480
      Top = 240
      Width = 6615
      Height = 1095
      Text = "rptAcuerdo3328Apremio.frx":0C68
      TabIndex = 13
      MultiLine = -1  'True
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 7200
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 5
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9000
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptAcuerdo3328Apremio.frx":0CEA
  End
End

Attribute VB_Name = "rptAcuerdo3328Apremio"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00560FF0
  bStruc(48) As Byte ' String fields: 12
End Type


Private Sub cmdPdf_Click() '9DE70C
  'Data Table: 464238
  loc_9DE6F0: LitI2_Byte 0
  loc_9DE6F2: PopTmpLdAd2 var_8A
  loc_9DE6F5: ILdRf Me
  loc_9DE6F8: CastAd
  loc_9DE6FB: FStAdFunc var_88
  loc_9DE6FE: FLdRfVar var_88
  loc_9DE701: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DE706: FFree1Ad var_88
  loc_9DE709: ExitProcHresult
  loc_9DE70A: BranchFVar
End Sub

Private Sub cmdTxt_Click() '9CFE20
  'Data Table: 464238
  loc_9CFE08: LitI2_Byte 0
  loc_9CFE0A: ILdRf Me
  loc_9CFE0D: CastAd
  loc_9CFE10: FStAdFunc var_88
  loc_9CFE13: FLdRfVar var_88
  loc_9CFE16: ImpAdCallFPR4 Proc_57_3_ADD774(, )
  loc_9CFE1B: FFree1Ad var_88
  loc_9CFE1E: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A109B4
  'Data Table: 464238
  loc_A10974: LitI2_Byte 0
  loc_A10976: FLdPr Me
  loc_A10979: MemStI2 bGenerado
  loc_A1097C: LitI2_Byte &HFF
  loc_A1097E: FLdPr Me
  loc_A10981: MemStI2 bLogos
  loc_A10984: LitI2_Byte 0
  loc_A10986: ILdRf Me
  loc_A10989: CastAd
  loc_A1098C: FStAdFunc var_88
  loc_A1098F: FLdRfVar var_88
  loc_A10992: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A10997: FFree1Ad var_88
  loc_A1099A: Call HabilitarCriterio()
  loc_A1099F: ILdRf Me
  loc_A109A2: CastAd
  loc_A109A5: FStAdFunc var_88
  loc_A109A8: FLdRfVar var_88
  loc_A109AB: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A109B0: FFree1Ad var_88
  loc_A109B3: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DD2BC
  'Data Table: 464238
  loc_9DD2A0: LitI2_Byte &HFF
  loc_9DD2A2: LitI2_Byte 0
  loc_9DD2A4: ILdRf Me
  loc_9DD2A7: CastAd
  loc_9DD2AA: FStAdFunc var_88
  loc_9DD2AD: FLdRfVar var_88
  loc_9DD2B0: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DD2B5: FFree1Ad var_88
  loc_9DD2B8: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CFC58
  'Data Table: 464238
  loc_9CFC40: ILdRf Me
  loc_9CFC43: CastAd
  loc_9CFC46: FStAdFunc var_88
  loc_9CFC49: FLdRfVar var_88
  loc_9CFC4C: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CFC51: FFree1Ad var_88
  loc_9CFC54: ExitProcHresult
  loc_9CFC55: FLdPr var_B8
End Sub

Private Sub Form_Load() '9DD94C
  'Data Table: 464238
  loc_9DD930: ILdRf Me
  loc_9DD933: CastAd
  loc_9DD936: FStAdFunc var_88
  loc_9DD939: FLdRfVar var_88
  loc_9DD93C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DD941: FFree1Ad var_88
  loc_9DD944: Call cmdNueva_Click()
  loc_9DD949: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CF1A8
  'Data Table: 464238
  loc_9CF190: FLdPr Me
  loc_9CF193: VCallAd Control_ID_wbbReporte
  loc_9CF196: FStAdFunc var_88
  loc_9CF199: FLdRfVar var_88
  loc_9CF19C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CF1A1: FFree1Ad var_88
  loc_9CF1A4: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CED80
  'Data Table: 464238
  loc_9CED68: LitI2_Byte 0
  loc_9CED6A: ILdRf Me
  loc_9CED6D: CastAd
  loc_9CED70: FStAdFunc var_88
  loc_9CED73: FLdRfVar var_88
  loc_9CED76: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CED7B: FFree1Ad var_88
  loc_9CED7E: ExitProcHresult
  loc_9CED7F: LitI2_Byte &HC0
End Sub

Private Sub cmdSalir_Click() 'A00628
  'Data Table: 464238
  loc_A005F8: LitVarStr var_94, "Cerrando..."
  loc_A005FD: PopAdLdVar
  loc_A005FE: FLdPr Me
  loc_A00601: VCallAd Control_ID_statusBar
  loc_A00604: FStAdFunc var_A8
  loc_A00607: FLdPr var_A8
  loc_A0060A: LateIdSt
  loc_A0060F: FFree1Ad var_A8
  loc_A00612: ILdRf Me
  loc_A00615: FStAdNoPop
  loc_A00619: ImpAdLdRf MemVar_D9C5D8
  loc_A0061C: NewIfNullPr Global
  loc_A0061F: Global.Unload from_stack_1
  loc_A00624: FFree1Ad var_A8
  loc_A00627: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1D2A8
  'Data Table: 464238
  loc_A1D270: FLdPr Me
  loc_A1D273: VCallAd Control_ID_statusBar
  loc_A1D276: FStAdFunc var_88
  loc_A1D279: FLdPr var_88
  loc_A1D27C: LateIdLdVar var_98 DispID_1 0
  loc_A1D283: CStrVarTmp
  loc_A1D284: CVarStr var_A8
  loc_A1D287: PopAdLdVar
  loc_A1D288: FLdPr Me
  loc_A1D28B: VCallAd Control_ID_statusBar
  loc_A1D28E: FStAdFunc var_BC
  loc_A1D291: FLdPr var_BC
  loc_A1D294: LateIdSt
  loc_A1D299: FFreeAd var_88 = ""
  loc_A1D2A0: FFreeVar var_98 = ""
  loc_A1D2A7: ExitProcHresult
End Sub

Public Function bGeneradoGet() '464DAC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '464DBB
  bGenerado = Value
End Sub

Public Function bLogosGet() '464DCA
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '464DD9
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() '9AEE04
  'Data Table: 464238
  loc_9AEE00: ExitProcHresult
  loc_9AEE01: GetRecOwn3
End Sub

Public Sub GeneraReporte() 'BD7258
  'Data Table: 464238
  loc_BD6B30: FLdPr Me
  loc_BD6B33: MemLdI2 bGenerado
  loc_BD6B36: BranchF loc_BD6B3A
  loc_BD6B39: ExitProcHresult
  loc_BD6B3A: LitVarStr var_94, "Generando reporte..."
  loc_BD6B3F: PopAdLdVar
  loc_BD6B40: FLdPr Me
  loc_BD6B43: VCallAd Control_ID_statusBar
  loc_BD6B46: FStAdFunc var_A8
  loc_BD6B49: FLdPr var_A8
  loc_BD6B4C: LateIdSt
  loc_BD6B51: FFree1Ad var_A8
  loc_BD6B54: LitI4 &HB
  loc_BD6B59: CI2I4
  loc_BD6B5A: FLdPr Me
  loc_BD6B5D: Me.MousePointer = from_stack_1
  loc_BD6B62: FLdPr Me
  loc_BD6B65: MemLdRfVar from_stack_1.global_92
  loc_BD6B68: NewIfNullAd
  loc_BD6B6B: FStAd var_AC 
  loc_BD6B6F: LitStr "Municipalidad de Guaymallén"
  loc_BD6B72: LitStr "Municipalidad de Lavalle"
  loc_BD6B75: EqStr
  loc_BD6B77: BranchF loc_BD6C12
  loc_BD6B7A: LitStr "SELECT apremio.NumeApre, apremio.FealApre, apremio.AutoApre,"
  loc_BD6B7D: LitStr " concat('"
  loc_BD6B80: ConcatStr
  loc_BD6B81: FStStrNoPop var_B0
  loc_BD6B84: LitStr "Municipalidad de Guaymallén"
  loc_BD6B87: ConcatStr
  loc_BD6B88: FStStrNoPop var_B4
  loc_BD6B8B: LitStr " C/',DetaPers,' /P Apremio') as expcar, apremio.JuzgApre, apremio.SecrApre, '"
  loc_BD6B8E: ConcatStr
  loc_BD6B8F: FStStrNoPop var_B8
  loc_BD6B92: LitStr "Primera"
  loc_BD6B95: ConcatStr
  loc_BD6B96: FStStrNoPop var_BC
  loc_BD6B99: LitStr "' as CircApre, instapre2.FealInap FealInapInicio, apremio.CodiReca, DetaReca,"
  loc_BD6B9C: ConcatStr
  loc_BD6B9D: FStStrNoPop var_C0
  loc_BD6BA0: LitStr " apremio.CapiApre + apremio.RecaApre as monto, instjudi.DetaInju, instapreActu.FealInap FealInapActual"
  loc_BD6BA3: ConcatStr
  loc_BD6BA4: FStStrNoPop var_C4
  loc_BD6BA7: LitStr " FROM apremio"
  loc_BD6BAA: ConcatStr
  loc_BD6BAB: FStStrNoPop var_C8
  loc_BD6BAE: LitStr " INNER JOIN instapre instapre2 ON instapre2.NumeApre = apremio.NumeApre AND instapre2.CodiInju = 2"
  loc_BD6BB1: ConcatStr
  loc_BD6BB2: FStStrNoPop var_CC
  loc_BD6BB5: LitStr " INNER JOIN instapre instapreActu ON instapreActu.NumeApre = apremio.NumeApre AND instapreActu.CodiInju = apremio.CodiInju"
  loc_BD6BB8: ConcatStr
  loc_BD6BB9: FStStrNoPop var_D0
  loc_BD6BBC: LitStr " INNER JOIN relacion ON relacion.CodiOfic = apremio.CodiOfic AND relacion.CuenCtct = apremio.CuenCtct AND TipoRela = 'Titular'"
  loc_BD6BBF: ConcatStr
  loc_BD6BC0: FStStrNoPop var_D4
  loc_BD6BC3: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BD6BC6: ConcatStr
  loc_BD6BC7: FStStrNoPop var_D8
  loc_BD6BCA: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BD6BCD: ConcatStr
  loc_BD6BCE: FStStrNoPop var_DC
  loc_BD6BD1: LitStr " INNER JOIN instjudi ON instjudi.CodiInju = apremio.CodiInju"
  loc_BD6BD4: ConcatStr
  loc_BD6BD5: FStStrNoPop var_E0
  loc_BD6BD8: LitStr " WHERE apremio.CodiInju >= 2 AND apremio.CancApre = 0 AND apremio.EstaApre <> 7"
  loc_BD6BDB: ConcatStr
  loc_BD6BDC: FStStrNoPop var_E4
  loc_BD6BDF: LitStr " ORDER BY apremio.NumeApre"
  loc_BD6BE2: ConcatStr
  loc_BD6BE3: FStStrNoPop var_E8
  loc_BD6BE6: FLdPr var_AC
  loc_BD6BE9: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BD6BEE: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_BD6C0F: Branch loc_BD6CA7
  loc_BD6C12: LitStr "SELECT apremio.NumeApre, apremio.FealApre, apremio.AutoApre,"
  loc_BD6C15: LitStr " concat('"
  loc_BD6C18: ConcatStr
  loc_BD6C19: FStStrNoPop var_B0
  loc_BD6C1C: LitStr "Municipalidad de Guaymallén"
  loc_BD6C1F: ConcatStr
  loc_BD6C20: FStStrNoPop var_B4
  loc_BD6C23: LitStr " C/',DetaPers,' /P Apremio') as expcar, apremio.JuzgApre, apremio.SecrApre, '"
  loc_BD6C26: ConcatStr
  loc_BD6C27: FStStrNoPop var_B8
  loc_BD6C2A: LitStr "Primera"
  loc_BD6C2D: ConcatStr
  loc_BD6C2E: FStStrNoPop var_BC
  loc_BD6C31: LitStr "' as CircApre, instapre2.FealInap FealInapInicio, apremio.CodiReca, DetaReca,"
  loc_BD6C34: ConcatStr
  loc_BD6C35: FStStrNoPop var_C0
  loc_BD6C38: LitStr " apremio.CapiApre + apremio.RecaApre as monto, instjudi.DetaInju, instapreActu.FealInap FealInapActual"
  loc_BD6C3B: ConcatStr
  loc_BD6C3C: FStStrNoPop var_C4
  loc_BD6C3F: LitStr " FROM apremio"
  loc_BD6C42: ConcatStr
  loc_BD6C43: FStStrNoPop var_C8
  loc_BD6C46: LitStr " INNER JOIN instapre instapre2 ON instapre2.NumeApre = apremio.NumeApre AND instapre2.CodiInju = 2"
  loc_BD6C49: ConcatStr
  loc_BD6C4A: FStStrNoPop var_CC
  loc_BD6C4D: LitStr " INNER JOIN instapre instapreActu ON instapreActu.NumeApre = apremio.NumeApre AND instapreActu.CodiInju = apremio.CodiInju"
  loc_BD6C50: ConcatStr
  loc_BD6C51: FStStrNoPop var_D0
  loc_BD6C54: LitStr " INNER JOIN relacion ON relacion.CodiOfic = apremio.CodiOfic AND relacion.CuenCtct = apremio.CuenCtct AND TipoRela = 'Titular'"
  loc_BD6C57: ConcatStr
  loc_BD6C58: FStStrNoPop var_D4
  loc_BD6C5B: LitStr " INNER JOIN infogov.persona ON infogov.persona.CucuPers = relacion.CucuPers"
  loc_BD6C5E: ConcatStr
  loc_BD6C5F: FStStrNoPop var_D8
  loc_BD6C62: LitStr " INNER JOIN recaudador ON recaudador.CodiReca = apremio.CodiReca"
  loc_BD6C65: ConcatStr
  loc_BD6C66: FStStrNoPop var_DC
  loc_BD6C69: LitStr " INNER JOIN instjudi ON instjudi.CodiInju = apremio.CodiInju"
  loc_BD6C6C: ConcatStr
  loc_BD6C6D: FStStrNoPop var_E0
  loc_BD6C70: LitStr " WHERE apremio.CodiInju >= 2 AND apremio.CancApre = 0 AND apremio.EstaApre <> 'Suspendido'"
  loc_BD6C73: ConcatStr
  loc_BD6C74: FStStrNoPop var_E4
  loc_BD6C77: LitStr " ORDER BY apremio.NumeApre"
  loc_BD6C7A: ConcatStr
  loc_BD6C7B: FStStrNoPop var_E8
  loc_BD6C7E: FLdPr var_AC
  loc_BD6C81: Call clsapremio.RedefineRS(from_stack_1v)
  loc_BD6C86: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_BD6CA7: FLdRfVar var_EC
  loc_BD6CAA: FLdPr var_AC
  loc_BD6CAD: from_stack_1 = clsapremio.RecordCount
  loc_BD6CB2: ILdRf var_EC
  loc_BD6CB5: LitI4 0
  loc_BD6CBA: EqI4
  loc_BD6CBB: BranchF loc_BD6CDB
  loc_BD6CBE: LitI4 0
  loc_BD6CC3: LitI4 0
  loc_BD6CC8: FLdPr Me
  loc_BD6CCB: MemLdRfVar from_stack_1.global_96
  loc_BD6CCE: Redim
  loc_BD6CD8: Branch loc_BD721E
  loc_BD6CDB: LitI4 0
  loc_BD6CE0: FLdRfVar var_EC
  loc_BD6CE3: FLdPr var_AC
  loc_BD6CE6: from_stack_1 = clsapremio.RecordCount
  loc_BD6CEB: ILdRf var_EC
  loc_BD6CEE: FLdPr Me
  loc_BD6CF1: MemLdRfVar from_stack_1.global_96
  loc_BD6CF4: Redim
  loc_BD6CFE: FLdPr var_AC
  loc_BD6D01: Call clsapremio.MoveFirst()
  loc_BD6D06: FLdRfVar var_EC
  loc_BD6D09: FLdPr var_AC
  loc_BD6D0C: from_stack_1 = clsapremio.RecordCount
  loc_BD6D11: ILdRf var_EC
  loc_BD6D14: CR8I4
  loc_BD6D15: CVarR4
  loc_BD6D19: PopAdLdVar
  loc_BD6D1A: FLdPrThis
  loc_BD6D1B: VCallAd Control_ID_Pbar
  loc_BD6D1E: FStAdFunc var_A8
  loc_BD6D21: FLdPr var_A8
  loc_BD6D24: LateIdSt
  loc_BD6D29: FFree1Ad var_A8
  loc_BD6D2C: LitVar_TRUE var_94
  loc_BD6D2F: PopAdLdVar
  loc_BD6D30: FLdPrThis
  loc_BD6D31: VCallAd Control_ID_Pbar
  loc_BD6D34: FStAdFunc var_A8
  loc_BD6D37: FLdPr var_A8
  loc_BD6D3A: LateIdSt
  loc_BD6D3F: FFree1Ad var_A8
  loc_BD6D42: LitI4 1
  loc_BD6D47: FLdPr Me
  loc_BD6D4A: MemLdRfVar from_stack_1.global_100
  loc_BD6D4D: FLdPr Me
  loc_BD6D50: MemLdStr global_96
  loc_BD6D53: LitI2_Byte 1
  loc_BD6D55: FnUBound
  loc_BD6D57: ForI4 var_F4
  loc_BD6D5D: FLdPr Me
  loc_BD6D60: MemLdStr global_100
  loc_BD6D63: CR8I4
  loc_BD6D64: CVarR4
  loc_BD6D68: PopAdLdVar
  loc_BD6D69: FLdPrThis
  loc_BD6D6A: VCallAd Control_ID_Pbar
  loc_BD6D6D: FStAdFunc var_A8
  loc_BD6D70: FLdPr var_A8
  loc_BD6D73: LateIdSt
  loc_BD6D78: FFree1Ad var_A8
  loc_BD6D7B: FLdRfVar var_FC
  loc_BD6D7E: LitVarStr var_94, "NumeApre"
  loc_BD6D83: PopAdLdVar
  loc_BD6D84: FLdRfVar var_F8
  loc_BD6D87: FLdRfVar var_A8
  loc_BD6D8A: FLdPr var_AC
  loc_BD6D8D: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6D92: FLdPr var_A8
  loc_BD6D95:  = Me.Fields
  loc_BD6D9A: FLdPr var_F8
  loc_BD6D9D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6DA2: LitI2_Byte 0
  loc_BD6DA4: LitVar_Missing var_120
  loc_BD6DA7: LitI2_Byte 0
  loc_BD6DA9: FLdZeroAd var_FC
  loc_BD6DAC: CVarAd
  loc_BD6DB0: PopAdLdVar
  loc_BD6DB1: FLdPr Me
  loc_BD6DB4: MemLdStr global_100
  loc_BD6DB7: FLdPr Me
  loc_BD6DBA: MemLdStr global_96
  loc_BD6DBD: AryLock
  loc_BD6DC0: Ary1LdPr
  loc_BD6DC1: MemLdRfVar from_stack_1.global_0
  loc_BD6DC4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6DC9: AryUnlock
  loc_BD6DCC: FFreeAd var_A8 = ""
  loc_BD6DD3: FFreeVar var_110 = ""
  loc_BD6DDA: FLdRfVar var_FC
  loc_BD6DDD: LitVarStr var_94, "FealApre"
  loc_BD6DE2: PopAdLdVar
  loc_BD6DE3: FLdRfVar var_F8
  loc_BD6DE6: FLdRfVar var_A8
  loc_BD6DE9: FLdPr var_AC
  loc_BD6DEC: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6DF1: FLdPr var_A8
  loc_BD6DF4:  = Me.Fields
  loc_BD6DF9: FLdPr var_F8
  loc_BD6DFC: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6E01: LitI2_Byte 0
  loc_BD6E03: LitVar_Missing var_120
  loc_BD6E06: LitI2_Byte 0
  loc_BD6E08: FLdZeroAd var_FC
  loc_BD6E0B: CVarAd
  loc_BD6E0F: PopAdLdVar
  loc_BD6E10: FLdPr Me
  loc_BD6E13: MemLdStr global_100
  loc_BD6E16: FLdPr Me
  loc_BD6E19: MemLdStr global_96
  loc_BD6E1C: AryLock
  loc_BD6E1F: Ary1LdPr
  loc_BD6E20: MemLdRfVar from_stack_1.global_4
  loc_BD6E23: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6E28: AryUnlock
  loc_BD6E2B: FFreeAd var_A8 = ""
  loc_BD6E32: FFreeVar var_110 = ""
  loc_BD6E39: FLdRfVar var_FC
  loc_BD6E3C: LitVarStr var_94, "AutoApre"
  loc_BD6E41: PopAdLdVar
  loc_BD6E42: FLdRfVar var_F8
  loc_BD6E45: FLdRfVar var_A8
  loc_BD6E48: FLdPr var_AC
  loc_BD6E4B: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6E50: FLdPr var_A8
  loc_BD6E53:  = Me.Fields
  loc_BD6E58: FLdPr var_F8
  loc_BD6E5B: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6E60: LitI2_Byte 0
  loc_BD6E62: LitVar_Missing var_120
  loc_BD6E65: LitI2_Byte 0
  loc_BD6E67: FLdZeroAd var_FC
  loc_BD6E6A: CVarAd
  loc_BD6E6E: PopAdLdVar
  loc_BD6E6F: FLdPr Me
  loc_BD6E72: MemLdStr global_100
  loc_BD6E75: FLdPr Me
  loc_BD6E78: MemLdStr global_96
  loc_BD6E7B: AryLock
  loc_BD6E7E: Ary1LdPr
  loc_BD6E7F: MemLdRfVar from_stack_1.global_8
  loc_BD6E82: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6E87: AryUnlock
  loc_BD6E8A: FFreeAd var_A8 = ""
  loc_BD6E91: FFreeVar var_110 = ""
  loc_BD6E98: FLdRfVar var_FC
  loc_BD6E9B: LitVarStr var_94, "expcar"
  loc_BD6EA0: PopAdLdVar
  loc_BD6EA1: FLdRfVar var_F8
  loc_BD6EA4: FLdRfVar var_A8
  loc_BD6EA7: FLdPr var_AC
  loc_BD6EAA: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6EAF: FLdPr var_A8
  loc_BD6EB2:  = Me.Fields
  loc_BD6EB7: FLdPr var_F8
  loc_BD6EBA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6EBF: LitI2_Byte 0
  loc_BD6EC1: LitVar_Missing var_120
  loc_BD6EC4: LitI2_Byte 0
  loc_BD6EC6: FLdZeroAd var_FC
  loc_BD6EC9: CVarAd
  loc_BD6ECD: PopAdLdVar
  loc_BD6ECE: FLdPr Me
  loc_BD6ED1: MemLdStr global_100
  loc_BD6ED4: FLdPr Me
  loc_BD6ED7: MemLdStr global_96
  loc_BD6EDA: AryLock
  loc_BD6EDD: Ary1LdPr
  loc_BD6EDE: MemLdRfVar from_stack_1.global_12
  loc_BD6EE1: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6EE6: AryUnlock
  loc_BD6EE9: FFreeAd var_A8 = ""
  loc_BD6EF0: FFreeVar var_110 = ""
  loc_BD6EF7: FLdRfVar var_FC
  loc_BD6EFA: LitVarStr var_94, "JuzgApre"
  loc_BD6EFF: PopAdLdVar
  loc_BD6F00: FLdRfVar var_F8
  loc_BD6F03: FLdRfVar var_A8
  loc_BD6F06: FLdPr var_AC
  loc_BD6F09: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6F0E: FLdPr var_A8
  loc_BD6F11:  = Me.Fields
  loc_BD6F16: FLdPr var_F8
  loc_BD6F19: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6F1E: LitI2_Byte 0
  loc_BD6F20: LitVar_Missing var_120
  loc_BD6F23: LitI2_Byte 0
  loc_BD6F25: FLdZeroAd var_FC
  loc_BD6F28: CVarAd
  loc_BD6F2C: PopAdLdVar
  loc_BD6F2D: FLdPr Me
  loc_BD6F30: MemLdStr global_100
  loc_BD6F33: FLdPr Me
  loc_BD6F36: MemLdStr global_96
  loc_BD6F39: AryLock
  loc_BD6F3C: Ary1LdPr
  loc_BD6F3D: MemLdRfVar from_stack_1.global_16
  loc_BD6F40: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6F45: AryUnlock
  loc_BD6F48: FFreeAd var_A8 = ""
  loc_BD6F4F: FFreeVar var_110 = ""
  loc_BD6F56: FLdRfVar var_FC
  loc_BD6F59: LitVarStr var_94, "SecrApre"
  loc_BD6F5E: PopAdLdVar
  loc_BD6F5F: FLdRfVar var_F8
  loc_BD6F62: FLdRfVar var_A8
  loc_BD6F65: FLdPr var_AC
  loc_BD6F68: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6F6D: FLdPr var_A8
  loc_BD6F70:  = Me.Fields
  loc_BD6F75: FLdPr var_F8
  loc_BD6F78: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6F7D: LitI2_Byte 0
  loc_BD6F7F: LitVar_Missing var_120
  loc_BD6F82: LitI2_Byte 0
  loc_BD6F84: FLdZeroAd var_FC
  loc_BD6F87: CVarAd
  loc_BD6F8B: PopAdLdVar
  loc_BD6F8C: FLdPr Me
  loc_BD6F8F: MemLdStr global_100
  loc_BD6F92: FLdPr Me
  loc_BD6F95: MemLdStr global_96
  loc_BD6F98: AryLock
  loc_BD6F9B: Ary1LdPr
  loc_BD6F9C: MemLdRfVar from_stack_1.global_20
  loc_BD6F9F: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD6FA4: AryUnlock
  loc_BD6FA7: FFreeAd var_A8 = ""
  loc_BD6FAE: FFreeVar var_110 = ""
  loc_BD6FB5: FLdRfVar var_FC
  loc_BD6FB8: LitVarStr var_94, "CircApre"
  loc_BD6FBD: PopAdLdVar
  loc_BD6FBE: FLdRfVar var_F8
  loc_BD6FC1: FLdRfVar var_A8
  loc_BD6FC4: FLdPr var_AC
  loc_BD6FC7: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD6FCC: FLdPr var_A8
  loc_BD6FCF:  = Me.Fields
  loc_BD6FD4: FLdPr var_F8
  loc_BD6FD7: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6FDC: LitI2_Byte 0
  loc_BD6FDE: LitVar_Missing var_120
  loc_BD6FE1: LitI2_Byte 0
  loc_BD6FE3: FLdZeroAd var_FC
  loc_BD6FE6: CVarAd
  loc_BD6FEA: PopAdLdVar
  loc_BD6FEB: FLdPr Me
  loc_BD6FEE: MemLdStr global_100
  loc_BD6FF1: FLdPr Me
  loc_BD6FF4: MemLdStr global_96
  loc_BD6FF7: AryLock
  loc_BD6FFA: Ary1LdPr
  loc_BD6FFB: MemLdRfVar from_stack_1.global_24
  loc_BD6FFE: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD7003: AryUnlock
  loc_BD7006: FFreeAd var_A8 = ""
  loc_BD700D: FFreeVar var_110 = ""
  loc_BD7014: FLdRfVar var_FC
  loc_BD7017: LitVarStr var_94, "FealInapInicio"
  loc_BD701C: PopAdLdVar
  loc_BD701D: FLdRfVar var_F8
  loc_BD7020: FLdRfVar var_A8
  loc_BD7023: FLdPr var_AC
  loc_BD7026: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD702B: FLdPr var_A8
  loc_BD702E:  = Me.Fields
  loc_BD7033: FLdPr var_F8
  loc_BD7036: from_stack_2 = Me.Item(from_stack_1)
  loc_BD703B: LitI2_Byte 0
  loc_BD703D: LitVar_Missing var_120
  loc_BD7040: LitI2_Byte 0
  loc_BD7042: FLdZeroAd var_FC
  loc_BD7045: CVarAd
  loc_BD7049: PopAdLdVar
  loc_BD704A: FLdPr Me
  loc_BD704D: MemLdStr global_100
  loc_BD7050: FLdPr Me
  loc_BD7053: MemLdStr global_96
  loc_BD7056: AryLock
  loc_BD7059: Ary1LdPr
  loc_BD705A: MemLdRfVar from_stack_1.global_28
  loc_BD705D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD7062: AryUnlock
  loc_BD7065: FFreeAd var_A8 = ""
  loc_BD706C: FFreeVar var_110 = ""
  loc_BD7073: FLdRfVar var_FC
  loc_BD7076: LitVarStr var_94, "DetaReca"
  loc_BD707B: PopAdLdVar
  loc_BD707C: FLdRfVar var_F8
  loc_BD707F: FLdRfVar var_A8
  loc_BD7082: FLdPr var_AC
  loc_BD7085: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD708A: FLdPr var_A8
  loc_BD708D:  = Me.Fields
  loc_BD7092: FLdPr var_F8
  loc_BD7095: from_stack_2 = Me.Item(from_stack_1)
  loc_BD709A: LitI2_Byte 0
  loc_BD709C: LitVar_Missing var_120
  loc_BD709F: LitI2_Byte 0
  loc_BD70A1: FLdZeroAd var_FC
  loc_BD70A4: CVarAd
  loc_BD70A8: PopAdLdVar
  loc_BD70A9: FLdPr Me
  loc_BD70AC: MemLdStr global_100
  loc_BD70AF: FLdPr Me
  loc_BD70B2: MemLdStr global_96
  loc_BD70B5: AryLock
  loc_BD70B8: Ary1LdPr
  loc_BD70B9: MemLdRfVar from_stack_1.global_32
  loc_BD70BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD70C1: AryUnlock
  loc_BD70C4: FFreeAd var_A8 = ""
  loc_BD70CB: FFreeVar var_110 = ""
  loc_BD70D2: FLdRfVar var_FC
  loc_BD70D5: LitVarStr var_94, "Monto"
  loc_BD70DA: PopAdLdVar
  loc_BD70DB: FLdRfVar var_F8
  loc_BD70DE: FLdRfVar var_A8
  loc_BD70E1: FLdPr var_AC
  loc_BD70E4: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD70E9: FLdPr var_A8
  loc_BD70EC:  = Me.Fields
  loc_BD70F1: FLdPr var_F8
  loc_BD70F4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD70F9: LitI2_Byte 0
  loc_BD70FB: LitVar_Missing var_120
  loc_BD70FE: LitI2_Byte &HFF
  loc_BD7100: FLdZeroAd var_FC
  loc_BD7103: CVarAd
  loc_BD7107: PopAdLdVar
  loc_BD7108: FLdPr Me
  loc_BD710B: MemLdStr global_100
  loc_BD710E: FLdPr Me
  loc_BD7111: MemLdStr global_96
  loc_BD7114: AryLock
  loc_BD7117: Ary1LdPr
  loc_BD7118: MemLdRfVar from_stack_1.global_36
  loc_BD711B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD7120: AryUnlock
  loc_BD7123: FFreeAd var_A8 = ""
  loc_BD712A: FFreeVar var_110 = ""
  loc_BD7131: FLdRfVar var_FC
  loc_BD7134: LitVarStr var_94, "DetaInju"
  loc_BD7139: PopAdLdVar
  loc_BD713A: FLdRfVar var_F8
  loc_BD713D: FLdRfVar var_A8
  loc_BD7140: FLdPr var_AC
  loc_BD7143: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD7148: FLdPr var_A8
  loc_BD714B:  = Me.Fields
  loc_BD7150: FLdPr var_F8
  loc_BD7153: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7158: LitI2_Byte 0
  loc_BD715A: LitVar_Missing var_120
  loc_BD715D: LitI2_Byte 0
  loc_BD715F: FLdZeroAd var_FC
  loc_BD7162: CVarAd
  loc_BD7166: PopAdLdVar
  loc_BD7167: FLdPr Me
  loc_BD716A: MemLdStr global_100
  loc_BD716D: FLdPr Me
  loc_BD7170: MemLdStr global_96
  loc_BD7173: AryLock
  loc_BD7176: Ary1LdPr
  loc_BD7177: MemLdRfVar from_stack_1.global_40
  loc_BD717A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD717F: AryUnlock
  loc_BD7182: FFreeAd var_A8 = ""
  loc_BD7189: FFreeVar var_110 = ""
  loc_BD7190: FLdRfVar var_FC
  loc_BD7193: LitVarStr var_94, "FealInapActual"
  loc_BD7198: PopAdLdVar
  loc_BD7199: FLdRfVar var_F8
  loc_BD719C: FLdRfVar var_A8
  loc_BD719F: FLdPr var_AC
  loc_BD71A2: from_stack_1v = clsapremio.RsFrmGet()
  loc_BD71A7: FLdPr var_A8
  loc_BD71AA:  = Me.Fields
  loc_BD71AF: FLdPr var_F8
  loc_BD71B2: from_stack_2 = Me.Item(from_stack_1)
  loc_BD71B7: LitI2_Byte 0
  loc_BD71B9: LitVar_Missing var_120
  loc_BD71BC: LitI2_Byte 0
  loc_BD71BE: FLdZeroAd var_FC
  loc_BD71C1: CVarAd
  loc_BD71C5: PopAdLdVar
  loc_BD71C6: FLdPr Me
  loc_BD71C9: MemLdStr global_100
  loc_BD71CC: FLdPr Me
  loc_BD71CF: MemLdStr global_96
  loc_BD71D2: AryLock
  loc_BD71D5: Ary1LdPr
  loc_BD71D6: MemLdRfVar from_stack_1.global_44
  loc_BD71D9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BD71DE: AryUnlock
  loc_BD71E1: FFreeAd var_A8 = ""
  loc_BD71E8: FFreeVar var_110 = ""
  loc_BD71EF: LitI2_Byte 1
  loc_BD71F1: PopTmpLdAd2 var_122
  loc_BD71F4: FLdPr var_AC
  loc_BD71F7: Call clsapremio.Move(from_stack_1v)
  loc_BD71FC: FLdPr Me
  loc_BD71FF: MemLdRfVar from_stack_1.global_100
  loc_BD7202: NextI4 var_F4, loc_BD6D5D
  loc_BD7207: LitVar_FALSE
  loc_BD720B: PopAdLdVar
  loc_BD720C: FLdPrThis
  loc_BD720D: VCallAd Control_ID_Pbar
  loc_BD7210: FStAdFunc var_A8
  loc_BD7213: FLdPr var_A8
  loc_BD7216: LateIdSt
  loc_BD721B: FFree1Ad var_A8
  loc_BD721E: LitNothing
  loc_BD7220: FStAd var_AC 
  loc_BD7224: LitI2_Byte &HFF
  loc_BD7226: FLdPr Me
  loc_BD7229: MemStI2 bGenerado
  loc_BD722C: LitI4 0
  loc_BD7231: CI2I4
  loc_BD7232: FLdPr Me
  loc_BD7235: Me.MousePointer = from_stack_1
  loc_BD723A: LitVarStr var_94, vbNullString
  loc_BD723F: PopAdLdVar
  loc_BD7240: FLdPr Me
  loc_BD7243: VCallAd Control_ID_statusBar
  loc_BD7246: FStAdFunc var_A8
  loc_BD7249: FLdPr var_A8
  loc_BD724C: LateIdSt
  loc_BD7251: FFree1Ad var_A8
  loc_BD7254: ExitProcHresult
  loc_BD7255: CStrVarTmp
End Sub

Public Sub GeneraHTML() 'B377D8
  'Data Table: 464238
  loc_B374C8: FLdRfVar var_88
  loc_B374CB: LitI2_Byte 0
  loc_B374CD: LitI2_Byte &HFF
  loc_B374CF: ImpAdLdI4 MemVar_D93C84
  loc_B374D2: FLdPr Me
  loc_B374D5: MemLdRfVar from_stack_1.global_56
  loc_B374D8: NewIfNullPr IFileSystem3
  loc_B374DB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B374E0: ILdRf var_88
  loc_B374E3: FLdPr Me
  loc_B374E6: MemStVarAd
  loc_B374EA: FFree1Ad var_88
  loc_B374ED: LitI2_Byte &HFF
  loc_B374EF: ImpAdStI2 MemVar_D93C8A
  loc_B374F2: Call Proc_131_19_BB1EA8()
  loc_B374F7: FLdPr Me
  loc_B374FA: MemLdStr global_96
  loc_B374FD: LitI2_Byte 1
  loc_B374FF: FnUBound
  loc_B37501: LitI4 0
  loc_B37506: EqI4
  loc_B37507: BranchF loc_B37549
  loc_B3750A: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3750F: PopAdLdVar
  loc_B37510: FLdPr Me
  loc_B37513: MemLdRfVar from_stack_1.global_60
  loc_B37516: LdPrVar
  loc_B37518: LateMemCall
  loc_B3751E: LitVarStr var_98, "   <td colspan=""4"" align=""center""><strong>SIN MOVIMIENTO</strong></td>"
  loc_B37523: PopAdLdVar
  loc_B37524: FLdPr Me
  loc_B37527: MemLdRfVar from_stack_1.global_60
  loc_B3752A: LdPrVar
  loc_B3752C: LateMemCall
  loc_B37532: LitVarStr var_98, "     </tr>"
  loc_B37537: PopAdLdVar
  loc_B37538: FLdPr Me
  loc_B3753B: MemLdRfVar from_stack_1.global_60
  loc_B3753E: LdPrVar
  loc_B37540: LateMemCall
  loc_B37546: Branch loc_B377B9
  loc_B37549: LitI4 1
  loc_B3754E: FLdPr Me
  loc_B37551: MemLdRfVar from_stack_1.global_100
  loc_B37554: FLdPr Me
  loc_B37557: MemLdStr global_96
  loc_B3755A: LitI2_Byte 1
  loc_B3755C: FnUBound
  loc_B3755E: ForI4 var_B0
  loc_B37564: FLdPr Me
  loc_B37567: MemLdStr global_100
  loc_B3756A: FLdPr Me
  loc_B3756D: MemLdStr global_96
  loc_B37570: AryLock
  loc_B37573: Ary1LdRf
  loc_B37574: FStR4 var_B8
  loc_B37577: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B3757C: PopAdLdVar
  loc_B3757D: FLdPr Me
  loc_B37580: MemLdRfVar from_stack_1.global_60
  loc_B37583: LdPrVar
  loc_B37585: LateMemCall
  loc_B3758B: LitStr vbNullString
  loc_B3758E: LitI2_Byte 0
  loc_B37590: LitI2_Byte 0
  loc_B37592: LitI2_Byte 0
  loc_B37594: LitStr "left"
  loc_B37597: FMemLdR4 var_B8(0)
  loc_B3759C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B375A1: CVarStr var_C8
  loc_B375A4: PopAdLdVar
  loc_B375A5: FLdPr Me
  loc_B375A8: MemLdRfVar from_stack_1.global_60
  loc_B375AB: LdPrVar
  loc_B375AD: LateMemCall
  loc_B375B3: FFree1Var var_C8 = ""
  loc_B375B6: LitStr vbNullString
  loc_B375B9: LitI2_Byte 0
  loc_B375BB: LitI2_Byte 0
  loc_B375BD: LitI2_Byte 0
  loc_B375BF: LitStr "center"
  loc_B375C2: FMemLdR4 var_B8(4)
  loc_B375C7: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B375CC: CVarStr var_C8
  loc_B375CF: PopAdLdVar
  loc_B375D0: FLdPr Me
  loc_B375D3: MemLdRfVar from_stack_1.global_60
  loc_B375D6: LdPrVar
  loc_B375D8: LateMemCall
  loc_B375DE: FFree1Var var_C8 = ""
  loc_B375E1: LitStr vbNullString
  loc_B375E4: LitI2_Byte 0
  loc_B375E6: LitI2_Byte 0
  loc_B375E8: LitI2_Byte 0
  loc_B375EA: LitStr "left"
  loc_B375ED: FMemLdR4 var_B8(8)
  loc_B375F2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B375F7: CVarStr var_C8
  loc_B375FA: PopAdLdVar
  loc_B375FB: FLdPr Me
  loc_B375FE: MemLdRfVar from_stack_1.global_60
  loc_B37601: LdPrVar
  loc_B37603: LateMemCall
  loc_B37609: FFree1Var var_C8 = ""
  loc_B3760C: LitStr vbNullString
  loc_B3760F: LitI2_Byte 0
  loc_B37611: LitI2_Byte 0
  loc_B37613: LitI2_Byte 0
  loc_B37615: LitStr "left"
  loc_B37618: FMemLdR4 var_B8(12)
  loc_B3761D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37622: CVarStr var_C8
  loc_B37625: PopAdLdVar
  loc_B37626: FLdPr Me
  loc_B37629: MemLdRfVar from_stack_1.global_60
  loc_B3762C: LdPrVar
  loc_B3762E: LateMemCall
  loc_B37634: FFree1Var var_C8 = ""
  loc_B37637: LitStr vbNullString
  loc_B3763A: LitI2_Byte 0
  loc_B3763C: LitI2_Byte 0
  loc_B3763E: LitI2_Byte 0
  loc_B37640: LitStr "left"
  loc_B37643: FMemLdR4 var_B8(16)
  loc_B37648: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3764D: CVarStr var_C8
  loc_B37650: PopAdLdVar
  loc_B37651: FLdPr Me
  loc_B37654: MemLdRfVar from_stack_1.global_60
  loc_B37657: LdPrVar
  loc_B37659: LateMemCall
  loc_B3765F: FFree1Var var_C8 = ""
  loc_B37662: LitStr vbNullString
  loc_B37665: LitI2_Byte 0
  loc_B37667: LitI2_Byte 0
  loc_B37669: LitI2_Byte 0
  loc_B3766B: LitStr "left"
  loc_B3766E: FMemLdR4 var_B8(20)
  loc_B37673: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37678: CVarStr var_C8
  loc_B3767B: PopAdLdVar
  loc_B3767C: FLdPr Me
  loc_B3767F: MemLdRfVar from_stack_1.global_60
  loc_B37682: LdPrVar
  loc_B37684: LateMemCall
  loc_B3768A: FFree1Var var_C8 = ""
  loc_B3768D: LitStr vbNullString
  loc_B37690: LitI2_Byte 0
  loc_B37692: LitI2_Byte 0
  loc_B37694: LitI2_Byte 0
  loc_B37696: LitStr "left"
  loc_B37699: FMemLdR4 var_B8(24)
  loc_B3769E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B376A3: CVarStr var_C8
  loc_B376A6: PopAdLdVar
  loc_B376A7: FLdPr Me
  loc_B376AA: MemLdRfVar from_stack_1.global_60
  loc_B376AD: LdPrVar
  loc_B376AF: LateMemCall
  loc_B376B5: FFree1Var var_C8 = ""
  loc_B376B8: LitStr vbNullString
  loc_B376BB: LitI2_Byte 0
  loc_B376BD: LitI2_Byte 0
  loc_B376BF: LitI2_Byte 0
  loc_B376C1: LitStr "center"
  loc_B376C4: FMemLdR4 var_B8(28)
  loc_B376C9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B376CE: CVarStr var_C8
  loc_B376D1: PopAdLdVar
  loc_B376D2: FLdPr Me
  loc_B376D5: MemLdRfVar from_stack_1.global_60
  loc_B376D8: LdPrVar
  loc_B376DA: LateMemCall
  loc_B376E0: FFree1Var var_C8 = ""
  loc_B376E3: LitStr vbNullString
  loc_B376E6: LitI2_Byte 0
  loc_B376E8: LitI2_Byte 0
  loc_B376EA: LitI2_Byte 0
  loc_B376EC: LitStr "left"
  loc_B376EF: FMemLdR4 var_B8(32)
  loc_B376F4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B376F9: CVarStr var_C8
  loc_B376FC: PopAdLdVar
  loc_B376FD: FLdPr Me
  loc_B37700: MemLdRfVar from_stack_1.global_60
  loc_B37703: LdPrVar
  loc_B37705: LateMemCall
  loc_B3770B: FFree1Var var_C8 = ""
  loc_B3770E: LitStr vbNullString
  loc_B37711: LitI2_Byte 0
  loc_B37713: LitI2_Byte 0
  loc_B37715: LitI2_Byte 0
  loc_B37717: LitStr "right"
  loc_B3771A: FMemLdR4 var_B8(36)
  loc_B3771F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37724: CVarStr var_C8
  loc_B37727: PopAdLdVar
  loc_B37728: FLdPr Me
  loc_B3772B: MemLdRfVar from_stack_1.global_60
  loc_B3772E: LdPrVar
  loc_B37730: LateMemCall
  loc_B37736: FFree1Var var_C8 = ""
  loc_B37739: LitStr vbNullString
  loc_B3773C: LitI2_Byte 0
  loc_B3773E: LitI2_Byte 0
  loc_B37740: LitI2_Byte 0
  loc_B37742: LitStr "left"
  loc_B37745: FMemLdR4 var_B8(40)
  loc_B3774A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3774F: CVarStr var_C8
  loc_B37752: PopAdLdVar
  loc_B37753: FLdPr Me
  loc_B37756: MemLdRfVar from_stack_1.global_60
  loc_B37759: LdPrVar
  loc_B3775B: LateMemCall
  loc_B37761: FFree1Var var_C8 = ""
  loc_B37764: LitStr vbNullString
  loc_B37767: LitI2_Byte 0
  loc_B37769: LitI2_Byte 0
  loc_B3776B: LitI2_Byte 0
  loc_B3776D: LitStr "center"
  loc_B37770: FMemLdR4 var_B8(44)
  loc_B37775: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3777A: CVarStr var_C8
  loc_B3777D: PopAdLdVar
  loc_B3777E: FLdPr Me
  loc_B37781: MemLdRfVar from_stack_1.global_60
  loc_B37784: LdPrVar
  loc_B37786: LateMemCall
  loc_B3778C: FFree1Var var_C8 = ""
  loc_B3778F: LitVarStr var_98, "     </tr>"
  loc_B37794: PopAdLdVar
  loc_B37795: FLdPr Me
  loc_B37798: MemLdRfVar from_stack_1.global_60
  loc_B3779B: LdPrVar
  loc_B3779D: LateMemCall
  loc_B377A3: LitI4 0
  loc_B377A8: FStR4 var_B8
  loc_B377AB: AryUnlock
  loc_B377AE: FLdPr Me
  loc_B377B1: MemLdRfVar from_stack_1.global_100
  loc_B377B4: NextI4 var_B0, loc_B37564
  loc_B377B9: Call Proc_131_20_A0DB08()
  loc_B377BE: FLdPr Me
  loc_B377C1: MemLdRfVar from_stack_1.global_60
  loc_B377C4: LdPrVar
  loc_B377C6: LateMemCall
  loc_B377CC: LitStr vbNullString
  loc_B377CF: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B377D4: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C32F4
  'Data Table: 464238
  loc_9C32DC: LitI2_Byte 0
  loc_9C32DE: FLdPr Me
  loc_9C32E1: MemStI2 bLogos
  loc_9C32E4: Call GeneraHTML()
  loc_9C32E9: LitI2_Byte &HFF
  loc_9C32EB: FLdPr Me
  loc_9C32EE: MemStI2 bLogos
  loc_9C32F1: ExitProcHresult
End Sub

Public Sub GeneraTXT() 'B539E0
  'Data Table: 464238
  loc_B53640: OnErrorGoto loc_B53962
  loc_B53643: ImpAdCallI2 Proc_272_19_A53E30()
  loc_B53648: FStStrNoPop var_88
  loc_B5364B: LitStr "\Totaldelosjuiciosdeapremio.txt"
  loc_B5364E: ConcatStr
  loc_B5364F: ImpAdStStr MemVar_D93030
  loc_B53653: FFree1Str var_88
  loc_B53656: ImpAdLdI4 MemVar_D93030
  loc_B53659: ImpAdCallFPR4 Proc_272_20_A73C8C()
  loc_B5365E: LitStr "	"
  loc_B53661: FStStrCopy var_8C
  loc_B53664: FLdRfVar var_90
  loc_B53667: LitI2_Byte 0
  loc_B53669: LitI2_Byte &HFF
  loc_B5366B: ImpAdLdI4 MemVar_D93030
  loc_B5366E: FLdPr Me
  loc_B53671: MemLdRfVar from_stack_1.global_56
  loc_B53674: NewIfNullPr IFileSystem3
  loc_B53677: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B5367C: ILdRf var_90
  loc_B5367F: FLdPr Me
  loc_B53682: MemStVarAd
  loc_B53686: FFree1Ad var_90
  loc_B53689: FLdPr Me
  loc_B5368C: MemLdStr global_96
  loc_B5368F: LitI2_Byte 1
  loc_B53691: FnUBound
  loc_B53693: LitI4 0
  loc_B53698: EqI4
  loc_B53699: BranchF loc_B536FB
  loc_B5369C: LitI4 0
  loc_B536A1: LitI4 1
  loc_B536A6: FLdRfVar var_94
  loc_B536A9: Redim
  loc_B536B3: LitVarStr var_A4, "|"
  loc_B536B8: LitI4 0
  loc_B536BD: ILdRf var_94
  loc_B536C0: Ary1StVarCopy
  loc_B536C2: LitVarStr var_B4, "SIN MOVIMIENTO"
  loc_B536C7: LitI4 1
  loc_B536CC: ILdRf var_94
  loc_B536CF: Ary1StVarCopy
  loc_B536D1: FLdRfVar var_94
  loc_B536D4: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B536D9: FStStr var_88
  loc_B536DC: FLdRfVar var_94
  loc_B536DF: Erase
  loc_B536E0: FLdZeroAd var_88
  loc_B536E3: CVarStr var_C4
  loc_B536E6: PopAdLdVar
  loc_B536E7: FLdPr Me
  loc_B536EA: MemLdRfVar from_stack_1.global_76
  loc_B536ED: LdPrVar
  loc_B536EF: LateMemCall
  loc_B536F5: FFree1Var var_C4 = ""
  loc_B536F8: Branch loc_B53950
  loc_B536FB: LitI4 0
  loc_B53700: LitI4 &HC
  loc_B53705: FLdRfVar var_94
  loc_B53708: Redim
  loc_B53712: LitVarStr var_A4, "|"
  loc_B53717: LitI4 0
  loc_B5371C: ILdRf var_94
  loc_B5371F: Ary1StVarCopy
  loc_B53721: LitVarStr var_B4, "Numero de Boleta"
  loc_B53726: LitI4 1
  loc_B5372B: ILdRf var_94
  loc_B5372E: Ary1StVarCopy
  loc_B53730: LitVarStr var_D4, "Fecha de Emision"
  loc_B53735: LitI4 2
  loc_B5373A: ILdRf var_94
  loc_B5373D: Ary1StVarCopy
  loc_B5373F: LitVarStr var_E4, "Nro de Expediente"
  loc_B53744: LitI4 3
  loc_B53749: ILdRf var_94
  loc_B5374C: Ary1StVarCopy
  loc_B5374E: LitVarStr var_F4, "Caratula"
  loc_B53753: LitI4 4
  loc_B53758: ILdRf var_94
  loc_B5375B: Ary1StVarCopy
  loc_B5375D: LitVarStr var_104, "Juzgado"
  loc_B53762: LitI4 5
  loc_B53767: ILdRf var_94
  loc_B5376A: Ary1StVarCopy
  loc_B5376C: LitVarStr var_114, "Secretaría"
  loc_B53771: LitI4 6
  loc_B53776: ILdRf var_94
  loc_B53779: Ary1StVarCopy
  loc_B5377B: LitVarStr var_124, "Circunscripción"
  loc_B53780: LitI4 7
  loc_B53785: ILdRf var_94
  loc_B53788: Ary1StVarCopy
  loc_B5378A: LitVarStr var_134, "Fecha de Inicio"
  loc_B5378F: LitI4 8
  loc_B53794: ILdRf var_94
  loc_B53797: Ary1StVarCopy
  loc_B53799: LitVarStr var_144, "Monto Originario del Apremio"
  loc_B5379E: LitI4 9
  loc_B537A3: ILdRf var_94
  loc_B537A6: Ary1StVarCopy
  loc_B537A8: LitVarStr var_154, "Recaudador Asignado"
  loc_B537AD: LitI4 &HA
  loc_B537B2: ILdRf var_94
  loc_B537B5: Ary1StVarCopy
  loc_B537B7: LitVarStr var_164, "Estado Procesal Actual"
  loc_B537BC: LitI4 &HB
  loc_B537C1: ILdRf var_94
  loc_B537C4: Ary1StVarCopy
  loc_B537C6: LitVarStr var_174, "Fecha de Estado Procesal Actual"
  loc_B537CB: LitI4 &HC
  loc_B537D0: ILdRf var_94
  loc_B537D3: Ary1StVarCopy
  loc_B537D5: FLdRfVar var_94
  loc_B537D8: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B537DD: FStStr var_88
  loc_B537E0: FLdRfVar var_94
  loc_B537E3: Erase
  loc_B537E4: FLdZeroAd var_88
  loc_B537E7: CVarStr var_C4
  loc_B537EA: PopAdLdVar
  loc_B537EB: FLdPr Me
  loc_B537EE: MemLdRfVar from_stack_1.global_76
  loc_B537F1: LdPrVar
  loc_B537F3: LateMemCall
  loc_B537F9: FFree1Var var_C4 = ""
  loc_B537FC: LitI4 1
  loc_B53801: FLdPr Me
  loc_B53804: MemLdRfVar from_stack_1.global_100
  loc_B53807: FLdPr Me
  loc_B5380A: MemLdStr global_96
  loc_B5380D: LitI2_Byte 1
  loc_B5380F: FnUBound
  loc_B53811: ForI4 var_18C
  loc_B53817: FLdPr Me
  loc_B5381A: MemLdStr global_100
  loc_B5381D: FLdPr Me
  loc_B53820: MemLdStr global_96
  loc_B53823: AryLock
  loc_B53826: Ary1LdRf
  loc_B53827: FStR4 var_194
  loc_B5382A: LitI4 0
  loc_B5382F: LitI4 &HC
  loc_B53834: FLdRfVar var_94
  loc_B53837: Redim
  loc_B53841: LitVarStr var_A4, "|"
  loc_B53846: LitI4 0
  loc_B5384B: ILdRf var_94
  loc_B5384E: Ary1StVarCopy
  loc_B53850: FMemLdRf 0
  loc_B53855: CVarRef
  loc_B5385A: ParmAry1St
  loc_B53860: FMemLdRf 0
  loc_B53865: CVarRef
  loc_B5386A: ParmAry1St
  loc_B53870: FMemLdRf 0
  loc_B53875: CVarRef
  loc_B5387A: ParmAry1St
  loc_B53880: FMemLdRf 0
  loc_B53885: CVarRef
  loc_B5388A: ParmAry1St
  loc_B53890: FMemLdRf 0
  loc_B53895: CVarRef
  loc_B5389A: ParmAry1St
  loc_B538A0: FMemLdRf 0
  loc_B538A5: CVarRef
  loc_B538AA: ParmAry1St
  loc_B538B0: FMemLdRf 0
  loc_B538B5: CVarRef
  loc_B538BA: ParmAry1St
  loc_B538C0: FMemLdRf 0
  loc_B538C5: CVarRef
  loc_B538CA: ParmAry1St
  loc_B538D0: FMemLdRf 0
  loc_B538D5: CVarRef
  loc_B538DA: ParmAry1St
  loc_B538E0: FMemLdR4 var_194(36)
  loc_B538E5: ImpAdCallI2 Proc_272_38_9FFA08()
  loc_B538EA: CVarStr var_C4
  loc_B538ED: ParmAry1St
  loc_B538F3: FMemLdRf 0
  loc_B538F8: CVarRef
  loc_B538FD: ParmAry1St
  loc_B53903: FMemLdRf 0
  loc_B53908: CVarRef
  loc_B5390D: ParmAry1St
  loc_B53913: FLdRfVar var_94
  loc_B53916: ImpAdCallI2 Proc_272_55_A87D4C()
  loc_B5391B: FStStr var_88
  loc_B5391E: FLdRfVar var_94
  loc_B53921: Erase
  loc_B53922: FLdZeroAd var_88
  loc_B53925: CVarStr var_1A4
  loc_B53928: PopAdLdVar
  loc_B53929: FLdPr Me
  loc_B5392C: MemLdRfVar from_stack_1.global_76
  loc_B5392F: LdPrVar
  loc_B53931: LateMemCall
  loc_B53937: FFree1Var var_1A4 = ""
  loc_B5393A: LitI4 0
  loc_B5393F: FStR4 var_194
  loc_B53942: AryUnlock
  loc_B53945: FLdPr Me
  loc_B53948: MemLdRfVar from_stack_1.global_100
  loc_B5394B: NextI4 var_18C, loc_B53817
  loc_B53950: FLdPr Me
  loc_B53953: MemLdRfVar from_stack_1.global_76
  loc_B53956: LdPrVar
  loc_B53958: LateMemCall
  loc_B5395E: On Error GoTo 0
  loc_B53961: ExitProcHresult
  loc_B53962: LitVar_Missing var_1DC
  loc_B53965: LitVar_Missing var_1CC
  loc_B53968: LitVar_Missing var_1A4
  loc_B5396B: LitI4 0
  loc_B53970: LitStr "Error "
  loc_B53973: FLdRfVar var_1A8
  loc_B53976: ImpAdCallI2 Err 'rtcErrObj
  loc_B5397B: FStAdFunc var_90
  loc_B5397E: FLdPr var_90
  loc_B53981:  = Err.Number
  loc_B53986: ILdRf var_1A8
  loc_B53989: CStrI4
  loc_B5398B: FStStrNoPop var_88
  loc_B5398E: ConcatStr
  loc_B5398F: FStStrNoPop var_1AC
  loc_B53992: LitStr " ("
  loc_B53995: ConcatStr
  loc_B53996: FStStrNoPop var_1B8
  loc_B53999: FLdRfVar var_1B4
  loc_B5399C: ImpAdCallI2 Err 'rtcErrObj
  loc_B539A1: FStAdFunc var_1B0
  loc_B539A4: FLdPr var_1B0
  loc_B539A7:  = Err.Description
  loc_B539AC: ILdRf var_1B4
  loc_B539AF: ConcatStr
  loc_B539B0: FStStrNoPop var_1BC
  loc_B539B3: LitStr ") in procedure GeneraTXT of Formulario Totaldelosjuiciosdeapremio"
  loc_B539B6: ConcatStr
  loc_B539B7: CVarStr var_C4
  loc_B539BA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B539BF: FFreeStr var_88 = "": var_1AC = "": var_1B8 = "": var_1B4 = ""
  loc_B539CC: FFreeAd var_90 = ""
  loc_B539D3: FFreeVar var_C4 = "": var_1A4 = "": var_1CC = ""
  loc_B539DE: ExitProcHresult
End Sub

Private Function Proc_131_19_BB1EA8() 'BB1EA8
  'Data Table: 464238
  loc_BB1834: LitVarStr var_98, "<html>"
  loc_BB1839: PopAdLdVar
  loc_BB183A: FLdPr Me
  loc_BB183D: MemLdRfVar from_stack_1.global_60
  loc_BB1840: LdPrVar
  loc_BB1842: LateMemCall
  loc_BB1848: LitVarStr var_98, "<head>"
  loc_BB184D: PopAdLdVar
  loc_BB184E: FLdPr Me
  loc_BB1851: MemLdRfVar from_stack_1.global_60
  loc_BB1854: LdPrVar
  loc_BB1856: LateMemCall
  loc_BB185C: LitVarStr var_98, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BB1861: PopAdLdVar
  loc_BB1862: FLdPr Me
  loc_BB1865: MemLdRfVar from_stack_1.global_60
  loc_BB1868: LdPrVar
  loc_BB186A: LateMemCall
  loc_BB1870: LitStr "<title>"
  loc_BB1873: FLdRfVar var_AC
  loc_BB1876: FLdPr Me
  loc_BB1879:  = Me.Caption
  loc_BB187E: ILdRf var_AC
  loc_BB1881: ConcatStr
  loc_BB1882: FStStrNoPop var_B0
  loc_BB1885: LitStr "</title>"
  loc_BB1888: ConcatStr
  loc_BB1889: CVarStr var_C0
  loc_BB188C: PopAdLdVar
  loc_BB188D: FLdPr Me
  loc_BB1890: MemLdRfVar from_stack_1.global_60
  loc_BB1893: LdPrVar
  loc_BB1895: LateMemCall
  loc_BB189B: FFreeStr var_AC = ""
  loc_BB18A2: FFree1Var var_C0 = ""
  loc_BB18A5: LitVarStr var_98, "<style type=""text/css"">"
  loc_BB18AA: PopAdLdVar
  loc_BB18AB: FLdPr Me
  loc_BB18AE: MemLdRfVar from_stack_1.global_60
  loc_BB18B1: LdPrVar
  loc_BB18B3: LateMemCall
  loc_BB18B9: LitVarStr var_98, ".Titulo1 {"
  loc_BB18BE: PopAdLdVar
  loc_BB18BF: FLdPr Me
  loc_BB18C2: MemLdRfVar from_stack_1.global_60
  loc_BB18C5: LdPrVar
  loc_BB18C7: LateMemCall
  loc_BB18CD: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB18D2: PopAdLdVar
  loc_BB18D3: FLdPr Me
  loc_BB18D6: MemLdRfVar from_stack_1.global_60
  loc_BB18D9: LdPrVar
  loc_BB18DB: LateMemCall
  loc_BB18E1: LitVarStr var_98, " font-size: 18px;"
  loc_BB18E6: PopAdLdVar
  loc_BB18E7: FLdPr Me
  loc_BB18EA: MemLdRfVar from_stack_1.global_60
  loc_BB18ED: LdPrVar
  loc_BB18EF: LateMemCall
  loc_BB18F5: LitVarStr var_98, " font-weight: bold;"
  loc_BB18FA: PopAdLdVar
  loc_BB18FB: FLdPr Me
  loc_BB18FE: MemLdRfVar from_stack_1.global_60
  loc_BB1901: LdPrVar
  loc_BB1903: LateMemCall
  loc_BB1909: LitVarStr var_98, "}"
  loc_BB190E: PopAdLdVar
  loc_BB190F: FLdPr Me
  loc_BB1912: MemLdRfVar from_stack_1.global_60
  loc_BB1915: LdPrVar
  loc_BB1917: LateMemCall
  loc_BB191D: LitVarStr var_98, ".Titulo2 {"
  loc_BB1922: PopAdLdVar
  loc_BB1923: FLdPr Me
  loc_BB1926: MemLdRfVar from_stack_1.global_60
  loc_BB1929: LdPrVar
  loc_BB192B: LateMemCall
  loc_BB1931: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB1936: PopAdLdVar
  loc_BB1937: FLdPr Me
  loc_BB193A: MemLdRfVar from_stack_1.global_60
  loc_BB193D: LdPrVar
  loc_BB193F: LateMemCall
  loc_BB1945: LitVarStr var_98, " font-size: 14px;"
  loc_BB194A: PopAdLdVar
  loc_BB194B: FLdPr Me
  loc_BB194E: MemLdRfVar from_stack_1.global_60
  loc_BB1951: LdPrVar
  loc_BB1953: LateMemCall
  loc_BB1959: LitVarStr var_98, " font-weight: bold;"
  loc_BB195E: PopAdLdVar
  loc_BB195F: FLdPr Me
  loc_BB1962: MemLdRfVar from_stack_1.global_60
  loc_BB1965: LdPrVar
  loc_BB1967: LateMemCall
  loc_BB196D: LitVarStr var_98, "}"
  loc_BB1972: PopAdLdVar
  loc_BB1973: FLdPr Me
  loc_BB1976: MemLdRfVar from_stack_1.global_60
  loc_BB1979: LdPrVar
  loc_BB197B: LateMemCall
  loc_BB1981: LitVarStr var_98, ".Normal {"
  loc_BB1986: PopAdLdVar
  loc_BB1987: FLdPr Me
  loc_BB198A: MemLdRfVar from_stack_1.global_60
  loc_BB198D: LdPrVar
  loc_BB198F: LateMemCall
  loc_BB1995: LitVarStr var_98, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BB199A: PopAdLdVar
  loc_BB199B: FLdPr Me
  loc_BB199E: MemLdRfVar from_stack_1.global_60
  loc_BB19A1: LdPrVar
  loc_BB19A3: LateMemCall
  loc_BB19A9: LitVarStr var_98, " font-size: 12px;"
  loc_BB19AE: PopAdLdVar
  loc_BB19AF: FLdPr Me
  loc_BB19B2: MemLdRfVar from_stack_1.global_60
  loc_BB19B5: LdPrVar
  loc_BB19B7: LateMemCall
  loc_BB19BD: LitVarStr var_98, " font-style: normal;"
  loc_BB19C2: PopAdLdVar
  loc_BB19C3: FLdPr Me
  loc_BB19C6: MemLdRfVar from_stack_1.global_60
  loc_BB19C9: LdPrVar
  loc_BB19CB: LateMemCall
  loc_BB19D1: LitVarStr var_98, " font-weight: normal;"
  loc_BB19D6: PopAdLdVar
  loc_BB19D7: FLdPr Me
  loc_BB19DA: MemLdRfVar from_stack_1.global_60
  loc_BB19DD: LdPrVar
  loc_BB19DF: LateMemCall
  loc_BB19E5: LitVarStr var_98, " font-variant: normal;"
  loc_BB19EA: PopAdLdVar
  loc_BB19EB: FLdPr Me
  loc_BB19EE: MemLdRfVar from_stack_1.global_60
  loc_BB19F1: LdPrVar
  loc_BB19F3: LateMemCall
  loc_BB19F9: LitVarStr var_98, "}"
  loc_BB19FE: PopAdLdVar
  loc_BB19FF: FLdPr Me
  loc_BB1A02: MemLdRfVar from_stack_1.global_60
  loc_BB1A05: LdPrVar
  loc_BB1A07: LateMemCall
  loc_BB1A0D: LitVarStr var_98, ".Encabezado {"
  loc_BB1A12: PopAdLdVar
  loc_BB1A13: FLdPr Me
  loc_BB1A16: MemLdRfVar from_stack_1.global_60
  loc_BB1A19: LdPrVar
  loc_BB1A1B: LateMemCall
  loc_BB1A21: LitVarStr var_98, " font-family: ""Times New Roman"", Times, serif;"
  loc_BB1A26: PopAdLdVar
  loc_BB1A27: FLdPr Me
  loc_BB1A2A: MemLdRfVar from_stack_1.global_60
  loc_BB1A2D: LdPrVar
  loc_BB1A2F: LateMemCall
  loc_BB1A35: LitVarStr var_98, " font-size: 11px;"
  loc_BB1A3A: PopAdLdVar
  loc_BB1A3B: FLdPr Me
  loc_BB1A3E: MemLdRfVar from_stack_1.global_60
  loc_BB1A41: LdPrVar
  loc_BB1A43: LateMemCall
  loc_BB1A49: LitVarStr var_98, " font-weight: bold;"
  loc_BB1A4E: PopAdLdVar
  loc_BB1A4F: FLdPr Me
  loc_BB1A52: MemLdRfVar from_stack_1.global_60
  loc_BB1A55: LdPrVar
  loc_BB1A57: LateMemCall
  loc_BB1A5D: LitVarStr var_98, " background-color: #D3D3D3;"
  loc_BB1A62: PopAdLdVar
  loc_BB1A63: FLdPr Me
  loc_BB1A66: MemLdRfVar from_stack_1.global_60
  loc_BB1A69: LdPrVar
  loc_BB1A6B: LateMemCall
  loc_BB1A71: LitVarStr var_98, "}"
  loc_BB1A76: PopAdLdVar
  loc_BB1A77: FLdPr Me
  loc_BB1A7A: MemLdRfVar from_stack_1.global_60
  loc_BB1A7D: LdPrVar
  loc_BB1A7F: LateMemCall
  loc_BB1A85: LitVarStr var_98, ".LineaDato {"
  loc_BB1A8A: PopAdLdVar
  loc_BB1A8B: FLdPr Me
  loc_BB1A8E: MemLdRfVar from_stack_1.global_60
  loc_BB1A91: LdPrVar
  loc_BB1A93: LateMemCall
  loc_BB1A99: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB1A9E: PopAdLdVar
  loc_BB1A9F: FLdPr Me
  loc_BB1AA2: MemLdRfVar from_stack_1.global_60
  loc_BB1AA5: LdPrVar
  loc_BB1AA7: LateMemCall
  loc_BB1AAD: LitVarStr var_98, " font-size: 10px;"
  loc_BB1AB2: PopAdLdVar
  loc_BB1AB3: FLdPr Me
  loc_BB1AB6: MemLdRfVar from_stack_1.global_60
  loc_BB1AB9: LdPrVar
  loc_BB1ABB: LateMemCall
  loc_BB1AC1: LitVarStr var_98, "}"
  loc_BB1AC6: PopAdLdVar
  loc_BB1AC7: FLdPr Me
  loc_BB1ACA: MemLdRfVar from_stack_1.global_60
  loc_BB1ACD: LdPrVar
  loc_BB1ACF: LateMemCall
  loc_BB1AD5: LitVarStr var_98, ".Totales {"
  loc_BB1ADA: PopAdLdVar
  loc_BB1ADB: FLdPr Me
  loc_BB1ADE: MemLdRfVar from_stack_1.global_60
  loc_BB1AE1: LdPrVar
  loc_BB1AE3: LateMemCall
  loc_BB1AE9: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB1AEE: PopAdLdVar
  loc_BB1AEF: FLdPr Me
  loc_BB1AF2: MemLdRfVar from_stack_1.global_60
  loc_BB1AF5: LdPrVar
  loc_BB1AF7: LateMemCall
  loc_BB1AFD: LitVarStr var_98, " font-size: 12px;"
  loc_BB1B02: PopAdLdVar
  loc_BB1B03: FLdPr Me
  loc_BB1B06: MemLdRfVar from_stack_1.global_60
  loc_BB1B09: LdPrVar
  loc_BB1B0B: LateMemCall
  loc_BB1B11: LitVarStr var_98, " font-weight: bold;"
  loc_BB1B16: PopAdLdVar
  loc_BB1B17: FLdPr Me
  loc_BB1B1A: MemLdRfVar from_stack_1.global_60
  loc_BB1B1D: LdPrVar
  loc_BB1B1F: LateMemCall
  loc_BB1B25: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BB1B2A: PopAdLdVar
  loc_BB1B2B: FLdPr Me
  loc_BB1B2E: MemLdRfVar from_stack_1.global_60
  loc_BB1B31: LdPrVar
  loc_BB1B33: LateMemCall
  loc_BB1B39: LitVarStr var_98, "}"
  loc_BB1B3E: PopAdLdVar
  loc_BB1B3F: FLdPr Me
  loc_BB1B42: MemLdRfVar from_stack_1.global_60
  loc_BB1B45: LdPrVar
  loc_BB1B47: LateMemCall
  loc_BB1B4D: LitVarStr var_98, ".SubTotales {"
  loc_BB1B52: PopAdLdVar
  loc_BB1B53: FLdPr Me
  loc_BB1B56: MemLdRfVar from_stack_1.global_60
  loc_BB1B59: LdPrVar
  loc_BB1B5B: LateMemCall
  loc_BB1B61: LitVarStr var_98, " font-family: ""Courier New"", Courier, monospace;"
  loc_BB1B66: PopAdLdVar
  loc_BB1B67: FLdPr Me
  loc_BB1B6A: MemLdRfVar from_stack_1.global_60
  loc_BB1B6D: LdPrVar
  loc_BB1B6F: LateMemCall
  loc_BB1B75: LitVarStr var_98, " font-size: 10px;"
  loc_BB1B7A: PopAdLdVar
  loc_BB1B7B: FLdPr Me
  loc_BB1B7E: MemLdRfVar from_stack_1.global_60
  loc_BB1B81: LdPrVar
  loc_BB1B83: LateMemCall
  loc_BB1B89: LitVarStr var_98, " font-weight: bold;"
  loc_BB1B8E: PopAdLdVar
  loc_BB1B8F: FLdPr Me
  loc_BB1B92: MemLdRfVar from_stack_1.global_60
  loc_BB1B95: LdPrVar
  loc_BB1B97: LateMemCall
  loc_BB1B9D: LitVarStr var_98, " background-color: #7DC3E7;"
  loc_BB1BA2: PopAdLdVar
  loc_BB1BA3: FLdPr Me
  loc_BB1BA6: MemLdRfVar from_stack_1.global_60
  loc_BB1BA9: LdPrVar
  loc_BB1BAB: LateMemCall
  loc_BB1BB1: LitVarStr var_98, "}"
  loc_BB1BB6: PopAdLdVar
  loc_BB1BB7: FLdPr Me
  loc_BB1BBA: MemLdRfVar from_stack_1.global_60
  loc_BB1BBD: LdPrVar
  loc_BB1BBF: LateMemCall
  loc_BB1BC5: LitVarStr var_98, "THEAD { display: table-header-group; }"
  loc_BB1BCA: PopAdLdVar
  loc_BB1BCB: FLdPr Me
  loc_BB1BCE: MemLdRfVar from_stack_1.global_60
  loc_BB1BD1: LdPrVar
  loc_BB1BD3: LateMemCall
  loc_BB1BD9: LitVarStr var_98, "</style>"
  loc_BB1BDE: PopAdLdVar
  loc_BB1BDF: FLdPr Me
  loc_BB1BE2: MemLdRfVar from_stack_1.global_60
  loc_BB1BE5: LdPrVar
  loc_BB1BE7: LateMemCall
  loc_BB1BED: LitI4 0
  loc_BB1BF2: FStStrCopy var_B0
  loc_BB1BF5: FLdRfVar var_B0
  loc_BB1BF8: LitI4 0
  loc_BB1BFD: FStStrCopy var_AC
  loc_BB1C00: FLdRfVar var_AC
  loc_BB1C03: LitI2_Byte &HFF
  loc_BB1C05: PopTmpLdAd2 var_C2
  loc_BB1C08: FLdPr Me
  loc_BB1C0B: MemLdRfVar from_stack_1.global_60
  loc_BB1C0E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BB1C13: FFreeStr var_AC = ""
  loc_BB1C1A: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BB1C1F: PopAdLdVar
  loc_BB1C20: FLdPr Me
  loc_BB1C23: MemLdRfVar from_stack_1.global_60
  loc_BB1C26: LdPrVar
  loc_BB1C28: LateMemCall
  loc_BB1C2E: LitVarStr var_98, "  <tr valign=""middle"">"
  loc_BB1C33: PopAdLdVar
  loc_BB1C34: FLdPr Me
  loc_BB1C37: MemLdRfVar from_stack_1.global_60
  loc_BB1C3A: LdPrVar
  loc_BB1C3C: LateMemCall
  loc_BB1C42: LitVarStr var_98, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><p> "
  loc_BB1C47: PopAdLdVar
  loc_BB1C48: FLdPr Me
  loc_BB1C4B: MemLdRfVar from_stack_1.global_60
  loc_BB1C4E: LdPrVar
  loc_BB1C50: LateMemCall
  loc_BB1C56: FLdPr Me
  loc_BB1C59: MemLdI2 bLogos
  loc_BB1C5C: BranchF loc_BB1CB7
  loc_BB1C5F: LitStr " <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BB1C62: LitI2_Byte &H5F
  loc_BB1C64: CStrUI1
  loc_BB1C66: FStStrNoPop var_AC
  loc_BB1C69: ConcatStr
  loc_BB1C6A: FStStrNoPop var_B0
  loc_BB1C6D: LitStr """ height="""
  loc_BB1C70: ConcatStr
  loc_BB1C71: FStStrNoPop var_C8
  loc_BB1C74: LitI2_Byte &H3C
  loc_BB1C76: CStrUI1
  loc_BB1C78: FStStrNoPop var_CC
  loc_BB1C7B: ConcatStr
  loc_BB1C7C: FStStrNoPop var_D0
  loc_BB1C7F: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BB1C82: ConcatStr
  loc_BB1C83: FStStrNoPop var_D4
  loc_BB1C86: LitStr "Municipalidad de Guaymallén"
  loc_BB1C89: ConcatStr
  loc_BB1C8A: FStStrNoPop var_D8
  loc_BB1C8D: LitStr "</p>"
  loc_BB1C90: ConcatStr
  loc_BB1C91: CVarStr var_C0
  loc_BB1C94: PopAdLdVar
  loc_BB1C95: FLdPr Me
  loc_BB1C98: MemLdRfVar from_stack_1.global_60
  loc_BB1C9B: LdPrVar
  loc_BB1C9D: LateMemCall
  loc_BB1CA3: FFreeStr var_AC = "": var_B0 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_BB1CB4: FFree1Var var_C0 = ""
  loc_BB1CB7: LitStr "    <p>"
  loc_BB1CBA: FLdRfVar var_AC
  loc_BB1CBD: FLdPr Me
  loc_BB1CC0:  = Me.Caption
  loc_BB1CC5: ILdRf var_AC
  loc_BB1CC8: ConcatStr
  loc_BB1CC9: FStStrNoPop var_B0
  loc_BB1CCC: LitStr "</p></th>"
  loc_BB1CCF: ConcatStr
  loc_BB1CD0: CVarStr var_C0
  loc_BB1CD3: PopAdLdVar
  loc_BB1CD4: FLdPr Me
  loc_BB1CD7: MemLdRfVar from_stack_1.global_60
  loc_BB1CDA: LdPrVar
  loc_BB1CDC: LateMemCall
  loc_BB1CE2: FFreeStr var_AC = ""
  loc_BB1CE9: FFree1Var var_C0 = ""
  loc_BB1CEC: LitVarStr var_98, "  </tr>"
  loc_BB1CF1: PopAdLdVar
  loc_BB1CF2: FLdPr Me
  loc_BB1CF5: MemLdRfVar from_stack_1.global_60
  loc_BB1CF8: LdPrVar
  loc_BB1CFA: LateMemCall
  loc_BB1D00: LitVarStr var_98, "  <tr>"
  loc_BB1D05: PopAdLdVar
  loc_BB1D06: FLdPr Me
  loc_BB1D09: MemLdRfVar from_stack_1.global_60
  loc_BB1D0C: LdPrVar
  loc_BB1D0E: LateMemCall
  loc_BB1D14: LitVarStr var_98, "  <tr valign=""top"" class=""Normal"">"
  loc_BB1D19: PopAdLdVar
  loc_BB1D1A: FLdPr Me
  loc_BB1D1D: MemLdRfVar from_stack_1.global_60
  loc_BB1D20: LdPrVar
  loc_BB1D22: LateMemCall
  loc_BB1D28: LitVarStr var_98, "  </tr>"
  loc_BB1D2D: PopAdLdVar
  loc_BB1D2E: FLdPr Me
  loc_BB1D31: MemLdRfVar from_stack_1.global_60
  loc_BB1D34: LdPrVar
  loc_BB1D36: LateMemCall
  loc_BB1D3C: LitVarStr var_98, "</table>"
  loc_BB1D41: PopAdLdVar
  loc_BB1D42: FLdPr Me
  loc_BB1D45: MemLdRfVar from_stack_1.global_60
  loc_BB1D48: LdPrVar
  loc_BB1D4A: LateMemCall
  loc_BB1D50: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BB1D55: PopAdLdVar
  loc_BB1D56: FLdPr Me
  loc_BB1D59: MemLdRfVar from_stack_1.global_60
  loc_BB1D5C: LdPrVar
  loc_BB1D5E: LateMemCall
  loc_BB1D64: LitVarStr var_98, "  <thead>"
  loc_BB1D69: PopAdLdVar
  loc_BB1D6A: FLdPr Me
  loc_BB1D6D: MemLdRfVar from_stack_1.global_60
  loc_BB1D70: LdPrVar
  loc_BB1D72: LateMemCall
  loc_BB1D78: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BB1D7D: PopAdLdVar
  loc_BB1D7E: FLdPr Me
  loc_BB1D81: MemLdRfVar from_stack_1.global_60
  loc_BB1D84: LdPrVar
  loc_BB1D86: LateMemCall
  loc_BB1D8C: LitVarStr var_98, "    <th>Nro de Boleta</th>"
  loc_BB1D91: PopAdLdVar
  loc_BB1D92: FLdPr Me
  loc_BB1D95: MemLdRfVar from_stack_1.global_60
  loc_BB1D98: LdPrVar
  loc_BB1D9A: LateMemCall
  loc_BB1DA0: LitVarStr var_98, "    <th>Fecha Alta Boleta</th>"
  loc_BB1DA5: PopAdLdVar
  loc_BB1DA6: FLdPr Me
  loc_BB1DA9: MemLdRfVar from_stack_1.global_60
  loc_BB1DAC: LdPrVar
  loc_BB1DAE: LateMemCall
  loc_BB1DB4: LitVarStr var_98, "    <th>Expediente</th>"
  loc_BB1DB9: PopAdLdVar
  loc_BB1DBA: FLdPr Me
  loc_BB1DBD: MemLdRfVar from_stack_1.global_60
  loc_BB1DC0: LdPrVar
  loc_BB1DC2: LateMemCall
  loc_BB1DC8: LitVarStr var_98, "    <th>Carátula</th>"
  loc_BB1DCD: PopAdLdVar
  loc_BB1DCE: FLdPr Me
  loc_BB1DD1: MemLdRfVar from_stack_1.global_60
  loc_BB1DD4: LdPrVar
  loc_BB1DD6: LateMemCall
  loc_BB1DDC: LitVarStr var_98, "    <th>Juzgado</th>"
  loc_BB1DE1: PopAdLdVar
  loc_BB1DE2: FLdPr Me
  loc_BB1DE5: MemLdRfVar from_stack_1.global_60
  loc_BB1DE8: LdPrVar
  loc_BB1DEA: LateMemCall
  loc_BB1DF0: LitVarStr var_98, "    <th>Secretaría</th>"
  loc_BB1DF5: PopAdLdVar
  loc_BB1DF6: FLdPr Me
  loc_BB1DF9: MemLdRfVar from_stack_1.global_60
  loc_BB1DFC: LdPrVar
  loc_BB1DFE: LateMemCall
  loc_BB1E04: LitVarStr var_98, "    <th>Circunscripción</th>"
  loc_BB1E09: PopAdLdVar
  loc_BB1E0A: FLdPr Me
  loc_BB1E0D: MemLdRfVar from_stack_1.global_60
  loc_BB1E10: LdPrVar
  loc_BB1E12: LateMemCall
  loc_BB1E18: LitVarStr var_98, "    <th>Fecha de Incio del Juicio</th>"
  loc_BB1E1D: PopAdLdVar
  loc_BB1E1E: FLdPr Me
  loc_BB1E21: MemLdRfVar from_stack_1.global_60
  loc_BB1E24: LdPrVar
  loc_BB1E26: LateMemCall
  loc_BB1E2C: LitVarStr var_98, "    <th>Nombre del Recaudador</th>"
  loc_BB1E31: PopAdLdVar
  loc_BB1E32: FLdPr Me
  loc_BB1E35: MemLdRfVar from_stack_1.global_60
  loc_BB1E38: LdPrVar
  loc_BB1E3A: LateMemCall
  loc_BB1E40: LitVarStr var_98, "    <th>Monto</th>"
  loc_BB1E45: PopAdLdVar
  loc_BB1E46: FLdPr Me
  loc_BB1E49: MemLdRfVar from_stack_1.global_60
  loc_BB1E4C: LdPrVar
  loc_BB1E4E: LateMemCall
  loc_BB1E54: LitVarStr var_98, "    <th>Estado. Actual</th>"
  loc_BB1E59: PopAdLdVar
  loc_BB1E5A: FLdPr Me
  loc_BB1E5D: MemLdRfVar from_stack_1.global_60
  loc_BB1E60: LdPrVar
  loc_BB1E62: LateMemCall
  loc_BB1E68: LitVarStr var_98, "    <th>Fecha del Estado Actual</th>"
  loc_BB1E6D: PopAdLdVar
  loc_BB1E6E: FLdPr Me
  loc_BB1E71: MemLdRfVar from_stack_1.global_60
  loc_BB1E74: LdPrVar
  loc_BB1E76: LateMemCall
  loc_BB1E7C: LitVarStr var_98, "  </tr>"
  loc_BB1E81: PopAdLdVar
  loc_BB1E82: FLdPr Me
  loc_BB1E85: MemLdRfVar from_stack_1.global_60
  loc_BB1E88: LdPrVar
  loc_BB1E8A: LateMemCall
  loc_BB1E90: LitVarStr var_98, "  </thead>"
  loc_BB1E95: PopAdLdVar
  loc_BB1E96: FLdPr Me
  loc_BB1E99: MemLdRfVar from_stack_1.global_60
  loc_BB1E9C: LdPrVar
  loc_BB1E9E: LateMemCall
  loc_BB1EA4: ExitProcHresult
End Function

Private Function Proc_131_20_A0DB08() 'A0DB08
  'Data Table: 464238
  loc_A0DAC8: LitVarStr var_94, "</table>"
  loc_A0DACD: PopAdLdVar
  loc_A0DACE: FLdPr Me
  loc_A0DAD1: MemLdRfVar from_stack_1.global_60
  loc_A0DAD4: LdPrVar
  loc_A0DAD6: LateMemCall
  loc_A0DADC: LitVarStr var_94, "</body>"
  loc_A0DAE1: PopAdLdVar
  loc_A0DAE2: FLdPr Me
  loc_A0DAE5: MemLdRfVar from_stack_1.global_60
  loc_A0DAE8: LdPrVar
  loc_A0DAEA: LateMemCall
  loc_A0DAF0: LitVarStr var_94, "</html>"
  loc_A0DAF5: PopAdLdVar
  loc_A0DAF6: FLdPr Me
  loc_A0DAF9: MemLdRfVar from_stack_1.global_60
  loc_A0DAFC: LdPrVar
  loc_A0DAFE: LateMemCall
  loc_A0DB04: ExitProcHresult
End Function
