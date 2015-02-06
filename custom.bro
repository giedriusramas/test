redef record Intel::Info += {
        descriptions: set[string] &optional &log;
        confidence: set[double] &optional &log;

};

event Intel::extend_match(info: Intel::Info, s: Intel::Seen, items: set[Intel::Item]) &priority=0
        {
        for ( item in items )
                {
                if ( ! info?$descriptions )
                        info$descriptions = set();

                add info$descriptions[item$meta$desc];
                }
 		{
                if ( ! info?$confidence )
                        info$confidence = set();
                add info$confidence[item$meta$cif_confidence];

                }




        }
