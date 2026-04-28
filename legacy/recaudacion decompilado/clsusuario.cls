VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior = 0   'vbNone
  MTSTransactionMode = 0   'NotAnMTSObject
END
Attribute VB_Name = "clsusuario"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public RsFrm As New UnkObject


Public Function RsFrmGet() '40D19C
  RsFrmGet = RsFrm
End Function

Public Sub RsFrmPut(Value) '40D1AB
  RsFrm = Value
End Sub

Public Sub RsFrmSet(Value) '40D1BA
  RsFrm = Value
End Sub

Public Sub MoveFirst() '9EA28C
  'Data Table: 40CF28
  loc_9EA264: FLdRfVar var_88
  loc_9EA267: FLdPr Me
  loc_9EA26A: MemLdPr RsFrm
  loc_9EA26D:  = Me.RecordCount
  loc_9EA272: ILdRf var_88
  loc_9EA275: LitI4 0
  loc_9EA27A: GtI4
  loc_9EA27B: BranchF loc_9EA289
  loc_9EA27E: FLdPr Me
  loc_9EA281: MemLdPr RsFrm
  loc_9EA284: Me.MoveFirst
  loc_9EA289: ExitProcHresult
End Sub

Public Sub MoveLast() '9EA33C
  'Data Table: 40CF28
  loc_9EA314: FLdRfVar var_88
  loc_9EA317: FLdPr Me
  loc_9EA31A: MemLdPr RsFrm
  loc_9EA31D:  = Me.RecordCount
  loc_9EA322: ILdRf var_88
  loc_9EA325: LitI4 0
  loc_9EA32A: GtI4
  loc_9EA32B: BranchF loc_9EA339
  loc_9EA32E: FLdPr Me
  loc_9EA331: MemLdPr RsFrm
  loc_9EA334: Me.MoveLast
  loc_9EA339: ExitProcHresult
End Sub

Public Sub MoveNext() 'A534B0
  'Data Table: 40CF28
  loc_A53450: FLdRfVar var_86
  loc_A53453: FLdPr Me
  loc_A53456: MemLdPr RsFrm
  loc_A53459:  = Me.EOF
  loc_A5345E: FLdI2 var_86
  loc_A53461: NotI4
  loc_A53462: BranchF loc_A53470
  loc_A53465: FLdPr Me
  loc_A53468: MemLdPr RsFrm
  loc_A5346B: Me.MoveNext
  loc_A53470: FLdRfVar var_86
  loc_A53473: FLdPr Me
  loc_A53476: MemLdPr RsFrm
  loc_A53479:  = Me.EOF
  loc_A5347E: FLdI2 var_86
  loc_A53481: FLdRfVar var_8C
  loc_A53484: FLdPr Me
  loc_A53487: MemLdPr RsFrm
  loc_A5348A:  = Me.RecordCount
  loc_A5348F: ILdRf var_8C
  loc_A53492: LitI4 0
  loc_A53497: GtI4
  loc_A53498: AndI4
  loc_A53499: BranchF loc_A534AC
  loc_A5349C: ImpAdCallFPR4 Beep()
  loc_A534A1: FLdPr Me
  loc_A534A4: MemLdPr RsFrm
  loc_A534A7: Me.MoveLast
  loc_A534AC: ExitProcHresult
End Sub

Public Sub MoveSiguiente() '9B0FFC
  'Data Table: 40CF28
  loc_9B0FF0: FLdPr Me
  loc_9B0FF3: MemLdPr RsFrm
  loc_9B0FF6: Me.MoveNext
  loc_9B0FFB: ExitProcHresult
End Sub

Public Sub MovePrevious() 'A53390
  'Data Table: 40CF28
  loc_A53330: FLdRfVar var_86
  loc_A53333: FLdPr Me
  loc_A53336: MemLdPr RsFrm
  loc_A53339:  = Me.BOF
  loc_A5333E: FLdI2 var_86
  loc_A53341: NotI4
  loc_A53342: BranchF loc_A53350
  loc_A53345: FLdPr Me
  loc_A53348: MemLdPr RsFrm
  loc_A5334B: Me.MovePrevious
  loc_A53350: FLdRfVar var_86
  loc_A53353: FLdPr Me
  loc_A53356: MemLdPr RsFrm
  loc_A53359:  = Me.BOF
  loc_A5335E: FLdI2 var_86
  loc_A53361: FLdRfVar var_8C
  loc_A53364: FLdPr Me
  loc_A53367: MemLdPr RsFrm
  loc_A5336A:  = Me.RecordCount
  loc_A5336F: ILdRf var_8C
  loc_A53372: LitI4 0
  loc_A53377: GtI4
  loc_A53378: AndI4
  loc_A53379: BranchF loc_A5338C
  loc_A5337C: ImpAdCallFPR4 Beep()
  loc_A53381: FLdPr Me
  loc_A53384: MemLdPr RsFrm
  loc_A53387: Me.MoveFirst
  loc_A5338C: ExitProcHresult
End Sub

Public Property Get EOF() '9D5B10
  'Data Table: 40CF28
  loc_9D5AF4: FLdRfVar var_88
  loc_9D5AF7: FLdPr Me
  loc_9D5AFA: MemLdPr RsFrm
  loc_9D5AFD:  = Me.EOF
  loc_9D5B02: FLdI2 var_88
  loc_9D5B05: FStI2 var_86
  loc_9D5B08: ExitProcCbHresult
  loc_9D5B0E: ModI2
End Sub

Public Property Get BOF() '9DBB40
  'Data Table: 40CF28
  loc_9DBB24: FLdRfVar var_88
  loc_9DBB27: FLdPr Me
  loc_9DBB2A: MemLdPr RsFrm
  loc_9DBB2D:  = Me.BOF
  loc_9DBB32: FLdI2 var_88
  loc_9DBB35: FStI2 var_86
  loc_9DBB38: ExitProcCbHresult
  loc_9DBB3E: LeR8
