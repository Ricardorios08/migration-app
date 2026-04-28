VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptCertificadoderetencion
  Caption = "Certificado de retención"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptCertificadoderetencion.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9705
  ClientHeight = 5910
  StartUpPosition = 2 'CenterScreen
  Begin MSMask.MaskEdBox mskCopias
    Left = 3720
    Top = 3840
    Width = 375
    Height = 375
    TabIndex = 14
    OleObjectBlob = "rptCertificadoderetencion.frx":08CA
  End
  Begin VB.CommandButton cmdNueva
    Caption = "&Nueva búsqueda"
    Left = 5160
    Top = 240
    Width = 1335
    Height = 495
    TabIndex = 22
  End
  Begin VB.ComboBox cboPeriodo
    Style = 2
    ForeColor = &HFF0000&
    Left = 2160
    Top = 330
    Width = 975
    Height = 315
    TabIndex = 2
  End
  Begin VB.CheckBox chkUnaretencionxpagina
    Caption = "Una retención por página"
    Left = 240
    Top = 3840
    Width = 2175
    Height = 375
    TabIndex = 12
  End
  Begin TabDlg.SSTab SSTab
    Left = 120
    Top = 960
    Width = 9375
    Height = 2655
    TabIndex = 0
    OleObjectBlob = "rptCertificadoderetencion.frx":092C
    Begin VB.TextBox NumeOrpaTxt
      Left = 1800
      Top = 600
      Width = 3615
      Height = 315
      TabIndex = 4
      MaxLength = 400
    End
    Begin VB.CheckBox chkIncluyelafirma
      Caption = "¿Incluye la firma?:"
      Left = 5640
      Top = 630
      Width = 1575
      Height = 315
      TabIndex = 5
      Alignment = 1 'Right Justify
    End
    Begin VB.ComboBox cboCodiRete
      Style = 2
      ForeColor = &HFF0000&
      Left = -73440
      Top = 1200
      Width = 4095
      Height = 315
      TabIndex = 21
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = -73440
      Top = 720
      Width = 1575
      Height = 315
      TabIndex = 19
    End
    Begin VB.CommandButton CucuPersCmd
      Left = 3120
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 10
      Picture = "rptCertificadoderetencion.frx":0D0E
      Style = 1
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 1845
      Top = 1680
      Width = 1215
      Height = 285
      TabIndex = 9
      OleObjectBlob = "rptCertificadoderetencion.frx":0E08
    End
    Begin VB.Label Label9
      Caption = "(desde-hasta separar con guión; ejemplo: 18-21)"
      Left = 360
      Top = 960
      Width = 3405
      Height = 195
      TabIndex = 6
      AutoSize = -1  'True
    End
    Begin VB.Label Label7
      Caption = "(intercalar distintas órdenes con coma; ejemplo: 18,21,25)"
      Left = 360
      Top = 1200
      Width = 4065
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Concepto:"
      Left = -74310
      Top = 1200
      Width = 735
      Height = 195
      TabIndex = 20
      AutoSize = -1  'True
    End
    Begin VB.Label Label3
      Caption = "Mes:"
      Left = -73920
      Top = 720
      Width = 345
      Height = 195
      TabIndex = 18
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Orden de Pago:"
      Left = 585
      Top = 600
      Width = 1125
      Height = 195
      TabIndex = 3
      Alignment = 1 'Right Justify
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Proveedor:"
      Left = 930
      Top = 1680
      Width = 780
      Height = 195
      TabIndex = 8
    End
    Begin VB.Label DetaProvLbl
      Left = 3600
      Top = 1680
      Width = 3615
      Height = 375
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 5655
    Width = 9705
    Height = 255
    TabIndex = 27
    OleObjectBlob = "rptCertificadoderetencion.frx":0E7E
  End
  Begin VB.CommandButton cmdSalir
    Left = 6120
    Top = 4680
    Width = 735
    Height = 615
    TabIndex = 23
    Cancel = -1  'True
    Picture = "rptCertificadoderetencion.frx":0EFE
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptCertificadoderetencion.frx":1150
    Left = 6240
    Top = 4800
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 4440
    Width = 1815
    Height = 1095
    TabIndex = 25
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 17
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 4440
    Width = 3015
    Height = 1095
    TabIndex = 24
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6240
    Top = 4920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 26
    OleObjectBlob = "rptCertificadoderetencion.frx":11B4
  End
  Begin VB.Label Label4
    Caption = "Copias:"
    Left = 3000
    Top = 3900
    Width = 615
    Height = 255
    TabIndex = 13
  End
  Begin VB.Label Label1
    Caption = "Periodo:"
    Left = 1440
    Top = 390
    Width = 585
    Height = 195
    TabIndex = 1
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "rptCertificadoderetencion"

Public htmFile As Variant
Public bGenerado As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_2_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type

Private Type UDT_3_005788C8
  bStruc(108) As Byte ' String fields: 26
End Type


Private Sub cmdSalir_Click() '97A618
  'Data Table: 4BB4C8
  loc_97A5E8: LitVarStr var_94, "Cerrando..."
  loc_97A5ED: PopAdLdVar
  loc_97A5EE: FLdPr Me
  loc_97A5F1: VCallAd Control_ID_statusBar
  loc_97A5F4: FStAdFunc var_A8
  loc_97A5F7: FLdPr var_A8
  loc_97A5FA: LateIdSt
  loc_97A5FF: FFree1Ad var_A8
  loc_97A602: ILdRf Me
  loc_97A605: FStAdNoPop
  loc_97A609: ImpAdLdRf MemVar_C44F9C
  loc_97A60C: NewIfNullPr Me
  loc_97A60F: Me.Global.Unload from_stack_1
  loc_97A614: FFree1Ad var_A8
  loc_97A617: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '987E44
  'Data Table: 4BB4C8
  loc_987E0C: FLdPr Me
  loc_987E0F: VCallAd Control_ID_statusBar
  loc_987E12: FStAdFunc var_88
  loc_987E15: FLdPr var_88
  loc_987E18: LateIdLdVar var_98 DispID_1 0
  loc_987E1F: CStrVarTmp
  loc_987E20: CVarStr var_A8
  loc_987E23: PopAdLdVar
  loc_987E24: FLdPr Me
  loc_987E27: VCallAd Control_ID_statusBar
  loc_987E2A: FStAdFunc var_BC
  loc_987E2D: FLdPr var_BC
  loc_987E30: LateIdSt
  loc_987E35: FFreeAd var_88 = ""
  loc_987E3C: FFreeVar var_98 = ""
  loc_987E43: ExitProcHresult
End Sub

Private Sub cboMes_Click() 'A549A0
  'Data Table: 4BB4C8
  loc_A54714: FLdRfVar var_88
  loc_A54717: NewIfNullAd
  loc_A5471A: FStAd var_8C 
  loc_A5471E: FLdPr Me
  loc_A54721: VCallAd Control_ID_cboCodiRete
  loc_A54724: FStAdFunc var_90
  loc_A54727: FLdPr var_90
  loc_A5472A: Me.Clear
  loc_A5472F: FFree1Ad var_90
  loc_A54732: LitStr "SELECT DISTINCT liquidaneto.CodiRete, DetaRete"
  loc_A54735: LitStr " FROM liquidaneto"
  loc_A54738: ConcatStr
  loc_A54739: FStStrNoPop var_94
  loc_A5473C: LitStr " INNER JOIN cheque ON cheque.ExpeImpu = liquidaneto.ExpeImpu AND cheque.NumeLiqu = liquidaneto.NumeLiqu AND cheque.CucuPers = liquidaneto.CucuPers"
  loc_A5473F: ConcatStr
  loc_A54740: FStStrNoPop var_98
  loc_A54743: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = liquidaneto.PeriInfo AND retenciones.CodiRete = liquidaneto.CodiRete"
  loc_A54746: ConcatStr
  loc_A54747: FStStrNoPop var_9C
  loc_A5474A: LitStr " WHERE liquidaneto.CodiRete > 0 AND liquidaneto.PeriInfo = "
  loc_A5474D: ConcatStr
  loc_A5474E: FStStrNoPop var_A4
  loc_A54751: FLdRfVar var_A0
  loc_A54754: FLdPr Me
  loc_A54757: VCallAd Control_ID_cboPeriodo
  loc_A5475A: FStAdFunc var_90
  loc_A5475D: FLdPr var_90
  loc_A54760:  = Me.Text
  loc_A54765: ILdRf var_A0
  loc_A54768: ConcatStr
  loc_A54769: FStStrNoPop var_A8
  loc_A5476C: LitStr " AND Month(FepaCheq) = "
  loc_A5476F: ConcatStr
  loc_A54770: FStStrNoPop var_BC
  loc_A54773: FLdRfVar var_B8
  loc_A54776: FLdRfVar var_AE
  loc_A54779: FLdPr Me
  loc_A5477C: VCallAd Control_ID_cboMes
  loc_A5477F: FStAdFunc var_AC
  loc_A54782: FLdPr var_AC
  loc_A54785:  = Me.ListIndex
  loc_A5478A: FLdI2 var_AE
  loc_A5478D: FLdPr Me
  loc_A54790: VCallAd Control_ID_cboMes
  loc_A54793: FStAdFunc var_B4
  loc_A54796: FLdPr var_B4
  loc_A54799:  = Me.ItemData
  loc_A5479E: ILdRf var_B8
  loc_A547A1: CStrI4
  loc_A547A3: FStStrNoPop var_C0
  loc_A547A6: ConcatStr
  loc_A547A7: FStStrNoPop var_C4
  loc_A547AA: LitStr " ORDER BY CodiRete"
  loc_A547AD: ConcatStr
  loc_A547AE: FStStrNoPop var_C8
  loc_A547B1: FLdPr var_8C
  loc_A547B4: Call clsretenciones.RedefineRS(from_stack_1v)
  loc_A547B9: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_A547D0: FFreeAd var_90 = "": var_AC = ""
  loc_A547D9: FLdRfVar var_B8
  loc_A547DC: FLdPr var_8C
  loc_A547DF: from_stack_1 = clsretenciones.RecordCount
  loc_A547E4: ILdRf var_B8
  loc_A547E7: LitI4 0
  loc_A547EC: GtI4
  loc_A547ED: BranchF loc_A54967
  loc_A547F0: FLdPr var_8C
  loc_A547F3: Call clsretenciones.MoveFirst()
  loc_A547F8: LitVar_Missing var_D8
  loc_A547FB: PopAdLdVar
  loc_A547FC: LitStr "TODOS"
  loc_A547FF: FLdPr Me
  loc_A54802: VCallAd Control_ID_cboCodiRete
  loc_A54805: FStAdFunc var_90
  loc_A54808: FLdPr var_90
  loc_A5480B: Me.AddItem from_stack_1, from_stack_2
  loc_A54810: FFree1Ad var_90
  loc_A54813: FLdRfVar var_AE
  loc_A54816: FLdPr var_8C
  loc_A54819: from_stack_1 = clsretenciones.EOF
  loc_A5481E: FLdI2 var_AE
  loc_A54821: NotI4
  loc_A54822: BranchF loc_A5494E
  loc_A54825: LitVar_Missing var_154
  loc_A54828: PopAdLdVar
  loc_A54829: FLdRfVar var_E8
  loc_A5482C: FLdRfVar var_B4
  loc_A5482F: LitVarStr var_D8, "CodiRete"
  loc_A54834: PopAdLdVar
  loc_A54835: FLdRfVar var_AC
  loc_A54838: FLdRfVar var_90
  loc_A5483B: FLdPr var_8C
  loc_A5483E: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A54843: FLdPr var_90
  loc_A54846:  = Me.Fields
  loc_A5484B: FLdPr var_AC
  loc_A5484E: from_stack_2 = Me.Item(from_stack_1)
  loc_A54853: FLdPr var_B4
  loc_A54856:  = Me.Value
  loc_A5485B: FLdRfVar var_E8
  loc_A5485E: LitVarStr var_F8, " - "
  loc_A54863: ConcatVar var_108
  loc_A54867: FLdRfVar var_134
  loc_A5486A: FLdRfVar var_124
  loc_A5486D: LitVarStr var_120, "DetaRete"
  loc_A54872: PopAdLdVar
  loc_A54873: FLdRfVar var_110
  loc_A54876: FLdRfVar var_10C
  loc_A54879: FLdPr var_8C
  loc_A5487C: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A54881: FLdPr var_10C
  loc_A54884:  = Me.Fields
  loc_A54889: FLdPr var_110
  loc_A5488C: from_stack_2 = Me.Item(from_stack_1)
  loc_A54891: FLdPr var_124
  loc_A54894:  = Me.Value
  loc_A54899: FLdRfVar var_134
  loc_A5489C: ConcatVar var_144
  loc_A548A0: CStrVarVal var_94
  loc_A548A4: FLdPr Me
  loc_A548A7: VCallAd Control_ID_cboCodiRete
  loc_A548AA: FStAdFunc var_158
  loc_A548AD: FLdPr var_158
  loc_A548B0: Me.AddItem from_stack_1, from_stack_2
  loc_A548B5: FFree1Str var_94
  loc_A548B8: FFreeAd var_90 = "": var_AC = "": var_B4 = "": var_10C = "": var_110 = "": var_124 = ""
  loc_A548C9: FFreeVar var_E8 = "": var_108 = "": var_134 = ""
  loc_A548D4: FLdRfVar var_E8
  loc_A548D7: FLdRfVar var_B4
  loc_A548DA: LitVarStr var_D8, "CodiRete"
  loc_A548DF: PopAdLdVar
  loc_A548E0: FLdRfVar var_AC
  loc_A548E3: FLdRfVar var_90
  loc_A548E6: FLdPr var_8C
  loc_A548E9: from_stack_1v = clsretenciones.RsFrmGet()
  loc_A548EE: FLdPr var_90
  loc_A548F1:  = Me.Fields
  loc_A548F6: FLdPr var_AC
  loc_A548F9: from_stack_2 = Me.Item(from_stack_1)
  loc_A548FE: FLdPr var_B4
  loc_A54901:  = Me.Value
  loc_A54906: FLdRfVar var_E8
  loc_A54909: CI4Var
  loc_A5490B: FLdRfVar var_AE
  loc_A5490E: FLdPr Me
  loc_A54911: VCallAd Control_ID_cboCodiRete
  loc_A54914: FStAdFunc var_10C
  loc_A54917: FLdPr var_10C
  loc_A5491A:  = Me.NewIndex
  loc_A5491F: FLdI2 var_AE
  loc_A54922: FLdPr Me
  loc_A54925: VCallAd Control_ID_cboCodiRete
  loc_A54928: FStAdFunc var_110
  loc_A5492B: FLdPr var_110
  loc_A5492E: Me.ItemData = from_stack_1
  loc_A54933: FFreeAd var_90 = "": var_AC = "": var_10C = "": var_B4 = ""
  loc_A54940: FFree1Var var_E8 = ""
  loc_A54943: FLdPr var_8C
  loc_A54946: Call clsretenciones.MoveSiguiente()
  loc_A5494B: Branch loc_A54813
  loc_A5494E: LitI2_Byte 0
  loc_A54950: FLdPr Me
  loc_A54953: VCallAd Control_ID_cboCodiRete
  loc_A54956: FStAdFunc var_90
  loc_A54959: FLdPr var_90
  loc_A5495C: Me.ListIndex = from_stack_1
  loc_A54961: FFree1Ad var_90
  loc_A54964: Branch loc_A54998
  loc_A54967: LitVar_Missing var_D8
  loc_A5496A: PopAdLdVar
  loc_A5496B: LitStr "TODOS"
  loc_A5496E: FLdPr Me
  loc_A54971: VCallAd Control_ID_cboCodiRete
  loc_A54974: FStAdFunc var_90
  loc_A54977: FLdPr var_90
  loc_A5497A: Me.AddItem from_stack_1, from_stack_2
  loc_A5497F: FFree1Ad var_90
  loc_A54982: LitI2_Byte 0
  loc_A54984: FLdPr Me
  loc_A54987: VCallAd Control_ID_cboCodiRete
  loc_A5498A: FStAdFunc var_90
  loc_A5498D: FLdPr var_90
  loc_A54990: Me.ListIndex = from_stack_1
  loc_A54995: FFree1Ad var_90
  loc_A54998: LitNothing
  loc_A5499A: FStAd var_8C 
  loc_A5499E: ExitProcHresult
  loc_A5499F: CStr2Ansi
End Sub

Private Sub cboPeriodo_Click() '9EE77C
  'Data Table: 4BB4C8
  loc_9EE658: LitI4 &HB
  loc_9EE65D: CI2I4
  loc_9EE65E: FLdRfVar var_88
  loc_9EE661: ImpAdLdRf MemVar_C44F9C
  loc_9EE664: NewIfNullPr Me
  loc_9EE667:  = Me.Global.Screen
  loc_9EE66C: FLdPr var_88
  loc_9EE66F: Screen.MousePointer = from_stack_1
  loc_9EE674: FFree1Ad var_88
  loc_9EE677: FLdPr Me
  loc_9EE67A: VCallAd Control_ID_SSTab
  loc_9EE67D: FStAdFunc var_88
  loc_9EE680: FLdPr var_88
  loc_9EE683: LateIdLdVar var_98 DispID_0 0
  loc_9EE68A: CI2Var
  loc_9EE68B: LitI2_Byte 0
  loc_9EE68D: EqI2
  loc_9EE68E: FFree1Ad var_88
  loc_9EE691: FFree1Var var_98 = ""
  loc_9EE694: BranchF loc_9EE75B
  loc_9EE697: LitStr "SELECT IFNULL(Max(NumeOrpa),0) NumeOrpa"
  loc_9EE69A: LitStr " FROM ordenpago"
  loc_9EE69D: ConcatStr
  loc_9EE69E: FStStrNoPop var_9C
  loc_9EE6A1: LitStr " WHERE PeriInfo = "
  loc_9EE6A4: ConcatStr
  loc_9EE6A5: FStStrNoPop var_A4
  loc_9EE6A8: FLdRfVar var_A0
  loc_9EE6AB: FLdPr Me
  loc_9EE6AE: VCallAd Control_ID_cboPeriodo
  loc_9EE6B1: FStAdFunc var_88
  loc_9EE6B4: FLdPr var_88
  loc_9EE6B7:  = Me.Text
  loc_9EE6BC: ILdRf var_A0
  loc_9EE6BF: ConcatStr
  loc_9EE6C0: FStStrNoPop var_A8
  loc_9EE6C3: ImpAdCallFPR4 Proc_266_18_98AE98()
  loc_9EE6C8: FFreeStr var_9C = "": var_A4 = "": var_A0 = ""
  loc_9EE6D3: FFree1Ad var_88
  loc_9EE6D6: FLdRfVar var_AC
  loc_9EE6D9: ImpAdLdPr unk_4BB4D2
  loc_9EE6DC: MemLdPr global_0
  loc_9EE6DF:  = Me.RecordCount
  loc_9EE6E4: ILdRf var_AC
  loc_9EE6E7: LitI4 0
  loc_9EE6EC: GtI4
  loc_9EE6ED: BranchF loc_9EE744
  loc_9EE6F0: FLdRfVar var_98
  loc_9EE6F3: FLdRfVar var_C0
  loc_9EE6F6: LitVarStr var_BC, "NumeOrpa"
  loc_9EE6FB: PopAdLdVar
  loc_9EE6FC: FLdRfVar var_88
  loc_9EE6FF: ImpAdLdPr unk_4BB4D2
  loc_9EE702: MemLdPr global_0
  loc_9EE705:  = Me.Fields
  loc_9EE70A: FLdPr var_88
  loc_9EE70D: from_stack_2 = Me.Item(from_stack_1)
  loc_9EE712: FLdPr var_C0
  loc_9EE715:  = Me.Value
  loc_9EE71A: FLdRfVar var_98
  loc_9EE71D: CStrVarTmp
  loc_9EE71E: FStStrNoPop var_9C
  loc_9EE721: FLdPr Me
  loc_9EE724: VCallAd Control_ID_NumeOrpaTxt
  loc_9EE727: FStAdFunc var_C4
  loc_9EE72A: FLdPr var_C4
  loc_9EE72D: Me.Text = from_stack_1
  loc_9EE732: FFree1Str var_9C
  loc_9EE735: FFreeAd var_88 = "": var_C0 = ""
  loc_9EE73E: FFree1Var var_98 = ""
  loc_9EE741: Branch loc_9EE75B
  loc_9EE744: LitStr vbNullString
  loc_9EE747: FLdPr Me
  loc_9EE74A: VCallAd Control_ID_NumeOrpaTxt
  loc_9EE74D: FStAdFunc var_88
  loc_9EE750: FLdPr var_88
  loc_9EE753: Me.Text = from_stack_1
  loc_9EE758: FFree1Ad var_88
  loc_9EE75B: LitI4 0
  loc_9EE760: CI2I4
  loc_9EE761: FLdRfVar var_88
  loc_9EE764: ImpAdLdRf MemVar_C44F9C
  loc_9EE767: NewIfNullPr Me
  loc_9EE76A:  = Me.Global.Screen
  loc_9EE76F: FLdPr var_88
  loc_9EE772: Screen.MousePointer = from_stack_1
  loc_9EE777: FFree1Ad var_88
  loc_9EE77A: ExitProcHresult
End Sub

Private Sub NumeOrpaTxt_GotFocus() '9531F0
  'Data Table: 4BB4C8
  loc_9531DC: FLdPr Me
  loc_9531DF: VCallAd Control_ID_NumeOrpaTxt
  loc_9531E2: CVarAd
  loc_9531E6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9531EB: FFree1Var var_94 = ""
  loc_9531EE: ExitProcHresult
End Sub

Private Sub NumeOrpaTxt_KeyPress(KeyAscii As Integer) '97CA40
  'Data Table: 4BB4C8
  loc_97CA0C: LitStr "1234567890-,."
  loc_97CA0F: FStStrCopy var_88
  loc_97CA12: FLdRfVar var_88
  loc_97CA15: ILdRf KeyAscii
  loc_97CA18: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97CA1D: IStI2 KeyAscii
  loc_97CA20: FFree1Str var_88
  loc_97CA23: ILdI2 KeyAscii
  loc_97CA26: LitStr "."
  loc_97CA29: ImpAdCallI2 Asc()
  loc_97CA2E: EqI2
  loc_97CA2F: BranchF loc_97CA3D
  loc_97CA32: LitStr ","
  loc_97CA35: ImpAdCallI2 Asc()
  loc_97CA3A: IStI2 KeyAscii
  loc_97CA3D: ExitProcHresult
End Sub

Private Sub NumeOrpaTxt_Validate(Cancel As Boolean) 'A7D784
  'Data Table: 4BB4C8
  loc_A7D3B0: LitStr vbNullString
  loc_A7D3B3: FLdPr Me
  loc_A7D3B6: MemStStrCopy
  loc_A7D3BA: FLdRfVar var_8C
  loc_A7D3BD: FLdPr Me
  loc_A7D3C0: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D3C3: FStAdFunc var_88
  loc_A7D3C6: FLdPr var_88
  loc_A7D3C9:  = Me.Text
  loc_A7D3CE: LitI2_Byte 0
  loc_A7D3D0: PopTmpLdAd2 var_92
  loc_A7D3D3: LitI2_Byte 0
  loc_A7D3D5: PopTmpLdAd2 var_90
  loc_A7D3D8: LitI2_Byte 0
  loc_A7D3DA: PopTmpLdAd2 var_8E
  loc_A7D3DD: ILdRf var_8C
  loc_A7D3E0: LitStr "Orden de pago"
  loc_A7D3E3: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_A7D3E8: FStStrNoPop var_98
  loc_A7D3EB: FLdPr Me
  loc_A7D3EE: MemStStrCopy
  loc_A7D3F2: FFreeStr var_8C = ""
  loc_A7D3F9: FFree1Ad var_88
  loc_A7D3FC: FLdPr Me
  loc_A7D3FF: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D402: FStAdFunc var_A4
  loc_A7D405: LitNothing
  loc_A7D407: CastAd
  loc_A7D40A: FStAdFunc var_A0
  loc_A7D40D: FLdRfVar var_A0
  loc_A7D410: FLdZeroAd var_A4
  loc_A7D413: FStAdFuncNoPop
  loc_A7D416: CastAd
  loc_A7D419: FStAdFunc var_9C
  loc_A7D41C: FLdRfVar var_9C
  loc_A7D41F: FLdPr Me
  loc_A7D422: MemLdRfVar from_stack_1.global_112
  loc_A7D425: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7D42A: IStI2 Cancel
  loc_A7D42D: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7D438: ILdI2 Cancel
  loc_A7D43B: NotI4
  loc_A7D43C: BranchF loc_A7D780
  loc_A7D43F: LitI4 1
  loc_A7D444: FLdRfVar var_8C
  loc_A7D447: FLdPr Me
  loc_A7D44A: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D44D: FStAdFunc var_88
  loc_A7D450: FLdPr var_88
  loc_A7D453:  = Me.Text
  loc_A7D458: ILdRf var_8C
  loc_A7D45B: LitStr "-"
  loc_A7D45E: LitI4 0
  loc_A7D463: FnInStr4
  loc_A7D465: LitI4 0
  loc_A7D46A: GtI4
  loc_A7D46B: FFree1Str var_8C
  loc_A7D46E: FFree1Ad var_88
  loc_A7D471: BranchF loc_A7D605
  loc_A7D474: LitI4 1
  loc_A7D479: FLdRfVar var_8C
  loc_A7D47C: FLdPr Me
  loc_A7D47F: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D482: FStAdFunc var_88
  loc_A7D485: FLdPr var_88
  loc_A7D488:  = Me.Text
  loc_A7D48D: ILdRf var_8C
  loc_A7D490: LitStr ","
  loc_A7D493: LitI4 0
  loc_A7D498: FnInStr4
  loc_A7D49A: LitI4 0
  loc_A7D49F: GtI4
  loc_A7D4A0: FFree1Str var_8C
  loc_A7D4A3: FFree1Ad var_88
  loc_A7D4A6: BranchF loc_A7D4B6
  loc_A7D4A9: LitStr "primero un guión, y luego una coma..."
  loc_A7D4AC: FLdPr Me
  loc_A7D4AF: MemStStrCopy
  loc_A7D4B3: Branch loc_A7D602
  loc_A7D4B6: FLdRfVar var_98
  loc_A7D4B9: FLdPr Me
  loc_A7D4BC: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D4BF: FStAdFunc var_9C
  loc_A7D4C2: FLdPr var_9C
  loc_A7D4C5:  = Me.Text
  loc_A7D4CA: LitI4 1
  loc_A7D4CF: FLdRfVar var_8C
  loc_A7D4D2: FLdPr Me
  loc_A7D4D5: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D4D8: FStAdFunc var_88
  loc_A7D4DB: FLdPr var_88
  loc_A7D4DE:  = Me.Text
  loc_A7D4E3: ILdRf var_8C
  loc_A7D4E6: LitStr "-"
  loc_A7D4E9: LitI4 0
  loc_A7D4EE: FnInStr4
  loc_A7D4F0: LitI4 0
  loc_A7D4F5: LitI4 -1
  loc_A7D4FA: LitStr "-"
  loc_A7D4FD: ILdRf var_98
  loc_A7D500: ImpAdCallI2 InStrRev(, , , )
  loc_A7D505: NeI4
  loc_A7D506: FFreeStr var_8C = ""
  loc_A7D50D: FFreeAd var_88 = ""
  loc_A7D514: BranchF loc_A7D524
  loc_A7D517: LitStr "tiene más de un guión..."
  loc_A7D51A: FLdPr Me
  loc_A7D51D: MemStStrCopy
  loc_A7D521: Branch loc_A7D602
  loc_A7D524: FLdRfVar var_8C
  loc_A7D527: FLdPr Me
  loc_A7D52A: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D52D: FStAdFunc var_88
  loc_A7D530: FLdPr var_88
  loc_A7D533:  = Me.Text
  loc_A7D538: FLdRfVar var_B0
  loc_A7D53B: FLdPr Me
  loc_A7D53E: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D541: FStAdFunc var_A0
  loc_A7D544: FLdPr var_A0
  loc_A7D547:  = Me.Text
  loc_A7D54C: FLdRfVar var_B4
  loc_A7D54F: FLdPr Me
  loc_A7D552: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D555: FStAdFunc var_A4
  loc_A7D558: FLdPr var_A4
  loc_A7D55B:  = Me.Text
  loc_A7D560: LitStr " AND o.NumeOrpa >= '"
  loc_A7D563: LitI4 1
  loc_A7D568: FLdRfVar var_98
  loc_A7D56B: FLdPr Me
  loc_A7D56E: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D571: FStAdFunc var_9C
  loc_A7D574: FLdPr var_9C
  loc_A7D577:  = Me.Text
  loc_A7D57C: ILdRf var_98
  loc_A7D57F: LitStr "-"
  loc_A7D582: LitI4 0
  loc_A7D587: FnInStr4
  loc_A7D589: LitI4 1
  loc_A7D58E: SubI4
  loc_A7D58F: ILdRf var_8C
  loc_A7D592: ImpAdCallI2 Left$(, )
  loc_A7D597: FStStrNoPop var_A8
  loc_A7D59A: ConcatStr
  loc_A7D59B: FStStrNoPop var_AC
  loc_A7D59E: LitStr "' AND o.NumeOrpa <= '"
  loc_A7D5A1: ConcatStr
  loc_A7D5A2: FStStrNoPop var_D8
  loc_A7D5A5: LitVar_Missing var_D4
  loc_A7D5A8: LitI4 1
  loc_A7D5AD: ILdRf var_B4
  loc_A7D5B0: LitStr "-"
  loc_A7D5B3: LitI4 0
  loc_A7D5B8: FnInStr4
  loc_A7D5BA: LitI4 1
  loc_A7D5BF: AddI4
  loc_A7D5C0: ILdRf var_B0
  loc_A7D5C3: ImpAdCallI2 Mid$(, , )
  loc_A7D5C8: FStStrNoPop var_DC
  loc_A7D5CB: ConcatStr
  loc_A7D5CC: FStStrNoPop var_E0
  loc_A7D5CF: LitStr "'"
  loc_A7D5D2: ConcatStr
  loc_A7D5D3: FStStrNoPop var_E4
  loc_A7D5D6: FLdPr Me
  loc_A7D5D9: MemStStrCopy
  loc_A7D5DD: FFreeStr var_98 = "": var_8C = "": var_A8 = "": var_AC = "": var_B4 = "": var_B0 = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_A7D5F4: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7D5FF: FFree1Var var_D4 = ""
  loc_A7D602: Branch loc_A7D744
  loc_A7D605: LitI4 1
  loc_A7D60A: FLdRfVar var_8C
  loc_A7D60D: FLdPr Me
  loc_A7D610: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D613: FStAdFunc var_88
  loc_A7D616: FLdPr var_88
  loc_A7D619:  = Me.Text
  loc_A7D61E: ILdRf var_8C
  loc_A7D621: LitStr ","
  loc_A7D624: LitI4 0
  loc_A7D629: FnInStr4
  loc_A7D62B: LitI4 0
  loc_A7D630: GtI4
  loc_A7D631: FFree1Str var_8C
  loc_A7D634: FFree1Ad var_88
  loc_A7D637: BranchF loc_A7D6D6
  loc_A7D63A: LitI4 1
  loc_A7D63F: FLdRfVar var_8C
  loc_A7D642: FLdPr Me
  loc_A7D645: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D648: FStAdFunc var_88
  loc_A7D64B: FLdPr var_88
  loc_A7D64E:  = Me.Text
  loc_A7D653: ILdRf var_8C
  loc_A7D656: LitStr "-"
  loc_A7D659: LitI4 0
  loc_A7D65E: FnInStr4
  loc_A7D660: LitI4 0
  loc_A7D665: GtI4
  loc_A7D666: FFree1Str var_8C
  loc_A7D669: FFree1Ad var_88
  loc_A7D66C: BranchF loc_A7D67C
  loc_A7D66F: LitStr "primero una coma, y luego un guión..."
  loc_A7D672: FLdPr Me
  loc_A7D675: MemStStrCopy
  loc_A7D679: Branch loc_A7D6D3
  loc_A7D67C: FLdRfVar var_8C
  loc_A7D67F: FLdPr Me
  loc_A7D682: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D685: FStAdFunc var_88
  loc_A7D688: FLdPr var_88
  loc_A7D68B:  = Me.Text
  loc_A7D690: LitStr " AND o.NumeOrpa IN ('"
  loc_A7D693: LitI4 0
  loc_A7D698: LitI4 -1
  loc_A7D69D: LitI4 1
  loc_A7D6A2: LitStr "','"
  loc_A7D6A5: LitStr ","
  loc_A7D6A8: ILdRf var_8C
  loc_A7D6AB: ImpAdCallI2 Replace(, , , , , )
  loc_A7D6B0: FStStrNoPop var_98
  loc_A7D6B3: ConcatStr
  loc_A7D6B4: FStStrNoPop var_A8
  loc_A7D6B7: LitStr "')"
  loc_A7D6BA: ConcatStr
  loc_A7D6BB: FStStrNoPop var_AC
  loc_A7D6BE: FLdPr Me
  loc_A7D6C1: MemStStrCopy
  loc_A7D6C5: FFreeStr var_8C = "": var_98 = "": var_A8 = ""
  loc_A7D6D0: FFree1Ad var_88
  loc_A7D6D3: Branch loc_A7D744
  loc_A7D6D6: FLdRfVar var_8C
  loc_A7D6D9: FLdPr Me
  loc_A7D6DC: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D6DF: FStAdFunc var_88
  loc_A7D6E2: FLdPr var_88
  loc_A7D6E5:  = Me.Text
  loc_A7D6EA: FLdZeroAd var_8C
  loc_A7D6ED: CVarStr var_D4
  loc_A7D6F0: ImpAdCallI2 IsNumeric()
  loc_A7D6F5: NotI4
  loc_A7D6F6: FFree1Ad var_88
  loc_A7D6F9: FFree1Var var_D4 = ""
  loc_A7D6FC: BranchF loc_A7D70C
  loc_A7D6FF: LitStr "no es un número..."
  loc_A7D702: FLdPr Me
  loc_A7D705: MemStStrCopy
  loc_A7D709: Branch loc_A7D744
  loc_A7D70C: LitStr " AND o.NumeOrpa = '"
  loc_A7D70F: FLdRfVar var_8C
  loc_A7D712: FLdPr Me
  loc_A7D715: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D718: FStAdFunc var_88
  loc_A7D71B: FLdPr var_88
  loc_A7D71E:  = Me.Text
  loc_A7D723: ILdRf var_8C
  loc_A7D726: ConcatStr
  loc_A7D727: FStStrNoPop var_98
  loc_A7D72A: LitStr "'"
  loc_A7D72D: ConcatStr
  loc_A7D72E: FStStrNoPop var_A8
  loc_A7D731: FLdPr Me
  loc_A7D734: MemStStrCopy
  loc_A7D738: FFreeStr var_8C = "": var_98 = ""
  loc_A7D741: FFree1Ad var_88
  loc_A7D744: FLdPr Me
  loc_A7D747: VCallAd Control_ID_NumeOrpaTxt
  loc_A7D74A: FStAdFunc var_A4
  loc_A7D74D: LitNothing
  loc_A7D74F: CastAd
  loc_A7D752: FStAdFunc var_A0
  loc_A7D755: FLdRfVar var_A0
  loc_A7D758: FLdZeroAd var_A4
  loc_A7D75B: FStAdFuncNoPop
  loc_A7D75E: CastAd
  loc_A7D761: FStAdFunc var_9C
  loc_A7D764: FLdRfVar var_9C
  loc_A7D767: FLdPr Me
  loc_A7D76A: MemLdRfVar from_stack_1.global_112
  loc_A7D76D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A7D772: IStI2 Cancel
  loc_A7D775: FFreeAd var_88 = "": var_9C = "": var_A0 = ""
  loc_A7D780: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9542C4
  'Data Table: 4BB4C8
  loc_9542AC: LitI2_Byte 0
  loc_9542AE: ILdRf Me
  loc_9542B1: CastAd
  loc_9542B4: FStAdFunc var_88
  loc_9542B7: FLdRfVar var_88
  loc_9542BA: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9542BF: FFree1Ad var_88
  loc_9542C2: ExitProcHresult
End Sub

