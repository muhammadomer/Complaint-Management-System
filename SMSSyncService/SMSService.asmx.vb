Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports Common
Imports Complaints_BLL

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class SMSService
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function InsertSMS(ByVal _sms As Common.SMS) As Boolean
        Try
            Dim sm As New Common.SMS
            sm.Caller_no = _sms.Caller_no
            sm.calling_msg = _sms.calling_msg
            sm.calling_msg_parsed = _sms.calling_msg_parsed
            sm.enter_dt = _sms.enter_dt
            sm.err_flag = _sms.err_flag
            sm.feedback_flag = _sms.feedback_flag
            sm.isTransfered = _sms.isTransfered
            sm.mis_parsed = _sms.mis_parsed
            sm.sr_no = _sms.sr_no
            Return Complaints_BLL.ManageSMS.InsertSMS(sm)
        Catch ex As Exception
            Throw ex
        End Try
    End Function

    <WebMethod()> _
    Public Function GetLastSMSId() As Integer
        Try
            Return Complaints_BLL.ManageSMS.GetLastSMSId()
        Catch ex As Exception
            Throw ex
        End Try
    End Function

End Class