End Sub

Public Sub Sort(sOrden) '9B4AF8
  'Data Table: 40CF28
  loc_9B4AE8: ILdI4 sOrden
  loc_9B4AEB: FLdPr Me
  loc_9B4AEE: MemLdPr RsFrm
  loc_9B4AF1: Me.Sort = from_stack_1
  loc_9B4AF6: ExitProcHresult
End Sub

Public Sub Find(sCriterio) '9E4070
  'Data Table: 40CF28
  loc_9E4050: LitVar_Missing var_94
  loc_9E4053: PopAdLdVar
  loc_9E4054: LitI4 1
  loc_9E4059: LitI4 0
  loc_9E405E: ILdI4 sCriterio
  loc_9E4061: FLdPr Me
  loc_9E4064: MemLdPr RsFrm
  loc_9E4067: Me.Find from_stack_1, from_stack_2, from_stack_3
  loc_9E406C: ExitProcHresult
End Sub

Public Sub Filter(sCriterio) '9B9408
  'Data Table: 40CF28
  loc_9B93F4: ILdI4 sCriterio
  loc_9B93F7: CVarStr var_94
  loc_9B93FA: PopAdLdVar
  loc_9B93FB: FLdPr Me
  loc_9B93FE: MemLdPr RsFrm
  loc_9B9401: Me.Filter = from_stack_1
  loc_9B9406: ExitProcHresult
End Sub

Public Property Get AbsolutePosition() '9DC0E4
  'Data Table: 40CF28
  loc_9DC0C8: FLdRfVar var_8C
  loc_9DC0CB: FLdPr Me
  loc_9DC0CE: MemLdPr RsFrm
  loc_9DC0D1:  = Me.AbsolutePosition
  loc_9DC0D6: ILdRf var_8C
  loc_9DC0D9: FStR4 var_88
  loc_9DC0DC: ExitProcCbHresult
End Sub

Public Property Get RecordCount() '9DC63C
  'Data Table: 40CF28
  loc_9DC620: FLdRfVar var_8C
  loc_9DC623: FLdPr Me
  loc_9DC626: MemLdPr RsFrm
  loc_9DC629:  = Me.RecordCount
  loc_9DC62E: ILdRf var_8C
  loc_9DC631: FStR4 var_88
  loc_9DC634: ExitProcCbHresult
End Sub

Public Sub Agregar(CodiUsua, CucuPers, ClavUsua, CodiEnre, AcreUsua, HaceRequery) 'AE2B1C
  'Data Table: 40CF28
  loc_AE29F8: ILdRf CodiUsua
  loc_AE29FB: FStStrCopy var_88
  loc_AE29FE: ILdRf CucuPers
  loc_AE2A01: FStStrCopy var_8C
  loc_AE2A04: ILdRf ClavUsua
  loc_AE2A07: FStStrCopy var_90
  loc_AE2A0A: OnErrorGoto loc_AE2ACC
  loc_AE2A0D: LitStr "clave"
  loc_AE2A10: FStStrCopy var_94
  loc_AE2A13: FLdRfVar var_94
  loc_AE2A16: FLdRfVar var_90
  loc_AE2A19: ImpAdCallFPR4 Proc_272_2_AAD850(, )
  loc_AE2A1E: FFree1Str var_94
  loc_AE2A21: LitStr "INSERT INTO infogov.usuario (CodiUsua,CucuPers,ClavUsua,FeveUsua,CodiEnre,AcreUsua,AltaUsua)"
  loc_AE2A24: LitStr " VALUES ('"
  loc_AE2A27: ConcatStr
  loc_AE2A28: FStStrNoPop var_94
  loc_AE2A2B: ILdRf var_88
  loc_AE2A2E: ConcatStr
  loc_AE2A2F: FStStrNoPop var_98
  loc_AE2A32: LitStr "',"
  loc_AE2A35: ConcatStr
  loc_AE2A36: FStStrNoPop var_9C
  loc_AE2A39: ILdRf var_8C
  loc_AE2A3C: ConcatStr
  loc_AE2A3D: FStStrNoPop var_A0
  loc_AE2A40: LitStr ","
  loc_AE2A43: ConcatStr
  loc_AE2A44: FStStrNoPop var_A8
  loc_AE2A47: FLdRfVar var_A4
  loc_AE2A4A: ILdRf var_90
  loc_AE2A4D: Call Proc_20_32_AA65DC()
  loc_AE2A52: ILdRf var_A4
  loc_AE2A55: ConcatStr
  loc_AE2A56: FStStrNoPop var_AC
  loc_AE2A59: LitStr ",curdate(),"
  loc_AE2A5C: ConcatStr
  loc_AE2A5D: FStStrNoPop var_B0
  loc_AE2A60: FLdI2 CodiEnre
  loc_AE2A63: CStrUI1
  loc_AE2A65: FStStrNoPop var_B4
  loc_AE2A68: ConcatStr
  loc_AE2A69: FStStrNoPop var_B8
  loc_AE2A6C: LitStr ","
  loc_AE2A6F: ConcatStr
  loc_AE2A70: FStStrNoPop var_BC
  loc_AE2A73: FLdUI1
  loc_AE2A77: CStrI2
  loc_AE2A79: FStStrNoPop var_C0
  loc_AE2A7C: ConcatStr
  loc_AE2A7D: FStStrNoPop var_C4
  loc_AE2A80: LitStr ",'"
  loc_AE2A83: ConcatStr
  loc_AE2A84: FStStrNoPop var_C8
  loc_AE2A87: ImpAdLdI4 MemVar_D9302C
  loc_AE2A8A: ConcatStr
  loc_AE2A8B: FStStrNoPop var_CC
  loc_AE2A8E: LitStr "')"
  loc_AE2A91: ConcatStr
  loc_AE2A92: FStStrNoPop var_D0
  loc_AE2A95: Call EjecutarRsCls(from_stack_1v)
  loc_AE2A9A: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_A4 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_AE2ABD: FLdI2 HaceRequery
  loc_AE2AC0: BranchF loc_AE2ACB
  loc_AE2AC3: ILdRf var_88
  loc_AE2AC6: Call Encontrar(from_stack_1v)
  loc_AE2ACB: ExitProcHresult
  loc_AE2ACC: LitStr "No se pudo agregar el registro."
  loc_AE2ACF: LitStr vbCrLf
  loc_AE2AD2: ConcatStr
  loc_AE2AD3: FStStrNoPop var_94
  loc_AE2AD6: LitStr "(Cod. "
  loc_AE2AD9: ConcatStr
  loc_AE2ADA: FStStrNoPop var_98
  loc_AE2ADD: FLdRfVar var_D8
  loc_AE2AE0: ImpAdCallI2 Err 'rtcErrObj
  loc_AE2AE5: FStAdFunc var_D4
  loc_AE2AE8: FLdPr var_D4
  loc_AE2AEB:  = Err.Number
  loc_AE2AF0: ILdRf var_D8
  loc_AE2AF3: CStrI4
  loc_AE2AF5: FStStrNoPop var_9C
  loc_AE2AF8: ConcatStr
  loc_AE2AF9: FStStrNoPop var_A0
  loc_AE2AFC: LitStr ")"
  loc_AE2AFF: ConcatStr
  loc_AE2B00: FStStrNoPop var_A4
  loc_AE2B03: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE2B08: FFreeStr var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_AE2B15: FFree1Ad var_D4
  loc_AE2B18: ExitProcHresult
