/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.request {
public class FolderListingRequest {

    public function FolderListingRequest(path: String) {
        super();
        this.path = path;
    }

    public var path: String;

    public var rev: String;

    public function toJSON(k: *): * {
        var dto:  Object = {
            path: path
        };

        if (rev) {
            dto.rev = rev;
        }

        return dto;
    }
}
}