Private Sub CucuPersCmd_Click() '9E8488
  'Data Table: 4BB4C8
  loc_9E8374: LitI2_Byte &HFF
  loc_9E8376: ImpAdLdRf MemVar_C3D74C
  loc_9E8379: NewIfNullPr bscProveedor
  loc_9E837C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_9E8381: LitNothing
  loc_9E8383: CastAd
  loc_9E8386: FStAdFuncNoPop
  loc_9E8389: ImpAdLdRf MemVar_C3D74C
  loc_9E838C: NewIfNullPr bscProveedor
  loc_9E838F: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_9E8394: FFree1Ad var_88
  loc_9E8397: LitVar_Missing var_A8
  loc_9E839A: PopAdLdVar
  loc_9E839B: LitVarI4
  loc_9E83A3: PopAdLdVar
  loc_9E83A4: ImpAdLdRf MemVar_C3D74C
  loc_9E83A7: NewIfNullPr bscProveedor
  loc_9E83AA: bscProveedor.Show from_stack_1, from_stack_2
  loc_9E83AF: FLdRfVar var_C4
  loc_9E83B2: FLdRfVar var_B4
  loc_9E83B5: LitVarStr var_98, "CucuPers"
  loc_9E83BA: PopAdLdVar
  loc_9E83BB: FLdRfVar var_B0
  loc_9E83BE: FLdRfVar var_AC
  loc_9E83C1: FLdRfVar var_88
  loc_9E83C4: ImpAdLdRf MemVar_C3D74C
  loc_9E83C7: NewIfNullPr bscProveedor
  loc_9E83CA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9E83CF: FLdPr var_88
  loc_9E83D2: from_stack_1v = clsbase.RsFrmGet()
  loc_9E83D7: FLdPr var_AC
  loc_9E83DA:  = Me.Fields
  loc_9E83DF: FLdPr var_B0
  loc_9E83E2: from_stack_2 = Me.Item(from_stack_1)
  loc_9E83E7: FLdPr var_B4
  loc_9E83EA:  = Me.Value
  loc_9E83EF: FLdRfVar var_C4
  loc_9E83F2: CStrVarTmp
  loc_9E83F3: CVarStr var_D4
  loc_9E83F6: PopAdLdVar
  loc_9E83F7: FLdPr Me
  loc_9E83FA: VCallAd Control_ID_CucuPersMsk
  loc_9E83FD: FStAdFunc var_D8
  loc_9E8400: FLdPr var_D8
  loc_9E8403: LateIdSt
  loc_9E8408: FFreeAd var_88 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_9E8415: FFreeVar var_C4 = ""
  loc_9E841C: FLdRfVar var_C4
  loc_9E841F: FLdRfVar var_B4
  loc_9E8422: LitVarStr var_98, "DetaProv"
  loc_9E8427: PopAdLdVar
  loc_9E8428: FLdRfVar var_B0
  loc_9E842B: FLdRfVar var_AC
  loc_9E842E: FLdRfVar var_88
  loc_9E8431: ImpAdLdRf MemVar_C3D74C
  loc_9E8434: NewIfNullPr bscProveedor
  loc_9E8437: from_stack_1v = bscProveedor.global_4315292Get()
  loc_9E843C: FLdPr var_88
  loc_9E843F: from_stack_1v = clsbase.RsFrmGet()
  loc_9E8444: FLdPr var_AC
  loc_9E8447:  = Me.Fields
  loc_9E844C: FLdPr var_B0
  loc_9E844F: from_stack_2 = Me.Item(from_stack_1)
  loc_9E8454: FLdPr var_B4
  loc_9E8457:  = Me.Value
  loc_9E845C: FLdRfVar var_C4
  loc_9E845F: CStrVarTmp
  loc_9E8460: FStStrNoPop var_DC
  loc_9E8463: FLdPr Me
  loc_9E8466: VCallAd Control_ID_DetaProvLbl
  loc_9E8469: FStAdFunc var_D8
  loc_9E846C: FLdPr var_D8
  loc_9E846F: Me.Caption = from_stack_1
  loc_9E8474: FFree1Str var_DC
  loc_9E8477: FFreeAd var_88 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_9E8484: FFree1Var var_C4 = ""
  loc_9E8487: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A18234
  'Data Table: 4BB4C8
  loc_A180A8: LitI2_Byte 0
  loc_A180AA: FLdPr Me
  loc_A180AD: MemStI2 bGenerado
  loc_A180B0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_A180B5: ImpAdLdI2 MemVar_C3D064
  loc_A180B8: CStrUI1
  loc_A180BA: FStStrNoPop var_88
  loc_A180BD: FLdPr Me
  loc_A180C0: VCallAd Control_ID_cboPeriodo
  loc_A180C3: FStAdFunc var_8C
  loc_A180C6: FLdPr var_8C
  loc_A180C9: Me.Text = from_stack_1
  loc_A180CE: FFree1Str var_88
  loc_A180D1: FFree1Ad var_8C
  loc_A180D4: FLdPr Me
  loc_A180D7: VCallAd Control_ID_SSTab
  loc_A180DA: FStAdFunc var_8C
  loc_A180DD: FLdPr var_8C
  loc_A180E0: LateIdLdVar var_9C DispID_4 0
  loc_A180E7: CI2Var
  loc_A180E8: LitI2_Byte 0
  loc_A180EA: EqI2
  loc_A180EB: FFree1Ad var_8C
  loc_A180EE: FFree1Var var_9C = ""
  loc_A180F1: BranchF loc_A18181
  loc_A180F4: LitStr vbNullString
  loc_A180F7: FLdPr Me
  loc_A180FA: VCallAd Control_ID_NumeOrpaTxt
  loc_A180FD: FStAdFunc var_8C
  loc_A18100: FLdPr var_8C
  loc_A18103: Me.Text = from_stack_1
  loc_A18108: FFree1Ad var_8C
  loc_A1810B: LitVarStr var_AC, vbNullString
  loc_A18110: PopAdLdVar
  loc_A18111: FLdPr Me
  loc_A18114: VCallAd Control_ID_CucuPersMsk
  loc_A18117: FStAdFunc var_8C
  loc_A1811A: FLdPr var_8C
  loc_A1811D: LateIdSt
  loc_A18122: FFree1Ad var_8C
  loc_A18125: LitStr vbNullString
  loc_A18128: FLdPr Me
  loc_A1812B: VCallAd Control_ID_DetaProvLbl
  loc_A1812E: FStAdFunc var_8C
  loc_A18131: FLdPr var_8C
  loc_A18134: Me.Caption = from_stack_1
  loc_A18139: FFree1Ad var_8C
  loc_A1813C: LitStr "Municipalidad de Guaymallén"
  loc_A1813F: LitStr "Municipalidad de Maipú"
  loc_A18142: EqStr
  loc_A18144: BranchF loc_A18164
  loc_A18147: LitI4 1
  loc_A1814C: CI2I4
  loc_A1814D: FLdPr Me
  loc_A18150: VCallAd Control_ID_chkIncluyelafirma
  loc_A18153: FStAdFunc var_8C
  loc_A18156: FLdPr var_8C
  loc_A18159: Me.Value = from_stack_1
  loc_A1815E: FFree1Ad var_8C
  loc_A18161: Branch loc_A1817E
  loc_A18164: LitI4 0
  loc_A18169: CI2I4
  loc_A1816A: FLdPr Me
  loc_A1816D: VCallAd Control_ID_chkIncluyelafirma
  loc_A18170: FStAdFunc var_8C
  loc_A18173: FLdPr var_8C
  loc_A18176: Me.Value = from_stack_1
  loc_A1817B: FFree1Ad var_8C
  loc_A1817E: Branch loc_A181D5
  loc_A18181: LitI2_Byte 0
  loc_A18183: PopTmpLdAd2 var_BE
  loc_A18186: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_A1818B: CVarDate var_9C
  loc_A1818F: FLdRfVar var_D0
  loc_A18192: ImpAdCallFPR4  = Month()
  loc_A18197: FLdRfVar var_D0
  loc_A1819A: LitVarI2 var_BC, 1
  loc_A1819F: SubVar var_E0
  loc_A181A3: CI2Var
  loc_A181A4: FLdPr Me
  loc_A181A7: VCallAd Control_ID_cboMes
  loc_A181AA: FStAdFunc var_8C
  loc_A181AD: FLdPr var_8C
  loc_A181B0: Me.ListIndex = from_stack_1
  loc_A181B5: FFree1Ad var_8C
  loc_A181B8: FFreeVar var_9C = ""
  loc_A181BF: LitI2_Byte 0
  loc_A181C1: FLdPr Me
  loc_A181C4: VCallAd Control_ID_cboCodiRete
  loc_A181C7: FStAdFunc var_8C
  loc_A181CA: FLdPr var_8C
  loc_A181CD: Me.ListIndex = from_stack_1
  loc_A181D2: FFree1Ad var_8C
  loc_A181D5: LitStr "Municipalidad de Guaymallén"
  loc_A181D8: LitStr "Municipalidad de Guaymallén"
  loc_A181DB: EqStr
  loc_A181DD: BranchF loc_A181FD
  loc_A181E0: LitVarStr var_AC, "3"
  loc_A181E5: PopAdLdVar
  loc_A181E6: FLdPr Me
  loc_A181E9: VCallAd Control_ID_mskCopias
  loc_A181EC: FStAdFunc var_8C
  loc_A181EF: FLdPr var_8C
  loc_A181F2: LateIdSt
  loc_A181F7: FFree1Ad var_8C
  loc_A181FA: Branch loc_A18217
  loc_A181FD: LitVarStr var_AC, "1"
  loc_A18202: PopAdLdVar
  loc_A18203: FLdPr Me
  loc_A18206: VCallAd Control_ID_mskCopias
  loc_A18209: FStAdFunc var_8C
  loc_A1820C: FLdPr var_8C
  loc_A1820F: LateIdSt
  loc_A18214: FFree1Ad var_8C
  loc_A18217: Call HabilitarCriterio()
  loc_A1821C: ILdRf Me
  loc_A1821F: CastAd
  loc_A18222: FStAdFunc var_8C
  loc_A18225: FLdRfVar var_8C
  loc_A18228: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_A1822D: FFree1Ad var_8C
  loc_A18230: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '953B58
  'Data Table: 4BB4C8
  loc_953B40: ILdRf Me
  loc_953B43: CastAd
  loc_953B46: FStAdFunc var_88
  loc_953B49: FLdRfVar var_88
  loc_953B4C: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_953B51: FFree1Ad var_88
  loc_953B54: ExitProcHresult
End Sub

Private Sub mskCopias_Change() '953238
  'Data Table: 4BB4C8
  loc_953224: FLdPr Me
  loc_953227: VCallAd Control_ID_mskCopias
  loc_95322A: CVarAd
  loc_95322E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_953233: FFree1Var var_94 = ""
  loc_953236: ExitProcHresult
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '953310
  'Data Table: 4BB4C8
  loc_9532FC: FLdPr Me
  loc_9532FF: VCallAd Control_ID_CucuPersMsk
  loc_953302: CVarAd
  loc_953306: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95330B: FFree1Var var_94 = ""
  loc_95330E: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) 'A31944
  'Data Table: 4BB4C8
  loc_A31750: FLdPr Me
  loc_A31753: VCallAd Control_ID_CucuPersMsk
  loc_A31756: FStAdFunc var_88
  loc_A31759: FLdPr var_88
  loc_A3175C: LateIdLdVar var_98 DispID_22 0
  loc_A31763: CStrVarTmp
  loc_A31764: FStStrNoPop var_9C
  loc_A31767: LitStr vbNullString
  loc_A3176A: NeStr
  loc_A3176C: FFree1Str var_9C
  loc_A3176F: FFree1Ad var_88
  loc_A31772: FFree1Var var_98 = ""
  loc_A31775: BranchF loc_A3192C
  loc_A31778: FLdPr Me
  loc_A3177B: VCallAd Control_ID_CucuPersMsk
  loc_A3177E: FStAdFunc var_88
  loc_A31781: FLdPr var_88
  loc_A31784: LateIdLdVar var_98 DispID_22 0
  loc_A3178B: PopAd
  loc_A3178D: FLdPr Me
  loc_A31790: MemLdRfVar from_stack_1.global_72
  loc_A31793: NewIfNullRf
  loc_A31797: FLdRfVar var_98
  loc_A3179A: CStrVarTmp
  loc_A3179B: FStStrNoPop var_9C
  loc_A3179E: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_A317A3: FStStrNoPop var_A0
  loc_A317A6: FLdPr Me
  loc_A317A9: MemStStrCopy
  loc_A317AD: FFreeStr var_9C = ""
  loc_A317B4: FFree1Ad var_88
  loc_A317B7: FFree1Var var_98 = ""
  loc_A317BA: FLdPr Me
  loc_A317BD: VCallAd Control_ID_CucuPersMsk
  loc_A317C0: FStAdFunc var_AC
  loc_A317C3: FLdPr Me
  loc_A317C6: VCallAd Control_ID_DetaProvLbl
  loc_A317C9: FStAdFunc var_A8
  loc_A317CC: FLdRfVar var_A8
  loc_A317CF: FLdZeroAd var_AC
  loc_A317D2: FStAdFuncNoPop
  loc_A317D5: CastAd
  loc_A317D8: FStAdFunc var_A4
  loc_A317DB: FLdRfVar var_A4
  loc_A317DE: FLdPr Me
  loc_A317E1: MemLdRfVar from_stack_1.global_112
  loc_A317E4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A317E9: IStI2 arg_C
  loc_A317EC: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_A317F7: ILdI2 arg_C
  loc_A317FA: NotI4
  loc_A317FB: BranchF loc_A31929
  loc_A317FE: FLdRfVar var_9C
  loc_A31801: FLdPr Me
  loc_A31804: MemLdRfVar from_stack_1.global_72
  loc_A31807: NewIfNullPr tblproveedor
  loc_A3180A: from_stack_1v = tblproveedor.DetaProvGet()
  loc_A3180F: ILdRf var_9C
  loc_A31812: FLdPr Me
  loc_A31815: VCallAd Control_ID_DetaProvLbl
  loc_A31818: FStAdFunc var_88
  loc_A3181B: FLdPr var_88
  loc_A3181E: Me.Caption = from_stack_1
  loc_A31823: FFree1Str var_9C
  loc_A31826: FFree1Ad var_88
  loc_A31829: LitStr "SELECT IFNULL(Max(NumeOrpa),0) AS NumeOrpa FROM ordenpago WHERE PeriInfo = "
  loc_A3182C: FLdRfVar var_9C
  loc_A3182F: FLdPr Me
  loc_A31832: VCallAd Control_ID_cboPeriodo
  loc_A31835: FStAdFunc var_88
  loc_A31838: FLdPr var_88
  loc_A3183B:  = Me.Text
  loc_A31840: ILdRf var_9C
  loc_A31843: ConcatStr
  loc_A31844: FStStrNoPop var_A0
  loc_A31847: FLdPr Me
  loc_A3184A: MemLdRfVar from_stack_1.global_88
  loc_A3184D: NewIfNullPr clsbase
  loc_A31850: Call clsbase.RedefineRS(from_stack_1v)
  loc_A31855: FFreeStr var_9C = ""
  loc_A3185C: FFree1Ad var_88
  loc_A3185F: FLdRfVar var_B0
  loc_A31862: FLdPr Me
  loc_A31865: MemLdRfVar from_stack_1.global_88
  loc_A31868: NewIfNullPr clsbase
  loc_A3186B: from_stack_1 = clsbase.RecordCount
  loc_A31870: ILdRf var_B0
  loc_A31873: LitI4 0
  loc_A31878: GtI4
  loc_A31879: BranchF loc_A31912
  loc_A3187C: FLdRfVar var_9C
  loc_A3187F: FLdPr Me
  loc_A31882: VCallAd Control_ID_NumeOrpaTxt
  loc_A31885: FStAdFunc var_88
  loc_A31888: FLdPr var_88
  loc_A3188B:  = Me.Text
  loc_A31890: ILdRf var_9C
  loc_A31893: LitStr vbNullString
  loc_A31896: EqStr
  loc_A31898: FFree1Str var_9C
  loc_A3189B: FFree1Ad var_88
  loc_A3189E: BranchF loc_A3190F
  loc_A318A1: LitVarStr var_D0, "1-"
  loc_A318A6: FLdRfVar var_98
  loc_A318A9: FLdRfVar var_A8
  loc_A318AC: LitVarStr var_C0, "NumeOrpa"
  loc_A318B1: PopAdLdVar
  loc_A318B2: FLdRfVar var_A4
  loc_A318B5: FLdRfVar var_88
  loc_A318B8: FLdPr Me
  loc_A318BB: MemLdRfVar from_stack_1.global_88
  loc_A318BE: NewIfNullPr clsbase
  loc_A318C1: from_stack_1v = clsbase.RsFrmGet()
  loc_A318C6: FLdPr var_88
  loc_A318C9:  = Me.Fields
  loc_A318CE: FLdPr var_A4
  loc_A318D1: from_stack_2 = Me.Item(from_stack_1)
  loc_A318D6: FLdPr var_A8
  loc_A318D9:  = Me.Value
  loc_A318DE: FLdRfVar var_98
  loc_A318E1: ConcatVar var_E0
  loc_A318E5: CStrVarVal var_9C
  loc_A318E9: FLdPr Me
  loc_A318EC: VCallAd Control_ID_NumeOrpaTxt
  loc_A318EF: FStAdFunc var_AC
  loc_A318F2: FLdPr var_AC
  loc_A318F5: Me.Text = from_stack_1
  loc_A318FA: FFree1Str var_9C
  loc_A318FD: FFreeAd var_88 = "": var_A4 = "": var_A8 = ""
  loc_A31908: FFreeVar var_98 = ""
  loc_A3190F: Branch loc_A31929
  loc_A31912: LitStr vbNullString
  loc_A31915: FLdPr Me
  loc_A31918: VCallAd Control_ID_NumeOrpaTxt
  loc_A3191B: FStAdFunc var_88
  loc_A3191E: FLdPr var_88
  loc_A31921: Me.Text = from_stack_1
  loc_A31926: FFree1Ad var_88
  loc_A31929: Branch loc_A31943
  loc_A3192C: LitStr "Todos"
  loc_A3192F: FLdPr Me
  loc_A31932: VCallAd Control_ID_DetaProvLbl
  loc_A31935: FStAdFunc var_88
  loc_A31938: FLdPr var_88
  loc_A3193B: Me.Caption = from_stack_1
  loc_A31940: FFree1Ad var_88
  loc_A31943: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() '95422C
  'Data Table: 4BB4C8
  loc_954214: ILdRf Me
  loc_954217: CastAd
  loc_95421A: FStAdFunc var_88
  loc_95421D: FLdRfVar var_88
  loc_954220: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_954225: FFree1Ad var_88
  loc_954228: ExitProcHresult
End Sub

Private Sub Form_Load() 'A1A330
  'Data Table: 4BB4C8
  loc_A1A1A0: LitI2_Byte &HFF
  loc_A1A1A2: ImpAdStI2 MemVar_C3D840
  loc_A1A1A5: ILdRf Me
  loc_A1A1A8: CastAd
  loc_A1A1AB: FStAdFunc var_90
  loc_A1A1AE: FLdRfVar var_90
  loc_A1A1B1: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A1A1B6: FFree1Ad var_90
  loc_A1A1B9: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A1A1BC: FLdRfVar var_8C
  loc_A1A1BF: NewIfNullPr clsperiodo
  loc_A1A1C2: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A1A1C7: FLdRfVar var_94
  loc_A1A1CA: FLdRfVar var_8C
  loc_A1A1CD: NewIfNullPr clsperiodo
  loc_A1A1D0: from_stack_1 = clsperiodo.RecordCount
  loc_A1A1D5: ILdRf var_94
  loc_A1A1D8: LitI4 0
  loc_A1A1DD: GtI4
  loc_A1A1DE: BranchF loc_A1A286
  loc_A1A1E1: LitI2_Byte 0
  loc_A1A1E3: FLdRfVar var_86
  loc_A1A1E6: LitI2_Byte 1
  loc_A1A1E8: ForI2 var_98
  loc_A1A1EE: FLdRfVar var_8C
  loc_A1A1F1: NewIfNullPr clsperiodo
  loc_A1A1F4: Call clsperiodo.MoveFirst()
  loc_A1A1F9: FLdRfVar var_9A
  loc_A1A1FC: FLdRfVar var_8C
  loc_A1A1FF: NewIfNullPr clsperiodo
  loc_A1A202: from_stack_1 = clsperiodo.EOF
  loc_A1A207: FLdI2 var_9A
  loc_A1A20A: NotI4
  loc_A1A20B: BranchF loc_A1A27E
  loc_A1A20E: LitVar_Missing var_D8
  loc_A1A211: PopAdLdVar
  loc_A1A212: FLdRfVar var_C4
  loc_A1A215: FLdRfVar var_B4
  loc_A1A218: LitVarStr var_B0, "PeriInfo"
  loc_A1A21D: PopAdLdVar
  loc_A1A21E: FLdRfVar var_A0
  loc_A1A221: FLdRfVar var_90
  loc_A1A224: FLdRfVar var_8C
  loc_A1A227: NewIfNullPr clsperiodo
  loc_A1A22A: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A1A22F: FLdPr var_90
  loc_A1A232:  = Me.Fields
  loc_A1A237: FLdPr var_A0
  loc_A1A23A: from_stack_2 = Me.Item(from_stack_1)
  loc_A1A23F: FLdPr var_B4
  loc_A1A242:  = Me.Value
  loc_A1A247: FLdRfVar var_C4
  loc_A1A24A: CStrVarTmp
  loc_A1A24B: FStStrNoPop var_C8
  loc_A1A24E: FLdPr Me
  loc_A1A251: VCallAd Control_ID_cboPeriodo
  loc_A1A254: FStAdFunc var_DC
  loc_A1A257: FLdPr var_DC
  loc_A1A25A: Me.AddItem from_stack_1, from_stack_2
  loc_A1A25F: FFree1Str var_C8
  loc_A1A262: FFreeAd var_90 = "": var_A0 = "": var_B4 = ""
  loc_A1A26D: FFree1Var var_C4 = ""
  loc_A1A270: FLdRfVar var_8C
  loc_A1A273: NewIfNullPr clsperiodo
  loc_A1A276: Call clsperiodo.MoveSiguiente()
  loc_A1A27B: Branch loc_A1A1F9
  loc_A1A27E: FLdRfVar var_86
  loc_A1A281: NextI2 var_98, loc_A1A1EE
  loc_A1A286: LitI2_Byte 1
  loc_A1A288: FLdRfVar var_86
  loc_A1A28B: LitI2_Byte &HC
  loc_A1A28D: ForI2 var_E0
  loc_A1A293: LitVar_Missing var_B0
  loc_A1A296: PopAdLdVar
  loc_A1A297: LitI2_Byte 0
  loc_A1A299: FLdI2 var_86
  loc_A1A29C: CI4UI1
  loc_A1A29D: ImpAdCallI2 MonthName(, )
  loc_A1A2A2: FStStrNoPop var_C8
  loc_A1A2A5: FLdPr Me
  loc_A1A2A8: VCallAd Control_ID_cboMes
  loc_A1A2AB: FStAdFunc var_90
  loc_A1A2AE: FLdPr var_90
  loc_A1A2B1: Me.AddItem from_stack_1, from_stack_2
  loc_A1A2B6: FFree1Str var_C8
  loc_A1A2B9: FFree1Ad var_90
  loc_A1A2BC: FLdI2 var_86
  loc_A1A2BF: CI4UI1
  loc_A1A2C0: FLdRfVar var_9A
  loc_A1A2C3: FLdPr Me
  loc_A1A2C6: VCallAd Control_ID_cboMes
  loc_A1A2C9: FStAdFunc var_90
  loc_A1A2CC: FLdPr var_90
  loc_A1A2CF:  = Me.NewIndex
  loc_A1A2D4: FLdI2 var_9A
  loc_A1A2D7: FLdPr Me
  loc_A1A2DA: VCallAd Control_ID_cboMes
  loc_A1A2DD: FStAdFunc var_A0
  loc_A1A2E0: FLdPr var_A0
  loc_A1A2E3: Me.ItemData = from_stack_1
  loc_A1A2E8: FFreeAd var_90 = ""
  loc_A1A2EF: FLdRfVar var_86
  loc_A1A2F2: NextI2 var_E0, loc_A1A293
  loc_A1A2F7: Call cmdNueva_Click()
  loc_A1A2FC: LitVarI2 var_B0, 0
  loc_A1A301: PopAdLdVar
  loc_A1A302: FLdPrThis
  loc_A1A303: VCallAd Control_ID_SSTab
  loc_A1A306: FStAdFunc var_90
  loc_A1A309: FLdPr var_90
  loc_A1A30C: LateIdSt
  loc_A1A311: FFree1Ad var_90
  loc_A1A314: LitI4 1
  loc_A1A319: CI2I4
  loc_A1A31A: FLdPr Me
  loc_A1A31D: VCallAd Control_ID_chkUnaretencionxpagina
  loc_A1A320: FStAdFunc var_90
  loc_A1A323: FLdPr var_90
  loc_A1A326: Me.Value = from_stack_1
  loc_A1A32B: FFree1Ad var_90
  loc_A1A32E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954310
  'Data Table: 4BB4C8
  loc_9542F8: FLdPr Me
  loc_9542FB: VCallAd Control_ID_wbbReporte
  loc_9542FE: FStAdFunc var_88
  loc_954301: FLdRfVar var_88
  loc_954304: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_954309: FFree1Ad var_88
  loc_95430C: ExitProcHresult
End Sub

Public Function htmFileGet() '4BCA60
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4BCA6F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '4BCA7E
  htmFile = Value
End Sub

Public Function bGeneradoGet() '4BCA8D
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4BCA9C
  bGenerado = Value
End Sub

Public Function GenerarPDF() '9D92A0
  'Data Table: 4BB4C8
  loc_9D91C0: LitStr " "
  loc_9D91C3: FLdRfVar var_90
  loc_9D91C6: FLdPr Me
  loc_9D91C9: VCallAd Control_ID_cboPeriodo
  loc_9D91CC: FStAdFunc var_8C
  loc_9D91CF: FLdPr var_8C
  loc_9D91D2:  = Me.Text
  loc_9D91D7: ILdRf var_90
  loc_9D91DA: ConcatStr
  loc_9D91DB: FStStrNoPop GenerarPDF
  loc_9D91DE: LitStr "-"
  loc_9D91E1: ConcatStr
  loc_9D91E2: FStStrNoPop var_A0
  loc_9D91E5: FLdRfVar var_9C
  loc_9D91E8: FLdPr Me
  loc_9D91EB: VCallAd Control_ID_NumeOrpaTxt
  loc_9D91EE: FStAdFunc var_98
  loc_9D91F1: FLdPr var_98
  loc_9D91F4:  = Me.Text
  loc_9D91F9: ILdRf var_9C
  loc_9D91FC: ConcatStr
  loc_9D91FD: FStStrNoPop var_A4
  loc_9D9200: LitStr "-"
  loc_9D9203: ConcatStr
  loc_9D9204: FStStrNoPop var_BC
  loc_9D9207: FLdPr Me
  loc_9D920A: VCallAd Control_ID_CucuPersMsk
  loc_9D920D: FStAdFunc var_A8
  loc_9D9210: FLdPr var_A8
  loc_9D9213: LateIdLdVar var_B8 DispID_22 0
  loc_9D921A: CStrVarTmp
  loc_9D921B: FStStrNoPop var_C0
  loc_9D921E: ConcatStr
  loc_9D921F: FStStrNoPop var_C4
  loc_9D9222: FLdPr Me
  loc_9D9225: Me.Tag = from_stack_1
  loc_9D922A: FFreeStr var_90 = "": GenerarPDF = "": var_A0 = "": var_9C = "": var_A4 = "": var_BC = "": var_C0 = ""
  loc_9D923D: FFreeAd var_8C = "": var_98 = ""
  loc_9D9246: FFree1Var var_B8 = ""
  loc_9D9249: LitI2_Byte &HFF
  loc_9D924B: ILdRf Me
  loc_9D924E: CastAd
  loc_9D9251: FStAdFunc var_8C
  loc_9D9254: FLdRfVar var_8C
  loc_9D9257: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9D925C: FFree1Ad var_8C
  loc_9D925F: FLdPr Me
  loc_9D9262: MemLdI2 bGenerado
  loc_9D9265: BranchF loc_9D9293
  loc_9D9268: ImpAdCallFPR4 DoEvents()
  loc_9D926D: FLdRfVar var_C6
  loc_9D9270: FLdPr Me
  loc_9D9273: VCallAd Control_ID_cmdNueva
  loc_9D9276: FStAdFunc var_8C
  loc_9D9279: FLdPr var_8C
  loc_9D927C:  = Me.Enabled
  loc_9D9281: FLdI2 var_C6
  loc_9D9284: NotI4
  loc_9D9285: FFree1Ad var_8C
  loc_9D9288: BranchT loc_9D9268
  loc_9D928B: LitI2_Byte &HFF
  loc_9D928D: FStI2 var_86
  loc_9D9290: Branch loc_9D9298
  loc_9D9293: LitI2_Byte 0
  loc_9D9295: FStI2 var_86
  loc_9D9298: ExitProcCbHresult
  loc_9D929E: PopTmpLdAd8 arg_50FF
End Function

Public Sub HabilitarCriterio() '9FBFE4
  'Data Table: 4BB4C8
  loc_9FBEA4: LitI4 0
  loc_9FBEA9: LitI4 0
  loc_9FBEAE: FLdRfVar var_88
  loc_9FBEB1: Redim
  loc_9FBEBB: FLdPr Me
  loc_9FBEBE: VCallAd Control_ID_cboPeriodo
  loc_9FBEC1: CVarAd
  loc_9FBEC5: ParmAry1St
  loc_9FBECB: FLdRfVar var_88
  loc_9FBECE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FBED3: FLdRfVar var_88
  loc_9FBED6: Erase
  loc_9FBED7: FLdPrThis
  loc_9FBED8: VCallAd Control_ID_SSTab
  loc_9FBEDB: FStAdFunc var_9C
  loc_9FBEDE: FLdPr var_9C
  loc_9FBEE1: LateIdLdVar var_98 DispID_4 0
  loc_9FBEE8: CI2Var
  loc_9FBEE9: LitI2_Byte 0
  loc_9FBEEB: EqI2
  loc_9FBEEC: FFree1Ad var_9C
  loc_9FBEEF: FFree1Var var_98 = ""
  loc_9FBEF2: BranchF loc_9FBF5B
  loc_9FBEF5: LitI4 0
  loc_9FBEFA: LitI4 3
  loc_9FBEFF: FLdRfVar var_88
  loc_9FBF02: Redim
  loc_9FBF0C: FLdPr Me
  loc_9FBF0F: VCallAd Control_ID_NumeOrpaTxt
  loc_9FBF12: CVarAd
  loc_9FBF16: ParmAry1St
  loc_9FBF1C: FLdPr Me
  loc_9FBF1F: VCallAd Control_ID_CucuPersMsk
  loc_9FBF22: CVarAd
  loc_9FBF26: ParmAry1St
  loc_9FBF2C: FLdPr Me
  loc_9FBF2F: VCallAd Control_ID_CucuPersCmd
  loc_9FBF32: CVarAd
  loc_9FBF36: ParmAry1St
  loc_9FBF3C: FLdPr Me
  loc_9FBF3F: VCallAd Control_ID_chkIncluyelafirma
  loc_9FBF42: CVarAd
  loc_9FBF46: ParmAry1St
  loc_9FBF4C: FLdRfVar var_88
  loc_9FBF4F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FBF54: FLdRfVar var_88
  loc_9FBF57: Erase
  loc_9FBF58: Branch loc_9FBF9E
  loc_9FBF5B: LitI4 0
  loc_9FBF60: LitI4 1
  loc_9FBF65: FLdRfVar var_88
  loc_9FBF68: Redim
  loc_9FBF72: FLdPr Me
  loc_9FBF75: VCallAd Control_ID_cboMes
  loc_9FBF78: CVarAd
  loc_9FBF7C: ParmAry1St
  loc_9FBF82: FLdPr Me
  loc_9FBF85: VCallAd Control_ID_cboCodiRete
  loc_9FBF88: CVarAd
  loc_9FBF8C: ParmAry1St
  loc_9FBF92: FLdRfVar var_88
  loc_9FBF95: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FBF9A: FLdRfVar var_88
  loc_9FBF9D: Erase
  loc_9FBF9E: LitI4 0
  loc_9FBFA3: LitI4 1
  loc_9FBFA8: FLdRfVar var_88
  loc_9FBFAB: Redim
  loc_9FBFB5: FLdPr Me
  loc_9FBFB8: VCallAd Control_ID_chkUnaretencionxpagina
  loc_9FBFBB: CVarAd
  loc_9FBFBF: ParmAry1St
  loc_9FBFC5: FLdPr Me
  loc_9FBFC8: VCallAd Control_ID_mskCopias
  loc_9FBFCB: CVarAd
  loc_9FBFCF: ParmAry1St
  loc_9FBFD5: FLdRfVar var_88
  loc_9FBFD8: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9FBFDD: FLdRfVar var_88
  loc_9FBFE0: Erase
  loc_9FBFE1: ExitProcHresult
  loc_9FBFE2: OnErrorGoto loc_A00EA4
End Sub