End Sub

Public Sub Modificar(CodiUsua, CucuPers, InhaUsua, AcreUsua, CodiEnre, HaceRequery) 'AD5474
  'Data Table: 40CF28
  loc_AD536C: ILdRf CodiUsua
  loc_AD536F: FStStrCopy var_88
  loc_AD5372: ILdRf CucuPers
  loc_AD5375: FStStrCopy var_8C
  loc_AD5378: OnErrorGoto loc_AD5426
  loc_AD537B: LitStr "UPDATE infogov.usuario SET CucuPers="
  loc_AD537E: ILdRf var_8C
  loc_AD5381: ConcatStr
  loc_AD5382: FStStrNoPop var_90
  loc_AD5385: LitStr ", AcreUsua="
  loc_AD5388: ConcatStr
  loc_AD5389: FStStrNoPop var_94
  loc_AD538C: FLdUI1
  loc_AD5390: CStrI2
  loc_AD5392: FStStrNoPop var_98
  loc_AD5395: ConcatStr
  loc_AD5396: FStStrNoPop var_9C
  loc_AD5399: LitStr ", CodiEnre = "
  loc_AD539C: ConcatStr
  loc_AD539D: FStStrNoPop var_A0
  loc_AD53A0: FLdI2 CodiEnre
  loc_AD53A3: CStrUI1
  loc_AD53A5: FStStrNoPop var_A4
  loc_AD53A8: ConcatStr
  loc_AD53A9: FStStrNoPop var_A8
  loc_AD53AC: LitStr ",ModiUsua='"
  loc_AD53AF: ConcatStr
  loc_AD53B0: FStStrNoPop var_AC
  loc_AD53B3: ImpAdLdI4 MemVar_D9302C
  loc_AD53B6: ConcatStr
  loc_AD53B7: FStStrNoPop var_B0
  loc_AD53BA: LitStr "',ModiFeho=Now()"
  loc_AD53BD: ConcatStr
  loc_AD53BE: FStStrNoPop var_B4
  loc_AD53C1: LitStr " WHERE CodiUsua='"
  loc_AD53C4: ConcatStr
  loc_AD53C5: FStStrNoPop var_B8
  loc_AD53C8: ILdRf var_88
  loc_AD53CB: ConcatStr
  loc_AD53CC: FStStrNoPop var_BC
  loc_AD53CF: LitStr "';"
  loc_AD53D2: ConcatStr
  loc_AD53D3: FStStrNoPop var_C0
  loc_AD53D6: Call EjecutarRsCls(from_stack_1v)
  loc_AD53DB: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_AD53F8: FLdUI1
  loc_AD53FC: CI2UI1
  loc_AD53FE: LitI2_Byte 0
  loc_AD5400: EqI2
  loc_AD5401: BranchF loc_AD540F
  loc_AD5404: ILdRf var_88
  loc_AD5407: Call Proc_20_31_A8D788()
  loc_AD540C: Branch loc_AD5417
  loc_AD540F: ILdRf var_88
  loc_AD5412: Call Inhabilitar(from_stack_1v)
  loc_AD5417: FLdI2 HaceRequery
  loc_AD541A: BranchF loc_AD5425
  loc_AD541D: ILdRf var_88
  loc_AD5420: Call Encontrar(from_stack_1v)
  loc_AD5425: ExitProcHresult
  loc_AD5426: LitStr "No se pudo modificar el registro."
  loc_AD5429: LitStr vbCrLf
  loc_AD542C: ConcatStr
  loc_AD542D: FStStrNoPop var_90
  loc_AD5430: LitStr "(Cod. "
  loc_AD5433: ConcatStr
  loc_AD5434: FStStrNoPop var_94
  loc_AD5437: FLdRfVar var_C8
  loc_AD543A: ImpAdCallI2 Err 'rtcErrObj
  loc_AD543F: FStAdFunc var_C4
  loc_AD5442: FLdPr var_C4
  loc_AD5445:  = Err.Number
  loc_AD544A: ILdRf var_C8
  loc_AD544D: CStrI4
  loc_AD544F: FStStrNoPop var_98
  loc_AD5452: ConcatStr
  loc_AD5453: FStStrNoPop var_9C
  loc_AD5456: LitStr ")"
  loc_AD5459: ConcatStr
  loc_AD545A: FStStrNoPop var_A0
  loc_AD545D: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AD5462: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AD546F: FFree1Ad var_C4
  loc_AD5472: ExitProcHresult
