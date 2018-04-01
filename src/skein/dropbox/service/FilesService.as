/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.service {
import com.codecatalyst.promise.Promise;

import skein.dropbox.api.DropboxFile;
import skein.dropbox.request.FileDownloadRequest;

import skein.dropbox.request.FolderListingRequest;

public interface FilesService {

    function listFolder(request: FolderListingRequest): Promise;

    function download(request: FileDownloadRequest, to: Object): Promise;
}
}