Public Sub GeneraReporte() 'C02D20
  'Data Table: 4BB4C8
  loc_C007C0: LitStr vbNullString
  loc_C007C3: FStStrCopy var_90
  loc_C007C6: LitI2_Byte 0
  loc_C007C8: PopTmpLdAd2 var_92
  loc_C007CB: from_stack_2v = CucuPersMsk_UnknownEvent_8(from_stack_1v)
  loc_C007D0: ILdRf var_90
  loc_C007D3: LitStr vbNullString
  loc_C007D6: NeStr
  loc_C007D8: BranchF loc_C007DC
  loc_C007DB: ExitProcHresult
  loc_C007DC: FLdPr Me
  loc_C007DF: MemLdI2 bGenerado
  loc_C007E2: BranchF loc_C007E6
  loc_C007E5: ExitProcHresult
  loc_C007E6: LitVarStr var_A4, "Generando reporte..."
  loc_C007EB: PopAdLdVar
  loc_C007EC: FLdPr Me
  loc_C007EF: VCallAd Control_ID_statusBar
  loc_C007F2: FStAdFunc var_B8
  loc_C007F5: FLdPr var_B8
  loc_C007F8: LateIdSt
  loc_C007FD: FFree1Ad var_B8
  loc_C00800: LitI4 &HB
  loc_C00805: CI2I4
  loc_C00806: FLdPr Me
  loc_C00809: Me.MousePointer = from_stack_1
  loc_C0080E: LitStr vbNullString
  loc_C00811: FStStrCopy var_90
  loc_C00814: FLdPrThis
  loc_C00815: VCallAd Control_ID_SSTab
  loc_C00818: FStAdFunc var_B8
  loc_C0081B: FLdPr var_B8
  loc_C0081E: LateIdLdVar var_C8 DispID_4 0
  loc_C00825: CI2Var
  loc_C00826: LitI2_Byte 0
  loc_C00828: EqI2
  loc_C00829: FFree1Ad var_B8
  loc_C0082C: FFree1Var var_C8 = ""
  loc_C0082F: BranchF loc_C01C98
  loc_C00832: LitI2_Byte 0
  loc_C00834: PopTmpLdAd2 var_92
  loc_C00837: Call NumeOrpaTxt_Validate(from_stack_1v)
  loc_C0083C: ILdRf var_90
  loc_C0083F: LitStr vbNullString
  loc_C00842: NeStr
  loc_C00844: BranchF loc_C0084A
  loc_C00847: Branch loc_C02CF5
  loc_C0084A: FLdRfVar var_CC
  loc_C0084D: FLdPr Me
  loc_C00850: VCallAd Control_ID_NumeOrpaTxt
  loc_C00853: FStAdFunc var_B8
  loc_C00856: FLdPr var_B8
  loc_C00859:  = Me.Text
  loc_C0085E: ILdRf var_CC
  loc_C00861: ImpAdCallI2 Trim$()
  loc_C00866: FStStrNoPop var_D0
  loc_C00869: LitStr vbNullString
  loc_C0086C: EqStr
  loc_C0086E: FLdPr Me
  loc_C00871: VCallAd Control_ID_CucuPersMsk
  loc_C00874: FStAdFunc var_D4
  loc_C00877: FLdPr var_D4
  loc_C0087A: LateIdLdVar var_C8 DispID_22 0
  loc_C00881: CStrVarTmp
  loc_C00882: FStStrNoPop var_D8
  loc_C00885: ImpAdCallI2 Trim$()
  loc_C0088A: FStStrNoPop var_DC
  loc_C0088D: LitStr vbNullString
  loc_C00890: EqStr
  loc_C00892: AndI4
  loc_C00893: FFreeStr var_CC = "": var_D0 = "": var_D8 = ""
  loc_C0089E: FFreeAd var_B8 = ""
  loc_C008A5: FFree1Var var_C8 = ""
  loc_C008A8: BranchF loc_C008CD
  loc_C008AB: LitI4 0
  loc_C008B0: LitStr "Debe ingresar Número de Orden de Pago o Proveedor"
  loc_C008B3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C008B8: FLdPr Me
  loc_C008BB: VCallAd Control_ID_NumeOrpaTxt
  loc_C008BE: CVarAd
  loc_C008C2: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_C008C7: FFree1Var var_C8 = ""
  loc_C008CA: Branch loc_C02CF5
  loc_C008CD: FLdRfVar var_CC
  loc_C008D0: FLdPr Me
  loc_C008D3: VCallAd Control_ID_NumeOrpaTxt
  loc_C008D6: FStAdFunc var_B8
  loc_C008D9: FLdPr var_B8
  loc_C008DC:  = Me.Text
  loc_C008E1: ILdRf var_CC
  loc_C008E4: ImpAdCallI2 Trim$()
  loc_C008E9: FStStrNoPop var_D0
  loc_C008EC: LitStr vbNullString
  loc_C008EF: EqStr
  loc_C008F1: FFreeStr var_CC = ""
  loc_C008F8: FFree1Ad var_B8
  loc_C008FB: BranchF loc_C00920
  loc_C008FE: LitI4 0
  loc_C00903: LitStr "Debe ingresar el rango de Órdenes de Pago. Verifique..."
  loc_C00906: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0090B: FLdPr Me
  loc_C0090E: VCallAd Control_ID_NumeOrpaTxt
  loc_C00911: CVarAd
  loc_C00915: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_C0091A: FFree1Var var_C8 = ""
  loc_C0091D: Branch loc_C02CF5
  loc_C00920: FLdPr Me
  loc_C00923: MemLdStr global_116
  loc_C00926: LitStr vbNullString
  loc_C00929: EqStr
  loc_C0092B: BranchF loc_C00950
  loc_C0092E: LitI4 0
  loc_C00933: LitStr "Debe ingresar el rango de Órdenes de Pago. Verifique..."
  loc_C00936: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C0093B: FLdPr Me
  loc_C0093E: VCallAd Control_ID_NumeOrpaTxt
  loc_C00941: CVarAd
  loc_C00945: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_C0094A: FFree1Var var_C8 = ""
  loc_C0094D: Branch loc_C02CF5
  loc_C00950: FLdPr Me
  loc_C00953: VCallAd Control_ID_CucuPersMsk
  loc_C00956: FStAdFunc var_B8
  loc_C00959: FLdPr var_B8
  loc_C0095C: LateIdLdVar var_C8 DispID_22 0
  loc_C00963: CStrVarTmp
  loc_C00964: FStStrNoPop var_CC
  loc_C00967: ImpAdCallI2 Trim$()
  loc_C0096C: FStStrNoPop var_D0
  loc_C0096F: LitStr vbNullString
  loc_C00972: NeStr
  loc_C00974: FFreeStr var_CC = ""
  loc_C0097B: FFree1Ad var_B8
  loc_C0097E: FFree1Var var_C8 = ""
  loc_C00981: BranchF loc_C009F7
  loc_C00984: FLdPr Me
  loc_C00987: VCallAd Control_ID_CucuPersMsk
  loc_C0098A: FStAdFunc var_B8
  loc_C0098D: FLdPr var_B8
  loc_C00990: LateIdLdVar var_C8 DispID_22 0
  loc_C00997: PopAd
  loc_C00999: FLdPr Me
  loc_C0099C: MemLdRfVar from_stack_1.global_72
  loc_C0099F: NewIfNullRf
  loc_C009A3: FLdRfVar var_C8
  loc_C009A6: CStrVarTmp
  loc_C009A7: FStStrNoPop var_CC
  loc_C009AA: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_C009AF: FStStr var_90
  loc_C009B2: FFree1Str var_CC
  loc_C009B5: FFree1Ad var_B8
  loc_C009B8: FFree1Var var_C8 = ""
  loc_C009BB: FLdPr Me
  loc_C009BE: VCallAd Control_ID_CucuPersMsk
  loc_C009C1: FStAdFunc var_E4
  loc_C009C4: LitNothing
  loc_C009C6: CastAd
  loc_C009C9: FStAdFunc var_E0
  loc_C009CC: FLdRfVar var_E0
  loc_C009CF: FLdZeroAd var_E4
  loc_C009D2: FStAdFuncNoPop
  loc_C009D5: CastAd
  loc_C009D8: FStAdFunc var_D4
  loc_C009DB: FLdRfVar var_D4
  loc_C009DE: FLdRfVar var_90
  loc_C009E1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_C009E6: FFreeAd var_B8 = "": var_D4 = "": var_E0 = ""
  loc_C009F1: BranchF loc_C009F7
  loc_C009F4: Branch loc_C02CF5
  loc_C009F7: FLdPr Me
  loc_C009FA: VCallAd Control_ID_CucuPersMsk
  loc_C009FD: FStAdFunc var_B8
  loc_C00A00: FLdPr var_B8
  loc_C00A03: LateIdLdVar var_C8 DispID_22 0
  loc_C00A0A: CStrVarTmp
  loc_C00A0B: FStStrNoPop var_CC
  loc_C00A0E: ImpAdCallI2 Trim$()
  loc_C00A13: FStStr var_DC
  loc_C00A16: FLdPr Me
  loc_C00A19: VCallAd Control_ID_CucuPersMsk
  loc_C00A1C: FStAdFunc var_D4
  loc_C00A1F: FLdPr var_D4
  loc_C00A22: LateIdLdVar var_F4 DispID_22 0
  loc_C00A29: PopAd
  loc_C00A2B: LitVarStr var_B4, vbNullString
  loc_C00A30: FStVarCopyObj var_114
  loc_C00A33: FLdRfVar var_114
  loc_C00A36: LitStr " AND ln.CucuPers = "
  loc_C00A39: FLdRfVar var_F4
  loc_C00A3C: CStrVarTmp
  loc_C00A3D: FStStrNoPop var_D8
  loc_C00A40: ConcatStr
  loc_C00A41: CVarStr var_104
  loc_C00A44: FLdZeroAd var_DC
  loc_C00A47: FStStrNoPop var_D0
  loc_C00A4A: LitStr vbNullString
  loc_C00A4D: NeStr
  loc_C00A4F: CVarBoolI2 var_A4
  loc_C00A53: FLdRfVar var_124
  loc_C00A56: ImpAdCallFPR4  = IIf(, , )
  loc_C00A5B: FLdRfVar var_124
  loc_C00A5E: CStrVarTmp
  loc_C00A5F: FStStr var_88
  loc_C00A62: FFreeStr var_CC = "": var_D0 = "": var_D8 = ""
  loc_C00A6D: FFreeAd var_B8 = ""
  loc_C00A74: FFreeVar var_C8 = "": var_F4 = "": var_A4 = "": var_104 = "": var_114 = ""
  loc_C00A83: LitStr "SELECT o.PeriInfo, o.NumeOrpa, o.DetaOrpa, ln.*, DetaRete, DetaProv, DecrPers"
  loc_C00A86: LitStr ", (SELECT Sum(ImpoLine) FROM liquidaneto tmp WHERE tmp.PeriInfo = ln.PeriInfo AND tmp.ExpeImpu = ln.ExpeImpu AND tmp.NumeLiqu = ln.NumeLiqu AND tmp.CucuPers = ln.CucuPers AND tmp.CodiRete = 0) Neto, TipoLiqu"
  loc_C00A89: ConcatStr
  loc_C00A8A: FStStrNoPop var_CC
  loc_C00A8D: LitStr ", AlicEsca, BaseEsca, ln.ExpeImpu, ln.NumeLiqu, DetaLiqu, FechLiqu, DetaDere, IFNULL(NuinRexp,0) NuinRexp, CAST(IFNULL(FechCaja,'') AS DATE) FechCaja"
  loc_C00A90: ConcatStr
  loc_C00A91: FStStrNoPop var_D0
  loc_C00A94: LitStr ", CAST(IF(ln.PefiLine>0 AND ln.PerfLine=0,Concat('FI *',ln.PefiLine),IF(ln.PefiLine=0 AND ln.PerfLine>0,Concat('RF *',ln.PerfLine),IF(ln.PefiLine>0 AND ln.PerfLine>0,Concat('FI *',ln.PefiLine,' - RF *',ln.PerfLine),'&nbsp;'))) AS Char) Penalidad"
  loc_C00A97: ConcatStr
  loc_C00A98: FStStrNoPop var_D8
  loc_C00A9B: LitStr " FROM ordenpago o"
  loc_C00A9E: ConcatStr
  loc_C00A9F: FStStrNoPop var_DC
  loc_C00AA2: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = o.PeriInfo AND l.ExpeImpu = o.ExpeImpu AND l.NumeLiqu = o.NumeLiqu"
  loc_C00AA5: ConcatStr
  loc_C00AA6: FStStrNoPop var_128
  loc_C00AA9: LitStr " INNER JOIN liquidaneto ln ON ln.PeriInfo = l.PeriInfo AND ln.ExpeImpu = l.ExpeImpu AND ln.NumeLiqu = l.NumeLiqu"
  loc_C00AAC: ConcatStr
  loc_C00AAD: FStStrNoPop var_12C
  loc_C00AB0: LitStr " AND ln.CodiRete > 0"
  loc_C00AB3: ConcatStr
  loc_C00AB4: FStStrNoPop var_130
  loc_C00AB7: ILdRf var_88
  loc_C00ABA: ConcatStr
  loc_C00ABB: FStStrNoPop var_134
  loc_C00ABE: LitStr " INNER JOIN retenciones r ON r.PeriInfo = ln.PeriInfo AND r.CodiRete = ln.CodiRete"
  loc_C00AC1: ConcatStr
  loc_C00AC2: FStStrNoPop var_138
  loc_C00AC5: LitStr " INNER JOIN deretenciones dr ON dr.PeriInfo = ln.PeriInfo AND dr.CodiRete = ln.CodiRete AND dr.CodiDere = ln.CodiDere"
  loc_C00AC8: ConcatStr
  loc_C00AC9: FStStrNoPop var_13C
  loc_C00ACC: LitStr " INNER JOIN escalas e ON e.PeriInfo = ln.PeriInfo AND e.FechEsca = ln.FechEsca AND e.CodiRete = ln.CodiRete AND e.CodiDere = ln.CodiDere AND e.CodiEsca = ln.CodiEsca"
  loc_C00ACF: ConcatStr
  loc_C00AD0: FStStrNoPop var_140
  loc_C00AD3: LitStr " INNER JOIN proveedor p ON p.CucuPers = ln.CucuPers"
  loc_C00AD6: ConcatStr
  loc_C00AD7: FStStrNoPop var_144
  loc_C00ADA: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = p.CucuPers"
  loc_C00ADD: ConcatStr
  loc_C00ADE: FStStrNoPop var_148
  loc_C00AE1: LitStr " LEFT JOIN retexprov ON retexprov.CucuPers = ln.CucuPers AND retexprov.PeriInfo = ln.PeriInfo AND retexprov.CodiRete = ln.CodiRete AND retexprov.CodiDere = ln.CodiDere"
  loc_C00AE4: ConcatStr
  loc_C00AE5: FStStrNoPop var_14C
  loc_C00AE8: LitStr " WHERE o.PeriInfo = "
  loc_C00AEB: ConcatStr
  loc_C00AEC: FStStrNoPop var_154
  loc_C00AEF: FLdRfVar var_150
  loc_C00AF2: FLdPr Me
  loc_C00AF5: VCallAd Control_ID_cboPeriodo
  loc_C00AF8: FStAdFunc var_B8
  loc_C00AFB: FLdPr var_B8
  loc_C00AFE:  = Me.Text
  loc_C00B03: ILdRf var_150
  loc_C00B06: ConcatStr
  loc_C00B07: FStStrNoPop var_158
  loc_C00B0A: LitStr " AND FeanOrpa Is Null "
  loc_C00B0D: ConcatStr
  loc_C00B0E: FStStrNoPop var_15C
  loc_C00B11: FLdPr Me
  loc_C00B14: MemLdStr global_116
  loc_C00B17: ConcatStr
  loc_C00B18: FStStrNoPop var_160
  loc_C00B1B: LitStr " ORDER BY NumeOrpa, DetaProv;"
  loc_C00B1E: ConcatStr
  loc_C00B1F: FStStrNoPop var_164
  loc_C00B22: FLdPr Me
  loc_C00B25: MemLdRfVar from_stack_1.global_80
  loc_C00B28: NewIfNullPr clsbase
  loc_C00B2B: Call clsbase.RedefineRS(from_stack_1v)
  loc_C00B30: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_C00B5B: FFree1Ad var_B8
  loc_C00B5E: FLdRfVar var_168
  loc_C00B61: FLdPr Me
  loc_C00B64: MemLdRfVar from_stack_1.global_80
  loc_C00B67: NewIfNullPr clsbase
  loc_C00B6A: from_stack_1 = clsbase.RecordCount
  loc_C00B6F: ILdRf var_168
  loc_C00B72: LitI4 0
  loc_C00B77: EqI4
  loc_C00B78: BranchF loc_C00B8B
  loc_C00B7B: LitI4 0
  loc_C00B80: LitStr "No existen retenciones para el proveedor en esta orden de pago"
  loc_C00B83: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C00B88: Branch loc_C02CF5
  loc_C00B8B: LitI4 0
  loc_C00B90: FLdRfVar var_168
  loc_C00B93: FLdPr Me
  loc_C00B96: MemLdRfVar from_stack_1.global_80
  loc_C00B99: NewIfNullPr clsbase
  loc_C00B9C: from_stack_1 = clsbase.RecordCount
  loc_C00BA1: ILdRf var_168
  loc_C00BA4: FLdPr Me
  loc_C00BA7: MemLdRfVar from_stack_1.global_100
  loc_C00BAA: Redim
  loc_C00BB4: LitI2_Byte 1
  loc_C00BB6: FLdPr Me
  loc_C00BB9: MemLdRfVar from_stack_1.global_104
  loc_C00BBC: FLdPr Me
  loc_C00BBF: MemLdStr global_100
  loc_C00BC2: LitI2_Byte 1
  loc_C00BC4: FnUBound
  loc_C00BC6: CI2I4
  loc_C00BC7: ForI2 var_16C
  loc_C00BCD: FLdPr Me
  loc_C00BD0: MemLdRfVar from_stack_1.global_80
  loc_C00BD3: NewIfNullAd
  loc_C00BD6: FStAd var_170 
  loc_C00BDA: FLdRfVar var_E0
  loc_C00BDD: LitVarStr var_A4, "PeriInfo"
  loc_C00BE2: PopAdLdVar
  loc_C00BE3: FLdRfVar var_D4
  loc_C00BE6: FLdRfVar var_B8
  loc_C00BE9: FLdPr var_170
  loc_C00BEC: from_stack_1v = clsbase.RsFrmGet()
  loc_C00BF1: FLdPr var_B8
  loc_C00BF4:  = Me.Fields
  loc_C00BF9: FLdPr var_D4
  loc_C00BFC: from_stack_2 = Me.Item(from_stack_1)
  loc_C00C01: LitI2_Byte 0
  loc_C00C03: LitVar_Missing var_F4
  loc_C00C06: LitI2_Byte 0
  loc_C00C08: FLdZeroAd var_E0
  loc_C00C0B: CVarAd
  loc_C00C0F: PopAdLdVar
  loc_C00C10: FLdPr Me
  loc_C00C13: MemLdI2 global_104
  loc_C00C16: CI4UI1
  loc_C00C17: FLdPr Me
  loc_C00C1A: MemLdStr global_100
  loc_C00C1D: AryLock
  loc_C00C20: Ary1LdPr
  loc_C00C21: MemLdRfVar from_stack_1.global_0
  loc_C00C24: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00C29: AryUnlock
  loc_C00C2C: FFreeAd var_B8 = ""
  loc_C00C33: FFreeVar var_C8 = ""
  loc_C00C3A: FLdRfVar var_E0
  loc_C00C3D: LitVarStr var_A4, "ExpeImpu"
  loc_C00C42: PopAdLdVar
  loc_C00C43: FLdRfVar var_D4
  loc_C00C46: FLdRfVar var_B8
  loc_C00C49: FLdPr var_170
  loc_C00C4C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00C51: FLdPr var_B8
  loc_C00C54:  = Me.Fields
  loc_C00C59: FLdPr var_D4
  loc_C00C5C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00C61: LitI2_Byte 0
  loc_C00C63: LitVar_Missing var_F4
  loc_C00C66: LitI2_Byte 0
  loc_C00C68: FLdZeroAd var_E0
  loc_C00C6B: CVarAd
  loc_C00C6F: PopAdLdVar
  loc_C00C70: FLdPr Me
  loc_C00C73: MemLdI2 global_104
  loc_C00C76: CI4UI1
  loc_C00C77: FLdPr Me
  loc_C00C7A: MemLdStr global_100
  loc_C00C7D: AryLock
  loc_C00C80: Ary1LdPr
  loc_C00C81: MemLdRfVar from_stack_1.global_4
  loc_C00C84: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00C89: AryUnlock
  loc_C00C8C: FFreeAd var_B8 = ""
  loc_C00C93: FFreeVar var_C8 = ""
  loc_C00C9A: FLdRfVar var_E0
  loc_C00C9D: LitVarStr var_A4, "NumeLiqu"
  loc_C00CA2: PopAdLdVar
  loc_C00CA3: FLdRfVar var_D4
  loc_C00CA6: FLdRfVar var_B8
  loc_C00CA9: FLdPr var_170
  loc_C00CAC: from_stack_1v = clsbase.RsFrmGet()
  loc_C00CB1: FLdPr var_B8
  loc_C00CB4:  = Me.Fields
  loc_C00CB9: FLdPr var_D4
  loc_C00CBC: from_stack_2 = Me.Item(from_stack_1)
  loc_C00CC1: LitI2_Byte 0
  loc_C00CC3: LitVar_Missing var_F4
  loc_C00CC6: LitI2_Byte 0
  loc_C00CC8: FLdZeroAd var_E0
  loc_C00CCB: CVarAd
  loc_C00CCF: PopAdLdVar
  loc_C00CD0: FLdPr Me
  loc_C00CD3: MemLdI2 global_104
  loc_C00CD6: CI4UI1
  loc_C00CD7: FLdPr Me
  loc_C00CDA: MemLdStr global_100
  loc_C00CDD: AryLock
  loc_C00CE0: Ary1LdPr
  loc_C00CE1: MemLdRfVar from_stack_1.global_8
  loc_C00CE4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00CE9: AryUnlock
  loc_C00CEC: FFreeAd var_B8 = ""
  loc_C00CF3: FFreeVar var_C8 = ""
  loc_C00CFA: FLdRfVar var_E0
  loc_C00CFD: LitVarStr var_A4, "CertLine"
  loc_C00D02: PopAdLdVar
  loc_C00D03: FLdRfVar var_D4
  loc_C00D06: FLdRfVar var_B8
  loc_C00D09: FLdPr var_170
  loc_C00D0C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00D11: FLdPr var_B8
  loc_C00D14:  = Me.Fields
  loc_C00D19: FLdPr var_D4
  loc_C00D1C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00D21: LitI2_Byte 0
  loc_C00D23: LitVar_Missing var_F4
  loc_C00D26: LitI2_Byte 0
  loc_C00D28: FLdZeroAd var_E0
  loc_C00D2B: CVarAd
  loc_C00D2F: PopAdLdVar
  loc_C00D30: FLdPr Me
  loc_C00D33: MemLdI2 global_104
  loc_C00D36: CI4UI1
  loc_C00D37: FLdPr Me
  loc_C00D3A: MemLdStr global_100
  loc_C00D3D: AryLock
  loc_C00D40: Ary1LdPr
  loc_C00D41: MemLdRfVar from_stack_1.global_12
  loc_C00D44: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00D49: AryUnlock
  loc_C00D4C: FFreeAd var_B8 = ""
  loc_C00D53: FFreeVar var_C8 = ""
  loc_C00D5A: FLdRfVar var_E0
  loc_C00D5D: LitVarStr var_A4, "CodiRete"
  loc_C00D62: PopAdLdVar
  loc_C00D63: FLdRfVar var_D4
  loc_C00D66: FLdRfVar var_B8
  loc_C00D69: FLdPr var_170
  loc_C00D6C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00D71: FLdPr var_B8
  loc_C00D74:  = Me.Fields
  loc_C00D79: FLdPr var_D4
  loc_C00D7C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00D81: LitI2_Byte 0
  loc_C00D83: LitVar_Missing var_F4
  loc_C00D86: LitI2_Byte 0
  loc_C00D88: FLdZeroAd var_E0
  loc_C00D8B: CVarAd
  loc_C00D8F: PopAdLdVar
  loc_C00D90: FLdPr Me
  loc_C00D93: MemLdI2 global_104
  loc_C00D96: CI4UI1
  loc_C00D97: FLdPr Me
  loc_C00D9A: MemLdStr global_100
  loc_C00D9D: AryLock
  loc_C00DA0: Ary1LdPr
  loc_C00DA1: MemLdRfVar from_stack_1.global_16
  loc_C00DA4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00DA9: AryUnlock
  loc_C00DAC: FFreeAd var_B8 = ""
  loc_C00DB3: FFreeVar var_C8 = ""
  loc_C00DBA: FLdRfVar var_E0
  loc_C00DBD: LitVarStr var_A4, "DetaRete"
  loc_C00DC2: PopAdLdVar
  loc_C00DC3: FLdRfVar var_D4
  loc_C00DC6: FLdRfVar var_B8
  loc_C00DC9: FLdPr var_170
  loc_C00DCC: from_stack_1v = clsbase.RsFrmGet()
  loc_C00DD1: FLdPr var_B8
  loc_C00DD4:  = Me.Fields
  loc_C00DD9: FLdPr var_D4
  loc_C00DDC: from_stack_2 = Me.Item(from_stack_1)
  loc_C00DE1: LitI2_Byte 0
  loc_C00DE3: LitVar_Missing var_F4
  loc_C00DE6: LitI2_Byte 0
  loc_C00DE8: FLdZeroAd var_E0
  loc_C00DEB: CVarAd
  loc_C00DEF: PopAdLdVar
  loc_C00DF0: FLdPr Me
  loc_C00DF3: MemLdI2 global_104
  loc_C00DF6: CI4UI1
  loc_C00DF7: FLdPr Me
  loc_C00DFA: MemLdStr global_100
  loc_C00DFD: AryLock
  loc_C00E00: Ary1LdPr
  loc_C00E01: MemLdRfVar from_stack_1.global_20
  loc_C00E04: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00E09: AryUnlock
  loc_C00E0C: FFreeAd var_B8 = ""
  loc_C00E13: FFreeVar var_C8 = ""
  loc_C00E1A: FLdRfVar var_E0
  loc_C00E1D: LitVarStr var_A4, "DetaProv"
  loc_C00E22: PopAdLdVar
  loc_C00E23: FLdRfVar var_D4
  loc_C00E26: FLdRfVar var_B8
  loc_C00E29: FLdPr var_170
  loc_C00E2C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00E31: FLdPr var_B8
  loc_C00E34:  = Me.Fields
  loc_C00E39: FLdPr var_D4
  loc_C00E3C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00E41: LitI2_Byte 0
  loc_C00E43: LitVar_Missing var_F4
  loc_C00E46: LitI2_Byte 0
  loc_C00E48: FLdZeroAd var_E0
  loc_C00E4B: CVarAd
  loc_C00E4F: PopAdLdVar
  loc_C00E50: FLdPr Me
  loc_C00E53: MemLdI2 global_104
  loc_C00E56: CI4UI1
  loc_C00E57: FLdPr Me
  loc_C00E5A: MemLdStr global_100
  loc_C00E5D: AryLock
  loc_C00E60: Ary1LdPr
  loc_C00E61: MemLdRfVar from_stack_1.global_24
  loc_C00E64: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00E69: AryUnlock
  loc_C00E6C: FFreeAd var_B8 = ""
  loc_C00E73: FFreeVar var_C8 = ""
  loc_C00E7A: FLdRfVar var_E0
  loc_C00E7D: LitVarStr var_A4, "NuinRexp"
  loc_C00E82: PopAdLdVar
  loc_C00E83: FLdRfVar var_D4
  loc_C00E86: FLdRfVar var_B8
  loc_C00E89: FLdPr var_170
  loc_C00E8C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00E91: FLdPr var_B8
  loc_C00E94:  = Me.Fields
  loc_C00E99: FLdPr var_D4
  loc_C00E9C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00EA1: LitI2_Byte 0
  loc_C00EA3: LitVar_Missing var_F4
  loc_C00EA6: LitI2_Byte 0
  loc_C00EA8: FLdZeroAd var_E0
  loc_C00EAB: CVarAd
  loc_C00EAF: PopAdLdVar
  loc_C00EB0: FLdPr Me
  loc_C00EB3: MemLdI2 global_104
  loc_C00EB6: CI4UI1
  loc_C00EB7: FLdPr Me
  loc_C00EBA: MemLdStr global_100
  loc_C00EBD: AryLock
  loc_C00EC0: Ary1LdPr
  loc_C00EC1: MemLdRfVar from_stack_1.global_36
  loc_C00EC4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00EC9: AryUnlock
  loc_C00ECC: FFreeAd var_B8 = ""
  loc_C00ED3: FFreeVar var_C8 = ""
  loc_C00EDA: FLdRfVar var_E0
  loc_C00EDD: LitVarStr var_A4, "DecrPers"
  loc_C00EE2: PopAdLdVar
  loc_C00EE3: FLdRfVar var_D4
  loc_C00EE6: FLdRfVar var_B8
  loc_C00EE9: FLdPr var_170
  loc_C00EEC: from_stack_1v = clsbase.RsFrmGet()
  loc_C00EF1: FLdPr var_B8
  loc_C00EF4:  = Me.Fields
  loc_C00EF9: FLdPr var_D4
  loc_C00EFC: from_stack_2 = Me.Item(from_stack_1)
  loc_C00F01: LitI2_Byte 0
  loc_C00F03: LitVar_Missing var_F4
  loc_C00F06: LitI2_Byte 0
  loc_C00F08: FLdZeroAd var_E0
  loc_C00F0B: CVarAd
  loc_C00F0F: PopAdLdVar
  loc_C00F10: FLdPr Me
  loc_C00F13: MemLdI2 global_104
  loc_C00F16: CI4UI1
  loc_C00F17: FLdPr Me
  loc_C00F1A: MemLdStr global_100
  loc_C00F1D: AryLock
  loc_C00F20: Ary1LdPr
  loc_C00F21: MemLdRfVar from_stack_1.global_28
  loc_C00F24: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00F29: AryUnlock
  loc_C00F2C: FFreeAd var_B8 = ""
  loc_C00F33: FFreeVar var_C8 = ""
  loc_C00F3A: FLdRfVar var_E0
  loc_C00F3D: LitVarStr var_A4, "CucuPers"
  loc_C00F42: PopAdLdVar
  loc_C00F43: FLdRfVar var_D4
  loc_C00F46: FLdRfVar var_B8
  loc_C00F49: FLdPr var_170
  loc_C00F4C: from_stack_1v = clsbase.RsFrmGet()
  loc_C00F51: FLdPr var_B8
  loc_C00F54:  = Me.Fields
  loc_C00F59: FLdPr var_D4
  loc_C00F5C: from_stack_2 = Me.Item(from_stack_1)
  loc_C00F61: LitI4 1
  loc_C00F66: LitI4 1
  loc_C00F6B: LitVarStr var_B4, "##-########-#"
  loc_C00F70: FStVarCopyObj var_F4
  loc_C00F73: FLdRfVar var_F4
  loc_C00F76: FLdZeroAd var_E0
  loc_C00F79: CVarAd
  loc_C00F7D: ImpAdCallI2 Format$(, )
  loc_C00F82: FStStr var_CC
  loc_C00F85: LitI2_Byte 0
  loc_C00F87: LitVar_Missing var_114
  loc_C00F8A: LitI2_Byte 0
  loc_C00F8C: FLdZeroAd var_CC
  loc_C00F8F: CVarStr var_104
  loc_C00F92: PopAdLdVar
  loc_C00F93: FLdPr Me
  loc_C00F96: MemLdI2 global_104
  loc_C00F99: CI4UI1
  loc_C00F9A: FLdPr Me
  loc_C00F9D: MemLdStr global_100
  loc_C00FA0: AryLock
  loc_C00FA3: Ary1LdPr
  loc_C00FA4: MemLdRfVar from_stack_1.global_32
  loc_C00FA7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C00FAC: AryUnlock
  loc_C00FAF: FFree1Str var_CC
  loc_C00FB2: FFreeAd var_B8 = ""
  loc_C00FB9: FFreeVar var_C8 = "": var_F4 = "": var_104 = ""
  loc_C00FC4: FLdRfVar var_E0
  loc_C00FC7: LitVarStr var_A4, "AcbrLine"
  loc_C00FCC: PopAdLdVar
  loc_C00FCD: FLdRfVar var_D4
  loc_C00FD0: FLdRfVar var_B8
  loc_C00FD3: FLdPr var_170
  loc_C00FD6: from_stack_1v = clsbase.RsFrmGet()
  loc_C00FDB: FLdPr var_B8
  loc_C00FDE:  = Me.Fields
  loc_C00FE3: FLdPr var_D4
  loc_C00FE6: from_stack_2 = Me.Item(from_stack_1)
  loc_C00FEB: LitI2_Byte 0
  loc_C00FED: LitVar_Missing var_F4
  loc_C00FF0: LitI2_Byte &HFF
  loc_C00FF2: FLdZeroAd var_E0
  loc_C00FF5: CVarAd
  loc_C00FF9: PopAdLdVar
  loc_C00FFA: FLdPr Me
  loc_C00FFD: MemLdI2 global_104
  loc_C01000: CI4UI1
  loc_C01001: FLdPr Me
  loc_C01004: MemLdStr global_100
  loc_C01007: AryLock
  loc_C0100A: Ary1LdPr
  loc_C0100B: MemLdRfVar from_stack_1.global_40
  loc_C0100E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01013: AryUnlock
  loc_C01016: FFreeAd var_B8 = ""
  loc_C0101D: FFreeVar var_C8 = ""
  loc_C01024: FLdRfVar var_E0
  loc_C01027: LitVarStr var_A4, "ReacLine"
  loc_C0102C: PopAdLdVar
  loc_C0102D: FLdRfVar var_D4
  loc_C01030: FLdRfVar var_B8
  loc_C01033: FLdPr var_170
  loc_C01036: from_stack_1v = clsbase.RsFrmGet()
  loc_C0103B: FLdPr var_B8
  loc_C0103E:  = Me.Fields
  loc_C01043: FLdPr var_D4
  loc_C01046: from_stack_2 = Me.Item(from_stack_1)
  loc_C0104B: LitI2_Byte 0
  loc_C0104D: LitVar_Missing var_F4
  loc_C01050: LitI2_Byte &HFF
  loc_C01052: FLdZeroAd var_E0
  loc_C01055: CVarAd
  loc_C01059: PopAdLdVar
  loc_C0105A: FLdPr Me
  loc_C0105D: MemLdI2 global_104
  loc_C01060: CI4UI1
  loc_C01061: FLdPr Me
  loc_C01064: MemLdStr global_100
  loc_C01067: AryLock
  loc_C0106A: Ary1LdPr
  loc_C0106B: MemLdRfVar from_stack_1.global_44
  loc_C0106E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01073: AryUnlock
  loc_C01076: FFreeAd var_B8 = ""
  loc_C0107D: FFreeVar var_C8 = ""
  loc_C01084: FLdRfVar var_E0
  loc_C01087: LitVarStr var_A4, "AlicEsca"
  loc_C0108C: PopAdLdVar
  loc_C0108D: FLdRfVar var_D4
  loc_C01090: FLdRfVar var_B8
  loc_C01093: FLdPr var_170
  loc_C01096: from_stack_1v = clsbase.RsFrmGet()
  loc_C0109B: FLdPr var_B8
  loc_C0109E:  = Me.Fields
  loc_C010A3: FLdPr var_D4
  loc_C010A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C010AB: LitI2_Byte 0
  loc_C010AD: LitVar_Missing var_F4
  loc_C010B0: LitI2_Byte 0
  loc_C010B2: FLdZeroAd var_E0
  loc_C010B5: CVarAd
  loc_C010B9: PopAdLdVar
  loc_C010BA: FLdPr Me
  loc_C010BD: MemLdI2 global_104
  loc_C010C0: CI4UI1
  loc_C010C1: FLdPr Me
  loc_C010C4: MemLdStr global_100
  loc_C010C7: AryLock
  loc_C010CA: Ary1LdPr
  loc_C010CB: MemLdRfVar from_stack_1.global_56
  loc_C010CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C010D3: AryUnlock
  loc_C010D6: FFreeAd var_B8 = ""
  loc_C010DD: FFreeVar var_C8 = ""
  loc_C010E4: FLdRfVar var_E0
  loc_C010E7: LitVarStr var_A4, "Penalidad"
  loc_C010EC: PopAdLdVar
  loc_C010ED: FLdRfVar var_D4
  loc_C010F0: FLdRfVar var_B8
  loc_C010F3: FLdPr var_170
  loc_C010F6: from_stack_1v = clsbase.RsFrmGet()
  loc_C010FB: FLdPr var_B8
  loc_C010FE:  = Me.Fields
  loc_C01103: FLdPr var_D4
  loc_C01106: from_stack_2 = Me.Item(from_stack_1)
  loc_C0110B: LitI2_Byte 0
  loc_C0110D: LitVar_Missing var_F4
  loc_C01110: LitI2_Byte 0
  loc_C01112: FLdZeroAd var_E0
  loc_C01115: CVarAd
  loc_C01119: PopAdLdVar
  loc_C0111A: FLdPr Me
  loc_C0111D: MemLdI2 global_104
  loc_C01120: CI4UI1
  loc_C01121: FLdPr Me
  loc_C01124: MemLdStr global_100
  loc_C01127: AryLock
  loc_C0112A: Ary1LdPr
  loc_C0112B: MemLdRfVar from_stack_1.global_60
  loc_C0112E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01133: AryUnlock
  loc_C01136: FFreeAd var_B8 = ""
  loc_C0113D: FFreeVar var_C8 = ""
  loc_C01144: FLdRfVar var_E0
  loc_C01147: LitVarStr var_A4, "PoexLine"
  loc_C0114C: PopAdLdVar
  loc_C0114D: FLdRfVar var_D4
  loc_C01150: FLdRfVar var_B8
  loc_C01153: FLdPr var_170
  loc_C01156: from_stack_1v = clsbase.RsFrmGet()
  loc_C0115B: FLdPr var_B8
  loc_C0115E:  = Me.Fields
  loc_C01163: FLdPr var_D4
  loc_C01166: from_stack_2 = Me.Item(from_stack_1)
  loc_C0116B: LitI2_Byte 0
  loc_C0116D: LitVar_Missing var_F4
  loc_C01170: LitI2_Byte 0
  loc_C01172: FLdZeroAd var_E0
  loc_C01175: CVarAd
  loc_C01179: PopAdLdVar
  loc_C0117A: FLdPr Me
  loc_C0117D: MemLdI2 global_104
  loc_C01180: CI4UI1
  loc_C01181: FLdPr Me
  loc_C01184: MemLdStr global_100
  loc_C01187: AryLock
  loc_C0118A: Ary1LdPr
  loc_C0118B: MemLdRfVar from_stack_1.global_64
  loc_C0118E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01193: AryUnlock
  loc_C01196: FFreeAd var_B8 = ""
  loc_C0119D: FFreeVar var_C8 = ""
  loc_C011A4: FLdRfVar var_E0
  loc_C011A7: LitVarStr var_A4, "BaseEsca"
  loc_C011AC: PopAdLdVar
  loc_C011AD: FLdRfVar var_D4
  loc_C011B0: FLdRfVar var_B8
  loc_C011B3: FLdPr var_170
  loc_C011B6: from_stack_1v = clsbase.RsFrmGet()
  loc_C011BB: FLdPr var_B8
  loc_C011BE:  = Me.Fields
  loc_C011C3: FLdPr var_D4
  loc_C011C6: from_stack_2 = Me.Item(from_stack_1)
  loc_C011CB: LitI2_Byte 0
  loc_C011CD: LitVar_Missing var_F4
  loc_C011D0: LitI2_Byte 0
  loc_C011D2: FLdZeroAd var_E0
  loc_C011D5: CVarAd
  loc_C011D9: PopAdLdVar
  loc_C011DA: FLdPr Me
  loc_C011DD: MemLdI2 global_104
  loc_C011E0: CI4UI1
  loc_C011E1: FLdPr Me
  loc_C011E4: MemLdStr global_100
  loc_C011E7: AryLock
  loc_C011EA: Ary1LdPr
  loc_C011EB: MemLdRfVar from_stack_1.bGenerado
  loc_C011EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C011F3: AryUnlock
  loc_C011F6: FFreeAd var_B8 = ""
  loc_C011FD: FFreeVar var_C8 = ""
  loc_C01204: FLdRfVar var_E0
  loc_C01207: LitVarStr var_A4, "FechLiqu"
  loc_C0120C: PopAdLdVar
  loc_C0120D: FLdRfVar var_D4
  loc_C01210: FLdRfVar var_B8
  loc_C01213: FLdPr var_170
  loc_C01216: from_stack_1v = clsbase.RsFrmGet()
  loc_C0121B: FLdPr var_B8
  loc_C0121E:  = Me.Fields
  loc_C01223: FLdPr var_D4
  loc_C01226: from_stack_2 = Me.Item(from_stack_1)
  loc_C0122B: LitI2_Byte 0
  loc_C0122D: LitVar_Missing var_F4
  loc_C01230: LitI2_Byte 0
  loc_C01232: FLdZeroAd var_E0
  loc_C01235: CVarAd
  loc_C01239: PopAdLdVar
  loc_C0123A: FLdPr Me
  loc_C0123D: MemLdI2 global_104
  loc_C01240: CI4UI1
  loc_C01241: FLdPr Me
  loc_C01244: MemLdStr global_100
  loc_C01247: AryLock
  loc_C0124A: Ary1LdPr
  loc_C0124B: MemLdRfVar from_stack_1.global_88
  loc_C0124E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01253: AryUnlock
  loc_C01256: FFreeAd var_B8 = ""
  loc_C0125D: FFreeVar var_C8 = ""
  loc_C01264: FLdRfVar var_E0
  loc_C01267: LitVarStr var_A4, "DetaDere"
  loc_C0126C: PopAdLdVar
  loc_C0126D: FLdRfVar var_D4
  loc_C01270: FLdRfVar var_B8
  loc_C01273: FLdPr var_170
  loc_C01276: from_stack_1v = clsbase.RsFrmGet()
  loc_C0127B: FLdPr var_B8
  loc_C0127E:  = Me.Fields
  loc_C01283: FLdPr var_D4
  loc_C01286: from_stack_2 = Me.Item(from_stack_1)
  loc_C0128B: LitI2_Byte 0
  loc_C0128D: LitVar_Missing var_F4
  loc_C01290: LitI2_Byte 0
  loc_C01292: FLdZeroAd var_E0
  loc_C01295: CVarAd
  loc_C01299: PopAdLdVar
  loc_C0129A: FLdPr Me
  loc_C0129D: MemLdI2 global_104
  loc_C012A0: CI4UI1
  loc_C012A1: FLdPr Me
  loc_C012A4: MemLdStr global_100
  loc_C012A7: AryLock
  loc_C012AA: Ary1LdPr
  loc_C012AB: MemLdRfVar from_stack_1.global_92
  loc_C012AE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C012B3: AryUnlock
  loc_C012B6: FFreeAd var_B8 = ""
  loc_C012BD: FFreeVar var_C8 = ""
  loc_C012C4: FLdRfVar var_E0
  loc_C012C7: LitVarStr var_A4, "ImpoLine"
  loc_C012CC: PopAdLdVar
  loc_C012CD: FLdRfVar var_D4
  loc_C012D0: FLdRfVar var_B8
  loc_C012D3: FLdPr var_170
  loc_C012D6: from_stack_1v = clsbase.RsFrmGet()
  loc_C012DB: FLdPr var_B8
  loc_C012DE:  = Me.Fields
  loc_C012E3: FLdPr var_D4
  loc_C012E6: from_stack_2 = Me.Item(from_stack_1)
  loc_C012EB: LitI2_Byte 0
  loc_C012ED: LitVar_Missing var_F4
  loc_C012F0: LitI2_Byte &HFF
  loc_C012F2: FLdZeroAd var_E0
  loc_C012F5: CVarAd
  loc_C012F9: PopAdLdVar
  loc_C012FA: FLdPr Me
  loc_C012FD: MemLdI2 global_104
  loc_C01300: CI4UI1
  loc_C01301: FLdPr Me
  loc_C01304: MemLdStr global_100
  loc_C01307: AryLock
  loc_C0130A: Ary1LdPr
  loc_C0130B: MemLdRfVar from_stack_1.htmFile
  loc_C0130E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01313: AryUnlock
  loc_C01316: FFreeAd var_B8 = ""
  loc_C0131D: FFreeVar var_C8 = ""
  loc_C01324: FLdRfVar var_E0
  loc_C01327: LitVarStr var_A4, "Neto"
  loc_C0132C: PopAdLdVar
  loc_C0132D: FLdRfVar var_D4
  loc_C01330: FLdRfVar var_B8
  loc_C01333: FLdPr var_170
  loc_C01336: from_stack_1v = clsbase.RsFrmGet()
  loc_C0133B: FLdPr var_B8
  loc_C0133E:  = Me.Fields
  loc_C01343: FLdPr var_D4
  loc_C01346: from_stack_2 = Me.Item(from_stack_1)
  loc_C0134B: LitI2_Byte 0
  loc_C0134D: LitVar_Missing var_F4
  loc_C01350: LitI2_Byte &HFF
  loc_C01352: FLdZeroAd var_E0
  loc_C01355: CVarAd
  loc_C01359: PopAdLdVar
  loc_C0135A: FLdPr Me
  loc_C0135D: MemLdI2 global_104
  loc_C01360: CI4UI1
  loc_C01361: FLdPr Me
  loc_C01364: MemLdStr global_100
  loc_C01367: AryLock
  loc_C0136A: Ary1LdPr
  loc_C0136B: MemLdRfVar from_stack_1.global_48
  loc_C0136E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01373: AryUnlock
  loc_C01376: FFreeAd var_B8 = ""
  loc_C0137D: FFreeVar var_C8 = ""
  loc_C01384: FLdRfVar var_E0
  loc_C01387: LitVarStr var_A4, "DetaLiqu"
  loc_C0138C: PopAdLdVar
  loc_C0138D: FLdRfVar var_D4
  loc_C01390: FLdRfVar var_B8
  loc_C01393: FLdPr var_170
  loc_C01396: from_stack_1v = clsbase.RsFrmGet()
  loc_C0139B: FLdPr var_B8
  loc_C0139E:  = Me.Fields
  loc_C013A3: FLdPr var_D4
  loc_C013A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C013AB: LitI2_Byte 0
  loc_C013AD: LitVar_Missing var_F4
  loc_C013B0: LitI2_Byte 0
  loc_C013B2: FLdZeroAd var_E0
  loc_C013B5: CVarAd
  loc_C013B9: PopAdLdVar
  loc_C013BA: FLdPr Me
  loc_C013BD: MemLdI2 global_104
  loc_C013C0: CI4UI1
  loc_C013C1: FLdPr Me
  loc_C013C4: MemLdStr global_100
  loc_C013C7: AryLock
  loc_C013CA: Ary1LdPr
  loc_C013CB: MemLdRfVar from_stack_1.global_72
  loc_C013CE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C013D3: AryUnlock
  loc_C013D6: FFreeAd var_B8 = ""
  loc_C013DD: FFreeVar var_C8 = ""
  loc_C013E4: FLdRfVar var_E0
  loc_C013E7: LitVarStr var_A4, "NumeOrpa"
  loc_C013EC: PopAdLdVar
  loc_C013ED: FLdRfVar var_D4
  loc_C013F0: FLdRfVar var_B8
  loc_C013F3: FLdPr var_170
  loc_C013F6: from_stack_1v = clsbase.RsFrmGet()
  loc_C013FB: FLdPr var_B8
  loc_C013FE:  = Me.Fields
  loc_C01403: FLdPr var_D4
  loc_C01406: from_stack_2 = Me.Item(from_stack_1)
  loc_C0140B: LitI2_Byte 0
  loc_C0140D: LitVar_Missing var_F4
  loc_C01410: LitI2_Byte 0
  loc_C01412: FLdZeroAd var_E0
  loc_C01415: CVarAd
  loc_C01419: PopAdLdVar
  loc_C0141A: FLdPr Me
  loc_C0141D: MemLdI2 global_104
  loc_C01420: CI4UI1
  loc_C01421: FLdPr Me
  loc_C01424: MemLdStr global_100
  loc_C01427: AryLock
  loc_C0142A: Ary1LdPr
  loc_C0142B: MemLdRfVar from_stack_1.global_76
  loc_C0142E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01433: AryUnlock
  loc_C01436: FFreeAd var_B8 = ""
  loc_C0143D: FFreeVar var_C8 = ""
  loc_C01444: FLdRfVar var_E0
  loc_C01447: LitVarStr var_A4, "DetaOrpa"
  loc_C0144C: PopAdLdVar
  loc_C0144D: FLdRfVar var_D4
  loc_C01450: FLdRfVar var_B8
  loc_C01453: FLdPr var_170
  loc_C01456: from_stack_1v = clsbase.RsFrmGet()
  loc_C0145B: FLdPr var_B8
  loc_C0145E:  = Me.Fields
  loc_C01463: FLdPr var_D4
  loc_C01466: from_stack_2 = Me.Item(from_stack_1)
  loc_C0146B: LitI2_Byte 0
  loc_C0146D: LitVar_Missing var_F4
  loc_C01470: LitI2_Byte 0
  loc_C01472: FLdZeroAd var_E0
  loc_C01475: CVarAd
  loc_C01479: PopAdLdVar
  loc_C0147A: FLdPr Me
  loc_C0147D: MemLdI2 global_104
  loc_C01480: CI4UI1
  loc_C01481: FLdPr Me
  loc_C01484: MemLdStr global_100
  loc_C01487: AryLock
  loc_C0148A: Ary1LdPr
  loc_C0148B: MemLdRfVar from_stack_1.global_80
  loc_C0148E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01493: AryUnlock
  loc_C01496: FFreeAd var_B8 = ""
  loc_C0149D: FFreeVar var_C8 = ""
  loc_C014A4: FLdRfVar var_E0
  loc_C014A7: LitVarStr var_A4, "FechCaja"
  loc_C014AC: PopAdLdVar
  loc_C014AD: FLdRfVar var_D4
  loc_C014B0: FLdRfVar var_B8
  loc_C014B3: FLdPr var_170
  loc_C014B6: from_stack_1v = clsbase.RsFrmGet()
  loc_C014BB: FLdPr var_B8
  loc_C014BE:  = Me.Fields
  loc_C014C3: FLdPr var_D4
  loc_C014C6: from_stack_2 = Me.Item(from_stack_1)
  loc_C014CB: LitI2_Byte 0
  loc_C014CD: LitVar_Missing var_F4
  loc_C014D0: LitI2_Byte 0
  loc_C014D2: FLdZeroAd var_E0
  loc_C014D5: CVarAd
  loc_C014D9: PopAdLdVar
  loc_C014DA: FLdPr Me
  loc_C014DD: MemLdI2 global_104
  loc_C014E0: CI4UI1
  loc_C014E1: FLdPr Me
  loc_C014E4: MemLdStr global_100
  loc_C014E7: AryLock
  loc_C014EA: Ary1LdPr
  loc_C014EB: MemLdRfVar from_stack_1.global_84
  loc_C014EE: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C014F3: AryUnlock
  loc_C014F6: FFreeAd var_B8 = ""
  loc_C014FD: FFreeVar var_C8 = ""
  loc_C01504: FLdRfVar var_C8
  loc_C01507: FLdRfVar var_E0
  loc_C0150A: LitVarStr var_A4, "TipoLiqu"
  loc_C0150F: PopAdLdVar
  loc_C01510: FLdRfVar var_D4
  loc_C01513: FLdRfVar var_B8
  loc_C01516: FLdPr Me
  loc_C01519: MemLdRfVar from_stack_1.global_80
  loc_C0151C: NewIfNullPr clsbase
  loc_C0151F: from_stack_1v = clsbase.RsFrmGet()
  loc_C01524: FLdPr var_B8
  loc_C01527:  = Me.Fields
  loc_C0152C: FLdPr var_D4
  loc_C0152F: from_stack_2 = Me.Item(from_stack_1)
  loc_C01534: FLdPr var_E0
  loc_C01537:  = Me.Value
  loc_C0153C: FLdRfVar var_C8
  loc_C0153F: LitVarI2 var_B4, 2
  loc_C01544: HardType
  loc_C01545: EqVarBool
  loc_C01547: FFreeAd var_B8 = "": var_D4 = ""
  loc_C01550: FFree1Var var_C8 = ""
  loc_C01553: BranchF loc_C01644
  loc_C01556: LitStr "SELECT CucuPers, NumeFact, Sum(ImpoImpu) ImpoImpu"
  loc_C01559: LitStr " FROM liquidadeta ld"
  loc_C0155C: ConcatStr
  loc_C0155D: FStStrNoPop var_CC
  loc_C01560: LitStr " WHERE ld.PeriInfo = "
  loc_C01563: ConcatStr
  loc_C01564: FStStrNoPop var_D0
  loc_C01567: FLdPr Me
  loc_C0156A: MemLdI2 global_104
  loc_C0156D: CI4UI1
  loc_C0156E: FLdPr Me
  loc_C01571: MemLdStr global_100
  loc_C01574: Ary1LdPr
  loc_C01575: MemLdStr global_0
  loc_C01578: ConcatStr
  loc_C01579: FStStrNoPop var_D8
  loc_C0157C: LitStr " AND ExpeImpu = '"
  loc_C0157F: ConcatStr
  loc_C01580: FStStrNoPop var_DC
  loc_C01583: FLdPr Me
  loc_C01586: MemLdI2 global_104
  loc_C01589: CI4UI1
  loc_C0158A: FLdPr Me
  loc_C0158D: MemLdStr global_100
  loc_C01590: Ary1LdPr
  loc_C01591: MemLdStr global_4
  loc_C01594: ConcatStr
  loc_C01595: FStStrNoPop var_128
  loc_C01598: LitStr "' AND NumeLiqu = "
  loc_C0159B: ConcatStr
  loc_C0159C: FStStrNoPop var_12C
  loc_C0159F: FLdPr Me
  loc_C015A2: MemLdI2 global_104
  loc_C015A5: CI4UI1
  loc_C015A6: FLdPr Me
  loc_C015A9: MemLdStr global_100
  loc_C015AC: Ary1LdPr
  loc_C015AD: MemLdStr global_8
  loc_C015B0: ConcatStr
  loc_C015B1: FStStrNoPop var_130
  loc_C015B4: LitStr " AND CucuPers = "
  loc_C015B7: ConcatStr
  loc_C015B8: CVarStr var_F4
  loc_C015BB: FLdRfVar var_C8
  loc_C015BE: FLdRfVar var_E0
  loc_C015C1: LitVarStr var_A4, "CucuPers"
  loc_C015C6: PopAdLdVar
  loc_C015C7: FLdRfVar var_D4
  loc_C015CA: FLdRfVar var_B8
  loc_C015CD: FLdPr var_170
  loc_C015D0: from_stack_1v = clsbase.RsFrmGet()
  loc_C015D5: FLdPr var_B8
  loc_C015D8:  = Me.Fields
  loc_C015DD: FLdPr var_D4
  loc_C015E0: from_stack_2 = Me.Item(from_stack_1)
  loc_C015E5: FLdPr var_E0
  loc_C015E8:  = Me.Value
  loc_C015ED: FLdRfVar var_C8
  loc_C015F0: ConcatVar var_104
  loc_C015F4: LitVarStr var_B4, " GROUP BY NumeFact"
  loc_C015F9: ConcatVar var_114
  loc_C015FD: LitVarStr var_184, " ORDER BY NumeFact"
  loc_C01602: ConcatVar var_124
  loc_C01606: CStrVarVal var_134
  loc_C0160A: FLdPr Me
  loc_C0160D: MemLdRfVar from_stack_1.global_84
  loc_C01610: NewIfNullPr clsbase
  loc_C01613: Call clsbase.RedefineRS(from_stack_1v)
  loc_C01618: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = "": var_130 = ""
  loc_C0162B: FFreeAd var_B8 = "": var_D4 = ""
  loc_C01634: FFreeVar var_F4 = "": var_C8 = "": var_104 = "": var_114 = ""
  loc_C01641: Branch loc_C0172F
  loc_C01644: LitStr "SELECT CucuPers, NumeFact, Sum(LiquImpu) ImpoImpu"
  loc_C01647: LitStr " FROM imputacion i"
  loc_C0164A: ConcatStr
  loc_C0164B: FStStrNoPop var_CC
  loc_C0164E: LitStr " WHERE i.PeriInfo = "
  loc_C01651: ConcatStr
  loc_C01652: FStStrNoPop var_D0
  loc_C01655: FLdPr Me
  loc_C01658: MemLdI2 global_104
  loc_C0165B: CI4UI1
  loc_C0165C: FLdPr Me
  loc_C0165F: MemLdStr global_100
  loc_C01662: Ary1LdPr
  loc_C01663: MemLdStr global_0
  loc_C01666: ConcatStr
  loc_C01667: FStStrNoPop var_D8
  loc_C0166A: LitStr " AND LiquImpu != 0 AND ExpeImpu = '"
  loc_C0166D: ConcatStr
  loc_C0166E: FStStrNoPop var_DC
  loc_C01671: FLdPr Me
  loc_C01674: MemLdI2 global_104
  loc_C01677: CI4UI1
  loc_C01678: FLdPr Me
  loc_C0167B: MemLdStr global_100
  loc_C0167E: Ary1LdPr
  loc_C0167F: MemLdStr global_4
  loc_C01682: ConcatStr
  loc_C01683: FStStrNoPop var_128
  loc_C01686: LitStr "' AND NumeLiqu = "
  loc_C01689: ConcatStr
  loc_C0168A: FStStrNoPop var_12C
  loc_C0168D: FLdPr Me
  loc_C01690: MemLdI2 global_104
  loc_C01693: CI4UI1
  loc_C01694: FLdPr Me
  loc_C01697: MemLdStr global_100
  loc_C0169A: Ary1LdPr
  loc_C0169B: MemLdStr global_8
  loc_C0169E: ConcatStr
  loc_C0169F: FStStrNoPop var_130
  loc_C016A2: LitStr " AND CucuPers = "
  loc_C016A5: ConcatStr
  loc_C016A6: CVarStr var_F4
  loc_C016A9: FLdRfVar var_C8
  loc_C016AC: FLdRfVar var_E0
  loc_C016AF: LitVarStr var_A4, "CucuPers"
  loc_C016B4: PopAdLdVar
  loc_C016B5: FLdRfVar var_D4
  loc_C016B8: FLdRfVar var_B8
  loc_C016BB: FLdPr var_170
  loc_C016BE: from_stack_1v = clsbase.RsFrmGet()
  loc_C016C3: FLdPr var_B8
  loc_C016C6:  = Me.Fields
  loc_C016CB: FLdPr var_D4
  loc_C016CE: from_stack_2 = Me.Item(from_stack_1)
  loc_C016D3: FLdPr var_E0
  loc_C016D6:  = Me.Value
  loc_C016DB: FLdRfVar var_C8
  loc_C016DE: ConcatVar var_104
  loc_C016E2: LitVarStr var_B4, " GROUP BY NumeFact"
  loc_C016E7: ConcatVar var_114
  loc_C016EB: LitVarStr var_184, " ORDER BY NumeFact"
  loc_C016F0: ConcatVar var_124
  loc_C016F4: CStrVarVal var_134
  loc_C016F8: FLdPr Me
  loc_C016FB: MemLdRfVar from_stack_1.global_84
  loc_C016FE: NewIfNullPr clsbase
  loc_C01701: Call clsbase.RedefineRS(from_stack_1v)
  loc_C01706: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = "": var_130 = ""
  loc_C01719: FFreeAd var_B8 = "": var_D4 = ""
  loc_C01722: FFreeVar var_F4 = "": var_C8 = "": var_104 = "": var_114 = ""
  loc_C0172F: FLdRfVar var_168
  loc_C01732: FLdPr Me
  loc_C01735: MemLdRfVar from_stack_1.global_84
  loc_C01738: NewIfNullPr clsbase
  loc_C0173B: from_stack_1 = clsbase.RecordCount
  loc_C01740: ILdRf var_168
  loc_C01743: LitI4 0
  loc_C01748: GtI4
  loc_C01749: BranchF loc_C019C7
  loc_C0174C: FLdRfVar var_168
  loc_C0174F: FLdPr Me
  loc_C01752: MemLdRfVar from_stack_1.global_84
  loc_C01755: NewIfNullPr clsbase
  loc_C01758: from_stack_1 = clsbase.RecordCount
  loc_C0175D: LitI4 0
  loc_C01762: ILdRf var_168
  loc_C01765: FLdPr Me
  loc_C01768: MemLdI2 global_104
  loc_C0176B: CI4UI1
  loc_C0176C: FLdPr Me
  loc_C0176F: MemLdStr global_100
  loc_C01772: Ary1LdPr
  loc_C01773: MemLdRfVar from_stack_1.global_104
  loc_C01776: Redim
  loc_C01780: FLdPr Me
  loc_C01783: MemLdRfVar from_stack_1.global_84
  loc_C01786: NewIfNullPr clsbase
  loc_C01789: Call clsbase.MoveFirst()
  loc_C0178E: LitI2_Byte 1
  loc_C01790: FLdPr Me
  loc_C01793: MemLdRfVar from_stack_1.global_108
  loc_C01796: FLdPr Me
  loc_C01799: MemLdI2 global_104
  loc_C0179C: CI4UI1
  loc_C0179D: FLdPr Me
  loc_C017A0: MemLdStr global_100
  loc_C017A3: Ary1LdPr
  loc_C017A4: MemLdStr global_104
  loc_C017A7: LitI2_Byte 1
  loc_C017A9: FnUBound
  loc_C017AB: CI2I4
  loc_C017AC: ForI2 var_188
  loc_C017B2: FLdRfVar var_C8
  loc_C017B5: FLdRfVar var_E0
  loc_C017B8: LitVarStr var_A4, "NumeFact"
  loc_C017BD: PopAdLdVar
  loc_C017BE: FLdRfVar var_D4
  loc_C017C1: FLdRfVar var_B8
  loc_C017C4: FLdPr Me
  loc_C017C7: MemLdRfVar from_stack_1.global_84
  loc_C017CA: NewIfNullPr clsbase
  loc_C017CD: from_stack_1v = clsbase.RsFrmGet()
  loc_C017D2: FLdPr var_B8
  loc_C017D5:  = Me.Fields
  loc_C017DA: FLdPr var_D4
  loc_C017DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C017E2: FLdPr var_E0
  loc_C017E5:  = Me.Value
  loc_C017EA: LitI4 3
  loc_C017EF: FLdRfVar var_C8
  loc_C017F2: CStrVarTmp
  loc_C017F3: FStStrNoPop var_CC
  loc_C017F6: ImpAdCallI2 Left$(, )
  loc_C017FB: FStStr var_13C
  loc_C017FE: FLdRfVar var_F4
  loc_C01801: FLdRfVar var_190
  loc_C01804: LitVarStr var_B4, "NumeFact"
  loc_C01809: PopAdLdVar
  loc_C0180A: FLdRfVar var_18C
  loc_C0180D: FLdRfVar var_E4
  loc_C01810: FLdPr Me
  loc_C01813: MemLdRfVar from_stack_1.global_84
  loc_C01816: NewIfNullPr clsbase
  loc_C01819: from_stack_1v = clsbase.RsFrmGet()
  loc_C0181E: FLdPr var_E4
  loc_C01821:  = Me.Fields
  loc_C01826: FLdPr var_18C
  loc_C01829: from_stack_2 = Me.Item(from_stack_1)
  loc_C0182E: FLdPr var_190
  loc_C01831:  = Me.Value
  loc_C01836: LitVarI2 var_104, 4
  loc_C0183B: LitI4 4
  loc_C01840: FLdRfVar var_F4
  loc_C01843: CStrVarTmp
  loc_C01844: FStStrNoPop var_D8
  loc_C01847: ImpAdCallI2 Mid$(, , )
  loc_C0184C: FStStr var_140
  loc_C0184F: FLdRfVar var_114
  loc_C01852: FLdRfVar var_1AC
  loc_C01855: LitVarStr var_1A8, "NumeFact"
  loc_C0185A: PopAdLdVar
  loc_C0185B: FLdRfVar var_198
  loc_C0185E: FLdRfVar var_194
  loc_C01861: FLdPr Me
  loc_C01864: MemLdRfVar from_stack_1.global_84
  loc_C01867: NewIfNullPr clsbase
  loc_C0186A: from_stack_1v = clsbase.RsFrmGet()
  loc_C0186F: FLdPr var_194
  loc_C01872:  = Me.Fields
  loc_C01877: FLdPr var_198
  loc_C0187A: from_stack_2 = Me.Item(from_stack_1)
  loc_C0187F: FLdPr var_1AC
  loc_C01882:  = Me.Value
  loc_C01887: LitI4 8
  loc_C0188C: FLdRfVar var_114
  loc_C0188F: CStrVarTmp
  loc_C01890: FStStrNoPop var_130
  loc_C01893: ImpAdCallI2 Right$(, )
  loc_C01898: FStStr var_144
  loc_C0189B: LitI2_Byte 0
  loc_C0189D: LitVar_Missing var_1D0
  loc_C018A0: LitI2_Byte 0
  loc_C018A2: FLdZeroAd var_13C
  loc_C018A5: FStStrNoPop var_D0
  loc_C018A8: LitStr "-"
  loc_C018AB: ConcatStr
  loc_C018AC: FStStrNoPop var_DC
  loc_C018AF: FLdZeroAd var_140
  loc_C018B2: FStStrNoPop var_128
  loc_C018B5: ConcatStr
  loc_C018B6: FStStrNoPop var_12C
  loc_C018B9: LitStr "-"
  loc_C018BC: ConcatStr
  loc_C018BD: FStStrNoPop var_134
  loc_C018C0: FLdZeroAd var_144
  loc_C018C3: FStStrNoPop var_138
  loc_C018C6: ConcatStr
  loc_C018C7: CVarStr var_124
  loc_C018CA: PopAdLdVar
  loc_C018CB: FLdPr Me
  loc_C018CE: MemLdI2 global_108
  loc_C018D1: CI4UI1
  loc_C018D2: FLdPr Me
  loc_C018D5: MemLdI2 global_104
  loc_C018D8: CI4UI1
  loc_C018D9: FLdPr Me
  loc_C018DC: MemLdStr global_100
  loc_C018DF: AryLock
  loc_C018E2: Ary1LdPr
  loc_C018E3: MemLdStr global_104
  loc_C018E6: AryLock
  loc_C018E9: Ary1LdPr
  loc_C018EA: MemLdRfVar from_stack_1.global_0
  loc_C018ED: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C018F2: AryUnlock
  loc_C018F5: AryUnlock
  loc_C018F8: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = ""
  loc_C01913: FFreeAd var_B8 = "": var_D4 = "": var_E0 = "": var_E4 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_C01928: FFreeVar var_C8 = "": var_F4 = "": var_104 = "": var_114 = "": var_124 = ""
  loc_C01937: FLdRfVar var_E0
  loc_C0193A: LitVarStr var_A4, "ImpoImpu"
  loc_C0193F: PopAdLdVar
  loc_C01940: FLdRfVar var_D4
  loc_C01943: FLdRfVar var_B8
  loc_C01946: FLdPr Me
  loc_C01949: MemLdRfVar from_stack_1.global_84
  loc_C0194C: NewIfNullPr clsbase
  loc_C0194F: from_stack_1v = clsbase.RsFrmGet()
  loc_C01954: FLdPr var_B8
  loc_C01957:  = Me.Fields
  loc_C0195C: FLdPr var_D4
  loc_C0195F: from_stack_2 = Me.Item(from_stack_1)
  loc_C01964: LitI2_Byte 0
  loc_C01966: LitVar_Missing var_F4
  loc_C01969: LitI2_Byte &HFF
  loc_C0196B: FLdZeroAd var_E0
  loc_C0196E: CVarAd
  loc_C01972: PopAdLdVar
  loc_C01973: FLdPr Me
  loc_C01976: MemLdI2 global_108
  loc_C01979: CI4UI1
  loc_C0197A: FLdPr Me
  loc_C0197D: MemLdI2 global_104
  loc_C01980: CI4UI1
  loc_C01981: FLdPr Me
  loc_C01984: MemLdStr global_100
  loc_C01987: AryLock
  loc_C0198A: Ary1LdPr
  loc_C0198B: MemLdStr global_104
  loc_C0198E: AryLock
  loc_C01991: Ary1LdPr
  loc_C01992: MemLdRfVar from_stack_1.global_4
  loc_C01995: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0199A: AryUnlock
  loc_C0199D: AryUnlock
  loc_C019A0: FFreeAd var_B8 = ""
  loc_C019A7: FFreeVar var_C8 = ""
  loc_C019AE: FLdPr Me
  loc_C019B1: MemLdRfVar from_stack_1.global_84
  loc_C019B4: NewIfNullPr clsbase
  loc_C019B7: Call clsbase.MoveSiguiente()
  loc_C019BC: FLdPr Me
  loc_C019BF: MemLdRfVar from_stack_1.global_108
  loc_C019C2: NextI2 var_188, loc_C017B2
  loc_C019C7: LitStr "SELECT IFNULL(DetaBanc,'') DetaBanc, NumeMoba"
  loc_C019CA: LitStr " FROM cheque"
  loc_C019CD: ConcatStr
  loc_C019CE: FStStrNoPop var_CC
  loc_C019D1: LitStr " LEFT JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_C019D4: ConcatStr
  loc_C019D5: FStStrNoPop var_D0
  loc_C019D8: LitStr " WHERE cheque.PeriInfo = "
  loc_C019DB: ConcatStr
  loc_C019DC: FStStrNoPop var_D8
  loc_C019DF: FLdPr Me
  loc_C019E2: MemLdI2 global_104
  loc_C019E5: CI4UI1
  loc_C019E6: FLdPr Me
  loc_C019E9: MemLdStr global_100
  loc_C019EC: Ary1LdPr
  loc_C019ED: MemLdStr global_0
  loc_C019F0: ConcatStr
  loc_C019F1: FStStrNoPop var_DC
  loc_C019F4: LitStr " AND ExpeImpu = '"
  loc_C019F7: ConcatStr
  loc_C019F8: FStStrNoPop var_128
  loc_C019FB: FLdPr Me
  loc_C019FE: MemLdI2 global_104
  loc_C01A01: CI4UI1
  loc_C01A02: FLdPr Me
  loc_C01A05: MemLdStr global_100
  loc_C01A08: Ary1LdPr
  loc_C01A09: MemLdStr global_4
  loc_C01A0C: ConcatStr
  loc_C01A0D: FStStrNoPop var_12C
  loc_C01A10: LitStr "' AND NumeLiqu = "
  loc_C01A13: ConcatStr
  loc_C01A14: FStStrNoPop var_130
  loc_C01A17: FLdPr Me
  loc_C01A1A: MemLdI2 global_104
  loc_C01A1D: CI4UI1
  loc_C01A1E: FLdPr Me
  loc_C01A21: MemLdStr global_100
  loc_C01A24: Ary1LdPr
  loc_C01A25: MemLdStr global_8
  loc_C01A28: ConcatStr
  loc_C01A29: FStStrNoPop var_134
  loc_C01A2C: LitStr " AND CucuPers = "
  loc_C01A2F: ConcatStr
  loc_C01A30: CVarStr var_F4
  loc_C01A33: FLdRfVar var_C8
  loc_C01A36: FLdRfVar var_E0
  loc_C01A39: LitVarStr var_A4, "CucuPers"
  loc_C01A3E: PopAdLdVar
  loc_C01A3F: FLdRfVar var_D4
  loc_C01A42: FLdRfVar var_B8
  loc_C01A45: FLdPr var_170
  loc_C01A48: from_stack_1v = clsbase.RsFrmGet()
  loc_C01A4D: FLdPr var_B8
  loc_C01A50:  = Me.Fields
  loc_C01A55: FLdPr var_D4
  loc_C01A58: from_stack_2 = Me.Item(from_stack_1)
  loc_C01A5D: FLdPr var_E0
  loc_C01A60:  = Me.Value
  loc_C01A65: FLdRfVar var_C8
  loc_C01A68: ConcatVar var_104
  loc_C01A6C: LitVarStr var_B4, " AND cheque.FeanCheq IS NULL"
  loc_C01A71: ConcatVar var_114
  loc_C01A75: LitVarStr var_184, " ORDER BY DetaBanc, NumeMoba"
  loc_C01A7A: ConcatVar var_124
  loc_C01A7E: CStrVarVal var_138
  loc_C01A82: FLdPr Me
  loc_C01A85: MemLdRfVar from_stack_1.global_84
  loc_C01A88: NewIfNullPr clsbase
  loc_C01A8B: Call clsbase.RedefineRS(from_stack_1v)
  loc_C01A90: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = "": var_130 = "": var_134 = ""
  loc_C01AA5: FFreeAd var_B8 = "": var_D4 = ""
  loc_C01AAE: FFreeVar var_F4 = "": var_C8 = "": var_104 = "": var_114 = ""
  loc_C01ABB: FLdRfVar var_168
  loc_C01ABE: FLdPr Me
  loc_C01AC1: MemLdRfVar from_stack_1.global_84
  loc_C01AC4: NewIfNullPr clsbase
  loc_C01AC7: from_stack_1 = clsbase.RecordCount
  loc_C01ACC: ILdRf var_168
  loc_C01ACF: LitI4 0
  loc_C01AD4: GtI4
  loc_C01AD5: BranchF loc_C01C5B
  loc_C01AD8: LitI2_Byte &HFF
  loc_C01ADA: FLdPr Me
  loc_C01ADD: MemLdI2 global_104
  loc_C01AE0: CI4UI1
  loc_C01AE1: FLdPr Me
  loc_C01AE4: MemLdStr global_100
  loc_C01AE7: Ary1LdPr
  loc_C01AE8: MemStI2 global_96
  loc_C01AEB: FLdRfVar var_168
  loc_C01AEE: FLdPr Me
  loc_C01AF1: MemLdRfVar from_stack_1.global_84
  loc_C01AF4: NewIfNullPr clsbase
  loc_C01AF7: from_stack_1 = clsbase.RecordCount
  loc_C01AFC: LitI4 0
  loc_C01B01: ILdRf var_168
  loc_C01B04: FLdPr Me
  loc_C01B07: MemLdI2 global_104
  loc_C01B0A: CI4UI1
  loc_C01B0B: FLdPr Me
  loc_C01B0E: MemLdStr global_100
  loc_C01B11: Ary1LdPr
  loc_C01B12: MemLdRfVar from_stack_1.global_100
  loc_C01B15: Redim
  loc_C01B1F: FLdPr Me
  loc_C01B22: MemLdRfVar from_stack_1.global_84
  loc_C01B25: NewIfNullPr clsbase
  loc_C01B28: Call clsbase.MoveFirst()
  loc_C01B2D: LitI2_Byte 1
  loc_C01B2F: FLdPr Me
  loc_C01B32: MemLdRfVar from_stack_1.global_106
  loc_C01B35: FLdPr Me
  loc_C01B38: MemLdI2 global_104
  loc_C01B3B: CI4UI1
  loc_C01B3C: FLdPr Me
  loc_C01B3F: MemLdStr global_100
  loc_C01B42: Ary1LdPr
  loc_C01B43: MemLdStr global_100
  loc_C01B46: LitI2_Byte 1
  loc_C01B48: FnUBound
  loc_C01B4A: CI2I4
  loc_C01B4B: ForI2 var_1D4
  loc_C01B51: FLdRfVar var_E0
  loc_C01B54: LitVarStr var_A4, "DetaBanc"
  loc_C01B59: PopAdLdVar
  loc_C01B5A: FLdRfVar var_D4
  loc_C01B5D: FLdRfVar var_B8
  loc_C01B60: FLdPr Me
  loc_C01B63: MemLdRfVar from_stack_1.global_84
  loc_C01B66: NewIfNullPr clsbase
  loc_C01B69: from_stack_1v = clsbase.RsFrmGet()
  loc_C01B6E: FLdPr var_B8
  loc_C01B71:  = Me.Fields
  loc_C01B76: FLdPr var_D4
  loc_C01B79: from_stack_2 = Me.Item(from_stack_1)
  loc_C01B7E: LitI2_Byte 0
  loc_C01B80: LitVar_Missing var_F4
  loc_C01B83: LitI2_Byte 0
  loc_C01B85: FLdZeroAd var_E0
  loc_C01B88: CVarAd
  loc_C01B8C: PopAdLdVar
  loc_C01B8D: FLdPr Me
  loc_C01B90: MemLdI2 global_106
  loc_C01B93: CI4UI1
  loc_C01B94: FLdPr Me
  loc_C01B97: MemLdI2 global_104
  loc_C01B9A: CI4UI1
  loc_C01B9B: FLdPr Me
  loc_C01B9E: MemLdStr global_100
  loc_C01BA1: AryLock
  loc_C01BA4: Ary1LdPr
  loc_C01BA5: MemLdStr global_100
  loc_C01BA8: AryLock
  loc_C01BAB: Ary1LdPr
  loc_C01BAC: MemLdRfVar from_stack_1.global_0
  loc_C01BAF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01BB4: AryUnlock
  loc_C01BB7: AryUnlock
  loc_C01BBA: FFreeAd var_B8 = ""
  loc_C01BC1: FFreeVar var_C8 = ""
  loc_C01BC8: FLdRfVar var_E0
  loc_C01BCB: LitVarStr var_A4, "NumeMoba"
  loc_C01BD0: PopAdLdVar
  loc_C01BD1: FLdRfVar var_D4
  loc_C01BD4: FLdRfVar var_B8
  loc_C01BD7: FLdPr Me
  loc_C01BDA: MemLdRfVar from_stack_1.global_84
  loc_C01BDD: NewIfNullPr clsbase
  loc_C01BE0: from_stack_1v = clsbase.RsFrmGet()
  loc_C01BE5: FLdPr var_B8
  loc_C01BE8:  = Me.Fields
  loc_C01BED: FLdPr var_D4
  loc_C01BF0: from_stack_2 = Me.Item(from_stack_1)
  loc_C01BF5: LitI2_Byte 0
  loc_C01BF7: LitVar_Missing var_F4
  loc_C01BFA: LitI2_Byte 0
  loc_C01BFC: FLdZeroAd var_E0
  loc_C01BFF: CVarAd
  loc_C01C03: PopAdLdVar
  loc_C01C04: FLdPr Me
  loc_C01C07: MemLdI2 global_106
  loc_C01C0A: CI4UI1
  loc_C01C0B: FLdPr Me
  loc_C01C0E: MemLdI2 global_104
  loc_C01C11: CI4UI1
  loc_C01C12: FLdPr Me
  loc_C01C15: MemLdStr global_100
  loc_C01C18: AryLock
  loc_C01C1B: Ary1LdPr
  loc_C01C1C: MemLdStr global_100
  loc_C01C1F: AryLock
  loc_C01C22: Ary1LdPr
  loc_C01C23: MemLdRfVar from_stack_1.global_4
  loc_C01C26: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C01C2B: AryUnlock
  loc_C01C2E: AryUnlock
  loc_C01C31: FFreeAd var_B8 = ""
  loc_C01C38: FFreeVar var_C8 = ""
  loc_C01C3F: FLdPr Me
  loc_C01C42: MemLdRfVar from_stack_1.global_84
  loc_C01C45: NewIfNullPr clsbase
  loc_C01C48: Call clsbase.MoveSiguiente()
  loc_C01C4D: FLdPr Me
  loc_C01C50: MemLdRfVar from_stack_1.global_106
  loc_C01C53: NextI2 var_1D4, loc_C01B51
  loc_C01C58: Branch loc_C01C6E
  loc_C01C5B: LitI2_Byte 0
  loc_C01C5D: FLdPr Me
  loc_C01C60: MemLdI2 global_104
  loc_C01C63: CI4UI1
  loc_C01C64: FLdPr Me
  loc_C01C67: MemLdStr global_100
  loc_C01C6A: Ary1LdPr
  loc_C01C6B: MemStI2 global_96
  loc_C01C6E: LitNothing
  loc_C01C70: FStAd var_170 
  loc_C01C74: FLdPr Me
  loc_C01C77: MemLdRfVar from_stack_1.global_80
  loc_C01C7A: NewIfNullPr clsbase
  loc_C01C7D: Call clsbase.MoveSiguiente()
  loc_C01C82: FLdPr Me
  loc_C01C85: MemLdRfVar from_stack_1.global_104
  loc_C01C88: NextI2 var_16C, loc_C00BCD
  loc_C01C8D: LitI2_Byte &HFF
  loc_C01C8F: FLdPr Me
  loc_C01C92: MemStI2 bGenerado
  loc_C01C95: Branch loc_C02CF5
  loc_C01C98: FLdRfVar var_92
  loc_C01C9B: FLdPr Me
  loc_C01C9E: VCallAd Control_ID_cboCodiRete
  loc_C01CA1: FStAdFunc var_B8
  loc_C01CA4: FLdPr var_B8
  loc_C01CA7:  = Me.ListIndex
  loc_C01CAC: FLdRfVar var_1D6
  loc_C01CAF: FLdPr Me
  loc_C01CB2: VCallAd Control_ID_cboCodiRete
  loc_C01CB5: FStAdFunc var_D4
  loc_C01CB8: FLdPr var_D4
  loc_C01CBB:  = Me.ListIndex
  loc_C01CC0: FLdRfVar var_168
  loc_C01CC3: FLdI2 var_1D6
  loc_C01CC6: FLdPr Me
  loc_C01CC9: VCallAd Control_ID_cboCodiRete
  loc_C01CCC: FStAdFunc var_E0
  loc_C01CCF: FLdPr var_E0
  loc_C01CD2:  = Me.ItemData
  loc_C01CD7: LitVarStr var_B4, " AND ln.CodiRete > 0"
  loc_C01CDC: FStVarCopyObj var_F4
  loc_C01CDF: FLdRfVar var_F4
  loc_C01CE2: LitStr " AND ln.CodiRete = "
  loc_C01CE5: ILdRf var_168
  loc_C01CE8: CStrI4
  loc_C01CEA: FStStrNoPop var_CC
  loc_C01CED: ConcatStr
  loc_C01CEE: CVarStr var_C8
  loc_C01CF1: FLdI2 var_92
  loc_C01CF4: LitI2_Byte 0
  loc_C01CF6: GtI2
  loc_C01CF7: CVarBoolI2 var_A4
  loc_C01CFB: FLdRfVar var_104
  loc_C01CFE: ImpAdCallFPR4  = IIf(, , )
  loc_C01D03: FLdRfVar var_104
  loc_C01D06: CStrVarTmp
  loc_C01D07: FStStr var_8C
  loc_C01D0A: FFree1Str var_CC
  loc_C01D0D: FFreeAd var_B8 = "": var_D4 = ""
  loc_C01D16: FFreeVar var_A4 = "": var_C8 = "": var_F4 = ""
  loc_C01D21: FLdPr Me
  loc_C01D24: MemLdRfVar from_stack_1.global_92
  loc_C01D27: NewIfNullAd
  loc_C01D2A: FStAd var_1DC 
  loc_C01D2E: LitStr "SELECT DISTINCT ln.CucuPers, ln.ExpeImpu, ln.NumeLiqu, ln.NumeLiqu, ln.PeriInfo, l.NumeOrpa"
  loc_C01D31: LitStr " FROM liquidaneto ln"
  loc_C01D34: ConcatStr
  loc_C01D35: FStStrNoPop var_CC
  loc_C01D38: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = ln.PeriInfo AND l.ExpeImpu = ln.ExpeImpu AND l.NumeLiqu = ln.NumeLiqu"
  loc_C01D3B: ConcatStr
  loc_C01D3C: FStStrNoPop var_D0
  loc_C01D3F: LitStr " WHERE ln.PeriInfo = "
  loc_C01D42: ConcatStr
  loc_C01D43: FStStrNoPop var_DC
  loc_C01D46: FLdRfVar var_D8
  loc_C01D49: FLdPr Me
  loc_C01D4C: VCallAd Control_ID_cboPeriodo
  loc_C01D4F: FStAdFunc var_B8
  loc_C01D52: FLdPr var_B8
  loc_C01D55:  = Me.Text
  loc_C01D5A: ILdRf var_D8
  loc_C01D5D: ConcatStr
  loc_C01D5E: FStStrNoPop var_128
  loc_C01D61: LitStr " AND Month(FechCaja) = "
  loc_C01D64: ConcatStr
  loc_C01D65: FStStrNoPop var_12C
  loc_C01D68: FLdRfVar var_168
  loc_C01D6B: FLdRfVar var_92
  loc_C01D6E: FLdPr Me
  loc_C01D71: VCallAd Control_ID_cboMes
  loc_C01D74: FStAdFunc var_D4
  loc_C01D77: FLdPr var_D4
  loc_C01D7A:  = Me.ListIndex
  loc_C01D7F: FLdI2 var_92
  loc_C01D82: FLdPr Me
  loc_C01D85: VCallAd Control_ID_cboMes
  loc_C01D88: FStAdFunc var_E0
  loc_C01D8B: FLdPr var_E0
  loc_C01D8E:  = Me.ItemData
  loc_C01D93: ILdRf var_168
  loc_C01D96: CStrI4
  loc_C01D98: FStStrNoPop var_130
  loc_C01D9B: ConcatStr
  loc_C01D9C: FStStrNoPop var_134
  loc_C01D9F: ILdRf var_8C
  loc_C01DA2: ConcatStr
  loc_C01DA3: FStStrNoPop var_138
  loc_C01DA6: LitStr " ORDER BY ln.CucuPers, ln.ExpeImpu, ln.NumeLiqu"
  loc_C01DA9: ConcatStr
  loc_C01DAA: FStStrNoPop var_13C
  loc_C01DAD: FLdPr var_1DC
  loc_C01DB0: Call clsbase.RedefineRS(from_stack_1v)
  loc_C01DB5: FFreeStr var_CC = "": var_D0 = "": var_DC = "": var_D8 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = ""
  loc_C01DCC: FFreeAd var_B8 = "": var_D4 = ""
  loc_C01DD5: FLdRfVar var_168
  loc_C01DD8: FLdPr var_1DC
  loc_C01DDB: from_stack_1 = clsbase.RecordCount
  loc_C01DE0: ILdRf var_168
  loc_C01DE3: LitI4 0
  loc_C01DE8: EqI4
  loc_C01DE9: BranchF loc_C01DFC
  loc_C01DEC: LitI4 0
  loc_C01DF1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C01DF4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C01DF9: Branch loc_C02CF5
  loc_C01DFC: LitNothing
  loc_C01DFE: FStAd var_1DC 
  loc_C01E02: FLdPr Me
  loc_C01E05: MemLdRfVar from_stack_1.global_92
  loc_C01E08: NewIfNullPr clsbase
  loc_C01E0B: Call clsbase.MoveFirst()
  loc_C01E10: LitStr "SELECT ln.CucuPers, CertLine, DetaRete, DetaProv, DecrPers, AcbrLine, ReacLine, ImpoLine, AlicEsca, BaseEsca, ln.ExpeImpu, ln.NumeLiqu, FechLiqu, DetaDere, IFNULL(NuinRexp,0) NuinRexp, FechCaja"
  loc_C01E13: LitStr ", (SELECT Sum(ImpoLine) FROM liquidaneto tmp WHERE tmp.PeriInfo = ln.PeriInfo AND tmp.ExpeImpu = ln.ExpeImpu AND tmp.NumeLiqu = ln.NumeLiqu AND tmp.CucuPers = ln.CucuPers AND tmp.CodiRete = 0) Neto"
  loc_C01E16: ConcatStr
  loc_C01E17: FStStrNoPop var_CC
  loc_C01E1A: LitStr " FROM liquidaneto ln"
  loc_C01E1D: ConcatStr
  loc_C01E1E: FStStrNoPop var_D0
  loc_C01E21: LitStr " INNER JOIN retenciones ON retenciones.PeriInfo = ln.PeriInfo AND retenciones.CodiRete = ln.CodiRete"
  loc_C01E24: ConcatStr
  loc_C01E25: FStStrNoPop var_D8
  loc_C01E28: LitStr " INNER JOIN deretenciones ON deretenciones.PeriInfo = ln.PeriInfo AND deretenciones.CodiRete = ln.CodiRete AND deretenciones.CodiDere = ln.CodiDere"
  loc_C01E2B: ConcatStr
  loc_C01E2C: FStStrNoPop var_DC
  loc_C01E2F: LitStr " INNER JOIN escalas ON escalas.PeriInfo = ln.PeriInfo AND escalas.FechEsca = ln.FechEsca AND escalas.CodiRete = ln.CodiRete AND escalas.CodiDere = ln.CodiDere AND escalas.CodiEsca = ln.CodiEsca"
  loc_C01E32: ConcatStr
  loc_C01E33: FStStrNoPop var_128
  loc_C01E36: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = ln.CucuPers"
  loc_C01E39: ConcatStr
  loc_C01E3A: FStStrNoPop var_12C
  loc_C01E3D: LitStr " INNER JOIN infogov.persona ON persona.CucuPers = proveedor.CucuPers"
  loc_C01E40: ConcatStr
  loc_C01E41: FStStrNoPop var_130
  loc_C01E44: LitStr " INNER JOIN ordenpago o ON o.PeriInfo AND ln.PeriInfo AND o.ExpeImpu = ln.ExpeImpu AND o.NumeLiqu = ln.NumeLiqu"
  loc_C01E47: ConcatStr
  loc_C01E48: FStStrNoPop var_134
  loc_C01E4B: LitStr " INNER JOIN liquidacion l ON l.PeriInfo = ln.PeriInfo AND l.ExpeImpu = ln.ExpeImpu AND l.NumeLiqu = ln.NumeLiqu"
  loc_C01E4E: ConcatStr
  loc_C01E4F: FStStrNoPop var_138
  loc_C01E52: LitStr " LEFT JOIN retexprov ON retexprov.CucuPers = ln.CucuPers AND retexprov.PeriInfo = ln.PeriInfo AND retexprov.CodiRete = ln.CodiRete"
  loc_C01E55: ConcatStr
  loc_C01E56: FStStrNoPop var_13C
  loc_C01E59: LitStr " WHERE o.PeriInfo = "
  loc_C01E5C: ConcatStr
  loc_C01E5D: CVarStr var_F4
  loc_C01E60: FLdRfVar var_C8
  loc_C01E63: FLdRfVar var_E0
  loc_C01E66: LitVarStr var_A4, "PeriInfo"
  loc_C01E6B: PopAdLdVar
  loc_C01E6C: FLdRfVar var_D4
  loc_C01E6F: FLdRfVar var_B8
  loc_C01E72: FLdPr Me
  loc_C01E75: MemLdRfVar from_stack_1.global_92
  loc_C01E78: NewIfNullPr clsbase
  loc_C01E7B: from_stack_1v = clsbase.RsFrmGet()
  loc_C01E80: FLdPr var_B8
  loc_C01E83:  = Me.Fields
  loc_C01E88: FLdPr var_D4
  loc_C01E8B: from_stack_2 = Me.Item(from_stack_1)
  loc_C01E90: FLdPr var_E0
  loc_C01E93:  = Me.Value
  loc_C01E98: FLdRfVar var_C8
  loc_C01E9B: ConcatVar var_104
  loc_C01E9F: LitVarStr var_B4, " AND o.NumeOrpa = "
  loc_C01EA4: ConcatVar var_114
  loc_C01EA8: FLdRfVar var_124
  loc_C01EAB: FLdRfVar var_190
  loc_C01EAE: LitVarStr var_184, "NumeOrpa"
  loc_C01EB3: PopAdLdVar
  loc_C01EB4: FLdRfVar var_18C
  loc_C01EB7: FLdRfVar var_E4
  loc_C01EBA: FLdPr Me
  loc_C01EBD: MemLdRfVar from_stack_1.global_92
  loc_C01EC0: NewIfNullPr clsbase
  loc_C01EC3: from_stack_1v = clsbase.RsFrmGet()
  loc_C01EC8: FLdPr var_E4
  loc_C01ECB:  = Me.Fields
  loc_C01ED0: FLdPr var_18C
  loc_C01ED3: from_stack_2 = Me.Item(from_stack_1)
  loc_C01ED8: FLdPr var_190
  loc_C01EDB:  = Me.Value
  loc_C01EE0: FLdRfVar var_124
  loc_C01EE3: ConcatVar var_1D0
  loc_C01EE7: LitVarStr var_1A8, " AND ln.CucuPers = "
  loc_C01EEC: ConcatVar var_1EC
  loc_C01EF0: FLdRfVar var_1FC
  loc_C01EF3: FLdRfVar var_1AC
  loc_C01EF6: LitVarStr var_1C0, "CucuPers"
  loc_C01EFB: PopAdLdVar
  loc_C01EFC: FLdRfVar var_198
  loc_C01EFF: FLdRfVar var_194
  loc_C01F02: FLdPr Me
  loc_C01F05: MemLdRfVar from_stack_1.global_92
  loc_C01F08: NewIfNullPr clsbase
  loc_C01F0B: from_stack_1v = clsbase.RsFrmGet()
  loc_C01F10: FLdPr var_194
  loc_C01F13:  = Me.Fields
  loc_C01F18: FLdPr var_198
  loc_C01F1B: from_stack_2 = Me.Item(from_stack_1)
  loc_C01F20: FLdPr var_1AC
  loc_C01F23:  = Me.Value
  loc_C01F28: FLdRfVar var_1FC
  loc_C01F2B: ConcatVar var_20C
  loc_C01F2F: LitVarStr var_21C, " AND FeanOrpa Is Null"
  loc_C01F34: ConcatVar var_22C
  loc_C01F38: ILdRf var_8C
  loc_C01F3B: CVarStr var_23C
  loc_C01F3E: ConcatVar var_24C
  loc_C01F42: LitVarStr var_25C, " ORDER BY DetaProv, DetaRete"
  loc_C01F47: ConcatVar var_26C
  loc_C01F4B: CStrVarVal var_140
  loc_C01F4F: FLdPr Me
  loc_C01F52: MemLdRfVar from_stack_1.global_80
  loc_C01F55: NewIfNullPr clsbase
  loc_C01F58: Call clsbase.RedefineRS(from_stack_1v)
  loc_C01F5D: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = ""
  loc_C01F76: FFreeAd var_B8 = "": var_D4 = "": var_E0 = "": var_E4 = "": var_18C = "": var_190 = "": var_194 = "": var_198 = ""
  loc_C01F8B: FFreeVar var_F4 = "": var_C8 = "": var_104 = "": var_114 = "": var_124 = "": var_1D0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_22C = "": var_24C = ""
  loc_C01FA6: FLdRfVar var_168
  loc_C01FA9: FLdPr Me
  loc_C01FAC: MemLdRfVar from_stack_1.global_80
  loc_C01FAF: NewIfNullPr clsbase
  loc_C01FB2: from_stack_1 = clsbase.RecordCount
  loc_C01FB7: ILdRf var_168
  loc_C01FBA: LitI4 0
  loc_C01FBF: EqI4
  loc_C01FC0: BranchF loc_C01FD3
  loc_C01FC3: LitI4 0
  loc_C01FC8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_C01FCB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C01FD0: Branch loc_C02CF5
  loc_C01FD3: FLdRfVar var_168
  loc_C01FD6: FLdPr Me
  loc_C01FD9: MemLdRfVar from_stack_1.global_92
  loc_C01FDC: NewIfNullPr clsbase
  loc_C01FDF: from_stack_1 = clsbase.AbsolutePosition
  loc_C01FE4: ILdRf var_168
  loc_C01FE7: LitI4 1
  loc_C01FEC: EqI4
  loc_C01FED: BranchF loc_C0201C
  loc_C01FF0: LitI4 0
  loc_C01FF5: FLdRfVar var_168
  loc_C01FF8: FLdPr Me
  loc_C01FFB: MemLdRfVar from_stack_1.global_80
  loc_C01FFE: NewIfNullPr clsbase
  loc_C02001: from_stack_1 = clsbase.RecordCount
  loc_C02006: ILdRf var_168
  loc_C02009: FLdPr Me
  loc_C0200C: MemLdRfVar from_stack_1.global_100
  loc_C0200F: Redim
  loc_C02019: Branch loc_C02050
  loc_C0201C: LitI4 0
  loc_C02021: FLdPr Me
  loc_C02024: MemLdStr global_100
  loc_C02027: LitI2_Byte 1
  loc_C02029: FnUBound
  loc_C0202B: FLdRfVar var_168
  loc_C0202E: FLdPr Me
  loc_C02031: MemLdRfVar from_stack_1.global_80
  loc_C02034: NewIfNullPr clsbase
  loc_C02037: from_stack_1 = clsbase.RecordCount
  loc_C0203C: ILdRf var_168
  loc_C0203F: AddI4
  loc_C02040: FLdPr Me
  loc_C02043: MemLdRfVar from_stack_1.global_100
  loc_C02046: RedimPreserve
  loc_C02050: FLdPr Me
  loc_C02053: MemLdStr global_100
  loc_C02056: LitI2_Byte 1
  loc_C02058: FnUBound
  loc_C0205A: FLdRfVar var_168
  loc_C0205D: FLdPr Me
  loc_C02060: MemLdRfVar from_stack_1.global_80
  loc_C02063: NewIfNullPr clsbase
  loc_C02066: from_stack_1 = clsbase.RecordCount
  loc_C0206B: ILdRf var_168
  loc_C0206E: SubI4
  loc_C0206F: LitI4 1
  loc_C02074: AddI4
  loc_C02075: CI2I4
  loc_C02076: FLdPr Me
  loc_C02079: MemLdRfVar from_stack_1.global_104
  loc_C0207C: FLdPr Me
  loc_C0207F: MemLdStr global_100
  loc_C02082: LitI2_Byte 1
  loc_C02084: FnUBound
  loc_C02086: CI2I4
  loc_C02087: ForI2 var_270
  loc_C0208D: FLdPr Me
  loc_C02090: MemLdRfVar from_stack_1.global_80
  loc_C02093: NewIfNullAd
  loc_C02096: FStAd var_274 
  loc_C0209A: FLdRfVar var_E0
  loc_C0209D: LitVarStr var_A4, "CertLine"
  loc_C020A2: PopAdLdVar
  loc_C020A3: FLdRfVar var_D4
  loc_C020A6: FLdRfVar var_B8
  loc_C020A9: FLdPr var_274
  loc_C020AC: from_stack_1v = clsbase.RsFrmGet()
  loc_C020B1: FLdPr var_B8
  loc_C020B4:  = Me.Fields
  loc_C020B9: FLdPr var_D4
  loc_C020BC: from_stack_2 = Me.Item(from_stack_1)
  loc_C020C1: LitI2_Byte 0
  loc_C020C3: LitVar_Missing var_F4
  loc_C020C6: LitI2_Byte 0
  loc_C020C8: FLdZeroAd var_E0
  loc_C020CB: CVarAd
  loc_C020CF: PopAdLdVar
  loc_C020D0: FLdPr Me
  loc_C020D3: MemLdI2 global_104
  loc_C020D6: CI4UI1
  loc_C020D7: FLdPr Me
  loc_C020DA: MemLdStr global_100
  loc_C020DD: AryLock
  loc_C020E0: Ary1LdPr
  loc_C020E1: MemLdRfVar from_stack_1.global_12
  loc_C020E4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C020E9: AryUnlock
  loc_C020EC: FFreeAd var_B8 = ""
  loc_C020F3: FFreeVar var_C8 = ""
  loc_C020FA: FLdRfVar var_E0
  loc_C020FD: LitVarStr var_A4, "DetaRete"
  loc_C02102: PopAdLdVar
  loc_C02103: FLdRfVar var_D4
  loc_C02106: FLdRfVar var_B8
  loc_C02109: FLdPr var_274
  loc_C0210C: from_stack_1v = clsbase.RsFrmGet()
  loc_C02111: FLdPr var_B8
  loc_C02114:  = Me.Fields
  loc_C02119: FLdPr var_D4
  loc_C0211C: from_stack_2 = Me.Item(from_stack_1)
  loc_C02121: LitI2_Byte 0
  loc_C02123: LitVar_Missing var_F4
  loc_C02126: LitI2_Byte 0
  loc_C02128: FLdZeroAd var_E0
  loc_C0212B: CVarAd
  loc_C0212F: PopAdLdVar
  loc_C02130: FLdPr Me
  loc_C02133: MemLdI2 global_104
  loc_C02136: CI4UI1
  loc_C02137: FLdPr Me
  loc_C0213A: MemLdStr global_100
  loc_C0213D: AryLock
  loc_C02140: Ary1LdPr
  loc_C02141: MemLdRfVar from_stack_1.global_20
  loc_C02144: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02149: AryUnlock
  loc_C0214C: FFreeAd var_B8 = ""
  loc_C02153: FFreeVar var_C8 = ""
  loc_C0215A: FLdRfVar var_E0
  loc_C0215D: LitVarStr var_A4, "DetaProv"
  loc_C02162: PopAdLdVar
  loc_C02163: FLdRfVar var_D4
  loc_C02166: FLdRfVar var_B8
  loc_C02169: FLdPr var_274
  loc_C0216C: from_stack_1v = clsbase.RsFrmGet()
  loc_C02171: FLdPr var_B8
  loc_C02174:  = Me.Fields
  loc_C02179: FLdPr var_D4
  loc_C0217C: from_stack_2 = Me.Item(from_stack_1)
  loc_C02181: LitI2_Byte 0
  loc_C02183: LitVar_Missing var_F4
  loc_C02186: LitI2_Byte 0
  loc_C02188: FLdZeroAd var_E0
  loc_C0218B: CVarAd
  loc_C0218F: PopAdLdVar
  loc_C02190: FLdPr Me
  loc_C02193: MemLdI2 global_104
  loc_C02196: CI4UI1
  loc_C02197: FLdPr Me
  loc_C0219A: MemLdStr global_100
  loc_C0219D: AryLock
  loc_C021A0: Ary1LdPr
  loc_C021A1: MemLdRfVar from_stack_1.global_24
  loc_C021A4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C021A9: AryUnlock
  loc_C021AC: FFreeAd var_B8 = ""
  loc_C021B3: FFreeVar var_C8 = ""
  loc_C021BA: FLdRfVar var_E0
  loc_C021BD: LitVarStr var_A4, "DecrPers"
  loc_C021C2: PopAdLdVar
  loc_C021C3: FLdRfVar var_D4
  loc_C021C6: FLdRfVar var_B8
  loc_C021C9: FLdPr var_274
  loc_C021CC: from_stack_1v = clsbase.RsFrmGet()
  loc_C021D1: FLdPr var_B8
  loc_C021D4:  = Me.Fields
  loc_C021D9: FLdPr var_D4
  loc_C021DC: from_stack_2 = Me.Item(from_stack_1)
  loc_C021E1: LitI2_Byte 0
  loc_C021E3: LitVar_Missing var_F4
  loc_C021E6: LitI2_Byte 0
  loc_C021E8: FLdZeroAd var_E0
  loc_C021EB: CVarAd
  loc_C021EF: PopAdLdVar
  loc_C021F0: FLdPr Me
  loc_C021F3: MemLdI2 global_104
  loc_C021F6: CI4UI1
  loc_C021F7: FLdPr Me
  loc_C021FA: MemLdStr global_100
  loc_C021FD: AryLock
  loc_C02200: Ary1LdPr
  loc_C02201: MemLdRfVar from_stack_1.global_28
  loc_C02204: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02209: AryUnlock
  loc_C0220C: FFreeAd var_B8 = ""
  loc_C02213: FFreeVar var_C8 = ""
  loc_C0221A: FLdRfVar var_E0
  loc_C0221D: LitVarStr var_A4, "CucuPers"
  loc_C02222: PopAdLdVar
  loc_C02223: FLdRfVar var_D4
  loc_C02226: FLdRfVar var_B8
  loc_C02229: FLdPr var_274
  loc_C0222C: from_stack_1v = clsbase.RsFrmGet()
  loc_C02231: FLdPr var_B8
  loc_C02234:  = Me.Fields
  loc_C02239: FLdPr var_D4
  loc_C0223C: from_stack_2 = Me.Item(from_stack_1)
  loc_C02241: LitI4 1
  loc_C02246: LitI4 1
  loc_C0224B: LitVarStr var_B4, "##-########-#"
  loc_C02250: FStVarCopyObj var_F4
  loc_C02253: FLdRfVar var_F4
  loc_C02256: FLdZeroAd var_E0
  loc_C02259: CVarAd
  loc_C0225D: FLdRfVar var_104
  loc_C02260: ImpAdCallFPR4  = Format(, )
  loc_C02265: LitI2_Byte 0
  loc_C02267: LitVar_Missing var_114
  loc_C0226A: LitI2_Byte 0
  loc_C0226C: FLdVar var_104
  loc_C02270: FLdPr Me
  loc_C02273: MemLdI2 global_104
  loc_C02276: CI4UI1
  loc_C02277: FLdPr Me
  loc_C0227A: MemLdStr global_100
  loc_C0227D: AryLock
  loc_C02280: Ary1LdPr
  loc_C02281: MemLdRfVar from_stack_1.global_32
  loc_C02284: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02289: AryUnlock
  loc_C0228C: FFreeAd var_B8 = ""
  loc_C02293: FFreeVar var_C8 = "": var_F4 = "": var_104 = ""
  loc_C0229E: FLdRfVar var_E0
  loc_C022A1: LitVarStr var_A4, "NuinRexp"
  loc_C022A6: PopAdLdVar
  loc_C022A7: FLdRfVar var_D4
  loc_C022AA: FLdRfVar var_B8
  loc_C022AD: FLdPr var_274
  loc_C022B0: from_stack_1v = clsbase.RsFrmGet()
  loc_C022B5: FLdPr var_B8
  loc_C022B8:  = Me.Fields
  loc_C022BD: FLdPr var_D4
  loc_C022C0: from_stack_2 = Me.Item(from_stack_1)
  loc_C022C5: LitI2_Byte 0
  loc_C022C7: LitVar_Missing var_F4
  loc_C022CA: LitI2_Byte 0
  loc_C022CC: FLdZeroAd var_E0
  loc_C022CF: CVarAd
  loc_C022D3: PopAdLdVar
  loc_C022D4: FLdPr Me
  loc_C022D7: MemLdI2 global_104
  loc_C022DA: CI4UI1
  loc_C022DB: FLdPr Me
  loc_C022DE: MemLdStr global_100
  loc_C022E1: AryLock
  loc_C022E4: Ary1LdPr
  loc_C022E5: MemLdRfVar from_stack_1.global_36
  loc_C022E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C022ED: AryUnlock
  loc_C022F0: FFreeAd var_B8 = ""
  loc_C022F7: FFreeVar var_C8 = ""
  loc_C022FE: FLdRfVar var_E0
  loc_C02301: LitVarStr var_A4, "AcbrLine"
  loc_C02306: PopAdLdVar
  loc_C02307: FLdRfVar var_D4
  loc_C0230A: FLdRfVar var_B8
  loc_C0230D: FLdPr var_274
  loc_C02310: from_stack_1v = clsbase.RsFrmGet()
  loc_C02315: FLdPr var_B8
  loc_C02318:  = Me.Fields
  loc_C0231D: FLdPr var_D4
  loc_C02320: from_stack_2 = Me.Item(from_stack_1)
  loc_C02325: LitI2_Byte 0
  loc_C02327: LitVar_Missing var_F4
  loc_C0232A: LitI2_Byte &HFF
  loc_C0232C: FLdZeroAd var_E0
  loc_C0232F: CVarAd
  loc_C02333: PopAdLdVar
  loc_C02334: FLdPr Me
  loc_C02337: MemLdI2 global_104
  loc_C0233A: CI4UI1
  loc_C0233B: FLdPr Me
  loc_C0233E: MemLdStr global_100
  loc_C02341: AryLock
  loc_C02344: Ary1LdPr
  loc_C02345: MemLdRfVar from_stack_1.global_40
  loc_C02348: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0234D: AryUnlock
  loc_C02350: FFreeAd var_B8 = ""
  loc_C02357: FFreeVar var_C8 = ""
  loc_C0235E: FLdRfVar var_E0
  loc_C02361: LitVarStr var_A4, "ReacLine"
  loc_C02366: PopAdLdVar
  loc_C02367: FLdRfVar var_D4
  loc_C0236A: FLdRfVar var_B8
  loc_C0236D: FLdPr var_274
  loc_C02370: from_stack_1v = clsbase.RsFrmGet()
  loc_C02375: FLdPr var_B8
  loc_C02378:  = Me.Fields
  loc_C0237D: FLdPr var_D4
  loc_C02380: from_stack_2 = Me.Item(from_stack_1)
  loc_C02385: LitI2_Byte 0
  loc_C02387: LitVar_Missing var_F4
  loc_C0238A: LitI2_Byte &HFF
  loc_C0238C: FLdZeroAd var_E0
  loc_C0238F: CVarAd
  loc_C02393: PopAdLdVar
  loc_C02394: FLdPr Me
  loc_C02397: MemLdI2 global_104
  loc_C0239A: CI4UI1
  loc_C0239B: FLdPr Me
  loc_C0239E: MemLdStr global_100
  loc_C023A1: AryLock
  loc_C023A4: Ary1LdPr
  loc_C023A5: MemLdRfVar from_stack_1.global_44
  loc_C023A8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C023AD: AryUnlock
  loc_C023B0: FFreeAd var_B8 = ""
  loc_C023B7: FFreeVar var_C8 = ""
  loc_C023BE: FLdRfVar var_E0
  loc_C023C1: LitVarStr var_A4, "AlicEsca"
  loc_C023C6: PopAdLdVar
  loc_C023C7: FLdRfVar var_D4
  loc_C023CA: FLdRfVar var_B8
  loc_C023CD: FLdPr var_274
  loc_C023D0: from_stack_1v = clsbase.RsFrmGet()
  loc_C023D5: FLdPr var_B8
  loc_C023D8:  = Me.Fields
  loc_C023DD: FLdPr var_D4
  loc_C023E0: from_stack_2 = Me.Item(from_stack_1)
  loc_C023E5: LitI2_Byte 0
  loc_C023E7: LitVar_Missing var_F4
  loc_C023EA: LitI2_Byte 0
  loc_C023EC: FLdZeroAd var_E0
  loc_C023EF: CVarAd
  loc_C023F3: PopAdLdVar
  loc_C023F4: FLdPr Me
  loc_C023F7: MemLdI2 global_104
  loc_C023FA: CI4UI1
  loc_C023FB: FLdPr Me
  loc_C023FE: MemLdStr global_100
  loc_C02401: AryLock
  loc_C02404: Ary1LdPr
  loc_C02405: MemLdRfVar from_stack_1.global_56
  loc_C02408: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0240D: AryUnlock
  loc_C02410: FFreeAd var_B8 = ""
  loc_C02417: FFreeVar var_C8 = ""
  loc_C0241E: FLdRfVar var_E0
  loc_C02421: LitVarStr var_A4, "BaseEsca"
  loc_C02426: PopAdLdVar
  loc_C02427: FLdRfVar var_D4
  loc_C0242A: FLdRfVar var_B8
  loc_C0242D: FLdPr var_274
  loc_C02430: from_stack_1v = clsbase.RsFrmGet()
  loc_C02435: FLdPr var_B8
  loc_C02438:  = Me.Fields
  loc_C0243D: FLdPr var_D4
  loc_C02440: from_stack_2 = Me.Item(from_stack_1)
  loc_C02445: LitI2_Byte 0
  loc_C02447: LitVar_Missing var_F4
  loc_C0244A: LitI2_Byte 0
  loc_C0244C: FLdZeroAd var_E0
  loc_C0244F: CVarAd
  loc_C02453: PopAdLdVar
  loc_C02454: FLdPr Me
  loc_C02457: MemLdI2 global_104
  loc_C0245A: CI4UI1
  loc_C0245B: FLdPr Me
  loc_C0245E: MemLdStr global_100
  loc_C02461: AryLock
  loc_C02464: Ary1LdPr
  loc_C02465: MemLdRfVar from_stack_1.bGenerado
  loc_C02468: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0246D: AryUnlock
  loc_C02470: FFreeAd var_B8 = ""
  loc_C02477: FFreeVar var_C8 = ""
  loc_C0247E: FLdRfVar var_E0
  loc_C02481: LitVarStr var_A4, "FechLiqu"
  loc_C02486: PopAdLdVar
  loc_C02487: FLdRfVar var_D4
  loc_C0248A: FLdRfVar var_B8
  loc_C0248D: FLdPr var_274
  loc_C02490: from_stack_1v = clsbase.RsFrmGet()
  loc_C02495: FLdPr var_B8
  loc_C02498:  = Me.Fields
  loc_C0249D: FLdPr var_D4
  loc_C024A0: from_stack_2 = Me.Item(from_stack_1)
  loc_C024A5: LitI2_Byte 0
  loc_C024A7: LitVar_Missing var_F4
  loc_C024AA: LitI2_Byte 0
  loc_C024AC: FLdZeroAd var_E0
  loc_C024AF: CVarAd
  loc_C024B3: PopAdLdVar
  loc_C024B4: FLdPr Me
  loc_C024B7: MemLdI2 global_104
  loc_C024BA: CI4UI1
  loc_C024BB: FLdPr Me
  loc_C024BE: MemLdStr global_100
  loc_C024C1: AryLock
  loc_C024C4: Ary1LdPr
  loc_C024C5: MemLdRfVar from_stack_1.global_88
  loc_C024C8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C024CD: AryUnlock
  loc_C024D0: FFreeAd var_B8 = ""
  loc_C024D7: FFreeVar var_C8 = ""
  loc_C024DE: FLdRfVar var_E0
  loc_C024E1: LitVarStr var_A4, "DetaDere"
  loc_C024E6: PopAdLdVar
  loc_C024E7: FLdRfVar var_D4
  loc_C024EA: FLdRfVar var_B8
  loc_C024ED: FLdPr var_274
  loc_C024F0: from_stack_1v = clsbase.RsFrmGet()
  loc_C024F5: FLdPr var_B8
  loc_C024F8:  = Me.Fields
  loc_C024FD: FLdPr var_D4
  loc_C02500: from_stack_2 = Me.Item(from_stack_1)
  loc_C02505: LitI2_Byte 0
  loc_C02507: LitVar_Missing var_F4
  loc_C0250A: LitI2_Byte 0
  loc_C0250C: FLdZeroAd var_E0
  loc_C0250F: CVarAd
  loc_C02513: PopAdLdVar
  loc_C02514: FLdPr Me
  loc_C02517: MemLdI2 global_104
  loc_C0251A: CI4UI1
  loc_C0251B: FLdPr Me
  loc_C0251E: MemLdStr global_100
  loc_C02521: AryLock
  loc_C02524: Ary1LdPr
  loc_C02525: MemLdRfVar from_stack_1.global_92
  loc_C02528: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0252D: AryUnlock
  loc_C02530: FFreeAd var_B8 = ""
  loc_C02537: FFreeVar var_C8 = ""
  loc_C0253E: FLdRfVar var_E0
  loc_C02541: LitVarStr var_A4, "ImpoLine"
  loc_C02546: PopAdLdVar
  loc_C02547: FLdRfVar var_D4
  loc_C0254A: FLdRfVar var_B8
  loc_C0254D: FLdPr var_274
  loc_C02550: from_stack_1v = clsbase.RsFrmGet()
  loc_C02555: FLdPr var_B8
  loc_C02558:  = Me.Fields
  loc_C0255D: FLdPr var_D4
  loc_C02560: from_stack_2 = Me.Item(from_stack_1)
  loc_C02565: LitI2_Byte 0
  loc_C02567: LitVar_Missing var_F4
  loc_C0256A: LitI2_Byte &HFF
  loc_C0256C: FLdZeroAd var_E0
  loc_C0256F: CVarAd
  loc_C02573: PopAdLdVar
  loc_C02574: FLdPr Me
  loc_C02577: MemLdI2 global_104
  loc_C0257A: CI4UI1
  loc_C0257B: FLdPr Me
  loc_C0257E: MemLdStr global_100
  loc_C02581: AryLock
  loc_C02584: Ary1LdPr
  loc_C02585: MemLdRfVar from_stack_1.htmFile
  loc_C02588: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0258D: AryUnlock
  loc_C02590: FFreeAd var_B8 = ""
  loc_C02597: FFreeVar var_C8 = ""
  loc_C0259E: FLdRfVar var_E0
  loc_C025A1: LitVarStr var_A4, "Neto"
  loc_C025A6: PopAdLdVar
  loc_C025A7: FLdRfVar var_D4
  loc_C025AA: FLdRfVar var_B8
  loc_C025AD: FLdPr var_274
  loc_C025B0: from_stack_1v = clsbase.RsFrmGet()
  loc_C025B5: FLdPr var_B8
  loc_C025B8:  = Me.Fields
  loc_C025BD: FLdPr var_D4
  loc_C025C0: from_stack_2 = Me.Item(from_stack_1)
  loc_C025C5: LitI2_Byte 0
  loc_C025C7: LitVar_Missing var_F4
  loc_C025CA: LitI2_Byte &HFF
  loc_C025CC: FLdZeroAd var_E0
  loc_C025CF: CVarAd
  loc_C025D3: PopAdLdVar
  loc_C025D4: FLdPr Me
  loc_C025D7: MemLdI2 global_104
  loc_C025DA: CI4UI1
  loc_C025DB: FLdPr Me
  loc_C025DE: MemLdStr global_100
  loc_C025E1: AryLock
  loc_C025E4: Ary1LdPr
  loc_C025E5: MemLdRfVar from_stack_1.global_48
  loc_C025E8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C025ED: AryUnlock
  loc_C025F0: FFreeAd var_B8 = ""
  loc_C025F7: FFreeVar var_C8 = ""
  loc_C025FE: FLdRfVar var_E0
  loc_C02601: LitVarStr var_A4, "ExpeImpu"
  loc_C02606: PopAdLdVar
  loc_C02607: FLdRfVar var_D4
  loc_C0260A: FLdRfVar var_B8
  loc_C0260D: FLdPr var_274
  loc_C02610: from_stack_1v = clsbase.RsFrmGet()
  loc_C02615: FLdPr var_B8
  loc_C02618:  = Me.Fields
  loc_C0261D: FLdPr var_D4
  loc_C02620: from_stack_2 = Me.Item(from_stack_1)
  loc_C02625: LitI2_Byte 0
  loc_C02627: LitVar_Missing var_F4
  loc_C0262A: LitI2_Byte 0
  loc_C0262C: FLdZeroAd var_E0
  loc_C0262F: CVarAd
  loc_C02633: PopAdLdVar
  loc_C02634: FLdPr Me
  loc_C02637: MemLdI2 global_104
  loc_C0263A: CI4UI1
  loc_C0263B: FLdPr Me
  loc_C0263E: MemLdStr global_100
  loc_C02641: AryLock
  loc_C02644: Ary1LdPr
  loc_C02645: MemLdRfVar from_stack_1.global_4
  loc_C02648: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C0264D: AryUnlock
  loc_C02650: FFreeAd var_B8 = ""
  loc_C02657: FFreeVar var_C8 = ""
  loc_C0265E: FLdRfVar var_E0
  loc_C02661: LitVarStr var_A4, "NumeLiqu"
  loc_C02666: PopAdLdVar
  loc_C02667: FLdRfVar var_D4
  loc_C0266A: FLdRfVar var_B8
  loc_C0266D: FLdPr var_274
  loc_C02670: from_stack_1v = clsbase.RsFrmGet()
  loc_C02675: FLdPr var_B8
  loc_C02678:  = Me.Fields
  loc_C0267D: FLdPr var_D4
  loc_C02680: from_stack_2 = Me.Item(from_stack_1)
  loc_C02685: LitI2_Byte 0
  loc_C02687: LitVar_Missing var_F4
  loc_C0268A: LitI2_Byte 0
  loc_C0268C: FLdZeroAd var_E0
  loc_C0268F: CVarAd
  loc_C02693: PopAdLdVar
  loc_C02694: FLdPr Me
  loc_C02697: MemLdI2 global_104
  loc_C0269A: CI4UI1
  loc_C0269B: FLdPr Me
  loc_C0269E: MemLdStr global_100
  loc_C026A1: AryLock
  loc_C026A4: Ary1LdPr
  loc_C026A5: MemLdRfVar from_stack_1.global_8
  loc_C026A8: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C026AD: AryUnlock
  loc_C026B0: FFreeAd var_B8 = ""
  loc_C026B7: FFreeVar var_C8 = ""
  loc_C026BE: FLdRfVar var_E0
  loc_C026C1: LitVarStr var_A4, "NumeOrpa"
  loc_C026C6: PopAdLdVar
  loc_C026C7: FLdRfVar var_D4
  loc_C026CA: FLdRfVar var_B8
  loc_C026CD: FLdPr Me
  loc_C026D0: MemLdRfVar from_stack_1.global_92
  loc_C026D3: NewIfNullPr clsbase
  loc_C026D6: from_stack_1v = clsbase.RsFrmGet()
  loc_C026DB: FLdPr var_B8
  loc_C026DE:  = Me.Fields
  loc_C026E3: FLdPr var_D4
  loc_C026E6: from_stack_2 = Me.Item(from_stack_1)
  loc_C026EB: LitI2_Byte 0
  loc_C026ED: LitVar_Missing var_F4
  loc_C026F0: LitI2_Byte 0
  loc_C026F2: FLdZeroAd var_E0
  loc_C026F5: CVarAd
  loc_C026F9: PopAdLdVar
  loc_C026FA: FLdPr Me
  loc_C026FD: MemLdI2 global_104
  loc_C02700: CI4UI1
  loc_C02701: FLdPr Me
  loc_C02704: MemLdStr global_100
  loc_C02707: AryLock
  loc_C0270A: Ary1LdPr
  loc_C0270B: MemLdRfVar from_stack_1.global_76
  loc_C0270E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02713: AryUnlock
  loc_C02716: FFreeAd var_B8 = ""
  loc_C0271D: FFreeVar var_C8 = ""
  loc_C02724: FLdRfVar var_E0
  loc_C02727: LitVarStr var_A4, "FechCaja"
  loc_C0272C: PopAdLdVar
  loc_C0272D: FLdRfVar var_D4
  loc_C02730: FLdRfVar var_B8
  loc_C02733: FLdPr var_274
  loc_C02736: from_stack_1v = clsbase.RsFrmGet()
  loc_C0273B: FLdPr var_B8
  loc_C0273E:  = Me.Fields
  loc_C02743: FLdPr var_D4
  loc_C02746: from_stack_2 = Me.Item(from_stack_1)
  loc_C0274B: LitI2_Byte 0
  loc_C0274D: LitVar_Missing var_F4
  loc_C02750: LitI2_Byte 0
  loc_C02752: FLdZeroAd var_E0
  loc_C02755: CVarAd
  loc_C02759: PopAdLdVar
  loc_C0275A: FLdPr Me
  loc_C0275D: MemLdI2 global_104
  loc_C02760: CI4UI1
  loc_C02761: FLdPr Me
  loc_C02764: MemLdStr global_100
  loc_C02767: AryLock
  loc_C0276A: Ary1LdPr
  loc_C0276B: MemLdRfVar from_stack_1.global_84
  loc_C0276E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02773: AryUnlock
  loc_C02776: FFreeAd var_B8 = ""
  loc_C0277D: FFreeVar var_C8 = ""
  loc_C02784: LitStr "SELECT NumeFact, ImpoImpu"
  loc_C02787: LitStr " FROM v_liqdeta"
  loc_C0278A: ConcatStr
  loc_C0278B: FStStrNoPop var_CC
  loc_C0278E: LitStr " WHERE PeriInfo = "
  loc_C02791: ConcatStr
  loc_C02792: CVarStr var_F4
  loc_C02795: FLdRfVar var_C8
  loc_C02798: FLdRfVar var_E0
  loc_C0279B: LitVarStr var_A4, "PeriInfo"
  loc_C027A0: PopAdLdVar
  loc_C027A1: FLdRfVar var_D4
  loc_C027A4: FLdRfVar var_B8
  loc_C027A7: FLdPr Me
  loc_C027AA: MemLdRfVar from_stack_1.global_92
  loc_C027AD: NewIfNullPr clsbase
  loc_C027B0: from_stack_1v = clsbase.RsFrmGet()
  loc_C027B5: FLdPr var_B8
  loc_C027B8:  = Me.Fields
  loc_C027BD: FLdPr var_D4
  loc_C027C0: from_stack_2 = Me.Item(from_stack_1)
  loc_C027C5: FLdPr var_E0
  loc_C027C8:  = Me.Value
  loc_C027CD: FLdRfVar var_C8
  loc_C027D0: ConcatVar var_104
  loc_C027D4: LitVarStr var_B4, " AND ExpeImpu = '"
  loc_C027D9: ConcatVar var_114
  loc_C027DD: FLdPr Me
  loc_C027E0: MemLdI2 global_104
  loc_C027E3: CI4UI1
  loc_C027E4: FLdPr Me
  loc_C027E7: MemLdStr global_100
  loc_C027EA: Ary1LdPr
  loc_C027EB: MemLdStr global_4
  loc_C027EE: CVarStr var_184
  loc_C027F1: ConcatVar var_124
  loc_C027F5: LitVarStr var_1A8, "' AND NumeLiqu = "
  loc_C027FA: ConcatVar var_1D0
  loc_C027FE: FLdPr Me
  loc_C02801: MemLdI2 global_104
  loc_C02804: CI4UI1
  loc_C02805: FLdPr Me
  loc_C02808: MemLdStr global_100
  loc_C0280B: Ary1LdPr
  loc_C0280C: MemLdStr global_8
  loc_C0280F: CVarStr var_1C0
  loc_C02812: ConcatVar var_1EC
  loc_C02816: LitVarStr var_21C, " AND CucuPers = "
  loc_C0281B: ConcatVar var_1FC
  loc_C0281F: FLdRfVar var_20C
  loc_C02822: FLdRfVar var_190
  loc_C02825: LitVarStr var_23C, "CucuPers"
  loc_C0282A: PopAdLdVar
  loc_C0282B: FLdRfVar var_18C
  loc_C0282E: FLdRfVar var_E4
  loc_C02831: FLdPr var_274
  loc_C02834: from_stack_1v = clsbase.RsFrmGet()
  loc_C02839: FLdPr var_E4
  loc_C0283C:  = Me.Fields
  loc_C02841: FLdPr var_18C
  loc_C02844: from_stack_2 = Me.Item(from_stack_1)
  loc_C02849: FLdPr var_190
  loc_C0284C:  = Me.Value
  loc_C02851: FLdRfVar var_20C
  loc_C02854: ConcatVar var_22C
  loc_C02858: LitVarStr var_25C, " ORDER BY NumeFact"
  loc_C0285D: ConcatVar var_24C
  loc_C02861: CStrVarVal var_D0
  loc_C02865: FLdPr Me
  loc_C02868: MemLdRfVar from_stack_1.global_84
  loc_C0286B: NewIfNullPr clsbase
  loc_C0286E: Call clsbase.RedefineRS(from_stack_1v)
  loc_C02873: FFreeStr var_CC = ""
  loc_C0287A: FFreeAd var_B8 = "": var_D4 = "": var_E0 = "": var_E4 = "": var_18C = ""
  loc_C02889: FFreeVar var_F4 = "": var_C8 = "": var_104 = "": var_114 = "": var_124 = "": var_1D0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_22C = ""
  loc_C028A2: FLdRfVar var_168
  loc_C028A5: FLdPr Me
  loc_C028A8: MemLdRfVar from_stack_1.global_84
  loc_C028AB: NewIfNullPr clsbase
  loc_C028AE: from_stack_1 = clsbase.RecordCount
  loc_C028B3: ILdRf var_168
  loc_C028B6: LitI4 0
  loc_C028BB: GtI4
  loc_C028BC: BranchF loc_C02A2C
  loc_C028BF: FLdRfVar var_168
  loc_C028C2: FLdPr Me
  loc_C028C5: MemLdRfVar from_stack_1.global_84
  loc_C028C8: NewIfNullPr clsbase
  loc_C028CB: from_stack_1 = clsbase.RecordCount
  loc_C028D0: LitI4 0
  loc_C028D5: ILdRf var_168
  loc_C028D8: FLdPr Me
  loc_C028DB: MemLdI2 global_104
  loc_C028DE: CI4UI1
  loc_C028DF: FLdPr Me
  loc_C028E2: MemLdStr global_100
  loc_C028E5: Ary1LdPr
  loc_C028E6: MemLdRfVar from_stack_1.global_104
  loc_C028E9: Redim
  loc_C028F3: FLdPr Me
  loc_C028F6: MemLdRfVar from_stack_1.global_84
  loc_C028F9: NewIfNullPr clsbase
  loc_C028FC: Call clsbase.MoveFirst()
  loc_C02901: LitI2_Byte 1
  loc_C02903: FLdPr Me
  loc_C02906: MemLdRfVar from_stack_1.global_108
  loc_C02909: FLdPr Me
  loc_C0290C: MemLdI2 global_104
  loc_C0290F: CI4UI1
  loc_C02910: FLdPr Me
  loc_C02913: MemLdStr global_100
  loc_C02916: Ary1LdPr
  loc_C02917: MemLdStr global_104
  loc_C0291A: LitI2_Byte 1
  loc_C0291C: FnUBound
  loc_C0291E: CI2I4
  loc_C0291F: ForI2 var_278
  loc_C02925: FLdRfVar var_E0
  loc_C02928: LitVarStr var_A4, "NumeFact"
  loc_C0292D: PopAdLdVar
  loc_C0292E: FLdRfVar var_D4
  loc_C02931: FLdRfVar var_B8
  loc_C02934: FLdPr Me
  loc_C02937: MemLdRfVar from_stack_1.global_84
  loc_C0293A: NewIfNullPr clsbase
  loc_C0293D: from_stack_1v = clsbase.RsFrmGet()
  loc_C02942: FLdPr var_B8
  loc_C02945:  = Me.Fields
  loc_C0294A: FLdPr var_D4
  loc_C0294D: from_stack_2 = Me.Item(from_stack_1)
  loc_C02952: LitI2_Byte 0
  loc_C02954: LitVar_Missing var_F4
  loc_C02957: LitI2_Byte 0
  loc_C02959: FLdZeroAd var_E0
  loc_C0295C: CVarAd
  loc_C02960: PopAdLdVar
  loc_C02961: FLdPr Me
  loc_C02964: MemLdI2 global_108
  loc_C02967: CI4UI1
  loc_C02968: FLdPr Me
  loc_C0296B: MemLdI2 global_104
  loc_C0296E: CI4UI1
  loc_C0296F: FLdPr Me
  loc_C02972: MemLdStr global_100
  loc_C02975: AryLock
  loc_C02978: Ary1LdPr
  loc_C02979: MemLdStr global_104
  loc_C0297C: AryLock
  loc_C0297F: Ary1LdPr
  loc_C02980: MemLdRfVar from_stack_1.global_0
  loc_C02983: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02988: AryUnlock
  loc_C0298B: AryUnlock
  loc_C0298E: FFreeAd var_B8 = ""
  loc_C02995: FFreeVar var_C8 = ""
  loc_C0299C: FLdRfVar var_E0
  loc_C0299F: LitVarStr var_A4, "ImpoImpu"
  loc_C029A4: PopAdLdVar
  loc_C029A5: FLdRfVar var_D4
  loc_C029A8: FLdRfVar var_B8
  loc_C029AB: FLdPr Me
  loc_C029AE: MemLdRfVar from_stack_1.global_84
  loc_C029B1: NewIfNullPr clsbase
  loc_C029B4: from_stack_1v = clsbase.RsFrmGet()
  loc_C029B9: FLdPr var_B8
  loc_C029BC:  = Me.Fields
  loc_C029C1: FLdPr var_D4
  loc_C029C4: from_stack_2 = Me.Item(from_stack_1)
  loc_C029C9: LitI2_Byte 0
  loc_C029CB: LitVar_Missing var_F4
  loc_C029CE: LitI2_Byte &HFF
  loc_C029D0: FLdZeroAd var_E0
  loc_C029D3: CVarAd
  loc_C029D7: PopAdLdVar
  loc_C029D8: FLdPr Me
  loc_C029DB: MemLdI2 global_108
  loc_C029DE: CI4UI1
  loc_C029DF: FLdPr Me
  loc_C029E2: MemLdI2 global_104
  loc_C029E5: CI4UI1
  loc_C029E6: FLdPr Me
  loc_C029E9: MemLdStr global_100
  loc_C029EC: AryLock
  loc_C029EF: Ary1LdPr
  loc_C029F0: MemLdStr global_104
  loc_C029F3: AryLock
  loc_C029F6: Ary1LdPr
  loc_C029F7: MemLdRfVar from_stack_1.global_4
  loc_C029FA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C029FF: AryUnlock
  loc_C02A02: AryUnlock
  loc_C02A05: FFreeAd var_B8 = ""
  loc_C02A0C: FFreeVar var_C8 = ""
  loc_C02A13: FLdPr Me
  loc_C02A16: MemLdRfVar from_stack_1.global_84
  loc_C02A19: NewIfNullPr clsbase
  loc_C02A1C: Call clsbase.MoveSiguiente()
  loc_C02A21: FLdPr Me
  loc_C02A24: MemLdRfVar from_stack_1.global_108
  loc_C02A27: NextI2 var_278, loc_C02925
  loc_C02A2C: LitStr "SELECT DetaBanc, NumeMoba"
  loc_C02A2F: LitStr " FROM cheque"
  loc_C02A32: ConcatStr
  loc_C02A33: FStStrNoPop var_CC
  loc_C02A36: LitStr " INNER JOIN banco ON banco.PeriInfo = cheque.PeriInfo AND banco.CodiBanc = cheque.CodiBanc"
  loc_C02A39: ConcatStr
  loc_C02A3A: FStStrNoPop var_D0
  loc_C02A3D: LitStr " WHERE ExpeImpu = '"
  loc_C02A40: ConcatStr
  loc_C02A41: FStStrNoPop var_D8
  loc_C02A44: FLdPr Me
  loc_C02A47: MemLdI2 global_104
  loc_C02A4A: CI4UI1
  loc_C02A4B: FLdPr Me
  loc_C02A4E: MemLdStr global_100
  loc_C02A51: Ary1LdPr
  loc_C02A52: MemLdStr global_4
  loc_C02A55: ConcatStr
  loc_C02A56: FStStrNoPop var_DC
  loc_C02A59: LitStr "' AND NumeLiqu = "
  loc_C02A5C: ConcatStr
  loc_C02A5D: FStStrNoPop var_128
  loc_C02A60: FLdPr Me
  loc_C02A63: MemLdI2 global_104
  loc_C02A66: CI4UI1
  loc_C02A67: FLdPr Me
  loc_C02A6A: MemLdStr global_100
  loc_C02A6D: Ary1LdPr
  loc_C02A6E: MemLdStr global_8
  loc_C02A71: ConcatStr
  loc_C02A72: FStStrNoPop var_12C
  loc_C02A75: LitStr " AND CucuPers = "
  loc_C02A78: ConcatStr
  loc_C02A79: CVarStr var_F4
  loc_C02A7C: FLdRfVar var_C8
  loc_C02A7F: FLdRfVar var_E0
  loc_C02A82: LitVarStr var_A4, "CucuPers"
  loc_C02A87: PopAdLdVar
  loc_C02A88: FLdRfVar var_D4
  loc_C02A8B: FLdRfVar var_B8
  loc_C02A8E: FLdPr var_274
  loc_C02A91: from_stack_1v = clsbase.RsFrmGet()
  loc_C02A96: FLdPr var_B8
  loc_C02A99:  = Me.Fields
  loc_C02A9E: FLdPr var_D4
  loc_C02AA1: from_stack_2 = Me.Item(from_stack_1)
  loc_C02AA6: FLdPr var_E0
  loc_C02AA9:  = Me.Value
  loc_C02AAE: FLdRfVar var_C8
  loc_C02AB1: ConcatVar var_104
  loc_C02AB5: LitVarStr var_B4, " ORDER BY DetaBanc, NumeMoba"
  loc_C02ABA: ConcatVar var_114
  loc_C02ABE: CStrVarVal var_130
  loc_C02AC2: FLdPr Me
  loc_C02AC5: MemLdRfVar from_stack_1.global_84
  loc_C02AC8: NewIfNullPr clsbase
  loc_C02ACB: Call clsbase.RedefineRS(from_stack_1v)
  loc_C02AD0: FFreeStr var_CC = "": var_D0 = "": var_D8 = "": var_DC = "": var_128 = "": var_12C = ""
  loc_C02AE1: FFreeAd var_B8 = "": var_D4 = ""
  loc_C02AEA: FFreeVar var_F4 = "": var_C8 = "": var_104 = ""
  loc_C02AF5: FLdRfVar var_168
  loc_C02AF8: FLdPr Me
  loc_C02AFB: MemLdRfVar from_stack_1.global_84
  loc_C02AFE: NewIfNullPr clsbase
  loc_C02B01: from_stack_1 = clsbase.RecordCount
  loc_C02B06: ILdRf var_168
  loc_C02B09: LitI4 0
  loc_C02B0E: GtI4
  loc_C02B0F: BranchF loc_C02C95
  loc_C02B12: LitI2_Byte &HFF
  loc_C02B14: FLdPr Me
  loc_C02B17: MemLdI2 global_104
  loc_C02B1A: CI4UI1
  loc_C02B1B: FLdPr Me
  loc_C02B1E: MemLdStr global_100
  loc_C02B21: Ary1LdPr
  loc_C02B22: MemStI2 global_96
  loc_C02B25: FLdRfVar var_168
  loc_C02B28: FLdPr Me
  loc_C02B2B: MemLdRfVar from_stack_1.global_84
  loc_C02B2E: NewIfNullPr clsbase
  loc_C02B31: from_stack_1 = clsbase.RecordCount
  loc_C02B36: LitI4 0
  loc_C02B3B: ILdRf var_168
  loc_C02B3E: FLdPr Me
  loc_C02B41: MemLdI2 global_104
  loc_C02B44: CI4UI1
  loc_C02B45: FLdPr Me
  loc_C02B48: MemLdStr global_100
  loc_C02B4B: Ary1LdPr
  loc_C02B4C: MemLdRfVar from_stack_1.global_100
  loc_C02B4F: Redim
  loc_C02B59: FLdPr Me
  loc_C02B5C: MemLdRfVar from_stack_1.global_84
  loc_C02B5F: NewIfNullPr clsbase
  loc_C02B62: Call clsbase.MoveFirst()
  loc_C02B67: LitI2_Byte 1
  loc_C02B69: FLdPr Me
  loc_C02B6C: MemLdRfVar from_stack_1.global_106
  loc_C02B6F: FLdPr Me
  loc_C02B72: MemLdI2 global_104
  loc_C02B75: CI4UI1
  loc_C02B76: FLdPr Me
  loc_C02B79: MemLdStr global_100
  loc_C02B7C: Ary1LdPr
  loc_C02B7D: MemLdStr global_100
  loc_C02B80: LitI2_Byte 1
  loc_C02B82: FnUBound
  loc_C02B84: CI2I4
  loc_C02B85: ForI2 var_27C
  loc_C02B8B: FLdRfVar var_E0
  loc_C02B8E: LitVarStr var_A4, "DetaBanc"
  loc_C02B93: PopAdLdVar
  loc_C02B94: FLdRfVar var_D4
  loc_C02B97: FLdRfVar var_B8
  loc_C02B9A: FLdPr Me
  loc_C02B9D: MemLdRfVar from_stack_1.global_84
  loc_C02BA0: NewIfNullPr clsbase
  loc_C02BA3: from_stack_1v = clsbase.RsFrmGet()
  loc_C02BA8: FLdPr var_B8
  loc_C02BAB:  = Me.Fields
  loc_C02BB0: FLdPr var_D4
  loc_C02BB3: from_stack_2 = Me.Item(from_stack_1)
  loc_C02BB8: LitI2_Byte 0
  loc_C02BBA: LitVar_Missing var_F4
  loc_C02BBD: LitI2_Byte 0
  loc_C02BBF: FLdZeroAd var_E0
  loc_C02BC2: CVarAd
  loc_C02BC6: PopAdLdVar
  loc_C02BC7: FLdPr Me
  loc_C02BCA: MemLdI2 global_106
  loc_C02BCD: CI4UI1
  loc_C02BCE: FLdPr Me
  loc_C02BD1: MemLdI2 global_104
  loc_C02BD4: CI4UI1
  loc_C02BD5: FLdPr Me
  loc_C02BD8: MemLdStr global_100
  loc_C02BDB: AryLock
  loc_C02BDE: Ary1LdPr
  loc_C02BDF: MemLdStr global_100
  loc_C02BE2: AryLock
  loc_C02BE5: Ary1LdPr
  loc_C02BE6: MemLdRfVar from_stack_1.global_0
  loc_C02BE9: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02BEE: AryUnlock
  loc_C02BF1: AryUnlock
  loc_C02BF4: FFreeAd var_B8 = ""
  loc_C02BFB: FFreeVar var_C8 = ""
  loc_C02C02: FLdRfVar var_E0
  loc_C02C05: LitVarStr var_A4, "NumeMoba"
  loc_C02C0A: PopAdLdVar
  loc_C02C0B: FLdRfVar var_D4
  loc_C02C0E: FLdRfVar var_B8
  loc_C02C11: FLdPr Me
  loc_C02C14: MemLdRfVar from_stack_1.global_84
  loc_C02C17: NewIfNullPr clsbase
  loc_C02C1A: from_stack_1v = clsbase.RsFrmGet()
  loc_C02C1F: FLdPr var_B8
  loc_C02C22:  = Me.Fields
  loc_C02C27: FLdPr var_D4
  loc_C02C2A: from_stack_2 = Me.Item(from_stack_1)
  loc_C02C2F: LitI2_Byte 0
  loc_C02C31: LitVar_Missing var_F4
  loc_C02C34: LitI2_Byte 0
  loc_C02C36: FLdZeroAd var_E0
  loc_C02C39: CVarAd
  loc_C02C3D: PopAdLdVar
  loc_C02C3E: FLdPr Me
  loc_C02C41: MemLdI2 global_106
  loc_C02C44: CI4UI1
  loc_C02C45: FLdPr Me
  loc_C02C48: MemLdI2 global_104
  loc_C02C4B: CI4UI1
  loc_C02C4C: FLdPr Me
  loc_C02C4F: MemLdStr global_100
  loc_C02C52: AryLock
  loc_C02C55: Ary1LdPr
  loc_C02C56: MemLdStr global_100
  loc_C02C59: AryLock
  loc_C02C5C: Ary1LdPr
  loc_C02C5D: MemLdRfVar from_stack_1.global_4
  loc_C02C60: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_C02C65: AryUnlock
  loc_C02C68: AryUnlock
  loc_C02C6B: FFreeAd var_B8 = ""
  loc_C02C72: FFreeVar var_C8 = ""
  loc_C02C79: FLdPr Me
  loc_C02C7C: MemLdRfVar from_stack_1.global_84
  loc_C02C7F: NewIfNullPr clsbase
  loc_C02C82: Call clsbase.MoveSiguiente()
  loc_C02C87: FLdPr Me
  loc_C02C8A: MemLdRfVar from_stack_1.global_106
  loc_C02C8D: NextI2 var_27C, loc_C02B8B
  loc_C02C92: Branch loc_C02CA8
  loc_C02C95: LitI2_Byte 0
  loc_C02C97: FLdPr Me
  loc_C02C9A: MemLdI2 global_104
  loc_C02C9D: CI4UI1
  loc_C02C9E: FLdPr Me
  loc_C02CA1: MemLdStr global_100
  loc_C02CA4: Ary1LdPr
  loc_C02CA5: MemStI2 global_96
  loc_C02CA8: LitNothing
  loc_C02CAA: FStAd var_274 
  loc_C02CAE: FLdPr Me
  loc_C02CB1: MemLdRfVar from_stack_1.global_80
  loc_C02CB4: NewIfNullPr clsbase
  loc_C02CB7: Call clsbase.MoveSiguiente()
  loc_C02CBC: FLdPr Me
  loc_C02CBF: MemLdRfVar from_stack_1.global_104
  loc_C02CC2: NextI2 var_270, loc_C0208D
  loc_C02CC7: FLdPr Me
  loc_C02CCA: MemLdRfVar from_stack_1.global_92
  loc_C02CCD: NewIfNullPr clsbase
  loc_C02CD0: Call clsbase.MoveSiguiente()
  loc_C02CD5: FLdRfVar var_92
  loc_C02CD8: FLdPr Me
  loc_C02CDB: MemLdRfVar from_stack_1.global_92
  loc_C02CDE: NewIfNullPr clsbase
  loc_C02CE1: from_stack_1 = clsbase.EOF
  loc_C02CE6: FLdI2 var_92
  loc_C02CE9: NotI4
  loc_C02CEA: BranchT loc_C01E10
  loc_C02CED: LitI2_Byte &HFF
  loc_C02CEF: FLdPr Me
  loc_C02CF2: MemStI2 bGenerado
  loc_C02CF5: LitI4 0
  loc_C02CFA: CI2I4
  loc_C02CFB: FLdPr Me
  loc_C02CFE: Me.MousePointer = from_stack_1
  loc_C02D03: LitVarStr var_A4, vbNullString
  loc_C02D08: PopAdLdVar
  loc_C02D09: FLdPr Me
  loc_C02D0C: VCallAd Control_ID_statusBar
  loc_C02D0F: FStAdFunc var_B8
  loc_C02D12: FLdPr var_B8
  loc_C02D15: LateIdSt
  loc_C02D1A: FFree1Ad var_B8
  loc_C02D1D: ExitProcHresult
  loc_C02D1E: FnAbsCy