End Sub

Public Sub Anular(CodiUsua, HaceRequery) 'A95598
  'Data Table: 40CF28
  loc_A954F8: ILdRf CodiUsua
  loc_A954FB: FStStrCopy var_88
  loc_A954FE: OnErrorGoto loc_A95548
  loc_A95501: LitStr "UPDATE infogov.usuario SET BajaUsua='"
  loc_A95504: ImpAdLdI4 MemVar_D9302C
  loc_A95507: ConcatStr
  loc_A95508: FStStrNoPop var_8C
  loc_A9550B: LitStr "',BajaFeho=now()"
  loc_A9550E: ConcatStr
  loc_A9550F: FStStrNoPop var_90
  loc_A95512: LitStr " WHERE CodiUsua='"
  loc_A95515: ConcatStr
  loc_A95516: FStStrNoPop var_94
  loc_A95519: ILdRf var_88
  loc_A9551C: ConcatStr
  loc_A9551D: FStStrNoPop var_98
  loc_A95520: LitStr "';"
  loc_A95523: ConcatStr
  loc_A95524: FStStrNoPop var_9C
  loc_A95527: Call EjecutarRsCls(from_stack_1v)
  loc_A9552C: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A95539: FLdI2 HaceRequery
  loc_A9553C: BranchF loc_A95547
  loc_A9553F: ILdRf var_88
  loc_A95542: Call Encontrar(from_stack_1v)
  loc_A95547: ExitProcHresult
  loc_A95548: LitStr "No se pudo anular el registro."
  loc_A9554B: LitStr vbCrLf
  loc_A9554E: ConcatStr
  loc_A9554F: FStStrNoPop var_8C
  loc_A95552: LitStr "(Cod. "
  loc_A95555: ConcatStr
  loc_A95556: FStStrNoPop var_90
  loc_A95559: FLdRfVar var_A4
  loc_A9555C: ImpAdCallI2 Err 'rtcErrObj
  loc_A95561: FStAdFunc var_A0
  loc_A95564: FLdPr var_A0
  loc_A95567:  = Err.Number
  loc_A9556C: ILdRf var_A4
  loc_A9556F: CStrI4
  loc_A95571: FStStrNoPop var_94
  loc_A95574: ConcatStr
  loc_A95575: FStStrNoPop var_98
  loc_A95578: LitStr ")"
  loc_A9557B: ConcatStr
  loc_A9557C: FStStrNoPop var_9C
  loc_A9557F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A95584: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A95591: FFree1Ad var_A0
  loc_A95594: ExitProcHresult
End Sub

Public Sub Encontrar(CodiUsua) 'A07AB8
  'Data Table: 40CF28
  loc_A07A8C: ILdRf CodiUsua
  loc_A07A8F: FStStrCopy var_88
  loc_A07A92: Call Requery()
  loc_A07A97: LitStr "CodiUsua = '"
  loc_A07A9A: ILdRf var_88
  loc_A07A9D: ConcatStr
  loc_A07A9E: FStStrNoPop var_8C
  loc_A07AA1: LitStr "'"
  loc_A07AA4: ConcatStr
  loc_A07AA5: PopTmpLdAdStr
  loc_A07AA9: Call Find(from_stack_1v)
  loc_A07AAE: FFreeStr var_8C = ""
  loc_A07AB5: ExitProcHresult
  loc_A07AB6: ModI2
End Sub

Public Sub Inhabilitar(CodiUsua) 'A895FC
  'Data Table: 40CF28
  loc_A89574: ILdRf CodiUsua
  loc_A89577: FStStrCopy var_88
  loc_A8957A: OnErrorGoto loc_A895AC
  loc_A8957D: LitStr "UPDATE infogov.usuario SET InhaUsua=1,BajaMoti=Concat(BajaMoti,IF(BajaMoti='','',' '),'Inhabilitado desde ',SUBSTRING_INDEX(USER(),'@',-1),', ',Date_format(Now(),'" & Chr(37) & "d/" & Chr(37) & "m/" & Chr(37) & "Y " & Chr(37) & "T'),'.')"
  loc_A89580: LitStr " WHERE CodiUsua='"
  loc_A89583: ConcatStr
  loc_A89584: FStStrNoPop var_8C
  loc_A89587: ILdRf var_88
  loc_A8958A: ConcatStr
  loc_A8958B: FStStrNoPop var_90
  loc_A8958E: LitStr "'"
  loc_A89591: ConcatStr
  loc_A89592: FStStrNoPop var_94
  loc_A89595: Call EjecutarRsCls(from_stack_1v)
  loc_A8959A: FFreeStr var_8C = "": var_90 = ""
  loc_A895A3: ILdRf var_88
  loc_A895A6: Call Encontrar(from_stack_1v)
  loc_A895AB: ExitProcHresult
  loc_A895AC: LitStr "No se pudo inhabilitar el usuario."
  loc_A895AF: LitStr vbCrLf
  loc_A895B2: ConcatStr
  loc_A895B3: FStStrNoPop var_8C
  loc_A895B6: LitStr "(Cod. "
  loc_A895B9: ConcatStr
  loc_A895BA: FStStrNoPop var_90
  loc_A895BD: FLdRfVar var_9C
  loc_A895C0: ImpAdCallI2 Err 'rtcErrObj
  loc_A895C5: FStAdFunc var_98
  loc_A895C8: FLdPr var_98
  loc_A895CB:  = Err.Number
  loc_A895D0: ILdRf var_9C
  loc_A895D3: CStrI4
  loc_A895D5: FStStrNoPop var_94
  loc_A895D8: ConcatStr
  loc_A895D9: FStStrNoPop var_A0
  loc_A895DC: LitStr ")"
  loc_A895DF: ConcatStr
  loc_A895E0: FStStrNoPop var_A4
  loc_A895E3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A895E8: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_A0 = ""
  loc_A895F5: FFree1Ad var_98
  loc_A895F8: ExitProcHresult
  loc_A895F9: FFree1Var var_98 = ""
