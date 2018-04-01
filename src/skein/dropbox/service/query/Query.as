/**
 * Created by max on 4/25/16.
 */
package skein.dropbox.service.query
{
import skein.dropbox.service.paging.*;

public class Query {

    public function Query() {
        super();
    }

    /** Reference to Paging instance used for current request. */
    public var paging: Paging;

    /** Defines filter criteria in an arbitrary form. */
    public var filter: Object;

    /** Describes sort criteria in an arbitrary form */
    public var sort: Object;
}
}
