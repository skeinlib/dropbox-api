/**
 * Created by max.rozdobudko@gmail.com on 3/29/18.
 */
package skein.dropbox.request {
public class FileDownloadRequest {

    public function FileDownloadRequest(path: String) {
        super();
        this.path = path;
    }

    public var path: String;

    public var rev: String;

    public function toJSON(k: *): * {
        var dto: Object = {
            path: path
        };

        if (rev) {
            dto.rev = rev;
        }

        return dto;
    }
}
}