End Sub

Public Sub EstablecerClave(CodiUsua, Clave) 'AB0F3C
  'Data Table: 40CF28
  loc_AB0E84: ILdRf CodiUsua
  loc_AB0E87: FStStrCopy var_88
  loc_AB0E8A: ILdRf Clave
  loc_AB0E8D: FStStrCopy var_8C
  loc_AB0E90: OnErrorGoto loc_AB0EED
  loc_AB0E93: LitStr "UPDATE infogov.usuario"
  loc_AB0E96: LitStr " SET ClavUsua=MD5('"
  loc_AB0E99: ConcatStr
  loc_AB0E9A: FStStrNoPop var_90
  loc_AB0E9D: ILdRf var_8C
  loc_AB0EA0: ConcatStr
  loc_AB0EA1: FStStrNoPop var_94
  loc_AB0EA4: LitStr "'),FeveUsua=adddate(curdate(),"
  loc_AB0EA7: ConcatStr
  loc_AB0EA8: FStStrNoPop var_98
  loc_AB0EAB: LitI2_Byte &H1E
  loc_AB0EAD: CStrI2
  loc_AB0EAF: FStStrNoPop var_9C
  loc_AB0EB2: ConcatStr
  loc_AB0EB3: FStStrNoPop var_A0
  loc_AB0EB6: LitStr ")"
  loc_AB0EB9: ConcatStr
  loc_AB0EBA: FStStrNoPop var_A4
  loc_AB0EBD: LitStr " WHERE codiusua = '"
  loc_AB0EC0: ConcatStr
  loc_AB0EC1: FStStrNoPop var_A8
  loc_AB0EC4: ILdRf var_88
  loc_AB0EC7: ConcatStr
  loc_AB0EC8: FStStrNoPop var_AC
  loc_AB0ECB: LitStr "';"
  loc_AB0ECE: ConcatStr
  loc_AB0ECF: FStStrNoPop var_B0
  loc_AB0ED2: Call EjecutarRsCls(from_stack_1v)
  loc_AB0ED7: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_AB0EEC: ExitProcHresult
  loc_AB0EED: LitStr "No se pudo establecer la clave."
  loc_AB0EF0: LitStr vbCrLf
  loc_AB0EF3: ConcatStr
  loc_AB0EF4: FStStrNoPop var_90
  loc_AB0EF7: LitStr "(Cod. "
  loc_AB0EFA: ConcatStr
  loc_AB0EFB: FStStrNoPop var_94
  loc_AB0EFE: FLdRfVar var_B8
  loc_AB0F01: ImpAdCallI2 Err 'rtcErrObj
  loc_AB0F06: FStAdFunc var_B4
  loc_AB0F09: FLdPr var_B4
  loc_AB0F0C:  = Err.Number
  loc_AB0F11: ILdRf var_B8
  loc_AB0F14: CStrI4
  loc_AB0F16: FStStrNoPop var_98
  loc_AB0F19: ConcatStr
  loc_AB0F1A: FStStrNoPop var_9C
  loc_AB0F1D: LitStr ")"
  loc_AB0F20: ConcatStr
  loc_AB0F21: FStStrNoPop var_A0
  loc_AB0F24: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AB0F29: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_AB0F36: FFree1Ad var_B4
  loc_AB0F39: ExitProcHresult
End Sub

Public Sub ResetearClave(CodiUsua) 'A97358
  'Data Table: 40CF28
  loc_A972B8: ILdRf CodiUsua
  loc_A972BB: FStStrCopy var_88
  loc_A972BE: OnErrorGoto loc_A9730B
  loc_A972C1: LitStr "UPDATE infogov.usuario"
  loc_A972C4: LitStr " SET ClavUsua=MD5('123456'),FeveUsua=curdate(),ModiUsua='"
  loc_A972C7: ConcatStr
  loc_A972C8: FStStrNoPop var_8C
  loc_A972CB: ImpAdLdI4 MemVar_D9302C
  loc_A972CE: ConcatStr
  loc_A972CF: FStStrNoPop var_90
  loc_A972D2: LitStr "',ModiFeho=Now()"
  loc_A972D5: ConcatStr
  loc_A972D6: FStStrNoPop var_94
  loc_A972D9: LitStr " WHERE CodiUsua='"
  loc_A972DC: ConcatStr
  loc_A972DD: FStStrNoPop var_98
  loc_A972E0: ILdRf var_88
  loc_A972E3: ConcatStr
  loc_A972E4: FStStrNoPop var_9C
  loc_A972E7: LitStr "'"
  loc_A972EA: ConcatStr
  loc_A972EB: FStStrNoPop var_A0
  loc_A972EE: Call EjecutarRsCls(from_stack_1v)
  loc_A972F3: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A97302: ILdRf var_88
  loc_A97305: Call Encontrar(from_stack_1v)
  loc_A9730A: ExitProcHresult
  loc_A9730B: LitStr "No se pudo inhabilitar el usuario."
  loc_A9730E: LitStr vbCrLf
  loc_A97311: ConcatStr
  loc_A97312: FStStrNoPop var_8C
  loc_A97315: LitStr "(Cod. "
  loc_A97318: ConcatStr
  loc_A97319: FStStrNoPop var_90
  loc_A9731C: FLdRfVar var_A8
  loc_A9731F: ImpAdCallI2 Err 'rtcErrObj
  loc_A97324: FStAdFunc var_A4
  loc_A97327: FLdPr var_A4
  loc_A9732A:  = Err.Number
  loc_A9732F: ILdRf var_A8
  loc_A97332: CStrI4
  loc_A97334: FStStrNoPop var_94
  loc_A97337: ConcatStr
  loc_A97338: FStStrNoPop var_98
  loc_A9733B: LitStr ")"
  loc_A9733E: ConcatStr
  loc_A9733F: FStStrNoPop var_9C
  loc_A97342: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A97347: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A97354: FFree1Ad var_A4
  loc_A97357: ExitProcHresult