End Sub

Public Sub GeneraHTML() 'A2A500
  'Data Table: 4BB4C8
  loc_A2A334: FLdRfVar var_8C
  loc_A2A337: LitI2_Byte 0
  loc_A2A339: LitI2_Byte &HFF
  loc_A2A33B: ImpAdLdI4 MemVar_C3D83C
  loc_A2A33E: FLdPr Me
  loc_A2A341: MemLdRfVar from_stack_1.global_96
  loc_A2A344: NewIfNullPr IFileSystem3
  loc_A2A347: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2A34C: ILdRf var_8C
  loc_A2A34F: FLdPr Me
  loc_A2A352: MemStVarAd
  loc_A2A356: FFree1Ad var_8C
  loc_A2A359: LitI2_Byte 1
  loc_A2A35B: CUI1I2
  loc_A2A35D: FLdRfVar var_86
  loc_A2A360: FLdPr Me
  loc_A2A363: VCallAd Control_ID_mskCopias
  loc_A2A366: FStAdFunc var_8C
  loc_A2A369: FLdPr var_8C
  loc_A2A36C: LateIdLdVar var_9C DispID_22 0
  loc_A2A373: PopAd
  loc_A2A375: FLdPr Me
  loc_A2A378: VCallAd Control_ID_mskCopias
  loc_A2A37B: FStAdFunc var_A4
  loc_A2A37E: FLdPr var_A4
  loc_A2A381: LateIdLdVar var_B4 DispID_22 0
  loc_A2A388: CStrVarTmp
  loc_A2A389: CVarStr var_F4
  loc_A2A38C: LitVarI2 var_E4, 1
  loc_A2A391: FLdRfVar var_9C
  loc_A2A394: CStrVarTmp
  loc_A2A395: FStStrNoPop var_A0
  loc_A2A398: LitStr "_"
  loc_A2A39B: EqStr
  loc_A2A39D: CVarBoolI2 var_C4
  loc_A2A3A1: FLdRfVar var_104
  loc_A2A3A4: ImpAdCallFPR4  = IIf(, , )
  loc_A2A3A9: FLdRfVar var_104
  loc_A2A3AC: CUI1Var
  loc_A2A3AE: FFree1Str var_A0
  loc_A2A3B1: FFreeAd var_8C = ""
  loc_A2A3B8: FFreeVar var_9C = "": var_B4 = "": var_C4 = "": var_E4 = "": var_F4 = ""
  loc_A2A3C7: ForUI1 var_108
  loc_A2A3CD: Call Proc_169_26_9B98D4()
  loc_A2A3D2: LitI2_Byte 1
  loc_A2A3D4: FLdPr Me
  loc_A2A3D7: MemLdRfVar from_stack_1.global_104
  loc_A2A3DA: FLdPr Me
  loc_A2A3DD: MemLdStr global_100
  loc_A2A3E0: LitI2_Byte 1
  loc_A2A3E2: FnUBound
  loc_A2A3E4: CI2I4
  loc_A2A3E5: ForI2 var_10C
  loc_A2A3EB: FLdRfVar var_10E
  loc_A2A3EE: FLdPr Me
  loc_A2A3F1: VCallAd Control_ID_chkUnaretencionxpagina
  loc_A2A3F4: FStAdFunc var_8C
  loc_A2A3F7: FLdPr var_8C
  loc_A2A3FA:  = Me.Value
  loc_A2A3FF: FLdI2 var_10E
  loc_A2A402: CI4UI1
  loc_A2A403: LitI4 0
  loc_A2A408: EqI4
  loc_A2A409: FFree1Ad var_8C
  loc_A2A40C: BranchF loc_A2A493
  loc_A2A40F: FLdPr Me
  loc_A2A412: MemLdI2 global_104
  loc_A2A415: LitI2_Byte 1
  loc_A2A417: NeI2
  loc_A2A418: FLdPr Me
  loc_A2A41B: MemLdI2 global_104
  loc_A2A41E: LitI2_Byte 2
  loc_A2A420: ModI2
  loc_A2A421: LitI2_Byte 1
  loc_A2A423: EqI2
  loc_A2A424: AndI4
  loc_A2A425: BranchF loc_A2A43C
  loc_A2A428: LitVarStr var_C4, "<div style=""page-break-before:always""></div>"
  loc_A2A42D: PopAdLdVar
  loc_A2A42E: FLdPr Me
  loc_A2A431: MemLdRfVar from_stack_1.htmFile
  loc_A2A434: LdPrVar
  loc_A2A436: LateMemCall
  loc_A2A43C: LitVarStr var_C4, "   <br>"
  loc_A2A441: PopAdLdVar
  loc_A2A442: FLdPr Me
  loc_A2A445: MemLdRfVar from_stack_1.htmFile
  loc_A2A448: LdPrVar
  loc_A2A44A: LateMemCall
  loc_A2A450: FLdPr Me
  loc_A2A453: MemLdI2 global_104
  loc_A2A456: LitI2_Byte 1
  loc_A2A458: GtI2
  loc_A2A459: FLdPr Me
  loc_A2A45C: MemLdI2 global_104
  loc_A2A45F: CI4UI1
  loc_A2A460: FLdPr Me
  loc_A2A463: MemLdStr global_100
  loc_A2A466: LitI2_Byte 1
  loc_A2A468: FnUBound
  loc_A2A46A: LtI4
  loc_A2A46B: AndI4
  loc_A2A46C: FLdPr Me
  loc_A2A46F: MemLdI2 global_104
  loc_A2A472: LitI2_Byte 2
  loc_A2A474: ModI2
  loc_A2A475: LitI2_Byte 0
  loc_A2A477: EqI2
  loc_A2A478: AndI4
  loc_A2A479: BranchF loc_A2A490
  loc_A2A47C: LitVarStr var_C4, "<div style=""border-top:2px dotted"">&nbsp;</div>"
  loc_A2A481: PopAdLdVar
  loc_A2A482: FLdPr Me
  loc_A2A485: MemLdRfVar from_stack_1.htmFile
  loc_A2A488: LdPrVar
  loc_A2A48A: LateMemCall
  loc_A2A490: Branch loc_A2A4C6
  loc_A2A493: FLdI2 var_88
  loc_A2A496: BranchF loc_A2A4AD
  loc_A2A499: LitVarStr var_C4, "<div style=""page-break-before:always""></div>"
  loc_A2A49E: PopAdLdVar
  loc_A2A49F: FLdPr Me
  loc_A2A4A2: MemLdRfVar from_stack_1.htmFile
  loc_A2A4A5: LdPrVar
  loc_A2A4A7: LateMemCall
  loc_A2A4AD: LitI2_Byte &HFF
  loc_A2A4AF: FStI2 var_88
  loc_A2A4B2: LitVarStr var_C4, "   <br>"
  loc_A2A4B7: PopAdLdVar
  loc_A2A4B8: FLdPr Me
  loc_A2A4BB: MemLdRfVar from_stack_1.htmFile
  loc_A2A4BE: LdPrVar
  loc_A2A4C0: LateMemCall
  loc_A2A4C6: FLdPr Me
  loc_A2A4C9: MemLdI2 global_104
  loc_A2A4CC: Call Proc_169_27_B8CC68()
  loc_A2A4D1: FLdPr Me
  loc_A2A4D4: MemLdRfVar from_stack_1.global_104
  loc_A2A4D7: NextI2 var_10C, loc_A2A3EB
  loc_A2A4DC: FLdRfVar var_86
  loc_A2A4DF: NextUI1
  loc_A2A4E5: Call Proc_169_28_97349C()
  loc_A2A4EA: FLdPr Me
  loc_A2A4ED: MemLdRfVar from_stack_1.htmFile
  loc_A2A4F0: LdPrVar
  loc_A2A4F2: LateMemCall
  loc_A2A4F8: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A2A4FD: ExitProcHresult
  loc_A2A4FE: FStAdFunc arg_5048
