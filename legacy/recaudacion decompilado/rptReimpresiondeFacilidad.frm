VERSION 5.00
Object = "{23A54129-BC15-43AE-9B4BD01871C7DF72}#1.0#0"; "C:\Program Files (x86)\InfoGov\Contabilidad y Presupuesto\abc128.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptReimpresiondeFacilidad
  Caption = "Reimpresión de Facilidad"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptReimpresiondeFacilidad.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 7428
  ClientHeight = 4212
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2640
    Width = 4095
    Height = 1215
    TabIndex = 17
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
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
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 2640
    Width = 1815
    Height = 1215
    TabIndex = 16
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
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
    End
  End
  Begin VB.CommandButton cmdSalir
    Left = 6360
    Top = 2880
    Width = 855
    Height = 735
    TabIndex = 7
    Cancel = -1  'True
    Picture = "rptReimpresiondeFacilidad.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin ABC128Lib.Abc128 BarCode
    Left = 6000
    Top = 2760
    Width = 765
    Height = 375
    Visible = 0   'False
    TabIndex = 12
    OleObjectBlob = "rptReimpresiondeFacilidad.frx":0B1C
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3960
    Width = 7425
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptReimpresiondeFacilidad.frx":0BEE
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptReimpresiondeFacilidad.frx":0C6E
    Left = 6480
    Top = 120
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7215
    Height = 2535
    TabIndex = 8
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5400
      Top = 360
      Width = 1575
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
    Begin VB.Frame Frame4
      Caption = "Cupones:"
      Left = 1560
      Top = 840
      Width = 2415
      Height = 1455
      TabIndex = 13
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Begin MSMask.MaskEdBox DesdeMsk
        Left = 1425
        Top = 360
        Width = 615
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptReimpresiondeFacilidad.frx":0CD2
      End
      Begin MSMask.MaskEdBox HastaMsk
        Left = 1425
        Top = 840
        Width = 615
        Height = 360
        TabIndex = 2
        OleObjectBlob = "rptReimpresiondeFacilidad.frx":0D60
      End
      Begin VB.Label Label1
        Caption = "Hasta:"
        Left = 600
        Top = 840
        Width = 705
        Height = 300
        TabIndex = 15
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
      Begin VB.Label Label4
        Caption = "Desde:"
        Left = 600
        Top = 360
        Width = 765
        Height = 300
        TabIndex = 14
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
    Begin MSMask.MaskEdBox CodiFapaMsk
      Left = 2640
      Top = 360
      Width = 1335
      Height = 360
      TabIndex = 0
      OleObjectBlob = "rptReimpresiondeFacilidad.frx":0DEE
    End
    Begin VB.Label Label3
      Caption = "Facilidad:"
      Left = 1575
      Top = 360
      Width = 1005
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
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6600
    Top = 3240
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptReimpresiondeFacilidad.frx":0E86
  End
End

Attribute VB_Name = "rptReimpresiondeFacilidad"

Public bGenerado As Boolean

Private Type UDT_1_00560540
  bStruc(32) As Byte ' String fields: 8
End Type

Private Type UDT_2_0065A628
  bStruc(36) As Byte ' String fields: 2
End Type

Private Type UDT_3_0065A670
  bStruc(68) As Byte ' String fields: 17
End Type

Private Type UDT_4_0065A6DC
  bStruc(36) As Byte ' String fields: 9
End Type


Private Sub cmdNueva_Click() 'A7D250
  'Data Table: 4973B4
  loc_A7D1C8: LitI2_Byte 0
  loc_A7D1CA: FLdPr Me
  loc_A7D1CD: MemStI2 bGenerado
  loc_A7D1D0: LitI2_Byte 0
  loc_A7D1D2: ILdRf Me
  loc_A7D1D5: CastAd
  loc_A7D1D8: FStAdFunc var_88
  loc_A7D1DB: FLdRfVar var_88
  loc_A7D1DE: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A7D1E3: FFree1Ad var_88
  loc_A7D1E6: LitVarStr var_98, vbNullString
  loc_A7D1EB: PopAdLdVar
  loc_A7D1EC: FLdPr Me
  loc_A7D1EF: VCallAd Control_ID_CodiFapaMsk
  loc_A7D1F2: FStAdFunc var_88
  loc_A7D1F5: FLdPr var_88
  loc_A7D1F8: LateIdSt
  loc_A7D1FD: FFree1Ad var_88
  loc_A7D200: LitVarStr var_98, "1"
  loc_A7D205: PopAdLdVar
  loc_A7D206: FLdPr Me
  loc_A7D209: VCallAd Control_ID_DesdeMsk
  loc_A7D20C: FStAdFunc var_88
  loc_A7D20F: FLdPr var_88
  loc_A7D212: LateIdSt
  loc_A7D217: FFree1Ad var_88
  loc_A7D21A: LitVarStr var_98, "999"
  loc_A7D21F: PopAdLdVar
  loc_A7D220: FLdPr Me
  loc_A7D223: VCallAd Control_ID_HastaMsk
  loc_A7D226: FStAdFunc var_88
  loc_A7D229: FLdPr var_88
  loc_A7D22C: LateIdSt
  loc_A7D231: FFree1Ad var_88
  loc_A7D234: Call HabilitarCriterio()
  loc_A7D239: ILdRf Me
  loc_A7D23C: CastAd
  loc_A7D23F: FStAdFunc var_88
  loc_A7D242: FLdRfVar var_88
  loc_A7D245: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A7D24A: FFree1Ad var_88
  loc_A7D24D: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CE108
  'Data Table: 4973B4
  loc_9CE0F0: ILdRf Me
  loc_9CE0F3: CastAd
  loc_9CE0F6: FStAdFunc var_88
  loc_9CE0F9: FLdRfVar var_88
  loc_9CE0FC: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CE101: FFree1Ad var_88
  loc_9CE104: ExitProcHresult
End Sub

Private Sub DesdeMsk_UnknownEvent_0 '9BF6C0
  'Data Table: 4973B4
  loc_9BF6AC: FLdPr Me
  loc_9BF6AF: VCallAd Control_ID_DesdeMsk
  loc_9BF6B2: CVarAd
  loc_9BF6B6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF6BB: FFree1Var var_94 = ""
  loc_9BF6BE: ExitProcHresult
End Sub

Private Function DesdeMsk_UnknownEvent_8(arg_C) 'A70E0C
  'Data Table: 4973B4
  loc_A70DA4: FLdPr Me
  loc_A70DA7: VCallAd Control_ID_DesdeMsk
  loc_A70DAA: FStAdFunc var_88
  loc_A70DAD: FLdPr var_88
  loc_A70DB0: LateIdLdVar var_98 DispID_22 0
  loc_A70DB7: PopAd
  loc_A70DB9: LitI2_Byte 0
  loc_A70DBB: LitI2_Byte 0
  loc_A70DBD: FLdRfVar var_98
  loc_A70DC0: CStrVarTmp
  loc_A70DC1: FStStrNoPop var_9C
  loc_A70DC4: LitStr "la cuota inicial"
  loc_A70DC7: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A70DCC: FStStrNoPop var_A0
  loc_A70DCF: FLdPr Me
  loc_A70DD2: MemStStrCopy
  loc_A70DD6: FFreeStr var_9C = ""
  loc_A70DDD: FFree1Ad var_88
  loc_A70DE0: FFree1Var var_98 = ""
  loc_A70DE3: FLdPr Me
  loc_A70DE6: VCallAd Control_ID_DesdeMsk
  loc_A70DE9: FStAdFuncNoPop
  loc_A70DEC: CastAd
  loc_A70DEF: FStAdFunc var_A4
  loc_A70DF2: FLdRfVar var_A4
  loc_A70DF5: FLdPr Me
  loc_A70DF8: MemLdStr global_128
  loc_A70DFB: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A70E00: IStI2 arg_C
  loc_A70E03: FFreeAd var_88 = ""
  loc_A70E0A: ExitProcHresult
End Function

Private Sub cmdPredeterminada_Click() 'A43C48
  'Data Table: 4973B4
  loc_A43BF4: LitI2_Byte 0
  loc_A43BF6: ILdRf Me
  loc_A43BF9: CastAd
  loc_A43BFC: FStAdFunc var_88
  loc_A43BFF: FLdRfVar var_88
  loc_A43C02: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A43C07: FFree1Ad var_88
  loc_A43C0A: FLdRfVar var_8A
  loc_A43C0D: FLdPr Me
  loc_A43C10: VCallAd Control_ID_cmdPredeterminada
  loc_A43C13: FStAdFunc var_88
  loc_A43C16: FLdPr var_88
  loc_A43C19:  = Me.Enabled
  loc_A43C1E: FLdI2 var_8A
  loc_A43C21: NotI4
  loc_A43C22: FFree1Ad var_88
  loc_A43C25: BranchF loc_A43C30
  loc_A43C28: ImpAdCallFPR4 DoEvents()
  loc_A43C2D: Branch loc_A43C0A
  loc_A43C30: ILdRf Me
  loc_A43C33: FStAdNoPop
  loc_A43C37: ImpAdLdRf MemVar_D9C5D8
  loc_A43C3A: NewIfNullPr Global
  loc_A43C3D: Global.Unload from_stack_1
  loc_A43C42: FFree1Ad var_88
  loc_A43C45: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A13AC8
  'Data Table: 4973B4
  loc_A13A90: FLdPr Me
  loc_A13A93: VCallAd Control_ID_statusBar
  loc_A13A96: FStAdFunc var_88
  loc_A13A99: FLdPr var_88
  loc_A13A9C: LateIdLdVar var_98 DispID_1 0
  loc_A13AA3: CStrVarTmp
  loc_A13AA4: CVarStr var_A8
  loc_A13AA7: PopAdLdVar
  loc_A13AA8: FLdPr Me
  loc_A13AAB: VCallAd Control_ID_statusBar
  loc_A13AAE: FStAdFunc var_BC
  loc_A13AB1: FLdPr var_BC
  loc_A13AB4: LateIdSt
  loc_A13AB9: FFreeAd var_88 = ""
  loc_A13AC0: FFreeVar var_98 = ""
  loc_A13AC7: ExitProcHresult
End Sub

Private Sub Form_Load() '9E370C
  'Data Table: 4973B4
  loc_9E36F0: ILdRf Me
  loc_9E36F3: CastAd
  loc_9E36F6: FStAdFunc var_88
  loc_9E36F9: FLdRfVar var_88
  loc_9E36FC: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9E3701: FFree1Ad var_88
  loc_9E3704: Call cmdNueva_Click()
  loc_9E3709: ExitProcHresult
  loc_9E370A: FLdPr arg_3C3A
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CE6AC
  'Data Table: 4973B4
  loc_9CE694: FLdPr Me
  loc_9CE697: VCallAd Control_ID_wbbReporte
  loc_9CE69A: FStAdFunc var_88
  loc_9CE69D: FLdRfVar var_88
  loc_9CE6A0: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CE6A5: FFree1Ad var_88
  loc_9CE6A8: ExitProcHresult
  loc_9CE6A9: FLdFPR4 Form_UnloadB8
End Sub

Private Sub HastaMsk_UnknownEvent_0 '9BF798
  'Data Table: 4973B4
  loc_9BF784: FLdPr Me
  loc_9BF787: VCallAd Control_ID_HastaMsk
  loc_9BF78A: CVarAd
  loc_9BF78E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF793: FFree1Var var_94 = ""
  loc_9BF796: ExitProcHresult
End Sub

Private Sub HastaMsk_UnknownEvent_8 'A6F5DC
  'Data Table: 4973B4
  loc_A6F574: FLdPr Me
  loc_A6F577: VCallAd Control_ID_HastaMsk
  loc_A6F57A: FStAdFunc var_88
  loc_A6F57D: FLdPr var_88
  loc_A6F580: LateIdLdVar var_98 DispID_22 0
  loc_A6F587: PopAd
  loc_A6F589: LitI2_Byte 0
  loc_A6F58B: LitI2_Byte 0
  loc_A6F58D: FLdRfVar var_98
  loc_A6F590: CStrVarTmp
  loc_A6F591: FStStrNoPop var_9C
  loc_A6F594: LitStr "la cuota final"
  loc_A6F597: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_A6F59C: FStStrNoPop var_A0
  loc_A6F59F: FLdPr Me
  loc_A6F5A2: MemStStrCopy
  loc_A6F5A6: FFreeStr var_9C = ""
  loc_A6F5AD: FFree1Ad var_88
  loc_A6F5B0: FFree1Var var_98 = ""
  loc_A6F5B3: FLdPr Me
  loc_A6F5B6: VCallAd Control_ID_HastaMsk
  loc_A6F5B9: FStAdFuncNoPop
  loc_A6F5BC: CastAd
  loc_A6F5BF: FStAdFunc var_A4
  loc_A6F5C2: FLdRfVar var_A4
  loc_A6F5C5: FLdPr Me
  loc_A6F5C8: MemLdStr global_128
  loc_A6F5CB: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A6F5D0: IStI2 Cancel
  loc_A6F5D3: FFreeAd var_88 = ""
  loc_A6F5DA: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A0595C
  'Data Table: 4973B4
  loc_A0592C: LitVarStr var_94, "Cerrando..."
  loc_A05931: PopAdLdVar
  loc_A05932: FLdPr Me
  loc_A05935: VCallAd Control_ID_statusBar
  loc_A05938: FStAdFunc var_A8
  loc_A0593B: FLdPr var_A8
  loc_A0593E: LateIdSt
  loc_A05943: FFree1Ad var_A8
  loc_A05946: ILdRf Me
  loc_A05949: FStAdNoPop
  loc_A0594D: ImpAdLdRf MemVar_D9C5D8
  loc_A05950: NewIfNullPr Global
  loc_A05953: Global.Unload from_stack_1
  loc_A05958: FFree1Ad var_A8
  loc_A0595B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9E37AC
  'Data Table: 4973B4
  loc_9E3790: LitI2_Byte 0
  loc_9E3792: PopTmpLdAd2 var_8A
  loc_9E3795: ILdRf Me
  loc_9E3798: CastAd
  loc_9E379B: FStAdFunc var_88
  loc_9E379E: FLdRfVar var_88
  loc_9E37A1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E37A6: FFree1Ad var_88
  loc_9E37A9: ExitProcHresult
End Sub

