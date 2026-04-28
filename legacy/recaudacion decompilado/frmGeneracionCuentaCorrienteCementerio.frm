VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmGeneracionCuentaCorrienteCementerio
  Caption = "Generación  en la Cuenta Corriente de Cementerio"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 348
  ClientWidth = 13560
  ClientHeight = 9300
  Begin VB.CommandButton cmdSalir
    Left = 12360
    Top = 600
    Width = 975
    Height = 855
    TabIndex = 2
    Picture = "frmGeneracionCuentaCorrienteCementerio.frx":0000
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.Frame Frame3
    Caption = "GENERACION DEL AFORO EN LA CUENTA CORRIENTE"
    Left = 600
    Top = 480
    Width = 11175
    Height = 3855
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,6
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton CalculoCmd
      Left = 4800
      Top = 3120
      Width = 1335
      Height = 495
      TabIndex = 3
      Picture = "frmGeneracionCuentaCorrienteCementerio.frx":0252
      Style = 1
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 720
      Top = 480
      Width = 9360
      Height = 1515
      TabIndex = 1
      OleObjectBlob = "frmGeneracionCuentaCorrienteCementerio.frx":0580
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 720
      Top = 2280
      Width = 9345
      Height = 495
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "frmGeneracionCuentaCorrienteCementerio.frx":0886
    End
  End
End

Attribute VB_Name = "frmGeneracionCuentaCorrienteCementerio"