End Sub

Private Function Proc_169_26_9B98D4() '9B98D4
  'Data Table: 4BB4C8
  loc_9B981C: LitVarStr var_94, "<html>"
  loc_9B9821: PopAdLdVar
  loc_9B9822: FLdPr Me
  loc_9B9825: MemLdRfVar from_stack_1.htmFile
  loc_9B9828: LdPrVar
  loc_9B982A: LateMemCall
  loc_9B9830: LitVarStr var_94, "<head>"
  loc_9B9835: PopAdLdVar
  loc_9B9836: FLdPr Me
  loc_9B9839: MemLdRfVar from_stack_1.htmFile
  loc_9B983C: LdPrVar
  loc_9B983E: LateMemCall
  loc_9B9844: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_9B9849: PopAdLdVar
  loc_9B984A: FLdPr Me
  loc_9B984D: MemLdRfVar from_stack_1.htmFile
  loc_9B9850: LdPrVar
  loc_9B9852: LateMemCall
  loc_9B9858: LitStr "<title>"
  loc_9B985B: FLdRfVar var_A8
  loc_9B985E: FLdPr Me
  loc_9B9861:  = Me.Caption
  loc_9B9866: ILdRf var_A8
  loc_9B9869: ConcatStr
  loc_9B986A: FStStrNoPop var_AC
  loc_9B986D: LitStr "</title>"
  loc_9B9870: ConcatStr
  loc_9B9871: CVarStr var_BC
  loc_9B9874: PopAdLdVar
  loc_9B9875: FLdPr Me
  loc_9B9878: MemLdRfVar from_stack_1.htmFile
  loc_9B987B: LdPrVar
  loc_9B987D: LateMemCall
  loc_9B9883: FFreeStr var_A8 = ""
  loc_9B988A: FFree1Var var_BC = ""
  loc_9B988D: LitStr vbNullString
  loc_9B9890: ILdRf Me
  loc_9B9893: CastAd
  loc_9B9896: FStAdFunc var_C0
  loc_9B9899: FLdRfVar var_C0
  loc_9B989C: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_9B98A1: FFree1Ad var_C0
  loc_9B98A4: LitI4 0
  loc_9B98A9: FStStrCopy var_AC
  loc_9B98AC: FLdRfVar var_AC
  loc_9B98AF: LitI4 0
  loc_9B98B4: FStStrCopy var_A8
  loc_9B98B7: FLdRfVar var_A8
  loc_9B98BA: LitI2_Byte 0
  loc_9B98BC: PopTmpLdAd2 var_C2
  loc_9B98BF: FLdPr Me
  loc_9B98C2: MemLdRfVar from_stack_1.htmFile
  loc_9B98C5: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_9B98CA: FFreeStr var_A8 = ""
  loc_9B98D1: ExitProcHresult
  loc_9B98D2: CExtInstUnk
