VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptDeclaraciondelSicoss
  Caption = "Declaracion del SICOSS (v36 r6)"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptDeclaraciondelSicoss.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6405
  ClientHeight = 3000
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2745
    Width = 6405
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptDeclaraciondelSicoss.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptDeclaraciondelSicoss.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptDeclaraciondelSicoss.frx":0B9C
    Left = 2760
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1560
    Width = 3015
    Height = 1095
    TabIndex = 11
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 13
    End
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 12
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 5055
    Height = 1455
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 1080
      Top = 840
      Width = 1575
      Height = 315
      TabIndex = 5
    End
    Begin VB.Label Label2
      Caption = "Mes:"
      Left = 600
      Top = 840
      Width = 345
      Height = 195
      TabIndex = 4
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 360
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 720
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptDeclaraciondelSicoss.frx":0C00
  End
End

Attribute VB_Name = "rptDeclaraciondelSicoss"

Public htmFile As Variant
Public bGenerado As Boolean


Private Sub Form_Load() 'A003D4
  'Data Table: 43D86C
  loc_A00284: LitI2_Byte &HFF
  loc_A00286: ImpAdStI2 MemVar_C3D840
  loc_A00289: LitI2_Byte &HFF
  loc_A0028B: ImpAdStI2 MemVar_C3D844
  loc_A0028E: ILdRf Me
  loc_A00291: CastAd
  loc_A00294: FStAdFunc var_90
  loc_A00297: FLdRfVar var_90
  loc_A0029A: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_A0029F: FFree1Ad var_90
  loc_A002A2: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_A002A5: FLdRfVar var_8C
  loc_A002A8: NewIfNullPr clsperiodo
  loc_A002AB: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_A002B0: FLdRfVar var_94
  loc_A002B3: FLdRfVar var_8C
  loc_A002B6: NewIfNullPr clsperiodo
  loc_A002B9: from_stack_1 = clsperiodo.RecordCount
  loc_A002BE: ILdRf var_94
  loc_A002C1: LitI4 0
  loc_A002C6: GtI4
  loc_A002C7: BranchF loc_A0035A
  loc_A002CA: FLdRfVar var_8C
  loc_A002CD: NewIfNullPr clsperiodo
  loc_A002D0: Call clsperiodo.MoveFirst()
  loc_A002D5: FLdRfVar var_96
  loc_A002D8: FLdRfVar var_8C
  loc_A002DB: NewIfNullPr clsperiodo
  loc_A002DE: from_stack_1 = clsperiodo.EOF
  loc_A002E3: FLdI2 var_96
  loc_A002E6: NotI4
  loc_A002E7: BranchF loc_A0035A
  loc_A002EA: LitVar_Missing var_D4
  loc_A002ED: PopAdLdVar
  loc_A002EE: FLdRfVar var_C0
  loc_A002F1: FLdRfVar var_B0
  loc_A002F4: LitVarStr var_AC, "PeriInfo"
  loc_A002F9: PopAdLdVar
  loc_A002FA: FLdRfVar var_9C
  loc_A002FD: FLdRfVar var_90
  loc_A00300: FLdRfVar var_8C
  loc_A00303: NewIfNullPr clsperiodo
  loc_A00306: from_stack_1v = clsperiodo.RsFrmGet()
  loc_A0030B: FLdPr var_90
  loc_A0030E:  = Me.Fields
  loc_A00313: FLdPr var_9C
  loc_A00316: from_stack_2 = Me.Item(from_stack_1)
  loc_A0031B: FLdPr var_B0
  loc_A0031E:  = Me.Value
  loc_A00323: FLdRfVar var_C0
  loc_A00326: CStrVarTmp
  loc_A00327: FStStrNoPop var_C4
  loc_A0032A: FLdPr Me
  loc_A0032D: VCallAd Control_ID_cboPeriodo
  loc_A00330: FStAdFunc var_D8
  loc_A00333: FLdPr var_D8
  loc_A00336: Me.AddItem from_stack_1, from_stack_2
  loc_A0033B: FFree1Str var_C4
  loc_A0033E: FFreeAd var_90 = "": var_9C = "": var_B0 = ""
  loc_A00349: FFree1Var var_C0 = ""
  loc_A0034C: FLdRfVar var_8C
  loc_A0034F: NewIfNullPr clsperiodo
  loc_A00352: Call clsperiodo.MoveSiguiente()
  loc_A00357: Branch loc_A002D5
  loc_A0035A: LitI2_Byte 1
  loc_A0035C: FLdRfVar var_86
  loc_A0035F: LitI2_Byte &HC
  loc_A00361: ForI2 var_DC
  loc_A00367: LitVar_Missing var_AC
  loc_A0036A: PopAdLdVar
  loc_A0036B: LitI2_Byte 0
  loc_A0036D: FLdI2 var_86
  loc_A00370: CI4UI1
  loc_A00371: ImpAdCallI2 MonthName(, )
  loc_A00376: FStStrNoPop var_C4
  loc_A00379: FLdPr Me
  loc_A0037C: VCallAd Control_ID_cboMes
  loc_A0037F: FStAdFunc var_90
  loc_A00382: FLdPr var_90
  loc_A00385: Me.AddItem from_stack_1, from_stack_2
  loc_A0038A: FFree1Str var_C4
  loc_A0038D: FFree1Ad var_90
  loc_A00390: FLdI2 var_86
  loc_A00393: CI4UI1
  loc_A00394: FLdRfVar var_96
  loc_A00397: FLdPr Me
  loc_A0039A: VCallAd Control_ID_cboMes
  loc_A0039D: FStAdFunc var_90
  loc_A003A0: FLdPr var_90
  loc_A003A3:  = Me.NewIndex
  loc_A003A8: FLdI2 var_96
  loc_A003AB: FLdPr Me
  loc_A003AE: VCallAd Control_ID_cboMes
  loc_A003B1: FStAdFunc var_9C
  loc_A003B4: FLdPr var_9C
  loc_A003B7: Me.ItemData = from_stack_1
  loc_A003BC: FFreeAd var_90 = ""
  loc_A003C3: FLdRfVar var_86
  loc_A003C6: NextI2 var_DC, loc_A00367
  loc_A003CB: Call cmdNueva_Click()
  loc_A003D0: ExitProcHresult
  loc_A003D1: FStR4 arg_3A0
