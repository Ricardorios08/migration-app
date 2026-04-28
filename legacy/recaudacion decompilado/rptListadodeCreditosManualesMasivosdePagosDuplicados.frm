VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeCreditosManualesMasivosdePagosDuplicados
  Caption = "Listado de Creditos Manuales Masivos de Pagos Duplicados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeCreditosManualesMasivosdePagosDuplicados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8760
  ClientHeight = 2880
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2625
    Width = 8760
    Height = 255
    TabIndex = 9
    OleObjectBlob = "rptListadodeCreditosManualesMasivosdePagosDuplicados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7680
    Top = 1560
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptListadodeCreditosManualesMasivosdePagosDuplicados.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeCreditosManualesMasivosdePagosDuplicados.frx":0B9C
    Left = 8280
    Top = 1320
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1320
    Width = 3255
    Height = 1215
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
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 615
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
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
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
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 4095
    Height = 1215
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 4
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
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
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
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6480
      Top = 360
      Width = 1575
      Height = 615
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
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7800
    Top = 1920
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 8
    OleObjectBlob = "rptListadodeCreditosManualesMasivosdePagosDuplicados.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeCreditosManualesMasivosdePagosDuplicados"

Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00560498
  bStruc(56) As Byte ' String fields: 14
End Type


Private Sub cmdSalir_Click() 'A04570
  'Data Table: 44BEE0
  loc_A04540: LitVarStr var_94, "Cerrando..."
  loc_A04545: PopAdLdVar
  loc_A04546: FLdPr Me
  loc_A04549: VCallAd Control_ID_statusBar
  loc_A0454C: FStAdFunc var_A8
  loc_A0454F: FLdPr var_A8
  loc_A04552: LateIdSt
  loc_A04557: FFree1Ad var_A8
  loc_A0455A: ILdRf Me
  loc_A0455D: FStAdNoPop
  loc_A04561: ImpAdLdRf MemVar_D9C5D8
  loc_A04564: NewIfNullPr Global
  loc_A04567: Global.Unload from_stack_1
  loc_A0456C: FFree1Ad var_A8
  loc_A0456F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E14FC
  'Data Table: 44BEE0
  loc_9E14E0: LitI2_Byte 0
  loc_9E14E2: PopTmpLdAd2 var_8A
  loc_9E14E5: ILdRf Me
  loc_9E14E8: CastAd
  loc_9E14EB: FStAdFunc var_88
  loc_9E14EE: FLdRfVar var_88
  loc_9E14F1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E14F6: FFree1Ad var_88
  loc_9E14F9: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CF830
  'Data Table: 44BEE0
  loc_9CF818: ILdRf Me
  loc_9CF81B: CastAd
  loc_9CF81E: FStAdFunc var_88
  loc_9CF821: FLdRfVar var_88
  loc_9CF824: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CF829: FFree1Ad var_88
  loc_9CF82C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CF9F8
  'Data Table: 44BEE0
  loc_9CF9E0: LitI2_Byte 0
  loc_9CF9E2: ILdRf Me
  loc_9CF9E5: CastAd
  loc_9CF9E8: FStAdFunc var_88
  loc_9CF9EB: FLdRfVar var_88
  loc_9CF9EE: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CF9F3: FFree1Ad var_88
  loc_9CF9F6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A16D68
  'Data Table: 44BEE0
  loc_A16D30: FLdPr Me
  loc_A16D33: VCallAd Control_ID_statusBar
  loc_A16D36: FStAdFunc var_88
  loc_A16D39: FLdPr var_88
  loc_A16D3C: LateIdLdVar var_98 DispID_1 0
  loc_A16D43: CStrVarTmp
  loc_A16D44: CVarStr var_A8
  loc_A16D47: PopAdLdVar
  loc_A16D48: FLdPr Me
  loc_A16D4B: VCallAd Control_ID_statusBar
  loc_A16D4E: FStAdFunc var_BC
  loc_A16D51: FLdPr var_BC
  loc_A16D54: LateIdSt
  loc_A16D59: FFreeAd var_88 = ""
  loc_A16D60: FFreeVar var_98 = ""
  loc_A16D67: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A1191C
  'Data Table: 44BEE0
  loc_A118DC: LitI2_Byte 0
  loc_A118DE: FLdPr Me
  loc_A118E1: MemStI2 bGenerado
  loc_A118E4: LitI2_Byte &HFF
  loc_A118E6: FLdPr Me
  loc_A118E9: MemStI2 bLogos
  loc_A118EC: LitI2_Byte 0
  loc_A118EE: ILdRf Me
  loc_A118F1: CastAd
  loc_A118F4: FStAdFunc var_88
  loc_A118F7: FLdRfVar var_88
  loc_A118FA: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A118FF: FFree1Ad var_88
  loc_A11902: Call HabilitarCriterio()
  loc_A11907: ILdRf Me
  loc_A1190A: CastAd
  loc_A1190D: FStAdFunc var_88
  loc_A11910: FLdRfVar var_88
  loc_A11913: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A11918: FFree1Ad var_88
  loc_A1191B: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9E122C
  'Data Table: 44BEE0
  loc_9E1210: LitI2_Byte &HFF
  loc_9E1212: LitI2_Byte 0
  loc_9E1214: ILdRf Me
  loc_9E1217: CastAd
  loc_9E121A: FStAdFunc var_88
  loc_9E121D: FLdRfVar var_88
  loc_9E1220: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9E1225: FFree1Ad var_88
  loc_9E1228: ExitProcHresult
End Sub

Private Sub Form_Load() '9E127C
  'Data Table: 44BEE0
  loc_9E1260: ILdRf Me
  loc_9E1263: CastAd
  loc_9E1266: FStAdFunc var_88
  loc_9E1269: FLdRfVar var_88
  loc_9E126C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E1271: FFree1Ad var_88
  loc_9E1274: Call cmdNueva_Click()
  loc_9E1279: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D0034
  'Data Table: 44BEE0
  loc_9D001C: FLdPr Me
  loc_9D001F: VCallAd Control_ID_wbbReporte
  loc_9D0022: FStAdFunc var_88
  loc_9D0025: FLdRfVar var_88
  loc_9D0028: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D002D: FFree1Ad var_88
  loc_9D0030: ExitProcHresult
End Sub

Public Function bLogosGet() '44C7F4
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '44C803
  bLogos = Value
End Sub

