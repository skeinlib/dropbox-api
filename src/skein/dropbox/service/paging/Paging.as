/**
 * Created by max on 4/25/16.
 */
package skein.dropbox.service.paging
{
/**
 * Describes pagination
 */
public interface Paging
{
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    /**
     * Inidicates how many items should be returned for one request.
     */
    function get limit():uint;

    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------

    //-------------------------------------
    //  Methods: Preparing
    //-------------------------------------

    /**
     * Resets paging to requesting data portion by default.
     */
    function reset():void;

    /**
     * Prepares paging for requesting next portion of data.
     */
    function forNext():void;

    /**
     * Prepares pagin for requesting previous portion of data.
     */
    function forPrev():void;
}
}
