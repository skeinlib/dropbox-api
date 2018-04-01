/**
 * Created by max.rozdobudko@gmail.com on 9/8/17.
 */
package skein.dropbox.assembler {
public class CommonDisassembler {
    public static function parseData(json: String): Object {
        var parsed:Object = JSON.parse(json);
        if (parsed is Array || parsed ==  null || !parsed.hasOwnProperty("entries")) {
            return parsed;
        } else {
            return parsed.entries;
        }
    }
}
}