End Sub

Private Sub Form_Unload(Cancel As Integer) '965DB0
  'Data Table: 43D86C
  loc_965D98: FLdPr Me
  loc_965D9B: VCallAd Control_ID_wbbReporte
  loc_965D9E: FStAdFunc var_88
  loc_965DA1: FLdRfVar var_88
  loc_965DA4: ImpAdCallFPR4  = Proc_263_22_98CC50()
  loc_965DA9: FFree1Ad var_88
  loc_965DAC: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '96203C
  'Data Table: 43D86C
  loc_962024: ILdRf Me
  loc_962027: CastAd
  loc_96202A: FStAdFunc var_88
  loc_96202D: FLdRfVar var_88
  loc_962030: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_962035: FFree1Ad var_88
  loc_962038: ExitProcHresult
  loc_962039: Erase
  loc_96203A: Ary1StFPR4
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B0E4
  'Data Table: 43D86C
  loc_98B0AC: FLdPr Me
  loc_98B0AF: VCallAd Control_ID_statusBar
  loc_98B0B2: FStAdFunc var_88
  loc_98B0B5: FLdPr var_88
  loc_98B0B8: LateIdLdVar var_98 DispID_1 0
  loc_98B0BF: CStrVarTmp
  loc_98B0C0: CVarStr var_A8
  loc_98B0C3: PopAdLdVar
  loc_98B0C4: FLdPr Me
  loc_98B0C7: VCallAd Control_ID_statusBar
  loc_98B0CA: FStAdFunc var_BC
  loc_98B0CD: FLdPr var_BC
  loc_98B0D0: LateIdSt
  loc_98B0D5: FFreeAd var_88 = ""
  loc_98B0DC: FFreeVar var_98 = ""
  loc_98B0E3: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97BF18
  'Data Table: 43D86C
  loc_97BEE8: LitVarStr var_94, "Cerrando..."
  loc_97BEED: PopAdLdVar
  loc_97BEEE: FLdPr Me
  loc_97BEF1: VCallAd Control_ID_statusBar
  loc_97BEF4: FStAdFunc var_A8
  loc_97BEF7: FLdPr var_A8
  loc_97BEFA: LateIdSt
  loc_97BEFF: FFree1Ad var_A8
  loc_97BF02: ILdRf Me
  loc_97BF05: FStAdNoPop
  loc_97BF09: ImpAdLdRf MemVar_C44F9C
  loc_97BF0C: NewIfNullPr Me
  loc_97BF0F: Me.Global.Unload from_stack_1
  loc_97BF14: FFree1Ad var_A8
  loc_97BF17: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '958544
  'Data Table: 43D86C
  loc_95852C: ILdRf Me
  loc_95852F: CastAd
  loc_958532: FStAdFunc var_88
  loc_958535: FLdRfVar var_88
  loc_958538: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95853D: FFree1Ad var_88
  loc_958540: ExitProcHresult
  loc_958541: CR8I2
  loc_958542: AryLdPr
End Sub

Private Sub cmdNueva_Click() '9A7560
  'Data Table: 43D86C
  loc_9A74DC: LitI2_Byte 0
  loc_9A74DE: FLdPr Me
  loc_9A74E1: MemStI2 bGenerado
  loc_9A74E4: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9A74E9: ImpAdLdI2 MemVar_C3D064
  loc_9A74EC: CStrUI1
  loc_9A74EE: FStStrNoPop var_88
  loc_9A74F1: FLdPr Me
  loc_9A74F4: VCallAd Control_ID_cboPeriodo
  loc_9A74F7: FStAdFunc var_8C
  loc_9A74FA: FLdPr var_8C
  loc_9A74FD: Me.Text = from_stack_1
  loc_9A7502: FFree1Str var_88
  loc_9A7505: FFree1Ad var_8C
  loc_9A7508: LitI2_Byte 0
  loc_9A750A: PopTmpLdAd2 var_8E
  loc_9A750D: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9A7512: CVarDate var_B0
  loc_9A7516: FLdRfVar var_C0
  loc_9A7519: ImpAdCallFPR4  = Month()
  loc_9A751E: FLdRfVar var_C0
  loc_9A7521: LitVarI2 var_D0, 1
  loc_9A7526: SubVar var_E0
  loc_9A752A: CI2Var
  loc_9A752B: FLdPr Me
  loc_9A752E: VCallAd Control_ID_cboMes
  loc_9A7531: FStAdFunc var_8C
  loc_9A7534: FLdPr var_8C
  loc_9A7537: Me.ListIndex = from_stack_1
  loc_9A753C: FFree1Ad var_8C
  loc_9A753F: FFreeVar var_B0 = ""
  loc_9A7546: Call HabilitarCriterio()
  loc_9A754B: ILdRf Me
  loc_9A754E: CastAd
  loc_9A7551: FStAdFunc var_8C
  loc_9A7554: FLdRfVar var_8C
  loc_9A7557: ImpAdCallFPR4  = Proc_263_12_9C9114()
  loc_9A755C: FFree1Ad var_8C
  loc_9A755F: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '958BCC
  'Data Table: 43D86C
  loc_958BB4: LitI2_Byte 0
  loc_958BB6: ILdRf Me
  loc_958BB9: CastAd
  loc_958BBC: FStAdFunc var_88
  loc_958BBF: FLdRfVar var_88
  loc_958BC2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_958BC7: FFree1Ad var_88
  loc_958BCA: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '961F58
  'Data Table: 43D86C
  loc_961F40: LitI2_Byte 0
  loc_961F42: ILdRf Me
  loc_961F45: CastAd
  loc_961F48: FStAdFunc var_88
  loc_961F4B: FLdRfVar var_88
  loc_961F4E: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_961F53: FFree1Ad var_88
  loc_961F56: ExitProcHresult
End Sub

Public Function htmFileGet() '43E3A4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '43E3B3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '43E3C2
  htmFile = Value
End Sub

