.class public Lkingcom/core/network/download/NetworkLoadTaskInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkingcom/core/network/download/NetworkLoadTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static c(Lcom/kingroot/kinguser/caf;)Lkingcom/core/network/download/NetworkLoadTaskInfo;
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    iget v1, p0, Lcom/kingroot/kinguser/caf;->a:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    new-instance v0, Lkingcom/core/network/download/AppDownloadTaskInfo;

    check-cast p0, Lcom/kingroot/kinguser/caa;

    invoke-direct {v0, p0}, Lkingcom/core/network/download/AppDownloadTaskInfo;-><init>(Lcom/kingroot/kinguser/caa;)V

    goto :goto_0

    .line 181
    :pswitch_1
    new-instance v0, Lkingcom/core/network/download/CommonFileDownloadTaskInfo;

    check-cast p0, Lcom/kingroot/kinguser/bzo;

    invoke-direct {v0, p0}, Lkingcom/core/network/download/CommonFileDownloadTaskInfo;-><init>(Lcom/kingroot/kinguser/bzo;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
