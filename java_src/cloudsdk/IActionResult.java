package cloudsdk;

import android.os.Bundle;
/* loaded from: classes.dex */
public interface IActionResult {
    int getErrorCode();

    String getErrorMessage();

    Bundle getReply();

    int getResultCode();

    boolean success();

    String toString();
}