Public Function bGeneradoGet() '44C812
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '44C821
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9AEF3C
  'Data Table: 44BEE0
  loc_9AEF38: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BA9930
  'Data Table: 44BEE0
  loc_BA92F0: FLdPr Me
  loc_BA92F3: MemLdI2 bGenerado
  loc_BA92F6: BranchF loc_BA92FA
  loc_BA92F9: ExitProcHresult
  loc_BA92FA: LitVarStr var_94, "Generando reporte..."
  loc_BA92FF: PopAdLdVar
  loc_BA9300: FLdPr Me
  loc_BA9303: VCallAd Control_ID_statusBar
  loc_BA9306: FStAdFunc var_A8
  loc_BA9309: FLdPr var_A8
  loc_BA930C: LateIdSt
  loc_BA9311: FFree1Ad var_A8
  loc_BA9314: LitI4 &HB
  loc_BA9319: CI2I4
  loc_BA931A: FLdPr Me
  loc_BA931D: Me.MousePointer = from_stack_1
  loc_BA9322: FLdPr Me
  loc_BA9325: MemLdRfVar from_stack_1.global_76
  loc_BA9328: NewIfNullAd
  loc_BA932B: FStAd var_AC 
  loc_BA932F: LitStr " SELECT * FROM tmp_creditos"
  loc_BA9332: FLdPr var_AC
  loc_BA9335: Call clsbase.RedefineRS(from_stack_1v)
  loc_BA933A: FLdRfVar var_B0
  loc_BA933D: FLdPr var_AC
  loc_BA9340: from_stack_1 = clsbase.RecordCount
  loc_BA9345: ILdRf var_B0
  loc_BA9348: LitI4 1
  loc_BA934D: LtI4
  loc_BA934E: BranchF loc_BA935C
  loc_BA9351: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BA9354: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA9359: Branch loc_BA9906
  loc_BA935C: LitI4 0
  loc_BA9361: FLdRfVar var_B0
  loc_BA9364: FLdPr var_AC
  loc_BA9367: from_stack_1 = clsbase.RecordCount
  loc_BA936C: ILdRf var_B0
  loc_BA936F: FLdPr Me
  loc_BA9372: MemLdRfVar from_stack_1.global_80
  loc_BA9375: Redim
  loc_BA937F: FLdPr var_AC
  loc_BA9382: Call clsbase.MoveFirst()
  loc_BA9387: LitI2_Byte 1
  loc_BA9389: FLdPr Me
  loc_BA938C: MemLdRfVar from_stack_1.global_84
  loc_BA938F: FLdPr Me
  loc_BA9392: MemLdStr global_80
  loc_BA9395: LitI2_Byte 1
  loc_BA9397: FnUBound
  loc_BA9399: CI2I4
  loc_BA939A: ForI2 var_B4
  loc_BA93A0: FLdRfVar var_BC
  loc_BA93A3: LitVarStr var_94, "CodiOfic"
  loc_BA93A8: PopAdLdVar
  loc_BA93A9: FLdRfVar var_B8
  loc_BA93AC: FLdRfVar var_A8
  loc_BA93AF: FLdPr var_AC
  loc_BA93B2: from_stack_1v = clsbase.RsFrmGet()
  loc_BA93B7: FLdPr var_A8
  loc_BA93BA:  = Me.Fields
  loc_BA93BF: FLdPr var_B8
  loc_BA93C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BA93C7: LitI2_Byte 0
  loc_BA93C9: LitVar_Missing var_E0
  loc_BA93CC: LitI2_Byte 0
  loc_BA93CE: FLdZeroAd var_BC
  loc_BA93D1: CVarAd
  loc_BA93D5: PopAdLdVar
  loc_BA93D6: FLdPr Me
  loc_BA93D9: MemLdI2 global_84
  loc_BA93DC: CI4UI1
  loc_BA93DD: FLdPr Me
  loc_BA93E0: MemLdStr global_80
  loc_BA93E3: AryLock
  loc_BA93E6: Ary1LdPr
  loc_BA93E7: MemLdRfVar from_stack_1.global_0
  loc_BA93EA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA93EF: AryUnlock
  loc_BA93F2: FFreeAd var_A8 = ""
  loc_BA93F9: FFreeVar var_D0 = ""
  loc_BA9400: FLdRfVar var_BC
  loc_BA9403: LitVarStr var_94, "CuenCtct"
  loc_BA9408: PopAdLdVar
  loc_BA9409: FLdRfVar var_B8
  loc_BA940C: FLdRfVar var_A8
  loc_BA940F: FLdPr var_AC
  loc_BA9412: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9417: FLdPr var_A8
  loc_BA941A:  = Me.Fields
  loc_BA941F: FLdPr var_B8
  loc_BA9422: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9427: LitI2_Byte 0
  loc_BA9429: LitVar_Missing var_E0
  loc_BA942C: LitI2_Byte 0
  loc_BA942E: FLdZeroAd var_BC
  loc_BA9431: CVarAd
  loc_BA9435: PopAdLdVar
  loc_BA9436: FLdPr Me
  loc_BA9439: MemLdI2 global_84
  loc_BA943C: CI4UI1
  loc_BA943D: FLdPr Me
  loc_BA9440: MemLdStr global_80
  loc_BA9443: AryLock
  loc_BA9446: Ary1LdPr
  loc_BA9447: MemLdRfVar from_stack_1.global_4
  loc_BA944A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA944F: AryUnlock
  loc_BA9452: FFreeAd var_A8 = ""
  loc_BA9459: FFreeVar var_D0 = ""
  loc_BA9460: FLdRfVar var_BC
  loc_BA9463: LitVarStr var_94, "PeriCtct"
  loc_BA9468: PopAdLdVar
  loc_BA9469: FLdRfVar var_B8
  loc_BA946C: FLdRfVar var_A8
  loc_BA946F: FLdPr var_AC
  loc_BA9472: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9477: FLdPr var_A8
  loc_BA947A:  = Me.Fields
  loc_BA947F: FLdPr var_B8
  loc_BA9482: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9487: LitI2_Byte 0
  loc_BA9489: LitVar_Missing var_E0
  loc_BA948C: LitI2_Byte 0
  loc_BA948E: FLdZeroAd var_BC
  loc_BA9491: CVarAd
  loc_BA9495: PopAdLdVar
  loc_BA9496: FLdPr Me
  loc_BA9499: MemLdI2 global_84
  loc_BA949C: CI4UI1
  loc_BA949D: FLdPr Me
  loc_BA94A0: MemLdStr global_80
  loc_BA94A3: AryLock
  loc_BA94A6: Ary1LdPr
  loc_BA94A7: MemLdRfVar from_stack_1.global_8
  loc_BA94AA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA94AF: AryUnlock
  loc_BA94B2: FFreeAd var_A8 = ""
  loc_BA94B9: FFreeVar var_D0 = ""
  loc_BA94C0: FLdRfVar var_BC
  loc_BA94C3: LitVarStr var_94, "BimeCtct"
  loc_BA94C8: PopAdLdVar
  loc_BA94C9: FLdRfVar var_B8
  loc_BA94CC: FLdRfVar var_A8
  loc_BA94CF: FLdPr var_AC
  loc_BA94D2: from_stack_1v = clsbase.RsFrmGet()
  loc_BA94D7: FLdPr var_A8
  loc_BA94DA:  = Me.Fields
  loc_BA94DF: FLdPr var_B8
  loc_BA94E2: from_stack_2 = Me.Item(from_stack_1)
  loc_BA94E7: LitI2_Byte 0
  loc_BA94E9: LitVar_Missing var_E0
  loc_BA94EC: LitI2_Byte 0
  loc_BA94EE: FLdZeroAd var_BC
  loc_BA94F1: CVarAd
  loc_BA94F5: PopAdLdVar
  loc_BA94F6: FLdPr Me
  loc_BA94F9: MemLdI2 global_84
  loc_BA94FC: CI4UI1
  loc_BA94FD: FLdPr Me
  loc_BA9500: MemLdStr global_80
  loc_BA9503: AryLock
  loc_BA9506: Ary1LdPr
  loc_BA9507: MemLdRfVar from_stack_1.global_12
  loc_BA950A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA950F: AryUnlock
  loc_BA9512: FFreeAd var_A8 = ""
  loc_BA9519: FFreeVar var_D0 = ""
  loc_BA9520: FLdRfVar var_BC
  loc_BA9523: LitVarStr var_94, "NumeCtct"
  loc_BA9528: PopAdLdVar
  loc_BA9529: FLdRfVar var_B8
  loc_BA952C: FLdRfVar var_A8
  loc_BA952F: FLdPr var_AC
  loc_BA9532: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9537: FLdPr var_A8
  loc_BA953A:  = Me.Fields
  loc_BA953F: FLdPr var_B8
  loc_BA9542: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9547: LitI2_Byte 0
  loc_BA9549: LitVar_Missing var_E0
  loc_BA954C: LitI2_Byte 0
  loc_BA954E: FLdZeroAd var_BC
  loc_BA9551: CVarAd
  loc_BA9555: PopAdLdVar
  loc_BA9556: FLdPr Me
  loc_BA9559: MemLdI2 global_84
  loc_BA955C: CI4UI1
  loc_BA955D: FLdPr Me
  loc_BA9560: MemLdStr global_80
  loc_BA9563: AryLock
  loc_BA9566: Ary1LdPr
  loc_BA9567: MemLdRfVar from_stack_1.global_16
  loc_BA956A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA956F: AryUnlock
  loc_BA9572: FFreeAd var_A8 = ""
  loc_BA9579: FFreeVar var_D0 = ""
  loc_BA9580: FLdRfVar var_BC
  loc_BA9583: LitVarStr var_94, "SaldCtct"
  loc_BA9588: PopAdLdVar
  loc_BA9589: FLdRfVar var_B8
  loc_BA958C: FLdRfVar var_A8
  loc_BA958F: FLdPr var_AC
  loc_BA9592: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9597: FLdPr var_A8
  loc_BA959A:  = Me.Fields
  loc_BA959F: FLdPr var_B8
  loc_BA95A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BA95A7: LitI2_Byte 0
  loc_BA95A9: LitVar_Missing var_E0
  loc_BA95AC: LitI2_Byte &HFF
  loc_BA95AE: FLdZeroAd var_BC
  loc_BA95B1: CVarAd
  loc_BA95B5: PopAdLdVar
  loc_BA95B6: FLdPr Me
  loc_BA95B9: MemLdI2 global_84
  loc_BA95BC: CI4UI1
  loc_BA95BD: FLdPr Me
  loc_BA95C0: MemLdStr global_80
  loc_BA95C3: AryLock
  loc_BA95C6: Ary1LdPr
  loc_BA95C7: MemLdRfVar from_stack_1.global_20
  loc_BA95CA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA95CF: AryUnlock
  loc_BA95D2: FFreeAd var_A8 = ""
  loc_BA95D9: FFreeVar var_D0 = ""
  loc_BA95E0: FLdRfVar var_BC
  loc_BA95E3: LitVarStr var_94, "CodiOficDebi"
  loc_BA95E8: PopAdLdVar
  loc_BA95E9: FLdRfVar var_B8
  loc_BA95EC: FLdRfVar var_A8
  loc_BA95EF: FLdPr var_AC
  loc_BA95F2: from_stack_1v = clsbase.RsFrmGet()
  loc_BA95F7: FLdPr var_A8
  loc_BA95FA:  = Me.Fields
  loc_BA95FF: FLdPr var_B8
  loc_BA9602: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9607: LitI2_Byte 0
  loc_BA9609: LitVar_Missing var_E0
  loc_BA960C: LitI2_Byte 0
  loc_BA960E: FLdZeroAd var_BC
  loc_BA9611: CVarAd
  loc_BA9615: PopAdLdVar
  loc_BA9616: FLdPr Me
  loc_BA9619: MemLdI2 global_84
  loc_BA961C: CI4UI1
  loc_BA961D: FLdPr Me
  loc_BA9620: MemLdStr global_80
  loc_BA9623: AryLock
  loc_BA9626: Ary1LdPr
  loc_BA9627: MemLdRfVar from_stack_1.global_24
  loc_BA962A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA962F: AryUnlock
  loc_BA9632: FFreeAd var_A8 = ""
  loc_BA9639: FFreeVar var_D0 = ""
  loc_BA9640: FLdRfVar var_BC
  loc_BA9643: LitVarStr var_94, "CuenCtctDebi"
  loc_BA9648: PopAdLdVar
  loc_BA9649: FLdRfVar var_B8
  loc_BA964C: FLdRfVar var_A8
  loc_BA964F: FLdPr var_AC
  loc_BA9652: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9657: FLdPr var_A8
  loc_BA965A:  = Me.Fields
  loc_BA965F: FLdPr var_B8
  loc_BA9662: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9667: LitI2_Byte 0
  loc_BA9669: LitVar_Missing var_E0
  loc_BA966C: LitI2_Byte 0
  loc_BA966E: FLdZeroAd var_BC
  loc_BA9671: CVarAd
  loc_BA9675: PopAdLdVar
  loc_BA9676: FLdPr Me
  loc_BA9679: MemLdI2 global_84
  loc_BA967C: CI4UI1
  loc_BA967D: FLdPr Me
  loc_BA9680: MemLdStr global_80
  loc_BA9683: AryLock
  loc_BA9686: Ary1LdPr
  loc_BA9687: MemLdRfVar from_stack_1.global_28
  loc_BA968A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA968F: AryUnlock
  loc_BA9692: FFreeAd var_A8 = ""
  loc_BA9699: FFreeVar var_D0 = ""
  loc_BA96A0: FLdRfVar var_BC
  loc_BA96A3: LitVarStr var_94, "PeriCtctDebi"
  loc_BA96A8: PopAdLdVar
  loc_BA96A9: FLdRfVar var_B8
  loc_BA96AC: FLdRfVar var_A8
  loc_BA96AF: FLdPr var_AC
  loc_BA96B2: from_stack_1v = clsbase.RsFrmGet()
  loc_BA96B7: FLdPr var_A8
  loc_BA96BA:  = Me.Fields
  loc_BA96BF: FLdPr var_B8
  loc_BA96C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BA96C7: LitI2_Byte 0
  loc_BA96C9: LitVar_Missing var_E0
  loc_BA96CC: LitI2_Byte 0
  loc_BA96CE: FLdZeroAd var_BC
  loc_BA96D1: CVarAd
  loc_BA96D5: PopAdLdVar
  loc_BA96D6: FLdPr Me
  loc_BA96D9: MemLdI2 global_84
  loc_BA96DC: CI4UI1
  loc_BA96DD: FLdPr Me
  loc_BA96E0: MemLdStr global_80
  loc_BA96E3: AryLock
  loc_BA96E6: Ary1LdPr
  loc_BA96E7: MemLdRfVar from_stack_1.global_32
  loc_BA96EA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA96EF: AryUnlock
  loc_BA96F2: FFreeAd var_A8 = ""
  loc_BA96F9: FFreeVar var_D0 = ""
  loc_BA9700: FLdRfVar var_BC
  loc_BA9703: LitVarStr var_94, "BimeCtctDebi"
  loc_BA9708: PopAdLdVar
  loc_BA9709: FLdRfVar var_B8
  loc_BA970C: FLdRfVar var_A8
  loc_BA970F: FLdPr var_AC
  loc_BA9712: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9717: FLdPr var_A8
  loc_BA971A:  = Me.Fields
  loc_BA971F: FLdPr var_B8
  loc_BA9722: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9727: LitI2_Byte 0
  loc_BA9729: LitVar_Missing var_E0
  loc_BA972C: LitI2_Byte 0
  loc_BA972E: FLdZeroAd var_BC
  loc_BA9731: CVarAd
  loc_BA9735: PopAdLdVar
  loc_BA9736: FLdPr Me
  loc_BA9739: MemLdI2 global_84
  loc_BA973C: CI4UI1
  loc_BA973D: FLdPr Me
  loc_BA9740: MemLdStr global_80
  loc_BA9743: AryLock
  loc_BA9746: Ary1LdPr
  loc_BA9747: MemLdRfVar from_stack_1.global_36
  loc_BA974A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA974F: AryUnlock
  loc_BA9752: FFreeAd var_A8 = ""
  loc_BA9759: FFreeVar var_D0 = ""
  loc_BA9760: FLdRfVar var_BC
  loc_BA9763: LitVarStr var_94, "NumeCtctDebi"
  loc_BA9768: PopAdLdVar
  loc_BA9769: FLdRfVar var_B8
  loc_BA976C: FLdRfVar var_A8
  loc_BA976F: FLdPr var_AC
  loc_BA9772: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9777: FLdPr var_A8
  loc_BA977A:  = Me.Fields
  loc_BA977F: FLdPr var_B8
  loc_BA9782: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9787: LitI2_Byte 0
  loc_BA9789: LitVar_Missing var_E0
  loc_BA978C: LitI2_Byte 0
  loc_BA978E: FLdZeroAd var_BC
  loc_BA9791: CVarAd
  loc_BA9795: PopAdLdVar
  loc_BA9796: FLdPr Me
  loc_BA9799: MemLdI2 global_84
  loc_BA979C: CI4UI1
  loc_BA979D: FLdPr Me
  loc_BA97A0: MemLdStr global_80
  loc_BA97A3: AryLock
  loc_BA97A6: Ary1LdPr
  loc_BA97A7: MemLdRfVar from_stack_1.global_40
  loc_BA97AA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA97AF: AryUnlock
  loc_BA97B2: FFreeAd var_A8 = ""
  loc_BA97B9: FFreeVar var_D0 = ""
  loc_BA97C0: FLdRfVar var_BC
  loc_BA97C3: LitVarStr var_94, "CodiConcDebi"
  loc_BA97C8: PopAdLdVar
  loc_BA97C9: FLdRfVar var_B8
  loc_BA97CC: FLdRfVar var_A8
  loc_BA97CF: FLdPr var_AC
  loc_BA97D2: from_stack_1v = clsbase.RsFrmGet()
  loc_BA97D7: FLdPr var_A8
  loc_BA97DA:  = Me.Fields
  loc_BA97DF: FLdPr var_B8
  loc_BA97E2: from_stack_2 = Me.Item(from_stack_1)
  loc_BA97E7: LitI2_Byte 0
  loc_BA97E9: LitVar_Missing var_E0
  loc_BA97EC: LitI2_Byte 0
  loc_BA97EE: FLdZeroAd var_BC
  loc_BA97F1: CVarAd
  loc_BA97F5: PopAdLdVar
  loc_BA97F6: FLdPr Me
  loc_BA97F9: MemLdI2 global_84
  loc_BA97FC: CI4UI1
  loc_BA97FD: FLdPr Me
  loc_BA9800: MemLdStr global_80
  loc_BA9803: AryLock
  loc_BA9806: Ary1LdPr
  loc_BA9807: MemLdRfVar from_stack_1.global_44
  loc_BA980A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA980F: AryUnlock
  loc_BA9812: FFreeAd var_A8 = ""
  loc_BA9819: FFreeVar var_D0 = ""
  loc_BA9820: FLdRfVar var_BC
  loc_BA9823: LitVarStr var_94, "SaldCtctDebi"
  loc_BA9828: PopAdLdVar
  loc_BA9829: FLdRfVar var_B8
  loc_BA982C: FLdRfVar var_A8
  loc_BA982F: FLdPr var_AC
  loc_BA9832: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9837: FLdPr var_A8
  loc_BA983A:  = Me.Fields
  loc_BA983F: FLdPr var_B8
  loc_BA9842: from_stack_2 = Me.Item(from_stack_1)
  loc_BA9847: LitI2_Byte 0
  loc_BA9849: LitVar_Missing var_E0
  loc_BA984C: LitI2_Byte &HFF
  loc_BA984E: FLdZeroAd var_BC
  loc_BA9851: CVarAd
  loc_BA9855: PopAdLdVar
  loc_BA9856: FLdPr Me
  loc_BA9859: MemLdI2 global_84
  loc_BA985C: CI4UI1
  loc_BA985D: FLdPr Me
  loc_BA9860: MemLdStr global_80
  loc_BA9863: AryLock
  loc_BA9866: Ary1LdPr
  loc_BA9867: MemLdRfVar from_stack_1.global_48
  loc_BA986A: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA986F: AryUnlock
  loc_BA9872: FFreeAd var_A8 = ""
  loc_BA9879: FFreeVar var_D0 = ""
  loc_BA9880: FLdRfVar var_BC
  loc_BA9883: LitVarStr var_94, "DifeCtctDebi"
  loc_BA9888: PopAdLdVar
  loc_BA9889: FLdRfVar var_B8
  loc_BA988C: FLdRfVar var_A8
  loc_BA988F: FLdPr var_AC
  loc_BA9892: from_stack_1v = clsbase.RsFrmGet()
  loc_BA9897: FLdPr var_A8
  loc_BA989A:  = Me.Fields
  loc_BA989F: FLdPr var_B8
  loc_BA98A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BA98A7: LitI2_Byte 0
  loc_BA98A9: LitVar_Missing var_E0
  loc_BA98AC: LitI2_Byte &HFF
  loc_BA98AE: FLdZeroAd var_BC
  loc_BA98B1: CVarAd
  loc_BA98B5: PopAdLdVar
  loc_BA98B6: FLdPr Me
  loc_BA98B9: MemLdI2 global_84
  loc_BA98BC: CI4UI1
  loc_BA98BD: FLdPr Me
  loc_BA98C0: MemLdStr global_80
  loc_BA98C3: AryLock
  loc_BA98C6: Ary1LdPr
  loc_BA98C7: MemLdRfVar from_stack_1.bLogos
  loc_BA98CA: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BA98CF: AryUnlock
  loc_BA98D2: FFreeAd var_A8 = ""
  loc_BA98D9: FFreeVar var_D0 = ""
  loc_BA98E0: LitI2_Byte 1
  loc_BA98E2: PopTmpLdAd2 var_E2
  loc_BA98E5: FLdPr var_AC
  loc_BA98E8: Call clsbase.Move(from_stack_1v)
  loc_BA98ED: FLdPr Me
  loc_BA98F0: MemLdRfVar from_stack_1.global_84
  loc_BA98F3: NextI2 var_B4, loc_BA93A0
  loc_BA98F8: LitNothing
  loc_BA98FA: FStAd var_AC 
  loc_BA98FE: LitI2_Byte &HFF
  loc_BA9900: FLdPr Me
  loc_BA9903: MemStI2 bGenerado
  loc_BA9906: LitI4 0
  loc_BA990B: CI2I4
  loc_BA990C: FLdPr Me
  loc_BA990F: Me.MousePointer = from_stack_1
  loc_BA9914: LitVarStr var_94, vbNullString
  loc_BA9919: PopAdLdVar
  loc_BA991A: FLdPr Me
  loc_BA991D: VCallAd Control_ID_statusBar
  loc_BA9920: FStAdFunc var_A8
  loc_BA9923: FLdPr var_A8
  loc_BA9926: LateIdSt
  loc_BA992B: FFree1Ad var_A8
  loc_BA992E: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B381BC
  'Data Table: 44BEE0
  loc_B37EAC: FLdRfVar var_88
  loc_B37EAF: LitI2_Byte 0
  loc_B37EB1: LitI2_Byte &HFF
  loc_B37EB3: ImpAdLdI4 MemVar_D93C84
  loc_B37EB6: FLdPr Me
  loc_B37EB9: MemLdRfVar from_stack_1.global_56
  loc_B37EBC: NewIfNullPr IFileSystem3
  loc_B37EBF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B37EC4: ILdRf var_88
  loc_B37EC7: FLdPr Me
  loc_B37ECA: MemStVarAd
  loc_B37ECE: FFree1Ad var_88
  loc_B37ED1: LitI2_Byte &HFF
  loc_B37ED3: ImpAdStI2 MemVar_D93C8A
  loc_B37ED6: Call Proc_245_17_BCA804()
  loc_B37EDB: LitI2_Byte 1
  loc_B37EDD: FLdPr Me
  loc_B37EE0: MemLdRfVar from_stack_1.global_84
  loc_B37EE3: FLdPr Me
  loc_B37EE6: MemLdStr global_80
  loc_B37EE9: LitI2_Byte 1
  loc_B37EEB: FnUBound
  loc_B37EED: CI2I4
  loc_B37EEE: ForI2 var_8C
  loc_B37EF4: FLdPr Me
  loc_B37EF7: MemLdI2 global_84
  loc_B37EFA: CI4UI1
  loc_B37EFB: FLdPr Me
  loc_B37EFE: MemLdStr global_80
  loc_B37F01: AryLock
  loc_B37F04: Ary1LdRf
  loc_B37F05: FStR4 var_94
  loc_B37F08: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B37F0D: PopAdLdVar
  loc_B37F0E: FLdPr Me
  loc_B37F11: MemLdRfVar from_stack_1.global_60
  loc_B37F14: LdPrVar
  loc_B37F16: LateMemCall
  loc_B37F1C: LitStr vbNullString
  loc_B37F1F: LitI2_Byte 0
  loc_B37F21: LitI2_Byte 0
  loc_B37F23: LitI2_Byte 0
  loc_B37F25: LitStr "right"
  loc_B37F28: FMemLdR4 var_94(0)
  loc_B37F2D: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37F32: CVarStr var_C4
  loc_B37F35: PopAdLdVar
  loc_B37F36: FLdPr Me
  loc_B37F39: MemLdRfVar from_stack_1.global_60
  loc_B37F3C: LdPrVar
  loc_B37F3E: LateMemCall
  loc_B37F44: FFree1Var var_C4 = ""
  loc_B37F47: LitStr vbNullString
  loc_B37F4A: LitI2_Byte 0
  loc_B37F4C: LitI2_Byte 0
  loc_B37F4E: LitI2_Byte 0
  loc_B37F50: LitStr "left"
  loc_B37F53: FMemLdR4 var_94(4)
  loc_B37F58: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37F5D: CVarStr var_C4
  loc_B37F60: PopAdLdVar
  loc_B37F61: FLdPr Me
  loc_B37F64: MemLdRfVar from_stack_1.global_60
  loc_B37F67: LdPrVar
  loc_B37F69: LateMemCall
  loc_B37F6F: FFree1Var var_C4 = ""
  loc_B37F72: LitStr vbNullString
  loc_B37F75: LitI2_Byte 0
  loc_B37F77: LitI2_Byte 0
  loc_B37F79: LitI2_Byte 0
  loc_B37F7B: LitStr "left"
  loc_B37F7E: FMemLdR4 var_94(8)
  loc_B37F83: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37F88: CVarStr var_C4
  loc_B37F8B: PopAdLdVar
  loc_B37F8C: FLdPr Me
  loc_B37F8F: MemLdRfVar from_stack_1.global_60
  loc_B37F92: LdPrVar
  loc_B37F94: LateMemCall
  loc_B37F9A: FFree1Var var_C4 = ""
  loc_B37F9D: LitStr vbNullString
  loc_B37FA0: LitI2_Byte 0
  loc_B37FA2: LitI2_Byte 0
  loc_B37FA4: LitI2_Byte 0
  loc_B37FA6: LitStr "center"
  loc_B37FA9: FMemLdR4 var_94(12)
  loc_B37FAE: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37FB3: CVarStr var_C4
  loc_B37FB6: PopAdLdVar
  loc_B37FB7: FLdPr Me
  loc_B37FBA: MemLdRfVar from_stack_1.global_60
  loc_B37FBD: LdPrVar
  loc_B37FBF: LateMemCall
  loc_B37FC5: FFree1Var var_C4 = ""
  loc_B37FC8: LitStr vbNullString
  loc_B37FCB: LitI2_Byte 0
  loc_B37FCD: LitI2_Byte 0
  loc_B37FCF: LitI2_Byte 0
  loc_B37FD1: LitStr "right"
  loc_B37FD4: FMemLdR4 var_94(16)
  loc_B37FD9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B37FDE: CVarStr var_C4
  loc_B37FE1: PopAdLdVar
  loc_B37FE2: FLdPr Me
  loc_B37FE5: MemLdRfVar from_stack_1.global_60
  loc_B37FE8: LdPrVar
  loc_B37FEA: LateMemCall
  loc_B37FF0: FFree1Var var_C4 = ""
  loc_B37FF3: LitStr vbNullString
  loc_B37FF6: LitI2_Byte 0
  loc_B37FF8: LitI2_Byte 0
  loc_B37FFA: LitI2_Byte 0
  loc_B37FFC: LitStr "right"
  loc_B37FFF: FMemLdR4 var_94(20)
  loc_B38004: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38009: CVarStr var_C4
  loc_B3800C: PopAdLdVar
  loc_B3800D: FLdPr Me
  loc_B38010: MemLdRfVar from_stack_1.global_60
  loc_B38013: LdPrVar
  loc_B38015: LateMemCall
  loc_B3801B: FFree1Var var_C4 = ""
  loc_B3801E: LitStr vbNullString
  loc_B38021: LitI2_Byte 0
  loc_B38023: LitI2_Byte 0
  loc_B38025: LitI2_Byte 0
  loc_B38027: LitStr "right"
  loc_B3802A: FMemLdR4 var_94(24)
  loc_B3802F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38034: CVarStr var_C4
  loc_B38037: PopAdLdVar
  loc_B38038: FLdPr Me
  loc_B3803B: MemLdRfVar from_stack_1.global_60
  loc_B3803E: LdPrVar
  loc_B38040: LateMemCall
  loc_B38046: FFree1Var var_C4 = ""
  loc_B38049: LitStr vbNullString
  loc_B3804C: LitI2_Byte 0
  loc_B3804E: LitI2_Byte 0
  loc_B38050: LitI2_Byte 0
  loc_B38052: LitStr "left"
  loc_B38055: FMemLdR4 var_94(28)
  loc_B3805A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3805F: CVarStr var_C4
  loc_B38062: PopAdLdVar
  loc_B38063: FLdPr Me
  loc_B38066: MemLdRfVar from_stack_1.global_60
  loc_B38069: LdPrVar
  loc_B3806B: LateMemCall
  loc_B38071: FFree1Var var_C4 = ""
  loc_B38074: LitStr vbNullString
  loc_B38077: LitI2_Byte 0
  loc_B38079: LitI2_Byte 0
  loc_B3807B: LitI2_Byte 0
  loc_B3807D: LitStr "left"
  loc_B38080: FMemLdR4 var_94(32)
  loc_B38085: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3808A: CVarStr var_C4
  loc_B3808D: PopAdLdVar
  loc_B3808E: FLdPr Me
  loc_B38091: MemLdRfVar from_stack_1.global_60
  loc_B38094: LdPrVar
  loc_B38096: LateMemCall
  loc_B3809C: FFree1Var var_C4 = ""
  loc_B3809F: LitStr vbNullString
  loc_B380A2: LitI2_Byte 0
  loc_B380A4: LitI2_Byte 0
  loc_B380A6: LitI2_Byte 0
  loc_B380A8: LitStr "center"
  loc_B380AB: FMemLdR4 var_94(36)
  loc_B380B0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B380B5: CVarStr var_C4
  loc_B380B8: PopAdLdVar
  loc_B380B9: FLdPr Me
  loc_B380BC: MemLdRfVar from_stack_1.global_60
  loc_B380BF: LdPrVar
  loc_B380C1: LateMemCall
  loc_B380C7: FFree1Var var_C4 = ""
  loc_B380CA: LitStr vbNullString
  loc_B380CD: LitI2_Byte 0
  loc_B380CF: LitI2_Byte 0
  loc_B380D1: LitI2_Byte 0
  loc_B380D3: LitStr "right"
  loc_B380D6: FMemLdR4 var_94(40)
  loc_B380DB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B380E0: CVarStr var_C4
  loc_B380E3: PopAdLdVar
  loc_B380E4: FLdPr Me
  loc_B380E7: MemLdRfVar from_stack_1.global_60
  loc_B380EA: LdPrVar
  loc_B380EC: LateMemCall
  loc_B380F2: FFree1Var var_C4 = ""
  loc_B380F5: LitStr vbNullString
  loc_B380F8: LitI2_Byte 0
  loc_B380FA: LitI2_Byte 0
  loc_B380FC: LitI2_Byte 0
  loc_B380FE: LitStr "right"
  loc_B38101: FMemLdR4 var_94(44)
  loc_B38106: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B3810B: CVarStr var_C4
  loc_B3810E: PopAdLdVar
  loc_B3810F: FLdPr Me
  loc_B38112: MemLdRfVar from_stack_1.global_60
  loc_B38115: LdPrVar
  loc_B38117: LateMemCall
  loc_B3811D: FFree1Var var_C4 = ""
  loc_B38120: LitStr vbNullString
  loc_B38123: LitI2_Byte 0
  loc_B38125: LitI2_Byte 0
  loc_B38127: LitI2_Byte 0
  loc_B38129: LitStr "right"
  loc_B3812C: FMemLdR4 var_94(48)
  loc_B38131: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38136: CVarStr var_C4
  loc_B38139: PopAdLdVar
  loc_B3813A: FLdPr Me
  loc_B3813D: MemLdRfVar from_stack_1.global_60
  loc_B38140: LdPrVar
  loc_B38142: LateMemCall
  loc_B38148: FFree1Var var_C4 = ""
  loc_B3814B: LitStr vbNullString
  loc_B3814E: LitI2_Byte 0
  loc_B38150: LitI2_Byte 0
  loc_B38152: LitI2_Byte 0
  loc_B38154: LitStr "right"
  loc_B38157: FMemLdR4 var_94(52)
  loc_B3815C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B38161: CVarStr var_C4
  loc_B38164: PopAdLdVar
  loc_B38165: FLdPr Me
  loc_B38168: MemLdRfVar from_stack_1.global_60
  loc_B3816B: LdPrVar
  loc_B3816D: LateMemCall
  loc_B38173: FFree1Var var_C4 = ""
  loc_B38176: LitVarStr var_A4, "     </tr>"
  loc_B3817B: PopAdLdVar
  loc_B3817C: FLdPr Me
  loc_B3817F: MemLdRfVar from_stack_1.global_60
  loc_B38182: LdPrVar
  loc_B38184: LateMemCall
  loc_B3818A: LitI4 0
  loc_B3818F: FStR4 var_94
  loc_B38192: AryUnlock
  loc_B38195: FLdPr Me
  loc_B38198: MemLdRfVar from_stack_1.global_84
  loc_B3819B: NextI2 var_8C, loc_B37EF4
  loc_B381A0: Call Proc_245_18_A0E6D8()
  loc_B381A5: FLdPr Me
  loc_B381A8: MemLdRfVar from_stack_1.global_60
  loc_B381AB: LdPrVar
  loc_B381AD: LateMemCall
  loc_B381B3: LitStr vbNullString
  loc_B381B6: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B381BB: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9BC544
  'Data Table: 44BEE0
  loc_9BC52C: LitI2_Byte 0
  loc_9BC52E: FLdPr Me
  loc_9BC531: MemStI2 bLogos
  loc_9BC534: Call GeneraHTML()
  loc_9BC539: LitI2_Byte &HFF
  loc_9BC53B: FLdPr Me
  loc_9BC53E: MemStI2 bLogos
  loc_9BC541: ExitProcHresult
