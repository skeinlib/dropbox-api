/**
 * Created by max on 4/25/16.
 */
package skein.dropbox.service.paging.impl
{
import skein.dropbox.service.paging.Paging;

public class AbstractPaging implements Paging
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    protected static const STATE_NEXT:String = "next";
    protected static const STATE_PREV:String = "prev";

    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function AbstractPaging(limit:uint = 0)
    {
        super();

        _limit = limit;
    }

    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //-------------------------------------
    //  limit
    //-------------------------------------

    protected var _limit:uint;
    public function get limit():uint {
        return _limit;
    }

    //---------------------------------------
    //  state
    //---------------------------------------

    private var _state:String;
    protected function get state():String {
        return _state;
    }

    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------

    //-------------------------------------
    //  Methods: Preparing
    //-------------------------------------

    public function reset():void {
        _state = null;
        doReset();
    }

    public function forNext():void {
        _state = STATE_NEXT;
        doNext();
    }

    public function forPrev():void {
        _state = STATE_PREV;
        doPrev();
    }

    //-------------------------------------
    //  Methods: Abstract
    //-------------------------------------

    protected function doReset():void {
        throw new Error("Abstract method");
    }

    protected function doNext():void {

    }

    protected function doPrev():void {

    }
}
}