Public Function bGeneradoGet() '43E3D1
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43E3E0
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '9919D8
  'Data Table: 43D86C
  loc_991994: LitI4 0
  loc_991999: LitI4 1
  loc_99199E: FLdRfVar var_88
  loc_9919A1: Redim
  loc_9919AB: FLdPr Me
  loc_9919AE: VCallAd Control_ID_cboPeriodo
  loc_9919B1: CVarAd
  loc_9919B5: ParmAry1St
  loc_9919BB: FLdPr Me
  loc_9919BE: VCallAd Control_ID_cboMes
  loc_9919C1: CVarAd
  loc_9919C5: ParmAry1St
  loc_9919CB: FLdRfVar var_88
  loc_9919CE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9919D3: FLdRfVar var_88
  loc_9919D6: Erase
  loc_9919D7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A48A40
  'Data Table: 43D86C
  loc_A48800: OnErrorGoto loc_A489DC
  loc_A48803: FLdPr Me
  loc_A48806: MemLdI2 bGenerado
  loc_A48809: BranchF loc_A4880D
  loc_A4880C: ExitProcHresult
  loc_A4880D: LitVarStr var_94, "Generando reporte..."
  loc_A48812: PopAdLdVar
  loc_A48813: FLdPr Me
  loc_A48816: VCallAd Control_ID_statusBar
  loc_A48819: FStAdFunc var_A8
  loc_A4881C: FLdPr var_A8
  loc_A4881F: LateIdSt
  loc_A48824: FFree1Ad var_A8
  loc_A48827: LitI4 &HB
  loc_A4882C: CI2I4
  loc_A4882D: FLdPr Me
  loc_A48830: Me.MousePointer = from_stack_1
  loc_A48835: FLdPr Me
  loc_A48838: MemLdRfVar from_stack_1.global_72
  loc_A4883B: NewIfNullAd
  loc_A4883E: FStAd var_AC 
  loc_A48842: LitStr "SET @periinfo="
  loc_A48845: FLdRfVar var_B0
  loc_A48848: FLdPr Me
  loc_A4884B: VCallAd Control_ID_cboPeriodo
  loc_A4884E: FStAdFunc var_A8
  loc_A48851: FLdPr var_A8
  loc_A48854:  = Me.Text
  loc_A48859: ILdRf var_B0
  loc_A4885C: ConcatStr
  loc_A4885D: FStStrNoPop var_B4
  loc_A48860: LitStr ", @mes="
  loc_A48863: ConcatStr
  loc_A48864: FStStrNoPop var_C8
  loc_A48867: FLdRfVar var_C4
  loc_A4886A: FLdRfVar var_BA
  loc_A4886D: FLdPr Me
  loc_A48870: VCallAd Control_ID_cboMes
  loc_A48873: FStAdFunc var_B8
  loc_A48876: FLdPr var_B8
  loc_A48879:  = Me.ListIndex
  loc_A4887E: FLdI2 var_BA
  loc_A48881: FLdPr Me
  loc_A48884: VCallAd Control_ID_cboMes
  loc_A48887: FStAdFunc var_C0
  loc_A4888A: FLdPr var_C0
  loc_A4888D:  = Me.ItemData
  loc_A48892: ILdRf var_C4
  loc_A48895: CStrI4
  loc_A48897: FStStrNoPop var_CC
  loc_A4889A: ConcatStr
  loc_A4889B: FStStrNoPop var_D0
  loc_A4889E: LitStr ";"
  loc_A488A1: ConcatStr
  loc_A488A2: FStStrNoPop var_D4
  loc_A488A5: FLdPr var_AC
  loc_A488A8: Call clsbase.RedefineRS(from_stack_1v)
  loc_A488AD: FFreeStr var_B0 = "": var_B4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_A488BC: FFreeAd var_A8 = "": var_B8 = ""
  loc_A488C5: LitStr "SELECT  im.CucuPers, Rpad(DetaProv,30,' ') AS DetaProv, Sum(DeveImpu) Importe"
  loc_A488C8: LitStr ", CAST(Concat(im.CucuPers, Rpad(DetaProv,30,' '), 'F', '00', '01', '01', '913', '49', ' 0,00'"
  loc_A488CB: ConcatStr
  loc_A488CC: FStStrNoPop var_B0
  loc_A488CF: LitStr ", '008', '000000', '00'"
  loc_A488D2: ConcatStr
  loc_A488D3: FStStrNoPop var_B4
  loc_A488D6: LitStr ", Lpad(Replace(Sum(DeveImpu),'.',','),12,' '), Lpad(Replace(Sum(DeveImpu),'.',','),12,' '), Lpad('0,00',9,' '), Lpad('0,00',9,' '), Lpad('0,00',9,' '), Lpad('0,00',9,' ') , Lpad('0,00',9,' ') "
  loc_A488D9: ConcatStr
  loc_A488DA: FStStrNoPop var_C8
  loc_A488DD: LitStr ", Rpad('Mendoza',50,' ') , Lpad(Replace(Sum(DeveImpu),'.',','),12,' ') , Lpad(Replace(Sum(DeveImpu),'.',','),12,' ') , Lpad('0,00',12,' ') , '00' "
  loc_A488E0: ConcatStr
  loc_A488E1: FStStrNoPop var_CC
  loc_A488E4: LitStr ", 'F' , Lpad('0,00',9,' ') , '3' , Lpad('0,00',9,' ') , '1' , '01' , '01' "
  loc_A488E7: ConcatStr
  loc_A488E8: FStStrNoPop var_D0
  loc_A488EB: LitStr ", '00' , '00' , '00' , '00' , Lpad(Replace(Sum(DeveImpu),'.',','),12,' ') "
  loc_A488EE: ConcatStr
  loc_A488EF: FStStrNoPop var_D4
  loc_A488F2: LitStr ", Lpad('0,00',12,' ') , Lpad('0,00',12,' ') , Lpad('0,00',12,' ') , Lpad('0,00',12,' ') "
  loc_A488F5: ConcatStr
  loc_A488F6: FStStrNoPop var_D8
  loc_A488F9: LitStr ", Lpad('30',9,'0') , Lpad('0,01',12,' ') , '0' , Lpad('0,00',12,' ') , '0' "
  loc_A488FC: ConcatStr
  loc_A488FD: FStStrNoPop var_DC
  loc_A48900: LitStr ", Lpad('0,00',12,' ') , Lpad('0,00',12,' ') , Lpad('0,00',12,' ') , Lpad('0,00',12,' ') "
  loc_A48903: ConcatStr
  loc_A48904: FStStrNoPop var_E0
  loc_A48907: LitStr ", Lpad('0',3,' ') "
  loc_A4890A: ConcatStr
  loc_A4890B: FStStrNoPop var_E4
  loc_A4890E: LitStr ", Lpad('0,00',12,' ') , Lpad('0,00',12,' ') , Lpad('0,00',9,' ') , Lpad('0,00',12,' ') "
  loc_A48911: ConcatStr
  loc_A48912: FStStrNoPop var_E8
  loc_A48915: LitStr ", Lpad('0,00',9,' ') , lpad('0',3,' ') , 'F' ) AS CHAR) AS Renglon"
  loc_A48918: ConcatStr
  loc_A48919: FStStrNoPop var_EC
  loc_A4891C: LitStr " FROM imputacion im"
  loc_A4891F: ConcatStr
  loc_A48920: FStStrNoPop var_F0
  loc_A48923: LitStr " INNER JOIN proveedor pr ON pr.CucuPers = im.CucuPers AND pr.LocaProv = 1"
  loc_A48926: ConcatStr
  loc_A48927: FStStrNoPop var_F4
  loc_A4892A: LitStr " WHERE im.PeriInfo = @periinfo"
  loc_A4892D: ConcatStr
  loc_A4892E: FStStrNoPop var_F8
  loc_A48931: LitStr " AND Month(FechImpu) = @mes"
  loc_A48934: ConcatStr
  loc_A48935: FStStrNoPop var_FC
  loc_A48938: LitStr " AND Left(NumeFact,3) <> 's/f'"
  loc_A4893B: ConcatStr
  loc_A4893C: FStStrNoPop var_100
  loc_A4893F: LitStr " AND DeveImpu != 0"
  loc_A48942: ConcatStr
  loc_A48943: FStStrNoPop var_104
  loc_A48946: LitStr " GROUP BY im.CucuPers;"
  loc_A48949: ConcatStr
  loc_A4894A: FStStrNoPop var_108
  loc_A4894D: FLdPr var_AC
  loc_A48950: Call clsbase.RedefineRS(from_stack_1v)
  loc_A48955: FFreeStr var_B0 = "": var_B4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_A4897E: FLdRfVar var_C4
  loc_A48981: FLdPr var_AC
  loc_A48984: from_stack_1 = clsbase.RecordCount
  loc_A48989: ILdRf var_C4
  loc_A4898C: LitI4 1
  loc_A48991: LtI4
  loc_A48992: BranchF loc_A489A5
  loc_A48995: LitI4 0
  loc_A4899A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A4899D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A489A2: Branch loc_A489B3
  loc_A489A5: LitNothing
  loc_A489A7: FStAd var_AC 
  loc_A489AB: LitI2_Byte &HFF
  loc_A489AD: FLdPr Me
  loc_A489B0: MemStI2 bGenerado
  loc_A489B3: LitI4 0
  loc_A489B8: CI2I4
  loc_A489B9: FLdPr Me
  loc_A489BC: Me.MousePointer = from_stack_1
  loc_A489C1: LitVarStr var_94, vbNullString
  loc_A489C6: PopAdLdVar
  loc_A489C7: FLdPr Me
  loc_A489CA: VCallAd Control_ID_statusBar
  loc_A489CD: FStAdFunc var_A8
  loc_A489D0: FLdPr var_A8
  loc_A489D3: LateIdSt
  loc_A489D8: FFree1Ad var_A8
  loc_A489DB: ExitProcHresult
  loc_A489DC: LitI4 0
  loc_A489E1: LitStr "Error "
  loc_A489E4: FLdRfVar var_C4
  loc_A489E7: ImpAdCallI2 Err 'rtcErrObj
  loc_A489EC: FStAdFunc var_A8
  loc_A489EF: FLdPr var_A8
  loc_A489F2:  = Err.Number
  loc_A489F7: ILdRf var_C4
  loc_A489FA: CStrI4
  loc_A489FC: FStStrNoPop var_B0
  loc_A489FF: ConcatStr
  loc_A48A00: FStStrNoPop var_B4
  loc_A48A03: LitStr ": "
  loc_A48A06: ConcatStr
  loc_A48A07: FStStrNoPop var_CC
  loc_A48A0A: FLdRfVar var_C8
  loc_A48A0D: ImpAdCallI2 Err 'rtcErrObj
  loc_A48A12: FStAdFunc var_B8
  loc_A48A15: FLdPr var_B8
  loc_A48A18:  = Err.Description
  loc_A48A1D: ILdRf var_C8
  loc_A48A20: ConcatStr
  loc_A48A21: FStStrNoPop var_D0
  loc_A48A24: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A48A29: FFreeStr var_B0 = "": var_B4 = "": var_CC = "": var_C8 = ""
  loc_A48A36: FFreeAd var_A8 = ""
  loc_A48A3D: ExitProcHresult
  loc_A48A3E: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9DBC10
  'Data Table: 43D86C
  loc_9DBB20: FLdRfVar var_88
  loc_9DBB23: LitI2_Byte 0
  loc_9DBB25: LitI2_Byte &HFF
  loc_9DBB27: ImpAdLdI4 MemVar_C3D05C
  loc_9DBB2A: FLdPr Me
  loc_9DBB2D: MemLdRfVar from_stack_1.global_76
  loc_9DBB30: NewIfNullPr IFileSystem3
  loc_9DBB33: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9DBB38: ILdRf var_88
  loc_9DBB3B: FLdPr Me
  loc_9DBB3E: MemStVarAd
  loc_9DBB42: FFree1Ad var_88
  loc_9DBB45: FLdPr Me
  loc_9DBB48: MemLdRfVar from_stack_1.global_72
  loc_9DBB4B: NewIfNullAd
  loc_9DBB4E: FStAd var_8C 
  loc_9DBB52: FLdPr var_8C
  loc_9DBB55: Call clsbase.MoveFirst()
  loc_9DBB5A: FLdRfVar var_8E
  loc_9DBB5D: FLdPr var_8C
  loc_9DBB60: from_stack_1 = clsbase.EOF
  loc_9DBB65: FLdI2 var_8E
  loc_9DBB68: NotI4
  loc_9DBB69: BranchF loc_9DBBF9
  loc_9DBB6C: FLdRfVar var_C8
  loc_9DBB6F: FLdRfVar var_A8
  loc_9DBB72: LitVarStr var_A4, "Renglon"
  loc_9DBB77: PopAdLdVar
  loc_9DBB78: FLdRfVar var_94
  loc_9DBB7B: FLdRfVar var_88
  loc_9DBB7E: FLdPr var_8C
  loc_9DBB81: from_stack_1v = clsbase.RsFrmGet()
  loc_9DBB86: FLdPr var_88
  loc_9DBB89:  = Me.Fields
  loc_9DBB8E: FLdPr var_94
  loc_9DBB91: from_stack_2 = Me.Item(from_stack_1)
  loc_9DBB96: FLdPr var_A8
  loc_9DBB99:  = Me.Value
  loc_9DBB9E: FLdRfVar var_C8
  loc_9DBBA1: LitI4 &HD
  loc_9DBBA6: FLdRfVar var_B8
  loc_9DBBA9: ImpAdCallFPR4  = Chr()
  loc_9DBBAE: FLdRfVar var_B8
  loc_9DBBB1: ConcatVar var_D8
  loc_9DBBB5: LitI4 &HA
  loc_9DBBBA: FLdRfVar var_E8
  loc_9DBBBD: ImpAdCallFPR4  = Chr()
  loc_9DBBC2: FLdRfVar var_E8
  loc_9DBBC5: ConcatVar var_F8
  loc_9DBBC9: PopAdLdVar
  loc_9DBBCA: FLdPr Me
  loc_9DBBCD: MemLdRfVar from_stack_1.global_80
  loc_9DBBD0: LdPrVar
  loc_9DBBD2: LateMemCall
  loc_9DBBD8: FFreeAd var_88 = "": var_94 = ""
  loc_9DBBE1: FFreeVar var_C8 = "": var_B8 = "": var_D8 = "": var_E8 = ""
  loc_9DBBEE: FLdPr var_8C
  loc_9DBBF1: Call clsbase.MoveSiguiente()
  loc_9DBBF6: Branch loc_9DBB5A
  loc_9DBBF9: LitNothing
  loc_9DBBFB: FStAd var_8C 
  loc_9DBBFF: FLdPr Me
  loc_9DBC02: MemLdRfVar from_stack_1.global_80
  loc_9DBC05: LdPrVar
  loc_9DBC07: LateMemCall
  loc_9DBC0D: ExitProcHresult
  loc_9DBC0E: CI4UI1