End Sub

Private Function Proc_245_17_BCA804() 'BCA804
  'Data Table: 44BEE0
  loc_BCA100: LitVarStr var_94, "<html>"
  loc_BCA105: PopAdLdVar
  loc_BCA106: FLdPr Me
  loc_BCA109: MemLdRfVar from_stack_1.global_60
  loc_BCA10C: LdPrVar
  loc_BCA10E: LateMemCall
  loc_BCA114: LitVarStr var_94, "<head>"
  loc_BCA119: PopAdLdVar
  loc_BCA11A: FLdPr Me
  loc_BCA11D: MemLdRfVar from_stack_1.global_60
  loc_BCA120: LdPrVar
  loc_BCA122: LateMemCall
  loc_BCA128: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCA12D: PopAdLdVar
  loc_BCA12E: FLdPr Me
  loc_BCA131: MemLdRfVar from_stack_1.global_60
  loc_BCA134: LdPrVar
  loc_BCA136: LateMemCall
  loc_BCA13C: LitStr "<title>"
  loc_BCA13F: FLdRfVar var_A8
  loc_BCA142: FLdPr Me
  loc_BCA145:  = Me.Caption
  loc_BCA14A: ILdRf var_A8
  loc_BCA14D: ConcatStr
  loc_BCA14E: FStStrNoPop var_AC
  loc_BCA151: LitStr "</title>"
  loc_BCA154: ConcatStr
  loc_BCA155: CVarStr var_BC
  loc_BCA158: PopAdLdVar
  loc_BCA159: FLdPr Me
  loc_BCA15C: MemLdRfVar from_stack_1.global_60
  loc_BCA15F: LdPrVar
  loc_BCA161: LateMemCall
  loc_BCA167: FFreeStr var_A8 = ""
  loc_BCA16E: FFree1Var var_BC = ""
  loc_BCA171: LitVarStr var_94, "<style type=""text/css"">"
  loc_BCA176: PopAdLdVar
  loc_BCA177: FLdPr Me
  loc_BCA17A: MemLdRfVar from_stack_1.global_60
  loc_BCA17D: LdPrVar
  loc_BCA17F: LateMemCall
  loc_BCA185: LitVarStr var_94, ".Titulo1 {"
  loc_BCA18A: PopAdLdVar
  loc_BCA18B: FLdPr Me
  loc_BCA18E: MemLdRfVar from_stack_1.global_60
  loc_BCA191: LdPrVar
  loc_BCA193: LateMemCall
  loc_BCA199: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCA19E: PopAdLdVar
  loc_BCA19F: FLdPr Me
  loc_BCA1A2: MemLdRfVar from_stack_1.global_60
  loc_BCA1A5: LdPrVar
  loc_BCA1A7: LateMemCall
  loc_BCA1AD: LitVarStr var_94, " font-size: 18px;"
  loc_BCA1B2: PopAdLdVar
  loc_BCA1B3: FLdPr Me
  loc_BCA1B6: MemLdRfVar from_stack_1.global_60
  loc_BCA1B9: LdPrVar
  loc_BCA1BB: LateMemCall
  loc_BCA1C1: LitVarStr var_94, " font-weight: bold;"
  loc_BCA1C6: PopAdLdVar
  loc_BCA1C7: FLdPr Me
  loc_BCA1CA: MemLdRfVar from_stack_1.global_60
  loc_BCA1CD: LdPrVar
  loc_BCA1CF: LateMemCall
  loc_BCA1D5: LitVarStr var_94, "}"
  loc_BCA1DA: PopAdLdVar
  loc_BCA1DB: FLdPr Me
  loc_BCA1DE: MemLdRfVar from_stack_1.global_60
  loc_BCA1E1: LdPrVar
  loc_BCA1E3: LateMemCall
  loc_BCA1E9: LitVarStr var_94, ".Titulo2 {"
  loc_BCA1EE: PopAdLdVar
  loc_BCA1EF: FLdPr Me
  loc_BCA1F2: MemLdRfVar from_stack_1.global_60
  loc_BCA1F5: LdPrVar
  loc_BCA1F7: LateMemCall
  loc_BCA1FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCA202: PopAdLdVar
  loc_BCA203: FLdPr Me
  loc_BCA206: MemLdRfVar from_stack_1.global_60
  loc_BCA209: LdPrVar
  loc_BCA20B: LateMemCall
  loc_BCA211: LitVarStr var_94, " font-size: 14px;"
  loc_BCA216: PopAdLdVar
  loc_BCA217: FLdPr Me
  loc_BCA21A: MemLdRfVar from_stack_1.global_60
  loc_BCA21D: LdPrVar
  loc_BCA21F: LateMemCall
  loc_BCA225: LitVarStr var_94, " font-weight: bold;"
  loc_BCA22A: PopAdLdVar
  loc_BCA22B: FLdPr Me
  loc_BCA22E: MemLdRfVar from_stack_1.global_60
  loc_BCA231: LdPrVar
  loc_BCA233: LateMemCall
  loc_BCA239: LitVarStr var_94, "}"
  loc_BCA23E: PopAdLdVar
  loc_BCA23F: FLdPr Me
  loc_BCA242: MemLdRfVar from_stack_1.global_60
  loc_BCA245: LdPrVar
  loc_BCA247: LateMemCall
  loc_BCA24D: LitVarStr var_94, ".Normal {"
  loc_BCA252: PopAdLdVar
  loc_BCA253: FLdPr Me
  loc_BCA256: MemLdRfVar from_stack_1.global_60
  loc_BCA259: LdPrVar
  loc_BCA25B: LateMemCall
  loc_BCA261: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCA266: PopAdLdVar
  loc_BCA267: FLdPr Me
  loc_BCA26A: MemLdRfVar from_stack_1.global_60
  loc_BCA26D: LdPrVar
  loc_BCA26F: LateMemCall
  loc_BCA275: LitVarStr var_94, " font-size: 12px;"
  loc_BCA27A: PopAdLdVar
  loc_BCA27B: FLdPr Me
  loc_BCA27E: MemLdRfVar from_stack_1.global_60
  loc_BCA281: LdPrVar
  loc_BCA283: LateMemCall
  loc_BCA289: LitVarStr var_94, " font-style: normal;"
  loc_BCA28E: PopAdLdVar
  loc_BCA28F: FLdPr Me
  loc_BCA292: MemLdRfVar from_stack_1.global_60
  loc_BCA295: LdPrVar
  loc_BCA297: LateMemCall
  loc_BCA29D: LitVarStr var_94, " font-weight: normal;"
  loc_BCA2A2: PopAdLdVar
  loc_BCA2A3: FLdPr Me
  loc_BCA2A6: MemLdRfVar from_stack_1.global_60
  loc_BCA2A9: LdPrVar
  loc_BCA2AB: LateMemCall
  loc_BCA2B1: LitVarStr var_94, " font-variant: normal;"
  loc_BCA2B6: PopAdLdVar
  loc_BCA2B7: FLdPr Me
  loc_BCA2BA: MemLdRfVar from_stack_1.global_60
  loc_BCA2BD: LdPrVar
  loc_BCA2BF: LateMemCall
  loc_BCA2C5: LitVarStr var_94, "}"
  loc_BCA2CA: PopAdLdVar
  loc_BCA2CB: FLdPr Me
  loc_BCA2CE: MemLdRfVar from_stack_1.global_60
  loc_BCA2D1: LdPrVar
  loc_BCA2D3: LateMemCall
  loc_BCA2D9: LitVarStr var_94, ".Encabezado {"
  loc_BCA2DE: PopAdLdVar
  loc_BCA2DF: FLdPr Me
  loc_BCA2E2: MemLdRfVar from_stack_1.global_60
  loc_BCA2E5: LdPrVar
  loc_BCA2E7: LateMemCall
  loc_BCA2ED: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCA2F2: PopAdLdVar
  loc_BCA2F3: FLdPr Me
  loc_BCA2F6: MemLdRfVar from_stack_1.global_60
  loc_BCA2F9: LdPrVar
  loc_BCA2FB: LateMemCall
  loc_BCA301: LitVarStr var_94, " font-size: 11px;"
  loc_BCA306: PopAdLdVar
  loc_BCA307: FLdPr Me
  loc_BCA30A: MemLdRfVar from_stack_1.global_60
  loc_BCA30D: LdPrVar
  loc_BCA30F: LateMemCall
  loc_BCA315: LitVarStr var_94, " font-weight: bold;"
  loc_BCA31A: PopAdLdVar
  loc_BCA31B: FLdPr Me
  loc_BCA31E: MemLdRfVar from_stack_1.global_60
  loc_BCA321: LdPrVar
  loc_BCA323: LateMemCall
  loc_BCA329: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BCA32E: PopAdLdVar
  loc_BCA32F: FLdPr Me
  loc_BCA332: MemLdRfVar from_stack_1.global_60
  loc_BCA335: LdPrVar
  loc_BCA337: LateMemCall
  loc_BCA33D: LitVarStr var_94, "}"
  loc_BCA342: PopAdLdVar
  loc_BCA343: FLdPr Me
  loc_BCA346: MemLdRfVar from_stack_1.global_60
  loc_BCA349: LdPrVar
  loc_BCA34B: LateMemCall
  loc_BCA351: LitVarStr var_94, ".LineaDato {"
  loc_BCA356: PopAdLdVar
  loc_BCA357: FLdPr Me
  loc_BCA35A: MemLdRfVar from_stack_1.global_60
  loc_BCA35D: LdPrVar
  loc_BCA35F: LateMemCall
  loc_BCA365: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCA36A: PopAdLdVar
  loc_BCA36B: FLdPr Me
  loc_BCA36E: MemLdRfVar from_stack_1.global_60
  loc_BCA371: LdPrVar
  loc_BCA373: LateMemCall
  loc_BCA379: LitVarStr var_94, " font-size: 10px;"
  loc_BCA37E: PopAdLdVar
  loc_BCA37F: FLdPr Me
  loc_BCA382: MemLdRfVar from_stack_1.global_60
  loc_BCA385: LdPrVar
  loc_BCA387: LateMemCall
  loc_BCA38D: LitVarStr var_94, "}"
  loc_BCA392: PopAdLdVar
  loc_BCA393: FLdPr Me
  loc_BCA396: MemLdRfVar from_stack_1.global_60
  loc_BCA399: LdPrVar
  loc_BCA39B: LateMemCall
  loc_BCA3A1: LitVarStr var_94, ".Totales {"
  loc_BCA3A6: PopAdLdVar
  loc_BCA3A7: FLdPr Me
  loc_BCA3AA: MemLdRfVar from_stack_1.global_60
  loc_BCA3AD: LdPrVar
  loc_BCA3AF: LateMemCall
  loc_BCA3B5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCA3BA: PopAdLdVar
  loc_BCA3BB: FLdPr Me
  loc_BCA3BE: MemLdRfVar from_stack_1.global_60
  loc_BCA3C1: LdPrVar
  loc_BCA3C3: LateMemCall
  loc_BCA3C9: LitVarStr var_94, " font-size: 12px;"
  loc_BCA3CE: PopAdLdVar
  loc_BCA3CF: FLdPr Me
  loc_BCA3D2: MemLdRfVar from_stack_1.global_60
  loc_BCA3D5: LdPrVar
  loc_BCA3D7: LateMemCall
  loc_BCA3DD: LitVarStr var_94, " font-weight: bold;"
  loc_BCA3E2: PopAdLdVar
  loc_BCA3E3: FLdPr Me
  loc_BCA3E6: MemLdRfVar from_stack_1.global_60
  loc_BCA3E9: LdPrVar
  loc_BCA3EB: LateMemCall
  loc_BCA3F1: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCA3F6: PopAdLdVar
  loc_BCA3F7: FLdPr Me
  loc_BCA3FA: MemLdRfVar from_stack_1.global_60
  loc_BCA3FD: LdPrVar
  loc_BCA3FF: LateMemCall
  loc_BCA405: LitVarStr var_94, "}"
  loc_BCA40A: PopAdLdVar
  loc_BCA40B: FLdPr Me
  loc_BCA40E: MemLdRfVar from_stack_1.global_60
  loc_BCA411: LdPrVar
  loc_BCA413: LateMemCall
  loc_BCA419: LitVarStr var_94, ".SubTotales {"
  loc_BCA41E: PopAdLdVar
  loc_BCA41F: FLdPr Me
  loc_BCA422: MemLdRfVar from_stack_1.global_60
  loc_BCA425: LdPrVar
  loc_BCA427: LateMemCall
  loc_BCA42D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCA432: PopAdLdVar
  loc_BCA433: FLdPr Me
  loc_BCA436: MemLdRfVar from_stack_1.global_60
  loc_BCA439: LdPrVar
  loc_BCA43B: LateMemCall
  loc_BCA441: LitVarStr var_94, " font-size: 10px;"
  loc_BCA446: PopAdLdVar
  loc_BCA447: FLdPr Me
  loc_BCA44A: MemLdRfVar from_stack_1.global_60
  loc_BCA44D: LdPrVar
  loc_BCA44F: LateMemCall
  loc_BCA455: LitVarStr var_94, " font-weight: bold;"
  loc_BCA45A: PopAdLdVar
  loc_BCA45B: FLdPr Me
  loc_BCA45E: MemLdRfVar from_stack_1.global_60
  loc_BCA461: LdPrVar
  loc_BCA463: LateMemCall
  loc_BCA469: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCA46E: PopAdLdVar
  loc_BCA46F: FLdPr Me
  loc_BCA472: MemLdRfVar from_stack_1.global_60
  loc_BCA475: LdPrVar
  loc_BCA477: LateMemCall
  loc_BCA47D: LitVarStr var_94, "}"
  loc_BCA482: PopAdLdVar
  loc_BCA483: FLdPr Me
  loc_BCA486: MemLdRfVar from_stack_1.global_60
  loc_BCA489: LdPrVar
  loc_BCA48B: LateMemCall
  loc_BCA491: LitVarStr var_94, ".Tilde {"
  loc_BCA496: PopAdLdVar
  loc_BCA497: FLdPr Me
  loc_BCA49A: MemLdRfVar from_stack_1.global_60
  loc_BCA49D: LdPrVar
  loc_BCA49F: LateMemCall
  loc_BCA4A5: LitVarStr var_94, " font-family: Wingdings;"
  loc_BCA4AA: PopAdLdVar
  loc_BCA4AB: FLdPr Me
  loc_BCA4AE: MemLdRfVar from_stack_1.global_60
  loc_BCA4B1: LdPrVar
  loc_BCA4B3: LateMemCall
  loc_BCA4B9: LitVarStr var_94, " font-size: 16px;"
  loc_BCA4BE: PopAdLdVar
  loc_BCA4BF: FLdPr Me
  loc_BCA4C2: MemLdRfVar from_stack_1.global_60
  loc_BCA4C5: LdPrVar
  loc_BCA4C7: LateMemCall
  loc_BCA4CD: LitVarStr var_94, "}"
  loc_BCA4D2: PopAdLdVar
  loc_BCA4D3: FLdPr Me
  loc_BCA4D6: MemLdRfVar from_stack_1.global_60
  loc_BCA4D9: LdPrVar
  loc_BCA4DB: LateMemCall
  loc_BCA4E1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BCA4E6: PopAdLdVar
  loc_BCA4E7: FLdPr Me
  loc_BCA4EA: MemLdRfVar from_stack_1.global_60
  loc_BCA4ED: LdPrVar
  loc_BCA4EF: LateMemCall
  loc_BCA4F5: LitVarStr var_94, "</style>"
  loc_BCA4FA: PopAdLdVar
  loc_BCA4FB: FLdPr Me
  loc_BCA4FE: MemLdRfVar from_stack_1.global_60
  loc_BCA501: LdPrVar
  loc_BCA503: LateMemCall
  loc_BCA509: LitI4 0
  loc_BCA50E: FStStrCopy var_AC
  loc_BCA511: FLdRfVar var_AC
  loc_BCA514: LitI4 0
  loc_BCA519: FStStrCopy var_A8
  loc_BCA51C: FLdRfVar var_A8
  loc_BCA51F: LitI2_Byte 0
  loc_BCA521: PopTmpLdAd2 var_BE
  loc_BCA524: FLdPr Me
  loc_BCA527: MemLdRfVar from_stack_1.global_60
  loc_BCA52A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCA52F: FFreeStr var_A8 = ""
  loc_BCA536: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCA53B: PopAdLdVar
  loc_BCA53C: FLdPr Me
  loc_BCA53F: MemLdRfVar from_stack_1.global_60
  loc_BCA542: LdPrVar
  loc_BCA544: LateMemCall
  loc_BCA54A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BCA54F: PopAdLdVar
  loc_BCA550: FLdPr Me
  loc_BCA553: MemLdRfVar from_stack_1.global_60
  loc_BCA556: LdPrVar
  loc_BCA558: LateMemCall
  loc_BCA55E: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""3"" align=""center"" valign=""middle""><p>"
  loc_BCA563: PopAdLdVar
  loc_BCA564: FLdPr Me
  loc_BCA567: MemLdRfVar from_stack_1.global_60
  loc_BCA56A: LdPrVar
  loc_BCA56C: LateMemCall
  loc_BCA572: FLdPr Me
  loc_BCA575: MemLdI2 bLogos
  loc_BCA578: BranchF loc_BCA5D3
  loc_BCA57B: LitStr "  <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCA57E: LitI2_Byte &H5F
  loc_BCA580: CStrUI1
  loc_BCA582: FStStrNoPop var_A8
  loc_BCA585: ConcatStr
  loc_BCA586: FStStrNoPop var_AC
  loc_BCA589: LitStr """ height="""
  loc_BCA58C: ConcatStr
  loc_BCA58D: FStStrNoPop var_C4
  loc_BCA590: LitI2_Byte &H3C
  loc_BCA592: CStrUI1
  loc_BCA594: FStStrNoPop var_C8
  loc_BCA597: ConcatStr
  loc_BCA598: FStStrNoPop var_CC
  loc_BCA59B: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BCA59E: ConcatStr
  loc_BCA59F: FStStrNoPop var_D0
  loc_BCA5A2: LitStr "Municipalidad de Guaymallén"
  loc_BCA5A5: ConcatStr
  loc_BCA5A6: FStStrNoPop var_D4
  loc_BCA5A9: LitStr "</p>"
  loc_BCA5AC: ConcatStr
  loc_BCA5AD: CVarStr var_BC
  loc_BCA5B0: PopAdLdVar
  loc_BCA5B1: FLdPr Me
  loc_BCA5B4: MemLdRfVar from_stack_1.global_60
  loc_BCA5B7: LdPrVar
  loc_BCA5B9: LateMemCall
  loc_BCA5BF: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BCA5D0: FFree1Var var_BC = ""
  loc_BCA5D3: LitStr "    <p>"
  loc_BCA5D6: FLdRfVar var_A8
  loc_BCA5D9: FLdPr Me
  loc_BCA5DC:  = Me.Caption
  loc_BCA5E1: ILdRf var_A8
  loc_BCA5E4: ConcatStr
  loc_BCA5E5: FStStrNoPop var_AC
  loc_BCA5E8: LitStr "</p></th>"
  loc_BCA5EB: ConcatStr
  loc_BCA5EC: CVarStr var_BC
  loc_BCA5EF: PopAdLdVar
  loc_BCA5F0: FLdPr Me
  loc_BCA5F3: MemLdRfVar from_stack_1.global_60
  loc_BCA5F6: LdPrVar
  loc_BCA5F8: LateMemCall
  loc_BCA5FE: FFreeStr var_A8 = ""
  loc_BCA605: FFree1Var var_BC = ""
  loc_BCA608: LitVarStr var_94, "  </tr>"
  loc_BCA60D: PopAdLdVar
  loc_BCA60E: FLdPr Me
  loc_BCA611: MemLdRfVar from_stack_1.global_60
  loc_BCA614: LdPrVar
  loc_BCA616: LateMemCall
  loc_BCA61C: LitVarStr var_94, "  <tr>"
  loc_BCA621: PopAdLdVar
  loc_BCA622: FLdPr Me
  loc_BCA625: MemLdRfVar from_stack_1.global_60
  loc_BCA628: LdPrVar
  loc_BCA62A: LateMemCall
  loc_BCA630: LitVarStr var_94, "    <th colspan=""3"" align=""center"" valign=""middle""><hr></th>"
  loc_BCA635: PopAdLdVar
  loc_BCA636: FLdPr Me
  loc_BCA639: MemLdRfVar from_stack_1.global_60
  loc_BCA63C: LdPrVar
  loc_BCA63E: LateMemCall
  loc_BCA644: LitVarStr var_94, "  </tr>"
  loc_BCA649: PopAdLdVar
  loc_BCA64A: FLdPr Me
  loc_BCA64D: MemLdRfVar from_stack_1.global_60
  loc_BCA650: LdPrVar
  loc_BCA652: LateMemCall
  loc_BCA658: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BCA65D: PopAdLdVar
  loc_BCA65E: FLdPr Me
  loc_BCA661: MemLdRfVar from_stack_1.global_60
  loc_BCA664: LdPrVar
  loc_BCA666: LateMemCall
  loc_BCA66C: LitVarStr var_94, "</table>"
  loc_BCA671: PopAdLdVar
  loc_BCA672: FLdPr Me
  loc_BCA675: MemLdRfVar from_stack_1.global_60
  loc_BCA678: LdPrVar
  loc_BCA67A: LateMemCall
  loc_BCA680: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCA685: PopAdLdVar
  loc_BCA686: FLdPr Me
  loc_BCA689: MemLdRfVar from_stack_1.global_60
  loc_BCA68C: LdPrVar
  loc_BCA68E: LateMemCall
  loc_BCA694: LitVarStr var_94, "  <thead>"
  loc_BCA699: PopAdLdVar
  loc_BCA69A: FLdPr Me
  loc_BCA69D: MemLdRfVar from_stack_1.global_60
  loc_BCA6A0: LdPrVar
  loc_BCA6A2: LateMemCall
  loc_BCA6A8: LitI2_Byte &HFF
  loc_BCA6AA: ImpAdStI2 MemVar_D93C88
  loc_BCA6AD: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCA6B2: PopAdLdVar
  loc_BCA6B3: FLdPr Me
  loc_BCA6B6: MemLdRfVar from_stack_1.global_60
  loc_BCA6B9: LdPrVar
  loc_BCA6BB: LateMemCall
  loc_BCA6C1: LitVarStr var_94, "    <th>Ofic</th>"
  loc_BCA6C6: PopAdLdVar
  loc_BCA6C7: FLdPr Me
  loc_BCA6CA: MemLdRfVar from_stack_1.global_60
  loc_BCA6CD: LdPrVar
  loc_BCA6CF: LateMemCall
  loc_BCA6D5: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BCA6DA: PopAdLdVar
  loc_BCA6DB: FLdPr Me
  loc_BCA6DE: MemLdRfVar from_stack_1.global_60
  loc_BCA6E1: LdPrVar
  loc_BCA6E3: LateMemCall
  loc_BCA6E9: LitVarStr var_94, "    <th>Periodo</th>"
  loc_BCA6EE: PopAdLdVar
  loc_BCA6EF: FLdPr Me
  loc_BCA6F2: MemLdRfVar from_stack_1.global_60
  loc_BCA6F5: LdPrVar
  loc_BCA6F7: LateMemCall
  loc_BCA6FD: LitVarStr var_94, "    <th>Bimes</th>"
  loc_BCA702: PopAdLdVar
  loc_BCA703: FLdPr Me
  loc_BCA706: MemLdRfVar from_stack_1.global_60
  loc_BCA709: LdPrVar
  loc_BCA70B: LateMemCall
  loc_BCA711: LitVarStr var_94, "    <th>Numero</th>"
  loc_BCA716: PopAdLdVar
  loc_BCA717: FLdPr Me
  loc_BCA71A: MemLdRfVar from_stack_1.global_60
  loc_BCA71D: LdPrVar
  loc_BCA71F: LateMemCall
  loc_BCA725: LitVarStr var_94, "    <th>Saldo</th>"
  loc_BCA72A: PopAdLdVar
  loc_BCA72B: FLdPr Me
  loc_BCA72E: MemLdRfVar from_stack_1.global_60
  loc_BCA731: LdPrVar
  loc_BCA733: LateMemCall
  loc_BCA739: LitVarStr var_94, "    <th>Ofic</th>"
  loc_BCA73E: PopAdLdVar
  loc_BCA73F: FLdPr Me
  loc_BCA742: MemLdRfVar from_stack_1.global_60
  loc_BCA745: LdPrVar
  loc_BCA747: LateMemCall
  loc_BCA74D: LitVarStr var_94, "    <th>Cuenta</th>"
  loc_BCA752: PopAdLdVar
  loc_BCA753: FLdPr Me
  loc_BCA756: MemLdRfVar from_stack_1.global_60
  loc_BCA759: LdPrVar
  loc_BCA75B: LateMemCall
  loc_BCA761: LitVarStr var_94, "    <th>Periodo</th>"
  loc_BCA766: PopAdLdVar
  loc_BCA767: FLdPr Me
  loc_BCA76A: MemLdRfVar from_stack_1.global_60
  loc_BCA76D: LdPrVar
  loc_BCA76F: LateMemCall
  loc_BCA775: LitVarStr var_94, "    <th>Bimes</th>"
  loc_BCA77A: PopAdLdVar
  loc_BCA77B: FLdPr Me
  loc_BCA77E: MemLdRfVar from_stack_1.global_60
  loc_BCA781: LdPrVar
  loc_BCA783: LateMemCall
  loc_BCA789: LitVarStr var_94, "    <th>Numero</th>"
  loc_BCA78E: PopAdLdVar
  loc_BCA78F: FLdPr Me
  loc_BCA792: MemLdRfVar from_stack_1.global_60
  loc_BCA795: LdPrVar
  loc_BCA797: LateMemCall
  loc_BCA79D: LitVarStr var_94, "    <th>Concepto</th>"
  loc_BCA7A2: PopAdLdVar
  loc_BCA7A3: FLdPr Me
  loc_BCA7A6: MemLdRfVar from_stack_1.global_60
  loc_BCA7A9: LdPrVar
  loc_BCA7AB: LateMemCall
  loc_BCA7B1: LitVarStr var_94, "    <th>Saldo</th>"
  loc_BCA7B6: PopAdLdVar
  loc_BCA7B7: FLdPr Me
  loc_BCA7BA: MemLdRfVar from_stack_1.global_60
  loc_BCA7BD: LdPrVar
  loc_BCA7BF: LateMemCall
  loc_BCA7C5: LitVarStr var_94, "    <th>Diferencia</th>"
  loc_BCA7CA: PopAdLdVar
  loc_BCA7CB: FLdPr Me
  loc_BCA7CE: MemLdRfVar from_stack_1.global_60
  loc_BCA7D1: LdPrVar
  loc_BCA7D3: LateMemCall
  loc_BCA7D9: LitVarStr var_94, "  </tr>"
  loc_BCA7DE: PopAdLdVar
  loc_BCA7DF: FLdPr Me
  loc_BCA7E2: MemLdRfVar from_stack_1.global_60
  loc_BCA7E5: LdPrVar
  loc_BCA7E7: LateMemCall
  loc_BCA7ED: LitVarStr var_94, "  </thead>"
  loc_BCA7F2: PopAdLdVar
  loc_BCA7F3: FLdPr Me
  loc_BCA7F6: MemLdRfVar from_stack_1.global_60
  loc_BCA7F9: LdPrVar
  loc_BCA7FB: LateMemCall
  loc_BCA801: ExitProcHresult
End Function

Private Function Proc_245_18_A0E6D8() 'A0E6D8
  'Data Table: 44BEE0
  loc_A0E698: LitVarStr var_94, "</table>"
  loc_A0E69D: PopAdLdVar
  loc_A0E69E: FLdPr Me
  loc_A0E6A1: MemLdRfVar from_stack_1.global_60
  loc_A0E6A4: LdPrVar
  loc_A0E6A6: LateMemCall
  loc_A0E6AC: LitVarStr var_94, "</body>"
  loc_A0E6B1: PopAdLdVar
  loc_A0E6B2: FLdPr Me
  loc_A0E6B5: MemLdRfVar from_stack_1.global_60
  loc_A0E6B8: LdPrVar
  loc_A0E6BA: LateMemCall
  loc_A0E6C0: LitVarStr var_94, "</html>"
  loc_A0E6C5: PopAdLdVar
  loc_A0E6C6: FLdPr Me
  loc_A0E6C9: MemLdRfVar from_stack_1.global_60
  loc_A0E6CC: LdPrVar
  loc_A0E6CE: LateMemCall
  loc_A0E6D4: ExitProcHresult
End Function