End Sub

Public Sub RedefineRS(sSelect) '9F6090
  'Data Table: 40CF28
  loc_9F6068: ILdRf sSelect
  loc_9F606B: FStStrCopy var_88
  loc_9F606E: FLdPr Me
  loc_9F6071: MemLdRfVar from_stack_1.RsFrm
  loc_9F6074: ILdRf var_88
  loc_9F6077: ImpAdCallFPR4 Proc_272_58_A794E0(, )
  loc_9F607C: LitVarStr var_98, "Primary"
  loc_9F6081: PopAdLdVar
  loc_9F6082: FLdPr Me
  loc_9F6085: LateIdCall
  loc_9F608D: ExitProcHresult
  loc_9F608E: CVarI2 var_5000
End Sub

Public Sub EjecutarRsCls(sSelect) '9D849C
  'Data Table: 40CF28
  loc_9D8484: ILdRf sSelect
  loc_9D8487: FStStrCopy var_88
  loc_9D848A: FLdPr Me
  loc_9D848D: MemLdRfVar from_stack_1.global_56
  loc_9D8490: ILdRf var_88
  loc_9D8493: ImpAdCallFPR4 Proc_272_61_A5AD44(, )
  loc_9D8498: ExitProcHresult
End Sub

Public Sub Requery() '9E42A0
  'Data Table: 40CF28
  loc_9E4280: FLdPr Me
  loc_9E4283: MemLdRfVar from_stack_1.RsFrm
  loc_9E4286: ImpAdCallFPR4 Proc_272_60_AAEEE0()
  loc_9E428B: LitVarStr var_94, "Primary"
  loc_9E4290: PopAdLdVar
  loc_9E4291: FLdPr Me
  loc_9E4294: LateIdCall
  loc_9E429C: ExitProcHresult
End Sub

Public Property Get DataSource() '9F6144
  'Data Table: 40CF28
  loc_9F6120: ZeroRetVal
  loc_9F6122: FLdRfVar var_8C
  loc_9F6125: FLdPr Me
  loc_9F6128: MemLdPr RsFrm
  loc_9F612B:  = Me.DataSource
  loc_9F6130: ILdRf var_8C
  loc_9F6133: CastAd
  loc_9F6136: FStAdFunc var_88
  loc_9F6139: FFree1Ad var_8C
  loc_9F613C: ExitProcCbHresult
End Sub

Public Property Get ClaveVencida() 'A28024
  'Data Table: 40CF28
  loc_A27FE0: FLdRfVar var_B0
  loc_A27FE3: FLdRfVar var_A0
  loc_A27FE6: LitVarStr var_9C, "ClaveVencida"
  loc_A27FEB: PopAdLdVar
  loc_A27FEC: FLdRfVar var_8C
  loc_A27FEF: FLdPr Me
  loc_A27FF2: MemLdPr RsFrm
  loc_A27FF5:  = Me.Fields
  loc_A27FFA: FLdPr var_8C
  loc_A27FFD: from_stack_2 = Me.Item(from_stack_1)
  loc_A28002: FLdPr var_A0
  loc_A28005:  = Me.Value
  loc_A2800A: FLdRfVar var_B0
  loc_A2800D: CBoolVar
  loc_A2800F: FStI2 var_86
  loc_A28012: FFreeAd var_8C = ""
  loc_A28019: FFree1Var var_B0 = ""
  loc_A2801C: ExitProcCbHresult
  loc_A28022: AryLock
End Sub

Public Function ValidaClave(CodiUsua) 'A72E50
  'Data Table: 40CF28
  loc_A72DE4: ILdRf CodiUsua
  loc_A72DE7: FStStrCopy var_8C
  loc_A72DEA: ZeroRetVal
  loc_A72DEC: ILdRf var_8C
  loc_A72DEF: LitStr " el código de usuario"
  loc_A72DF2: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A72DF7: FStStr var_88
  loc_A72DFA: ILdRf var_88
  loc_A72DFD: LitStr vbNullString
  loc_A72E00: NeStr
  loc_A72E02: BranchF loc_A72E0B
  loc_A72E05: ExitProcCbHresult
  loc_A72E0B: LitStr "SELECT * FROM infogov.usuario WHERE CodiUsua = '"
  loc_A72E0E: ILdRf var_8C
  loc_A72E11: ConcatStr
  loc_A72E12: FStStrNoPop var_90
  loc_A72E15: LitStr "'"
  loc_A72E18: ConcatStr
  loc_A72E19: FStStrNoPop ValidaClave
  loc_A72E1C: Call EjecutarRsCls(from_stack_1v)
  loc_A72E21: FFreeStr var_90 = ""
  loc_A72E28: FLdRfVar var_98
  loc_A72E2B: FLdPr Me
  loc_A72E2E: MemLdPr global_56
  loc_A72E31:  = Me.RecordCount
  loc_A72E36: ILdRf var_98
  loc_A72E39: LitI4 0
  loc_A72E3E: GtI4
  loc_A72E3F: BranchF loc_A72E48
  loc_A72E42: LitStr "El usuario YA EXISTE. Reintente..."
  loc_A72E45: FStStrCopy var_88
  loc_A72E48: ExitProcCbHresult
End Function

