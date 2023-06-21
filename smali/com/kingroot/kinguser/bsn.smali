.class public final Lcom/kingroot/kinguser/bsn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 17
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bre;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 18
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 16
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bsm;->b(Landroid/content/Context;[Ljava/lang/String;)I

    .line 21
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