Public Function bGeneradoGet() '498294
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4982A3
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A5ED0C
  'Data Table: 4973B4
  loc_A5ECB8: LitI4 0
  loc_A5ECBD: LitI4 2
  loc_A5ECC2: FLdRfVar var_88
  loc_A5ECC5: Redim
  loc_A5ECCF: FLdPr Me
  loc_A5ECD2: VCallAd Control_ID_CodiFapaMsk
  loc_A5ECD5: CVarAd
  loc_A5ECD9: ParmAry1St
  loc_A5ECDF: FLdPr Me
  loc_A5ECE2: VCallAd Control_ID_DesdeMsk
  loc_A5ECE5: CVarAd
  loc_A5ECE9: ParmAry1St
  loc_A5ECEF: FLdPr Me
  loc_A5ECF2: VCallAd Control_ID_HastaMsk
  loc_A5ECF5: CVarAd
  loc_A5ECF9: ParmAry1St
  loc_A5ECFF: FLdRfVar var_88
  loc_A5ED02: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A5ED07: FLdRfVar var_88
  loc_A5ED0A: Erase
  loc_A5ED0B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BF80E8
  'Data Table: 4973B4
  loc_BF78B8: FLdPr Me
  loc_BF78BB: MemLdI2 bGenerado
  loc_BF78BE: BranchF loc_BF78C2
  loc_BF78C1: ExitProcHresult
  loc_BF78C2: LitVarStr var_A0, "Generando reporte..."
  loc_BF78C7: PopAdLdVar
  loc_BF78C8: FLdPr Me
  loc_BF78CB: VCallAd Control_ID_statusBar
  loc_BF78CE: FStAdFunc var_B4
  loc_BF78D1: FLdPr var_B4
  loc_BF78D4: LateIdSt
  loc_BF78D9: FFree1Ad var_B4
  loc_BF78DC: LitI4 &HB
  loc_BF78E1: CI2I4
  loc_BF78E2: FLdPr Me
  loc_BF78E5: Me.MousePointer = from_stack_1
  loc_BF78EA: FLdPr Me
  loc_BF78ED: MemLdRfVar from_stack_1.global_76
  loc_BF78F0: NewIfNullAd
  loc_BF78F3: FStAd var_B8 
  loc_BF78F7: LitStr "SELECT facipago.CodiOfic, DetaOfic, CuenCtct, CodiTifa FROM facipago "
  loc_BF78FA: LitStr " LEFT JOIN oficina ON oficina.CodiOfic = facipago.CodiOfic "
  loc_BF78FD: ConcatStr
  loc_BF78FE: FStStrNoPop var_BC
  loc_BF7901: LitStr " WHERE CodiFapa = "
  loc_BF7904: ConcatStr
  loc_BF7905: FStStrNoPop var_D0
  loc_BF7908: FLdPr Me
  loc_BF790B: VCallAd Control_ID_CodiFapaMsk
  loc_BF790E: FStAdFunc var_B4
  loc_BF7911: FLdPr var_B4
  loc_BF7914: LateIdLdVar var_CC DispID_0 0
  loc_BF791B: CStrVarTmp
  loc_BF791C: FStStrNoPop var_D4
  loc_BF791F: ConcatStr
  loc_BF7920: FStStrNoPop var_D8
  loc_BF7923: FLdPr var_B8
  loc_BF7926: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF792B: FFreeStr var_BC = "": var_D0 = "": var_D4 = ""
  loc_BF7936: FFree1Ad var_B4
  loc_BF7939: FFree1Var var_CC = ""
  loc_BF793C: FLdRfVar var_DC
  loc_BF793F: FLdPr var_B8
  loc_BF7942: from_stack_1 = clsboleto.RecordCount
  loc_BF7947: ILdRf var_DC
  loc_BF794A: LitI4 0
  loc_BF794F: EqI4
  loc_BF7950: BranchF loc_BF7961
  loc_BF7953: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF7956: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF795B: Branch loc_BF80BF
  loc_BF795E: Branch loc_BF79C3
  loc_BF7961: FLdRfVar var_DE
  loc_BF7964: FLdPr var_B8
  loc_BF7967: from_stack_1 = clsboleto.CodiOfic
  loc_BF796C: FLdI2 var_DE
  loc_BF796F: CUI1I2
  loc_BF7971: FLdPr Me
  loc_BF7974: MemStUI1
  loc_BF7978: FLdRfVar var_CC
  loc_BF797B: FLdPr var_B8
  loc_BF797E: from_stack_1 = clsboleto.DetaOfic
  loc_BF7983: FLdRfVar var_CC
  loc_BF7986: CStrVarTmp
  loc_BF7987: FStStrNoPop var_BC
  loc_BF798A: FLdPr Me
  loc_BF798D: MemStStrCopy
  loc_BF7991: FFree1Str var_BC
  loc_BF7994: FFree1Var var_CC = ""
  loc_BF7997: FLdRfVar var_BC
  loc_BF799A: FLdPr var_B8
  loc_BF799D: from_stack_1 = clsboleto.CuenCtct
  loc_BF79A2: ILdRf var_BC
  loc_BF79A5: FLdPr Me
  loc_BF79A8: MemStStrCopy
  loc_BF79AC: FFree1Str var_BC
  loc_BF79AF: FLdRfVar var_DE
  loc_BF79B2: FLdPr var_B8
  loc_BF79B5: from_stack_1 = clsboleto.CodiTifa
  loc_BF79BA: FLdI2 var_DE
  loc_BF79BD: FLdPr Me
  loc_BF79C0: MemStI2 global_96
  loc_BF79C3: FLdPr Me
  loc_BF79C6: MemLdUI1 global_84
  loc_BF79CA: FStUI1 var_E0
  loc_BF79CE: FLdUI1
  loc_BF79D2: LitI2_Byte 1
  loc_BF79D4: CUI1I2
  loc_BF79D6: EqI2
  loc_BF79D7: BranchF loc_BF79DD
  loc_BF79DA: Branch loc_BF7A3A
  loc_BF79DD: FLdUI1
  loc_BF79E1: LitI2_Byte 2
  loc_BF79E3: CUI1I2
  loc_BF79E5: EqI2
  loc_BF79E6: BranchF loc_BF79F8
  loc_BF79E9: LitStr " comercio.DecpCome as DecaPost, comercio.NupoCome as NumePost, comercio.DebpCome as DebaPost, comercio.MapoCome as ManzPost, comercio.CapoCome as CasaPost, comercio.DelpCome as DeloPost, comercio.CoppCome as CopoPost, "
  loc_BF79EC: FStStrCopy var_88
  loc_BF79EF: LitStr " LEFT JOIN comercio ON comercio.CodiCome = boleto.CuenCtct"
  loc_BF79F2: FStStrCopy var_8C
  loc_BF79F5: Branch loc_BF7A3A
  loc_BF79F8: FLdUI1
  loc_BF79FC: LitI2_Byte 3
  loc_BF79FE: CUI1I2
  loc_BF7A00: EqI2
  loc_BF7A01: BranchF loc_BF7A0D
  loc_BF7A04: LitStr " DecrPers as DecaPost, NurePers as NumePost, DebrPers as DebaPost, MarePers as ManzPost, CarePers as CasaPost, DelrPers as DeloPost, CoprPers as CopoPost, "
  loc_BF7A07: FStStrCopy var_88
  loc_BF7A0A: Branch loc_BF7A3A
  loc_BF7A0D: FLdUI1
  loc_BF7A11: LitI2_Byte 4
  loc_BF7A13: CUI1I2
  loc_BF7A15: EqI2
  loc_BF7A16: BranchF loc_BF7A28
  loc_BF7A19: LitStr " difunto.DecpDifu as DecaPost, difunto.NupoDifu as NumePost, difunto.DebpDifu as DebaPost, difunto.MapoDifu as ManzPost, difunto.CapoDifu as CasaPost, difunto.DelpDifu as DeloPost, difunto.CoppDifu as CopoPost, "
  loc_BF7A1C: FStStrCopy var_88
  loc_BF7A1F: LitStr " LEFT JOIN difunto ON difunto.CodiDifu = boleto.CuenCtct"
  loc_BF7A22: FStStrCopy var_8C
  loc_BF7A25: Branch loc_BF7A3A
  loc_BF7A28: FLdUI1
  loc_BF7A2C: LitI2_Byte 5
  loc_BF7A2E: CUI1I2
  loc_BF7A30: EqI2
  loc_BF7A31: BranchF loc_BF7A3A
  loc_BF7A34: LitStr " DecrPers as DecaPost, NurePers as NumePost, DebrPers as DebaPost, MarePers as ManzPost, CarePers as CasaPost, DelrPers as DeloPost, CoprPers as CopoPost, "
  loc_BF7A37: FStStrCopy var_88
  loc_BF7A3A: FLdPr Me
  loc_BF7A3D: MemLdUI1 global_84
  loc_BF7A41: CI2UI1
  loc_BF7A43: LitI2_Byte 1
  loc_BF7A45: EqI2
  loc_BF7A46: BranchF loc_BF7AD5
  loc_BF7A49: LitStr "SELECT boleto.CucuPers, DetaPers, boleto.CodiUsua,"
  loc_BF7A4C: LitStr " CuotDefa, boleto.NumeBole, FeveBole, TotaBole"
  loc_BF7A4F: ConcatStr
  loc_BF7A50: FStStrNoPop var_BC
  loc_BF7A53: LitStr " FROM boleto "
  loc_BF7A56: ConcatStr
  loc_BF7A57: FStStrNoPop var_D0
  loc_BF7A5A: LitStr " WHERE boleto.CodiOfic = "
  loc_BF7A5D: ConcatStr
  loc_BF7A5E: FStStrNoPop var_D4
  loc_BF7A61: FLdPr Me
  loc_BF7A64: MemLdUI1 global_84
  loc_BF7A68: CStrI2
  loc_BF7A6A: FStStrNoPop var_D8
  loc_BF7A6D: ConcatStr
  loc_BF7A6E: FStStrNoPop var_E4
  loc_BF7A71: LitStr " AND boleto.CuenCtct = '"
  loc_BF7A74: ConcatStr
  loc_BF7A75: FStStrNoPop var_E8
  loc_BF7A78: FLdPr Me
  loc_BF7A7B: MemLdStr global_92
  loc_BF7A7E: ConcatStr
  loc_BF7A7F: FStStrNoPop var_EC
  loc_BF7A82: LitStr "' AND boleto.CodiFapa = "
  loc_BF7A85: ConcatStr
  loc_BF7A86: FStStrNoPop var_F0
  loc_BF7A89: FLdPr Me
  loc_BF7A8C: VCallAd Control_ID_CodiFapaMsk
  loc_BF7A8F: FStAdFunc var_B4
  loc_BF7A92: FLdPr var_B4
  loc_BF7A95: LateIdLdVar var_CC DispID_0 0
  loc_BF7A9C: CStrVarTmp
  loc_BF7A9D: FStStrNoPop var_F4
  loc_BF7AA0: ConcatStr
  loc_BF7AA1: FStStrNoPop var_F8
  loc_BF7AA4: LitStr " ORDER BY CuotDefa"
  loc_BF7AA7: ConcatStr
  loc_BF7AA8: FStStrNoPop var_FC
  loc_BF7AAB: FLdPr var_B8
  loc_BF7AAE: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF7AB3: FFreeStr var_BC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = ""
  loc_BF7ACC: FFree1Ad var_B4
  loc_BF7ACF: FFree1Var var_CC = ""
  loc_BF7AD2: Branch loc_BF7B79
  loc_BF7AD5: LitStr "SELECT"
  loc_BF7AD8: LitStr " boleto.CucuPers, DetaPers, boleto.CodiUsua,"
  loc_BF7ADB: ConcatStr
  loc_BF7ADC: FStStrNoPop var_BC
  loc_BF7ADF: ILdRf var_88
  loc_BF7AE2: ConcatStr
  loc_BF7AE3: FStStrNoPop var_D0
  loc_BF7AE6: LitStr " CuotDefa, boleto.NumeBole, FeveBole, TotaBole"
  loc_BF7AE9: ConcatStr
  loc_BF7AEA: FStStrNoPop var_D4
  loc_BF7AED: LitStr " FROM boleto LEFT JOIN infogov.persona ON infogov.persona.CucuPers = boleto.CucuPers"
  loc_BF7AF0: ConcatStr
  loc_BF7AF1: FStStrNoPop var_D8
  loc_BF7AF4: ILdRf var_8C
  loc_BF7AF7: ConcatStr
  loc_BF7AF8: FStStrNoPop var_E4
  loc_BF7AFB: LitStr " WHERE boleto.CodiOfic = "
  loc_BF7AFE: ConcatStr
  loc_BF7AFF: FStStrNoPop var_E8
  loc_BF7B02: FLdPr Me
  loc_BF7B05: MemLdUI1 global_84
  loc_BF7B09: CStrI2
  loc_BF7B0B: FStStrNoPop var_EC
  loc_BF7B0E: ConcatStr
  loc_BF7B0F: FStStrNoPop var_F0
  loc_BF7B12: LitStr " AND boleto.CuenCtct = '"
  loc_BF7B15: ConcatStr
  loc_BF7B16: FStStrNoPop var_F4
  loc_BF7B19: FLdPr Me
  loc_BF7B1C: MemLdStr global_92
  loc_BF7B1F: ConcatStr
  loc_BF7B20: FStStrNoPop var_F8
  loc_BF7B23: LitStr "' AND boleto.CodiFapa = "
  loc_BF7B26: ConcatStr
  loc_BF7B27: FStStrNoPop var_FC
  loc_BF7B2A: FLdPr Me
  loc_BF7B2D: VCallAd Control_ID_CodiFapaMsk
  loc_BF7B30: FStAdFunc var_B4
  loc_BF7B33: FLdPr var_B4
  loc_BF7B36: LateIdLdVar var_CC DispID_0 0
  loc_BF7B3D: CStrVarTmp
  loc_BF7B3E: FStStrNoPop var_100
  loc_BF7B41: ConcatStr
  loc_BF7B42: FStStrNoPop var_104
  loc_BF7B45: LitStr " ORDER BY CuotDefa"
  loc_BF7B48: ConcatStr
  loc_BF7B49: FStStrNoPop var_108
  loc_BF7B4C: FLdPr var_B8
  loc_BF7B4F: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF7B54: FFreeStr var_BC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_BF7B73: FFree1Ad var_B4
  loc_BF7B76: FFree1Var var_CC = ""
  loc_BF7B79: FLdRfVar var_DC
  loc_BF7B7C: FLdPr var_B8
  loc_BF7B7F: from_stack_1 = clsboleto.RecordCount
  loc_BF7B84: ILdRf var_DC
  loc_BF7B87: LitI4 0
  loc_BF7B8C: EqI4
  loc_BF7B8D: BranchF loc_BF7B9B
  loc_BF7B90: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF7B93: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF7B98: Branch loc_BF80BF
  loc_BF7B9B: LitI4 0
  loc_BF7BA0: LitI4 1
  loc_BF7BA5: FLdPr Me
  loc_BF7BA8: MemLdRfVar from_stack_1.global_100
  loc_BF7BAB: Redim
  loc_BF7BB5: LitI4 0
  loc_BF7BBA: LitI4 1
  loc_BF7BBF: FLdPr Me
  loc_BF7BC2: MemLdRfVar from_stack_1.global_124
  loc_BF7BC5: Redim
  loc_BF7BCF: LitI2_Byte 0
  loc_BF7BD1: FLdPr Me
  loc_BF7BD4: MemStI2 global_114
  loc_BF7BD7: FLdPr var_B8
  loc_BF7BDA: Call clsboleto.MoveFirst()
  loc_BF7BDF: FLdPr Me
  loc_BF7BE2: MemLdUI1 global_84
  loc_BF7BE6: FStUI1 var_10A
  loc_BF7BEA: FLdUI1
  loc_BF7BEE: LitI2_Byte 1
  loc_BF7BF0: CUI1I2
  loc_BF7BF2: EqI2
  loc_BF7BF3: BranchF loc_BF7BF9
  loc_BF7BF6: Branch loc_BF7C32
  loc_BF7BF9: FLdUI1
  loc_BF7BFD: LitI2_Byte 2
  loc_BF7BFF: CUI1I2
  loc_BF7C01: EqI2
  loc_BF7C02: BranchF loc_BF7C08
  loc_BF7C05: Branch loc_BF7C32
  loc_BF7C08: FLdUI1
  loc_BF7C0C: LitI2_Byte 3
  loc_BF7C0E: CUI1I2
  loc_BF7C10: EqI2
  loc_BF7C11: BranchF loc_BF7C17
  loc_BF7C14: Branch loc_BF7C32
  loc_BF7C17: FLdUI1
  loc_BF7C1B: LitI2_Byte 4
  loc_BF7C1D: CUI1I2
  loc_BF7C1F: EqI2
  loc_BF7C20: BranchF loc_BF7C26
  loc_BF7C23: Branch loc_BF7C32
  loc_BF7C26: FLdUI1
  loc_BF7C2A: LitI2_Byte 5
  loc_BF7C2C: CUI1I2
  loc_BF7C2E: EqI2
  loc_BF7C2F: BranchF loc_BF7C32
  loc_BF7C32: LitStr "SELECT boleto.CuotDefa, CacuFapa, boleto.PeriBole, CodiUsua, boleto.NumeBole, FeveBole, TotaBole, CodiEnre FROM boleto"
  loc_BF7C35: LitStr " LEFT JOIN facipago ON facipago.CodiFapa = boleto.CodiFapa"
  loc_BF7C38: ConcatStr
  loc_BF7C39: FStStrNoPop var_BC
  loc_BF7C3C: LitStr " WHERE boleto.CodiOfic = "
  loc_BF7C3F: ConcatStr
  loc_BF7C40: FStStrNoPop var_D0
  loc_BF7C43: FLdPr Me
  loc_BF7C46: MemLdUI1 global_84
  loc_BF7C4A: CStrI2
  loc_BF7C4C: FStStrNoPop var_D4
  loc_BF7C4F: ConcatStr
  loc_BF7C50: FStStrNoPop var_D8
  loc_BF7C53: LitStr " AND boleto.CuenCtct = '"
  loc_BF7C56: ConcatStr
  loc_BF7C57: FStStrNoPop var_E4
  loc_BF7C5A: FLdPr Me
  loc_BF7C5D: MemLdStr global_92
  loc_BF7C60: ConcatStr
  loc_BF7C61: FStStrNoPop var_E8
  loc_BF7C64: LitStr "' AND boleto.CodiFapa = "
  loc_BF7C67: ConcatStr
  loc_BF7C68: FStStrNoPop var_EC
  loc_BF7C6B: FLdPr Me
  loc_BF7C6E: VCallAd Control_ID_CodiFapaMsk
  loc_BF7C71: FStAdFunc var_B4
  loc_BF7C74: FLdPr var_B4
  loc_BF7C77: LateIdLdVar var_CC DispID_0 0
  loc_BF7C7E: CStrVarTmp
  loc_BF7C7F: FStStrNoPop var_F0
  loc_BF7C82: ConcatStr
  loc_BF7C83: FStStrNoPop var_F4
  loc_BF7C86: LitStr " AND boleto.CuotDefa BETWEEN "
  loc_BF7C89: ConcatStr
  loc_BF7C8A: FStStrNoPop var_F8
  loc_BF7C8D: FLdPr Me
  loc_BF7C90: VCallAd Control_ID_DesdeMsk
  loc_BF7C93: FStAdFunc var_110
  loc_BF7C96: FLdPr var_110
  loc_BF7C99: LateIdLdVar var_120 DispID_0 0
  loc_BF7CA0: CStrVarTmp
  loc_BF7CA1: FStStrNoPop var_FC
  loc_BF7CA4: ConcatStr
  loc_BF7CA5: FStStrNoPop var_100
  loc_BF7CA8: LitStr " AND "
  loc_BF7CAB: ConcatStr
  loc_BF7CAC: FStStrNoPop var_104
  loc_BF7CAF: FLdPr Me
  loc_BF7CB2: VCallAd Control_ID_HastaMsk
  loc_BF7CB5: FStAdFunc var_124
  loc_BF7CB8: FLdPr var_124
  loc_BF7CBB: LateIdLdVar var_134 DispID_0 0
  loc_BF7CC2: CStrVarTmp
  loc_BF7CC3: FStStrNoPop var_108
  loc_BF7CC6: ConcatStr
  loc_BF7CC7: FStStrNoPop var_138
  loc_BF7CCA: LitStr " AND EstaBole = 'Emitido'"
  loc_BF7CCD: ConcatStr
  loc_BF7CCE: FStStrNoPop var_13C
  loc_BF7CD1: LitStr " ORDER BY CuotDefa"
  loc_BF7CD4: ConcatStr
  loc_BF7CD5: FStStrNoPop var_140
  loc_BF7CD8: FLdPr var_B8
  loc_BF7CDB: Call clsboleto.RedefineRS(from_stack_1v)
  loc_BF7CE0: FFreeStr var_BC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_138 = "": var_13C = ""
  loc_BF7D05: FFreeAd var_B4 = "": var_110 = ""
  loc_BF7D0E: FFreeVar var_CC = "": var_120 = ""
  loc_BF7D17: FLdRfVar var_DC
  loc_BF7D1A: FLdPr var_B8
  loc_BF7D1D: from_stack_1 = clsboleto.RecordCount
  loc_BF7D22: ILdRf var_DC
  loc_BF7D25: LitI4 0
  loc_BF7D2A: EqI4
  loc_BF7D2B: BranchF loc_BF7D39
  loc_BF7D2E: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_BF7D31: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF7D36: Branch loc_BF80BF
  loc_BF7D39: LitI4 0
  loc_BF7D3E: FLdRfVar var_DC
  loc_BF7D41: FLdPr var_B8
  loc_BF7D44: from_stack_1 = clsboleto.RecordCount
  loc_BF7D49: ILdRf var_DC
  loc_BF7D4C: FLdPr Me
  loc_BF7D4F: MemLdRfVar from_stack_1.global_104
  loc_BF7D52: Redim
  loc_BF7D5C: FLdPr var_B8
  loc_BF7D5F: Call clsboleto.MoveFirst()
  loc_BF7D64: FLdRfVar var_DE
  loc_BF7D67: FLdPr var_B8
  loc_BF7D6A: from_stack_1 = clsboleto.CacuFapa
  loc_BF7D6F: LitI2_Byte 0
  loc_BF7D71: LitVar_Missing var_CC
  loc_BF7D74: LitI2_Byte 0
  loc_BF7D76: FLdI2 var_DE
  loc_BF7D79: CVarI2 var_A0
  loc_BF7D7C: PopAdLdVar
  loc_BF7D7D: FLdPr Me
  loc_BF7D80: MemLdRfVar from_stack_1.global_108
  loc_BF7D83: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7D88: FFree1Var var_CC = ""
  loc_BF7D8B: LitI2_Byte 1
  loc_BF7D8D: FLdPr Me
  loc_BF7D90: MemLdRfVar from_stack_1.global_112
  loc_BF7D93: FLdPr Me
  loc_BF7D96: MemLdStr global_104
  loc_BF7D99: LitI2_Byte 1
  loc_BF7D9B: FnUBound
  loc_BF7D9D: CI2I4
  loc_BF7D9E: ForI2 var_144
  loc_BF7DA4: FLdRfVar var_DE
  loc_BF7DA7: FLdPr var_B8
  loc_BF7DAA: from_stack_1 = clsboleto.CuotDefa
  loc_BF7DAF: LitI2_Byte 0
  loc_BF7DB1: LitVar_Missing var_CC
  loc_BF7DB4: LitI2_Byte 0
  loc_BF7DB6: FLdI2 var_DE
  loc_BF7DB9: CVarI2 var_A0
  loc_BF7DBC: PopAdLdVar
  loc_BF7DBD: FLdPr Me
  loc_BF7DC0: MemLdI2 global_112
  loc_BF7DC3: CI4UI1
  loc_BF7DC4: FLdPr Me
  loc_BF7DC7: MemLdStr global_104
  loc_BF7DCA: AryLock
  loc_BF7DCD: Ary1LdPr
  loc_BF7DCE: MemLdRfVar from_stack_1.global_4
  loc_BF7DD1: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7DD6: AryUnlock
  loc_BF7DD9: FFree1Var var_CC = ""
  loc_BF7DDC: FLdRfVar var_DE
  loc_BF7DDF: FLdPr var_B8
  loc_BF7DE2: from_stack_1 = clsboleto.PeriBole
  loc_BF7DE7: LitI2_Byte 0
  loc_BF7DE9: LitVar_Missing var_CC
  loc_BF7DEC: LitI2_Byte 0
  loc_BF7DEE: FLdI2 var_DE
  loc_BF7DF1: CVarI2 var_A0
  loc_BF7DF4: PopAdLdVar
  loc_BF7DF5: FLdPr Me
  loc_BF7DF8: MemLdI2 global_112
  loc_BF7DFB: CI4UI1
  loc_BF7DFC: FLdPr Me
  loc_BF7DFF: MemLdStr global_104
  loc_BF7E02: AryLock
  loc_BF7E05: Ary1LdPr
  loc_BF7E06: MemLdRfVar from_stack_1.global_8
  loc_BF7E09: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7E0E: AryUnlock
  loc_BF7E11: FFree1Var var_CC = ""
  loc_BF7E14: FLdRfVar var_DC
  loc_BF7E17: FLdPr var_B8
  loc_BF7E1A: from_stack_1 = clsboleto.NumeBole
  loc_BF7E1F: LitI2_Byte 0
  loc_BF7E21: LitVar_Missing var_CC
  loc_BF7E24: LitI2_Byte 0
  loc_BF7E26: ILdRf var_DC
  loc_BF7E29: CVarI4
  loc_BF7E2D: PopAdLdVar
  loc_BF7E2E: FLdPr Me
  loc_BF7E31: MemLdI2 global_112
  loc_BF7E34: CI4UI1
  loc_BF7E35: FLdPr Me
  loc_BF7E38: MemLdStr global_104
  loc_BF7E3B: AryLock
  loc_BF7E3E: Ary1LdPr
  loc_BF7E3F: MemLdRfVar from_stack_1.global_12
  loc_BF7E42: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7E47: AryUnlock
  loc_BF7E4A: FFree1Var var_CC = ""
  loc_BF7E4D: FLdRfVar var_CC
  loc_BF7E50: FLdPr var_B8
  loc_BF7E53: from_stack_1 = clsboleto.FeveBole
  loc_BF7E58: LitI2_Byte 0
  loc_BF7E5A: LitVar_Missing var_120
  loc_BF7E5D: LitI2_Byte 0
  loc_BF7E5F: FLdVar var_CC
  loc_BF7E63: FLdPr Me
  loc_BF7E66: MemLdI2 global_112
  loc_BF7E69: CI4UI1
  loc_BF7E6A: FLdPr Me
  loc_BF7E6D: MemLdStr global_104
  loc_BF7E70: AryLock
  loc_BF7E73: Ary1LdPr
  loc_BF7E74: MemLdRfVar from_stack_1.global_16
  loc_BF7E77: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7E7C: AryUnlock
  loc_BF7E7F: FFreeVar var_CC = ""
  loc_BF7E86: FLdRfVar var_BC
  loc_BF7E89: FLdPr var_B8
  loc_BF7E8C: from_stack_1 = clsboleto.CodiUsua
  loc_BF7E91: LitI2_Byte 0
  loc_BF7E93: LitVar_Missing var_120
  loc_BF7E96: LitI2_Byte 0
  loc_BF7E98: FLdZeroAd var_BC
  loc_BF7E9B: CVarStr var_CC
  loc_BF7E9E: PopAdLdVar
  loc_BF7E9F: FLdPr Me
  loc_BF7EA2: MemLdI2 global_112
  loc_BF7EA5: CI4UI1
  loc_BF7EA6: FLdPr Me
  loc_BF7EA9: MemLdStr global_104
  loc_BF7EAC: AryLock
  loc_BF7EAF: Ary1LdPr
  loc_BF7EB0: MemLdRfVar from_stack_1.global_32
  loc_BF7EB3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7EB8: AryUnlock
  loc_BF7EBB: FFreeVar var_CC = ""
  loc_BF7EC2: FLdRfVar var_150
  loc_BF7EC5: FLdPr var_B8
  loc_BF7EC8: from_stack_1 = clsboleto.TotaBole
  loc_BF7ECD: LitI2_Byte 0
  loc_BF7ECF: LitVar_Missing var_CC
  loc_BF7ED2: LitI2_Byte &HFF
  loc_BF7ED4: FLdFPR8 var_150
  loc_BF7ED7: CVarR8
  loc_BF7EDB: PopAdLdVar
  loc_BF7EDC: FLdPr Me
  loc_BF7EDF: MemLdI2 global_112
  loc_BF7EE2: CI4UI1
  loc_BF7EE3: FLdPr Me
  loc_BF7EE6: MemLdStr global_104
  loc_BF7EE9: AryLock
  loc_BF7EEC: Ary1LdPr
  loc_BF7EED: MemLdRfVar from_stack_1.global_20
  loc_BF7EF0: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_BF7EF5: AryUnlock
  loc_BF7EF8: FFree1Var var_CC = ""
  loc_BF7EFB: FLdRfVar var_DE
  loc_BF7EFE: FLdPr var_B8
  loc_BF7F01: from_stack_1 = clsboleto.CuotDefa
  loc_BF7F06: FLdRfVar var_DC
  loc_BF7F09: FLdPr var_B8
  loc_BF7F0C: from_stack_1 = clsboleto.NumeBole
  loc_BF7F11: FLdRfVar var_CC
  loc_BF7F14: FLdPr var_B8
  loc_BF7F17: from_stack_1 = clsboleto.FeveBole
  loc_BF7F1C: FLdRfVar var_150
  loc_BF7F1F: FLdPr var_B8
  loc_BF7F22: from_stack_1 = clsboleto.TotaBole
  loc_BF7F27: LitStr "0"
  loc_BF7F2A: LitI2_Byte 1
  loc_BF7F2C: CUI1I2
  loc_BF7F2E: FLdFPR8 var_150
  loc_BF7F31: CStrR8
  loc_BF7F33: FStStrNoPop var_D0
  loc_BF7F36: FLdVar var_CC
  loc_BF7F3A: FLdPr Me
  loc_BF7F3D: MemLdUI1 global_84
  loc_BF7F41: ILdRf var_DC
  loc_BF7F44: CStrI4
  loc_BF7F46: FStStrNoPop var_BC
  loc_BF7F49: FLdPr Me
  loc_BF7F4C: MemLdStr global_108
  loc_BF7F4F: CI2Str
  loc_BF7F51: FLdI2 var_DE
  loc_BF7F54: CUI1I2
  loc_BF7F56: FLdPr Me
  loc_BF7F59: MemLdStr global_92
  loc_BF7F5C: ImpAdCallI2  = Proc_57_34_B75524(, , , , )
  loc_BF7F61: PopTmpLdAdStr var_158
  loc_BF7F64: FLdPr Me
  loc_BF7F67: MemLdI2 global_112
  loc_BF7F6A: CI4UI1
  loc_BF7F6B: FLdPr Me
  loc_BF7F6E: MemLdStr global_104
  loc_BF7F71: Ary1LdPr
  loc_BF7F72: MemLdRfVar from_stack_1.global_28
  loc_BF7F75: StAryMove
  loc_BF7F77: FFreeStr var_BC = ""
  loc_BF7F7E: FFree1Var var_CC = ""
  loc_BF7F81: LitI2_Byte 1
  loc_BF7F83: PopTmpLdAd2 var_DE
  loc_BF7F86: FLdPr var_B8
  loc_BF7F89: Call clsboleto.Move(from_stack_1v)
  loc_BF7F8E: FLdPr Me
  loc_BF7F91: MemLdRfVar from_stack_1.global_112
  loc_BF7F94: NextI2 var_144, loc_BF7DA4
  loc_BF7F99: LitNothing
  loc_BF7F9B: FStAd var_B8 
  loc_BF7F9F: FLdPr Me
  loc_BF7FA2: MemLdRfVar from_stack_1.global_80
  loc_BF7FA5: NewIfNullAd
  loc_BF7FA8: FStAd var_15C 
  loc_BF7FAC: LitStr "SELECT detafapa.CuotDefa, CacuFapa, detafapa.CapiDefa, detafapa.RecaDefa, detafapa.DecaDefa, detafapa.DereDefa,"
  loc_BF7FAF: LitStr " detafapa.ApreDefa, detafapa.InteDefa, detafapa.TotaDefa"
  loc_BF7FB2: ConcatStr
  loc_BF7FB3: FStStrNoPop var_BC
  loc_BF7FB6: LitStr " FROM facipago"
  loc_BF7FB9: ConcatStr
  loc_BF7FBA: FStStrNoPop var_D0
  loc_BF7FBD: LitStr " INNER JOIN detafapa ON detafapa.CodiFapa = facipago.CodiFapa"
  loc_BF7FC0: ConcatStr
  loc_BF7FC1: FStStrNoPop var_D4
  loc_BF7FC4: LitStr " WHERE facipago.CodiFapa = "
  loc_BF7FC7: ConcatStr
  loc_BF7FC8: FStStrNoPop var_D8
  loc_BF7FCB: FLdPr Me
  loc_BF7FCE: VCallAd Control_ID_CodiFapaMsk
  loc_BF7FD1: FStAdFunc var_B4
  loc_BF7FD4: FLdPr var_B4
  loc_BF7FD7: LateIdLdVar var_CC DispID_0 0
  loc_BF7FDE: CStrVarTmp
  loc_BF7FDF: FStStrNoPop var_E4
  loc_BF7FE2: ConcatStr
  loc_BF7FE3: FStStrNoPop var_E8
  loc_BF7FE6: LitStr " AND detafapa.CuotDefa BETWEEN "
  loc_BF7FE9: ConcatStr
  loc_BF7FEA: FStStrNoPop var_EC
  loc_BF7FED: FLdPr Me
  loc_BF7FF0: VCallAd Control_ID_DesdeMsk
  loc_BF7FF3: FStAdFunc var_110
  loc_BF7FF6: FLdPr var_110
  loc_BF7FF9: LateIdLdVar var_120 DispID_0 0
  loc_BF8000: CStrVarTmp
  loc_BF8001: FStStrNoPop var_F0
  loc_BF8004: ConcatStr
  loc_BF8005: FStStrNoPop var_F4
  loc_BF8008: LitStr " AND "
  loc_BF800B: ConcatStr
  loc_BF800C: FStStrNoPop var_F8
  loc_BF800F: FLdPr Me
  loc_BF8012: VCallAd Control_ID_HastaMsk
  loc_BF8015: FStAdFunc var_124
  loc_BF8018: FLdPr var_124
  loc_BF801B: LateIdLdVar var_134 DispID_0 0
  loc_BF8022: CStrVarTmp
  loc_BF8023: FStStrNoPop var_FC
  loc_BF8026: ConcatStr
  loc_BF8027: FStStrNoPop var_100
  loc_BF802A: LitStr " ORDER BY CuotDefa"
  loc_BF802D: ConcatStr
  loc_BF802E: FStStrNoPop var_104
  loc_BF8031: FLdPr var_15C
  loc_BF8034: Call clsdetafapa.RedefineRS(from_stack_1v)
  loc_BF8039: FFreeStr var_BC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_BF8056: FFreeAd var_B4 = "": var_110 = ""
  loc_BF805F: FFreeVar var_CC = "": var_120 = ""
  loc_BF8068: FLdRfVar var_DC
  loc_BF806B: FLdPr var_15C
  loc_BF806E: from_stack_1 = clsdetafapa.RecordCount
  loc_BF8073: ILdRf var_DC
  loc_BF8076: LitI4 0
  loc_BF807B: EqI4
  loc_BF807C: BranchF loc_BF808A
  loc_BF807F: LitStr "No se ha generado detalle para el boleto"
  loc_BF8082: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF8087: Branch loc_BF80BF
  loc_BF808A: FLdPr var_15C
  loc_BF808D: Call clsdetafapa.MoveFirst()
  loc_BF8092: Call Proc_292_17_AEDF70()
  loc_BF8097: FLdRfVar var_DE
  loc_BF809A: FLdPr var_15C
  loc_BF809D: from_stack_1 = clsdetafapa.EOF
  loc_BF80A2: FLdI2 var_DE
  loc_BF80A5: NotI4
  loc_BF80A6: BranchF loc_BF80B1
  loc_BF80A9: Call Proc_292_18_B2DCA4()
  loc_BF80AE: Branch loc_BF8097
  loc_BF80B1: LitNothing
  loc_BF80B3: FStAd var_15C 
  loc_BF80B7: LitI2_Byte &HFF
  loc_BF80B9: FLdPr Me
  loc_BF80BC: MemStI2 bGenerado
  loc_BF80BF: LitI4 0
  loc_BF80C4: CI2I4
  loc_BF80C5: FLdPr Me
  loc_BF80C8: Me.MousePointer = from_stack_1
  loc_BF80CD: LitVarStr var_A0, vbNullString
  loc_BF80D2: PopAdLdVar
  loc_BF80D3: FLdPr Me
  loc_BF80D6: VCallAd Control_ID_statusBar
  loc_BF80D9: FStAdFunc var_B4
  loc_BF80DC: FLdPr var_B4
  loc_BF80DF: LateIdSt
  loc_BF80E4: FFree1Ad var_B4
  loc_BF80E7: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'ADB84C
  'Data Table: 4973B4
  loc_ADB6F4: LitI2_Byte 5
  loc_ADB6F6: CUI1I2
  loc_ADB6F8: FStUI1 var_86
  loc_ADB6FC: FLdRfVar var_8C
  loc_ADB6FF: LitI2_Byte 0
  loc_ADB701: LitI2_Byte &HFF
  loc_ADB703: ImpAdLdI4 MemVar_D93C84
  loc_ADB706: FLdPr Me
  loc_ADB709: MemLdRfVar from_stack_1.global_56
  loc_ADB70C: NewIfNullPr IFileSystem3
  loc_ADB70F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_ADB714: ILdRf var_8C
  loc_ADB717: FLdPr Me
  loc_ADB71A: MemStVarAd
  loc_ADB71E: FFree1Ad var_8C
  loc_ADB721: LitI2_Byte 0
  loc_ADB723: ImpAdStI2 MemVar_D93C8A
  loc_ADB726: Call Proc_292_19_BA3874()
  loc_ADB72B: LitI2_Byte 1
  loc_ADB72D: FLdPr Me
  loc_ADB730: MemLdRfVar from_stack_1.global_114
  loc_ADB733: LitI4 1
  loc_ADB738: FLdPr Me
  loc_ADB73B: MemLdStr global_100
  loc_ADB73E: Ary1LdPr
  loc_ADB73F: MemLdStr global_64
  loc_ADB742: LitI2_Byte 1
  loc_ADB744: FnUBound
  loc_ADB746: CI2I4
  loc_ADB747: ForI2 var_90
  loc_ADB74D: FLdPr Me
  loc_ADB750: MemLdI2 global_114
  loc_ADB753: LitI2_Byte 1
  loc_ADB755: GtI2
  loc_ADB756: BranchF loc_ADB76D
  loc_ADB759: LitVarStr var_A0, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_ADB75E: PopAdLdVar
  loc_ADB75F: FLdPr Me
  loc_ADB762: MemLdRfVar from_stack_1.global_60
  loc_ADB765: LdPrVar
  loc_ADB767: LateMemCall
  loc_ADB76D: Call Proc_292_20_B94078()
  loc_ADB772: Call Proc_292_21_BA9FB0()
  loc_ADB777: FLdPr Me
  loc_ADB77A: MemLdRfVar from_stack_1.global_114
  loc_ADB77D: NextI2 var_90, loc_ADB74D
  loc_ADB782: Call Proc_292_22_B1AF94()
  loc_ADB787: LitI2_Byte 1
  loc_ADB789: FLdPr Me
  loc_ADB78C: MemLdRfVar from_stack_1.global_112
  loc_ADB78F: FLdPr Me
  loc_ADB792: MemLdStr global_104
  loc_ADB795: LitI2_Byte 1
  loc_ADB797: FnUBound
  loc_ADB799: CI2I4
  loc_ADB79A: ForI2 var_B4
  loc_ADB7A0: FLdPr Me
  loc_ADB7A3: MemLdI2 global_112
  loc_ADB7A6: FLdUI1
  loc_ADB7AA: CI2UI1
  loc_ADB7AC: ModI2
  loc_ADB7AD: LitI2_Byte 2
  loc_ADB7AF: EqI2
  loc_ADB7B0: BranchF loc_ADB7C7
  loc_ADB7B3: LitVarStr var_A0, "<div style=""page-break-before:always"">&nbsp;</div>"
  loc_ADB7B8: PopAdLdVar
  loc_ADB7B9: FLdPr Me
  loc_ADB7BC: MemLdRfVar from_stack_1.global_60
  loc_ADB7BF: LdPrVar
  loc_ADB7C1: LateMemCall
  loc_ADB7C7: Call Proc_292_23_B873F8()
  loc_ADB7CC: FLdPr Me
  loc_ADB7CF: MemLdI2 global_112
  loc_ADB7D2: LitI2_Byte 1
  loc_ADB7D4: GtI2
  loc_ADB7D5: FLdPr Me
  loc_ADB7D8: MemLdI2 global_112
  loc_ADB7DB: CI4UI1
  loc_ADB7DC: FLdPr Me
  loc_ADB7DF: MemLdStr global_104
  loc_ADB7E2: LitI2_Byte 1
  loc_ADB7E4: FnUBound
  loc_ADB7E6: LtI4
  loc_ADB7E7: AndI4
  loc_ADB7E8: FLdPr Me
  loc_ADB7EB: MemLdI2 global_112
  loc_ADB7EE: FLdUI1
  loc_ADB7F2: CI2UI1
  loc_ADB7F4: ModI2
  loc_ADB7F5: LitI2_Byte 1
  loc_ADB7F7: NeI2
  loc_ADB7F8: AndI4
  loc_ADB7F9: BranchF loc_ADB810
  loc_ADB7FC: LitVarStr var_A0, "    <br><div style=""border-top:2px dotted"">&nbsp;</div>"
  loc_ADB801: PopAdLdVar
  loc_ADB802: FLdPr Me
  loc_ADB805: MemLdRfVar from_stack_1.global_60
  loc_ADB808: LdPrVar
  loc_ADB80A: LateMemCall
  loc_ADB810: FLdPr Me
  loc_ADB813: MemLdRfVar from_stack_1.global_112
  loc_ADB816: NextI2 var_B4, loc_ADB7A0
  loc_ADB81B: LitVarStr var_A0, "    <div align=""left"" class=""Normal"">www.infogov.com.ar</div>"
  loc_ADB820: PopAdLdVar
  loc_ADB821: FLdPr Me
  loc_ADB824: MemLdRfVar from_stack_1.global_60
  loc_ADB827: LdPrVar
  loc_ADB829: LateMemCall
  loc_ADB82F: Call Proc_292_24_9F3404()
  loc_ADB834: FLdPr Me
  loc_ADB837: MemLdRfVar from_stack_1.global_60
  loc_ADB83A: LdPrVar
  loc_ADB83C: LateMemCall
  loc_ADB842: LitStr vbNullString
  loc_ADB845: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_ADB84A: ExitProcHresult