Public Function ValidarUsuario(CodiUsua) 'A897A4
  'Data Table: 40CF28
  loc_A8971C: ILdRf CodiUsua
  loc_A8971F: FStStrCopy var_8C
  loc_A89722: ZeroRetVal
  loc_A89724: ILdRf var_8C
  loc_A89727: LitStr " el código de usuario"
  loc_A8972A: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_A8972F: FStStr var_88
  loc_A89732: ILdRf var_88
  loc_A89735: LitStr vbNullString
  loc_A89738: NeStr
  loc_A8973A: BranchF loc_A89743
  loc_A8973D: ExitProcCbHresult
  loc_A89743: LitStr "SELECT infogov.fnValidarUsuario('"
  loc_A89746: ILdRf var_8C
  loc_A89749: ConcatStr
  loc_A8974A: FStStrNoPop var_90
  loc_A8974D: LitStr "') AS Error;"
  loc_A89750: ConcatStr
  loc_A89751: FStStrNoPop ValidarUsuario
  loc_A89754: Call EjecutarRsCls(from_stack_1v)
  loc_A89759: FFreeStr var_90 = ""
  loc_A89760: FLdRfVar var_BC
  loc_A89763: FLdRfVar var_AC
  loc_A89766: LitVarStr var_A8, "Error"
  loc_A8976B: PopAdLdVar
  loc_A8976C: FLdRfVar var_98
  loc_A8976F: FLdPr Me
  loc_A89772: MemLdPr global_56
  loc_A89775:  = Me.Fields
  loc_A8977A: FLdPr var_98
  loc_A8977D: from_stack_2 = Me.Item(from_stack_1)
  loc_A89782: FLdPr var_AC
  loc_A89785:  = Me.Value
  loc_A8978A: FLdRfVar var_BC
  loc_A8978D: CStrVarTmp
  loc_A8978E: FStStr var_88
  loc_A89791: FFreeAd var_98 = ""
  loc_A89798: FFree1Var var_BC = ""
  loc_A8979B: ExitProcCbHresult
End Function

Public Function ValidaClaveUsuario(CodiUsua, Clave) 'AA2914
  'Data Table: 40CF28
  loc_AA2874: ILdRf CodiUsua
  loc_AA2877: FStStrCopy var_8C
  loc_AA287A: ILdRf Clave
  loc_AA287D: FStStrCopy var_90
  loc_AA2880: ZeroRetVal
  loc_AA2882: ILdRf var_8C
  loc_AA2885: LitStr " el código de usuario"
  loc_AA2888: ImpAdCallI2 Proc_18_12_A83B84(, )
  loc_AA288D: FStStr var_88
  loc_AA2890: ILdRf var_88
  loc_AA2893: LitStr vbNullString
  loc_AA2896: NeStr
  loc_AA2898: BranchF loc_AA28A1
  loc_AA289B: ExitProcCbHresult
  loc_AA28A1: LitStr "SELECT infogov.fnValidarClaveUsuario('"
  loc_AA28A4: ILdRf var_8C
  loc_AA28A7: ConcatStr
  loc_AA28A8: FStStrNoPop ValidaClaveUsuario
  loc_AA28AB: LitStr "','"
  loc_AA28AE: ConcatStr
  loc_AA28AF: FStStrNoPop var_98
  loc_AA28B2: ILdRf var_90
  loc_AA28B5: ConcatStr
  loc_AA28B6: FStStrNoPop var_9C
  loc_AA28B9: LitStr "') AS Error;"
  loc_AA28BC: ConcatStr
  loc_AA28BD: FStStrNoPop var_A0
  loc_AA28C0: Call EjecutarRsCls(from_stack_1v)
  loc_AA28C5: FFreeStr ValidaClaveUsuario = "": var_98 = "": var_9C = ""
  loc_AA28D0: FLdRfVar var_C8
  loc_AA28D3: FLdRfVar var_B8
  loc_AA28D6: LitVarStr var_B4, "Error"
  loc_AA28DB: PopAdLdVar
  loc_AA28DC: FLdRfVar var_A4
  loc_AA28DF: FLdPr Me
  loc_AA28E2: MemLdPr global_56
  loc_AA28E5:  = Me.Fields
  loc_AA28EA: FLdPr var_A4
  loc_AA28ED: from_stack_2 = Me.Item(from_stack_1)
  loc_AA28F2: FLdPr var_B8
  loc_AA28F5:  = Me.Value
  loc_AA28FA: FLdRfVar var_C8
  loc_AA28FD: CStrVarTmp
  loc_AA28FE: FStStr var_88
  loc_AA2901: FFreeAd var_A4 = ""
  loc_AA2908: FFree1Var var_C8 = ""
  loc_AA290B: ExitProcCbHresult
  loc_AA2911: MidBStr
End Function

Public Sub SetearUsuario() '9E9F6C
  'Data Table: 40CF28
  loc_9E9F4C: LitStr "SET @sUsuario='"
  loc_9E9F4F: ImpAdLdI4 MemVar_D9302C
  loc_9E9F52: ConcatStr
  loc_9E9F53: FStStrNoPop var_88
  loc_9E9F56: LitStr "';"
  loc_9E9F59: ConcatStr
  loc_9E9F5A: FStStrNoPop var_8C
  loc_9E9F5D: Call EjecutarRsCls(from_stack_1v)
  loc_9E9F62: FFreeStr var_88 = ""
  loc_9E9F69: ExitProcHresult
End Sub

