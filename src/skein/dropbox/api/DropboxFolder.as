/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.api {
public class DropboxFolder implements DropboxEntry {

    // Constructor

    public function DropboxFolder() {
        super();
    }

    // id

    private var _id: String;
    public function get id(): String {
        return _id;
    }
    public function set id(value: String): void {
        _id = value;
    }

    // tag

    public function get tag(): Tag {
        return Tag.file;
    }

    // name

    private var _name: String;
    public function get name(): String {
        return _name;
    }
    public function set name(value: String): void {
        _name = value;
    }

    // pathLower

    private var _pathLower: String;
    public function get pathLower(): String {
        return _pathLower;
    }
    public function set pathLower(value: String): void {
        _pathLower = value;
    }

    // pathDisplay

    private var _pathDisplay: String;
    public function get pathDisplay(): String {
        return _pathDisplay;
    }
    public function set pathDisplay(value: String): void {
        _pathDisplay = value;
    }
}
}
