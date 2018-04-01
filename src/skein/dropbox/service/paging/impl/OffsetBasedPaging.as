/**
 * Created by max on 4/25/16.
 */
package skein.dropbox.service.paging.impl
{
public class OffsetBasedPaging extends AbstractPaging
{
    //--------------------------------------------------------------------------
    //
    //  Constructor
    //
    //--------------------------------------------------------------------------

    public function OffsetBasedPaging(limit:uint)
    {
        super(limit);
    }

    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //-------------------------------------
    //  offset
    //-------------------------------------

    private var _offset:int;
    public function get offset():int {
        return _offset;
    }
    public function set offset(value:int):void {
        _offset = value;
    }

    //--------------------------------------------------------------------------
    //
    //  Overridden methods
    //
    //--------------------------------------------------------------------------

    override protected function doReset():void
    {
        _offset = 0;
    }

    override protected function doNext():void
    {
        _offset = 0;
    }
}
}