End Sub

Public Sub GeneraHTML() 'A49E30
  'Data Table: 43D86C
  loc_A49BA8: FLdRfVar var_88
  loc_A49BAB: LitI2_Byte 0
  loc_A49BAD: LitI2_Byte &HFF
  loc_A49BAF: ImpAdLdI4 MemVar_C3D83C
  loc_A49BB2: FLdPr Me
  loc_A49BB5: MemLdRfVar from_stack_1.global_76
  loc_A49BB8: NewIfNullPr IFileSystem3
  loc_A49BBB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A49BC0: ILdRf var_88
  loc_A49BC3: FLdPr Me
  loc_A49BC6: MemStVarAd
  loc_A49BCA: FFree1Ad var_88
  loc_A49BCD: Call Proc_270_18_A4FB44()
  loc_A49BD2: FLdPr Me
  loc_A49BD5: MemLdRfVar from_stack_1.global_72
  loc_A49BD8: NewIfNullAd
  loc_A49BDB: FStAd var_8C 
  loc_A49BDF: FLdPr var_8C
  loc_A49BE2: Call clsbase.MoveFirst()
  loc_A49BE7: FLdRfVar var_8E
  loc_A49BEA: FLdPr var_8C
  loc_A49BED: from_stack_1 = clsbase.EOF
  loc_A49BF2: FLdI2 var_8E
  loc_A49BF5: NotI4
  loc_A49BF6: BranchF loc_A49D6E
  loc_A49BF9: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A49BFE: PopAdLdVar
  loc_A49BFF: FLdPr Me
  loc_A49C02: MemLdRfVar from_stack_1.htmFile
  loc_A49C05: LdPrVar
  loc_A49C07: LateMemCall
  loc_A49C0D: FLdRfVar var_C8
  loc_A49C10: FLdRfVar var_B8
  loc_A49C13: LitVarStr var_A0, "CucuPers"
  loc_A49C18: PopAdLdVar
  loc_A49C19: FLdRfVar var_B4
  loc_A49C1C: FLdRfVar var_88
  loc_A49C1F: FLdPr var_8C
  loc_A49C22: from_stack_1v = clsbase.RsFrmGet()
  loc_A49C27: FLdPr var_88
  loc_A49C2A:  = Me.Fields
  loc_A49C2F: FLdPr var_B4
  loc_A49C32: from_stack_2 = Me.Item(from_stack_1)
  loc_A49C37: FLdPr var_B8
  loc_A49C3A:  = Me.Value
  loc_A49C3F: LitI4 0
  loc_A49C44: LitI4 0
  loc_A49C49: LitI2_Byte 0
  loc_A49C4B: LitStr "right"
  loc_A49C4E: FLdRfVar var_C8
  loc_A49C51: CStrVarTmp
  loc_A49C52: FStStrNoPop var_CC
  loc_A49C55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A49C5A: CVarStr var_DC
  loc_A49C5D: PopAdLdVar
  loc_A49C5E: FLdPr Me
  loc_A49C61: MemLdRfVar from_stack_1.htmFile
  loc_A49C64: LdPrVar
  loc_A49C66: LateMemCall
  loc_A49C6C: FFree1Str var_CC
  loc_A49C6F: FFreeAd var_88 = "": var_B4 = ""
  loc_A49C78: FFreeVar var_C8 = ""
  loc_A49C7F: FLdRfVar var_C8
  loc_A49C82: FLdRfVar var_B8
  loc_A49C85: LitVarStr var_A0, "DetaProv"
  loc_A49C8A: PopAdLdVar
  loc_A49C8B: FLdRfVar var_B4
  loc_A49C8E: FLdRfVar var_88
  loc_A49C91: FLdPr var_8C
  loc_A49C94: from_stack_1v = clsbase.RsFrmGet()
  loc_A49C99: FLdPr var_88
  loc_A49C9C:  = Me.Fields
  loc_A49CA1: FLdPr var_B4
  loc_A49CA4: from_stack_2 = Me.Item(from_stack_1)
  loc_A49CA9: FLdPr var_B8
  loc_A49CAC:  = Me.Value
  loc_A49CB1: LitI4 0
  loc_A49CB6: LitI4 0
  loc_A49CBB: LitI2_Byte 0
  loc_A49CBD: LitStr "left"
  loc_A49CC0: FLdRfVar var_C8
  loc_A49CC3: CStrVarTmp
  loc_A49CC4: FStStrNoPop var_CC
  loc_A49CC7: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A49CCC: CVarStr var_DC
  loc_A49CCF: PopAdLdVar
  loc_A49CD0: FLdPr Me
  loc_A49CD3: MemLdRfVar from_stack_1.htmFile
  loc_A49CD6: LdPrVar
  loc_A49CD8: LateMemCall
  loc_A49CDE: FFree1Str var_CC
  loc_A49CE1: FFreeAd var_88 = "": var_B4 = ""
  loc_A49CEA: FFreeVar var_C8 = ""
  loc_A49CF1: FLdRfVar var_C8
  loc_A49CF4: FLdRfVar var_B8
  loc_A49CF7: LitVarStr var_A0, "Importe"
  loc_A49CFC: PopAdLdVar
  loc_A49CFD: FLdRfVar var_B4
  loc_A49D00: FLdRfVar var_88
  loc_A49D03: FLdPr var_8C
  loc_A49D06: from_stack_1v = clsbase.RsFrmGet()
  loc_A49D0B: FLdPr var_88
  loc_A49D0E:  = Me.Fields
  loc_A49D13: FLdPr var_B4
  loc_A49D16: from_stack_2 = Me.Item(from_stack_1)
  loc_A49D1B: FLdPr var_B8
  loc_A49D1E:  = Me.Value
  loc_A49D23: LitI4 0
  loc_A49D28: LitI4 0
  loc_A49D2D: LitI2_Byte 0
  loc_A49D2F: LitStr "right"
  loc_A49D32: FLdRfVar var_C8
  loc_A49D35: CStrVarTmp
  loc_A49D36: FStStrNoPop var_CC
  loc_A49D39: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A49D3E: CVarStr var_DC
  loc_A49D41: PopAdLdVar
  loc_A49D42: FLdPr Me
  loc_A49D45: MemLdRfVar from_stack_1.htmFile
  loc_A49D48: LdPrVar
  loc_A49D4A: LateMemCall
  loc_A49D50: FFree1Str var_CC
  loc_A49D53: FFreeAd var_88 = "": var_B4 = ""
  loc_A49D5C: FFreeVar var_C8 = ""
  loc_A49D63: FLdPr var_8C
  loc_A49D66: Call clsbase.MoveSiguiente()
  loc_A49D6B: Branch loc_A49BE7
  loc_A49D6E: LitNothing
  loc_A49D70: FStAd var_8C 
  loc_A49D74: LitVarStr var_A0, "</table>"
  loc_A49D79: PopAdLdVar
  loc_A49D7A: FLdPr Me
  loc_A49D7D: MemLdRfVar from_stack_1.htmFile
  loc_A49D80: LdPrVar
  loc_A49D82: LateMemCall
  loc_A49D88: LitVarStr var_A0, "<br>"
  loc_A49D8D: PopAdLdVar
  loc_A49D8E: FLdPr Me
  loc_A49D91: MemLdRfVar from_stack_1.htmFile
  loc_A49D94: LdPrVar
  loc_A49D96: LateMemCall
  loc_A49D9C: LitVarStr var_A0, "<table align=""center"">"
  loc_A49DA1: PopAdLdVar
  loc_A49DA2: FLdPr Me
  loc_A49DA5: MemLdRfVar from_stack_1.htmFile
  loc_A49DA8: LdPrVar
  loc_A49DAA: LateMemCall
  loc_A49DB0: LitVarStr var_A0, "<tr>"
  loc_A49DB5: PopAdLdVar
  loc_A49DB6: FLdPr Me
  loc_A49DB9: MemLdRfVar from_stack_1.htmFile
  loc_A49DBC: LdPrVar
  loc_A49DBE: LateMemCall
  loc_A49DC4: LitVarStr var_A0, "<th align=""right"" class=""Normal"">Monto total retenido: </th>"
  loc_A49DC9: PopAdLdVar
  loc_A49DCA: FLdPr Me
  loc_A49DCD: MemLdRfVar from_stack_1.htmFile
  loc_A49DD0: LdPrVar
  loc_A49DD2: LateMemCall
  loc_A49DD8: LitStr "<th align=""left"" class=""Totales"">"
  loc_A49DDB: FLdPr Me
  loc_A49DDE: MemLdStr global_104
  loc_A49DE1: ConcatStr
  loc_A49DE2: FStStrNoPop var_CC
  loc_A49DE5: LitStr "</th>"
  loc_A49DE8: ConcatStr
  loc_A49DE9: CVarStr var_C8
  loc_A49DEC: PopAdLdVar
  loc_A49DED: FLdPr Me
  loc_A49DF0: MemLdRfVar from_stack_1.htmFile
  loc_A49DF3: LdPrVar
  loc_A49DF5: LateMemCall
  loc_A49DFB: FFree1Str var_CC
  loc_A49DFE: FFree1Var var_C8 = ""
  loc_A49E01: LitVarStr var_A0, "</tr>"
  loc_A49E06: PopAdLdVar
  loc_A49E07: FLdPr Me
  loc_A49E0A: MemLdRfVar from_stack_1.htmFile
  loc_A49E0D: LdPrVar
  loc_A49E0F: LateMemCall
  loc_A49E15: Call Proc_270_19_982540()
  loc_A49E1A: FLdPr Me
  loc_A49E1D: MemLdRfVar from_stack_1.htmFile
  loc_A49E20: LdPrVar
  loc_A49E22: LateMemCall
  loc_A49E28: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A49E2D: ExitProcHresult
  loc_A49E2E: CCyR4