End Sub

Private Function Proc_292_17_AEDF70() 'AEDF70
  'Data Table: 4973B4
  loc_AEDDD8: LitI2_Byte 0
  loc_AEDDDA: FLdPr Me
  loc_AEDDDD: MemStI2 global_120
  loc_AEDDE0: LitI2_Byte 0
  loc_AEDDE2: FLdPr Me
  loc_AEDDE5: MemStI2 global_118
  loc_AEDDE8: FLdPr Me
  loc_AEDDEB: MemLdI2 global_114
  loc_AEDDEE: LitI2_Byte 0
  loc_AEDDF0: GtI2
  loc_AEDDF1: BranchF loc_AEDF36
  loc_AEDDF4: FLdPr Me
  loc_AEDDF7: MemLdI2 global_114
  loc_AEDDFA: CI4UI1
  loc_AEDDFB: LitI4 1
  loc_AEDE00: FLdPr Me
  loc_AEDE03: MemLdStr global_100
  loc_AEDE06: AryLock
  loc_AEDE09: Ary1LdPr
  loc_AEDE0A: MemLdStr global_64
  loc_AEDE0D: AryLock
  loc_AEDE10: Ary1LdPr
  loc_AEDE11: MemLdRfVar from_stack_1.global_4
  loc_AEDE14: FStR4 var_90
  loc_AEDE17: LitI2_Byte 0
  loc_AEDE19: LitVar_Missing var_C0
  loc_AEDE1C: LitI2_Byte 0
  loc_AEDE1E: LitI4 1
  loc_AEDE23: FLdPr Me
  loc_AEDE26: MemLdStr global_124
  loc_AEDE29: Ary1LdPr
  loc_AEDE2A: MemLdStr global_4
  loc_AEDE2D: CVarStr var_A0
  loc_AEDE30: PopAdLdVar
  loc_AEDE31: FMemLdRf unk_497325
  loc_AEDE36: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDE3B: FFree1Var var_C0 = ""
  loc_AEDE3E: LitI2_Byte 0
  loc_AEDE40: LitVar_Missing var_C0
  loc_AEDE43: LitI2_Byte 0
  loc_AEDE45: LitI4 1
  loc_AEDE4A: FLdPr Me
  loc_AEDE4D: MemLdStr global_124
  loc_AEDE50: Ary1LdPr
  loc_AEDE51: MemLdStr global_8
  loc_AEDE54: CVarStr var_A0
  loc_AEDE57: PopAdLdVar
  loc_AEDE58: FMemLdRf unk_497325
  loc_AEDE5D: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDE62: FFree1Var var_C0 = ""
  loc_AEDE65: LitI2_Byte 0
  loc_AEDE67: LitVar_Missing var_C0
  loc_AEDE6A: LitI2_Byte 0
  loc_AEDE6C: LitI4 1
  loc_AEDE71: FLdPr Me
  loc_AEDE74: MemLdStr global_124
  loc_AEDE77: Ary1LdPr
  loc_AEDE78: MemLdStr global_12
  loc_AEDE7B: CVarStr var_A0
  loc_AEDE7E: PopAdLdVar
  loc_AEDE7F: FMemLdRf unk_497325
  loc_AEDE84: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDE89: FFree1Var var_C0 = ""
  loc_AEDE8C: LitI2_Byte 0
  loc_AEDE8E: LitVar_Missing var_C0
  loc_AEDE91: LitI2_Byte 0
  loc_AEDE93: LitI4 1
  loc_AEDE98: FLdPr Me
  loc_AEDE9B: MemLdStr global_124
  loc_AEDE9E: Ary1LdPr
  loc_AEDE9F: MemLdStr global_16
  loc_AEDEA2: CVarStr var_A0
  loc_AEDEA5: PopAdLdVar
  loc_AEDEA6: FMemLdRf unk_497325
  loc_AEDEAB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDEB0: FFree1Var var_C0 = ""
  loc_AEDEB3: LitI2_Byte 0
  loc_AEDEB5: LitVar_Missing var_C0
  loc_AEDEB8: LitI2_Byte 0
  loc_AEDEBA: LitI4 1
  loc_AEDEBF: FLdPr Me
  loc_AEDEC2: MemLdStr global_124
  loc_AEDEC5: Ary1LdPr
  loc_AEDEC6: MemLdStr global_20
  loc_AEDEC9: CVarStr var_A0
  loc_AEDECC: PopAdLdVar
  loc_AEDECD: FMemLdRf unk_497325
  loc_AEDED2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDED7: FFree1Var var_C0 = ""
  loc_AEDEDA: LitI2_Byte 0
  loc_AEDEDC: LitVar_Missing var_C0
  loc_AEDEDF: LitI2_Byte 0
  loc_AEDEE1: LitI4 1
  loc_AEDEE6: FLdPr Me
  loc_AEDEE9: MemLdStr global_124
  loc_AEDEEC: Ary1LdPr
  loc_AEDEED: MemLdStr global_24
  loc_AEDEF0: CVarStr var_A0
  loc_AEDEF3: PopAdLdVar
  loc_AEDEF4: FMemLdRf unk_497325
  loc_AEDEF9: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDEFE: FFree1Var var_C0 = ""
  loc_AEDF01: LitI2_Byte 0
  loc_AEDF03: LitVar_Missing var_C0
  loc_AEDF06: LitI2_Byte 0
  loc_AEDF08: LitI4 1
  loc_AEDF0D: FLdPr Me
  loc_AEDF10: MemLdStr global_124
  loc_AEDF13: Ary1LdPr
  loc_AEDF14: MemLdStr global_28
  loc_AEDF17: CVarStr var_A0
  loc_AEDF1A: PopAdLdVar
  loc_AEDF1B: FMemLdRf unk_497325
  loc_AEDF20: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_AEDF25: FFree1Var var_C0 = ""
  loc_AEDF28: LitI4 0
  loc_AEDF2D: FStR4 var_90
  loc_AEDF30: AryUnlock
  loc_AEDF33: AryUnlock
  loc_AEDF36: FLdPr Me
  loc_AEDF39: MemLdI2 global_114
  loc_AEDF3C: LitI2_Byte 1
  loc_AEDF3E: AddI2
  loc_AEDF3F: FLdPr Me
  loc_AEDF42: MemStI2 global_114
  loc_AEDF45: LitI4 0
  loc_AEDF4A: FLdPr Me
  loc_AEDF4D: MemLdI2 global_114
  loc_AEDF50: CI4UI1
  loc_AEDF51: LitI4 1
  loc_AEDF56: FLdPr Me
  loc_AEDF59: MemLdStr global_100
  loc_AEDF5C: Ary1LdPr
  loc_AEDF5D: MemLdRfVar from_stack_1.global_64
  loc_AEDF60: RedimPreserve
  loc_AEDF6A: Call Proc_292_18_B2DCA4()
  loc_AEDF6F: ExitProcHresult
End Function

