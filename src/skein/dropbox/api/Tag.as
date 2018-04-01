/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.api {
public class Tag {

    public static const file: Tag = new Tag("file");
    public static const folder: Tag = new Tag("folder");

    public static function fromRawValue(rawValue: String): Tag {
        switch (rawValue) {
            case file.rawValue: return file;
            case folder.rawValue: return folder;
            default: return null;
        }
    }

    public function Tag(rawValue: String) {
        super();
        _rawValue = rawValue;
    }

    private var _rawValue: String;
    public function get rawValue(): String {
        return _rawValue;
    }
}
}
