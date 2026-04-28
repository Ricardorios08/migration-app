VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmGeneracionCuentaCorrienteComercio
  Caption = "Generación  en la Cuenta Corriente de derechos generales"
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
    Picture = "frmGeneracionCuentaCorrienteComercio.frx":0000
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
      Picture = "frmGeneracionCuentaCorrienteComercio.frx":0252
      Style = 1
    End
    Begin MSDataGridLib.DataGrid dgdABMS
      Left = 720
      Top = 480
      Width = 9360
      Height = 1515
      TabIndex = 1
      OleObjectBlob = "frmGeneracionCuentaCorrienteComercio.frx":0580
    End
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 720
      Top = 2280
      Width = 9345
      Height = 495
      Visible = 0   'False
      TabIndex = 4
      OleObjectBlob = "frmGeneracionCuentaCorrienteComercio.frx":0886
    End
  End
End

Attribute VB_Name = "frmGeneracionCuentaCorrienteComercio"


Private Sub CalculoCmd_Click() 'BC3B70
  'Data Table: 4089AC
  loc_BC3518: LitI4 0
  loc_BC351D: FStR4 var_8C
  loc_BC3520: FLdRfVar var_A2
  loc_BC3523: FLdPr Me
  loc_BC3526: MemLdRfVar from_stack_1.global_52
  loc_BC3529: NewIfNullPr clsliquidacion
  loc_BC352C: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC3531: LitVar_Missing var_118
  loc_BC3534: LitVar_Missing var_F8
  loc_BC3537: LitVar_Missing var_D8
  loc_BC353A: LitI4 4
  loc_BC353F: LitStr "Esta seguro que desea generar en la cuenta corriente la emisión masiva. Para el período: "
  loc_BC3542: FLdI2 var_A2
  loc_BC3545: CStrUI1
  loc_BC3547: FStStrNoPop var_A8
  loc_BC354A: ConcatStr
  loc_BC354B: CVarStr var_B8
  loc_BC354E: ImpAdCallI2 MsgBox(, , , , )
  loc_BC3553: LitI4 6
  loc_BC3558: EqI4
  loc_BC3559: FFree1Str var_A8
  loc_BC355C: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BC3567: BranchF loc_BC3B6C
  loc_BC356A: FLdRfVar var_A2
  loc_BC356D: FLdPr Me
  loc_BC3570: MemLdRfVar from_stack_1.global_52
  loc_BC3573: NewIfNullPr clsliquidacion
  loc_BC3576: from_stack_1 = clsliquidacion.CodiTili
  loc_BC357B: FLdUI1
  loc_BC357F: LitI2_Byte 2
  loc_BC3581: CUI1I2
  loc_BC3583: ImpAdCallFPR4  = Proc_270_72_A8BDBC()
  loc_BC3588: FStFPR8 var_A0
  loc_BC358B: LitStr "SELECT SUM(TotaLico) as TotaBole, PeriLiqu, CodiTili, NumeLiqu, CodiCome, TipoVenc, CucuPers, ActuLico, FeveLico, TipoLico FROM liqucome "
  loc_BC358E: LitStr " WHERE PeriLiqu = "
  loc_BC3591: ConcatStr
  loc_BC3592: FStStrNoPop var_A8
  loc_BC3595: FLdRfVar var_A2
  loc_BC3598: FLdPr Me
  loc_BC359B: MemLdRfVar from_stack_1.global_52
  loc_BC359E: NewIfNullPr clsliquidacion
  loc_BC35A1: from_stack_1 = clsliquidacion.PeriLiqu
  loc_BC35A6: FLdI2 var_A2
  loc_BC35A9: CStrUI1
  loc_BC35AB: FStStrNoPop var_11C
  loc_BC35AE: ConcatStr
  loc_BC35AF: FStStrNoPop var_120
  loc_BC35B2: LitStr " AND CodiTili = "
  loc_BC35B5: ConcatStr
  loc_BC35B6: FStStrNoPop var_128
  loc_BC35B9: FLdRfVar var_122
  loc_BC35BC: FLdPr Me
  loc_BC35BF: MemLdRfVar from_stack_1.global_52
  loc_BC35C2: NewIfNullPr clsliquidacion
  loc_BC35C5: from_stack_1 = clsliquidacion.CodiTili
  loc_BC35CA: FLdUI1
  loc_BC35CE: CStrI2
  loc_BC35D0: FStStrNoPop var_12C
  loc_BC35D3: ConcatStr
  loc_BC35D4: FStStrNoPop var_130
  loc_BC35D7: LitStr " AND NumeLiqu = "
  loc_BC35DA: ConcatStr
  loc_BC35DB: FStStrNoPop var_138
  loc_BC35DE: FLdRfVar var_132
  loc_BC35E1: FLdPr Me
  loc_BC35E4: MemLdRfVar from_stack_1.global_52
  loc_BC35E7: NewIfNullPr clsliquidacion
  loc_BC35EA: from_stack_1 = clsliquidacion.NumeLiqu
  loc_BC35EF: FLdI2 var_132
  loc_BC35F2: CStrUI1
  loc_BC35F4: FStStrNoPop var_13C
  loc_BC35F7: ConcatStr
  loc_BC35F8: FStStrNoPop var_140
  loc_BC35FB: LitStr " AND ActuLico = 'No' "
  loc_BC35FE: ConcatStr
  loc_BC35FF: FStStrNoPop var_144
  loc_BC3602: LitStr " GROUP BY CodiCome"
  loc_BC3605: ConcatStr
  loc_BC3606: FStStrNoPop var_148
  loc_BC3609: LitStr " ORDER BY LocaLico, CallLico, NucaLico"
  loc_BC360C: ConcatStr
  loc_BC360D: FStStrNoPop var_14C
  loc_BC3610: FLdPr Me
  loc_BC3613: MemLdRfVar from_stack_1.global_56
  loc_BC3616: NewIfNullPr clsliqucome
  loc_BC3619: Call clsliqucome.RedefineRS(from_stack_1v)
  loc_BC361E: FFreeStr var_A8 = "": var_11C = "": var_120 = "": var_128 = "": var_12C = "": var_130 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = ""
  loc_BC3639: FLdRfVar var_154
  loc_BC363C: FLdRfVar var_150
  loc_BC363F: FLdPr Me
  loc_BC3642: MemLdRfVar from_stack_1.global_56
  loc_BC3645: NewIfNullPr clsliqucome
  loc_BC3648: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC364D: FLdPr var_150
  loc_BC3650:  = Me.RecordCount
  loc_BC3655: ILdRf var_154
  loc_BC3658: LitI4 0
  loc_BC365D: GtI4
  loc_BC365E: FFree1Ad var_150
  loc_BC3661: BranchF loc_BC3AA9
  loc_BC3664: LitI2_Byte 0
  loc_BC3666: FLdPr Me
  loc_BC3669: VCallAd Control_ID_CalculoCmd
  loc_BC366C: FStAdFunc var_150
  loc_BC366F: FLdPr var_150
  loc_BC3672: Me.Enabled = from_stack_1b
  loc_BC3677: FFree1Ad var_150
  loc_BC367A: LitVar_TRUE var_C8
  loc_BC367D: PopAdLdVar
  loc_BC367E: FLdPr Me
  loc_BC3681: VCallAd Control_ID_ProgressBar
  loc_BC3684: FStAdFunc var_150
  loc_BC3687: FLdPr var_150
  loc_BC368A: LateIdSt
  loc_BC368F: FFree1Ad var_150
  loc_BC3692: LitI2_Byte 0
  loc_BC3694: CR8I2
  loc_BC3695: CVarR4
  loc_BC3699: PopAdLdVar
  loc_BC369A: FLdPr Me
  loc_BC369D: VCallAd Control_ID_ProgressBar
  loc_BC36A0: FStAdFunc var_150
  loc_BC36A3: FLdPr var_150
  loc_BC36A6: LateIdSt
  loc_BC36AB: FFree1Ad var_150
  loc_BC36AE: FLdRfVar var_154
  loc_BC36B1: FLdRfVar var_150
  loc_BC36B4: FLdPr Me
  loc_BC36B7: MemLdRfVar from_stack_1.global_56
  loc_BC36BA: NewIfNullPr clsliqucome
  loc_BC36BD: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC36C2: FLdPr var_150
  loc_BC36C5:  = Me.RecordCount
  loc_BC36CA: ILdRf var_154
  loc_BC36CD: CR8I4
  loc_BC36CE: CVarR4
  loc_BC36D2: PopAdLdVar
  loc_BC36D3: FLdPr Me
  loc_BC36D6: VCallAd Control_ID_ProgressBar
  loc_BC36D9: FStAdFunc var_158
  loc_BC36DC: FLdPr var_158
  loc_BC36DF: LateIdSt
  loc_BC36E4: FFreeAd var_150 = ""
  loc_BC36EB: LitI2_Byte 0
  loc_BC36ED: CR8I2
  loc_BC36EE: CVarR4
  loc_BC36F2: PopAdLdVar
  loc_BC36F3: FLdPr Me
  loc_BC36F6: VCallAd Control_ID_ProgressBar
  loc_BC36F9: FStAdFunc var_150
  loc_BC36FC: FLdPr var_150
  loc_BC36FF: LateIdSt
  loc_BC3704: FFree1Ad var_150
  loc_BC3707: FLdRfVar var_150
  loc_BC370A: FLdPr Me
  loc_BC370D: MemLdRfVar from_stack_1.global_56
  loc_BC3710: NewIfNullPr clsliqucome
  loc_BC3713: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC3718: FLdPr var_150
  loc_BC371B: Me.MoveFirst
  loc_BC3720: FFree1Ad var_150
  loc_BC3723: LitVarStr var_E8, " UPDATE liquidacion SET ActuLiqu = 'Si' WHERE PeriLiqu = "
  loc_BC3728: FLdRfVar var_B8
  loc_BC372B: FLdRfVar var_15C
  loc_BC372E: LitVarStr var_C8, "PeriLiqu"
  loc_BC3733: PopAdLdVar
  loc_BC3734: FLdRfVar var_158
  loc_BC3737: FLdRfVar var_150
  loc_BC373A: FLdPr Me
  loc_BC373D: MemLdRfVar from_stack_1.global_56
  loc_BC3740: NewIfNullPr clsliqucome
  loc_BC3743: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC3748: FLdPr var_150
  loc_BC374B:  = Me.Fields
  loc_BC3750: FLdPr var_158
  loc_BC3753: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3758: FLdPr var_15C
  loc_BC375B:  = Me.Value
  loc_BC3760: FLdRfVar var_B8
  loc_BC3763: ConcatVar var_D8
  loc_BC3767: LitVarStr var_108, " AND CodiOfic = 2 AND CodiTili = "
  loc_BC376C: ConcatVar var_F8
  loc_BC3770: FLdRfVar var_118
  loc_BC3773: FLdRfVar var_178
  loc_BC3776: LitVarStr var_174, "CodiTili"
  loc_BC377B: PopAdLdVar
  loc_BC377C: FLdRfVar var_164
  loc_BC377F: FLdRfVar var_160
  loc_BC3782: FLdPr Me
  loc_BC3785: MemLdRfVar from_stack_1.global_56
  loc_BC3788: NewIfNullPr clsliqucome
  loc_BC378B: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC3790: FLdPr var_160
  loc_BC3793:  = Me.Fields
  loc_BC3798: FLdPr var_164
  loc_BC379B: from_stack_2 = Me.Item(from_stack_1)
  loc_BC37A0: FLdPr var_178
  loc_BC37A3:  = Me.Value
  loc_BC37A8: FLdRfVar var_118
  loc_BC37AB: ConcatVar var_188
  loc_BC37AF: LitVarStr var_198, " AND NumeLiqu = "
  loc_BC37B4: ConcatVar var_1A8
  loc_BC37B8: FLdRfVar var_1D4
  loc_BC37BB: FLdRfVar var_1C4
  loc_BC37BE: LitVarStr var_1C0, "NumeLiqu"
  loc_BC37C3: PopAdLdVar
  loc_BC37C4: FLdRfVar var_1B0
  loc_BC37C7: FLdRfVar var_1AC
  loc_BC37CA: FLdPr Me
  loc_BC37CD: MemLdRfVar from_stack_1.global_56
  loc_BC37D0: NewIfNullPr clsliqucome
  loc_BC37D3: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC37D8: FLdPr var_1AC
  loc_BC37DB:  = Me.Fields
  loc_BC37E0: FLdPr var_1B0
  loc_BC37E3: from_stack_2 = Me.Item(from_stack_1)
  loc_BC37E8: FLdPr var_1C4
  loc_BC37EB:  = Me.Value
  loc_BC37F0: FLdRfVar var_1D4
  loc_BC37F3: ConcatVar var_1E4
  loc_BC37F7: LitVarStr var_1F4, ";"
  loc_BC37FC: ConcatVar var_204
  loc_BC3800: CStrVarVal var_A8
  loc_BC3804: FLdPr Me
  loc_BC3807: MemLdRfVar from_stack_1.global_56
  loc_BC380A: NewIfNullPr clsliqucome
  loc_BC380D: Call clsliqucome.EjecutarRsCls(from_stack_1v)
  loc_BC3812: FFree1Str var_A8
  loc_BC3815: FFreeAd var_150 = "": var_158 = "": var_15C = "": var_160 = "": var_164 = "": var_178 = "": var_1AC = "": var_1B0 = ""
  loc_BC382A: FFreeVar var_B8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_188 = "": var_1A8 = "": var_1D4 = "": var_1E4 = ""
  loc_BC383F: FLdRfVar var_B8
  loc_BC3842: FLdRfVar var_15C
  loc_BC3845: LitVarStr var_C8, "PeriLiqu"
  loc_BC384A: PopAdLdVar
  loc_BC384B: FLdRfVar var_158
  loc_BC384E: FLdRfVar var_150
  loc_BC3851: FLdPr Me
  loc_BC3854: MemLdRfVar from_stack_1.global_56
  loc_BC3857: NewIfNullPr clsliqucome
  loc_BC385A: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC385F: FLdPr var_150
  loc_BC3862:  = Me.Fields
  loc_BC3867: FLdPr var_158
  loc_BC386A: from_stack_2 = Me.Item(from_stack_1)
  loc_BC386F: FLdPr var_15C
  loc_BC3872:  = Me.Value
  loc_BC3877: FLdRfVar var_B8
  loc_BC387A: CI2Var
  loc_BC387B: FStI2 var_92
  loc_BC387E: FFreeAd var_150 = "": var_158 = ""
  loc_BC3887: FFree1Var var_B8 = ""
  loc_BC388A: FLdRfVar var_A2
  loc_BC388D: FLdRfVar var_150
  loc_BC3890: FLdPr Me
  loc_BC3893: MemLdRfVar from_stack_1.global_56
  loc_BC3896: NewIfNullPr clsliqucome
  loc_BC3899: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC389E: FLdPr var_150
  loc_BC38A1:  = Me.EOF
  loc_BC38A6: FLdI2 var_A2
  loc_BC38A9: NotI4
  loc_BC38AA: FFree1Ad var_150
  loc_BC38AD: BranchF loc_BC3AA9
  loc_BC38B0: ILdRf var_98
  loc_BC38B3: CR8I4
  loc_BC38B4: CVarR4
  loc_BC38B8: PopAdLdVar
  loc_BC38B9: ImpAdLdRf MemVar_D937AC
  loc_BC38BC: NewIfNullPr frmGeneracionCuentaCorrienteComercio
  loc_BC38BF: VCallAd Control_ID_ProgressBar
  loc_BC38C2: FStAdFunc var_150
  loc_BC38C5: FLdPr var_150
  loc_BC38C8: LateIdSt
  loc_BC38CD: FFree1Ad var_150
  loc_BC38D0: ILdRf var_98
  loc_BC38D3: LitI4 1
  loc_BC38D8: AddI4
  loc_BC38D9: FStR4 var_98
  loc_BC38DC: FLdRfVar var_B8
  loc_BC38DF: FLdRfVar var_15C
  loc_BC38E2: LitVarStr var_C8, "TotaBole"
  loc_BC38E7: PopAdLdVar
  loc_BC38E8: FLdRfVar var_158
  loc_BC38EB: FLdRfVar var_150
  loc_BC38EE: FLdPr Me
  loc_BC38F1: MemLdRfVar from_stack_1.global_56
  loc_BC38F4: NewIfNullPr clsliqucome
  loc_BC38F7: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC38FC: FLdPr var_150
  loc_BC38FF:  = Me.Fields
  loc_BC3904: FLdPr var_158
  loc_BC3907: from_stack_2 = Me.Item(from_stack_1)
  loc_BC390C: FLdPr var_15C
  loc_BC390F:  = Me.Value
  loc_BC3914: FLdRfVar var_B8
  loc_BC3917: LitVarI2 var_E8, 0
  loc_BC391C: HardType
  loc_BC391D: GtVarBool
  loc_BC391F: FFreeAd var_150 = "": var_158 = ""
  loc_BC3928: FFree1Var var_B8 = ""
  loc_BC392B: BranchF loc_BC3943
  loc_BC392E: ILdRf var_8C
  loc_BC3931: LitI4 1
  loc_BC3936: AddI4
  loc_BC3937: FStR4 var_8C
  loc_BC393A: ILdRf var_8C
  loc_BC393D: FStR4 var_90
  loc_BC3940: Branch loc_BC394B
  loc_BC3943: LitI4 0
  loc_BC3948: FStR4 var_90
  loc_BC394B: FLdRfVar var_B8
  loc_BC394E: FLdRfVar var_15C
  loc_BC3951: LitVarStr var_C8, "PeriLiqu"
  loc_BC3956: PopAdLdVar
  loc_BC3957: FLdRfVar var_158
  loc_BC395A: FLdRfVar var_150
  loc_BC395D: FLdPr Me
  loc_BC3960: MemLdRfVar from_stack_1.global_56
  loc_BC3963: NewIfNullPr clsliqucome
  loc_BC3966: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC396B: FLdPr var_150
  loc_BC396E:  = Me.Fields
  loc_BC3973: FLdPr var_158
  loc_BC3976: from_stack_2 = Me.Item(from_stack_1)
  loc_BC397B: FLdPr var_15C
  loc_BC397E:  = Me.Value
  loc_BC3983: FLdRfVar var_D8
  loc_BC3986: FLdRfVar var_178
  loc_BC3989: LitVarStr var_E8, "CodiTili"
  loc_BC398E: PopAdLdVar
  loc_BC398F: FLdRfVar var_164
  loc_BC3992: FLdRfVar var_160
  loc_BC3995: FLdPr Me
  loc_BC3998: MemLdRfVar from_stack_1.global_56
  loc_BC399B: NewIfNullPr clsliqucome
  loc_BC399E: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC39A3: FLdPr var_160
  loc_BC39A6:  = Me.Fields
  loc_BC39AB: FLdPr var_164
  loc_BC39AE: from_stack_2 = Me.Item(from_stack_1)
  loc_BC39B3: FLdPr var_178
  loc_BC39B6:  = Me.Value
  loc_BC39BB: FLdRfVar var_F8
  loc_BC39BE: FLdRfVar var_1C4
  loc_BC39C1: LitVarStr var_108, "NumeLiqu"
  loc_BC39C6: PopAdLdVar
  loc_BC39C7: FLdRfVar var_1B0
  loc_BC39CA: FLdRfVar var_1AC
  loc_BC39CD: FLdPr Me
  loc_BC39D0: MemLdRfVar from_stack_1.global_56
  loc_BC39D3: NewIfNullPr clsliqucome
  loc_BC39D6: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC39DB: FLdPr var_1AC
  loc_BC39DE:  = Me.Fields
  loc_BC39E3: FLdPr var_1B0
  loc_BC39E6: from_stack_2 = Me.Item(from_stack_1)
  loc_BC39EB: FLdPr var_1C4
  loc_BC39EE:  = Me.Value
  loc_BC39F3: FLdRfVar var_118
  loc_BC39F6: FLdRfVar var_210
  loc_BC39F9: LitVarStr var_174, "CodiCome"
  loc_BC39FE: PopAdLdVar
  loc_BC39FF: FLdRfVar var_20C
  loc_BC3A02: FLdRfVar var_208
  loc_BC3A05: FLdPr Me
  loc_BC3A08: MemLdRfVar from_stack_1.global_56
  loc_BC3A0B: NewIfNullPr clsliqucome
  loc_BC3A0E: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC3A13: FLdPr var_208
  loc_BC3A16:  = Me.Fields
  loc_BC3A1B: FLdPr var_20C
  loc_BC3A1E: from_stack_2 = Me.Item(from_stack_1)
  loc_BC3A23: FLdPr var_210
  loc_BC3A26:  = Me.Value
  loc_BC3A2B: ILdRf var_88
  loc_BC3A2E: FLdRfVar var_A8
  loc_BC3A31: FLdR8 var_A0
  loc_BC3A34: FLdI2 var_92
  loc_BC3A37: ILdRf var_90
  loc_BC3A3A: FLdRfVar var_118
  loc_BC3A3D: CI4Var
  loc_BC3A3F: FLdRfVar var_F8
  loc_BC3A42: CI2Var
  loc_BC3A43: FLdRfVar var_D8
  loc_BC3A46: CUI1Var
  loc_BC3A48: FLdRfVar var_B8
  loc_BC3A4B: CI2Var
  loc_BC3A4C: FLdPr Me
  loc_BC3A4F: MemLdRfVar from_stack_1.global_56
  loc_BC3A52: NewIfNullPr clsliqucome
  loc_BC3A55: from_stack_8v = clsliqucome.GeneracionCuentaCorriente(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BC3A5A: ILdRf var_A8
  loc_BC3A5D: ConcatStr
  loc_BC3A5E: FStStr var_88
  loc_BC3A61: FFree1Str var_A8
  loc_BC3A64: FFreeAd var_150 = "": var_158 = "": var_160 = "": var_164 = "": var_1AC = "": var_1B0 = "": var_208 = "": var_20C = "": var_15C = "": var_178 = "": var_1C4 = ""
  loc_BC3A7F: FFreeVar var_B8 = "": var_D8 = "": var_F8 = ""
  loc_BC3A8A: FLdRfVar var_150
  loc_BC3A8D: FLdPr Me
  loc_BC3A90: MemLdRfVar from_stack_1.global_56
  loc_BC3A93: NewIfNullPr clsliqucome
  loc_BC3A96: from_stack_1v = clsliqucome.RsFrmGet()
  loc_BC3A9B: FLdPr var_150
  loc_BC3A9E: Me.MoveNext
  loc_BC3AA3: FFree1Ad var_150
  loc_BC3AA6: Branch loc_BC388A
  loc_BC3AA9: ILdRf var_88
  loc_BC3AAC: LitStr vbNullString
  loc_BC3AAF: NeStr
  loc_BC3AB1: BranchF loc_BC3ABC
  loc_BC3AB4: ILdRf var_88
  loc_BC3AB7: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC3ABC: LitVar_FALSE
  loc_BC3AC0: PopAdLdVar
  loc_BC3AC1: FLdPr Me
  loc_BC3AC4: VCallAd Control_ID_ProgressBar
  loc_BC3AC7: FStAdFunc var_150
  loc_BC3ACA: FLdPr var_150
  loc_BC3ACD: LateIdSt
  loc_BC3AD2: FFree1Ad var_150
  loc_BC3AD5: LitStr "Proceso Terminado. Verifique en la cuenta corriente la generación de los aforos"
  loc_BC3AD8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BC3ADD: LitI2_Byte &HFF
  loc_BC3ADF: FLdPr Me
  loc_BC3AE2: VCallAd Control_ID_CalculoCmd
  loc_BC3AE5: FStAdFunc var_150
  loc_BC3AE8: FLdPr var_150
  loc_BC3AEB: Me.Enabled = from_stack_1b
  loc_BC3AF0: FFree1Ad var_150
  loc_BC3AF3: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_BC3AF6: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili WHERE liquidacion.CodiOfic = 2 AND liquidacion.ActuLiqu = 'No' ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_BC3AF9: ConcatStr
  loc_BC3AFA: FStStrNoPop var_A8
  loc_BC3AFD: FLdPr Me
  loc_BC3B00: MemLdRfVar from_stack_1.global_52
  loc_BC3B03: NewIfNullPr clsliquidacion
  loc_BC3B06: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_BC3B0B: FFree1Str var_A8
  loc_BC3B0E: LitI4 0
  loc_BC3B13: LitI4 1
  loc_BC3B18: FLdRfVar var_214
  loc_BC3B1B: Redim
  loc_BC3B25: FLdPr Me
  loc_BC3B28: MemLdRfVar from_stack_1.global_52
  loc_BC3B2B: NewIfNullAd
  loc_BC3B2E: FStAd var_150 
  loc_BC3B32: FLdRfVar var_150
  loc_BC3B35: CVarRef
  loc_BC3B3A: ParmAry1St
  loc_BC3B40: FLdPr Me
  loc_BC3B43: VCallAd Control_ID_dgdABMS
  loc_BC3B46: CVarAd
  loc_BC3B4A: ParmAry1St
  loc_BC3B50: FLdRfVar var_214
  loc_BC3B53: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_BC3B58: ILdRf var_150
  loc_BC3B5B: CastAd
  loc_BC3B5E: FLdPr Me
  loc_BC3B61: MemStAdFunc
  loc_BC3B65: FLdRfVar var_214
  loc_BC3B68: Erase
  loc_BC3B69: FFree1Ad var_150
  loc_BC3B6C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A8E2D4
  'Data Table: 4089AC
  loc_A8E244: LitStr "SELECT liquidacion.PeriLiqu, liquidacion.CodiTili, tipoliqu.DetaTili, liquidacion.NumeLiqu, liquidacion.ActuLiqu, liquidacion.FealLiqu FROM liquidacion "
  loc_A8E247: LitStr " LEFT JOIN tipoliqu ON liquidacion.CodiOfic = tipoliqu.CodiOfic AND liquidacion.CodiTili = tipoliqu.CodiTili "
  loc_A8E24A: ConcatStr
  loc_A8E24B: FStStrNoPop var_88
  loc_A8E24E: LitStr " WHERE liquidacion.CodiOfic = 2 AND liquidacion.ActuLiqu = 'No' "
  loc_A8E251: ConcatStr
  loc_A8E252: FStStrNoPop var_8C
  loc_A8E255: LitStr " ORDER BY liquidacion.PeriLiqu, liquidacion.CodiOfic, liquidacion.CodiTili, liquidacion.NumeLiqu"
  loc_A8E258: ConcatStr
  loc_A8E259: FStStrNoPop var_90
  loc_A8E25C: FLdPr Me
  loc_A8E25F: MemLdRfVar from_stack_1.global_52
  loc_A8E262: NewIfNullPr clsliquidacion
  loc_A8E265: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A8E26A: FFreeStr var_88 = "": var_8C = ""
  loc_A8E273: LitI4 0
  loc_A8E278: LitI4 1
  loc_A8E27D: FLdRfVar var_94
  loc_A8E280: Redim
  loc_A8E28A: FLdPr Me
  loc_A8E28D: MemLdRfVar from_stack_1.global_52
  loc_A8E290: NewIfNullAd
  loc_A8E293: FStAd var_98 
  loc_A8E297: FLdRfVar var_98
  loc_A8E29A: CVarRef
  loc_A8E29F: ParmAry1St
  loc_A8E2A5: FLdPr Me
  loc_A8E2A8: VCallAd Control_ID_dgdABMS
  loc_A8E2AB: CVarAd
  loc_A8E2AF: ParmAry1St
  loc_A8E2B5: FLdRfVar var_94
  loc_A8E2B8: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8E2BD: ILdRf var_98
  loc_A8E2C0: CastAd
  loc_A8E2C3: FLdPr Me
  loc_A8E2C6: MemStAdFunc
  loc_A8E2CA: FLdRfVar var_94
  loc_A8E2CD: Erase
  loc_A8E2CE: FFree1Ad var_98
  loc_A8E2D1: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9BB3E8
  'Data Table: 4089AC
  loc_9BB3D4: ILdI2 KeyCode
  loc_9BB3D7: CI4UI1
  loc_9BB3D8: LitI4 &H78
  loc_9BB3DD: EqI4
  loc_9BB3DE: BranchF loc_9BB3E6
  loc_9BB3E1: Call cmdSalir_Click()
  loc_9BB3E6: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9C95EC
  'Data Table: 4089AC
  loc_9C95D4: ILdRf Me
  loc_9C95D7: FStAdNoPop
  loc_9C95DB: ImpAdLdRf MemVar_D9C5D8
  loc_9C95DE: NewIfNullPr Global
  loc_9C95E1: Global.Unload from_stack_1
  loc_9C95E6: FFree1Ad var_88
  loc_9C95E9: ExitProcHresult
End Sub
