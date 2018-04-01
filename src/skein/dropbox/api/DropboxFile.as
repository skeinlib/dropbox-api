/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.api {
public class DropboxFile implements DropboxEntry {

    // Constructor

    public function DropboxFile() {
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

    // clientModified

    private var _clientModified: Date;
    public function get clientModified(): Date {
        return _clientModified;
    }
    public function set clientModified(value: Date): void {
        _clientModified = value;
    }

    // serverModified

    private var _serverModified: Date;
    public function get serverModified(): Date {
        return _serverModified;
    }
    public function set serverModified(value: Date): void {
        _serverModified = value;
    }

    // revision

    private var _revision: String;
    public function get revision(): String {
        return _revision;
    }
    public function set revision(value: String): void {
        _revision = value;
    }

    // size

    private var _size: int;
    public function get size(): int {
        return _size;
    }
    public function set size(value: int): void {
        _size = value;
    }

    // contentHash

    private var _contentHash: String;
    public function get contentHash(): String {
        return _contentHash;
    }
    public function set contentHash(value: String): void {
        _contentHash = value;
    }
}
}