Private Function Proc_292_18_B2DCA4() 'B2DCA4
  'Data Table: 4973B4
  loc_B2D9D4: FLdPr Me
  loc_B2D9D7: MemLdI2 global_120
  loc_B2D9DA: LitI2_Byte &H1E
  loc_B2D9DC: GeI2
  loc_B2D9DD: BranchF loc_B2D9E6
  loc_B2D9E0: from_stack_1v = Proc_292_17_AEDF70()
  loc_B2D9E5: ExitProcHresult
  loc_B2D9E6: FLdPr Me
  loc_B2D9E9: MemLdI2 global_118
  loc_B2D9EC: LitI2_Byte 1
  loc_B2D9EE: AddI2
  loc_B2D9EF: FLdPr Me
  loc_B2D9F2: MemStI2 global_118
  loc_B2D9F5: FLdPr Me
  loc_B2D9F8: MemLdI2 global_120
  loc_B2D9FB: LitI2_Byte 1
  loc_B2D9FD: AddI2
  loc_B2D9FE: FLdPr Me
  loc_B2DA01: MemStI2 global_120
  loc_B2DA04: LitI4 0
  loc_B2DA09: FLdPr Me
  loc_B2DA0C: MemLdI2 global_118
  loc_B2DA0F: CI4UI1
  loc_B2DA10: FLdPr Me
  loc_B2DA13: MemLdI2 global_114
  loc_B2DA16: CI4UI1
  loc_B2DA17: LitI4 1
  loc_B2DA1C: FLdPr Me
  loc_B2DA1F: MemLdStr global_100
  loc_B2DA22: Ary1LdPr
  loc_B2DA23: MemLdStr global_64
  loc_B2DA26: Ary1LdPr
  loc_B2DA27: MemLdRfVar from_stack_1.global_0
  loc_B2DA2A: RedimPreserve
  loc_B2DA34: FLdPr Me
  loc_B2DA37: MemLdI2 global_118
  loc_B2DA3A: CI4UI1
  loc_B2DA3B: FLdPr Me
  loc_B2DA3E: MemLdI2 global_114
  loc_B2DA41: CI4UI1
  loc_B2DA42: LitI4 1
  loc_B2DA47: FLdPr Me
  loc_B2DA4A: MemLdStr global_100
  loc_B2DA4D: AryLock
  loc_B2DA50: Ary1LdPr
  loc_B2DA51: MemLdStr global_64
  loc_B2DA54: AryLock
  loc_B2DA57: Ary1LdPr
  loc_B2DA58: MemLdStr global_0
  loc_B2DA5B: AryLock
  loc_B2DA5E: Ary1LdRf
  loc_B2DA5F: FStR4 var_94
  loc_B2DA62: FLdRfVar var_B0
  loc_B2DA65: LitVarStr var_AC, "CuotDefa"
  loc_B2DA6A: PopAdLdVar
  loc_B2DA6B: FLdRfVar var_9C
  loc_B2DA6E: FLdRfVar var_98
  loc_B2DA71: FLdPr Me
  loc_B2DA74: MemLdRfVar from_stack_1.global_80
  loc_B2DA77: NewIfNullPr clsdetafapa
  loc_B2DA7A: from_stack_1v = clsdetafapa.RsFrmGet()
  loc_B2DA7F: FLdPr var_98
  loc_B2DA82:  = Me.Fields
  loc_B2DA87: FLdPr var_9C
  loc_B2DA8A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2DA8F: LitI2_Byte 0
  loc_B2DA91: LitVar_Missing var_E0
  loc_B2DA94: LitI2_Byte 0
  loc_B2DA96: FLdZeroAd var_B0
  loc_B2DA99: CVarAd
  loc_B2DA9D: PopAdLdVar
  loc_B2DA9E: FMemLdRf unk_497321
  loc_B2DAA3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DAA8: FFreeAd var_98 = ""
  loc_B2DAAF: FFreeVar var_C0 = ""
  loc_B2DAB6: FLdRfVar var_E8
  loc_B2DAB9: FLdPr Me
  loc_B2DABC: MemLdRfVar from_stack_1.global_80
  loc_B2DABF: NewIfNullPr clsdetafapa
  loc_B2DAC2: from_stack_1 = clsdetafapa.CapiDefa
  loc_B2DAC7: LitI2_Byte 0
  loc_B2DAC9: LitI4 1
  loc_B2DACE: FLdPr Me
  loc_B2DAD1: MemLdStr global_124
  loc_B2DAD4: AryLock
  loc_B2DAD7: Ary1LdPr
  loc_B2DAD8: MemLdRfVar from_stack_1.global_4
  loc_B2DADB: CVarRef
  loc_B2DAE0: LitI2_Byte &HFF
  loc_B2DAE2: FLdFPR8 var_E8
  loc_B2DAE5: CVarR8
  loc_B2DAE9: PopAdLdVar
  loc_B2DAEA: FMemLdRf unk_497321
  loc_B2DAEF: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DAF4: AryUnlock
  loc_B2DAF7: FLdRfVar var_E8
  loc_B2DAFA: FLdPr Me
  loc_B2DAFD: MemLdRfVar from_stack_1.global_80
  loc_B2DB00: NewIfNullPr clsdetafapa
  loc_B2DB03: from_stack_1 = clsdetafapa.DecaDefa
  loc_B2DB08: LitI2_Byte 0
  loc_B2DB0A: LitI4 1
  loc_B2DB0F: FLdPr Me
  loc_B2DB12: MemLdStr global_124
  loc_B2DB15: AryLock
  loc_B2DB18: Ary1LdPr
  loc_B2DB19: MemLdRfVar from_stack_1.global_8
  loc_B2DB1C: CVarRef
  loc_B2DB21: LitI2_Byte &HFF
  loc_B2DB23: FLdFPR8 var_E8
  loc_B2DB26: CVarR8
  loc_B2DB2A: PopAdLdVar
  loc_B2DB2B: FMemLdRf unk_497321
  loc_B2DB30: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DB35: AryUnlock
  loc_B2DB38: FLdRfVar var_E8
  loc_B2DB3B: FLdPr Me
  loc_B2DB3E: MemLdRfVar from_stack_1.global_80
  loc_B2DB41: NewIfNullPr clsdetafapa
  loc_B2DB44: from_stack_1 = clsdetafapa.RecaDefa
  loc_B2DB49: LitI2_Byte 0
  loc_B2DB4B: LitI4 1
  loc_B2DB50: FLdPr Me
  loc_B2DB53: MemLdStr global_124
  loc_B2DB56: AryLock
  loc_B2DB59: Ary1LdPr
  loc_B2DB5A: MemLdRfVar from_stack_1.global_12
  loc_B2DB5D: CVarRef
  loc_B2DB62: LitI2_Byte &HFF
  loc_B2DB64: FLdFPR8 var_E8
  loc_B2DB67: CVarR8
  loc_B2DB6B: PopAdLdVar
  loc_B2DB6C: FMemLdRf unk_497321
  loc_B2DB71: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DB76: AryUnlock
  loc_B2DB79: FLdRfVar var_E8
  loc_B2DB7C: FLdPr Me
  loc_B2DB7F: MemLdRfVar from_stack_1.global_80
  loc_B2DB82: NewIfNullPr clsdetafapa
  loc_B2DB85: from_stack_1 = clsdetafapa.DereDefa
  loc_B2DB8A: LitI2_Byte 0
  loc_B2DB8C: LitI4 1
  loc_B2DB91: FLdPr Me
  loc_B2DB94: MemLdStr global_124
  loc_B2DB97: AryLock
  loc_B2DB9A: Ary1LdPr
  loc_B2DB9B: MemLdRfVar from_stack_1.global_16
  loc_B2DB9E: CVarRef
  loc_B2DBA3: LitI2_Byte &HFF
  loc_B2DBA5: FLdFPR8 var_E8
  loc_B2DBA8: CVarR8
  loc_B2DBAC: PopAdLdVar
  loc_B2DBAD: FMemLdRf unk_497321
  loc_B2DBB2: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DBB7: AryUnlock
  loc_B2DBBA: FLdRfVar var_E8
  loc_B2DBBD: FLdPr Me
  loc_B2DBC0: MemLdRfVar from_stack_1.global_80
  loc_B2DBC3: NewIfNullPr clsdetafapa
  loc_B2DBC6: from_stack_1 = clsdetafapa.InteDefa
  loc_B2DBCB: LitI2_Byte 0
  loc_B2DBCD: LitI4 1
  loc_B2DBD2: FLdPr Me
  loc_B2DBD5: MemLdStr global_124
  loc_B2DBD8: AryLock
  loc_B2DBDB: Ary1LdPr
  loc_B2DBDC: MemLdRfVar from_stack_1.global_20
  loc_B2DBDF: CVarRef
  loc_B2DBE4: LitI2_Byte &HFF
  loc_B2DBE6: FLdFPR8 var_E8
  loc_B2DBE9: CVarR8
  loc_B2DBED: PopAdLdVar
  loc_B2DBEE: FMemLdRf unk_497321
  loc_B2DBF3: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DBF8: AryUnlock
  loc_B2DBFB: FLdRfVar var_E8
  loc_B2DBFE: FLdPr Me
  loc_B2DC01: MemLdRfVar from_stack_1.global_80
  loc_B2DC04: NewIfNullPr clsdetafapa
  loc_B2DC07: from_stack_1 = clsdetafapa.ApreDefa
  loc_B2DC0C: LitI2_Byte 0
  loc_B2DC0E: LitI4 1
  loc_B2DC13: FLdPr Me
  loc_B2DC16: MemLdStr global_124
  loc_B2DC19: AryLock
  loc_B2DC1C: Ary1LdPr
  loc_B2DC1D: MemLdRfVar from_stack_1.global_24
  loc_B2DC20: CVarRef
  loc_B2DC25: LitI2_Byte &HFF
  loc_B2DC27: FLdFPR8 var_E8
  loc_B2DC2A: CVarR8
  loc_B2DC2E: PopAdLdVar
  loc_B2DC2F: FMemLdRf unk_497321
  loc_B2DC34: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DC39: AryUnlock
  loc_B2DC3C: FLdRfVar var_E8
  loc_B2DC3F: FLdPr Me
  loc_B2DC42: MemLdRfVar from_stack_1.global_80
  loc_B2DC45: NewIfNullPr clsdetafapa
  loc_B2DC48: from_stack_1 = clsdetafapa.TotaDefa
  loc_B2DC4D: LitI2_Byte 0
  loc_B2DC4F: LitI4 1
  loc_B2DC54: FLdPr Me
  loc_B2DC57: MemLdStr global_124
  loc_B2DC5A: AryLock
  loc_B2DC5D: Ary1LdPr
  loc_B2DC5E: MemLdRfVar from_stack_1.global_28
  loc_B2DC61: CVarRef
  loc_B2DC66: LitI2_Byte &HFF
  loc_B2DC68: FLdFPR8 var_E8
  loc_B2DC6B: CVarR8
  loc_B2DC6F: PopAdLdVar
  loc_B2DC70: FMemLdRf unk_497321
  loc_B2DC75: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B2DC7A: AryUnlock
  loc_B2DC7D: LitI4 0
  loc_B2DC82: FStR4 var_94
  loc_B2DC85: AryUnlock
  loc_B2DC88: AryUnlock
  loc_B2DC8B: AryUnlock
  loc_B2DC8E: LitI2_Byte 1
  loc_B2DC90: PopTmpLdAd2 var_EE
  loc_B2DC93: FLdPr Me
  loc_B2DC96: MemLdRfVar from_stack_1.global_80
  loc_B2DC99: NewIfNullPr clsdetafapa
  loc_B2DC9C: Call clsdetafapa.Move(from_stack_1v)
  loc_B2DCA1: ExitProcHresult
End Function

Private Function Proc_292_19_BA3874() 'BA3874
  'Data Table: 4973B4
  loc_BA3254: LitVarStr var_94, "<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">"
  loc_BA3259: PopAdLdVar
  loc_BA325A: FLdPr Me
  loc_BA325D: MemLdRfVar from_stack_1.global_60
  loc_BA3260: LdPrVar
  loc_BA3262: LateMemCall
  loc_BA3268: LitVarStr var_94, "<html xmlns=""http://www.w3.org/1999/xhtml"">"
  loc_BA326D: PopAdLdVar
  loc_BA326E: FLdPr Me
  loc_BA3271: MemLdRfVar from_stack_1.global_60
  loc_BA3274: LdPrVar
  loc_BA3276: LateMemCall
  loc_BA327C: LitVarStr var_94, "<head>"
  loc_BA3281: PopAdLdVar
  loc_BA3282: FLdPr Me
  loc_BA3285: MemLdRfVar from_stack_1.global_60
  loc_BA3288: LdPrVar
  loc_BA328A: LateMemCall
  loc_BA3290: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BA3295: PopAdLdVar
  loc_BA3296: FLdPr Me
  loc_BA3299: MemLdRfVar from_stack_1.global_60
  loc_BA329C: LdPrVar
  loc_BA329E: LateMemCall
  loc_BA32A4: LitStr "<title>"
  loc_BA32A7: FLdRfVar var_A8
  loc_BA32AA: FLdPr Me
  loc_BA32AD:  = Me.Caption
  loc_BA32B2: ILdRf var_A8
  loc_BA32B5: ConcatStr
  loc_BA32B6: FStStrNoPop var_AC
  loc_BA32B9: LitStr "</title>"
  loc_BA32BC: ConcatStr
  loc_BA32BD: CVarStr var_BC
  loc_BA32C0: PopAdLdVar
  loc_BA32C1: FLdPr Me
  loc_BA32C4: MemLdRfVar from_stack_1.global_60
  loc_BA32C7: LdPrVar
  loc_BA32C9: LateMemCall
  loc_BA32CF: FFreeStr var_A8 = ""
  loc_BA32D6: FFree1Var var_BC = ""
  loc_BA32D9: LitVarStr var_94, "<style type=""text/css"">"
  loc_BA32DE: PopAdLdVar
  loc_BA32DF: FLdPr Me
  loc_BA32E2: MemLdRfVar from_stack_1.global_60
  loc_BA32E5: LdPrVar
  loc_BA32E7: LateMemCall
  loc_BA32ED: LitVarStr var_94, "<!--"
  loc_BA32F2: PopAdLdVar
  loc_BA32F3: FLdPr Me
  loc_BA32F6: MemLdRfVar from_stack_1.global_60
  loc_BA32F9: LdPrVar
  loc_BA32FB: LateMemCall
  loc_BA3301: LitVarStr var_94, ".Encabezado {"
  loc_BA3306: PopAdLdVar
  loc_BA3307: FLdPr Me
  loc_BA330A: MemLdRfVar from_stack_1.global_60
  loc_BA330D: LdPrVar
  loc_BA330F: LateMemCall
  loc_BA3315: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_BA331A: PopAdLdVar
  loc_BA331B: FLdPr Me
  loc_BA331E: MemLdRfVar from_stack_1.global_60
  loc_BA3321: LdPrVar
  loc_BA3323: LateMemCall
  loc_BA3329: LitVarStr var_94, " font-size: 10px;"
  loc_BA332E: PopAdLdVar
  loc_BA332F: FLdPr Me
  loc_BA3332: MemLdRfVar from_stack_1.global_60
  loc_BA3335: LdPrVar
  loc_BA3337: LateMemCall
  loc_BA333D: LitVarStr var_94, " background-color: #F0F0F0;"
  loc_BA3342: PopAdLdVar
  loc_BA3343: FLdPr Me
  loc_BA3346: MemLdRfVar from_stack_1.global_60
  loc_BA3349: LdPrVar
  loc_BA334B: LateMemCall
  loc_BA3351: LitVarStr var_94, "}"
  loc_BA3356: PopAdLdVar
  loc_BA3357: FLdPr Me
  loc_BA335A: MemLdRfVar from_stack_1.global_60
  loc_BA335D: LdPrVar
  loc_BA335F: LateMemCall
  loc_BA3365: LitVarStr var_94, ".Normal {"
  loc_BA336A: PopAdLdVar
  loc_BA336B: FLdPr Me
  loc_BA336E: MemLdRfVar from_stack_1.global_60
  loc_BA3371: LdPrVar
  loc_BA3373: LateMemCall
  loc_BA3379: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA337E: PopAdLdVar
  loc_BA337F: FLdPr Me
  loc_BA3382: MemLdRfVar from_stack_1.global_60
  loc_BA3385: LdPrVar
  loc_BA3387: LateMemCall
  loc_BA338D: LitVarStr var_94, " font-size: 11px;"
  loc_BA3392: PopAdLdVar
  loc_BA3393: FLdPr Me
  loc_BA3396: MemLdRfVar from_stack_1.global_60
  loc_BA3399: LdPrVar
  loc_BA339B: LateMemCall
  loc_BA33A1: LitVarStr var_94, " vertical-align: top;"
  loc_BA33A6: PopAdLdVar
  loc_BA33A7: FLdPr Me
  loc_BA33AA: MemLdRfVar from_stack_1.global_60
  loc_BA33AD: LdPrVar
  loc_BA33AF: LateMemCall
  loc_BA33B5: LitVarStr var_94, "}"
  loc_BA33BA: PopAdLdVar
  loc_BA33BB: FLdPr Me
  loc_BA33BE: MemLdRfVar from_stack_1.global_60
  loc_BA33C1: LdPrVar
  loc_BA33C3: LateMemCall
  loc_BA33C9: LitVarStr var_94, ".NormalBloqueFin {"
  loc_BA33CE: PopAdLdVar
  loc_BA33CF: FLdPr Me
  loc_BA33D2: MemLdRfVar from_stack_1.global_60
  loc_BA33D5: LdPrVar
  loc_BA33D7: LateMemCall
  loc_BA33DD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA33E2: PopAdLdVar
  loc_BA33E3: FLdPr Me
  loc_BA33E6: MemLdRfVar from_stack_1.global_60
  loc_BA33E9: LdPrVar
  loc_BA33EB: LateMemCall
  loc_BA33F1: LitVarStr var_94, " font-size: 16px;"
  loc_BA33F6: PopAdLdVar
  loc_BA33F7: FLdPr Me
  loc_BA33FA: MemLdRfVar from_stack_1.global_60
  loc_BA33FD: LdPrVar
  loc_BA33FF: LateMemCall
  loc_BA3405: LitVarStr var_94, " vertical-align: top;"
  loc_BA340A: PopAdLdVar
  loc_BA340B: FLdPr Me
  loc_BA340E: MemLdRfVar from_stack_1.global_60
  loc_BA3411: LdPrVar
  loc_BA3413: LateMemCall
  loc_BA3419: LitVarStr var_94, "}"
  loc_BA341E: PopAdLdVar
  loc_BA341F: FLdPr Me
  loc_BA3422: MemLdRfVar from_stack_1.global_60
  loc_BA3425: LdPrVar
  loc_BA3427: LateMemCall
  loc_BA342D: LitVarStr var_94, ".NombreMunicipio {"
  loc_BA3432: PopAdLdVar
  loc_BA3433: FLdPr Me
  loc_BA3436: MemLdRfVar from_stack_1.global_60
  loc_BA3439: LdPrVar
  loc_BA343B: LateMemCall
  loc_BA3441: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_BA3446: PopAdLdVar
  loc_BA3447: FLdPr Me
  loc_BA344A: MemLdRfVar from_stack_1.global_60
  loc_BA344D: LdPrVar
  loc_BA344F: LateMemCall
  loc_BA3455: LitVarStr var_94, " font-size: 14px;"
  loc_BA345A: PopAdLdVar
  loc_BA345B: FLdPr Me
  loc_BA345E: MemLdRfVar from_stack_1.global_60
  loc_BA3461: LdPrVar
  loc_BA3463: LateMemCall
  loc_BA3469: LitVarStr var_94, " font-weight: bold;"
  loc_BA346E: PopAdLdVar
  loc_BA346F: FLdPr Me
  loc_BA3472: MemLdRfVar from_stack_1.global_60
  loc_BA3475: LdPrVar
  loc_BA3477: LateMemCall
  loc_BA347D: LitVarStr var_94, "}"
  loc_BA3482: PopAdLdVar
  loc_BA3483: FLdPr Me
  loc_BA3486: MemLdRfVar from_stack_1.global_60
  loc_BA3489: LdPrVar
  loc_BA348B: LateMemCall
  loc_BA3491: LitVarStr var_94, ".NombreMunicipioBloqueFin {"
  loc_BA3496: PopAdLdVar
  loc_BA3497: FLdPr Me
  loc_BA349A: MemLdRfVar from_stack_1.global_60
  loc_BA349D: LdPrVar
  loc_BA349F: LateMemCall
  loc_BA34A5: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_BA34AA: PopAdLdVar
  loc_BA34AB: FLdPr Me
  loc_BA34AE: MemLdRfVar from_stack_1.global_60
  loc_BA34B1: LdPrVar
  loc_BA34B3: LateMemCall
  loc_BA34B9: LitVarStr var_94, " font-size: 10px;"
  loc_BA34BE: PopAdLdVar
  loc_BA34BF: FLdPr Me
  loc_BA34C2: MemLdRfVar from_stack_1.global_60
  loc_BA34C5: LdPrVar
  loc_BA34C7: LateMemCall
  loc_BA34CD: LitVarStr var_94, "}"
  loc_BA34D2: PopAdLdVar
  loc_BA34D3: FLdPr Me
  loc_BA34D6: MemLdRfVar from_stack_1.global_60
  loc_BA34D9: LdPrVar
  loc_BA34DB: LateMemCall
  loc_BA34E1: LitVarStr var_94, ".DatosMunicipio {"
  loc_BA34E6: PopAdLdVar
  loc_BA34E7: FLdPr Me
  loc_BA34EA: MemLdRfVar from_stack_1.global_60
  loc_BA34ED: LdPrVar
  loc_BA34EF: LateMemCall
  loc_BA34F5: LitVarStr var_94, " font-family: Arial, Helvetica, sans-serif;"
  loc_BA34FA: PopAdLdVar
  loc_BA34FB: FLdPr Me
  loc_BA34FE: MemLdRfVar from_stack_1.global_60
  loc_BA3501: LdPrVar
  loc_BA3503: LateMemCall
  loc_BA3509: LitVarStr var_94, " font-size: 12px;"
  loc_BA350E: PopAdLdVar
  loc_BA350F: FLdPr Me
  loc_BA3512: MemLdRfVar from_stack_1.global_60
  loc_BA3515: LdPrVar
  loc_BA3517: LateMemCall
  loc_BA351D: LitVarStr var_94, "}"
  loc_BA3522: PopAdLdVar
  loc_BA3523: FLdPr Me
  loc_BA3526: MemLdRfVar from_stack_1.global_60
  loc_BA3529: LdPrVar
  loc_BA352B: LateMemCall
  loc_BA3531: LitVarStr var_94, ".Totales {"
  loc_BA3536: PopAdLdVar
  loc_BA3537: FLdPr Me
  loc_BA353A: MemLdRfVar from_stack_1.global_60
  loc_BA353D: LdPrVar
  loc_BA353F: LateMemCall
  loc_BA3545: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA354A: PopAdLdVar
  loc_BA354B: FLdPr Me
  loc_BA354E: MemLdRfVar from_stack_1.global_60
  loc_BA3551: LdPrVar
  loc_BA3553: LateMemCall
  loc_BA3559: LitVarStr var_94, " font-size: 13px;"
  loc_BA355E: PopAdLdVar
  loc_BA355F: FLdPr Me
  loc_BA3562: MemLdRfVar from_stack_1.global_60
  loc_BA3565: LdPrVar
  loc_BA3567: LateMemCall
  loc_BA356D: LitVarStr var_94, " vertical-align: top;"
  loc_BA3572: PopAdLdVar
  loc_BA3573: FLdPr Me
  loc_BA3576: MemLdRfVar from_stack_1.global_60
  loc_BA3579: LdPrVar
  loc_BA357B: LateMemCall
  loc_BA3581: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_BA3586: PopAdLdVar
  loc_BA3587: FLdPr Me
  loc_BA358A: MemLdRfVar from_stack_1.global_60
  loc_BA358D: LdPrVar
  loc_BA358F: LateMemCall
  loc_BA3595: LitVarStr var_94, " font-weight: bold;"
  loc_BA359A: PopAdLdVar
  loc_BA359B: FLdPr Me
  loc_BA359E: MemLdRfVar from_stack_1.global_60
  loc_BA35A1: LdPrVar
  loc_BA35A3: LateMemCall
  loc_BA35A9: LitVarStr var_94, "}"
  loc_BA35AE: PopAdLdVar
  loc_BA35AF: FLdPr Me
  loc_BA35B2: MemLdRfVar from_stack_1.global_60
  loc_BA35B5: LdPrVar
  loc_BA35B7: LateMemCall
  loc_BA35BD: LitVarStr var_94, ".Total {"
  loc_BA35C2: PopAdLdVar
  loc_BA35C3: FLdPr Me
  loc_BA35C6: MemLdRfVar from_stack_1.global_60
  loc_BA35C9: LdPrVar
  loc_BA35CB: LateMemCall
  loc_BA35D1: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA35D6: PopAdLdVar
  loc_BA35D7: FLdPr Me
  loc_BA35DA: MemLdRfVar from_stack_1.global_60
  loc_BA35DD: LdPrVar
  loc_BA35DF: LateMemCall
  loc_BA35E5: LitVarStr var_94, " font-size: 14px;"
  loc_BA35EA: PopAdLdVar
  loc_BA35EB: FLdPr Me
  loc_BA35EE: MemLdRfVar from_stack_1.global_60
  loc_BA35F1: LdPrVar
  loc_BA35F3: LateMemCall
  loc_BA35F9: LitVarStr var_94, " vertical-align: top;"
  loc_BA35FE: PopAdLdVar
  loc_BA35FF: FLdPr Me
  loc_BA3602: MemLdRfVar from_stack_1.global_60
  loc_BA3605: LdPrVar
  loc_BA3607: LateMemCall
  loc_BA360D: LitVarStr var_94, " background-color: #EBEBEB;"
  loc_BA3612: PopAdLdVar
  loc_BA3613: FLdPr Me
  loc_BA3616: MemLdRfVar from_stack_1.global_60
  loc_BA3619: LdPrVar
  loc_BA361B: LateMemCall
  loc_BA3621: LitVarStr var_94, " font-weight: bold;"
  loc_BA3626: PopAdLdVar
  loc_BA3627: FLdPr Me
  loc_BA362A: MemLdRfVar from_stack_1.global_60
  loc_BA362D: LdPrVar
  loc_BA362F: LateMemCall
  loc_BA3635: LitVarStr var_94, " border: 1px solid #000000;"
  loc_BA363A: PopAdLdVar
  loc_BA363B: FLdPr Me
  loc_BA363E: MemLdRfVar from_stack_1.global_60
  loc_BA3641: LdPrVar
  loc_BA3643: LateMemCall
  loc_BA3649: LitVarStr var_94, "}"
  loc_BA364E: PopAdLdVar
  loc_BA364F: FLdPr Me
  loc_BA3652: MemLdRfVar from_stack_1.global_60
  loc_BA3655: LdPrVar
  loc_BA3657: LateMemCall
  loc_BA365D: LitVarStr var_94, ".Vencimiento {"
  loc_BA3662: PopAdLdVar
  loc_BA3663: FLdPr Me
  loc_BA3666: MemLdRfVar from_stack_1.global_60
  loc_BA3669: LdPrVar
  loc_BA366B: LateMemCall
  loc_BA3671: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA3676: PopAdLdVar
  loc_BA3677: FLdPr Me
  loc_BA367A: MemLdRfVar from_stack_1.global_60
  loc_BA367D: LdPrVar
  loc_BA367F: LateMemCall
  loc_BA3685: LitVarStr var_94, " font-size: 16px;"
  loc_BA368A: PopAdLdVar
  loc_BA368B: FLdPr Me
  loc_BA368E: MemLdRfVar from_stack_1.global_60
  loc_BA3691: LdPrVar
  loc_BA3693: LateMemCall
  loc_BA3699: LitVarStr var_94, " vertical-align: top;"
  loc_BA369E: PopAdLdVar
  loc_BA369F: FLdPr Me
  loc_BA36A2: MemLdRfVar from_stack_1.global_60
  loc_BA36A5: LdPrVar
  loc_BA36A7: LateMemCall
  loc_BA36AD: LitVarStr var_94, " font-weight: bold;"
  loc_BA36B2: PopAdLdVar
  loc_BA36B3: FLdPr Me
  loc_BA36B6: MemLdRfVar from_stack_1.global_60
  loc_BA36B9: LdPrVar
  loc_BA36BB: LateMemCall
  loc_BA36C1: LitVarStr var_94, " border: 1px solid #000000;"
  loc_BA36C6: PopAdLdVar
  loc_BA36C7: FLdPr Me
  loc_BA36CA: MemLdRfVar from_stack_1.global_60
  loc_BA36CD: LdPrVar
  loc_BA36CF: LateMemCall
  loc_BA36D5: LitVarStr var_94, "}"
  loc_BA36DA: PopAdLdVar
  loc_BA36DB: FLdPr Me
  loc_BA36DE: MemLdRfVar from_stack_1.global_60
  loc_BA36E1: LdPrVar
  loc_BA36E3: LateMemCall
  loc_BA36E9: LitVarStr var_94, ".Resaltado {"
  loc_BA36EE: PopAdLdVar
  loc_BA36EF: FLdPr Me
  loc_BA36F2: MemLdRfVar from_stack_1.global_60
  loc_BA36F5: LdPrVar
  loc_BA36F7: LateMemCall
  loc_BA36FD: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BA3702: PopAdLdVar
  loc_BA3703: FLdPr Me
  loc_BA3706: MemLdRfVar from_stack_1.global_60
  loc_BA3709: LdPrVar
  loc_BA370B: LateMemCall
  loc_BA3711: LitVarStr var_94, " font-size: 11px;"
  loc_BA3716: PopAdLdVar
  loc_BA3717: FLdPr Me
  loc_BA371A: MemLdRfVar from_stack_1.global_60
  loc_BA371D: LdPrVar
  loc_BA371F: LateMemCall
  loc_BA3725: LitVarStr var_94, " vertical-align: top;"
  loc_BA372A: PopAdLdVar
  loc_BA372B: FLdPr Me
  loc_BA372E: MemLdRfVar from_stack_1.global_60
  loc_BA3731: LdPrVar
  loc_BA3733: LateMemCall
  loc_BA3739: LitVarStr var_94, " font-weight: bold;"
  loc_BA373E: PopAdLdVar
  loc_BA373F: FLdPr Me
  loc_BA3742: MemLdRfVar from_stack_1.global_60
  loc_BA3745: LdPrVar
  loc_BA3747: LateMemCall
  loc_BA374D: LitVarStr var_94, " border: 1px solid #000000;"
  loc_BA3752: PopAdLdVar
  loc_BA3753: FLdPr Me
  loc_BA3756: MemLdRfVar from_stack_1.global_60
  loc_BA3759: LdPrVar
  loc_BA375B: LateMemCall
  loc_BA3761: LitVarStr var_94, "}"
  loc_BA3766: PopAdLdVar
  loc_BA3767: FLdPr Me
  loc_BA376A: MemLdRfVar from_stack_1.global_60
  loc_BA376D: LdPrVar
  loc_BA376F: LateMemCall
  loc_BA3775: LitVarStr var_94, ".CodBar {"
  loc_BA377A: PopAdLdVar
  loc_BA377B: FLdPr Me
  loc_BA377E: MemLdRfVar from_stack_1.global_60
  loc_BA3781: LdPrVar
  loc_BA3783: LateMemCall
  loc_BA3789: LitVarStr var_94, " font-family: ""Code 128"";"
  loc_BA378E: PopAdLdVar
  loc_BA378F: FLdPr Me
  loc_BA3792: MemLdRfVar from_stack_1.global_60
  loc_BA3795: LdPrVar
  loc_BA3797: LateMemCall
  loc_BA379D: LitStr " font-size: "
  loc_BA37A0: LitI2_Byte &H30
  loc_BA37A2: CStrUI1
  loc_BA37A4: FStStrNoPop var_A8
  loc_BA37A7: ConcatStr
  loc_BA37A8: FStStrNoPop var_AC
  loc_BA37AB: LitStr "px;"
  loc_BA37AE: ConcatStr
  loc_BA37AF: CVarStr var_BC
  loc_BA37B2: PopAdLdVar
  loc_BA37B3: FLdPr Me
  loc_BA37B6: MemLdRfVar from_stack_1.global_60
  loc_BA37B9: LdPrVar
  loc_BA37BB: LateMemCall
  loc_BA37C1: FFreeStr var_A8 = ""
  loc_BA37C8: FFree1Var var_BC = ""
  loc_BA37CB: LitVarStr var_94, " font-style: normal;"
  loc_BA37D0: PopAdLdVar
  loc_BA37D1: FLdPr Me
  loc_BA37D4: MemLdRfVar from_stack_1.global_60
  loc_BA37D7: LdPrVar
  loc_BA37D9: LateMemCall
  loc_BA37DF: LitVarStr var_94, " line-height: normal;"
  loc_BA37E4: PopAdLdVar
  loc_BA37E5: FLdPr Me
  loc_BA37E8: MemLdRfVar from_stack_1.global_60
  loc_BA37EB: LdPrVar
  loc_BA37ED: LateMemCall
  loc_BA37F3: LitVarStr var_94, " font-weight: normal;"
  loc_BA37F8: PopAdLdVar
  loc_BA37F9: FLdPr Me
  loc_BA37FC: MemLdRfVar from_stack_1.global_60
  loc_BA37FF: LdPrVar
  loc_BA3801: LateMemCall
  loc_BA3807: LitVarStr var_94, "}"
  loc_BA380C: PopAdLdVar
  loc_BA380D: FLdPr Me
  loc_BA3810: MemLdRfVar from_stack_1.global_60
  loc_BA3813: LdPrVar
  loc_BA3815: LateMemCall
  loc_BA381B: LitVarStr var_94, "-->"
  loc_BA3820: PopAdLdVar
  loc_BA3821: FLdPr Me
  loc_BA3824: MemLdRfVar from_stack_1.global_60
  loc_BA3827: LdPrVar
  loc_BA3829: LateMemCall
  loc_BA382F: LitVarStr var_94, "</style>"
  loc_BA3834: PopAdLdVar
  loc_BA3835: FLdPr Me
  loc_BA3838: MemLdRfVar from_stack_1.global_60
  loc_BA383B: LdPrVar
  loc_BA383D: LateMemCall
  loc_BA3843: LitI4 0
  loc_BA3848: FStStrCopy var_AC
  loc_BA384B: FLdRfVar var_AC
  loc_BA384E: LitI4 0
  loc_BA3853: FStStrCopy var_A8
  loc_BA3856: FLdRfVar var_A8
  loc_BA3859: LitI2_Byte 0
  loc_BA385B: PopTmpLdAd2 var_BE
  loc_BA385E: FLdPr Me
  loc_BA3861: MemLdRfVar from_stack_1.global_60
  loc_BA3864: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BA3869: FFreeStr var_A8 = ""
  loc_BA3870: ExitProcHresult
