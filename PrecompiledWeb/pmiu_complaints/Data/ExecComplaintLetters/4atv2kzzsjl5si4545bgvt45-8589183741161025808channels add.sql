select *
from HeadWorks
where imis_cde not in (select imis_cde from channel)

select *
from channel
where imis_cde = '30500000000000000'



INSERT INTO [CHANNEL]
           ([imis_cde]
           ,[channel_nme]
           ,[channel_typ]
           ,[flow_typ]
           ,[GCA_msr]
           ,[CCA_msr]
           ,[designed_discharge_msr]
           ,[tail_RD_msr]
           ,[authorized_tail_gauge]
           ,[authorized_tail_discharge]
           ,[tail_analysis]
           ,[head_analysis]
           ,[remarks]
           ,[designed_discharge_np]
           ,[designed_discharge_fl]
           ,[sp_x]
           ,[sp_y]
           ,[ep_x]
           ,[ep_y]
           ,[GISCoords])
     VALUES
           ('32400000000000000'
           ,'Bombanwala Head Regulator'
           ,'HW'
           ,'p'
           ,0
           ,0
           ,0
           ,0
           ,0
           ,0
           ,1
           ,1
           ,''
           ,0
           ,0
           ,-1
           ,-1
           ,-1
           ,-1
           ,'');



INSERT INTO [CHANNEL]
           ([imis_cde]
           ,[channel_nme]
           ,[channel_typ]
           ,[flow_typ]
           ,[GCA_msr]
           ,[CCA_msr]
           ,[designed_discharge_msr]
           ,[tail_RD_msr]
           ,[authorized_tail_gauge]
           ,[authorized_tail_discharge]
           ,[tail_analysis]
           ,[head_analysis]
           ,[remarks]
           ,[designed_discharge_np]
           ,[designed_discharge_fl]
           ,[sp_x]
           ,[sp_y]
           ,[ep_x]
           ,[ep_y]
           ,[GISCoords])
     VALUES
           ('32500000000000000'
           ,'Head BD Head Regulator'
           ,'HW'
           ,'p'
           ,0
           ,0
           ,0
           ,0
           ,0
           ,0
           ,1
           ,1
           ,''
           ,0
           ,0
           ,-1
           ,-1
           ,-1
           ,-1
           ,'');