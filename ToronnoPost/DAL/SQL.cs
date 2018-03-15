using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace toronnopost.DAL
{
    public static class SQL
    {
        public const string Users = @" SELECT
                                            Id,
                                            Email,
                                            PasswordHash,
                                            SecurityStamp,
                                            PhoneNumber,
                                            UserName
                                       FROM AspNetUsers";

        public const string LatestP =
            @"  SELECT TOP 6 * from ad_master a, Images b 
                where 
	                a.adid=b.adid
	                and ImageType='ICON'
	                order by UploadDate DESC";

        public const string AllP =
           @"  SELECT * from ad_master a, Images b 
                where 
	                a.adid=b.adid
	                and ImageType='ICON'";

        public const string SearchProperties =
           @"  SELECT * from ad_master a, Images b 
                where 
	                a.adid=b.adid
	                and ImageType='ICON'
                    and Upper(location) like '%' + @Location + '%'
                    and price >= @MinP
                    and price <= @MaxP
                    and Upper(ad_type) like @AdType
                    and bed like @Bed
                    and bath like @Bath";

        public const string PropDetail =
            @"  SELECT * from ad_master where adid=@ID";

        public const string PImages =
            @"  SELECT * from Images where adid=@ID and ImageType is null";


    }
}