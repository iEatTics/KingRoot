package cloudsdk.shell;
/* loaded from: classes.dex */
public interface IRootShell {
    void closeShell();

    boolean isRootPermition();

    VTCmdResult runRootCommand(String str);

    VTCmdResult runRootCommand(String str, long j);
}
