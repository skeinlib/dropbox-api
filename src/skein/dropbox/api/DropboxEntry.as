/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.api {
public interface DropboxEntry {

    function get id(): String;
    function set id(value: String): void;

    function get tag(): Tag;

    // name

    function get name(): String;
    function set name(value: String): void;

    // pathLower

    function get pathLower(): String;
    function set pathLower(value: String): void;

    // pathDisplay

    function get pathDisplay(): String;
    function set pathDisplay(value: String): void;
}
}
