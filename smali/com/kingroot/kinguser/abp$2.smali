.class Lcom/kingroot/kinguser/abp$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/abp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zv:Lcom/kingroot/kinguser/abp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abp;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kingroot/kinguser/abp$2;->Zv:Lcom/kingroot/kinguser/abp;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    :try_start_0
    const-string v1, "extra_runningtaskinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 52
    iget-object v1, p0, Lcom/kingroot/kinguser/abp$2;->Zv:Lcom/kingroot/kinguser/abp;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/abp;->a(Lcom/kingroot/kinguser/abp;Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