End Function

Private Function Proc_169_27_B8CC68(arg_C) 'B8CC68
  'Data Table: 4BB4C8
  loc_B8BE18: LitI2_Byte 6
  loc_B8BE1A: CStrUI1
  loc_B8BE1C: FStStr var_88
  loc_B8BE1F: FLdI2 arg_C
  loc_B8BE22: CI4UI1
  loc_B8BE23: FLdPr Me
  loc_B8BE26: MemLdStr global_100
  loc_B8BE29: AryLock
  loc_B8BE2C: Ary1LdRf
  loc_B8BE2D: FStR4 var_90
  loc_B8BE30: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_B8BE35: PopAdLdVar
  loc_B8BE36: FLdPr Me
  loc_B8BE39: MemLdRfVar from_stack_1.htmFile
  loc_B8BE3C: LdPrVar
  loc_B8BE3E: LateMemCall
  loc_B8BE44: LitVarStr var_A0, "  <tr valign=""baseline"">"
  loc_B8BE49: PopAdLdVar
  loc_B8BE4A: FLdPr Me
  loc_B8BE4D: MemLdRfVar from_stack_1.htmFile
  loc_B8BE50: LdPrVar
  loc_B8BE52: LateMemCall
  loc_B8BE58: LitVarStr var_B0, "    <th colspan=""2"" align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_B8BE5D: LitVarStr var_A0, "Municipalidad de Guaymallén"
  loc_B8BE62: FStVarCopyObj var_C0
  loc_B8BE65: FLdRfVar var_C0
  loc_B8BE68: FLdRfVar var_D0
  loc_B8BE6B: ImpAdCallFPR4  = Ucase()
  loc_B8BE70: FLdRfVar var_D0
  loc_B8BE73: ConcatVar var_E0
  loc_B8BE77: LitVarStr var_F0, "<br><br>"
  loc_B8BE7C: ConcatVar var_100
  loc_B8BE80: PopAdLdVar
  loc_B8BE81: FLdPr Me
  loc_B8BE84: MemLdRfVar from_stack_1.htmFile
  loc_B8BE87: LdPrVar
  loc_B8BE89: LateMemCall
  loc_B8BE8F: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_B8BE9A: LitVarStr var_A0, "    </th>"
  loc_B8BE9F: PopAdLdVar
  loc_B8BEA0: FLdPr Me
  loc_B8BEA3: MemLdRfVar from_stack_1.htmFile
  loc_B8BEA6: LdPrVar
  loc_B8BEA8: LateMemCall
  loc_B8BEAE: LitVarStr var_A0, "  </tr>"
  loc_B8BEB3: PopAdLdVar
  loc_B8BEB4: FLdPr Me
  loc_B8BEB7: MemLdRfVar from_stack_1.htmFile
  loc_B8BEBA: LdPrVar
  loc_B8BEBC: LateMemCall
  loc_B8BEC2: LitVarStr var_A0, "</table>"
  loc_B8BEC7: PopAdLdVar
  loc_B8BEC8: FLdPr Me
  loc_B8BECB: MemLdRfVar from_stack_1.htmFile
  loc_B8BECE: LdPrVar
  loc_B8BED0: LateMemCall
  loc_B8BED6: LitVarStr var_A0, "<br>"
  loc_B8BEDB: PopAdLdVar
  loc_B8BEDC: FLdPr Me
  loc_B8BEDF: MemLdRfVar from_stack_1.htmFile
  loc_B8BEE2: LdPrVar
  loc_B8BEE4: LateMemCall
  loc_B8BEEA: LitVarStr var_A0, "<table width=""100" & Chr(37) & """ border=""2"" align=""center"" cellpadding=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B8BEEF: PopAdLdVar
  loc_B8BEF0: FLdPr Me
  loc_B8BEF3: MemLdRfVar from_stack_1.htmFile
  loc_B8BEF6: LdPrVar
  loc_B8BEF8: LateMemCall
  loc_B8BEFE: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_B8BF03: PopAdLdVar
  loc_B8BF04: FLdPr Me
  loc_B8BF07: MemLdRfVar from_stack_1.htmFile
  loc_B8BF0A: LdPrVar
  loc_B8BF0C: LateMemCall
  loc_B8BF12: FMemLdR4 var_90(84)
  loc_B8BF17: LitStr vbNullString
  loc_B8BF1A: NeStr
  loc_B8BF1C: BranchF loc_B8BF4A
  loc_B8BF1F: LitStr "<br>Fecha de pago: "
  loc_B8BF22: FMemLdR4 var_90(84)
  loc_B8BF27: ConcatStr
  loc_B8BF28: FStStrNoPop var_114
  loc_B8BF2B: LitStr "</tr>"
  loc_B8BF2E: ConcatStr
  loc_B8BF2F: CVarStr var_C0
  loc_B8BF32: PopAdLdVar
  loc_B8BF33: FLdPr Me
  loc_B8BF36: MemLdRfVar from_stack_1.htmFile
  loc_B8BF39: LdPrVar
  loc_B8BF3B: LateMemCall
  loc_B8BF41: FFree1Str var_114
  loc_B8BF44: FFree1Var var_C0 = ""
  loc_B8BF47: Branch loc_B8BF5E
  loc_B8BF4A: LitVarStr var_A0, "<br>Fecha de pago:......../......../............</tr>"
  loc_B8BF4F: PopAdLdVar
  loc_B8BF50: FLdPr Me
  loc_B8BF53: MemLdRfVar from_stack_1.htmFile
  loc_B8BF56: LdPrVar
  loc_B8BF58: LateMemCall
  loc_B8BF5E: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_B8BF63: PopAdLdVar
  loc_B8BF64: FLdPr Me
  loc_B8BF67: MemLdRfVar from_stack_1.htmFile
  loc_B8BF6A: LdPrVar
  loc_B8BF6C: LateMemCall
  loc_B8BF72: LitStr "    <th colspan="""
  loc_B8BF75: ILdRf var_88
  loc_B8BF78: ConcatStr
  loc_B8BF79: FStStrNoPop var_114
  loc_B8BF7C: LitStr """>Constancia de Retención - "
  loc_B8BF7F: ConcatStr
  loc_B8BF80: FStStrNoPop var_118
  loc_B8BF83: FMemLdR4 var_90(20)
  loc_B8BF88: ConcatStr
  loc_B8BF89: CVarStr var_C0
  loc_B8BF8C: PopAdLdVar
  loc_B8BF8D: FLdPr Me
  loc_B8BF90: MemLdRfVar from_stack_1.htmFile
  loc_B8BF93: LdPrVar
  loc_B8BF95: LateMemCall
  loc_B8BF9B: FFreeStr var_114 = ""
  loc_B8BFA2: FFree1Var var_C0 = ""
  loc_B8BFA5: LitStr "    <div align=""right"">Certif. Nro "
  loc_B8BFA8: FMemLdR4 var_90(12)
  loc_B8BFAD: ConcatStr
  loc_B8BFAE: FStStrNoPop var_114
  loc_B8BFB1: LitStr "</div></th>"
  loc_B8BFB4: ConcatStr
  loc_B8BFB5: CVarStr var_C0
  loc_B8BFB8: PopAdLdVar
  loc_B8BFB9: FLdPr Me
  loc_B8BFBC: MemLdRfVar from_stack_1.htmFile
  loc_B8BFBF: LdPrVar
  loc_B8BFC1: LateMemCall
  loc_B8BFC7: FFree1Str var_114
  loc_B8BFCA: FFree1Var var_C0 = ""
  loc_B8BFCD: LitVarStr var_A0, "  </tr>"
  loc_B8BFD2: PopAdLdVar
  loc_B8BFD3: FLdPr Me
  loc_B8BFD6: MemLdRfVar from_stack_1.htmFile
  loc_B8BFD9: LdPrVar
  loc_B8BFDB: LateMemCall
  loc_B8BFE1: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_B8BFE6: PopAdLdVar
  loc_B8BFE7: FLdPr Me
  loc_B8BFEA: MemLdRfVar from_stack_1.htmFile
  loc_B8BFED: LdPrVar
  loc_B8BFEF: LateMemCall
  loc_B8BFF5: LitStr "    <th colspan="""
  loc_B8BFF8: ILdRf var_88
  loc_B8BFFB: ConcatStr
  loc_B8BFFC: FStStrNoPop var_114
  loc_B8BFFF: LitStr """ class=""NormalEncabezado"">Datos del Agente de Retención</th>"
  loc_B8C002: ConcatStr
  loc_B8C003: CVarStr var_C0
  loc_B8C006: PopAdLdVar
  loc_B8C007: FLdPr Me
  loc_B8C00A: MemLdRfVar from_stack_1.htmFile
  loc_B8C00D: LdPrVar
  loc_B8C00F: LateMemCall
  loc_B8C015: FFree1Str var_114
  loc_B8C018: FFree1Var var_C0 = ""
  loc_B8C01B: LitVarStr var_A0, "  </tr>"
  loc_B8C020: PopAdLdVar
  loc_B8C021: FLdPr Me
  loc_B8C024: MemLdRfVar from_stack_1.htmFile
  loc_B8C027: LdPrVar
  loc_B8C029: LateMemCall
  loc_B8C02F: LitVarStr var_A0, "  <tr>"
  loc_B8C034: PopAdLdVar
  loc_B8C035: FLdPr Me
  loc_B8C038: MemLdRfVar from_stack_1.htmFile
  loc_B8C03B: LdPrVar
  loc_B8C03D: LateMemCall
  loc_B8C043: LitStr "    <th colspan="""
  loc_B8C046: ILdRf var_88
  loc_B8C049: ConcatStr
  loc_B8C04A: FStStrNoPop var_114
  loc_B8C04D: LitStr """ align=""left""><strong>"
  loc_B8C050: ConcatStr
  loc_B8C051: CVarStr var_E0
  loc_B8C054: LitVarStr var_A0, "Municipalidad de Guaymallén"
  loc_B8C059: FStVarCopyObj var_C0
  loc_B8C05C: FLdRfVar var_C0
  loc_B8C05F: FLdRfVar var_D0
  loc_B8C062: ImpAdCallFPR4  = Ucase()
  loc_B8C067: FLdRfVar var_D0
  loc_B8C06A: ConcatVar var_100
  loc_B8C06E: LitVarStr var_B0, "</strong><br>"
  loc_B8C073: ConcatVar var_128
  loc_B8C077: PopAdLdVar
  loc_B8C078: FLdPr Me
  loc_B8C07B: MemLdRfVar from_stack_1.htmFile
  loc_B8C07E: LdPrVar
  loc_B8C080: LateMemCall
  loc_B8C086: FFree1Str var_114
  loc_B8C089: FFreeVar var_C0 = "": var_E0 = "": var_D0 = "": var_100 = ""
  loc_B8C096: LitStr "    CUIT: "
  loc_B8C099: LitStr "30-99914707-7"
  loc_B8C09C: ConcatStr
  loc_B8C09D: FStStrNoPop var_114
  loc_B8C0A0: LitStr "<br>"
  loc_B8C0A3: ConcatStr
  loc_B8C0A4: CVarStr var_C0
  loc_B8C0A7: PopAdLdVar
  loc_B8C0A8: FLdPr Me
  loc_B8C0AB: MemLdRfVar from_stack_1.htmFile
  loc_B8C0AE: LdPrVar
  loc_B8C0B0: LateMemCall
  loc_B8C0B6: FFree1Str var_114
  loc_B8C0B9: FFree1Var var_C0 = ""
  loc_B8C0BC: LitStr "    Agente de Retención N&ordm;: "
  loc_B8C0BF: LitStr "934461"
  loc_B8C0C2: ConcatStr
  loc_B8C0C3: FStStrNoPop var_114
  loc_B8C0C6: LitStr "<br>"
  loc_B8C0C9: ConcatStr
  loc_B8C0CA: CVarStr var_C0
  loc_B8C0CD: PopAdLdVar
  loc_B8C0CE: FLdPr Me
  loc_B8C0D1: MemLdRfVar from_stack_1.htmFile
  loc_B8C0D4: LdPrVar
  loc_B8C0D6: LateMemCall
  loc_B8C0DC: FFree1Str var_114
  loc_B8C0DF: FFree1Var var_C0 = ""
  loc_B8C0E2: LitVarStr var_B0, "    Domicilio Fiscal en Mendoza: "
  loc_B8C0E7: LitVarStr var_A0, "Libertad Nº 720"
  loc_B8C0EC: FStVarCopyObj var_C0
  loc_B8C0EF: FLdRfVar var_C0
  loc_B8C0F2: FLdRfVar var_D0
  loc_B8C0F5: ImpAdCallFPR4  = Ucase()
  loc_B8C0FA: FLdRfVar var_D0
  loc_B8C0FD: ConcatVar var_E0
  loc_B8C101: PopAdLdVar
  loc_B8C102: FLdPr Me
  loc_B8C105: MemLdRfVar from_stack_1.htmFile
  loc_B8C108: LdPrVar
  loc_B8C10A: LateMemCall
  loc_B8C110: FFreeVar var_C0 = "": var_D0 = ""
  loc_B8C119: LitVarStr var_A0, "    </th>"
  loc_B8C11E: PopAdLdVar
  loc_B8C11F: FLdPr Me
  loc_B8C122: MemLdRfVar from_stack_1.htmFile
  loc_B8C125: LdPrVar
  loc_B8C127: LateMemCall
  loc_B8C12D: LitVarStr var_A0, "  </tr>"
  loc_B8C132: PopAdLdVar
  loc_B8C133: FLdPr Me
  loc_B8C136: MemLdRfVar from_stack_1.htmFile
  loc_B8C139: LdPrVar
  loc_B8C13B: LateMemCall
  loc_B8C141: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_B8C146: PopAdLdVar
  loc_B8C147: FLdPr Me
  loc_B8C14A: MemLdRfVar from_stack_1.htmFile
  loc_B8C14D: LdPrVar
  loc_B8C14F: LateMemCall
  loc_B8C155: LitStr "    <th colspan="""
  loc_B8C158: ILdRf var_88
  loc_B8C15B: ConcatStr
  loc_B8C15C: FStStrNoPop var_114
  loc_B8C15F: LitStr """ align=""center"">Datos del Sujeto Retenido </th>"
  loc_B8C162: ConcatStr
  loc_B8C163: CVarStr var_C0
  loc_B8C166: PopAdLdVar
  loc_B8C167: FLdPr Me
  loc_B8C16A: MemLdRfVar from_stack_1.htmFile
  loc_B8C16D: LdPrVar
  loc_B8C16F: LateMemCall
  loc_B8C175: FFree1Str var_114
  loc_B8C178: FFree1Var var_C0 = ""
  loc_B8C17B: LitVarStr var_A0, "  </tr>"
  loc_B8C180: PopAdLdVar
  loc_B8C181: FLdPr Me
  loc_B8C184: MemLdRfVar from_stack_1.htmFile
  loc_B8C187: LdPrVar
  loc_B8C189: LateMemCall
  loc_B8C18F: LitVarStr var_A0, "  <tr>"
  loc_B8C194: PopAdLdVar
  loc_B8C195: FLdPr Me
  loc_B8C198: MemLdRfVar from_stack_1.htmFile
  loc_B8C19B: LdPrVar
  loc_B8C19D: LateMemCall
  loc_B8C1A3: LitStr "    <th colspan="""
  loc_B8C1A6: ILdRf var_88
  loc_B8C1A9: ConcatStr
  loc_B8C1AA: FStStrNoPop var_114
  loc_B8C1AD: LitStr """ align=""left""><strong>"
  loc_B8C1B0: ConcatStr
  loc_B8C1B1: FStStrNoPop var_118
  loc_B8C1B4: FMemLdR4 var_90(24)
  loc_B8C1B9: ConcatStr
  loc_B8C1BA: FStStrNoPop var_12C
  loc_B8C1BD: LitStr "</strong><br>"
  loc_B8C1C0: ConcatStr
  loc_B8C1C1: CVarStr var_C0
  loc_B8C1C4: PopAdLdVar
  loc_B8C1C5: FLdPr Me
  loc_B8C1C8: MemLdRfVar from_stack_1.htmFile
  loc_B8C1CB: LdPrVar
  loc_B8C1CD: LateMemCall
  loc_B8C1D3: FFreeStr var_114 = "": var_118 = ""
  loc_B8C1DC: FFree1Var var_C0 = ""
  loc_B8C1DF: LitStr "      CUIT: "
  loc_B8C1E2: FMemLdR4 var_90(32)
  loc_B8C1E7: ConcatStr
  loc_B8C1E8: FStStrNoPop var_114
  loc_B8C1EB: LitStr "<br>"
  loc_B8C1EE: ConcatStr
  loc_B8C1EF: CVarStr var_C0
  loc_B8C1F2: PopAdLdVar
  loc_B8C1F3: FLdPr Me
  loc_B8C1F6: MemLdRfVar from_stack_1.htmFile
  loc_B8C1F9: LdPrVar
  loc_B8C1FB: LateMemCall
  loc_B8C201: FFree1Str var_114
  loc_B8C204: FFree1Var var_C0 = ""
  loc_B8C207: LitStr "      Nro Inscripción: "
  loc_B8C20A: FMemLdR4 var_90(36)
  loc_B8C20F: ConcatStr
  loc_B8C210: FStStrNoPop var_114
  loc_B8C213: LitStr "<br>"
  loc_B8C216: ConcatStr
  loc_B8C217: CVarStr var_C0
  loc_B8C21A: PopAdLdVar
  loc_B8C21B: FLdPr Me
  loc_B8C21E: MemLdRfVar from_stack_1.htmFile
  loc_B8C221: LdPrVar
  loc_B8C223: LateMemCall
  loc_B8C229: FFree1Str var_114
  loc_B8C22C: FFree1Var var_C0 = ""
  loc_B8C22F: LitStr "      Domicilio Fiscal: "
  loc_B8C232: FMemLdR4 var_90(28)
  loc_B8C237: ConcatStr
  loc_B8C238: FStStrNoPop var_114
  loc_B8C23B: LitStr "<br>"
  loc_B8C23E: ConcatStr
  loc_B8C23F: CVarStr var_C0
  loc_B8C242: PopAdLdVar
  loc_B8C243: FLdPr Me
  loc_B8C246: MemLdRfVar from_stack_1.htmFile
  loc_B8C249: LdPrVar
  loc_B8C24B: LateMemCall
  loc_B8C251: FFree1Str var_114
  loc_B8C254: FFree1Var var_C0 = ""
  loc_B8C257: LitStr "      Expediente: "
  loc_B8C25A: FMemLdR4 var_90(4)
  loc_B8C25F: ConcatStr
  loc_B8C260: FStStrNoPop var_114
  loc_B8C263: LitStr " - Liquidación: "
  loc_B8C266: ConcatStr
  loc_B8C267: FStStrNoPop var_118
  loc_B8C26A: FMemLdR4 var_90(8)
  loc_B8C26F: ConcatStr
  loc_B8C270: FStStrNoPop var_12C
  loc_B8C273: LitStr " - Orden de pago: "
  loc_B8C276: ConcatStr
  loc_B8C277: FStStrNoPop var_130
  loc_B8C27A: FMemLdR4 var_90(76)
  loc_B8C27F: ConcatStr
  loc_B8C280: FStStrNoPop var_134
  loc_B8C283: LitStr "<br>"
  loc_B8C286: ConcatStr
  loc_B8C287: CVarStr var_C0
  loc_B8C28A: PopAdLdVar
  loc_B8C28B: FLdPr Me
  loc_B8C28E: MemLdRfVar from_stack_1.htmFile
  loc_B8C291: LdPrVar
  loc_B8C293: LateMemCall
  loc_B8C299: FFreeStr var_114 = "": var_118 = "": var_12C = "": var_130 = ""
  loc_B8C2A6: FFree1Var var_C0 = ""
  loc_B8C2A9: LitStr "      Detalle: "
  loc_B8C2AC: FMemLdR4 var_90(80)
  loc_B8C2B1: ConcatStr
  loc_B8C2B2: CVarStr var_C0
  loc_B8C2B5: PopAdLdVar
  loc_B8C2B6: FLdPr Me
  loc_B8C2B9: MemLdRfVar from_stack_1.htmFile
  loc_B8C2BC: LdPrVar
  loc_B8C2BE: LateMemCall
  loc_B8C2C4: FFree1Var var_C0 = ""
  loc_B8C2C7: LitVarStr var_A0, "    </th>"
  loc_B8C2CC: PopAdLdVar
  loc_B8C2CD: FLdPr Me
  loc_B8C2D0: MemLdRfVar from_stack_1.htmFile
  loc_B8C2D3: LdPrVar
  loc_B8C2D5: LateMemCall
  loc_B8C2DB: LitVarStr var_A0, "  </tr>"
  loc_B8C2E0: PopAdLdVar
  loc_B8C2E1: FLdPr Me
  loc_B8C2E4: MemLdRfVar from_stack_1.htmFile
  loc_B8C2E7: LdPrVar
  loc_B8C2E9: LateMemCall
  loc_B8C2EF: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_B8C2F4: PopAdLdVar
  loc_B8C2F5: FLdPr Me
  loc_B8C2F8: MemLdRfVar from_stack_1.htmFile
  loc_B8C2FB: LdPrVar
  loc_B8C2FD: LateMemCall
  loc_B8C303: LitStr "    <th colspan="""
  loc_B8C306: ILdRf var_88
  loc_B8C309: ConcatStr
  loc_B8C30A: FStStrNoPop var_114
  loc_B8C30D: LitStr """ align=""center"">Datos de la Retención </th>"
  loc_B8C310: ConcatStr
  loc_B8C311: CVarStr var_C0
  loc_B8C314: PopAdLdVar
  loc_B8C315: FLdPr Me
  loc_B8C318: MemLdRfVar from_stack_1.htmFile
  loc_B8C31B: LdPrVar
  loc_B8C31D: LateMemCall
  loc_B8C323: FFree1Str var_114
  loc_B8C326: FFree1Var var_C0 = ""
  loc_B8C329: LitVarStr var_A0, "  </tr>"
  loc_B8C32E: PopAdLdVar
  loc_B8C32F: FLdPr Me
  loc_B8C332: MemLdRfVar from_stack_1.htmFile
  loc_B8C335: LdPrVar
  loc_B8C337: LateMemCall
  loc_B8C33D: LitVarStr var_A0, "  <tr align=""center"" class=""LineaDato"">"
  loc_B8C342: PopAdLdVar
  loc_B8C343: FLdPr Me
  loc_B8C346: MemLdRfVar from_stack_1.htmFile
  loc_B8C349: LdPrVar
  loc_B8C34B: LateMemCall
  loc_B8C351: LitVarStr var_A0, "    <th>Comprobante que origina<br>la retención</th>"
  loc_B8C356: PopAdLdVar
  loc_B8C357: FLdPr Me
  loc_B8C35A: MemLdRfVar from_stack_1.htmFile
  loc_B8C35D: LdPrVar
  loc_B8C35F: LateMemCall
  loc_B8C365: LitVarStr var_A0, "    <th>Importe Gravado</th>"
  loc_B8C36A: PopAdLdVar
  loc_B8C36B: FLdPr Me
  loc_B8C36E: MemLdRfVar from_stack_1.htmFile
  loc_B8C371: LdPrVar
  loc_B8C373: LateMemCall
  loc_B8C379: LitVarStr var_A0, "    <th>Tasa Aplicada (" & Chr(37) & ")</th>"
  loc_B8C37E: PopAdLdVar
  loc_B8C37F: FLdPr Me
  loc_B8C382: MemLdRfVar from_stack_1.htmFile
  loc_B8C385: LdPrVar
  loc_B8C387: LateMemCall
  loc_B8C38D: LitVarStr var_A0, "    <th>Penalidad</th>"
  loc_B8C392: PopAdLdVar
  loc_B8C393: FLdPr Me
  loc_B8C396: MemLdRfVar from_stack_1.htmFile
  loc_B8C399: LdPrVar
  loc_B8C39B: LateMemCall
  loc_B8C3A1: LitVarStr var_A0, "    <th>Exencion (" & Chr(37) & ")</th>"
  loc_B8C3A6: PopAdLdVar
  loc_B8C3A7: FLdPr Me
  loc_B8C3AA: MemLdRfVar from_stack_1.htmFile
  loc_B8C3AD: LdPrVar
  loc_B8C3AF: LateMemCall
  loc_B8C3B5: LitVarStr var_A0, "    <th>Importe Retenido </th>"
  loc_B8C3BA: PopAdLdVar
  loc_B8C3BB: FLdPr Me
  loc_B8C3BE: MemLdRfVar from_stack_1.htmFile
  loc_B8C3C1: LdPrVar
  loc_B8C3C3: LateMemCall
  loc_B8C3C9: LitVarStr var_A0, "  </tr>"
  loc_B8C3CE: PopAdLdVar
  loc_B8C3CF: FLdPr Me
  loc_B8C3D2: MemLdRfVar from_stack_1.htmFile
  loc_B8C3D5: LdPrVar
  loc_B8C3D7: LateMemCall
  loc_B8C3DD: LitI2_Byte 1
  loc_B8C3DF: FLdPr Me
  loc_B8C3E2: MemLdRfVar from_stack_1.global_108
  loc_B8C3E5: FMemLdR4 var_90(104)
  loc_B8C3EA: LitI2_Byte 1
  loc_B8C3EC: FnUBound
  loc_B8C3EE: CI2I4
  loc_B8C3EF: ForI2 var_138
  loc_B8C3F5: LitVarStr var_A0, "  <tr align=""center"" class=""LineaDato"">"
  loc_B8C3FA: PopAdLdVar
  loc_B8C3FB: FLdPr Me
  loc_B8C3FE: MemLdRfVar from_stack_1.htmFile
  loc_B8C401: LdPrVar
  loc_B8C403: LateMemCall
  loc_B8C409: FLdPr Me
  loc_B8C40C: MemLdI2 global_108
  loc_B8C40F: CI4UI1
  loc_B8C410: FMemLdR4 var_90(104)
  loc_B8C415: AryLock
  loc_B8C418: Ary1LdRf
  loc_B8C419: FStR4 var_140
  loc_B8C41C: LitStr "    <th align=""right"">"
  loc_B8C41F: FMemLdR4 var_140(0)
  loc_B8C424: ConcatStr
  loc_B8C425: FStStrNoPop var_114
  loc_B8C428: LitStr "</th>"
  loc_B8C42B: ConcatStr
  loc_B8C42C: CVarStr var_C0
  loc_B8C42F: PopAdLdVar
  loc_B8C430: FLdPr Me
  loc_B8C433: MemLdRfVar from_stack_1.htmFile
  loc_B8C436: LdPrVar
  loc_B8C438: LateMemCall
  loc_B8C43E: FFree1Str var_114
  loc_B8C441: FFree1Var var_C0 = ""
  loc_B8C444: LitStr "    <th align=""right"">$ "
  loc_B8C447: FMemLdR4 var_140(4)
  loc_B8C44C: ConcatStr
  loc_B8C44D: FStStrNoPop var_114
  loc_B8C450: LitStr "</th>"
  loc_B8C453: ConcatStr
  loc_B8C454: CVarStr var_C0
  loc_B8C457: PopAdLdVar
  loc_B8C458: FLdPr Me
  loc_B8C45B: MemLdRfVar from_stack_1.htmFile
  loc_B8C45E: LdPrVar
  loc_B8C460: LateMemCall
  loc_B8C466: FFree1Str var_114
  loc_B8C469: FFree1Var var_C0 = ""
  loc_B8C46C: LitI4 0
  loc_B8C471: FStR4 var_140
  loc_B8C474: AryUnlock
  loc_B8C477: LitStr "    <th>"
  loc_B8C47A: FMemLdR4 var_90(56)
  loc_B8C47F: ConcatStr
  loc_B8C480: FStStrNoPop var_114
  loc_B8C483: LitStr "</th>"
  loc_B8C486: ConcatStr
  loc_B8C487: CVarStr var_C0
  loc_B8C48A: PopAdLdVar
  loc_B8C48B: FLdPr Me
  loc_B8C48E: MemLdRfVar from_stack_1.htmFile
  loc_B8C491: LdPrVar
  loc_B8C493: LateMemCall
  loc_B8C499: FFree1Str var_114
  loc_B8C49C: FFree1Var var_C0 = ""
  loc_B8C49F: LitStr "    <th>"
  loc_B8C4A2: FMemLdR4 var_90(60)
  loc_B8C4A7: ConcatStr
  loc_B8C4A8: FStStrNoPop var_114
  loc_B8C4AB: LitStr "</th>"
  loc_B8C4AE: ConcatStr
  loc_B8C4AF: CVarStr var_C0
  loc_B8C4B2: PopAdLdVar
  loc_B8C4B3: FLdPr Me
  loc_B8C4B6: MemLdRfVar from_stack_1.htmFile
  loc_B8C4B9: LdPrVar
  loc_B8C4BB: LateMemCall
  loc_B8C4C1: FFree1Str var_114
  loc_B8C4C4: FFree1Var var_C0 = ""
  loc_B8C4C7: LitStr "    <th>"
  loc_B8C4CA: FMemLdR4 var_90(64)
  loc_B8C4CF: ConcatStr
  loc_B8C4D0: FStStrNoPop var_114
  loc_B8C4D3: LitStr "</th>"
  loc_B8C4D6: ConcatStr
  loc_B8C4D7: CVarStr var_C0
  loc_B8C4DA: PopAdLdVar
  loc_B8C4DB: FLdPr Me
  loc_B8C4DE: MemLdRfVar from_stack_1.htmFile
  loc_B8C4E1: LdPrVar
  loc_B8C4E3: LateMemCall
  loc_B8C4E9: FFree1Str var_114
  loc_B8C4EC: FFree1Var var_C0 = ""
  loc_B8C4EF: FLdPr Me
  loc_B8C4F2: MemLdI2 global_108
  loc_B8C4F5: LitI2_Byte 1
  loc_B8C4F7: EqI2
  loc_B8C4F8: BranchF loc_B8C544
  loc_B8C4FB: LitStr "   <th rowspan="""
  loc_B8C4FE: FMemLdR4 var_90(104)
  loc_B8C503: LitI2_Byte 1
  loc_B8C505: FnUBound
  loc_B8C507: CStrI4
  loc_B8C509: FStStrNoPop var_114
  loc_B8C50C: ConcatStr
  loc_B8C50D: FStStrNoPop var_118
  loc_B8C510: LitStr """ valign=""middle"" align=""right"">$ "
  loc_B8C513: ConcatStr
  loc_B8C514: FStStrNoPop var_12C
  loc_B8C517: FMemLdR4 var_90(52)
  loc_B8C51C: ConcatStr
  loc_B8C51D: FStStrNoPop var_130
  loc_B8C520: LitStr "</th>"
  loc_B8C523: ConcatStr
  loc_B8C524: CVarStr var_C0
  loc_B8C527: PopAdLdVar
  loc_B8C528: FLdPr Me
  loc_B8C52B: MemLdRfVar from_stack_1.htmFile
  loc_B8C52E: LdPrVar
  loc_B8C530: LateMemCall
  loc_B8C536: FFreeStr var_114 = "": var_118 = "": var_12C = ""
  loc_B8C541: FFree1Var var_C0 = ""
  loc_B8C544: LitVarStr var_A0, "  </tr>"
  loc_B8C549: PopAdLdVar
  loc_B8C54A: FLdPr Me
  loc_B8C54D: MemLdRfVar from_stack_1.htmFile
  loc_B8C550: LdPrVar
  loc_B8C552: LateMemCall
  loc_B8C558: FLdPr Me
  loc_B8C55B: MemLdRfVar from_stack_1.global_108
  loc_B8C55E: NextI2 var_138, loc_B8C3F5
  loc_B8C563: LitVarStr var_A0, "  <tr align=""center"">"
  loc_B8C568: PopAdLdVar
  loc_B8C569: FLdPr Me
  loc_B8C56C: MemLdRfVar from_stack_1.htmFile
  loc_B8C56F: LdPrVar
  loc_B8C571: LateMemCall
  loc_B8C577: LitStr "    <th colspan=""6"">Son Pesos: "
  loc_B8C57A: FMemLdR4 var_90(52)
  loc_B8C57F: CR8Str
  loc_B8C581: PopFPR8
  loc_B8C582: ImpAdCallI2 Proc_261_26_9A5B0C(, )
  loc_B8C587: FStStrNoPop var_114
  loc_B8C58A: ConcatStr
  loc_B8C58B: FStStrNoPop var_118
  loc_B8C58E: LitStr "</th>"
  loc_B8C591: ConcatStr
  loc_B8C592: CVarStr var_C0
  loc_B8C595: PopAdLdVar
  loc_B8C596: FLdPr Me
  loc_B8C599: MemLdRfVar from_stack_1.htmFile
  loc_B8C59C: LdPrVar
  loc_B8C59E: LateMemCall
  loc_B8C5A4: FFreeStr var_114 = ""
  loc_B8C5AB: FFree1Var var_C0 = ""
  loc_B8C5AE: LitVarStr var_A0, "  </tr>"
  loc_B8C5B3: PopAdLdVar
  loc_B8C5B4: FLdPr Me
  loc_B8C5B7: MemLdRfVar from_stack_1.htmFile
  loc_B8C5BA: LdPrVar
  loc_B8C5BC: LateMemCall
  loc_B8C5C2: LitVarStr var_A0, "  <tr class=""Encabezado"">"
  loc_B8C5C7: PopAdLdVar
  loc_B8C5C8: FLdPr Me
  loc_B8C5CB: MemLdRfVar from_stack_1.htmFile
  loc_B8C5CE: LdPrVar
  loc_B8C5D0: LateMemCall
  loc_B8C5D6: LitStr "    <th colspan="""
  loc_B8C5D9: ILdRf var_88
  loc_B8C5DC: ConcatStr
  loc_B8C5DD: FStStrNoPop var_114
  loc_B8C5E0: LitStr """ align=""center"">Retenciones Acumuladas</th>"
  loc_B8C5E3: ConcatStr
  loc_B8C5E4: CVarStr var_C0
  loc_B8C5E7: PopAdLdVar
  loc_B8C5E8: FLdPr Me
  loc_B8C5EB: MemLdRfVar from_stack_1.htmFile
  loc_B8C5EE: LdPrVar
  loc_B8C5F0: LateMemCall
  loc_B8C5F6: FFree1Str var_114
  loc_B8C5F9: FFree1Var var_C0 = ""
  loc_B8C5FC: LitVarStr var_A0, "  </tr>"
  loc_B8C601: PopAdLdVar
  loc_B8C602: FLdPr Me
  loc_B8C605: MemLdRfVar from_stack_1.htmFile
  loc_B8C608: LdPrVar
  loc_B8C60A: LateMemCall
  loc_B8C610: LitVarStr var_A0, "  <tr align=""center"" class=""LineaDato"">"
  loc_B8C615: PopAdLdVar
  loc_B8C616: FLdPr Me
  loc_B8C619: MemLdRfVar from_stack_1.htmFile
  loc_B8C61C: LdPrVar
  loc_B8C61E: LateMemCall
  loc_B8C624: LitVarStr var_A0, "    <th colspan=""2"">Monto imponible (acumulado)</th>"
  loc_B8C629: PopAdLdVar
  loc_B8C62A: FLdPr Me
  loc_B8C62D: MemLdRfVar from_stack_1.htmFile
  loc_B8C630: LdPrVar
  loc_B8C632: LateMemCall
  loc_B8C638: LitVarStr var_A0, "    <th colspan=""2"">Retención acumulada</th>"
  loc_B8C63D: PopAdLdVar
  loc_B8C63E: FLdPr Me
  loc_B8C641: MemLdRfVar from_stack_1.htmFile
  loc_B8C644: LdPrVar
  loc_B8C646: LateMemCall
  loc_B8C64C: LitVarStr var_A0, "    <th colspan=""3"">Importe a cobrar</th>"
  loc_B8C651: PopAdLdVar
  loc_B8C652: FLdPr Me
  loc_B8C655: MemLdRfVar from_stack_1.htmFile
  loc_B8C658: LdPrVar
  loc_B8C65A: LateMemCall
  loc_B8C660: LitVarStr var_A0, "  </tr>"
  loc_B8C665: PopAdLdVar
  loc_B8C666: FLdPr Me
  loc_B8C669: MemLdRfVar from_stack_1.htmFile
  loc_B8C66C: LdPrVar
  loc_B8C66E: LateMemCall
  loc_B8C674: LitVarStr var_A0, "  <tr align=""center"" class=""LineaDato"">"
  loc_B8C679: PopAdLdVar
  loc_B8C67A: FLdPr Me
  loc_B8C67D: MemLdRfVar from_stack_1.htmFile
  loc_B8C680: LdPrVar
  loc_B8C682: LateMemCall
  loc_B8C688: LitStr "    <th colspan=""2"">"
  loc_B8C68B: FMemLdR4 var_90(40)
  loc_B8C690: ConcatStr
  loc_B8C691: FStStrNoPop var_114
  loc_B8C694: LitStr "</th>"
  loc_B8C697: ConcatStr
  loc_B8C698: CVarStr var_C0
  loc_B8C69B: PopAdLdVar
  loc_B8C69C: FLdPr Me
  loc_B8C69F: MemLdRfVar from_stack_1.htmFile
  loc_B8C6A2: LdPrVar
  loc_B8C6A4: LateMemCall
  loc_B8C6AA: FFree1Str var_114
  loc_B8C6AD: FFree1Var var_C0 = ""
  loc_B8C6B0: LitStr "    <th colspan=""2"">"
  loc_B8C6B3: FMemLdR4 var_90(44)
  loc_B8C6B8: ConcatStr
  loc_B8C6B9: FStStrNoPop var_114
  loc_B8C6BC: LitStr "</th>"
  loc_B8C6BF: ConcatStr
  loc_B8C6C0: CVarStr var_C0
  loc_B8C6C3: PopAdLdVar
  loc_B8C6C4: FLdPr Me
  loc_B8C6C7: MemLdRfVar from_stack_1.htmFile
  loc_B8C6CA: LdPrVar
  loc_B8C6CC: LateMemCall
  loc_B8C6D2: FFree1Str var_114
  loc_B8C6D5: FFree1Var var_C0 = ""
  loc_B8C6D8: LitStr "    <th colspan=""3"">"
  loc_B8C6DB: FMemLdR4 var_90(48)
  loc_B8C6E0: ConcatStr
  loc_B8C6E1: FStStrNoPop var_114
  loc_B8C6E4: LitStr "</th>"
  loc_B8C6E7: ConcatStr
  loc_B8C6E8: CVarStr var_C0
  loc_B8C6EB: PopAdLdVar
  loc_B8C6EC: FLdPr Me
  loc_B8C6EF: MemLdRfVar from_stack_1.htmFile
  loc_B8C6F2: LdPrVar
  loc_B8C6F4: LateMemCall
  loc_B8C6FA: FFree1Str var_114
  loc_B8C6FD: FFree1Var var_C0 = ""
  loc_B8C700: LitVarStr var_A0, "  </tr>"
  loc_B8C705: PopAdLdVar
  loc_B8C706: FLdPr Me
  loc_B8C709: MemLdRfVar from_stack_1.htmFile
  loc_B8C70C: LdPrVar
  loc_B8C70E: LateMemCall
  loc_B8C714: LitVarStr var_A0, "  <tr>"
  loc_B8C719: PopAdLdVar
  loc_B8C71A: FLdPr Me
  loc_B8C71D: MemLdRfVar from_stack_1.htmFile
  loc_B8C720: LdPrVar
  loc_B8C722: LateMemCall
  loc_B8C728: LitStr "    <th colspan="""
  loc_B8C72B: ILdRf var_88
  loc_B8C72E: ConcatStr
  loc_B8C72F: FStStrNoPop var_114
  loc_B8C732: LitStr """ align=""center""><table width=""50" & Chr(37) & """ border=""0"" align=""right"" cellspacing=""10"" class=""Firmas"">"
  loc_B8C735: ConcatStr
  loc_B8C736: CVarStr var_C0
  loc_B8C739: PopAdLdVar
  loc_B8C73A: FLdPr Me
  loc_B8C73D: MemLdRfVar from_stack_1.htmFile
  loc_B8C740: LdPrVar
  loc_B8C742: LateMemCall
  loc_B8C748: FFree1Str var_114
  loc_B8C74B: FFree1Var var_C0 = ""
  loc_B8C74E: LitStr "Municipalidad de Guaymallén"
  loc_B8C751: FStStrCopy var_148
  loc_B8C754: ILdRf var_148
  loc_B8C757: LitStr "Municipalidad de General Alvear"
  loc_B8C75A: EqStr
  loc_B8C75C: BranchF loc_B8C7F0
  loc_B8C75F: FLdRfVar var_14E
  loc_B8C762: FLdPr Me
  loc_B8C765: VCallAd Control_ID_chkIncluyelafirma
  loc_B8C768: FStAdFunc var_14C
  loc_B8C76B: FLdPr var_14C
  loc_B8C76E:  = Me.Value
  loc_B8C773: FLdI2 var_14E
  loc_B8C776: CI4UI1
  loc_B8C777: LitI4 1
  loc_B8C77C: EqI4
  loc_B8C77D: FFree1Ad var_14C
  loc_B8C780: BranchF loc_B8C7D9
  loc_B8C783: ImpAdLdI4 MemVar_C3D03C
  loc_B8C786: ImpAdCallI2 Proc_259_41_A4C348()
  loc_B8C78B: FStAdFunc var_144
  loc_B8C78E: FLdPr Me
  loc_B8C791: MemLdRfVar from_stack_1.global_76
  loc_B8C794: NewIfNullRf
  loc_B8C798: ImpAdLdI4 MemVar_C3D03C
  loc_B8C79B: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B8C7A0: ILdRf var_144
  loc_B8C7A3: LitNothing
  loc_B8C7A5: Is
  loc_B8C7A7: NotI4
  loc_B8C7A8: BranchF loc_B8C7C2
  loc_B8C7AB: LitVarStr var_A0, "<tr><td>Firma: <img src=""c:\temppic"" alt=""firma"" height=""88"" width=""167""></td></tr>"
  loc_B8C7B0: PopAdLdVar
  loc_B8C7B1: FLdPr Me
  loc_B8C7B4: MemLdRfVar from_stack_1.htmFile
  loc_B8C7B7: LdPrVar
  loc_B8C7B9: LateMemCall
  loc_B8C7BF: Branch loc_B8C7D6
  loc_B8C7C2: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8C7C7: PopAdLdVar
  loc_B8C7C8: FLdPr Me
  loc_B8C7CB: MemLdRfVar from_stack_1.htmFile
  loc_B8C7CE: LdPrVar
  loc_B8C7D0: LateMemCall
  loc_B8C7D6: Branch loc_B8C7ED
  loc_B8C7D9: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8C7DE: PopAdLdVar
  loc_B8C7DF: FLdPr Me
  loc_B8C7E2: MemLdRfVar from_stack_1.htmFile
  loc_B8C7E5: LdPrVar
  loc_B8C7E7: LateMemCall
  loc_B8C7ED: Branch loc_B8CBF4
  loc_B8C7F0: ILdRf var_148
  loc_B8C7F3: LitStr "Municipalidad de Maipú"
  loc_B8C7F6: EqStr
  loc_B8C7F8: BranchF loc_B8C952
  loc_B8C7FB: FLdRfVar var_14E
  loc_B8C7FE: FLdPr Me
  loc_B8C801: VCallAd Control_ID_chkIncluyelafirma
  loc_B8C804: FStAdFunc var_14C
  loc_B8C807: FLdPr var_14C
  loc_B8C80A:  = Me.Value
  loc_B8C80F: FLdI2 var_14E
  loc_B8C812: CI4UI1
  loc_B8C813: LitI4 1
  loc_B8C818: EqI4
  loc_B8C819: FFree1Ad var_14C
  loc_B8C81C: BranchF loc_B8C913
  loc_B8C81F: LitStr "OropelDkjkjkjk"
  loc_B8C822: ImpAdCallI2 Proc_259_41_A4C348()
  loc_B8C827: FStAdFunc var_144
  loc_B8C82A: FLdPr Me
  loc_B8C82D: MemLdRfVar from_stack_1.global_76
  loc_B8C830: NewIfNullRf
  loc_B8C834: LitStr "OropelD"
  loc_B8C837: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B8C83C: ILdRf var_144
  loc_B8C83F: LitNothing
  loc_B8C841: Is
  loc_B8C843: NotI4
  loc_B8C844: BranchF loc_B8C8D4
  loc_B8C847: LitVarStr var_A0, "<tr><td>Firma: <img src=""c:\temppic"" alt=""firma"" height=""88"" width=""167""></td></tr>"
  loc_B8C84C: PopAdLdVar
  loc_B8C84D: FLdPr Me
  loc_B8C850: MemLdRfVar from_stack_1.htmFile
  loc_B8C853: LdPrVar
  loc_B8C855: LateMemCall
  loc_B8C85B: LitStr "<tr><td>Aclaración: "
  loc_B8C85E: FLdRfVar var_114
  loc_B8C861: FLdPr Me
  loc_B8C864: MemLdRfVar from_stack_1.global_76
  loc_B8C867: NewIfNullPr tblusuario
  loc_B8C86A: from_stack_1v = tblusuario.DetaPersGet()
  loc_B8C86F: ILdRf var_114
  loc_B8C872: ConcatStr
  loc_B8C873: FStStrNoPop var_118
  loc_B8C876: LitStr "</td></tr>"
  loc_B8C879: ConcatStr
  loc_B8C87A: CVarStr var_C0
  loc_B8C87D: PopAdLdVar
  loc_B8C87E: FLdPr Me
  loc_B8C881: MemLdRfVar from_stack_1.htmFile
  loc_B8C884: LdPrVar
  loc_B8C886: LateMemCall
  loc_B8C88C: FFreeStr var_114 = ""
  loc_B8C893: FFree1Var var_C0 = ""
  loc_B8C896: LitStr "<tr><td>Carácter: "
  loc_B8C899: FLdRfVar var_114
  loc_B8C89C: FLdPr Me
  loc_B8C89F: MemLdRfVar from_stack_1.global_76
  loc_B8C8A2: NewIfNullPr tblusuario
  loc_B8C8A5: from_stack_1v = tblusuario.CargUsuaGet()
  loc_B8C8AA: ILdRf var_114
  loc_B8C8AD: ConcatStr
  loc_B8C8AE: FStStrNoPop var_118
  loc_B8C8B1: LitStr "</td></tr>"
  loc_B8C8B4: ConcatStr
  loc_B8C8B5: CVarStr var_C0
  loc_B8C8B8: PopAdLdVar
  loc_B8C8B9: FLdPr Me
  loc_B8C8BC: MemLdRfVar from_stack_1.htmFile
  loc_B8C8BF: LdPrVar
  loc_B8C8C1: LateMemCall
  loc_B8C8C7: FFreeStr var_114 = ""
  loc_B8C8CE: FFree1Var var_C0 = ""
  loc_B8C8D1: Branch loc_B8C910
  loc_B8C8D4: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8C8D9: PopAdLdVar
  loc_B8C8DA: FLdPr Me
  loc_B8C8DD: MemLdRfVar from_stack_1.htmFile
  loc_B8C8E0: LdPrVar
  loc_B8C8E2: LateMemCall
  loc_B8C8E8: LitVarStr var_A0, "<tr><td>Aclaración: ..........................................................................</td></tr>"
  loc_B8C8ED: PopAdLdVar
  loc_B8C8EE: FLdPr Me
  loc_B8C8F1: MemLdRfVar from_stack_1.htmFile
  loc_B8C8F4: LdPrVar
  loc_B8C8F6: LateMemCall
  loc_B8C8FC: LitVarStr var_A0, "<tr><td>Carácter: ............................................................................</td></tr>"
  loc_B8C901: PopAdLdVar
  loc_B8C902: FLdPr Me
  loc_B8C905: MemLdRfVar from_stack_1.htmFile
  loc_B8C908: LdPrVar
  loc_B8C90A: LateMemCall
  loc_B8C910: Branch loc_B8C94F
  loc_B8C913: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8C918: PopAdLdVar
  loc_B8C919: FLdPr Me
  loc_B8C91C: MemLdRfVar from_stack_1.htmFile
  loc_B8C91F: LdPrVar
  loc_B8C921: LateMemCall
  loc_B8C927: LitVarStr var_A0, "<tr><td>Aclaración: ..........................................................................</td></tr>"
  loc_B8C92C: PopAdLdVar
  loc_B8C92D: FLdPr Me
  loc_B8C930: MemLdRfVar from_stack_1.htmFile
  loc_B8C933: LdPrVar
  loc_B8C935: LateMemCall
  loc_B8C93B: LitVarStr var_A0, "<tr><td>Carácter: ............................................................................</td></tr>"
  loc_B8C940: PopAdLdVar
  loc_B8C941: FLdPr Me
  loc_B8C944: MemLdRfVar from_stack_1.htmFile
  loc_B8C947: LdPrVar
  loc_B8C949: LateMemCall
  loc_B8C94F: Branch loc_B8CBF4
  loc_B8C952: ILdRf var_148
  loc_B8C955: LitStr "Municipalidad de Tupungato"
  loc_B8C958: EqStr
  loc_B8C95A: BranchF loc_B8CAA0
  loc_B8C95D: FLdRfVar var_14E
  loc_B8C960: FLdPr Me
  loc_B8C963: VCallAd Control_ID_chkIncluyelafirma
  loc_B8C966: FStAdFunc var_14C
  loc_B8C969: FLdPr var_14C
  loc_B8C96C:  = Me.Value
  loc_B8C971: FLdI2 var_14E
  loc_B8C974: CI4UI1
  loc_B8C975: LitI4 1
  loc_B8C97A: EqI4
  loc_B8C97B: FFree1Ad var_14C
  loc_B8C97E: BranchF loc_B8CA61
  loc_B8C981: LitStr "lcontreras"
  loc_B8C984: ImpAdCallI2 Proc_259_41_A4C348()
  loc_B8C989: FStAdFunc var_144
  loc_B8C98C: FLdPr Me
  loc_B8C98F: MemLdRfVar from_stack_1.global_76
  loc_B8C992: NewIfNullRf
  loc_B8C996: LitStr "lcontreras"
  loc_B8C999: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B8C99E: ILdRf var_144
  loc_B8C9A1: LitNothing
  loc_B8C9A3: Is
  loc_B8C9A5: NotI4
  loc_B8C9A6: BranchF loc_B8CA36
  loc_B8C9A9: LitVarStr var_A0, "<tr><td>Firma: <img src=""c:\temppic"" alt=""firma"" height=""88"" width=""167""></td></tr>"
  loc_B8C9AE: PopAdLdVar
  loc_B8C9AF: FLdPr Me
  loc_B8C9B2: MemLdRfVar from_stack_1.htmFile
  loc_B8C9B5: LdPrVar
  loc_B8C9B7: LateMemCall
  loc_B8C9BD: LitStr "<tr><td>Aclaración: "
  loc_B8C9C0: FLdRfVar var_114
  loc_B8C9C3: FLdPr Me
  loc_B8C9C6: MemLdRfVar from_stack_1.global_76
  loc_B8C9C9: NewIfNullPr tblusuario
  loc_B8C9CC: from_stack_1v = tblusuario.DetaPersGet()
  loc_B8C9D1: ILdRf var_114
  loc_B8C9D4: ConcatStr
  loc_B8C9D5: FStStrNoPop var_118
  loc_B8C9D8: LitStr "</td></tr>"
  loc_B8C9DB: ConcatStr
  loc_B8C9DC: CVarStr var_C0
  loc_B8C9DF: PopAdLdVar
  loc_B8C9E0: FLdPr Me
  loc_B8C9E3: MemLdRfVar from_stack_1.htmFile
  loc_B8C9E6: LdPrVar
  loc_B8C9E8: LateMemCall
  loc_B8C9EE: FFreeStr var_114 = ""
  loc_B8C9F5: FFree1Var var_C0 = ""
  loc_B8C9F8: LitStr "<tr><td>Carácter: "
  loc_B8C9FB: FLdRfVar var_114
  loc_B8C9FE: FLdPr Me
  loc_B8CA01: MemLdRfVar from_stack_1.global_76
  loc_B8CA04: NewIfNullPr tblusuario
  loc_B8CA07: from_stack_1v = tblusuario.CargUsuaGet()
  loc_B8CA0C: ILdRf var_114
  loc_B8CA0F: ConcatStr
  loc_B8CA10: FStStrNoPop var_118
  loc_B8CA13: LitStr "</td></tr>"
  loc_B8CA16: ConcatStr
  loc_B8CA17: CVarStr var_C0
  loc_B8CA1A: PopAdLdVar
  loc_B8CA1B: FLdPr Me
  loc_B8CA1E: MemLdRfVar from_stack_1.htmFile
  loc_B8CA21: LdPrVar
  loc_B8CA23: LateMemCall
  loc_B8CA29: FFreeStr var_114 = ""
  loc_B8CA30: FFree1Var var_C0 = ""
  loc_B8CA33: Branch loc_B8CA5E
  loc_B8CA36: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8CA3B: PopAdLdVar
  loc_B8CA3C: FLdPr Me
  loc_B8CA3F: MemLdRfVar from_stack_1.htmFile
  loc_B8CA42: LdPrVar
  loc_B8CA44: LateMemCall
  loc_B8CA4A: LitVarStr var_A0, "<tr><td>Aclaración: ..........................................................................</td></tr>"
  loc_B8CA4F: PopAdLdVar
  loc_B8CA50: FLdPr Me
  loc_B8CA53: MemLdRfVar from_stack_1.htmFile
  loc_B8CA56: LdPrVar
  loc_B8CA58: LateMemCall
  loc_B8CA5E: Branch loc_B8CA9D
  loc_B8CA61: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8CA66: PopAdLdVar
  loc_B8CA67: FLdPr Me
  loc_B8CA6A: MemLdRfVar from_stack_1.htmFile
  loc_B8CA6D: LdPrVar
  loc_B8CA6F: LateMemCall
  loc_B8CA75: LitVarStr var_A0, "<tr><td>Aclaración: ..........................................................................</td></tr>"
  loc_B8CA7A: PopAdLdVar
  loc_B8CA7B: FLdPr Me
  loc_B8CA7E: MemLdRfVar from_stack_1.htmFile
  loc_B8CA81: LdPrVar
  loc_B8CA83: LateMemCall
  loc_B8CA89: LitVarStr var_A0, "<tr><td>Carácter: ............................................................................</td></tr>"
  loc_B8CA8E: PopAdLdVar
  loc_B8CA8F: FLdPr Me
  loc_B8CA92: MemLdRfVar from_stack_1.htmFile
  loc_B8CA95: LdPrVar
  loc_B8CA97: LateMemCall
  loc_B8CA9D: Branch loc_B8CBF4
  loc_B8CAA0: FLdRfVar var_14E
  loc_B8CAA3: FLdPr Me
  loc_B8CAA6: VCallAd Control_ID_chkIncluyelafirma
  loc_B8CAA9: FStAdFunc var_14C
  loc_B8CAAC: FLdPr var_14C
  loc_B8CAAF:  = Me.Value
  loc_B8CAB4: FLdI2 var_14E
  loc_B8CAB7: CI4UI1
  loc_B8CAB8: LitI4 1
  loc_B8CABD: EqI4
  loc_B8CABE: FFree1Ad var_14C
  loc_B8CAC1: BranchF loc_B8CBB8
  loc_B8CAC4: ImpAdLdI4 MemVar_C3D03C
  loc_B8CAC7: ImpAdCallI2 Proc_259_41_A4C348()
  loc_B8CACC: FStAdFunc var_144
  loc_B8CACF: FLdPr Me
  loc_B8CAD2: MemLdRfVar from_stack_1.global_76
  loc_B8CAD5: NewIfNullRf
  loc_B8CAD9: ImpAdLdI4 MemVar_C3D03C
  loc_B8CADC: ImpAdCallFPR4 Proc_259_38_B44564(, )
  loc_B8CAE1: ILdRf var_144
  loc_B8CAE4: LitNothing
  loc_B8CAE6: Is
  loc_B8CAE8: NotI4
  loc_B8CAE9: BranchF loc_B8CB79
  loc_B8CAEC: LitVarStr var_A0, "<tr><td>Firma: <img src=""c:\temppic"" alt=""firma"" height=""88"" width=""167""></td></tr>"
  loc_B8CAF1: PopAdLdVar
  loc_B8CAF2: FLdPr Me
  loc_B8CAF5: MemLdRfVar from_stack_1.htmFile
  loc_B8CAF8: LdPrVar
  loc_B8CAFA: LateMemCall
  loc_B8CB00: LitStr "<tr><td>Aclaración: "
  loc_B8CB03: FLdRfVar var_114
  loc_B8CB06: FLdPr Me
  loc_B8CB09: MemLdRfVar from_stack_1.global_76
  loc_B8CB0C: NewIfNullPr tblusuario
  loc_B8CB0F: from_stack_1v = tblusuario.DetaPersGet()
  loc_B8CB14: ILdRf var_114
  loc_B8CB17: ConcatStr
  loc_B8CB18: FStStrNoPop var_118
  loc_B8CB1B: LitStr "</td></tr>"
  loc_B8CB1E: ConcatStr
  loc_B8CB1F: CVarStr var_C0
  loc_B8CB22: PopAdLdVar
  loc_B8CB23: FLdPr Me
  loc_B8CB26: MemLdRfVar from_stack_1.htmFile
  loc_B8CB29: LdPrVar
  loc_B8CB2B: LateMemCall
  loc_B8CB31: FFreeStr var_114 = ""
  loc_B8CB38: FFree1Var var_C0 = ""
  loc_B8CB3B: LitStr "<tr><td>Carácter: "
  loc_B8CB3E: FLdRfVar var_114
  loc_B8CB41: FLdPr Me
  loc_B8CB44: MemLdRfVar from_stack_1.global_76
  loc_B8CB47: NewIfNullPr tblusuario
  loc_B8CB4A: from_stack_1v = tblusuario.CargUsuaGet()
  loc_B8CB4F: ILdRf var_114
  loc_B8CB52: ConcatStr
  loc_B8CB53: FStStrNoPop var_118
  loc_B8CB56: LitStr "</td></tr>"
  loc_B8CB59: ConcatStr
  loc_B8CB5A: CVarStr var_C0
  loc_B8CB5D: PopAdLdVar
  loc_B8CB5E: FLdPr Me
  loc_B8CB61: MemLdRfVar from_stack_1.htmFile
  loc_B8CB64: LdPrVar
  loc_B8CB66: LateMemCall
  loc_B8CB6C: FFreeStr var_114 = ""
  loc_B8CB73: FFree1Var var_C0 = ""
  loc_B8CB76: Branch loc_B8CBB5
  loc_B8CB79: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8CB7E: PopAdLdVar
  loc_B8CB7F: FLdPr Me
  loc_B8CB82: MemLdRfVar from_stack_1.htmFile
  loc_B8CB85: LdPrVar
  loc_B8CB87: LateMemCall
  loc_B8CB8D: LitVarStr var_A0, "<tr><td>Aclaración: ..........................................................................</td></tr>"
  loc_B8CB92: PopAdLdVar
  loc_B8CB93: FLdPr Me
  loc_B8CB96: MemLdRfVar from_stack_1.htmFile
  loc_B8CB99: LdPrVar
  loc_B8CB9B: LateMemCall
  loc_B8CBA1: LitVarStr var_A0, "<tr><td>Carácter: ............................................................................</td></tr>"
  loc_B8CBA6: PopAdLdVar
  loc_B8CBA7: FLdPr Me
  loc_B8CBAA: MemLdRfVar from_stack_1.htmFile
  loc_B8CBAD: LdPrVar
  loc_B8CBAF: LateMemCall
  loc_B8CBB5: Branch loc_B8CBF4
  loc_B8CBB8: LitVarStr var_A0, "<tr><td>Firma: ...............................................................................</td></tr>"
  loc_B8CBBD: PopAdLdVar
  loc_B8CBBE: FLdPr Me
  loc_B8CBC1: MemLdRfVar from_stack_1.htmFile
  loc_B8CBC4: LdPrVar
  loc_B8CBC6: LateMemCall
  loc_B8CBCC: LitVarStr var_A0, "<tr><td>Aclaración: ..........................................................................</td></tr>"
  loc_B8CBD1: PopAdLdVar
  loc_B8CBD2: FLdPr Me
  loc_B8CBD5: MemLdRfVar from_stack_1.htmFile
  loc_B8CBD8: LdPrVar
  loc_B8CBDA: LateMemCall
  loc_B8CBE0: LitVarStr var_A0, "<tr><td>Carácter: ............................................................................</td></tr>"
  loc_B8CBE5: PopAdLdVar
  loc_B8CBE6: FLdPr Me
  loc_B8CBE9: MemLdRfVar from_stack_1.htmFile
  loc_B8CBEC: LdPrVar
  loc_B8CBEE: LateMemCall
  loc_B8CBF4: LitVarStr var_A0, "      </table></th>"
  loc_B8CBF9: PopAdLdVar
  loc_B8CBFA: FLdPr Me
  loc_B8CBFD: MemLdRfVar from_stack_1.htmFile
  loc_B8CC00: LdPrVar
  loc_B8CC02: LateMemCall
  loc_B8CC08: LitVarStr var_A0, "  </tr>"
  loc_B8CC0D: PopAdLdVar
  loc_B8CC0E: FLdPr Me
  loc_B8CC11: MemLdRfVar from_stack_1.htmFile
  loc_B8CC14: LdPrVar
  loc_B8CC16: LateMemCall
  loc_B8CC1C: LitStr "Municipalidad de Guaymallén"
  loc_B8CC1F: LitStr "Municipalidad de Maipú"
  loc_B8CC22: EqStr
  loc_B8CC24: FMemLdR4 var_90(16)
  loc_B8CC29: LitStr "4"
  loc_B8CC2C: EqStr
  loc_B8CC2E: AndI4
  loc_B8CC2F: BranchF loc_B8CC46
  loc_B8CC32: LitVarStr var_A0, "<TR><TH colSpan=7 align=center> El presente certificado de retención es solo informativo. Solicite el comprobante válido en la página web de la AFIP con su clave fiscal.</TH></TR>"
  loc_B8CC37: PopAdLdVar
  loc_B8CC38: FLdPr Me
  loc_B8CC3B: MemLdRfVar from_stack_1.htmFile
  loc_B8CC3E: LdPrVar
  loc_B8CC40: LateMemCall
  loc_B8CC46: LitVarStr var_A0, "</table>"
  loc_B8CC4B: PopAdLdVar
  loc_B8CC4C: FLdPr Me
  loc_B8CC4F: MemLdRfVar from_stack_1.htmFile
  loc_B8CC52: LdPrVar
  loc_B8CC54: LateMemCall
  loc_B8CC5A: LitI4 0
  loc_B8CC5F: FStR4 var_90
  loc_B8CC62: AryUnlock
  loc_B8CC65: ExitProcHresult
  loc_B8CC66: FreeStrNoPop
End Function

Private Function Proc_169_28_97349C() '97349C
  'Data Table: 4BB4C8
  loc_973470: LitVarStr var_94, "</body>"
  loc_973475: PopAdLdVar
  loc_973476: FLdPr Me
  loc_973479: MemLdRfVar from_stack_1.htmFile
  loc_97347C: LdPrVar
  loc_97347E: LateMemCall
  loc_973484: LitVarStr var_94, "</html>"
  loc_973489: PopAdLdVar
  loc_97348A: FLdPr Me
  loc_97348D: MemLdRfVar from_stack_1.htmFile
  loc_973490: LdPrVar
  loc_973492: LateMemCall
  loc_973498: ExitProcHresult
End Function