End Function

Private Function Proc_292_20_B94078() 'B94078
  'Data Table: 4973B4
  loc_B93B18: LitI4 1
  loc_B93B1D: FLdPr Me
  loc_B93B20: MemLdStr global_100
  loc_B93B23: AryLock
  loc_B93B26: Ary1LdRf
  loc_B93B27: FStR4 var_8C
  loc_B93B2A: LitVarStr var_9C, "<table height=""780"" width=""725"" border=""0"" background=""l4.jpg"">"
  loc_B93B2F: PopAdLdVar
  loc_B93B30: FLdPr Me
  loc_B93B33: MemLdRfVar from_stack_1.global_60
  loc_B93B36: LdPrVar
  loc_B93B38: LateMemCall
  loc_B93B3E: LitVarStr var_9C, "  <tr valign=""top""><td>"
  loc_B93B43: PopAdLdVar
  loc_B93B44: FLdPr Me
  loc_B93B47: MemLdRfVar from_stack_1.global_60
  loc_B93B4A: LdPrVar
  loc_B93B4C: LateMemCall
  loc_B93B52: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" cellpadding=""0"" cellspacing=""0"" class=""Normal"">"
  loc_B93B57: PopAdLdVar
  loc_B93B58: FLdPr Me
  loc_B93B5B: MemLdRfVar from_stack_1.global_60
  loc_B93B5E: LdPrVar
  loc_B93B60: LateMemCall
  loc_B93B66: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B93B6B: PopAdLdVar
  loc_B93B6C: FLdPr Me
  loc_B93B6F: MemLdRfVar from_stack_1.global_60
  loc_B93B72: LdPrVar
  loc_B93B74: LateMemCall
  loc_B93B7A: LitStr "    <td height=""63"" colspan=""6"" align=""center"" valign=""middle"" class=""DatosMunicipio""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B93B7D: LitI2_Byte &H5F
  loc_B93B7F: CStrUI1
  loc_B93B81: FStStrNoPop var_B0
  loc_B93B84: ConcatStr
  loc_B93B85: FStStrNoPop var_B4
  loc_B93B88: LitStr """ height="""
  loc_B93B8B: ConcatStr
  loc_B93B8C: FStStrNoPop var_B8
  loc_B93B8F: LitI2_Byte &H3C
  loc_B93B91: CStrUI1
  loc_B93B93: FStStrNoPop var_BC
  loc_B93B96: ConcatStr
  loc_B93B97: FStStrNoPop var_C0
  loc_B93B9A: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_B93B9D: ConcatStr
  loc_B93B9E: FStStrNoPop var_C4
  loc_B93BA1: LitI2_Byte &H3C
  loc_B93BA3: CStrUI1
  loc_B93BA5: FStStrNoPop var_C8
  loc_B93BA8: ConcatStr
  loc_B93BA9: FStStrNoPop var_CC
  loc_B93BAC: LitStr """ height="""
  loc_B93BAF: ConcatStr
  loc_B93BB0: FStStrNoPop var_D0
  loc_B93BB3: LitI2_Byte &H3C
  loc_B93BB5: CStrUI1
  loc_B93BB7: FStStrNoPop var_D4
  loc_B93BBA: ConcatStr
  loc_B93BBB: FStStrNoPop var_D8
  loc_B93BBE: LitStr """ align=""right"" /><span class=""NombreMunicipio"">"
  loc_B93BC1: ConcatStr
  loc_B93BC2: FStStrNoPop var_DC
  loc_B93BC5: LitStr "Municipalidad de Guaymallén"
  loc_B93BC8: ConcatStr
  loc_B93BC9: FStStrNoPop var_E0
  loc_B93BCC: LitStr "</span><br />"
  loc_B93BCF: ConcatStr
  loc_B93BD0: CVarStr var_F0
  loc_B93BD3: PopAdLdVar
  loc_B93BD4: FLdPr Me
  loc_B93BD7: MemLdRfVar from_stack_1.global_60
  loc_B93BDA: LdPrVar
  loc_B93BDC: LateMemCall
  loc_B93BE2: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_B93BFF: FFree1Var var_F0 = ""
  loc_B93C02: LitStr "    "
  loc_B93C05: LitStr "Dirección de Rentas"
  loc_B93C08: ConcatStr
  loc_B93C09: FStStrNoPop var_B0
  loc_B93C0C: LitStr "<br>"
  loc_B93C0F: ConcatStr
  loc_B93C10: CVarStr var_F0
  loc_B93C13: PopAdLdVar
  loc_B93C14: FLdPr Me
  loc_B93C17: MemLdRfVar from_stack_1.global_60
  loc_B93C1A: LdPrVar
  loc_B93C1C: LateMemCall
  loc_B93C22: FFree1Str var_B0
  loc_B93C25: FFree1Var var_F0 = ""
  loc_B93C28: LitStr "    "
  loc_B93C2B: LitStr "Libertad 720 - Villa Nueva"
  loc_B93C2E: ConcatStr
  loc_B93C2F: FStStrNoPop var_B0
  loc_B93C32: LitStr "<br>"
  loc_B93C35: ConcatStr
  loc_B93C36: CVarStr var_F0
  loc_B93C39: PopAdLdVar
  loc_B93C3A: FLdPr Me
  loc_B93C3D: MemLdRfVar from_stack_1.global_60
  loc_B93C40: LdPrVar
  loc_B93C42: LateMemCall
  loc_B93C48: FFree1Str var_B0
  loc_B93C4B: FFree1Var var_F0 = ""
  loc_B93C4E: LitStr "    "
  loc_B93C51: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_B93C54: ConcatStr
  loc_B93C55: FStStrNoPop var_B0
  loc_B93C58: LitStr "<br>"
  loc_B93C5B: ConcatStr
  loc_B93C5C: CVarStr var_F0
  loc_B93C5F: PopAdLdVar
  loc_B93C60: FLdPr Me
  loc_B93C63: MemLdRfVar from_stack_1.global_60
  loc_B93C66: LdPrVar
  loc_B93C68: LateMemCall
  loc_B93C6E: FFree1Str var_B0
  loc_B93C71: FFree1Var var_F0 = ""
  loc_B93C74: LitStr "    "
  loc_B93C77: LitStr "C.U.I.T.: "
  loc_B93C7A: ConcatStr
  loc_B93C7B: FStStrNoPop var_B0
  loc_B93C7E: LitStr "30-99914707-7"
  loc_B93C81: ConcatStr
  loc_B93C82: FStStrNoPop var_B4
  loc_B93C85: LitStr "<br>"
  loc_B93C88: ConcatStr
  loc_B93C89: CVarStr var_F0
  loc_B93C8C: PopAdLdVar
  loc_B93C8D: FLdPr Me
  loc_B93C90: MemLdRfVar from_stack_1.global_60
  loc_B93C93: LdPrVar
  loc_B93C95: LateMemCall
  loc_B93C9B: FFreeStr var_B0 = ""
  loc_B93CA2: FFree1Var var_F0 = ""
  loc_B93CA5: LitStr " <div align=""right""><em>"
  loc_B93CA8: LitStr "&nbsp;"
  loc_B93CAB: ConcatStr
  loc_B93CAC: FStStrNoPop var_B0
  loc_B93CAF: LitStr "</em></div></td>"
  loc_B93CB2: ConcatStr
  loc_B93CB3: CVarStr var_F0
  loc_B93CB6: PopAdLdVar
  loc_B93CB7: FLdPr Me
  loc_B93CBA: MemLdRfVar from_stack_1.global_60
  loc_B93CBD: LdPrVar
  loc_B93CBF: LateMemCall
  loc_B93CC5: FFree1Str var_B0
  loc_B93CC8: FFree1Var var_F0 = ""
  loc_B93CCB: LitVarStr var_9C, "  </tr>"
  loc_B93CD0: PopAdLdVar
  loc_B93CD1: FLdPr Me
  loc_B93CD4: MemLdRfVar from_stack_1.global_60
  loc_B93CD7: LdPrVar
  loc_B93CD9: LateMemCall
  loc_B93CDF: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B93CE4: PopAdLdVar
  loc_B93CE5: FLdPr Me
  loc_B93CE8: MemLdRfVar from_stack_1.global_60
  loc_B93CEB: LdPrVar
  loc_B93CED: LateMemCall
  loc_B93CF3: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Concepto:</strong></td>"
  loc_B93CF8: PopAdLdVar
  loc_B93CF9: FLdPr Me
  loc_B93CFC: MemLdRfVar from_stack_1.global_60
  loc_B93CFF: LdPrVar
  loc_B93D01: LateMemCall
  loc_B93D07: LitStr "    <td><strong>REIMPRESIÓN DE FACILIDAD DE PAGO<br>Nº "
  loc_B93D0A: FLdPr Me
  loc_B93D0D: VCallAd Control_ID_CodiFapaMsk
  loc_B93D10: FStAdFunc var_F4
  loc_B93D13: FLdPr var_F4
  loc_B93D16: LateIdLdVar var_F0 DispID_0 0
  loc_B93D1D: CStrVarTmp
  loc_B93D1E: FStStrNoPop var_B0
  loc_B93D21: ConcatStr
  loc_B93D22: FStStrNoPop var_B4
  loc_B93D25: LitStr "</strong></td>"
  loc_B93D28: ConcatStr
  loc_B93D29: CVarStr var_104
  loc_B93D2C: PopAdLdVar
  loc_B93D2D: FLdPr Me
  loc_B93D30: MemLdRfVar from_stack_1.global_60
  loc_B93D33: LdPrVar
  loc_B93D35: LateMemCall
  loc_B93D3B: FFreeStr var_B0 = ""
  loc_B93D42: FFree1Ad var_F4
  loc_B93D45: FFreeVar var_F0 = ""
  loc_B93D4C: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Boleto:</strong></td>"
  loc_B93D51: PopAdLdVar
  loc_B93D52: FLdPr Me
  loc_B93D55: MemLdRfVar from_stack_1.global_60
  loc_B93D58: LdPrVar
  loc_B93D5A: LateMemCall
  loc_B93D60: LitStr "    <td width=""15" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B93D63: LitI4 1
  loc_B93D68: FLdPr Me
  loc_B93D6B: MemLdStr global_104
  loc_B93D6E: Ary1LdPr
  loc_B93D6F: MemLdStr global_8
  loc_B93D72: ConcatStr
  loc_B93D73: FStStrNoPop var_B0
  loc_B93D76: LitStr "/"
  loc_B93D79: ConcatStr
  loc_B93D7A: FStStrNoPop var_B4
  loc_B93D7D: LitI4 1
  loc_B93D82: FLdPr Me
  loc_B93D85: MemLdStr global_104
  loc_B93D88: Ary1LdPr
  loc_B93D89: MemLdStr global_12
  loc_B93D8C: ConcatStr
  loc_B93D8D: FStStrNoPop var_B8
  loc_B93D90: LitStr "</strong></td>"
  loc_B93D93: ConcatStr
  loc_B93D94: CVarStr var_F0
  loc_B93D97: PopAdLdVar
  loc_B93D98: FLdPr Me
  loc_B93D9B: MemLdRfVar from_stack_1.global_60
  loc_B93D9E: LdPrVar
  loc_B93DA0: LateMemCall
  loc_B93DA6: FFreeStr var_B0 = "": var_B4 = ""
  loc_B93DAF: FFree1Var var_F0 = ""
  loc_B93DB2: LitVarStr var_9C, "    <td width=""12" & Chr(37) & """ align=""right"" class=""Encabezado""><strong>Vencimiento:</strong></td>"
  loc_B93DB7: PopAdLdVar
  loc_B93DB8: FLdPr Me
  loc_B93DBB: MemLdRfVar from_stack_1.global_60
  loc_B93DBE: LdPrVar
  loc_B93DC0: LateMemCall
  loc_B93DC6: LitStr "    <td width=""16" & Chr(37) & """ align=""center"" class=""Resaltado""><strong>"
  loc_B93DC9: LitI4 1
  loc_B93DCE: FLdPr Me
  loc_B93DD1: MemLdStr global_104
  loc_B93DD4: Ary1LdPr
  loc_B93DD5: MemLdStr global_16
  loc_B93DD8: ConcatStr
  loc_B93DD9: FStStrNoPop var_B0
  loc_B93DDC: LitStr "</strong></td>"
  loc_B93DDF: ConcatStr
  loc_B93DE0: CVarStr var_F0
  loc_B93DE3: PopAdLdVar
  loc_B93DE4: FLdPr Me
  loc_B93DE7: MemLdRfVar from_stack_1.global_60
  loc_B93DEA: LdPrVar
  loc_B93DEC: LateMemCall
  loc_B93DF2: FFree1Str var_B0
  loc_B93DF5: FFree1Var var_F0 = ""
  loc_B93DF8: LitVarStr var_9C, "  </tr>"
  loc_B93DFD: PopAdLdVar
  loc_B93DFE: FLdPr Me
  loc_B93E01: MemLdRfVar from_stack_1.global_60
  loc_B93E04: LdPrVar
  loc_B93E06: LateMemCall
  loc_B93E0C: LitVarStr var_9C, "  <tr valign=""top"">"
  loc_B93E11: PopAdLdVar
  loc_B93E12: FLdPr Me
  loc_B93E15: MemLdRfVar from_stack_1.global_60
  loc_B93E18: LdPrVar
  loc_B93E1A: LateMemCall
  loc_B93E20: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Contribuyente:</strong></td>"
  loc_B93E25: PopAdLdVar
  loc_B93E26: FLdPr Me
  loc_B93E29: MemLdRfVar from_stack_1.global_60
  loc_B93E2C: LdPrVar
  loc_B93E2E: LateMemCall
  loc_B93E34: LitStr "    <td><strong>"
  loc_B93E37: LitI4 1
  loc_B93E3C: FLdPr Me
  loc_B93E3F: MemLdStr global_100
  loc_B93E42: Ary1LdPr
  loc_B93E43: MemLdStr global_4
  loc_B93E46: ConcatStr
  loc_B93E47: FStStrNoPop var_B0
  loc_B93E4A: LitStr " "
  loc_B93E4D: ConcatStr
  loc_B93E4E: FStStrNoPop var_B4
  loc_B93E51: LitI4 1
  loc_B93E56: FLdPr Me
  loc_B93E59: MemLdStr global_100
  loc_B93E5C: Ary1LdPr
  loc_B93E5D: MemLdStr global_0
  loc_B93E60: ConcatStr
  loc_B93E61: FStStrNoPop var_B8
  loc_B93E64: LitStr "<br>"
  loc_B93E67: ConcatStr
  loc_B93E68: CVarStr var_F0
  loc_B93E6B: PopAdLdVar
  loc_B93E6C: FLdPr Me
  loc_B93E6F: MemLdRfVar from_stack_1.global_60
  loc_B93E72: LdPrVar
  loc_B93E74: LateMemCall
  loc_B93E7A: FFreeStr var_B0 = "": var_B4 = ""
  loc_B93E83: FFree1Var var_F0 = ""
  loc_B93E86: LitStr "      "
  loc_B93E89: LitI4 1
  loc_B93E8E: FLdPr Me
  loc_B93E91: MemLdStr global_100
  loc_B93E94: Ary1LdPr
  loc_B93E95: MemLdStr global_8
  loc_B93E98: ConcatStr
  loc_B93E99: FStStrNoPop var_B0
  loc_B93E9C: LitStr " "
  loc_B93E9F: ConcatStr
  loc_B93EA0: FStStrNoPop var_B4
  loc_B93EA3: LitI4 1
  loc_B93EA8: FLdPr Me
  loc_B93EAB: MemLdStr global_100
  loc_B93EAE: Ary1LdPr
  loc_B93EAF: MemLdStr global_12
  loc_B93EB2: ConcatStr
  loc_B93EB3: FStStrNoPop var_B8
  loc_B93EB6: LitStr "<br>"
  loc_B93EB9: ConcatStr
  loc_B93EBA: FStStrNoPop var_BC
  loc_B93EBD: LitI4 1
  loc_B93EC2: FLdPr Me
  loc_B93EC5: MemLdStr global_100
  loc_B93EC8: Ary1LdPr
  loc_B93EC9: MemLdStr global_28
  loc_B93ECC: ConcatStr
  loc_B93ECD: FStStrNoPop var_C0
  loc_B93ED0: LitStr " ("
  loc_B93ED3: ConcatStr
  loc_B93ED4: FStStrNoPop var_C4
  loc_B93ED7: LitI4 1
  loc_B93EDC: FLdPr Me
  loc_B93EDF: MemLdStr global_100
  loc_B93EE2: Ary1LdPr
  loc_B93EE3: MemLdStr global_32
  loc_B93EE6: ConcatStr
  loc_B93EE7: FStStrNoPop var_C8
  loc_B93EEA: LitStr ")</strong></td>"
  loc_B93EED: ConcatStr
  loc_B93EEE: CVarStr var_F0
  loc_B93EF1: PopAdLdVar
  loc_B93EF2: FLdPr Me
  loc_B93EF5: MemLdRfVar from_stack_1.global_60
  loc_B93EF8: LdPrVar
  loc_B93EFA: LateMemCall
  loc_B93F00: FFreeStr var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_B93F11: FFree1Var var_F0 = ""
  loc_B93F14: LitVarStr var_9C, "    <td align=""right"" class=""Encabezado""><strong>Datos del Objeto Imponible: </strong></td>"
  loc_B93F19: PopAdLdVar
  loc_B93F1A: FLdPr Me
  loc_B93F1D: MemLdRfVar from_stack_1.global_60
  loc_B93F20: LdPrVar
  loc_B93F22: LateMemCall
  loc_B93F28: LitStr "    <td colspan=""3""><strong>"
  loc_B93F2B: FLdPr Me
  loc_B93F2E: MemLdStr global_88
  loc_B93F31: ConcatStr
  loc_B93F32: FStStrNoPop var_B0
  loc_B93F35: LitStr " - Cuenta: "
  loc_B93F38: ConcatStr
  loc_B93F39: FStStrNoPop var_B4
  loc_B93F3C: FLdPr Me
  loc_B93F3F: MemLdStr global_92
  loc_B93F42: ConcatStr
  loc_B93F43: FStStrNoPop var_B8
  loc_B93F46: LitStr "</strong></td>"
  loc_B93F49: ConcatStr
  loc_B93F4A: CVarStr var_F0
  loc_B93F4D: PopAdLdVar
  loc_B93F4E: FLdPr Me
  loc_B93F51: MemLdRfVar from_stack_1.global_60
  loc_B93F54: LdPrVar
  loc_B93F56: LateMemCall
  loc_B93F5C: FFreeStr var_B0 = "": var_B4 = ""
  loc_B93F65: FFree1Var var_F0 = ""
  loc_B93F68: LitVarStr var_9C, "  </tr>"
  loc_B93F6D: PopAdLdVar
  loc_B93F6E: FLdPr Me
  loc_B93F71: MemLdRfVar from_stack_1.global_60
  loc_B93F74: LdPrVar
  loc_B93F76: LateMemCall
  loc_B93F7C: LitVarStr var_9C, "</table>"
  loc_B93F81: PopAdLdVar
  loc_B93F82: FLdPr Me
  loc_B93F85: MemLdRfVar from_stack_1.global_60
  loc_B93F88: LdPrVar
  loc_B93F8A: LateMemCall
  loc_B93F90: LitVarStr var_9C, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_B93F95: PopAdLdVar
  loc_B93F96: FLdPr Me
  loc_B93F99: MemLdRfVar from_stack_1.global_60
  loc_B93F9C: LdPrVar
  loc_B93F9E: LateMemCall
  loc_B93FA4: LitVarStr var_9C, "  <tr align=""center"" class=""Encabezado"">"
  loc_B93FA9: PopAdLdVar
  loc_B93FAA: FLdPr Me
  loc_B93FAD: MemLdRfVar from_stack_1.global_60
  loc_B93FB0: LdPrVar
  loc_B93FB2: LateMemCall
  loc_B93FB8: LitVarStr var_9C, "    <td colspan=""3"">DESCRIPCI&Oacute;N</td>"
  loc_B93FBD: PopAdLdVar
  loc_B93FBE: FLdPr Me
  loc_B93FC1: MemLdRfVar from_stack_1.global_60
  loc_B93FC4: LdPrVar
  loc_B93FC6: LateMemCall
  loc_B93FCC: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_B93FD1: PopAdLdVar
  loc_B93FD2: FLdPr Me
  loc_B93FD5: MemLdRfVar from_stack_1.global_60
  loc_B93FD8: LdPrVar
  loc_B93FDA: LateMemCall
  loc_B93FE0: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DESC. CAPI.</td>"
  loc_B93FE5: PopAdLdVar
  loc_B93FE6: FLdPr Me
  loc_B93FE9: MemLdRfVar from_stack_1.global_60
  loc_B93FEC: LdPrVar
  loc_B93FEE: LateMemCall
  loc_B93FF4: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_B93FF9: PopAdLdVar
  loc_B93FFA: FLdPr Me
  loc_B93FFD: MemLdRfVar from_stack_1.global_60
  loc_B94000: LdPrVar
  loc_B94002: LateMemCall
  loc_B94008: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>DESC. RECA.</td>"
  loc_B9400D: PopAdLdVar
  loc_B9400E: FLdPr Me
  loc_B94011: MemLdRfVar from_stack_1.global_60
  loc_B94014: LdPrVar
  loc_B94016: LateMemCall
  loc_B9401C: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_B94021: PopAdLdVar
  loc_B94022: FLdPr Me
  loc_B94025: MemLdRfVar from_stack_1.global_60
  loc_B94028: LdPrVar
  loc_B9402A: LateMemCall
  loc_B94030: LitVarStr var_9C, "    <td width=""10" & Chr(37) & """>APREMIO</td>"
  loc_B94035: PopAdLdVar
  loc_B94036: FLdPr Me
  loc_B94039: MemLdRfVar from_stack_1.global_60
  loc_B9403C: LdPrVar
  loc_B9403E: LateMemCall
  loc_B94044: LitVarStr var_9C, "    <td width=""14" & Chr(37) & """>TOTAL</td>"
  loc_B94049: PopAdLdVar
  loc_B9404A: FLdPr Me
  loc_B9404D: MemLdRfVar from_stack_1.global_60
  loc_B94050: LdPrVar
  loc_B94052: LateMemCall
  loc_B94058: LitVarStr var_9C, "  </tr>"
  loc_B9405D: PopAdLdVar
  loc_B9405E: FLdPr Me
  loc_B94061: MemLdRfVar from_stack_1.global_60
  loc_B94064: LdPrVar
  loc_B94066: LateMemCall
  loc_B9406C: LitI4 0
  loc_B94071: FStR4 var_8C
  loc_B94074: AryUnlock
  loc_B94077: ExitProcHresult
End Function

Private Function Proc_292_21_BA9FB0() 'BA9FB0
  'Data Table: 4973B4
  loc_BA997C: LitI2_Byte 1
  loc_BA997E: FLdPr Me
  loc_BA9981: MemLdRfVar from_stack_1.global_118
  loc_BA9984: FLdPr Me
  loc_BA9987: MemLdI2 global_114
  loc_BA998A: CI4UI1
  loc_BA998B: LitI4 1
  loc_BA9990: FLdPr Me
  loc_BA9993: MemLdStr global_100
  loc_BA9996: Ary1LdPr
  loc_BA9997: MemLdStr global_64
  loc_BA999A: Ary1LdPr
  loc_BA999B: MemLdStr global_0
  loc_BA999E: LitI2_Byte 1
  loc_BA99A0: FnUBound
  loc_BA99A2: CI2I4
  loc_BA99A3: ForI2 var_88
  loc_BA99A9: LitVarStr var_98, "    <tr valign=""top"" class=""LineaDato"">"
  loc_BA99AE: PopAdLdVar
  loc_BA99AF: FLdPr Me
  loc_BA99B2: MemLdRfVar from_stack_1.global_60
  loc_BA99B5: LdPrVar
  loc_BA99B7: LateMemCall
  loc_BA99BD: FLdPr Me
  loc_BA99C0: MemLdI2 global_118
  loc_BA99C3: CI4UI1
  loc_BA99C4: FLdPr Me
  loc_BA99C7: MemLdI2 global_114
  loc_BA99CA: CI4UI1
  loc_BA99CB: LitI4 1
  loc_BA99D0: FLdPr Me
  loc_BA99D3: MemLdStr global_100
  loc_BA99D6: AryLock
  loc_BA99D9: Ary1LdPr
  loc_BA99DA: MemLdStr global_64
  loc_BA99DD: AryLock
  loc_BA99E0: Ary1LdPr
  loc_BA99E1: MemLdStr global_0
  loc_BA99E4: AryLock
  loc_BA99E7: Ary1LdRf
  loc_BA99E8: FStR4 var_B8
  loc_BA99EB: LitStr "<td colspan=""3"" valign=""top"">Cuota: "
  loc_BA99EE: FMemLdR4 var_B8(0)
  loc_BA99F3: ConcatStr
  loc_BA99F4: FStStrNoPop var_BC
  loc_BA99F7: LitStr "/"
  loc_BA99FA: ConcatStr
  loc_BA99FB: FStStrNoPop var_C0
  loc_BA99FE: FLdPr Me
  loc_BA9A01: MemLdStr global_108
  loc_BA9A04: ConcatStr
  loc_BA9A05: FStStrNoPop var_C4
  loc_BA9A08: LitStr "</td>"
  loc_BA9A0B: ConcatStr
  loc_BA9A0C: CVarStr var_D4
  loc_BA9A0F: PopAdLdVar
  loc_BA9A10: FLdPr Me
  loc_BA9A13: MemLdRfVar from_stack_1.global_60
  loc_BA9A16: LdPrVar
  loc_BA9A18: LateMemCall
  loc_BA9A1E: FFreeStr var_BC = "": var_C0 = ""
  loc_BA9A27: FFree1Var var_D4 = ""
  loc_BA9A2A: FMemLdRf 0
  loc_BA9A2F: CVarRef
  loc_BA9A34: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9A39: FStVarCopyObj var_D4
  loc_BA9A3C: FLdRfVar var_D4
  loc_BA9A3F: FMemLdR4 var_B8(4)
  loc_BA9A44: LitStr "0,00"
  loc_BA9A47: EqStr
  loc_BA9A49: CVarBoolI2 var_98
  loc_BA9A4D: FLdRfVar var_F4
  loc_BA9A50: ImpAdCallFPR4  = IIf(, , )
  loc_BA9A55: LitStr vbNullString
  loc_BA9A58: LitI2_Byte 0
  loc_BA9A5A: LitI2_Byte 0
  loc_BA9A5C: LitI2_Byte 0
  loc_BA9A5E: LitStr "right"
  loc_BA9A61: FLdRfVar var_F4
  loc_BA9A64: CStrVarVal var_BC
  loc_BA9A68: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9A6D: CVarStr var_104
  loc_BA9A70: PopAdLdVar
  loc_BA9A71: FLdPr Me
  loc_BA9A74: MemLdRfVar from_stack_1.global_60
  loc_BA9A77: LdPrVar
  loc_BA9A79: LateMemCall
  loc_BA9A7F: FFree1Str var_BC
  loc_BA9A82: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9A8D: FMemLdRf 0
  loc_BA9A92: CVarRef
  loc_BA9A97: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9A9C: FStVarCopyObj var_D4
  loc_BA9A9F: FLdRfVar var_D4
  loc_BA9AA2: FMemLdR4 var_B8(8)
  loc_BA9AA7: LitStr "0,00"
  loc_BA9AAA: EqStr
  loc_BA9AAC: CVarBoolI2 var_98
  loc_BA9AB0: FLdRfVar var_F4
  loc_BA9AB3: ImpAdCallFPR4  = IIf(, , )
  loc_BA9AB8: LitStr vbNullString
  loc_BA9ABB: LitI2_Byte 0
  loc_BA9ABD: LitI2_Byte 0
  loc_BA9ABF: LitI2_Byte 0
  loc_BA9AC1: LitStr "right"
  loc_BA9AC4: FLdRfVar var_F4
  loc_BA9AC7: CStrVarVal var_BC
  loc_BA9ACB: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9AD0: CVarStr var_104
  loc_BA9AD3: PopAdLdVar
  loc_BA9AD4: FLdPr Me
  loc_BA9AD7: MemLdRfVar from_stack_1.global_60
  loc_BA9ADA: LdPrVar
  loc_BA9ADC: LateMemCall
  loc_BA9AE2: FFree1Str var_BC
  loc_BA9AE5: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9AF0: FMemLdRf 0
  loc_BA9AF5: CVarRef
  loc_BA9AFA: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9AFF: FStVarCopyObj var_D4
  loc_BA9B02: FLdRfVar var_D4
  loc_BA9B05: FMemLdR4 var_B8(12)
  loc_BA9B0A: LitStr "0,00"
  loc_BA9B0D: EqStr
  loc_BA9B0F: CVarBoolI2 var_98
  loc_BA9B13: FLdRfVar var_F4
  loc_BA9B16: ImpAdCallFPR4  = IIf(, , )
  loc_BA9B1B: LitStr vbNullString
  loc_BA9B1E: LitI2_Byte 0
  loc_BA9B20: LitI2_Byte 0
  loc_BA9B22: LitI2_Byte 0
  loc_BA9B24: LitStr "right"
  loc_BA9B27: FLdRfVar var_F4
  loc_BA9B2A: CStrVarVal var_BC
  loc_BA9B2E: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9B33: CVarStr var_104
  loc_BA9B36: PopAdLdVar
  loc_BA9B37: FLdPr Me
  loc_BA9B3A: MemLdRfVar from_stack_1.global_60
  loc_BA9B3D: LdPrVar
  loc_BA9B3F: LateMemCall
  loc_BA9B45: FFree1Str var_BC
  loc_BA9B48: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9B53: FMemLdRf 0
  loc_BA9B58: CVarRef
  loc_BA9B5D: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9B62: FStVarCopyObj var_D4
  loc_BA9B65: FLdRfVar var_D4
  loc_BA9B68: FMemLdR4 var_B8(16)
  loc_BA9B6D: LitStr "0,00"
  loc_BA9B70: EqStr
  loc_BA9B72: CVarBoolI2 var_98
  loc_BA9B76: FLdRfVar var_F4
  loc_BA9B79: ImpAdCallFPR4  = IIf(, , )
  loc_BA9B7E: LitStr vbNullString
  loc_BA9B81: LitI2_Byte 0
  loc_BA9B83: LitI2_Byte 0
  loc_BA9B85: LitI2_Byte 0
  loc_BA9B87: LitStr "right"
  loc_BA9B8A: FLdRfVar var_F4
  loc_BA9B8D: CStrVarVal var_BC
  loc_BA9B91: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9B96: CVarStr var_104
  loc_BA9B99: PopAdLdVar
  loc_BA9B9A: FLdPr Me
  loc_BA9B9D: MemLdRfVar from_stack_1.global_60
  loc_BA9BA0: LdPrVar
  loc_BA9BA2: LateMemCall
  loc_BA9BA8: FFree1Str var_BC
  loc_BA9BAB: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9BB6: FMemLdRf 0
  loc_BA9BBB: CVarRef
  loc_BA9BC0: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9BC5: FStVarCopyObj var_D4
  loc_BA9BC8: FLdRfVar var_D4
  loc_BA9BCB: FMemLdR4 var_B8(20)
  loc_BA9BD0: LitStr "0,00"
  loc_BA9BD3: EqStr
  loc_BA9BD5: CVarBoolI2 var_98
  loc_BA9BD9: FLdRfVar var_F4
  loc_BA9BDC: ImpAdCallFPR4  = IIf(, , )
  loc_BA9BE1: LitStr vbNullString
  loc_BA9BE4: LitI2_Byte 0
  loc_BA9BE6: LitI2_Byte 0
  loc_BA9BE8: LitI2_Byte 0
  loc_BA9BEA: LitStr "right"
  loc_BA9BED: FLdRfVar var_F4
  loc_BA9BF0: CStrVarVal var_BC
  loc_BA9BF4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9BF9: CVarStr var_104
  loc_BA9BFC: PopAdLdVar
  loc_BA9BFD: FLdPr Me
  loc_BA9C00: MemLdRfVar from_stack_1.global_60
  loc_BA9C03: LdPrVar
  loc_BA9C05: LateMemCall
  loc_BA9C0B: FFree1Str var_BC
  loc_BA9C0E: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9C19: FMemLdRf 0
  loc_BA9C1E: CVarRef
  loc_BA9C23: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9C28: FStVarCopyObj var_D4
  loc_BA9C2B: FLdRfVar var_D4
  loc_BA9C2E: FMemLdR4 var_B8(24)
  loc_BA9C33: LitStr "0,00"
  loc_BA9C36: EqStr
  loc_BA9C38: CVarBoolI2 var_98
  loc_BA9C3C: FLdRfVar var_F4
  loc_BA9C3F: ImpAdCallFPR4  = IIf(, , )
  loc_BA9C44: LitStr vbNullString
  loc_BA9C47: LitI2_Byte 0
  loc_BA9C49: LitI2_Byte 0
  loc_BA9C4B: LitI2_Byte 0
  loc_BA9C4D: LitStr "right"
  loc_BA9C50: FLdRfVar var_F4
  loc_BA9C53: CStrVarVal var_BC
  loc_BA9C57: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9C5C: CVarStr var_104
  loc_BA9C5F: PopAdLdVar
  loc_BA9C60: FLdPr Me
  loc_BA9C63: MemLdRfVar from_stack_1.global_60
  loc_BA9C66: LdPrVar
  loc_BA9C68: LateMemCall
  loc_BA9C6E: FFree1Str var_BC
  loc_BA9C71: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9C7C: FMemLdRf 0
  loc_BA9C81: CVarRef
  loc_BA9C86: LitVarStr var_A8, "<hr align=""center"" width=""10" & Chr(37) & """>"
  loc_BA9C8B: FStVarCopyObj var_D4
  loc_BA9C8E: FLdRfVar var_D4
  loc_BA9C91: FMemLdR4 var_B8(28)
  loc_BA9C96: LitStr "0,00"
  loc_BA9C99: EqStr
  loc_BA9C9B: CVarBoolI2 var_98
  loc_BA9C9F: FLdRfVar var_F4
  loc_BA9CA2: ImpAdCallFPR4  = IIf(, , )
  loc_BA9CA7: LitStr vbNullString
  loc_BA9CAA: LitI2_Byte 0
  loc_BA9CAC: LitI2_Byte 0
  loc_BA9CAE: LitI2_Byte 0
  loc_BA9CB0: LitStr "right"
  loc_BA9CB3: FLdRfVar var_F4
  loc_BA9CB6: CStrVarVal var_BC
  loc_BA9CBA: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_BA9CBF: CVarStr var_104
  loc_BA9CC2: PopAdLdVar
  loc_BA9CC3: FLdPr Me
  loc_BA9CC6: MemLdRfVar from_stack_1.global_60
  loc_BA9CC9: LdPrVar
  loc_BA9CCB: LateMemCall
  loc_BA9CD1: FFree1Str var_BC
  loc_BA9CD4: FFreeVar var_98 = "": var_D4 = "": var_F4 = ""
  loc_BA9CDF: LitI4 0
  loc_BA9CE4: FStR4 var_B8
  loc_BA9CE7: AryUnlock
  loc_BA9CEA: AryUnlock
  loc_BA9CED: AryUnlock
  loc_BA9CF0: LitVarStr var_98, "     </tr>"
  loc_BA9CF5: PopAdLdVar
  loc_BA9CF6: FLdPr Me
  loc_BA9CF9: MemLdRfVar from_stack_1.global_60
  loc_BA9CFC: LdPrVar
  loc_BA9CFE: LateMemCall
  loc_BA9D04: FLdPr Me
  loc_BA9D07: MemLdRfVar from_stack_1.global_118
  loc_BA9D0A: NextI2 var_88, loc_BA99A9
  loc_BA9D0F: FLdPr Me
  loc_BA9D12: MemLdI2 global_114
  loc_BA9D15: CI4UI1
  loc_BA9D16: LitI4 1
  loc_BA9D1B: FLdPr Me
  loc_BA9D1E: MemLdStr global_100
  loc_BA9D21: Ary1LdPr
  loc_BA9D22: MemLdStr global_64
  loc_BA9D25: LitI2_Byte 1
  loc_BA9D27: FnUBound
  loc_BA9D29: LtI4
  loc_BA9D2A: BranchF loc_BA9FAC
  loc_BA9D2D: LitVarStr var_98, "</table><p><hr></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>"
  loc_BA9D32: PopAdLdVar
  loc_BA9D33: FLdPr Me
  loc_BA9D36: MemLdRfVar from_stack_1.global_60
  loc_BA9D39: LdPrVar
  loc_BA9D3B: LateMemCall
  loc_BA9D41: LitVarStr var_98, "<table width=""100" & Chr(37) & """ border=""1"" cellspacing=""0"" class=""Normal"">"
  loc_BA9D46: PopAdLdVar
  loc_BA9D47: FLdPr Me
  loc_BA9D4A: MemLdRfVar from_stack_1.global_60
  loc_BA9D4D: LdPrVar
  loc_BA9D4F: LateMemCall
  loc_BA9D55: LitVarStr var_98, "  <tr align=""center"" class=""Encabezado"">"
  loc_BA9D5A: PopAdLdVar
  loc_BA9D5B: FLdPr Me
  loc_BA9D5E: MemLdRfVar from_stack_1.global_60
  loc_BA9D61: LdPrVar
  loc_BA9D63: LateMemCall
  loc_BA9D69: LitStr "    <td rowspan=""2"">SUBTOTALES HOJA "
  loc_BA9D6C: FLdPr Me
  loc_BA9D6F: MemLdI2 global_114
  loc_BA9D72: CStrUI1
  loc_BA9D74: FStStrNoPop var_BC
  loc_BA9D77: ConcatStr
  loc_BA9D78: FStStrNoPop var_C0
  loc_BA9D7B: LitStr "</td>"
  loc_BA9D7E: ConcatStr
  loc_BA9D7F: CVarStr var_D4
  loc_BA9D82: PopAdLdVar
  loc_BA9D83: FLdPr Me
  loc_BA9D86: MemLdRfVar from_stack_1.global_60
  loc_BA9D89: LdPrVar
  loc_BA9D8B: LateMemCall
  loc_BA9D91: FFreeStr var_BC = ""
  loc_BA9D98: FFree1Var var_D4 = ""
  loc_BA9D9B: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>DERECHO</td>"
  loc_BA9DA0: PopAdLdVar
  loc_BA9DA1: FLdPr Me
  loc_BA9DA4: MemLdRfVar from_stack_1.global_60
  loc_BA9DA7: LdPrVar
  loc_BA9DA9: LateMemCall
  loc_BA9DAF: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>DESC. CAPI.</td>"
  loc_BA9DB4: PopAdLdVar
  loc_BA9DB5: FLdPr Me
  loc_BA9DB8: MemLdRfVar from_stack_1.global_60
  loc_BA9DBB: LdPrVar
  loc_BA9DBD: LateMemCall
  loc_BA9DC3: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>RECARGO</td>"
  loc_BA9DC8: PopAdLdVar
  loc_BA9DC9: FLdPr Me
  loc_BA9DCC: MemLdRfVar from_stack_1.global_60
  loc_BA9DCF: LdPrVar
  loc_BA9DD1: LateMemCall
  loc_BA9DD7: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>DESC. RECA.</td>"
  loc_BA9DDC: PopAdLdVar
  loc_BA9DDD: FLdPr Me
  loc_BA9DE0: MemLdRfVar from_stack_1.global_60
  loc_BA9DE3: LdPrVar
  loc_BA9DE5: LateMemCall
  loc_BA9DEB: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>INTER&Eacute;S</td>"
  loc_BA9DF0: PopAdLdVar
  loc_BA9DF1: FLdPr Me
  loc_BA9DF4: MemLdRfVar from_stack_1.global_60
  loc_BA9DF7: LdPrVar
  loc_BA9DF9: LateMemCall
  loc_BA9DFF: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>APREMIO</td>"
  loc_BA9E04: PopAdLdVar
  loc_BA9E05: FLdPr Me
  loc_BA9E08: MemLdRfVar from_stack_1.global_60
  loc_BA9E0B: LdPrVar
  loc_BA9E0D: LateMemCall
  loc_BA9E13: LitVarStr var_98, "    <td width=""10" & Chr(37) & """>TOTAL</td>"
  loc_BA9E18: PopAdLdVar
  loc_BA9E19: FLdPr Me
  loc_BA9E1C: MemLdRfVar from_stack_1.global_60
  loc_BA9E1F: LdPrVar
  loc_BA9E21: LateMemCall
  loc_BA9E27: LitVarStr var_98, "  </tr>"
  loc_BA9E2C: PopAdLdVar
  loc_BA9E2D: FLdPr Me
  loc_BA9E30: MemLdRfVar from_stack_1.global_60
  loc_BA9E33: LdPrVar
  loc_BA9E35: LateMemCall
  loc_BA9E3B: LitVarStr var_98, "  <tr align=""center"" class=""Normal"">"
  loc_BA9E40: PopAdLdVar
  loc_BA9E41: FLdPr Me
  loc_BA9E44: MemLdRfVar from_stack_1.global_60
  loc_BA9E47: LdPrVar
  loc_BA9E49: LateMemCall
  loc_BA9E4F: FLdPr Me
  loc_BA9E52: MemLdI2 global_114
  loc_BA9E55: CI4UI1
  loc_BA9E56: LitI4 1
  loc_BA9E5B: FLdPr Me
  loc_BA9E5E: MemLdStr global_100
  loc_BA9E61: AryLock
  loc_BA9E64: Ary1LdPr
  loc_BA9E65: MemLdStr global_64
  loc_BA9E68: AryLock
  loc_BA9E6B: Ary1LdPr
  loc_BA9E6C: MemLdRfVar from_stack_1.global_4
  loc_BA9E6F: FStR4 var_120
  loc_BA9E72: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9E75: FMemLdR4 var_120(4)
  loc_BA9E7A: ConcatStr
  loc_BA9E7B: FStStrNoPop var_BC
  loc_BA9E7E: LitStr "</td>"
  loc_BA9E81: ConcatStr
  loc_BA9E82: CVarStr var_D4
  loc_BA9E85: PopAdLdVar
  loc_BA9E86: FLdPr Me
  loc_BA9E89: MemLdRfVar from_stack_1.global_60
  loc_BA9E8C: LdPrVar
  loc_BA9E8E: LateMemCall
  loc_BA9E94: FFree1Str var_BC
  loc_BA9E97: FFree1Var var_D4 = ""
  loc_BA9E9A: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9E9D: FMemLdR4 var_120(8)
  loc_BA9EA2: ConcatStr
  loc_BA9EA3: FStStrNoPop var_BC
  loc_BA9EA6: LitStr "</td>"
  loc_BA9EA9: ConcatStr
  loc_BA9EAA: CVarStr var_D4
  loc_BA9EAD: PopAdLdVar
  loc_BA9EAE: FLdPr Me
  loc_BA9EB1: MemLdRfVar from_stack_1.global_60
  loc_BA9EB4: LdPrVar
  loc_BA9EB6: LateMemCall
  loc_BA9EBC: FFree1Str var_BC
  loc_BA9EBF: FFree1Var var_D4 = ""
  loc_BA9EC2: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9EC5: FMemLdR4 var_120(12)
  loc_BA9ECA: ConcatStr
  loc_BA9ECB: FStStrNoPop var_BC
  loc_BA9ECE: LitStr "</td>"
  loc_BA9ED1: ConcatStr
  loc_BA9ED2: CVarStr var_D4
  loc_BA9ED5: PopAdLdVar
  loc_BA9ED6: FLdPr Me
  loc_BA9ED9: MemLdRfVar from_stack_1.global_60
  loc_BA9EDC: LdPrVar
  loc_BA9EDE: LateMemCall
  loc_BA9EE4: FFree1Str var_BC
  loc_BA9EE7: FFree1Var var_D4 = ""
  loc_BA9EEA: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9EED: FMemLdR4 var_120(16)
  loc_BA9EF2: ConcatStr
  loc_BA9EF3: FStStrNoPop var_BC
  loc_BA9EF6: LitStr "</td>"
  loc_BA9EF9: ConcatStr
  loc_BA9EFA: CVarStr var_D4
  loc_BA9EFD: PopAdLdVar
  loc_BA9EFE: FLdPr Me
  loc_BA9F01: MemLdRfVar from_stack_1.global_60
  loc_BA9F04: LdPrVar
  loc_BA9F06: LateMemCall
  loc_BA9F0C: FFree1Str var_BC
  loc_BA9F0F: FFree1Var var_D4 = ""
  loc_BA9F12: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9F15: FMemLdR4 var_120(20)
  loc_BA9F1A: ConcatStr
  loc_BA9F1B: FStStrNoPop var_BC
  loc_BA9F1E: LitStr "</td>"
  loc_BA9F21: ConcatStr
  loc_BA9F22: CVarStr var_D4
  loc_BA9F25: PopAdLdVar
  loc_BA9F26: FLdPr Me
  loc_BA9F29: MemLdRfVar from_stack_1.global_60
  loc_BA9F2C: LdPrVar
  loc_BA9F2E: LateMemCall
  loc_BA9F34: FFree1Str var_BC
  loc_BA9F37: FFree1Var var_D4 = ""
  loc_BA9F3A: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9F3D: FMemLdR4 var_120(24)
  loc_BA9F42: ConcatStr
  loc_BA9F43: FStStrNoPop var_BC
  loc_BA9F46: LitStr "</td>"
  loc_BA9F49: ConcatStr
  loc_BA9F4A: CVarStr var_D4
  loc_BA9F4D: PopAdLdVar
  loc_BA9F4E: FLdPr Me
  loc_BA9F51: MemLdRfVar from_stack_1.global_60
  loc_BA9F54: LdPrVar
  loc_BA9F56: LateMemCall
  loc_BA9F5C: FFree1Str var_BC
  loc_BA9F5F: FFree1Var var_D4 = ""
  loc_BA9F62: LitStr "    <td width=""10" & Chr(37) & """>"
  loc_BA9F65: FMemLdR4 var_120(28)
  loc_BA9F6A: ConcatStr
  loc_BA9F6B: FStStrNoPop var_BC
  loc_BA9F6E: LitStr "</td>"
  loc_BA9F71: ConcatStr
  loc_BA9F72: CVarStr var_D4
  loc_BA9F75: PopAdLdVar
  loc_BA9F76: FLdPr Me
  loc_BA9F79: MemLdRfVar from_stack_1.global_60
  loc_BA9F7C: LdPrVar
  loc_BA9F7E: LateMemCall
  loc_BA9F84: FFree1Str var_BC
  loc_BA9F87: FFree1Var var_D4 = ""
  loc_BA9F8A: LitI4 0
  loc_BA9F8F: FStR4 var_120
  loc_BA9F92: AryUnlock
  loc_BA9F95: AryUnlock
  loc_BA9F98: LitVarStr var_98, "  </tr></table>"
  loc_BA9F9D: PopAdLdVar
  loc_BA9F9E: FLdPr Me
  loc_BA9FA1: MemLdRfVar from_stack_1.global_60
  loc_BA9FA4: LdPrVar
  loc_BA9FA6: LateMemCall
  loc_BA9FAC: ExitProcHresult
  loc_BA9FAD: EqI4
End Function

Private Function Proc_292_22_B1AF94() 'B1AF94
  'Data Table: 4973B4
  loc_B1AD08: LitVarStr var_94, "  <tr>"
  loc_B1AD0D: PopAdLdVar
  loc_B1AD0E: FLdPr Me
  loc_B1AD11: MemLdRfVar from_stack_1.global_60
  loc_B1AD14: LdPrVar
  loc_B1AD16: LateMemCall
  loc_B1AD1C: LitVarStr var_94, "    <td width=""40" & Chr(37) & """>&nbsp;</td>"
  loc_B1AD21: PopAdLdVar
  loc_B1AD22: FLdPr Me
  loc_B1AD25: MemLdRfVar from_stack_1.global_60
  loc_B1AD28: LdPrVar
  loc_B1AD2A: LateMemCall
  loc_B1AD30: LitVarStr var_94, "    <td colspan=""2"" align=""center"" valign=""top"" class=""Encabezado"">TOTALES:</td>"
  loc_B1AD35: PopAdLdVar
  loc_B1AD36: FLdPr Me
  loc_B1AD39: MemLdRfVar from_stack_1.global_60
  loc_B1AD3C: LdPrVar
  loc_B1AD3E: LateMemCall
  loc_B1AD44: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B1AD47: LitI4 1
  loc_B1AD4C: FLdPr Me
  loc_B1AD4F: MemLdStr global_124
  loc_B1AD52: Ary1LdPr
  loc_B1AD53: MemLdStr global_4
  loc_B1AD56: ConcatStr
  loc_B1AD57: FStStrNoPop var_A8
  loc_B1AD5A: LitStr "</td>"
  loc_B1AD5D: ConcatStr
  loc_B1AD5E: CVarStr var_B8
  loc_B1AD61: PopAdLdVar
  loc_B1AD62: FLdPr Me
  loc_B1AD65: MemLdRfVar from_stack_1.global_60
  loc_B1AD68: LdPrVar
  loc_B1AD6A: LateMemCall
  loc_B1AD70: FFree1Str var_A8
  loc_B1AD73: FFree1Var var_B8 = ""
  loc_B1AD76: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B1AD79: LitI4 1
  loc_B1AD7E: FLdPr Me
  loc_B1AD81: MemLdStr global_124
  loc_B1AD84: Ary1LdPr
  loc_B1AD85: MemLdStr global_8
  loc_B1AD88: ConcatStr
  loc_B1AD89: FStStrNoPop var_A8
  loc_B1AD8C: LitStr "</td>"
  loc_B1AD8F: ConcatStr
  loc_B1AD90: CVarStr var_B8
  loc_B1AD93: PopAdLdVar
  loc_B1AD94: FLdPr Me
  loc_B1AD97: MemLdRfVar from_stack_1.global_60
  loc_B1AD9A: LdPrVar
  loc_B1AD9C: LateMemCall
  loc_B1ADA2: FFree1Str var_A8
  loc_B1ADA5: FFree1Var var_B8 = ""
  loc_B1ADA8: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B1ADAB: LitI4 1
  loc_B1ADB0: FLdPr Me
  loc_B1ADB3: MemLdStr global_124
  loc_B1ADB6: Ary1LdPr
  loc_B1ADB7: MemLdStr global_12
  loc_B1ADBA: ConcatStr
  loc_B1ADBB: FStStrNoPop var_A8
  loc_B1ADBE: LitStr "</td>"
  loc_B1ADC1: ConcatStr
  loc_B1ADC2: CVarStr var_B8
  loc_B1ADC5: PopAdLdVar
  loc_B1ADC6: FLdPr Me
  loc_B1ADC9: MemLdRfVar from_stack_1.global_60
  loc_B1ADCC: LdPrVar
  loc_B1ADCE: LateMemCall
  loc_B1ADD4: FFree1Str var_A8
  loc_B1ADD7: FFree1Var var_B8 = ""
  loc_B1ADDA: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B1ADDD: LitI4 1
  loc_B1ADE2: FLdPr Me
  loc_B1ADE5: MemLdStr global_124
  loc_B1ADE8: Ary1LdPr
  loc_B1ADE9: MemLdStr global_16
  loc_B1ADEC: ConcatStr
  loc_B1ADED: FStStrNoPop var_A8
  loc_B1ADF0: LitStr "</td>"
  loc_B1ADF3: ConcatStr
  loc_B1ADF4: CVarStr var_B8
  loc_B1ADF7: PopAdLdVar
  loc_B1ADF8: FLdPr Me
  loc_B1ADFB: MemLdRfVar from_stack_1.global_60
  loc_B1ADFE: LdPrVar
  loc_B1AE00: LateMemCall
  loc_B1AE06: FFree1Str var_A8
  loc_B1AE09: FFree1Var var_B8 = ""
  loc_B1AE0C: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B1AE0F: LitI4 1
  loc_B1AE14: FLdPr Me
  loc_B1AE17: MemLdStr global_124
  loc_B1AE1A: Ary1LdPr
  loc_B1AE1B: MemLdStr global_20
  loc_B1AE1E: ConcatStr
  loc_B1AE1F: FStStrNoPop var_A8
  loc_B1AE22: LitStr "</td>"
  loc_B1AE25: ConcatStr
  loc_B1AE26: CVarStr var_B8
  loc_B1AE29: PopAdLdVar
  loc_B1AE2A: FLdPr Me
  loc_B1AE2D: MemLdRfVar from_stack_1.global_60
  loc_B1AE30: LdPrVar
  loc_B1AE32: LateMemCall
  loc_B1AE38: FFree1Str var_A8
  loc_B1AE3B: FFree1Var var_B8 = ""
  loc_B1AE3E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B1AE41: LitI4 1
  loc_B1AE46: FLdPr Me
  loc_B1AE49: MemLdStr global_124
  loc_B1AE4C: Ary1LdPr
  loc_B1AE4D: MemLdStr global_24
  loc_B1AE50: ConcatStr
  loc_B1AE51: FStStrNoPop var_A8
  loc_B1AE54: LitStr "</td>"
  loc_B1AE57: ConcatStr
  loc_B1AE58: CVarStr var_B8
  loc_B1AE5B: PopAdLdVar
  loc_B1AE5C: FLdPr Me
  loc_B1AE5F: MemLdRfVar from_stack_1.global_60
  loc_B1AE62: LdPrVar
  loc_B1AE64: LateMemCall
  loc_B1AE6A: FFree1Str var_A8
  loc_B1AE6D: FFree1Var var_B8 = ""
  loc_B1AE70: LitStr "    <td align=""right"" class=""Total"">"
  loc_B1AE73: LitI4 1
  loc_B1AE78: FLdPr Me
  loc_B1AE7B: MemLdStr global_124
  loc_B1AE7E: Ary1LdPr
  loc_B1AE7F: MemLdStr global_28
  loc_B1AE82: ConcatStr
  loc_B1AE83: FStStrNoPop var_A8
  loc_B1AE86: LitStr "</td>"
  loc_B1AE89: ConcatStr
  loc_B1AE8A: CVarStr var_B8
  loc_B1AE8D: PopAdLdVar
  loc_B1AE8E: FLdPr Me
  loc_B1AE91: MemLdRfVar from_stack_1.global_60
  loc_B1AE94: LdPrVar
  loc_B1AE96: LateMemCall
  loc_B1AE9C: FFree1Str var_A8
  loc_B1AE9F: FFree1Var var_B8 = ""
  loc_B1AEA2: LitVarStr var_94, "  </tr>"
  loc_B1AEA7: PopAdLdVar
  loc_B1AEA8: FLdPr Me
  loc_B1AEAB: MemLdRfVar from_stack_1.global_60
  loc_B1AEAE: LdPrVar
  loc_B1AEB0: LateMemCall
  loc_B1AEB6: LitVarStr var_94, "  <tr>"
  loc_B1AEBB: PopAdLdVar
  loc_B1AEBC: FLdPr Me
  loc_B1AEBF: MemLdRfVar from_stack_1.global_60
  loc_B1AEC2: LdPrVar
  loc_B1AEC4: LateMemCall
  loc_B1AECA: LitStr "    <td colspan=""10"" valign=""top"">SON PESOS: <strong>"
  loc_B1AECD: LitI4 1
  loc_B1AED2: FLdPr Me
  loc_B1AED5: MemLdStr global_124
  loc_B1AED8: Ary1LdPr
  loc_B1AED9: MemLdStr global_28
  loc_B1AEDC: CR8Str
  loc_B1AEDE: PopFPR8
  loc_B1AEDF: ImpAdCallI2  = Proc_272_28_AB2798()
  loc_B1AEE4: FStStrNoPop var_A8
  loc_B1AEE7: ConcatStr
  loc_B1AEE8: FStStrNoPop var_BC
  loc_B1AEEB: LitStr ".---</strong></td>"
  loc_B1AEEE: ConcatStr
  loc_B1AEEF: CVarStr var_B8
  loc_B1AEF2: PopAdLdVar
  loc_B1AEF3: FLdPr Me
  loc_B1AEF6: MemLdRfVar from_stack_1.global_60
  loc_B1AEF9: LdPrVar
  loc_B1AEFB: LateMemCall
  loc_B1AF01: FFreeStr var_A8 = ""
  loc_B1AF08: FFree1Var var_B8 = ""
  loc_B1AF0B: LitVarStr var_94, "  </tr>"
  loc_B1AF10: PopAdLdVar
  loc_B1AF11: FLdPr Me
  loc_B1AF14: MemLdRfVar from_stack_1.global_60
  loc_B1AF17: LdPrVar
  loc_B1AF19: LateMemCall
  loc_B1AF1F: LitVarStr var_94, "</table>"
  loc_B1AF24: PopAdLdVar
  loc_B1AF25: FLdPr Me
  loc_B1AF28: MemLdRfVar from_stack_1.global_60
  loc_B1AF2B: LdPrVar
  loc_B1AF2D: LateMemCall
  loc_B1AF33: LitStr "<div class=""Normal"" align=""justify"">"
  loc_B1AF36: FLdRfVar var_A8
  loc_B1AF39: FLdRfVar var_C0
  loc_B1AF3C: NewIfNullPr clsparagene
  loc_B1AF3F: from_stack_1v = clsparagene.ObtenerLeyendaBoletos()
  loc_B1AF44: ILdRf var_A8
  loc_B1AF47: ConcatStr
  loc_B1AF48: FStStrNoPop var_BC
  loc_B1AF4B: LitStr "</div>"
  loc_B1AF4E: ConcatStr
  loc_B1AF4F: CVarStr var_B8
  loc_B1AF52: PopAdLdVar
  loc_B1AF53: FLdPr Me
  loc_B1AF56: MemLdRfVar from_stack_1.global_60
  loc_B1AF59: LdPrVar
  loc_B1AF5B: LateMemCall
  loc_B1AF61: FFreeStr var_A8 = ""
  loc_B1AF68: FFree1Var var_B8 = ""
  loc_B1AF6B: LitVarStr var_94, "</td>"
  loc_B1AF70: PopAdLdVar
  loc_B1AF71: FLdPr Me
  loc_B1AF74: MemLdRfVar from_stack_1.global_60
  loc_B1AF77: LdPrVar
  loc_B1AF79: LateMemCall
  loc_B1AF7F: LitVarStr var_94, "</tr></table><hr>"
  loc_B1AF84: PopAdLdVar
  loc_B1AF85: FLdPr Me
  loc_B1AF88: MemLdRfVar from_stack_1.global_60
  loc_B1AF8B: LdPrVar
  loc_B1AF8D: LateMemCall
  loc_B1AF93: ExitProcHresult
