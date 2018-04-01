/**
 * Created by max.rozdobudko@gmail.com on 3/28/18.
 */
package skein.dropbox.service.impl {
import com.codecatalyst.promise.Deferred;
import com.codecatalyst.promise.Promise;

import flash.net.URLRequestHeader;
import flash.net.URLRequestMethod;

import skein.dropbox.Dropbox;
import skein.dropbox.assembler.EntryDisassembler;
import skein.dropbox.request.FileDownloadRequest;
import skein.dropbox.request.FolderListingRequest;
import skein.dropbox.service.FilesService;
import skein.rest.rest;

public class DefaultFilesService implements FilesService {

    // Constructor

    public function DefaultFilesService() {
        super();
    }

    // Endpoints

    public function listFolder(request: FolderListingRequest): Promise {
        var deferred: Deferred = new Deferred();

        rest("https://api.dropboxapi.com/2/files/list_folder")
            .addHeader(new URLRequestHeader("Authorization", "Bearer " + Dropbox.shared.accessToken))
            .decoder(EntryDisassembler.decode)
            .result(deferred.resolve)
            .error(deferred.reject)
        .post(request);

        return deferred.promise;
    }

    public function download(request: FileDownloadRequest, to: Object): Promise {
        var deferred: Deferred = new Deferred();

        rest("https://content.dropboxapi.com/2/files/download")
            .addHeader(new URLRequestHeader("Authorization", "Bearer " + Dropbox.shared.accessToken))
            .addHeader(new URLRequestHeader("Dropbox-API-Arg", JSON.stringify(request).replace("\\s", "")))
            .contentType("text/plain")
            .result(deferred.resolve)
            .error(deferred.reject)
        .download(to, URLRequestMethod.POST);

        return deferred.promise;
    }
}
}