Private Sub CalculoCmd_Click() 'BCE9E8
  'Data Table: 40994C
  loc_BCE338: LitI4 0
  loc_BCE33D: FStR4 var_8C
  loc_BCE340: FLdRfVar var_A2
  loc_BCE343: FLdPr Me
  loc_BCE346: MemLdRfVar from_stack_1.global_52
  loc_BCE349: NewIfNullPr clsliquidacion
  loc_BCE34C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BCE351: LitVar_Missing var_118
  loc_BCE354: LitVar_Missing var_F8
  loc_BCE357: LitVar_Missing var_D8
  loc_BCE35A: LitI4 4
  loc_BCE35F: LitStr "Esta seguro que desea generar en la cuenta corriente la emisión masiva. Para el período: "
  loc_BCE362: FLdI2 var_A2
  loc_BCE365: CStrUI1
  loc_BCE367: FStStrNoPop var_A8
  loc_BCE36A: ConcatStr
  loc_BCE36B: CVarStr var_B8
  loc_BCE36E: ImpAdCallI2 MsgBox(, , , , )
  loc_BCE373: LitI4 6
  loc_BCE378: EqI4
  loc_BCE379: FFree1Str var_A8
  loc_BCE37C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BCE387: BranchF loc_BCE9E4
  loc_BCE38A: FLdRfVar var_A2
  loc_BCE38D: FLdPr Me
  loc_BCE390: MemLdRfVar from_stack_1.global_52
  loc_BCE393: NewIfNullPr clsliquidacion
  loc_BCE396: from_stack_1 = clsliquidacion.CodiTili
  loc_BCE39B: FLdUI1
  loc_BCE39F: LitI2_Byte 4
  loc_BCE3A1: CUI1I2
  loc_BCE3A3: ImpAdCallFPR4  = Proc_270_72_A8BDBC()
  loc_BCE3A8: FStFPR8 var_A0
  loc_BCE3AB: LitStr "SELECT SUM(TotaLice) as TotaBole, PeriLiqu, CodiTili, NumeLiqu, CodiDifu, TipoVenc, CucuPers, ActuLice, FeveLice, TipoLice, EmitLice FROM liquceme "
  loc_BCE3AE: LitStr " WHERE PeriLiqu = "
  loc_BCE3B1: ConcatStr
  loc_BCE3B2: FStStrNoPop var_A8
  loc_BCE3B5: FLdRfVar var_A2
  loc_BCE3B8: FLdPr Me
  loc_BCE3BB: MemLdRfVar from_stack_1.global_52
  loc_BCE3BE: NewIfNullPr clsliquidacion
  loc_BCE3C1: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BCE3C6: FLdI2 var_A2
  loc_BCE3C9: CStrUI1
  loc_BCE3CB: FStStrNoPop var_11C
  loc_BCE3CE: ConcatStr
  loc_BCE3CF: FStStrNoPop var_120
  loc_BCE3D2: LitStr " AND CodiTili = "
  loc_BCE3D5: ConcatStr
  loc_BCE3D6: FStStrNoPop var_128
  loc_BCE3D9: FLdRfVar var_122
  loc_BCE3DC: FLdPr Me
  loc_BCE3DF: MemLdRfVar from_stack_1.global_52
  loc_BCE3E2: NewIfNullPr clsliquidacion
  loc_BCE3E5: from_stack_1 = clsliquidacion.CodiTili
  loc_BCE3EA: FLdUI1
  loc_BCE3EE: CStrI2
  loc_BCE3F0: FStStrNoPop var_12C
  loc_BCE3F3: ConcatStr
  loc_BCE3F4: FStStrNoPop var_130
  loc_BCE3F7: LitStr " AND NumeLiqu = "
  loc_BCE3FA: ConcatStr
  loc_BCE3FB: FStStrNoPop var_138
  loc_BCE3FE: FLdRfVar var_132
  loc_BCE401: FLdPr Me
  loc_BCE404: MemLdRfVar from_stack_1.global_52
  loc_BCE407: NewIfNullPr clsliquidacion
  loc_BCE40A: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BCE40F: FLdI2 var_132
  loc_BCE412: CStrUI1
  loc_BCE414: FStStrNoPop var_13C
  loc_BCE417: ConcatStr
  loc_BCE418: FStStrNoPop var_140
  loc_BCE41B: LitStr " AND ActuLice = 'No' "
  loc_BCE41E: ConcatStr
  loc_BCE41F: FStStrNoPop var_144
  loc_BCE422: LitStr " GROUP BY CodiDifu"
  loc_BCE425: ConcatStr
  loc_BCE426: FStStrNoPop var_148
  loc_BCE429: LitStr " ORDER BY LocaLice, CallLice, NucaLice"
  loc_BCE42C: ConcatStr
  loc_BCE42D: FStStrNoPop var_14C
  loc_BCE430: FLdPr Me
  loc_BCE433: MemLdRfVar from_stack_1.global_56
  loc_BCE436: NewIfNullPr clsliquceme
  loc_BCE439: Call clsliquceme.RedefineRS(from_stack_1v)
  loc_BCE43E: FFreeStr var_A8 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BCE459: FLdRfVar var_154
  loc_BCE45C: FLdRfVar var_150
  loc_BCE45F: FLdPr Me
  loc_BCE462: MemLdRfVar from_stack_1.global_56
  loc_BCE465: NewIfNullPr clsliquceme
  loc_BCE468: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE46D: FLdPr var_150
  loc_BCE470:  = Me.RecordCount
  loc_BCE475: ILdRf var_154
  loc_BCE478: LitI4 0
  loc_BCE47D: GtI4
  loc_BCE47E: FFree1Ad var_150
  loc_BCE481: BranchF loc_BCE921
  loc_BCE484: LitI2_Byte 0
  loc_BCE486: FLdPr Me
  loc_BCE489: VCallAd Control_ID_CalculoCmd
  loc_BCE48C: FStAdFunc var_150
  loc_BCE48F: FLdPr var_150
  loc_BCE492: Me.Enabled = from_stack_1b
  loc_BCE497: FFree1Ad var_150
  loc_BCE49A: LitVar_TRUE var_C8
  loc_BCE49D: PopAdLdVar
  loc_BCE49E: FLdPr Me
  loc_BCE4A1: VCallAd Control_ID_ProgressBar
  loc_BCE4A4: FStAdFunc var_150
  loc_BCE4A7: FLdPr var_150
  loc_BCE4AA: LateIdSt
  loc_BCE4AF: FFree1Ad var_150
  loc_BCE4B2: LitI2_Byte 0
  loc_BCE4B4: CR8I2
  loc_BCE4B5: CVarR4
  loc_BCE4B9: PopAdLdVar
  loc_BCE4BA: FLdPr Me
  loc_BCE4BD: VCallAd Control_ID_ProgressBar
  loc_BCE4C0: FStAdFunc var_150
  loc_BCE4C3: FLdPr var_150
  loc_BCE4C6: LateIdSt
  loc_BCE4CB: FFree1Ad var_150
  loc_BCE4CE: FLdRfVar var_154
  loc_BCE4D1: FLdRfVar var_150
  loc_BCE4D4: FLdPr Me
  loc_BCE4D7: MemLdRfVar from_stack_1.global_56
  loc_BCE4DA: NewIfNullPr clsliquceme
  loc_BCE4DD: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE4E2: FLdPr var_150
  loc_BCE4E5:  = Me.RecordCount
  loc_BCE4EA: ILdRf var_154
  loc_BCE4ED: CR8I4
  loc_BCE4EE: CVarR4
  loc_BCE4F2: PopAdLdVar
  loc_BCE4F3: FLdPr Me
  loc_BCE4F6: VCallAd Control_ID_ProgressBar
  loc_BCE4F9: FStAdFunc var_158
  loc_BCE4FC: FLdPr var_158
  loc_BCE4FF: LateIdSt
  loc_BCE504: FFreeAd var_150 = ""
  loc_BCE50B: LitI2_Byte 0
  loc_BCE50D: CR8I2
  loc_BCE50E: CVarR4
  loc_BCE512: PopAdLdVar
  loc_BCE513: FLdPr Me
  loc_BCE516: VCallAd Control_ID_ProgressBar
  loc_BCE519: FStAdFunc var_150
  loc_BCE51C: FLdPr var_150
  loc_BCE51F: LateIdSt
  loc_BCE524: FFree1Ad var_150
  loc_BCE527: FLdRfVar var_150
  loc_BCE52A: FLdPr Me
  loc_BCE52D: MemLdRfVar from_stack_1.global_56
  loc_BCE530: NewIfNullPr clsliquceme
  loc_BCE533: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE538: FLdPr var_150
  loc_BCE53B: Me.MoveFirst
  loc_BCE540: FFree1Ad var_150
  loc_BCE543: LitVarStr var_E8, " UPDATE liquidacion SET ActuLiqu = 'Si' WHERE PeriLiqu = "
  loc_BCE548: FLdRfVar var_B8
  loc_BCE54B: FLdRfVar var_15C
  loc_BCE54E: LitVarStr var_C8, "PeriLiqu"
  loc_BCE553: PopAdLdVar
  loc_BCE554: FLdRfVar var_158
  loc_BCE557: FLdRfVar var_150
  loc_BCE55A: FLdPr Me
  loc_BCE55D: MemLdRfVar from_stack_1.global_56
  loc_BCE560: NewIfNullPr clsliquceme
  loc_BCE563: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE568: FLdPr var_150
  loc_BCE56B:  = Me.Fields
  loc_BCE570: FLdPr var_158
  loc_BCE573: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE578: FLdPr var_15C
  loc_BCE57B:  = Me.Value
  loc_BCE580: FLdRfVar var_B8
  loc_BCE583: ConcatVar var_D8
  loc_BCE587: LitVarStr var_108, " AND CodiOfic = 4 AND CodiTili = "
  loc_BCE58C: ConcatVar var_F8
  loc_BCE590: FLdRfVar var_118
  loc_BCE593: FLdRfVar var_178
  loc_BCE596: LitVarStr var_174, "CodiTili"
  loc_BCE59B: PopAdLdVar
  loc_BCE59C: FLdRfVar var_164
  loc_BCE59F: FLdRfVar var_160
  loc_BCE5A2: FLdPr Me
  loc_BCE5A5: MemLdRfVar from_stack_1.global_56
  loc_BCE5A8: NewIfNullPr clsliquceme
  loc_BCE5AB: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE5B0: FLdPr var_160
  loc_BCE5B3:  = Me.Fields
  loc_BCE5B8: FLdPr var_164
  loc_BCE5BB: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE5C0: FLdPr var_178
  loc_BCE5C3:  = Me.Value
  loc_BCE5C8: FLdRfVar var_118
  loc_BCE5CB: ConcatVar var_188
  loc_BCE5CF: LitVarStr var_198, " AND NumeLiqu = "
  loc_BCE5D4: ConcatVar var_1A8
  loc_BCE5D8: FLdRfVar var_1D4
  loc_BCE5DB: FLdRfVar var_1C4
  loc_BCE5DE: LitVarStr var_1C0, "NumeLiqu"
  loc_BCE5E3: PopAdLdVar
  loc_BCE5E4: FLdRfVar var_1B0
  loc_BCE5E7: FLdRfVar var_1AC
  loc_BCE5EA: FLdPr Me
  loc_BCE5ED: MemLdRfVar from_stack_1.global_56
  loc_BCE5F0: NewIfNullPr clsliquceme
  loc_BCE5F3: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE5F8: FLdPr var_1AC
  loc_BCE5FB:  = Me.Fields
  loc_BCE600: FLdPr var_1B0
  loc_BCE603: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE608: FLdPr var_1C4
  loc_BCE60B:  = Me.Value
  loc_BCE610: FLdRfVar var_1D4
  loc_BCE613: ConcatVar var_1E4
  loc_BCE617: LitVarStr var_1F4, ";"
  loc_BCE61C: ConcatVar var_204
  loc_BCE620: CStrVarVal var_A8
  loc_BCE624: FLdPr Me
  loc_BCE627: MemLdRfVar from_stack_1.global_56
  loc_BCE62A: NewIfNullPr clsliquceme
  loc_BCE62D: Call clsliquceme.EjecutarRsCls(from_stack_1v)
  loc_BCE632: FFree1Str var_A8
  loc_BCE635: FFreeAd var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_178 = "": var_1AC = "": var_1B0 = ""
  loc_BCE64A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1D4 = "": var_1E4 = ""
  loc_BCE65F: FLdRfVar var_B8
  loc_BCE662: FLdRfVar var_15C
  loc_BCE665: LitVarStr var_C8, "PeriLiqu"
  loc_BCE66A: PopAdLdVar
  loc_BCE66B: FLdRfVar var_158
  loc_BCE66E: FLdRfVar var_150
  loc_BCE671: FLdPr Me
  loc_BCE674: MemLdRfVar from_stack_1.global_56
  loc_BCE677: NewIfNullPr clsliquceme
  loc_BCE67A: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE67F: FLdPr var_150
  loc_BCE682:  = Me.Fields
  loc_BCE687: FLdPr var_158
  loc_BCE68A: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE68F: FLdPr var_15C
  loc_BCE692:  = Me.Value
  loc_BCE697: FLdRfVar var_B8
  loc_BCE69A: CI2Var
  loc_BCE69B: FStI2 var_92
  loc_BCE69E: FFreeAd var_150 = "": var_158 = ""
  loc_BCE6A7: FFree1Var var_B8 = ""
  loc_BCE6AA: FLdRfVar var_A2
  loc_BCE6AD: FLdRfVar var_150
  loc_BCE6B0: FLdPr Me
  loc_BCE6B3: MemLdRfVar from_stack_1.global_56
  loc_BCE6B6: NewIfNullPr clsliquceme
  loc_BCE6B9: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE6BE: FLdPr var_150
  loc_BCE6C1:  = Me.EOF
  loc_BCE6C6: FLdI2 var_A2
  loc_BCE6C9: NotI4
  loc_BCE6CA: FFree1Ad var_150
  loc_BCE6CD: BranchF loc_BCE921
  loc_BCE6D0: ILdRf var_98
  loc_BCE6D3: CR8I4
  loc_BCE6D4: CVarR4
  loc_BCE6D8: PopAdLdVar
  loc_BCE6D9: ImpAdLdRf MemVar_D9357C
  loc_BCE6DC: NewIfNullPr frmGeneracionCuentaCorrienteCementerio
  loc_BCE6DF: VCallAd Control_ID_ProgressBar
  loc_BCE6E2: FStAdFunc var_150
  loc_BCE6E5: FLdPr var_150
  loc_BCE6E8: LateIdSt
  loc_BCE6ED: FFree1Ad var_150
  loc_BCE6F0: ILdRf var_98
  loc_BCE6F3: LitI4 1
  loc_BCE6F8: AddI4
  loc_BCE6F9: FStR4 var_98
  loc_BCE6FC: FLdRfVar var_B8
  loc_BCE6FF: FLdRfVar var_15C
  loc_BCE702: LitVarStr var_C8, "TotaBole"
  loc_BCE707: PopAdLdVar
  loc_BCE708: FLdRfVar var_158
  loc_BCE70B: FLdRfVar var_150
  loc_BCE70E: FLdPr Me
  loc_BCE711: MemLdRfVar from_stack_1.global_56
  loc_BCE714: NewIfNullPr clsliquceme
  loc_BCE717: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE71C: FLdPr var_150
  loc_BCE71F:  = Me.Fields
  loc_BCE724: FLdPr var_158
  loc_BCE727: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE72C: FLdPr var_15C
  loc_BCE72F:  = Me.Value
  loc_BCE734: FLdRfVar var_B8
  loc_BCE737: LitVarI2 var_E8, 0
  loc_BCE73C: HardType
  loc_BCE73D: GtVar var_D8
  loc_BCE741: FLdRfVar var_F8
  loc_BCE744: FLdRfVar var_178
  loc_BCE747: LitVarStr var_108, "EmitLice"
  loc_BCE74C: PopAdLdVar
  loc_BCE74D: FLdRfVar var_164
  loc_BCE750: FLdRfVar var_160
  loc_BCE753: FLdPr Me
  loc_BCE756: MemLdRfVar from_stack_1.global_56
  loc_BCE759: NewIfNullPr clsliquceme
  loc_BCE75C: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE761: FLdPr var_160
  loc_BCE764:  = Me.Fields
  loc_BCE769: FLdPr var_164
  loc_BCE76C: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE771: FLdPr var_178
  loc_BCE774:  = Me.Value
  loc_BCE779: FLdRfVar var_F8
  loc_BCE77C: FnCIntVar
  loc_BCE77E: LitI2_Byte 1
  loc_BCE780: EqI2
  loc_BCE781: CVarBoolI2 var_174
  loc_BCE785: AndVar var_118
  loc_BCE789: CBoolVarNull
  loc_BCE78B: FFreeAd var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = ""
  loc_BCE79A: FFreeVar var_B8 = "": var_F8 = ""
  loc_BCE7A3: BranchF loc_BCE7BB
  loc_BCE7A6: ILdRf var_8C
  loc_BCE7A9: LitI4 1
  loc_BCE7AE: AddI4
  loc_BCE7AF: FStR4 var_8C
  loc_BCE7B2: ILdRf var_8C
  loc_BCE7B5: FStR4 var_90
  loc_BCE7B8: Branch loc_BCE7C3
  loc_BCE7BB: LitI4 0
  loc_BCE7C0: FStR4 var_90
  loc_BCE7C3: FLdRfVar var_B8
  loc_BCE7C6: FLdRfVar var_15C
  loc_BCE7C9: LitVarStr var_C8, "PeriLiqu"
  loc_BCE7CE: PopAdLdVar
  loc_BCE7CF: FLdRfVar var_158
  loc_BCE7D2: FLdRfVar var_150
  loc_BCE7D5: FLdPr Me
  loc_BCE7D8: MemLdRfVar from_stack_1.global_56
  loc_BCE7DB: NewIfNullPr clsliquceme
  loc_BCE7DE: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE7E3: FLdPr var_150
  loc_BCE7E6:  = Me.Fields
  loc_BCE7EB: FLdPr var_158
  loc_BCE7EE: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE7F3: FLdPr var_15C
  loc_BCE7F6:  = Me.Value
  loc_BCE7FB: FLdRfVar var_D8
  loc_BCE7FE: FLdRfVar var_178
  loc_BCE801: LitVarStr var_E8, "CodiTili"
  loc_BCE806: PopAdLdVar
  loc_BCE807: FLdRfVar var_164
  loc_BCE80A: FLdRfVar var_160
  loc_BCE80D: FLdPr Me
  loc_BCE810: MemLdRfVar from_stack_1.global_56
  loc_BCE813: NewIfNullPr clsliquceme
  loc_BCE816: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE81B: FLdPr var_160
  loc_BCE81E:  = Me.Fields
  loc_BCE823: FLdPr var_164
  loc_BCE826: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE82B: FLdPr var_178
  loc_BCE82E:  = Me.Value
  loc_BCE833: FLdRfVar var_F8
  loc_BCE836: FLdRfVar var_1C4
  loc_BCE839: LitVarStr var_108, "NumeLiqu"
  loc_BCE83E: PopAdLdVar
  loc_BCE83F: FLdRfVar var_1B0
  loc_BCE842: FLdRfVar var_1AC
  loc_BCE845: FLdPr Me
  loc_BCE848: MemLdRfVar from_stack_1.global_56
  loc_BCE84B: NewIfNullPr clsliquceme
  loc_BCE84E: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE853: FLdPr var_1AC
  loc_BCE856:  = Me.Fields
  loc_BCE85B: FLdPr var_1B0
  loc_BCE85E: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE863: FLdPr var_1C4
  loc_BCE866:  = Me.Value
  loc_BCE86B: FLdRfVar var_118
  loc_BCE86E: FLdRfVar var_210
  loc_BCE871: LitVarStr var_174, "CodiDifu"
  loc_BCE876: PopAdLdVar
  loc_BCE877: FLdRfVar var_20C
  loc_BCE87A: FLdRfVar var_208
  loc_BCE87D: FLdPr Me
  loc_BCE880: MemLdRfVar from_stack_1.global_56
  loc_BCE883: NewIfNullPr clsliquceme
  loc_BCE886: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE88B: FLdPr var_208
  loc_BCE88E:  = Me.Fields
  loc_BCE893: FLdPr var_20C
  loc_BCE896: from_stack_2 = Me.Item(from_stack_1)
  loc_BCE89B: FLdPr var_210
  loc_BCE89E:  = Me.Value
  loc_BCE8A3: ILdRf var_88
  loc_BCE8A6: FLdRfVar var_A8
  loc_BCE8A9: FLdR8 var_A0
  loc_BCE8AC: FLdI2 var_92
  loc_BCE8AF: ILdRf var_90
  loc_BCE8B2: FLdRfVar var_118
  loc_BCE8B5: CI4Var
  loc_BCE8B7: FLdRfVar var_F8
  loc_BCE8BA: CI2Var
  loc_BCE8BB: FLdRfVar var_D8
  loc_BCE8BE: CUI1Var
  loc_BCE8C0: FLdRfVar var_B8
  loc_BCE8C3: CI2Var
  loc_BCE8C4: FLdPr Me
  loc_BCE8C7: MemLdRfVar from_stack_1.global_56
  loc_BCE8CA: NewIfNullPr clsliquceme
  loc_BCE8CD: from_stack_8v = clsliquceme.GeneracionCuentaCorriente(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BCE8D2: ILdRf var_A8
  loc_BCE8D5: ConcatStr
  loc_BCE8D6: FStStr var_88
  loc_BCE8D9: FFree1Str var_A8
  loc_BCE8DC: FFreeAd var_150 = "": var_158 = "": var_160 = "": var_164 = "": var_1AC = "": var_1B0 = "": var_208 = "": var_20C = "": var_15C = "": var_178 = "": var_1C4 = ""
  loc_BCE8F7: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BCE902: FLdRfVar var_150
  loc_BCE905: FLdPr Me
  loc_BCE908: MemLdRfVar from_stack_1.global_56
  loc_BCE90B: NewIfNullPr clsliquceme
  loc_BCE90E: from_stack_1v = clsliquceme.RsFrmGet()
  loc_BCE913: FLdPr var_150
  loc_BCE916: Me.MoveNext
  loc_BCE91B: FFree1Ad var_150
  loc_BCE91E: Branch loc_BCE6AA
  loc_BCE921: ILdRf var_88
  loc_BCE924: LitStr vbNullString
  loc_BCE927: NeStr
  loc_BCE929: BranchF loc_BCE934
  loc_BCE92C: ILdRf var_88
  loc_BCE92F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BCE934: LitVar_FALSE
  loc_BCE938: PopAdLdVar
  loc_BCE939: FLdPr Me
  loc_BCE93C: VCallAd Control_ID_ProgressBar
  loc_BCE93F: FStAdFunc var_150
  loc_BCE942: FLdPr var_150
  loc_BCE945: LateIdSt
  loc_BCE94A: FFree1Ad var_150
  loc_BCE94D: LitStr "Proceso Terminado. Verifique en la cuenta corriente la generación de los aforos"
  loc_BCE950: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BCE955: LitI2_Byte &HFF
  loc_BCE957: FLdPr Me
  loc_BCE95A: VCallAd Control_ID_CalculoCmd
  loc_BCE95D: FStAdFunc var_150
  loc_BCE960: FLdPr var_150
  loc_BCE963: Me.Enabled = from_stack_1b
  loc_BCE968: FFree1Ad var_150
  loc_BCE96B: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_BCE96E: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili WHERE liquidacion.CodiOfic = 4 AND liquidacion.ActuLiqu = 'No' ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_BCE971: ConcatStr
  loc_BCE972: FStStrNoPop var_A8
  loc_BCE975: FLdPr Me
  loc_BCE978: MemLdRfVar from_stack_1.global_52
  loc_BCE97B: NewIfNullPr clsliquidacion
  loc_BCE97E: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BCE983: FFree1Str var_A8
  loc_BCE986: LitI4 0
  loc_BCE98B: LitI4 1
  loc_BCE990: FLdRfVar var_214
  loc_BCE993: Redim
  loc_BCE99D: FLdPr Me
  loc_BCE9A0: MemLdRfVar from_stack_1.global_52
  loc_BCE9A3: NewIfNullAd
  loc_BCE9A6: FStAd var_150 
  loc_BCE9AA: FLdRfVar var_150
  loc_BCE9AD: CVarRef
  loc_BCE9B2: ParmAry1St
  loc_BCE9B8: FLdPr Me
  loc_BCE9BB: VCallAd Control_ID_dgdABMS
  loc_BCE9BE: CVarAd
  loc_BCE9C2: ParmAry1St
  loc_BCE9C8: FLdRfVar var_214
  loc_BCE9CB: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BCE9D0: ILdRf var_150
  loc_BCE9D3: CastAd
  loc_BCE9D6: FLdPr Me
  loc_BCE9D9: MemStAdFunc
  loc_BCE9DD: FLdRfVar var_214
  loc_BCE9E0: Erase
  loc_BCE9E1: FFree1Ad var_150
  loc_BCE9E4: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8F0D4
  'Data Table: 40994C
  loc_A8F044: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_A8F047: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili "
  loc_A8F04A: ConcatStr
  loc_A8F04B: FStStrNoPop var_88
  loc_A8F04E: LitStr " WHERE liquidacion.CodiOfic = 4 AND liquidacion.ActuLiqu = 'No' "
  loc_A8F051: ConcatStr
  loc_A8F052: FStStrNoPop var_8C
  loc_A8F055: LitStr " ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_A8F058: ConcatStr
  loc_A8F059: FStStrNoPop var_90
  loc_A8F05C: FLdPr Me
  loc_A8F05F: MemLdRfVar from_stack_1.global_52
  loc_A8F062: NewIfNullPr clsliquidacion
  loc_A8F065: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A8F06A: FFreeStr var_88 = "": var_8C = ""
  loc_A8F073: LitI4 0
  loc_A8F078: LitI4 1
  loc_A8F07D: FLdRfVar var_94
  loc_A8F080: Redim
  loc_A8F08A: FLdPr Me
  loc_A8F08D: MemLdRfVar from_stack_1.global_52
  loc_A8F090: NewIfNullAd
  loc_A8F093: FStAd var_98 
  loc_A8F097: FLdRfVar var_98
  loc_A8F09A: CVarRef
  loc_A8F09F: ParmAry1St
  loc_A8F0A5: FLdPr Me
  loc_A8F0A8: VCallAd Control_ID_dgdABMS
  loc_A8F0AB: CVarAd
  loc_A8F0AF: ParmAry1St
  loc_A8F0B5: FLdRfVar var_94
  loc_A8F0B8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8F0BD: ILdRf var_98
  loc_A8F0C0: CastAd
  loc_A8F0C3: FLdPr Me
  loc_A8F0C6: MemStAdFunc
  loc_A8F0CA: FLdRfVar var_94
  loc_A8F0CD: Erase
  loc_A8F0CE: FFree1Ad var_98
  loc_A8F0D1: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BA5D4
  'Data Table: 40994C
  loc_9BA5C0: ILdI2 KeyCode
  loc_9BA5C3: CI4UI1
  loc_9BA5C4: LitI4 &H78
  loc_9BA5C9: EqI4
  loc_9BA5CA: BranchF loc_9BA5D2
  loc_9BA5CD: Call cmdSalir_Click()
  loc_9BA5D2: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9CA050
  'Data Table: 40994C
  loc_9CA038: ILdRf Me
  loc_9CA03B: FStAdNoPop
  loc_9CA03F: ImpAdLdRf MemVar_D9C5D8
  loc_9CA042: NewIfNullPr Global
  loc_9CA045: Global.Unload from_stack_1
  loc_9CA04A: FFree1Ad var_88
  loc_9CA04D: ExitProcHresult
End Sub