End Function

Private Function Proc_292_23_B873F8() 'B873F8
  'Data Table: 4973B4
  loc_B86ED0: FLdPr Me
  loc_B86ED3: MemLdI2 global_112
  loc_B86ED6: CI4UI1
  loc_B86ED7: FLdPr Me
  loc_B86EDA: MemLdStr global_104
  loc_B86EDD: AryLock
  loc_B86EE0: Ary1LdRf
  loc_B86EE1: FStR4 var_8C
  loc_B86EE4: LitVarStr var_9C, "<table width=""725"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
  loc_B86EE9: PopAdLdVar
  loc_B86EEA: FLdPr Me
  loc_B86EED: MemLdRfVar from_stack_1.global_60
  loc_B86EF0: LdPrVar
  loc_B86EF2: LateMemCall
  loc_B86EF8: LitVarStr var_9C, "  <tr>"
  loc_B86EFD: PopAdLdVar
  loc_B86EFE: FLdPr Me
  loc_B86F01: MemLdRfVar from_stack_1.global_60
  loc_B86F04: LdPrVar
  loc_B86F06: LateMemCall
  loc_B86F0C: LitVarStr var_9C, "    <th valign=""top"">"
  loc_B86F11: PopAdLdVar
  loc_B86F12: FLdPr Me
  loc_B86F15: MemLdRfVar from_stack_1.global_60
  loc_B86F18: LdPrVar
  loc_B86F1A: LateMemCall
  loc_B86F20: LitVarStr var_9C, "    <table width=""99" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""NormalBloqueFin"">"
  loc_B86F25: PopAdLdVar
  loc_B86F26: FLdPr Me
  loc_B86F29: MemLdRfVar from_stack_1.global_60
  loc_B86F2C: LdPrVar
  loc_B86F2E: LateMemCall
  loc_B86F34: LitVarStr var_9C, "      <tr>"
  loc_B86F39: PopAdLdVar
  loc_B86F3A: FLdPr Me
  loc_B86F3D: MemLdRfVar from_stack_1.global_60
  loc_B86F40: LdPrVar
  loc_B86F42: LateMemCall
  loc_B86F48: LitVarStr var_AC, "        <td colspan=""8"" align=""center"" class=""NombreMunicipioBloqueFin"">"
  loc_B86F4D: LitVarStr var_9C, "Municipalidad de Guaymallén"
  loc_B86F52: FStVarCopyObj var_BC
  loc_B86F55: FLdRfVar var_BC
  loc_B86F58: FLdRfVar var_CC
  loc_B86F5B: ImpAdCallFPR4  = Ucase()
  loc_B86F60: FLdRfVar var_CC
  loc_B86F63: ConcatVar var_DC
  loc_B86F67: LitVarStr var_EC, " - "
  loc_B86F6C: ConcatVar var_FC
  loc_B86F70: LitVarStr var_10C, "Dirección de Rentas"
  loc_B86F75: ConcatVar var_11C
  loc_B86F79: LitVarStr var_12C, "</td>"
  loc_B86F7E: ConcatVar var_13C
  loc_B86F82: PopAdLdVar
  loc_B86F83: FLdPr Me
  loc_B86F86: MemLdRfVar from_stack_1.global_60
  loc_B86F89: LdPrVar
  loc_B86F8B: LateMemCall
  loc_B86F91: FFreeVar var_BC = "": var_CC = "": var_DC = "": var_FC = "": var_11C = ""
  loc_B86FA0: LitVarStr var_9C, "        </tr>"
  loc_B86FA5: PopAdLdVar
  loc_B86FA6: FLdPr Me
  loc_B86FA9: MemLdRfVar from_stack_1.global_60
  loc_B86FAC: LdPrVar
  loc_B86FAE: LateMemCall
  loc_B86FB4: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B86FB9: PopAdLdVar
  loc_B86FBA: FLdPr Me
  loc_B86FBD: MemLdRfVar from_stack_1.global_60
  loc_B86FC0: LdPrVar
  loc_B86FC2: LateMemCall
  loc_B86FC8: LitVarStr var_9C, "        <td colspan=""8"">APELLIDO Y NOMBRE</td>"
  loc_B86FCD: PopAdLdVar
  loc_B86FCE: FLdPr Me
  loc_B86FD1: MemLdRfVar from_stack_1.global_60
  loc_B86FD4: LdPrVar
  loc_B86FD6: LateMemCall
  loc_B86FDC: LitVarStr var_9C, "        </tr>"
  loc_B86FE1: PopAdLdVar
  loc_B86FE2: FLdPr Me
  loc_B86FE5: MemLdRfVar from_stack_1.global_60
  loc_B86FE8: LdPrVar
  loc_B86FEA: LateMemCall
  loc_B86FF0: LitVarStr var_9C, "      <tr>"
  loc_B86FF5: PopAdLdVar
  loc_B86FF6: FLdPr Me
  loc_B86FF9: MemLdRfVar from_stack_1.global_60
  loc_B86FFC: LdPrVar
  loc_B86FFE: LateMemCall
  loc_B87004: LitStr "        <td align=""left"" colspan=""8"">"
  loc_B87007: LitI4 1
  loc_B8700C: FLdPr Me
  loc_B8700F: MemLdStr global_100
  loc_B87012: Ary1LdPr
  loc_B87013: MemLdStr global_4
  loc_B87016: ConcatStr
  loc_B87017: FStStrNoPop var_150
  loc_B8701A: LitStr "</td>"
  loc_B8701D: ConcatStr
  loc_B8701E: CVarStr var_BC
  loc_B87021: PopAdLdVar
  loc_B87022: FLdPr Me
  loc_B87025: MemLdRfVar from_stack_1.global_60
  loc_B87028: LdPrVar
  loc_B8702A: LateMemCall
  loc_B87030: FFree1Str var_150
  loc_B87033: FFree1Var var_BC = ""
  loc_B87036: LitVarStr var_9C, "        </tr>"
  loc_B8703B: PopAdLdVar
  loc_B8703C: FLdPr Me
  loc_B8703F: MemLdRfVar from_stack_1.global_60
  loc_B87042: LdPrVar
  loc_B87044: LateMemCall
  loc_B8704A: LitVarStr var_9C, "      <tr align=""center"" class=""Encabezado"">"
  loc_B8704F: PopAdLdVar
  loc_B87050: FLdPr Me
  loc_B87053: MemLdRfVar from_stack_1.global_60
  loc_B87056: LdPrVar
  loc_B87058: LateMemCall
  loc_B8705E: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>CUOTA</td>"
  loc_B87063: PopAdLdVar
  loc_B87064: FLdPr Me
  loc_B87067: MemLdRfVar from_stack_1.global_60
  loc_B8706A: LdPrVar
  loc_B8706C: LateMemCall
  loc_B87072: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>FACILIDAD</td>"
  loc_B87077: PopAdLdVar
  loc_B87078: FLdPr Me
  loc_B8707B: MemLdRfVar from_stack_1.global_60
  loc_B8707E: LdPrVar
  loc_B87080: LateMemCall
  loc_B87086: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>USUARIO</td>"
  loc_B8708B: PopAdLdVar
  loc_B8708C: FLdPr Me
  loc_B8708F: MemLdRfVar from_stack_1.global_60
  loc_B87092: LdPrVar
  loc_B87094: LateMemCall
  loc_B8709A: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>OFICINA</td>"
  loc_B8709F: PopAdLdVar
  loc_B870A0: FLdPr Me
  loc_B870A3: MemLdRfVar from_stack_1.global_60
  loc_B870A6: LdPrVar
  loc_B870A8: LateMemCall
  loc_B870AE: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>CUENTA</td>"
  loc_B870B3: PopAdLdVar
  loc_B870B4: FLdPr Me
  loc_B870B7: MemLdRfVar from_stack_1.global_60
  loc_B870BA: LdPrVar
  loc_B870BC: LateMemCall
  loc_B870C2: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>BOLETO</td>"
  loc_B870C7: PopAdLdVar
  loc_B870C8: FLdPr Me
  loc_B870CB: MemLdRfVar from_stack_1.global_60
  loc_B870CE: LdPrVar
  loc_B870D0: LateMemCall
  loc_B870D6: LitVarStr var_9C, "        <td width=""12" & Chr(37) & """>VENCIMIENTO</td>"
  loc_B870DB: PopAdLdVar
  loc_B870DC: FLdPr Me
  loc_B870DF: MemLdRfVar from_stack_1.global_60
  loc_B870E2: LdPrVar
  loc_B870E4: LateMemCall
  loc_B870EA: LitVarStr var_9C, "        <td>IMPORTE</td>"
  loc_B870EF: PopAdLdVar
  loc_B870F0: FLdPr Me
  loc_B870F3: MemLdRfVar from_stack_1.global_60
  loc_B870F6: LdPrVar
  loc_B870F8: LateMemCall
  loc_B870FE: LitVarStr var_9C, "      </tr>"
  loc_B87103: PopAdLdVar
  loc_B87104: FLdPr Me
  loc_B87107: MemLdRfVar from_stack_1.global_60
  loc_B8710A: LdPrVar
  loc_B8710C: LateMemCall
  loc_B87112: LitVarStr var_9C, "      <tr valign=""top"">"
  loc_B87117: PopAdLdVar
  loc_B87118: FLdPr Me
  loc_B8711B: MemLdRfVar from_stack_1.global_60
  loc_B8711E: LdPrVar
  loc_B87120: LateMemCall
  loc_B87126: LitStr "        <td align=""right"">"
  loc_B87129: FMemLdR4 var_8C(4)
  loc_B8712E: ConcatStr
  loc_B8712F: FStStrNoPop var_150
  loc_B87132: LitStr "/"
  loc_B87135: ConcatStr
  loc_B87136: FStStrNoPop var_154
  loc_B87139: FLdPr Me
  loc_B8713C: MemLdStr global_108
  loc_B8713F: ConcatStr
  loc_B87140: FStStrNoPop var_158
  loc_B87143: LitStr "</td>"
  loc_B87146: ConcatStr
  loc_B87147: CVarStr var_BC
  loc_B8714A: PopAdLdVar
  loc_B8714B: FLdPr Me
  loc_B8714E: MemLdRfVar from_stack_1.global_60
  loc_B87151: LdPrVar
  loc_B87153: LateMemCall
  loc_B87159: FFreeStr var_150 = "": var_154 = ""
  loc_B87162: FFree1Var var_BC = ""
  loc_B87165: LitStr "        <td align=""right"">"
  loc_B87168: FLdPr Me
  loc_B8716B: VCallAd Control_ID_CodiFapaMsk
  loc_B8716E: FStAdFunc var_15C
  loc_B87171: FLdPr var_15C
  loc_B87174: LateIdLdVar var_BC DispID_22 0
  loc_B8717B: CStrVarTmp
  loc_B8717C: FStStrNoPop var_150
  loc_B8717F: ConcatStr
  loc_B87180: FStStrNoPop var_154
  loc_B87183: LitStr "</td>"
  loc_B87186: ConcatStr
  loc_B87187: CVarStr var_CC
  loc_B8718A: PopAdLdVar
  loc_B8718B: FLdPr Me
  loc_B8718E: MemLdRfVar from_stack_1.global_60
  loc_B87191: LdPrVar
  loc_B87193: LateMemCall
  loc_B87199: FFreeStr var_150 = ""
  loc_B871A0: FFree1Ad var_15C
  loc_B871A3: FFreeVar var_BC = ""
  loc_B871AA: LitStr "        <td align=""center"">"
  loc_B871AD: LitI4 1
  loc_B871B2: FLdPr Me
  loc_B871B5: MemLdStr global_100
  loc_B871B8: Ary1LdPr
  loc_B871B9: MemLdStr bGenerado
  loc_B871BC: ConcatStr
  loc_B871BD: FStStrNoPop var_150
  loc_B871C0: LitStr "</td>"
  loc_B871C3: ConcatStr
  loc_B871C4: CVarStr var_BC
  loc_B871C7: PopAdLdVar
  loc_B871C8: FLdPr Me
  loc_B871CB: MemLdRfVar from_stack_1.global_60
  loc_B871CE: LdPrVar
  loc_B871D0: LateMemCall
  loc_B871D6: FFree1Str var_150
  loc_B871D9: FFree1Var var_BC = ""
  loc_B871DC: LitStr "        <td align=""right"">"
  loc_B871DF: FLdPr Me
  loc_B871E2: MemLdUI1 global_84
  loc_B871E6: CStrI2
  loc_B871E8: FStStrNoPop var_150
  loc_B871EB: ConcatStr
  loc_B871EC: FStStrNoPop var_154
  loc_B871EF: LitStr "</td>"
  loc_B871F2: ConcatStr
  loc_B871F3: CVarStr var_BC
  loc_B871F6: PopAdLdVar
  loc_B871F7: FLdPr Me
  loc_B871FA: MemLdRfVar from_stack_1.global_60
  loc_B871FD: LdPrVar
  loc_B871FF: LateMemCall
  loc_B87205: FFreeStr var_150 = ""
  loc_B8720C: FFree1Var var_BC = ""
  loc_B8720F: LitStr "        <td align=""right"">"
  loc_B87212: FLdPr Me
  loc_B87215: MemLdStr global_92
  loc_B87218: ConcatStr
  loc_B87219: FStStrNoPop var_150
  loc_B8721C: LitStr "</td>"
  loc_B8721F: ConcatStr
  loc_B87220: CVarStr var_BC
  loc_B87223: PopAdLdVar
  loc_B87224: FLdPr Me
  loc_B87227: MemLdRfVar from_stack_1.global_60
  loc_B8722A: LdPrVar
  loc_B8722C: LateMemCall
  loc_B87232: FFree1Str var_150
  loc_B87235: FFree1Var var_BC = ""
  loc_B87238: LitStr "        <td align=""right"">"
  loc_B8723B: FMemLdR4 var_8C(8)
  loc_B87240: ConcatStr
  loc_B87241: FStStrNoPop var_150
  loc_B87244: LitStr "/"
  loc_B87247: ConcatStr
  loc_B87248: FStStrNoPop var_154
  loc_B8724B: FMemLdR4 var_8C(12)
  loc_B87250: ConcatStr
  loc_B87251: FStStrNoPop var_158
  loc_B87254: LitStr "</td>"
  loc_B87257: ConcatStr
  loc_B87258: CVarStr var_BC
  loc_B8725B: PopAdLdVar
  loc_B8725C: FLdPr Me
  loc_B8725F: MemLdRfVar from_stack_1.global_60
  loc_B87262: LdPrVar
  loc_B87264: LateMemCall
  loc_B8726A: FFreeStr var_150 = "": var_154 = ""
  loc_B87273: FFree1Var var_BC = ""
  loc_B87276: LitStr "        <td align=""center"" class=""Vencimiento"">"
  loc_B87279: FMemLdR4 var_8C(16)
  loc_B8727E: ConcatStr
  loc_B8727F: FStStrNoPop var_150
  loc_B87282: LitStr "</td>"
  loc_B87285: ConcatStr
  loc_B87286: CVarStr var_BC
  loc_B87289: PopAdLdVar
  loc_B8728A: FLdPr Me
  loc_B8728D: MemLdRfVar from_stack_1.global_60
  loc_B87290: LdPrVar
  loc_B87292: LateMemCall
  loc_B87298: FFree1Str var_150
  loc_B8729B: FFree1Var var_BC = ""
  loc_B8729E: LitStr "        <td align=""right"">"
  loc_B872A1: FMemLdR4 var_8C(20)
  loc_B872A6: ConcatStr
  loc_B872A7: FStStrNoPop var_150
  loc_B872AA: LitStr "</td>"
  loc_B872AD: ConcatStr
  loc_B872AE: CVarStr var_BC
  loc_B872B1: PopAdLdVar
  loc_B872B2: FLdPr Me
  loc_B872B5: MemLdRfVar from_stack_1.global_60
  loc_B872B8: LdPrVar
  loc_B872BA: LateMemCall
  loc_B872C0: FFree1Str var_150
  loc_B872C3: FFree1Var var_BC = ""
  loc_B872C6: LitVarStr var_9C, "      </tr>"
  loc_B872CB: PopAdLdVar
  loc_B872CC: FLdPr Me
  loc_B872CF: MemLdRfVar from_stack_1.global_60
  loc_B872D2: LdPrVar
  loc_B872D4: LateMemCall
  loc_B872DA: LitVarStr var_9C, "      <tr align=""left"">"
  loc_B872DF: PopAdLdVar
  loc_B872E0: FLdPr Me
  loc_B872E3: MemLdRfVar from_stack_1.global_60
  loc_B872E6: LdPrVar
  loc_B872E8: LateMemCall
  loc_B872EE: LitVarStr var_9C, "          <td colspan=""8"" class=""Normal"">"
  loc_B872F3: PopAdLdVar
  loc_B872F4: FLdPr Me
  loc_B872F7: MemLdRfVar from_stack_1.global_60
  loc_B872FA: LdPrVar
  loc_B872FC: LateMemCall
  loc_B87302: LitVarStr var_9C, "           <table valign=""middle"" align=""center"">"
  loc_B87307: PopAdLdVar
  loc_B87308: FLdPr Me
  loc_B8730B: MemLdRfVar from_stack_1.global_60
  loc_B8730E: LdPrVar
  loc_B87310: LateMemCall
  loc_B87316: LitStr "             <tr><td valign=""bottom"" align=""center"" class=""CodBar"">"
  loc_B87319: LitI4 1
  loc_B8731E: FMemLdR4 var_8C(28)
  loc_B87323: Ary1LdI4
  loc_B87324: ConcatStr
  loc_B87325: FStStrNoPop var_150
  loc_B87328: LitStr "</td><tr>"
  loc_B8732B: ConcatStr
  loc_B8732C: CVarStr var_BC
  loc_B8732F: PopAdLdVar
  loc_B87330: FLdPr Me
  loc_B87333: MemLdRfVar from_stack_1.global_60
  loc_B87336: LdPrVar
  loc_B87338: LateMemCall
  loc_B8733E: FFree1Str var_150
  loc_B87341: FFree1Var var_BC = ""
  loc_B87344: LitStr "             <tr><td valign=""top"" align=""center"" class=""NormalDetalle"">"
  loc_B87347: LitI4 0
  loc_B8734C: FMemLdR4 var_8C(28)
  loc_B87351: Ary1LdI4
  loc_B87352: ConcatStr
  loc_B87353: FStStrNoPop var_150
  loc_B87356: LitStr "</td><tr>"
  loc_B87359: ConcatStr
  loc_B8735A: CVarStr var_BC
  loc_B8735D: PopAdLdVar
  loc_B8735E: FLdPr Me
  loc_B87361: MemLdRfVar from_stack_1.global_60
  loc_B87364: LdPrVar
  loc_B87366: LateMemCall
  loc_B8736C: FFree1Str var_150
  loc_B8736F: FFree1Var var_BC = ""
  loc_B87372: LitVarStr var_9C, "           </table>"
  loc_B87377: PopAdLdVar
  loc_B87378: FLdPr Me
  loc_B8737B: MemLdRfVar from_stack_1.global_60
  loc_B8737E: LdPrVar
  loc_B87380: LateMemCall
  loc_B87386: LitVarStr var_9C, "          </td>"
  loc_B8738B: PopAdLdVar
  loc_B8738C: FLdPr Me
  loc_B8738F: MemLdRfVar from_stack_1.global_60
  loc_B87392: LdPrVar
  loc_B87394: LateMemCall
  loc_B8739A: LitVarStr var_9C, "      </tr>"
  loc_B8739F: PopAdLdVar
  loc_B873A0: FLdPr Me
  loc_B873A3: MemLdRfVar from_stack_1.global_60
  loc_B873A6: LdPrVar
  loc_B873A8: LateMemCall
  loc_B873AE: LitVarStr var_9C, "    </table>"
  loc_B873B3: PopAdLdVar
  loc_B873B4: FLdPr Me
  loc_B873B7: MemLdRfVar from_stack_1.global_60
  loc_B873BA: LdPrVar
  loc_B873BC: LateMemCall
  loc_B873C2: LitVarStr var_9C, "  </th></tr>"
  loc_B873C7: PopAdLdVar
  loc_B873C8: FLdPr Me
  loc_B873CB: MemLdRfVar from_stack_1.global_60
  loc_B873CE: LdPrVar
  loc_B873D0: LateMemCall
  loc_B873D6: LitVarStr var_9C, "</table>"
  loc_B873DB: PopAdLdVar
  loc_B873DC: FLdPr Me
  loc_B873DF: MemLdRfVar from_stack_1.global_60
  loc_B873E2: LdPrVar
  loc_B873E4: LateMemCall
  loc_B873EA: LitI4 0
  loc_B873EF: FStR4 var_8C
  loc_B873F2: AryUnlock
  loc_B873F5: ExitProcHresult
  loc_B873F6: NeI2
End Function

Private Function Proc_292_24_9F3404() '9F3404
  'Data Table: 4973B4
  loc_9F33D8: LitVarStr var_94, "</body>"
  loc_9F33DD: PopAdLdVar
  loc_9F33DE: FLdPr Me
  loc_9F33E1: MemLdRfVar from_stack_1.global_60
  loc_9F33E4: LdPrVar
  loc_9F33E6: LateMemCall
  loc_9F33EC: LitVarStr var_94, "</html>"
  loc_9F33F1: PopAdLdVar
  loc_9F33F2: FLdPr Me
  loc_9F33F5: MemLdRfVar from_stack_1.global_60
  loc_9F33F8: LdPrVar
  loc_9F33FA: LateMemCall
  loc_9F3400: ExitProcHresult
  loc_9F3401: MemLdFPR4 global_844
End Function
