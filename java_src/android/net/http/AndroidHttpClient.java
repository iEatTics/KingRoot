package android.net.http;

import android.content.ContentResolver;
import android.content.Context;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes.dex */
public final class AndroidHttpClient implements HttpClient {
    public static AndroidHttpClient newInstance(String str, Context context) {
        return null;
    }

    public static AndroidHttpClient newInstance(String str) {
        return null;
    }

    public static void modifyRequestToAcceptGzipResponse(HttpRequest httpRequest) {
    }

    public static InputStream getUngzippedContent(HttpEntity httpEntity) {
        return null;
    }

    public void close() {
    }

    public HttpParams getParams() {
        return null;
    }

    public ClientConnectionManager getConnectionManager() {
        return null;
    }

    public HttpResponse execute(HttpUriRequest httpUriRequest) {
        return null;
    }

    public HttpResponse execute(HttpUriRequest httpUriRequest, HttpContext httpContext) {
        return null;
    }

    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest) {
        return null;
    }

    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        return null;
    }

    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) {
        return null;
    }

    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return null;
    }

    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        return null;
    }

    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return null;
    }

    public static AbstractHttpEntity getCompressedEntity(byte[] bArr, ContentResolver contentResolver) {
        return null;
    }

    public static long getMinGzipSize(ContentResolver contentResolver) {
        return 0L;
    }

    public void enableCurlLogging(String str, int i) {
    }

    public void disableCurlLogging() {
    }

    public static long parseDate(String str) {
        return 0L;
    }
}