Private Function Proc_20_31_A8D788(arg_C) 'A8D788
  'Data Table: 40CF28
  loc_A8D6F8: ILdRf arg_C
  loc_A8D6FB: FStStrCopy var_88
  loc_A8D6FE: OnErrorGoto loc_A8D739
  loc_A8D701: LitStr "UPDATE infogov.usuario SET InhaUsua=0,ModiUsua='"
  loc_A8D704: ImpAdLdI4 MemVar_D9302C
  loc_A8D707: ConcatStr
  loc_A8D708: FStStrNoPop var_8C
  loc_A8D70B: LitStr "',ModiFeho=now() WHERE CodiUsua='"
  loc_A8D70E: ConcatStr
  loc_A8D70F: FStStrNoPop var_90
  loc_A8D712: ILdRf var_88
  loc_A8D715: ConcatStr
  loc_A8D716: FStStrNoPop var_94
  loc_A8D719: LitStr "'"
  loc_A8D71C: ConcatStr
  loc_A8D71D: FStStrNoPop var_98
  loc_A8D720: Call EjecutarRsCls(from_stack_1v)
  loc_A8D725: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_A8D730: ILdRf var_88
  loc_A8D733: Call Encontrar(from_stack_1v)
  loc_A8D738: ExitProcHresult
  loc_A8D739: LitStr "No se pudo habilitar el usuario."
  loc_A8D73C: LitStr vbCrLf
  loc_A8D73F: ConcatStr
  loc_A8D740: FStStrNoPop var_8C
  loc_A8D743: LitStr "(Cod. "
  loc_A8D746: ConcatStr
  loc_A8D747: FStStrNoPop var_90
  loc_A8D74A: FLdRfVar var_A0
  loc_A8D74D: ImpAdCallI2 Err 'rtcErrObj
  loc_A8D752: FStAdFunc var_9C
  loc_A8D755: FLdPr var_9C
  loc_A8D758:  = Err.Number
  loc_A8D75D: ILdRf var_A0
  loc_A8D760: CStrI4
  loc_A8D762: FStStrNoPop var_94
  loc_A8D765: ConcatStr
  loc_A8D766: FStStrNoPop var_98
  loc_A8D769: LitStr ")"
  loc_A8D76C: ConcatStr
  loc_A8D76D: FStStrNoPop var_A4
  loc_A8D770: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8D775: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A8D782: FFree1Ad var_9C
  loc_A8D785: ExitProcHresult
End Function

Private Function Proc_20_32_AA65DC(arg_C) 'AA65DC
  'Data Table: 40CF28
  loc_AA6534: ILdRf arg_C
  loc_AA6537: FStStrCopy var_8C
  loc_AA653A: ZeroRetVal
  loc_AA653C: LitStr "char("
  loc_AA653F: FStStrCopy var_90
  loc_AA6542: LitI2_Byte 1
  loc_AA6544: FLdRfVar var_92
  loc_AA6547: ILdRf var_8C
  loc_AA654A: FnLenStr
  loc_AA654B: CI2I4
  loc_AA654C: ForI2 var_96
  loc_AA6552: ILdRf var_90
  loc_AA6555: LitVarI2 var_B8, 1
  loc_AA655A: FLdI2 var_92
  loc_AA655D: CI4UI1
  loc_AA655E: ILdRf var_8C
  loc_AA6561: ImpAdCallI2 Mid$(, , )
  loc_AA6566: FStStrNoPop var_BC
  loc_AA6569: ImpAdCallI2 Asc()
  loc_AA656E: CStrUI1
  loc_AA6570: FStStrNoPop var_C0
  loc_AA6573: ConcatStr
  loc_AA6574: CVarStr var_130
  loc_AA6577: LitVarStr var_100, ")"
  loc_AA657C: FStVarCopyObj var_110
  loc_AA657F: FLdRfVar var_110
  loc_AA6582: LitVarStr var_E0, ","
  loc_AA6587: FStVarCopyObj var_F0
  loc_AA658A: FLdRfVar var_F0
  loc_AA658D: FLdI2 var_92
  loc_AA6590: CI4UI1
  loc_AA6591: ILdRf var_8C
  loc_AA6594: FnLenStr
  loc_AA6595: LtI4
  loc_AA6596: CVarBoolI2 var_D0
  loc_AA659A: FLdRfVar var_120
  loc_AA659D: ImpAdCallFPR4  = IIf(, , )
  loc_AA65A2: FLdRfVar var_120
  loc_AA65A5: ConcatVar var_140
  loc_AA65A9: CStrVarTmp
  loc_AA65AA: FStStr var_90
  loc_AA65AD: FFreeStr var_BC = ""
  loc_AA65B4: FFreeVar var_B8 = "": var_D0 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = ""
  loc_AA65C5: FLdRfVar var_92
  loc_AA65C8: NextI2 var_96, loc_AA6552
  loc_AA65CD: ILdRf var_90
  loc_AA65D0: FStStrCopy var_88
  loc_AA65D3: ExitProcCbHresult
  loc_AA65D9: AddCy
End Function

Private Function Proc_20_33_9F5FD4() '9F5FD4
  'Data Table: 40CF28
  loc_9F5FB0: LitStr "Primary"
  loc_9F5FB3: FLdPr Me
  loc_9F5FB6: LateIdLdVar var_94 DispID_4 0
  loc_9F5FBD: CastAdVar Me
  loc_9F5FC1: FStAdFunc var_98
  loc_9F5FC4: FLdPr var_98
  loc_9F5FCC: FFree1Ad var_98
  loc_9F5FCF: FFree1Var var_94 = ""
  loc_9F5FD2: ExitProcHresult
End Function

Private Function Proc_20_34_9E42EC(arg_C) '9E42EC
  'Data Table: 40CF28
  loc_9E42D0: ILdI4 arg_C
  loc_9E42D3: FStStrCopy var_88
  loc_9E42D6: ILdRf var_88
  loc_9E42D9: LitStr "Primary"
  loc_9E42DC: EqStr
  loc_9E42DE: BranchF loc_9E42EB
  loc_9E42E1: FLdPr Me
  loc_9E42E4: MemLdStr RsFrm
  loc_9E42E7: IStAd
  loc_9E42EB: ExitProcHresult
End Function