End Sub

Private Function Proc_270_18_A4FB44() 'A4FB44
  'Data Table: 43D86C
  loc_A4F894: LitVarStr var_94, "<html>"
  loc_A4F899: PopAdLdVar
  loc_A4F89A: FLdPr Me
  loc_A4F89D: MemLdRfVar from_stack_1.htmFile
  loc_A4F8A0: LdPrVar
  loc_A4F8A2: LateMemCall
  loc_A4F8A8: LitVarStr var_94, "<head>"
  loc_A4F8AD: PopAdLdVar
  loc_A4F8AE: FLdPr Me
  loc_A4F8B1: MemLdRfVar from_stack_1.htmFile
  loc_A4F8B4: LdPrVar
  loc_A4F8B6: LateMemCall
  loc_A4F8BC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A4F8C1: PopAdLdVar
  loc_A4F8C2: FLdPr Me
  loc_A4F8C5: MemLdRfVar from_stack_1.htmFile
  loc_A4F8C8: LdPrVar
  loc_A4F8CA: LateMemCall
  loc_A4F8D0: LitStr "<title>"
  loc_A4F8D3: FLdRfVar var_A8
  loc_A4F8D6: FLdPr Me
  loc_A4F8D9:  = Me.Caption
  loc_A4F8DE: ILdRf var_A8
  loc_A4F8E1: ConcatStr
  loc_A4F8E2: FStStrNoPop var_AC
  loc_A4F8E5: LitStr "</title>"
  loc_A4F8E8: ConcatStr
  loc_A4F8E9: CVarStr var_BC
  loc_A4F8EC: PopAdLdVar
  loc_A4F8ED: FLdPr Me
  loc_A4F8F0: MemLdRfVar from_stack_1.htmFile
  loc_A4F8F3: LdPrVar
  loc_A4F8F5: LateMemCall
  loc_A4F8FB: FFreeStr var_A8 = ""
  loc_A4F902: FFree1Var var_BC = ""
  loc_A4F905: LitStr vbNullString
  loc_A4F908: ILdRf Me
  loc_A4F90B: CastAd
  loc_A4F90E: FStAdFunc var_C0
  loc_A4F911: FLdRfVar var_C0
  loc_A4F914: ImpAdCallFPR4  = Proc_263_23_B3DAB8()
  loc_A4F919: FFree1Ad var_C0
  loc_A4F91C: LitI4 0
  loc_A4F921: FStStrCopy var_AC
  loc_A4F924: FLdRfVar var_AC
  loc_A4F927: LitI4 0
  loc_A4F92C: FStStrCopy var_A8
  loc_A4F92F: FLdRfVar var_A8
  loc_A4F932: LitI2_Byte &HFF
  loc_A4F934: PopTmpLdAd2 var_C2
  loc_A4F937: FLdPr Me
  loc_A4F93A: MemLdRfVar from_stack_1.htmFile
  loc_A4F93D: ImpAdCallFPR4  = Proc_263_6_A92790(, )
  loc_A4F942: FFreeStr var_A8 = ""
  loc_A4F949: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A4F94E: PopAdLdVar
  loc_A4F94F: FLdPr Me
  loc_A4F952: MemLdRfVar from_stack_1.htmFile
  loc_A4F955: LdPrVar
  loc_A4F957: LateMemCall
  loc_A4F95D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A4F962: PopAdLdVar
  loc_A4F963: FLdPr Me
  loc_A4F966: MemLdRfVar from_stack_1.htmFile
  loc_A4F969: LdPrVar
  loc_A4F96B: LateMemCall
  loc_A4F971: LitVarStr var_A4, "    <th colspan=""2"" width=""100" & Chr(37) & """ align=""center"" valign=""middle""><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A4F976: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A4F97B: FStVarCopyObj var_BC
  loc_A4F97E: FLdRfVar var_BC
  loc_A4F981: FLdRfVar var_D4
  loc_A4F984: ImpAdCallFPR4  = Ucase()
  loc_A4F989: FLdRfVar var_D4
  loc_A4F98C: ConcatVar var_E4
  loc_A4F990: PopAdLdVar
  loc_A4F991: FLdPr Me
  loc_A4F994: MemLdRfVar from_stack_1.htmFile
  loc_A4F997: LdPrVar
  loc_A4F999: LateMemCall
  loc_A4F99F: FFreeVar var_BC = "": var_D4 = ""
  loc_A4F9A8: LitVarStr var_94, "           <p>Declaración de Retenciones<br>SICOSS</p>"
  loc_A4F9AD: PopAdLdVar
  loc_A4F9AE: FLdPr Me
  loc_A4F9B1: MemLdRfVar from_stack_1.htmFile
  loc_A4F9B4: LdPrVar
  loc_A4F9B6: LateMemCall
  loc_A4F9BC: LitVarStr var_94, "      <hr></th>"
  loc_A4F9C1: PopAdLdVar
  loc_A4F9C2: FLdPr Me
  loc_A4F9C5: MemLdRfVar from_stack_1.htmFile
  loc_A4F9C8: LdPrVar
  loc_A4F9CA: LateMemCall
  loc_A4F9D0: LitVarStr var_94, "  </tr>"
  loc_A4F9D5: PopAdLdVar
  loc_A4F9D6: FLdPr Me
  loc_A4F9D9: MemLdRfVar from_stack_1.htmFile
  loc_A4F9DC: LdPrVar
  loc_A4F9DE: LateMemCall
  loc_A4F9E4: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A4F9E9: PopAdLdVar
  loc_A4F9EA: FLdPr Me
  loc_A4F9ED: MemLdRfVar from_stack_1.htmFile
  loc_A4F9F0: LdPrVar
  loc_A4F9F2: LateMemCall
  loc_A4F9F8: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_A4F9FB: FLdRfVar var_A8
  loc_A4F9FE: FLdPr Me
  loc_A4FA01: VCallAd Control_ID_cboPeriodo
  loc_A4FA04: FStAdFunc var_C0
  loc_A4FA07: FLdPr var_C0
  loc_A4FA0A:  = Me.Text
  loc_A4FA0F: ILdRf var_A8
  loc_A4FA12: ConcatStr
  loc_A4FA13: FStStrNoPop var_AC
  loc_A4FA16: LitStr "</span></th>"
  loc_A4FA19: ConcatStr
  loc_A4FA1A: CVarStr var_BC
  loc_A4FA1D: PopAdLdVar
  loc_A4FA1E: FLdPr Me
  loc_A4FA21: MemLdRfVar from_stack_1.htmFile
  loc_A4FA24: LdPrVar
  loc_A4FA26: LateMemCall
  loc_A4FA2C: FFreeStr var_A8 = ""
  loc_A4FA33: FFree1Ad var_C0
  loc_A4FA36: FFree1Var var_BC = ""
  loc_A4FA39: LitStr "    <th align=""right"">Mes: <span class=""Normal"">"
  loc_A4FA3C: FLdRfVar var_A8
  loc_A4FA3F: FLdPr Me
  loc_A4FA42: VCallAd Control_ID_cboMes
  loc_A4FA45: FStAdFunc var_C0
  loc_A4FA48: FLdPr var_C0
  loc_A4FA4B:  = Me.Text
  loc_A4FA50: ILdRf var_A8
  loc_A4FA53: ConcatStr
  loc_A4FA54: FStStrNoPop var_AC
  loc_A4FA57: LitStr "</span></th>"
  loc_A4FA5A: ConcatStr
  loc_A4FA5B: CVarStr var_BC
  loc_A4FA5E: PopAdLdVar
  loc_A4FA5F: FLdPr Me
  loc_A4FA62: MemLdRfVar from_stack_1.htmFile
  loc_A4FA65: LdPrVar
  loc_A4FA67: LateMemCall
  loc_A4FA6D: FFreeStr var_A8 = ""
  loc_A4FA74: FFree1Ad var_C0
  loc_A4FA77: FFree1Var var_BC = ""
  loc_A4FA7A: LitVarStr var_94, "  </tr>"
  loc_A4FA7F: PopAdLdVar
  loc_A4FA80: FLdPr Me
  loc_A4FA83: MemLdRfVar from_stack_1.htmFile
  loc_A4FA86: LdPrVar
  loc_A4FA88: LateMemCall
  loc_A4FA8E: LitVarStr var_94, "</table>"
  loc_A4FA93: PopAdLdVar
  loc_A4FA94: FLdPr Me
  loc_A4FA97: MemLdRfVar from_stack_1.htmFile
  loc_A4FA9A: LdPrVar
  loc_A4FA9C: LateMemCall
  loc_A4FAA2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A4FAA7: PopAdLdVar
  loc_A4FAA8: FLdPr Me
  loc_A4FAAB: MemLdRfVar from_stack_1.htmFile
  loc_A4FAAE: LdPrVar
  loc_A4FAB0: LateMemCall
  loc_A4FAB6: LitVarStr var_94, "  <THEAD>"
  loc_A4FABB: PopAdLdVar
  loc_A4FABC: FLdPr Me
  loc_A4FABF: MemLdRfVar from_stack_1.htmFile
  loc_A4FAC2: LdPrVar
  loc_A4FAC4: LateMemCall
  loc_A4FACA: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A4FACF: PopAdLdVar
  loc_A4FAD0: FLdPr Me
  loc_A4FAD3: MemLdRfVar from_stack_1.htmFile
  loc_A4FAD6: LdPrVar
  loc_A4FAD8: LateMemCall
  loc_A4FADE: LitVarStr var_94, "    <th>CUIL</th>"
  loc_A4FAE3: PopAdLdVar
  loc_A4FAE4: FLdPr Me
  loc_A4FAE7: MemLdRfVar from_stack_1.htmFile
  loc_A4FAEA: LdPrVar
  loc_A4FAEC: LateMemCall
  loc_A4FAF2: LitVarStr var_94, "    <th>Apellido y Nombre</th>"
  loc_A4FAF7: PopAdLdVar
  loc_A4FAF8: FLdPr Me
  loc_A4FAFB: MemLdRfVar from_stack_1.htmFile
  loc_A4FAFE: LdPrVar
  loc_A4FB00: LateMemCall
  loc_A4FB06: LitVarStr var_94, "    <th>Importe</th>"
  loc_A4FB0B: PopAdLdVar
  loc_A4FB0C: FLdPr Me
  loc_A4FB0F: MemLdRfVar from_stack_1.htmFile
  loc_A4FB12: LdPrVar
  loc_A4FB14: LateMemCall
  loc_A4FB1A: LitVarStr var_94, "  </tr>"
  loc_A4FB1F: PopAdLdVar
  loc_A4FB20: FLdPr Me
  loc_A4FB23: MemLdRfVar from_stack_1.htmFile
  loc_A4FB26: LdPrVar
  loc_A4FB28: LateMemCall
  loc_A4FB2E: LitVarStr var_94, "  </THEAD>"
  loc_A4FB33: PopAdLdVar
  loc_A4FB34: FLdPr Me
  loc_A4FB37: MemLdRfVar from_stack_1.htmFile
  loc_A4FB3A: LdPrVar
  loc_A4FB3C: LateMemCall
  loc_A4FB42: ExitProcHresult
End Function

Private Function Proc_270_19_982540() '982540
  'Data Table: 43D86C
  loc_982500: LitVarStr var_94, "</table>"
  loc_982505: PopAdLdVar
  loc_982506: FLdPr Me
  loc_982509: MemLdRfVar from_stack_1.htmFile
  loc_98250C: LdPrVar
  loc_98250E: LateMemCall
  loc_982514: LitVarStr var_94, "</body>"
  loc_982519: PopAdLdVar
  loc_98251A: FLdPr Me
  loc_98251D: MemLdRfVar from_stack_1.htmFile
  loc_982520: LdPrVar
  loc_982522: LateMemCall
  loc_982528: LitVarStr var_94, "</html>"
  loc_98252D: PopAdLdVar
  loc_98252E: FLdPr Me
  loc_982531: MemLdRfVar from_stack_1.htmFile
  loc_982534: LdPrVar
  loc_982536: LateMemCall
  loc_98253C: ExitProcHresult
End Function
